<?php

namespace Admin\Controller;


use Think\Controller;
class IndexController extends BaseController{
	
	function index(){
		$this->redirect("Datalist/lists");
	}
	
}