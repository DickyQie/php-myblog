<?php

namespace Home\Controller;


use Think\Controller;

/***
 *语录模块，简单的界面，没有具体开发
 */
class QuotationsController extends Controller{
	
	function quotations(){
		$this->display();
	}	
	
	function resume(){
		$this->redirect('Resume/resume');
	}
	public function index(){
		$this->redirect('Index/index');
	}
	
	public function about(){
		$this->redirect('About/about');
	}
	
	public function message(){
		$this->redirect("Message/message");
	}
	
}