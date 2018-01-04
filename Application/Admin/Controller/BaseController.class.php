<?php

namespace Admin\Controller;


use Think\Controller;
class BaseController extends Controller{
	
	/***
	 * 验证是否登录，未登录先登录
	 */
	function _initialize(){
		if (!isset($_SESSION['adminzq_id']) || !isset($_SESSION['adminzq_name'])){
			$this->redirect("Admin/Public/login");
		}
	}
	
	
}