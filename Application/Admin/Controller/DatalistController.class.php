<?php

namespace Admin\Controller;

use Think\Controller;
use Think\Page;


class DatalistController extends BaseController{
	
	
	function lists(){
		$keyword=I('keyword','','trim');
		if ($keyword){
			$map['title']=array('like',"%$keyword%");
			$this->assign('keyword',$keyword);
		}
		
		$model=new \Model\DatalistModel();
		
		
		$count=$model->getCount($map);
		$row=5;
		$Page= new Page($count,$row);
		$show=$Page->show();
		
		
		$this->assign("page",$show);
		$this->assign('datalists',$model->getDataList($map, $Page));
		$this->assign("title","博客列表");
		
		$this->display();
	}
	
	
	
	function add(){
		if (IS_POST){
			$post=I("post.");
			$post['content']=html_entity_decode($post['content']);
			$post['time']=date('Y-m-d');
			
			//echo html_entity_decode($post['content']); ///显示html
			$res=M('datalist')->add($post);
			if ($res){
				$this->success("添加成功",U('lists'),2);
			}else {
				$this->error("添加失败");
			}
		}else {
			$type=M('type')->select();
			$this->assign("type",$type);
			$this->display();
		}
	}
	
	
	function delete(){
		$id=I("id");
		$res=M("datalist")->where('id='.$id)->delete();
		if($res){
			$this->ajaxReturn("删除成功");
		}else {
			$this->ajaxReturn("删除失败");
		}
		
	}
	
	
	function delAll(){
		$ids=I("ids","0");
		$map['id']=array('in',$ids);
		$res=M('datalist')->where($map)->delete();
		if($res){
			$this->ajaxReturn("删除成功");
		}else {
			$this->ajaxReturn("删除失败");
		}
		
	}
	
	
	
}