<?php
declare(strict_types=1);

require '../../vendor/autoload.php';

phpinfo();

$db = new SQLite3('../../db/sqlite.dbi');
var_dump($db->query('CREATE TABLE IF NOT EXISTS test (
            id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            created_at DATETIME NOT NULL, 
            updated_at DATETIME NOT NULL);
            '));
var_dump($db->query('select * from test'));
