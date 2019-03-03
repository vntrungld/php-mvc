<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 2/25/2019
 * Time: 8:31 PM
 */

require_once(__DIR__ . '/Controller.php');
require_once(__DIR__ . '/../Models/Question.php');

class QuestionController extends Controller
{
    public function createView(Request $request, $params) {
        return $this->view('Teacher/question-create');
    }

    public function show(Request $request, $params) {
        $question = (new Question)->find($params['id']);
        $answers = json_decode($question->answers);
        $correct_answers = json_decode($question->correct_answers);
        $answers = array_map(function ($answer, $index) use ($correct_answers) {
            $is_right = false;
            foreach ($correct_answers as $ca) {
                if ($ca == $index) {
                    $is_right = true;
                }
            }

            return [
                'content' => $answer,
                'is_right' => $is_right,
            ];
        }, $answers, array_keys($answers));

        return $this->view('Teacher/question-preview', [
            'question' => $question,
            'answers' => $answers,
        ]);
    }

    public function store(Request $request, $params) {
        $subject_id = $params['id'];
        $answer_contents = [];
        $correct_answers = [];

        foreach ($request->answers as $index => $answer) {
            array_push($answer_contents, $answer['content']);

            if ($answer['status'] == 1) {
                array_push($correct_answers, $index);
            }
        }

        $question = (new Question)->create([
            'subject_id' => $subject_id,
            'content' => $request->content,
            'answers' => json_encode($answer_contents),
            'correct_answers' => json_encode($correct_answers),
        ]);

        return $this->redirect('/questions/', $question->id);
    }
}
