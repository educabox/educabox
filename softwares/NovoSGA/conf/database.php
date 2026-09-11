<?php
return array(
  "driver" => "pdo_mysql",
  "host" => $_ENV["DB_HOST"],
  "port" => $_ENV["DB_PORT"],
  "user" => $_ENV["DB_USERNAME"],
  "password" => $_ENV["DB_PASSWORD"],
  "dbname" => $_ENV["DB_DATABASE"],
  "charset" => "utf8",
);