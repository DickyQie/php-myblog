<?php

namespace Admin\Controller;


use Think\Controller;
class PublicController extends Controller{
	
	function login(){
		if (session('adminzq_id') || session('adminzq_name')){
			$this->redirect("Index/index");
		}else {
			$this->display();
		}
	}
	
	
	/****
	 * 验证码
	 */
	function code() {
		$config=array(
				'fontSize'=>15,
				'imageH'=>42,
				'imageW'=>108,
				'length'=>4,
				'useNoise'=>true,//是否添加杂点
				'codeSet' => '0123456789'//正则
		);
		$virfy=new \Think\Verify($config);
		$virfy->entry();
	}
	
	/* $res['status']= 0;
	$res['message'] ="用户名或密码错误";
	$this->ajaxReturn($res); */
	
	function checkLogin(){
		if (IS_POST){
			$m=I('username',' ','trim');
			$map['username']=$m;
			$admin=M('admin')->where($map)->find();//"username='".$m."'"
			$res['status']=0;
			$res['message']=$admin['logintime'];
			$this->ajaxReturn($res);
		}
		
		
	}
	
}