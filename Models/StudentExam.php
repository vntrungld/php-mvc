<?php
/**
 * Created by PhpStorm.
 * User: trungld
 * Date: 3/3/19
 * Time: 5:34 PM
 */

require_once(__DIR__ . '/Model.php');
require_once(__DIR__ . '/StudentAnswer.php');

class StudentExam extends Model
{
    protected $table = 'student_exam';

    public function submited() {
        $answer = (new StudentAnswer)->where([
            'student_exam_id' => $this->id,
        ])->first();

        return !!$answer;
    }
}
