<?php

namespace Home\Controller;

use Think\Controller;

/***
 * 
 * @author zhangqie
 * 
 * 关于我们
 *
 */
class AboutController extends Controller{
	
    public function index(){
     $this->redirect('Index/index');
    }
    
    public function resume(){
    	$this->redirect('Resume/resume');
    }
    
    public function about(){
    	$this->display();
    }
    
    public function message(){
    	$this->redirect("Message/message");
    }
    
    public function quotations(){
    	$this->redirect('Quotations/quotations');
    }
} 