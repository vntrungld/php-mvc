<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 2/25/2019
 * Time: 9:01 PM
 */

require_once(__DIR__ . '/Request.php');
require_once(__DIR__ . '/Controllers/AuthController.php');
require_once(__DIR__ . '/Controllers/SubjectController.php');
require_once(__DIR__ . '/Controllers/ExamController.php');
require_once(__DIR__ . '/Controllers/QuestionController.php');


class Router
{
    private $request;
    private $supported_http_methods = array(
        'GET',
        'POST',
        'PUT',
        'DELETE',
    );

    function __construct(Request $request)
    {
        $this->request = $request;
    }

    function __call($name, $args)
    {
        list($route, $method) = $args;
        if(!in_array(strtoupper($name), $this->supported_http_methods))
        {
            $this->invalidMethodHandler();
        }
        $this->{strtolower($name)}[] = [
            'partials' => $this->formatRoute($route),
            'callback' => $method
        ];
    }

    private function formatRoute($route)
    {
        $result = rtrim($route, '/');
        $result = ltrim($result, '/');
        if ($result === '')
        {
            return [''];
        }

        return explode('/', $result);
    }
    private function match($method, $route) {
        $format_route = $this->formatRoute($route);
        $method = strtolower($method);
        $params = [];
        $callback = null;
        $still_match = false;

        foreach ($this->{$method} as $partials) {
            if (count($partials['partials']) === count($format_route)) {
                $still_match = true;
                foreach ($partials['partials'] as $index => $value) {
                    if ($format_route[$index] === $value) {
                        //$still_match = true;
                    } else {
                        if (preg_match('/^{.+}$/', $value) > 0) {
                            //$still_match = true;
                            $param_name = substr($value, 1, strlen($value) - 2);
                            $params[$param_name] = $format_route[$index];
                        } else {
                            $still_match = false;
                        }
                    }
                }

                $callback = $partials['callback'];

                if ($still_match) {
                    return [
                        'callback' => $callback,
                        'params' => $params,
                    ];
                }
            }
        }



        return false;
    }
    private function invalidMethodHandler()
    {
        header("{$this->request->server_protocol} 405 Method Not Allowed");
    }
    private function defaultRequestHandler()
    {
        header("{$this->request->server_protocol} 404 Not Found");
    }

    /**
     * Resolves a route
     */
    function resolve()
    {
        $result = $this->match($this->request->request_method, $this->request->request_uri);

        if(!$result)
        {
            $this->defaultRequestHandler();
            return;
        }

        $method_segments = explode('@', $result['callback']);
        $class = $method_segments[0];
        $method = $method_segments[1];

        $controller = new $class;

        return $controller->{$method}($this->request, $result['params']);
    }

    function __destruct()
    {
        $this->resolve();
    }
}
