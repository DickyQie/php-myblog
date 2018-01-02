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
	/****
	 * 登录后台
	 */
	function checkLogin(){
		$code=I('code',' ','trim');
		if (!$this->checkCode($code)){
			$res['status']=0;
			$res['message']="验证码错误";
			$this->ajaxReturn($res);
			exit();
		}
		if (IS_POST){
			$m=I('username',' ','trim');
			$pwd=I('password',' ','md5');
			$admin=$this->checkPassword($m,$pwd);
			if ($admin){
				$micon=array(
						"ip"=>$this->getIp(),
						"logintime"=>date("Y-m-d H:i:s")
				);
				$save=M("admin")->where("id="+$admin['id'])->save($micon);
				if ($save){
					 session("adminzq_id",$admin['id']);
					session("adminzq_name",$admin['username']);
					$res['status']=1;
					$res['message']='登录成功';
					$this->ajaxReturn($res);
				}
			}else {
				$res['status']=0;
				$res['message']="用户名或密码错误";
				$this->ajaxReturn($res);
			}
		}
		
		
	}
	
	/***
	 * 验证验证码是否正确
	 * @param unknown $param
	 */
	function checkCode($param) {
		$virfy=new \Think\Verify();
		return $virfy->check($param);
	}
	
	/**
	 * 验证密码
	 * @param unknown $param
	 */
	function checkPassword($user,$pwd) {
		$map['username']=$user;
		$admin=M('admin')->where($map)->find();
		if($pwd===$admin['password']){
			return $admin;
		}else {
			return false;
		}
		
	}
	
	//获取用户真实IP
	function getIp() {
		if (getenv("HTTP_CLIENT_IP") && strcasecmp(getenv("HTTP_CLIENT_IP"), "unknown"))
			$ip = getenv("HTTP_CLIENT_IP");
		else
			if (getenv("HTTP_X_FORWARDED_FOR") && strcasecmp(getenv("HTTP_X_FORWARDED_FOR"), "unknown"))
				$ip = getenv("HTTP_X_FORWARDED_FOR");
			else
				if (getenv("REMOTE_ADDR") && strcasecmp(getenv("REMOTE_ADDR"), "unknown"))
					$ip = getenv("REMOTE_ADDR");
				else
					if (isset ($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], "unknown"))
						$ip = $_SERVER['REMOTE_ADDR'];
					else
						$ip = "unknown";
					return ($ip);
	}
	
	function logout(){
		unset($_SESSION['adminzq_id']);
		unset($_SESSION['adminzq_name']);
		$this->redirect('login');
		
	}
	
}