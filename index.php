<?php

if(version_compare(PHP_VERSION,'5.3.0','<'))  die('require PHP > 5.3.0 !');
define('APP_DEBUG', true);



define('DB_FIELD_CACHE',false);
define('HTML_CACHE_ON',false);//www.phpernote.com/ */
define('TMPL_CACHE_ON', false);
define('ACTION_CACHE_ON', false);


defined('EBusinessID') or define('EBusinessID', '1318190');
//电商加密私钥，快递鸟提供，注意保管，不要泄漏
defined('AppKey') or define('AppKey', '52bd54fd-8055-430a-815b-2c4dd318a078');
//测试请求url
//defined('ReqURL') or define('ReqURL', 'http://testapi.kdniao.cc:8081/api/dist');

defined('ReqURL') or define('ReqURL', 'http://api.kdniao.cc/Ebusiness/EbusinessOrderHandle.aspx');

define('APP_PATH', './Application/');


//"http://i.tianqi.com/index.php?c=code&id=2"; 天气接口

require './ThinkPHP/ThinkPHP.php';
