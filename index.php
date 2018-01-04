<?php

if(version_compare(PHP_VERSION,'5.3.0','<'))  die('require PHP > 5.3.0 !');
define('APP_DEBUG', true);



define('DB_FIELD_CACHE',false);
define('HTML_CACHE_ON',false);//www.phpernote.com/ */
define('TMPL_CACHE_ON', false);
define('ACTION_CACHE_ON', false);


define('APP_PATH', './Application/');


//"http://i.tianqi.com/index.php?c=code&id=2"; 天气接口

require './ThinkPHP/ThinkPHP.php';
