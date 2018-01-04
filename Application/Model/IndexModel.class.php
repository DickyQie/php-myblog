<?php

namespace Model;

use Think\Model;

/***
 * 
 * @author zhangqie
 *
 */
class IndexModel extends Model{
	
	
	/***
	 * 获取博客总条数
	 */
	function getCount(){
		return D('datalist')->count();
	}
	
	/****
	 * 分页查询
	 * @param unknown $page
	 * @return unknown
	 */
	function getDataList($page) {
		$data=M('datalist')->order('id asc')->limit($page->firstRow.','.$page->listRows)->select();
		return $data;
	}
	

}