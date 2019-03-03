<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 2/25/2019
 * Time: 8:31 PM
 */

require_once(__DIR__ . '/Controller.php');
require_once(__DIR__ . '/../Request.php');
require_once(__DIR__ . '/../Models/Exam.php');

class SubjectController extends Controller
{
    protected $subject_model;
    protected $exam_model;

    public function __construct()
    {
        $this->subject_model = new Subject;
        $this->exam_model = new Exam;
    }

    public function show(Request $request, $params) {
        $subject = $this->subject_model->find($params['id']);

        return $this->view('Teacher/subject-preview', ['subject' => $subject]);
    }

    public function createView() {
        return $this->view('Teacher/subject-create');
    }

    public function store(Request $request) {
        $subject = $this->subject_model->create([
            'name' => $request->name,
            'description' => $request->description,
        ]);

        return $this->redirect('/teacher/subjects/' . $subject->id);
    }
}
