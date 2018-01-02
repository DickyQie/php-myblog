<?php

namespace Admin\Controller;



/****
 * 留言
 * @author zhangqie
 *
 */
class MessageController extends BaseController{
	
	function message(){
		
		$data=M("message")->select();
		
		$this->assign('data',$data);
		$this->display();
	}
	
	
	function delete(){
		$id=I('id');
		$res=M("message")->where("id=".$id)->delete();
		if($res){
			$this->ajaxReturn("删除成功");
		}else {
			$this->ajaxReturn("删除失败");
		}
		
	}
	
	function delAll(){
		$ids=I('ids');
		$map['id']=array('in',$ids);
		$res=M('message')->where($map)->delete();
		if ($res){
			$this->ajaxReturn("删除成功");
		}else {
			$this->ajaxReturn("删除失败");
		}
		
	}
	
	
	
	
}