<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 2/25/2019
 * Time: 8:31 PM
 */

require_once(__DIR__ . '/Controller.php');
require_once(__DIR__ . '/../Models/Question.php');
require_once(__DIR__ . '/../Models/Exam.php');
require_once(__DIR__ . '/../Models/ExamQuestion.php');
require_once(__DIR__ . '/../Models/StudentExam.php');
require_once(__DIR__ . '/../Models/Student.php');
require_once(__DIR__ . '/../Models/StudentAnswer.php');
require_once(__DIR__ . '/../Request.php');

class ExamController extends Controller
{
    protected $question_model;
    protected $exam_model;
    protected $student_exam_model;
    protected $student_model;
    protected $student_answer_model;
    protected $subject_model;
    protected $exam_question_model;

    public function __construct()
    {
        $this->question_model = new Question;
        $this->exam_model = new Exam;
        $this->student_exam_model = new StudentExam;
        $this->student_model = new Student;
        $this->student_answer_model = new StudentAnswer;
        $this->subject_model = new Subject;
        $this->exam_question_model = new ExamQuestion;
    }

    public function getSubjectExams(Request $request, $params) {
        $subject = $this->subject_model->find($params['id']);
        $exams = $this->exam_model->where(['subject_id' => $subject->id])->get();

        $exams = array_map(function ($exam) {
            $exam->submited = !!$this->student_exam_model->where(['exam_id' => $exam->id])->first();

            return $exam;
        }, $exams);

        return $this->view('Student/exams', [
            'subject' => $subject,
            'exams' => $exams,
        ]);
    }

    public function startView(Request $request, $params) {
        $user = $this->user();
        $student = $this->student_model->where(['user_id' => $user->id])->first();
        $exam = $this->exam_model->find($params['id']);

        $student_exam = $this->student_exam_model
            ->where([
                'student_id' => $student->id,
                'exam_id' => $exam->id,
            ])
            ->first();

        if ($student_exam) {
            $this->redirect('/student/exams/' . $exam->id . '/result');
        }

        $questions = $this->exam_question_model->where(['exam_id' => $exam->id])->get();

        $questions = array_map(function ($question) {
            return (new Question)->find($question->question_id);
        }, $questions);

        $student_exam = $this->student_exam_model->create([
            'student_id' => $student->id,
            'exam_id' => $exam->id,
        ]);

        return $this->view('Student/exam-start', [
            'exam' => $exam,
            'questions' => $questions,
        ]);
    }

    public function resultView(Request $request, $params) {
        $user = $this->user();
        $student = $this->student_model->where(['user_id' => $user->id])->first();
        $exam = $this->exam_model->find($params['id']);
        $student_exam = $this->student_exam_model->where([
            'student_id' => $student->id,
            'exam_id' => $exam->id,
        ])->first();
        $answers = $this->student_answer_model->where(['student_exam_id' => $student_exam->id])->get();
        $questions = $this->exam_question_model->where(['exam_id' => $params['id']])->get();
        $questions = array_map(function ($question) {
            return (new Question)->find($question->question_id);
        }, $questions);
        $total_right_answers = 0;

        foreach ($questions as $index => $question) {
            if ($question->correct_answers == $answers[$index]->answer) {
                $total_right_answers++;
            }
        }

        return $this->view('Student/exam-result', [
            'exam' => $exam,
            'total_questions' => count($questions),
            'total_right_answers' => $total_right_answers,
        ]);
    }


    public function createView(Request $request, $params) {
        $questions = $this->question_model->where(['subject_id' => $params['id']])->get();

        return $this->view('Teacher/exam-create', ['questions' => $questions]);
    }

    public function show(Request $request, $params) {
        $exam = $this->exam_model->find($params['id']);
        $subject = $this->subject_model->find($exam->subject_id);
        $total_questions = $this->exam_question_model->where(['exam_id' => $exam->id])->count();

        return $this->view('Teacher/exam-preview', [
            'subject' => $subject,
            'exam' => $exam,
            'total_questions' => $total_questions
        ]);
    }

    public function store(Request $request, $params) {
        $question_ids = array_filter($request->questions);
        $subject_id = $params['id'];
        $exam = $this->exam_model->create([
            'subject_id' => $subject_id,
            'description' => $request->description,
            'duration' => $request->duration,
        ]);

        foreach ($question_ids as $question_id) {
            (new ExamQuestion)->create([
                'exam_id' => $exam->id,
                'question_id' => $question_id,
            ]);
        }

        return $this->redirect('/exams/' . $exam->id);
    }

    public function submitAnswer(Request $request, $params) {
        $user = $this->user();
        $student = $this->student_model->where(['user_id' => $user->id])->first();
        $exam_id = $params['id'];
        $student_exam = $this->student_exam_model
                             ->where([
                                 'student_id' => $student->id,
                                 'exam_id' => $exam_id,
                             ])
                             ->first();

        if (!$student_exam->submited()) {
            foreach ($request->questions as $question_id => $answer) {
                if (is_array($answer)) {
                    $answer = json_encode(array_keys($answer));
                }

                $this->student_answer_model->create([
                    'student_exam_id' => $student_exam->id,
                    'exam_question_id' => $question_id,
                    'answer' => $answer,
                ]);
            }
        }

        return $this->redirect('/student/exams/' . $exam_id . '/result');
    }
}
