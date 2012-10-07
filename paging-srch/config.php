<?php

// site configurations ....

defined('ACCESS') or die('Restricted access !');

define('SITE_NAME','paging');

define('SITE_PATH','/paging/');

define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS','');
define('DB_NAME','paging');

$caching_enabled =false;
$gzip_enabled = false;

$cache_options = array(
    'cacheDir' => realpath('./cache').'/',
    'lifeTime' => 10 //7*24*60*60
);

set_include_path(get_include_path()
				.PATH_SEPARATOR. './libs/php/'
				.PATH_SEPARATOR. './libs/phtml/');