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
		
		
		//$addd=$this->orderTracesSubByJson();
		//echo $addd;
		
		// 访问KdApiSearchDemo.php的方法  在Application/Common/Conf/config.php 添加	'LOAD_EXT_FILE' => 'KdApiSearchDemo',
		//$addddd=getOrderTracesByJson();
		//echo $addddd;
		
		//验证  Common下面的方法访问  
	/*  	
        <!-- 访问 KdApiSearchDemo.php的方法-->
        <div><{$typelist|aaaa}></div> -->
		<!-- 访问function方法 -->
		<!--      <div><{$typelist|orderTracesSubByJson}></div> -->*/
		
		$this->display();
	}
	
	
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
	
	
	
	function delete(){
		$post=I('id');
		$res=M('type')->where("id=".$post)->delete();
		if ($res){
			$this->ajaxReturn("删除成功");
		}else {
			$this->ajaxReturn("删除成功");
		}
	}
	
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
	
	
	function orderTracesSubByJson(){
		/* 	$requestData="{'OrderCode': 'SF201608081055208281',".
		 "'ShipperCode':'SF',".
		 "'LogisticCode':'3100707578976',".
		 "'PayType':1,".
		 "'ExpType':1,".
		 "'IsNotice':0,".
		 "'Cost':1.0,".
		 "'OtherCost':1.0,".
		 "'Sender':".
		 "{".
		 "'Company':'LV','Name':'Taylor','Mobile':'15018442396','ProvinceName':'上海','CityName':'上海','ExpAreaName':'青浦区','Address':'明珠路73号'},".
		 "'Receiver':".
		 "{".
		 "'Company':'GCCUI','Name':'Yann','Mobile':'15018442396','ProvinceName':'北京','CityName':'北京','ExpAreaName':'朝阳区','Address':'三里屯街道雅秀大厦'},".
		 "'Commodity':".
		 "[{".
		 "'GoodsName':'鞋子','Goodsquantity':1,'GoodsWeight':1.0}],".
		 "'Weight':1.0,".
		 "'Quantity':1,".
		 "'Volume':0.0,".
		 "'Remark':'小心轻放'}"; */
	
	
		$requestData="{'ShipperCode': 'YD',".
				"'LogisticCode':'3101527480221'}";
	
		/*
		 $datas = array(
		 'EBusinessID' => EBusinessID,
		 'RequestType' => '1008',
		 'RequestData' => urlencode($requestData) ,
		 'DataType' => '2',
		 ); */
		//$datas['DataSign'] = encrypt($requestData, AppKey);
		//$result=sendPost(ReqURL, $datas);
	
		$datas = array(
				'EBusinessID' => EBusinessID,
				'RequestType' => '1002',
				'RequestData' => urlencode($requestData) ,
				'DataType' => '2',
		);
	
		$datas['DataSign'] = encrypt($requestData, AppKey);
		$result=sendPost(ReqURL, $datas);
	
		//根据公司业务处理返回的信息......
	
		return $result;
	}
	
	/**
	 *  post提交数据
	 * @param  string $url 请求Url
	 * @param  array $datas 提交的数据
	 * @return url响应返回的html
	 */
	function sendPost($url, $datas) {
		$temps = array();
		foreach ($datas as $key => $value) {
			$temps[] = sprintf('%s=%s', $key, $value);
		}
		$post_data = implode('&', $temps);
		$url_info = parse_url($url);
		if(empty($url_info['port']))
		{
			$url_info['port']=80;
		}
		$httpheader = "POST " . $url_info['path'] . " HTTP/1.0\r\n";
		$httpheader.= "Host:" . $url_info['host'] . "\r\n";
		$httpheader.= "Content-Type:application/x-www-form-urlencoded\r\n";
		$httpheader.= "Content-Length:" . strlen($post_data) . "\r\n";
		$httpheader.= "Connection:close\r\n\r\n";
		$httpheader.= $post_data;
		$fd = fsockopen($url_info['host'], $url_info['port']);
		fwrite($fd, $httpheader);
		$gets = "";
		$headerFlag = true;
		while (!feof($fd)) {
			if (($header = @fgets($fd)) && ($header == "\r\n" || $header == "\n")) {
				break;
			}
		}
		while (!feof($fd)) {
			$gets.= fread($fd, 128);
		}
		fclose($fd);
	
		return $gets;
	}
	
	/**
	 * 电商Sign签名生成
	 * @param data 内容
	 * @param appkey Appkey
	 * @return DataSign签名
	 */
	function encrypt($data, $appkey) {
		return urlencode(base64_encode(md5($data.$appkey)));
	}
	
	
	
}