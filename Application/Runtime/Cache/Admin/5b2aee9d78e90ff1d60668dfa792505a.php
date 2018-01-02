<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">

<title>切切歆语后台</title>
<link href="/php/zhangqie/Public/css/module.css" rel="stylesheet"/>

<link href="/php/zhangqie/Public/css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
<link href="/php/zhangqie/Public/font-awesome/css/font-awesome.css?v=4.3.0" rel="stylesheet">


<link href="/php/zhangqie/Public/css/animate.css" rel="stylesheet">
<link href="/php/zhangqie/Public/css/admin-style.css?v=2.2.0" rel="stylesheet">

<!-- Mainly scripts -->
<script src="/php/zhangqie/Public/js/jquery-2.1.1.min.js"></script>
<script src="/php/zhangqie/Public/js/bootstrap.min.js?v=3.4.0"></script>



<script src="/php/zhangqie/Public/ueditor.config.js"></script>
<script src="/php/zhangqie/Public/ueditor.all.min.js"></script>



<!--Layer-->
<script src="/php/zhangqie/Public/static/layer/layer.js"></script>

<script type="text/javascript" src="/php/zhangqie/Public/js/admin.js"></script>

<script src="/php/zhangqie/Public/js/jquery.metisMenu.js"></script>







</head>
<body>
<div id="wrapper">
	<script>
    $(function(){
        var controller_name = "{:CONTROLLER_NAME}";
        var nav     = $('.nav-second-level a');
        nav.each(function(){
            var url = $(this).attr('href');
            console.log(url);
            if(url.indexOf('/'+controller_name) > 0){
                $(this).parent().addClass('active');
                return false;
            }
        });
    });
</script>

<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="side-menu">
            <li class="nav-header" style="padding: 25px 20px;">
                <div class="dropdown profile-element">
                    <span>
                        <img alt="image" class="img-circle" height="60px" src="/php/zhangqie/Public/images/login.png" />
                    </span>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><?php echo (session('adminzq_name')); ?></strong>
                         </span>  <span class="text-muted text-xs block"><?php if(($_SESSION['adminid']) == "1"): ?>超级管理员<?php else: ?>管理员<?php endif; ?> <b class="caret"></b></span> </span>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                        <li><a href="<?php echo U('Index/changePassword');?>">修改密码</a></li>
                        <li class="divider"></li>
                        <li><a href="<?php echo U('Public/logout');?>">安全退出</a>
                        </li>
                    </ul>
                </div>
                <div class="logo-element">
                    MR
                </div>
            </li>
            <li class="active">
                <a href="#"><i class="fa fa-edit" style="width: 18px"></i> <span class="nav-label">管理</span> <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="<?php echo U('Type/index');?>">博客分类</a></li>
                    <li><a href="<?php echo U('Datalist/lists');?>">博客列表</a></li>
                    <li><a href="<?php echo U('MiddleLevel/lists');?>">个人简历</a></li>
                    <li><a href="<?php echo U('ElementaryLevel/lists');?>">生活语录</a></li>
                    <li><a href="<?php echo U('Hot/lists');?>">留言列表</a></li>
                </ul>
            </li>
        </ul>
    </div>
</nav>





	
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
    <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#">
                <i class="fa fa-bars"></i>
            </a>
        </div>
        <ul class="nav navbar-top-links navbar-right">
            <li>
                <span class="m-r-sm text-muted welcome-message">
                    <a href="<?php echo U('Datalist/lists');?>" title="返回首页"><i class="fa fa-home"></i>欢迎使用歆语博客后台</a>
                </span>
            </li>
            <li>
                <a href="<?php echo U('Public/logout');?>">
                    <i class="fa fa-sign-out"></i> 退出
                </a>
            </li>
        </ul>
    </nav>
</div> <!--顶部-->
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>添加初级类别</h5>
                </div>
                <div class="ibox-content">
                    <form class="form-horizontal m-t " method="post" action="<?php echo U('add');?>" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">博客类型：</label>
                            <div class="col-sm-9">
                                <select id="typeid" name="typeid">
                                    <option value="0">请选择分类类型</option>
                                    <?php if(is_array($type)): foreach($type as $key=>$vo): ?><option value="<?php echo ($vo["id"]); ?>"><?php echo ($vo["type"]); ?></option><?php endforeach; endif; ?>
                                </select>
                            </div>
                        </div>
                        
						 
                        <div class="form-group">
                            <label class="col-sm-3 control-label">名称：</label>
                            <div class="col-sm-3">
                                <input  type="text" id="title" class="form-control" name="title" value="<?php echo ($data["title"]); ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">图片链接：</label>
                            <div class="col-sm-3">
                                <input  type="text" id="href" class="form-control" name="image" value="<?php echo ($data["href"]); ?>">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-sm-3 control-label">是否推荐：</label>
                            <div class="col-sm-6">
                                <input type="radio" name="is_recommend" value="0"> 否
                                <input type="radio" name="is_recommend" value="1"> 是
                                <span style="color:indianred">（推荐后，会在首页右侧显示）</span>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-sm-3 control-label">作者：</label>
                            <div class="col-sm-3">
                                <input  type="text" id="author" class="form-control" name="author" value="<?php echo ($data["sort"]); ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">摘要：</label>
                            <div class="col-sm-3">
                            	<textarea class="form-control" id="abstract" name="abstract" rows="6"></textarea>
                            </div>
                        </div>
                        
                        <div  class="form-group">
                            <label class="col-sm-3 control-label">编辑内容：</label>
                          	<div class="col-sm-9">
				    	   		<script id="editor" type="text/plain" name="content" style="width:862px;height:400px;"></script>
				    	 	</div>
					   </div>
					   
					   
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-3">
                                <button class="btn btn-primary" type="submit">提交</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--尾部-->
        
    </div>
    <script>
    
	    //实例化编辑器
	    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
	    var ue = UE.getEditor('editor');
	    
        $('form').submit(function(){
            var name = $('#title').val();
            var sort = $("#sort").val();
            var type = $('#typeid').val();
            if(type == 0){
            	layer.msg('请选择正确分类',{time:1000});
                return false;
            }
            if(name == ''){
                layer.msg('请填写名称',{time:1000});
                return false;
            }
            if(sort == ''){
                layer.msg('请填写作者',{time:1000});
                return false;
            }
            
        });
    </script>

</div>
</body>
</html>