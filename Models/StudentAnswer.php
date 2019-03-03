<?php
/**
 * Created by PhpStorm.
 * User: trungld
 * Date: 3/3/19
 * Time: 5:35 PM
 */

require_once(__DIR__ . '/Model.php');
require_once(__DIR__ . '/Question.php');

class StudentAnswer extends Model
{
    protected $table = 'student_answer';
}
