<?php
namespace Home\Controller;
use Think\Controller;
use Think\Page;
class IndexController extends Controller {
	
    public function index(){
      $model=new \Model\DatalistModel();
      $count= $model->getCount();
      $row=5;
      $page=new Page($count,$row);
      
      $data=$model->getDataList("",$page);
      $this->assign('page',$page->show());
      $this->assign('datalist',$data);
      $this->display("index");
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