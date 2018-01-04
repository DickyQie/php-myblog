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