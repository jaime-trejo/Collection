<?php

include 'config.php';

class Database{
    private $server_name = HOST.':'.PORT;
    private $user_name = USER;
    private $password = PASS;
    private $conn;

    public function getConnection($db_name)
    {

        // Create connection
        $conn = new \mysqli($this->server_name, $this->user_name, $this->password, $db_name);

        // Check connection
        if ($conn->connect_error)
        {
            die("Connection failed: " . $conn->connect_error . "<br>" . PHP_EOL);
        }

        echo "Connected successfully to: ".$db_name. "<br>" . PHP_EOL;

        return $conn;
    }

}