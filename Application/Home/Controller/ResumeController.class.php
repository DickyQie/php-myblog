<?php

namespace Home\Controller;

use Think\Controller;

/***
 *简历模块，简单的界面，没有具体开发
 */
class ResumeController extends Controller{
	
	
	function resume(){
		$this->display();
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
	
	public function quotations(){
		$this->redirect('Quotations/quotations');
	}
	
	
	
}
