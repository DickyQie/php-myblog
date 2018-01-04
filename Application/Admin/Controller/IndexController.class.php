<?php

namespace Admin\Controller;


use Think\Controller;
/***
 * 
 * 博客后台首页
 * @author zhangqie
 *
 */
class IndexController extends BaseController{
	
	
	function index(){
		$this->redirect("Datalist/lists");
	}
	
	/***
	 * 修改密码
	 */
	function changePassword(){
		
		if (IS_POST){
			$pwd1=I("old_password",'','md5');
			$pwd2=I("new_password",'','md5');
			$adminid=session("adminzq_id");
			$res=M("admin")->where('id='.$adminid)->find();
			if ($res){
				if ($pwd1 === $res['password']){
					$mre=M('admin')->where('id='.$adminid)->setField('password',$pwd2);
					if ($mre){
						$msg['status']=1;
						$msg['message']="密码修改成功";
						$this->ajaxReturn($msg);
					}else {
						$msg['status']=0;
						$msg['message']="密码修改失败";
						$this->ajaxReturn($msg);
					}
				}else {
					$msg['status']=0;
					$msg['message']="原密码输入错误";
					$this->ajaxReturn($msg);
				}
			}else {
				$msg['status']=0;
				$msg['message']="密码修改失败";
				$this->ajaxReturn($msg);
			}
			
		}else {
			$this->display();
		}
		
	}
	
	
}