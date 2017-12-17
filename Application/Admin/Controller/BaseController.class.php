<?php

namespace Admin\Controller;


use Think\Controller;
class BaseController extends Controller{
	
	
	function _initialize(){
		if (!isset($_SESSION['adminzq_id']) || !isset($_SESSION['adminzq_name'])){
			$this->redirect("Admin/Public/login");
		}
	}
	
	
}