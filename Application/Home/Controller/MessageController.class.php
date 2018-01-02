<?php

namespace Home\Controller;

use Think\Controller;

/****
 * 给我留言
 * @author zhangqie
 *
 */
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
	
	public function addmsg(){
		if (IS_POST){
			$post=I('post.');
			$res=M('message')->add($post);
			if ($res){
				$this->success("留言成功",U("Index/index"));
			}else {
				$this->error("留言失败");
			}
		}else {
			$this->display();
		}
	}
	
	
	
}