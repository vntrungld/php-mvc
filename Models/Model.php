<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 2/25/2019
 * Time: 8:28 PM
 */

class Model
{
    protected $host = 'localhost';
    protected $db = 'n3_23';
    protected $user = 'root';
    protected $password = '';
    protected $table;
    protected $conn;
    protected $query;

    public function __construct()
    {
        $this->conn = mysqli_connect($this->host, $this->user, $this->password, $this->db);
    }

    public function select($columns = '*') {
        $this->query = 'SELECT ' . $columns . ' FROM ' . $this->table;
        return $this;
    }

    public function all() {
        $this->select();

        return $this->toObjs($this->mysqliQueries());
    }

    public function get() {
        return $this->toObjs($this->mysqliQueries());
    }

    public function where($arr) {
        $this->select();
        $this->query .= ' WHERE ';
        $has_where_before = false;

        foreach ($arr as $key => $value) {
            if ($has_where_before) {
                $this->query .= ' AND ';
            }

            $this->query .= $key . ' = ' . '\'' . $value . '\'';
            $has_where_before = true;
        }
        return $this;
    }

    public function first() {
        return $this->toObj($this->mysqliQuery());
    }

    public function find($id) {
        return $this->where(['id' => $id])->first();
    }

    protected function mysqliQueries() {
        $result = mysqli_query($this->conn, $this->query);

        while($row = $result->fetch_assoc()) {
            $rows[] = $row;
        }

        return $rows;
    }

    protected function mysqliQuery() {
        $result = mysqli_query($this->conn, $this->query);
        $row = [];

        if (is_bool($result)) {
            return mysqli_insert_id($this->conn);
        }

        if ($result && mysqli_num_rows($result)) {
            $row = mysqli_fetch_array($result);
        }

        return $row;
    }

    protected function toObj($row = []) {
        if (!$row) {
            return null;
        }

        foreach ($row as $key => $value) {
            $this->{$key} = $value;
        }

        return $this;
    }

    protected function toObjs($rows = []) {
        if (!$rows) {
            return null;
        }

        $result = [];

        foreach ($rows as $row) {
            $result[] = (new self)->toObj($row);
        }

        return $result;
    }

    public function getQuery() {
        return $this->query;
    }

    public function create($arr) {
        $columns = [];
        $values = [];

        foreach ($arr as $key => $value) {
            array_push($columns, $key);
            array_push($values, '\'' . $value . '\'');
        }

        $this->query = 'INSERT INTO ' . $this->table . '(' . implode(',', $columns) . ') VALUES (' . implode(',', $values) . ')';

        if (! $id = $this->mysqliQuery()) {
            return null;
        }

        return $this->find($id);
    }

    public function count() {
        $objs = $this->get();

        return count($objs);
    }
}
