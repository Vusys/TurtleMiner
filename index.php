<?php

header("Content-Type: text/plain");

if(!isset($_GET['msg'])){
	exit;
}

$msg = @$_GET['msg'];
$id = @$_GET['id'];
$fuel = @$_GET['fuel'];

file_put_contents('log.txt', date('[F jS, Y g:i:s a] ') . "[Turtle #$id | Fuel $fuel] ". $msg . PHP_EOL, FILE_APPEND);

echo "1";