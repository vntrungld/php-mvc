<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 2/25/2019
 * Time: 8:32 PM
 */

require_once(__DIR__ . '/../Request.php');
require_once(__DIR__ . '/Controller.php');
require_once(__DIR__ . '/../Models/User.php');
require_once(__DIR__ . '/../Models/Student.php');
require_once(__DIR__ . '/../Models/Subject.php');


class AuthController extends Controller
{
    protected $subject_model;

    public function __construct()
    {
        $this->subject_model = new Subject;
    }

    public function index() {
        if (!$user = $this->user()) {
            return $this->redirect('/login');
        }

        if ($user->is_admin) {
            return $this->redirect('/teacher');
        }

        return $this->redirect('student');
    }

    public function teacherView() {
        if (!$user = $this->user()) {
            return $this->redirect('/login');
        }

        $subjects = $this->subject_model->all();

        return $this->view('Teacher/index', ['subjects' => $subjects]);
    }

    public function studentView() {
        if (!$user = $this->user()) {
            return $this->redirect('/login');
        }

        $student = (new Student)->where(['user_id' => $user->id])->first();
        $subjects = (new Subject)->all();


        return $this->view('Student/index', [
            'student' => $student,
            'user' => $user,
            'subjects' => $subjects,
        ]);
    }

    public function loginView() {
        if ($this->user()) {
            return $this->redirect('/');
        }

        return $this->view('login');
    }

    public function login(Request $request) {
        $user = (new User)->where([
                              'username' => $request->username,
                              'password' => $request->password,
                          ])
                          ->first();

        if (!$user) {
            echo 'User not found';
            return;
        }

        $_SESSION['user_id'] = $user->id;

        return $this->redirect('/');
    }

    public function logout() {
        $_SESSION['user_id'] = null;

        return $this->redirect('/login');
    }

    public function registerView() {
        return $this->view('register');
    }

    public function register(Request $request) {
        $user = (new User)->create([
            'username' => $request->username,
            'password' => $request->password,
        ]);

        $student = (new Student)->create([
            'name' => $request->name,
            'student_code' => $request->student_code,
            'birthday' => $request->birthday,
            'user_id' => $user->id,
        ]);

        if (!$user || !$student) {
            return $this->redirect('/register');
        }

        return $this->redirect('/login');
    }
}
