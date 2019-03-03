<?php

require_once(__DIR__ . '/Router.php');
require_once(__DIR__ . '/Request.php');

session_start();

$route = new Router(new Request);

$route->get('/', 'AuthController@index');
$route->get('/teacher', 'AuthController@teacherView');
$route->get('/student', 'AuthController@studentView');
$route->get('/login', 'AuthController@loginView');
$route->post('/login', 'AuthController@login');
$route->get('/logout', 'AuthController@logout');
$route->get('/register', 'AuthController@registerView');
$route->post('/register', 'AuthController@register');
$route->get('/teacher/subjects/{id}/questions/create', 'QuestionController@createView');
$route->post('/teacher/subjects/{id}/questions', 'QuestionController@store');
$route->get('/teacher/questions/{id}', 'QuestionController@show');
$route->get('/teacher/subjects/{id}/exams/create', 'ExamController@createView');
$route->post('/teacher/subjects/{id}/exams', 'ExamController@store');
$route->get('/teacher/exams/{id}', 'ExamController@show');
$route->get('/teacher/subjects/create', 'SubjectController@createView');
$route->get('/teacher/subjects/{id}', 'SubjectController@show');
$route->post('/teacher/subjects', 'SubjectController@store');
$route->get('/student/subjects/{id}', 'SubjectController@show');
$route->get('/student/subjects/{id}/exams', 'ExamController@getSubjectExams');
$route->post('/student/exams/{id}/submit', 'ExamController@submitAnswer');
$route->get('/student/exams/{id}/start', 'ExamController@startView');
$route->get('/student/exams/{id}/result', 'ExamController@resultView');
