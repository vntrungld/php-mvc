<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 2/25/2019
 * Time: 8:30 PM
 */

require_once(__DIR__ . '/Model.php');

class Question extends Model
{
    protected $table = 'questions';

    public function isMultipleAnswers() {
        return count(json_decode($this->correct_answers)) > 1;
    }
}
