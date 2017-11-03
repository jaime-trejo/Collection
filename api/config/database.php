<?php

include 'config.php';

class Database{

    private $host;
    private $port;
    private $user;
    private $password;
    private $server;
    private $db_name;

    public function __construct()
    {
        $config = new Config(require('config.inc'));
        $this->db_name = $config->get('DB');
        $this->user = $config->get('USER');
        $this->host = $config->get('HOST');
        $this->port = $config->get('PORT');
        $this->password = $config->get('PASS');
        $this->server = $this->host.':'.$this->port;
    }

    public function getConnection()
    {
        $this->conn = null;

        try{
            $this->conn = new PDO("mysql:host=" . $this->server . ";dbname=" . $this->db_name, $this->user, $this->password);
            $this->conn->exec("set names utf8");
        }catch(PDOException $exception){
            die("Connection failed: " . $exception->getMessage(). "<br>" . PHP_EOL);
        }

        echo "Connected successfully to: ".$this->db_name. "<br>" . PHP_EOL;

        return $this->conn;
    }

    public function setHost(string $host){
        $this->host = $host;
    }

    public function setPort(string $port){
        $this->port = $port;
    }

    public function setUser(string $user){
        $this->user = $user;
    }

    public function setPass(string $pass){
        $this->pass = $pass;
    }

}
