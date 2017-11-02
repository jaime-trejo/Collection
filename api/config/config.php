<?php

 $GLOBALS['config'] = [
        'HOST'      => '',
        'PORT'      => '',
        'USER'      => '',
        'PASS'      => '',
        'DB'        => ''
];

// Absolute path for the project if there's a server host.
if(!defined('SER_ABSPATH'))
    define('SER_ABSPATH',$_SERVER['DOCUMENT_ROOT']."/");

//Absolute path for the project if there's no server host.
if(!defined('ABSPATH'))
    define('ABSPATH',dirname(__DIR__));

