<?php

namespace Admin\Controller;


use Think\Controller;
/***
 * 
 * 博客后台首页
 * @author zhangqie
 *
 */
class IndexController extends BaseController{
	
	
	function index(){
		$this->redirect("Datalist/lists");
	}
	
	function changePassword(){
		
		if (IS_POST){
			
		}else {
			$this->display();
		}
		
	}
	
	
}