<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
	
    public function index(){
      $this->display();
    }
    
    public function resume(){
    	$this->redirect('Resume/resume');
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