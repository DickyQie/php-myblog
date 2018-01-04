<?php

namespace Model;

use Think\Model;
class DatalistModel extends Model{
	
	
	function getCount($key){
		return D("datalist")->where($key)->count();
	}
	
	
	function getDataList($data,$page) {
		$info=D('datalist')->where($data)->order("id asc")//desc
		->limit($page->firstRow.','.$page->listRows)->select();
		return $info;
	}
	
}



