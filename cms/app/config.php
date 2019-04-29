<?php

define('PATH', realpath('.'));
define('SUBFOLDER_NAME', dirname($_SERVER['SCRIPT_NAME']));
define('URL', 'http://' . $_SERVER['SERVER_NAME'] . (SUBFOLDER_NAME == '/' ? null : SUBFOLDER_NAME));
define('IMG_URL', 'cms/');

return [
    'db' => [
        'name' => 'cms',
        'host' => 'localhost',
        'user' => 'root',
        'pass' => ''
    ]
];