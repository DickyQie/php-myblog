<?php

namespace Home\Controller;


use Think\Controller;
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