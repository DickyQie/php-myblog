<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">

<title>切切歆语</title>

<link rel="stylesheet" href="/php/zhangqie/Public/css/bootstrap.min.css" />
<script type="text/javascript" src="/php/zhangqie/Public/js/bootstrap.min.js" ></script>
<link href="/php/zhangqie/Public/css/base.css" rel="stylesheet">
<link href="/php/zhangqie/Public/css/media.css" rel="stylesheet">



<!--sdf  -->

<link href="/php/zhangqie/Public/css/index.css" rel="stylesheet">


<link href="/php/zhangqie/Public/css/style.css" rel="stylesheet">


<link href="/php/zhangqie/Public/css/about.css" rel="stylesheet">

<link rel="stylesheet" href="/php/zhangqie/Public/css/message.css"/>













</head>
<body>
<div id="wrapper">
	
	
<style type="text/css">
	#backmessage { background: #e41635 }/* 高亮选中颜色 */
</style>
<div class="ibody">
 <header>
   <header>
     <h1>切切歆语</h1>
     <h2>人生逍遥乐对, 红尘千般滋味, 做人好比游泳, 游累了也是不能停的......</h2>
   <div class="logo"><a href="/"></a></div>
   <nav id="topnav"><a id="backindex" href="<?php echo U(index);?>">首页</a><a id="backresumen" href="<?php echo U('resume');?>">个人简历</a><a id="backquotationsn" href="<?php echo U(quotations);?>">生活语录</a><a id="backaboutn" href="<?php echo U('about');?>">关于我的</a><a id="backmessage" href="<?php echo U('message');?>">给我留言</a></nav>
 </header>
 
 
  <article>
    <h2 class="about_h">您现在的位置是：<a href="/">首页</a>><a href="1/">留言板</a></h2>
    
  	<form id="form" name="form" method="post" action="<?php echo U('checkLogin');?>"  autocomplete="off">
         <div class="form-group">
             <input name="username" type="text"  class="form-control" placeholder="Name"  autocomplete="off">
         </div>
         <div class="form-group">
             <input name="password" type="text" class="form-control" placeholder="Email" autocomplete="off">
         </div>
          <div class="form-group">
             <textarea class="form-control" rows="6" placeholder="Your Message" id="user_message"></textarea>
         </div>
         <button type="submit" class="btn btn-primary messagesub">畅言一下</button>
    </form>
     
  </article>
  <aside>
    <div class="rnav">
      <li class="rnav1 "><a href="/">个人博客模板</a></li>
      <li class="rnav2 "><a href="/">企业网站模板</a></li>
      <li class="rnav3 "><a href="/">个人作品</a></li>
      <li class="rnav4 "><a href="/">国外html5模板</a></li>
    </div>
    <div class="ph_news">
      <h2>
        <p>点击排行</p>
      </h2>
      <ul class="ph_n">
        <li><span class="num1">1</span><a href="/">有一种思念，是淡淡的幸福,一个心情一行文字</a></li>
        <li><span class="num2">2</span><a href="/">励志人生-要做一个潇洒的女人</a></li>
        <li><span class="num3">3</span><a href="/">女孩都有浪漫的小情怀――浪漫的求婚词</a></li>
        <li><span>4</span><a href="/">Green绿色小清新的夏天-个人博客模板</a></li>
        <li><span>5</span><a href="/">女生清新个人博客网站模板</a></li>
        <li><span>6</span><a href="/">Wedding-婚礼主题、情人节网站模板</a></li>
        <li><span>7</span><a href="/">Column 三栏布局 个人网站模板</a></li>
        <li><span>8</span><a href="/">时间煮雨-个人网站模板</a></li>
        <li><span>9</span><a href="/">花气袭人是酒香―个人网站模板</a></li>
      </ul>
    </div>
     <div class="copyright" style="margin-bottom:130px;">
      <ul>
      	<p>Copyright @ 2016 ZhangQie. <a href="#">&nbsp;All Rights Reserved</a></p>
      </ul>
    </div>
  </aside>
   <script src="/php/zhangqie/Public/js/silder.js"></script>
<div class="clear"></div>
	  <!-- 清除浮动 --> 
</div>

</div>
</body>
</html>