<?php

namespace Admin\Controller;


use Think\Controller;

class TypeController extends BaseController{
	
	
	function index(){
		
		$keyword=I('keyword','','trim');
		if ($keyword){
			$map['type']=array('like',"%$keyword%");
			$this->assign('keyword',$keyword);
		}
		
		//$data=M("type")->where($map)->select();
		$data=D("type")->where($map)->select();
		$this->assign("typelist",$data);
		
		
		
		// 访问fun_a.php的方法  在Application/Common/Conf/config.php 添加	'LOAD_EXT_FILE' => 'function.a',
		
		//验证  Common下面的方法访问  
		
		/*
		 * html 文件中访问 函数
		 *  <div><{$typelist|fun_b}></div>
		<div><{$typelist|get_json}></div>
		<div><{$typelist|fun_a}></div> */
		
		
	/* 
	 * 	测试访问函数
	 *  echo fun_a();
		echo fun_b();
		echo fun_c();
		echo getJson(); */
		
		$this->display();
	}
	
	/***
	 * 添加类型
	 */
	function add(){
		if (IS_POST){
			$post=I('post.');
			$type=$post['type'];
			$iscms=D('type')->where('type='."'$type'")->find();
			 if (!$iscms){
				$res=M('type')->add($post);
				if ($res){
					$this->success("添加成功",U('index'));
				}else {
					$this->error("添加失败");
				}
			}else{
				$this->error("添加失败,该分类已存在");
			} 
		}else {
			$this->display();
		}
		
	}
	
	/***
	 * 修改类型
	 */
	function edit(){
		
		if(IS_POST){
			$post=I("post.");
			$res=M("type")->save($post);
			if ($res){
				$this->success("修改成功",U("index"));
			}else {
				$this->error("修改错误");
			}
		}else {
			$id=I("id",'','trim');
			$data=M('type')->where("id=".$id)->find();
			$this->assign("data",$data);
			$this->display();
		}
	}
	
	
	/***
	 * 删除博客类型
	 */
	function delete(){
		$post=I('id');
		$res=M('type')->where("id=".$post)->delete();
		if ($res){
			$this->ajaxReturn("删除成功");
		}else {
			$this->ajaxReturn("删除成功");
		}
	}
	
	/***
	 * 筛选删除类型
	 */
	function delAll(){
		$id=I("ids",0);
		$map['id']=array('in',$id);
		$res=M("type")->where($map)->delete();
		if ($res){
			$this->ajaxReturn("删除成功");
		}else {
			$this->ajaxReturn("删除失败");
		}
	}
	
	
}