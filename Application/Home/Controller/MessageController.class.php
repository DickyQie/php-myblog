<?php

namespace Home\Controller;

use Think\Controller;

class MessageController extends Controller{
	
	function message(){
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
	
	public function quotations(){
		$this->redirect('Quotations/quotations');
	}
}