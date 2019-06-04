<?php
$client = new MongoDB\Client(
    ‘mongodb+srv://dbEfish:<password>@cluster0-klemt.mongodb.net/test?retryWrites=true’);
    
    $db = $client->test;
?>