<?php


/****
 * 根据ID查询分类
 * @param unknown $id
 * @return string
 */
function get_parent_names($id){
	$data=M("type")->where('id='.$id)->find();
	if ($data){
		return $data['type'];
	}else {
		return "未分类";
	}
}


function get_json(){
	return "未分类";
}


function getJson(){
	return "Json数据";
}