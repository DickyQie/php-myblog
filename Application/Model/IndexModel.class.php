<?php

namespace Model;

use Think\Model;

/***
 * 博客首页
 * @author Administrator
 *
 */
class IndexModel extends Model{
	
	
	function getCount(){
		return D('datalist')->count();
	}
	
	
	function getDataList($page) {
		$data=M('datalist')->order('id asc')->limit($page->firstRow.','.$page->listRows)->select();
		return $data;
	}
	

}