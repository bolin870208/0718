<?php

session_start();
if (isset($_SESSION["admin"])) {
  include __DIR__ . '/list-members-admin.php';
} else {
  include __DIR__ . '/list-members-no-admin.php';
}
