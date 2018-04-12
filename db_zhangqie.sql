/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : db_zhangqie

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-04-12 10:49:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `pre_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `pre_logistics`;
CREATE TABLE `pre_logistics` (
  `uid` int(11) NOT NULL,
  `order_no` varchar(32) NOT NULL,
  `order_status` varchar(32) NOT NULL,
  `order_number` varchar(32) DEFAULT NULL,
  `logistics` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_logistics
-- ----------------------------

-- ----------------------------
-- Table structure for `zq_admin`
-- ----------------------------
DROP TABLE IF EXISTS `zq_admin`;
CREATE TABLE `zq_admin` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `logintime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_admin
-- ----------------------------
INSERT INTO `zq_admin` VALUES ('1', 'zhangqie', 'e10adc3949ba59abbe56e057f20f883e', '::1', '2018-03-06 09:14:38');
INSERT INTO `zq_admin` VALUES ('2', 'zq', '96e79218965eb72c92a549dd5a330112', '::1', '2018-01-03 22:14:05');

-- ----------------------------
-- Table structure for `zq_datalist`
-- ----------------------------
DROP TABLE IF EXISTS `zq_datalist`;
CREATE TABLE `zq_datalist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) NOT NULL,
  `image` varchar(300) DEFAULT NULL COMMENT '图片路径',
  `abstract` mediumtext COMMENT '摘要',
  `href` varchar(300) DEFAULT NULL,
  `content` mediumtext,
  `time` date DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL COMMENT '阅读量',
  `volume` int(5) DEFAULT NULL COMMENT '阅读量',
  `typeid` int(2) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_datalist
-- ----------------------------
INSERT INTO `zq_datalist` VALUES ('1', '13个能快速开发android的经典项目', 'http://igeekbar.com/igeekbar/networks/uploadimgthumb/d164fbf4-23c8-4c71-a11d-7b77948c613b.jpg', '一、okhttp一个让网络请求更简单的框架\r\n\r\n    项目地址\r\n\r\n    https://github.com/jeasonlzy/okhttp-OkGo\r\n一、okhttp一个让网络请求更简单的框架 项目地址 https://github.com/jeasonlzy/okhttp-OkGo 二、 TwinklingRefreshLayout-下拉刷新和上拉加载的RefreshLayout,自带越界回弹效果,支持RecyclerView,AbsListV ', 'http://igeekbar.com/igeekbar/networks/uploadimgthumb/d164fbf4-23c8-4c71-a11d-7b77948c613b.jpg', '<p>									</p><p><br/></p><p><br/></p><p><br/></p><p style=\"margin-top: 10px\"><span style=\"color: rgb(0, 150, 136);\">一、<span style=\"color: rgb(0, 150, 136); font-size: 14px;\"><strong>okhttp一个让网络请求更简单的框架</strong></span></span></p><blockquote style=\"margin: 10px 5px; border-left: 2px solid #009688; padding: 0px 10px; color: #777777; quotes: none; margin-left: 1em\"><p style=\"margin: 1.5em 5px !important\">项目地址</p><p style=\"margin: 1.5em 5px !important\">https://github.com/jeasonlzy/okhttp-OkGo</p></blockquote><h4 style=\"margin: 20px 0px 10px; padding: 0px; color: rgb(0, 150, 136) !important;\">二、<strong><span style=\"color: rgb(0, 150, 136); font-size: 14px;\">TwinklingRefreshLayout-下拉刷新和上拉加载的RefreshLayout,支持RecyclerView,ListView,WebView等</span></strong></h4><blockquote style=\"margin: 10px 5px; border-left: 2px solid #009688; padding: 0px 10px; color: #777777; quotes: none; margin-left: 1em\"><p style=\"margin: 1.5em 5px !important\">项目地址</p><p style=\"margin: 1.5em 5px !important\">https://github.com/lcodecorex/TwinklingRefreshLayout</p></blockquote><h4 style=\"margin: 20px 0px 10px; padding: 0px; color: rgb(0, 150, 136) !important;\">三、 <strong><span style=\"font-size: 14px;\">StickerCamera-android一款集成了相机,图片裁剪,给图片贴贴图打标签的APP</span></strong></h4><blockquote style=\"margin: 10px 5px; border-left: 2px solid #009688; padding: 0px 10px; color: #777777; quotes: none; margin-left: 1em\"><p style=\"margin: 1.5em 5px !important\">项目地址</p><p style=\"margin: 1.5em 5px !important\">https://github.com/Skykai521/StickerCamera</p></blockquote><h4 style=\"margin: 20px 0px 10px; padding: 0px; color: rgb(0, 150, 136) !important;\">四、 <strong><span style=\"font-size: 14px;\">一个Android自定义图片视图, 专为图片画廊设计</span></strong></h4><blockquote style=\"margin: 10px 5px; border-left: 2px solid #009688; padding: 0px 10px; color: #777777; quotes: none; margin-left: 1em\"><p style=\"margin: 1.5em 5px !important\">项目地址</p><p style=\"margin: 1.5em 5px !important\">https://github.com/davemorrissey/subsampling-scale-image-view</p></blockquote><h4 style=\"margin: 20px 0px 10px; padding: 0px; color: rgb(0, 150, 136) !important;\">五、<strong><span style=\"font-size: 14px;\">AndroidFire-一款新闻阅读App框架基于Material Desig</span></strong></h4><blockquote style=\"margin: 10px 5px; border-left: 2px solid #009688; padding: 0px 10px; color: #777777; quotes: none; margin-left: 1em\"><p style=\"margin: 1.5em 5px !important\">项目地址</p><p style=\"margin: 1.5em 5px !important\">https://github.com/jaydenxiao2016/AndroidFire</p></blockquote><h4 style=\"margin: 20px 0px 10px; padding: 0px; color: rgb(0, 150, 136) !important;\">六、<strong><span style=\"font-size: 14px;\">ViewPagerCards-android ViewPagerCards卡片切换效果源码</span></strong></h4><blockquote style=\"margin: 10px 5px; border-left: 2px solid #009688; padding: 0px 10px; color: #777777; quotes: none; margin-left: 1em\"><p style=\"margin: 1.5em 5px !important\">项目地址</p><p style=\"margin: 1.5em 5px !important\">https://github.com/rubensousa/ViewPagerCards</p></blockquote><h4 style=\"margin: 20px 0px 10px; padding: 0px; color: rgb(0, 150, 136) !important;\">七、 <strong><span style=\"font-size: 14px;\">Douya-Material Design 的豆芽客户端完整源码</span></strong></h4><blockquote style=\"margin: 10px 5px; border-left: 2px solid #009688; padding: 0px 10px; color: #777777; quotes: none; margin-left: 1em\"><p style=\"margin: 1.5em 5px !important\">项目地址</p><p style=\"margin: 1.5em 5px !important\">https://github.com/DreaminginCodeZH/Douya</p></blockquote><h4 style=\"margin: 20px 0px 10px; padding: 0px; color: rgb(0, 150, 136) !important;\">八、<strong><span style=\"font-size: 14px;\">高仿微信的一个开源项目</span></strong></h4><blockquote style=\"margin: 10px 5px; border-left: 2px solid #009688; padding: 0px 10px; color: #777777; quotes: none; margin-left: 1em\"><p style=\"margin: 1.5em 5px !important\"><span style=\"font-size: 14px;\">项目地址</span></p><p style=\"margin: 1.5em 5px !important\">https://github.com/motianhuo/wechat/tree/wechat2.0</p></blockquote><h4 style=\"margin: 20px 0px 10px; padding: 0px; color: rgb(0, 150, 136) !important;\">九、<strong><span style=\"font-size: 14px;\">RestAPP-android网易云音乐界面源码，可用于毕业答辩</span></strong></h4><blockquote style=\"margin: 10px 5px; border-left: 2px solid #009688; padding: 0px 10px; color: #777777; quotes: none; margin-left: 1em\"><p style=\"margin: 1.5em 5px !important\">项目地址</p><p style=\"margin: 1.5em 5px !important\">https://github.com/sakurajiang/RestAPP</p></blockquote><h4 style=\"margin: 20px 0px 10px; padding: 0px; color: rgb(0, 150, 136) !important;\">10、<strong><span style=\"font-size: 14px;\">在基于七牛加载图片库，让加载图片更有效、更节流、更简单、更可控、更酷</span></strong></h4><blockquote style=\"margin: 10px 5px; border-left: 2px solid #009688; padding: 0px 10px; color: #777777; quotes: none; margin-left: 1em\"><p style=\"margin: 1.5em 5px !important\"><span style=\"font-size: 14px;\">项目地址</span></p><p style=\"margin: 1.5em 5px !important\">https://github.com/lingochamp/QiniuImageLoader</p></blockquote><h4 style=\"margin: 20px 0px 10px; padding: 0px; color: rgb(0, 150, 136) !important;\">11、<strong><span style=\"font-size: 14px;\">Android 5.0+ 屏幕录制</span></strong></h4><blockquote style=\"margin: 10px 5px; border-left: 2px solid #009688; padding: 0px 10px; color: #777777; quotes: none; margin-left: 1em\"><p style=\"margin: 1.5em 5px !important\">项目地址</p><p style=\"margin: 1.5em 5px !important\">https://github.com/GLGJing/ScreenRecorder</p></blockquote><h4 style=\"margin: 20px 0px 10px; padding: 0px; color: rgb(0, 150, 136) !important;\">12、<strong><span style=\"font-size: 14px;\">Novate—基于Retrofit和RxJava打造的链式网络库, 支持okhttp的调用风格</span></strong></h4><blockquote style=\"margin: 10px 5px; border-left: 2px solid #009688; padding: 0px 10px; color: #777777; quotes: none; margin-left: 1em\"><p style=\"margin: 1.5em 5px !important\">项目地址</p><p style=\"margin: 1.5em 5px !important\">https://github.com/Tamicer/Novate</p></blockquote><h4 style=\"margin: 20px 0px 10px; padding: 0px; color: rgb(0, 150, 136) !important;\">13、<strong><span style=\"font-size: 14px;\">一行代码完成Android 7 FileProvider适配</span></strong></h4><blockquote style=\"margin: 10px 5px; border-left: 2px solid #009688; padding: 0px 10px; color: #777777; quotes: none; margin-left: 1em\"><p style=\"margin: 1.5em 5px !important\"><span style=\"font-size: 14px;\">项目地址</span></p><p style=\"margin: 1.5em 5px !important\">https://github.com/hongyangAndroid/FitAndroid7</p></blockquote><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>								</p>', '2017-12-26', '转载', '11', '3');
INSERT INTO `zq_datalist` VALUES ('2', 'JavaScript返回上一页的几种方法及区别介绍', 'http://igeekbar.com/igeekbar/networks/uploadimgthumb/d164fbf4-23c8-4c71-a11d-7b77948c613b.jpg', ' JavaScript返回上一页的几种方法及区别介绍\r\n\r\nwindow.history.go(-1);  //返回上一页\r\n JavaScript返回上一页的几种方法及区别介绍 window.history.go(-1); //返回上一页 window.history.back(); //返回上一页 //如果要强行刷新的话就是：window.history.back();location.reload(); window ', 'http://igeekbar.com/igeekbar/networks/uploadimgthumb/d164fbf4-23c8-4c71-a11d-7b77948c613b.jpg', '<p>									</p><p>&nbsp;JavaScript返回上一页的几种方法及区别介绍</p><pre class=\"brush:js;toolbar:false\">&nbsp;window.history.go(-1);&nbsp;//返回上一页\r\n&nbsp;window.history.back();&nbsp;&nbsp;//返回上一页\r\n&nbsp;//如果要强行刷新的话就是：\r\n&nbsp;window.history.back();\r\n&nbsp;location.reload();\r\n&nbsp;window.location.go(-1);&nbsp;//刷新上一页</pre><p></p><p>这篇文章主要介绍了JavaScript返回上一页的三种方法及区别介绍,本文直接给出示例代码,需要的朋友可以参考下								</p>', '2017-12-15', '切切歆语', '11', '2');
INSERT INTO `zq_datalist` VALUES ('3', 'PHP处理Ajax请求与Ajax跨域', 'http://igeekbar.com/igeekbar/networks/uploadimgthumb/d164fbf4-23c8-4c71-a11d-7b77948c613b.jpg', 'PHP判断是否为Ajax请求 我们知道，在发送ajax请求的时候，可以通过XMLHttpRequest这个对象，创建自定义的header头信息， 在jquery框架中，对于通过它的$.ajax, $.get, 或者$.post方法请求网页内容时，它会向服务器传递一个HTTP_X_REQUESTED_', 'http://igeekbar.com/igeekbar/networks/uploadimgthumb/d164fbf4-23c8-4c71-a11d-7b77948c613b.jpg', '<p>									</p><p></p><p>PHP判断是否为Ajax请求</p><p>我们知道，在发送ajax请求的时候，可以通过XMLHttpRequest这个对象，创建自定义的header头信息， \r\n在jquery框架中，对于通过它的$.ajax, $.get, \r\n或者$.post方法请求网页内容时，它会向服务器传递一个HTTP_X_REQUESTED_WITH的参数，php中就是在header一层判断是否是ajax请求，对应的根据$_SERVER[&#39;HTTP_X_REQUESTED_WITH&#39;]判断。一般情况下$_SERVER[&#39;HTTP_X_REQUESTED_WITH&#39;]默认是XMLHttpRequest，$_SERVER[&#39;HTTP_X_REQUESTED_WITH&#39;]也可以自定义创建的，使用XMLHttpRequest.setRequestHeader(name,value)。</p><p>示例：前端页面发送普通的ajax请求给后端test.php。</p><p><span class=\"cnblogs_code_copy\"><img src=\"/ueditor/php/upload/image/20180102/1514862996128488.gif\" alt=\"复制代码\"/></span></p><pre>$.ajax({\r\n&nbsp;&nbsp;&nbsp;&nbsp;type:&nbsp;&quot;GET&quot;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;url:&nbsp;&#39;test.php&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;success:&nbsp;function(data)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(data);\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n});</pre><p><span class=\"cnblogs_code_copy\"><img src=\"/ueditor/php/upload/image/20180102/1514862996128488.gif\" alt=\"复制代码\"/></span></p><p>服务端test.php可以判断该请求是不是Ajax异步请求，然后根据业务需求做出响应的回应。</p><p>以下是服务端test.php的简单验证是否为ajax请求的代码：</p><p><span class=\"cnblogs_code_copy\"><img src=\"/ueditor/php/upload/image/20180102/1514862996128488.gif\" alt=\"复制代码\"/></span></p><pre>function&nbsp;isAjax()&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;@$_SERVER[&#39;HTTP_X_REQUESTED_WITH&#39;]&nbsp;==&nbsp;&#39;XMLHttpRequest&#39;&nbsp;?&nbsp;true&nbsp;:&nbsp;false;\r\n}if&nbsp;(isAjax())&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;Ajax&nbsp;Request&nbsp;Success.&#39;;\r\n}&nbsp;else&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;No.&#39;;\r\n}</pre><p><span class=\"cnblogs_code_copy\"><img src=\"/ueditor/php/upload/image/20180102/1514862996128488.gif\" alt=\"复制代码\"/></span></p><p>Ajax发起JSONP跨域请求</p><p>我们通过jQuery的JSONP方式可以实现跨域ajax请求，服务端php也需要做出相应的处理，也就是说php这边必须和前端页面按照一定的格式请求和返回数据。</p><p>示例：前端页面发起JSONP请求：</p><p><span class=\"cnblogs_code_copy\"><img src=\"/ueditor/php/upload/image/20180102/1514862996128488.gif\" alt=\"复制代码\"/></span></p><pre>$.ajax({\r\n&nbsp;&nbsp;&nbsp;&nbsp;type:&nbsp;&quot;get&quot;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;data:&nbsp;&quot;random=&quot;+Math.random(),\r\n&nbsp;&nbsp;&nbsp;&nbsp;url:&nbsp;&quot;http://demo.helloweba.net/phpajax/jsonp.php&quot;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;dataType:&nbsp;&quot;jsonp&quot;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;jsonp:&nbsp;&quot;callback&quot;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;success:&nbsp;function(data)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(data);\r\n&nbsp;&nbsp;&nbsp;&nbsp;},\r\n&nbsp;&nbsp;&nbsp;&nbsp;error:&nbsp;function()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(&#39;Request&nbsp;Error.&#39;);\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n});</pre><p><span class=\"cnblogs_code_copy\"><img src=\"/ueditor/php/upload/image/20180102/1514862996128488.gif\" alt=\"复制代码\"/></span></p><p>我们会发现，ajax请求参数中有 dataType: &quot;jsonp&quot; 和 jsonp: &quot;callback&quot; \r\n，这个就表明了我要请求的是jsonp，并且会有回调callback返回。当然，我们也可以自定义回调函数，如 \r\njsonpCallback:&quot;success_jsonpCallback&quot;</p><p>还可以简单的写成：</p><pre>jQuery.getJSON(&#39;http://demo.helloweba.net/phpajax/jsonp.php?callback=?&quot;,{\r\n&nbsp;&nbsp;random:&nbsp;Math.random()\r\n},&nbsp;function(data){\r\n&nbsp;&nbsp;console.log(data);\r\n});</pre><p>php后端服务代码可以这样写（注意输出返回的格式）：</p><pre>$data&nbsp;=&nbsp;array(\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;rand&#39;&nbsp;=&gt;&nbsp;$_GET[&#39;random&#39;],\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;msg&#39;&nbsp;=&gt;&nbsp;&#39;Success&#39;\r\n);\r\necho&nbsp;$_GET[&#39;callback&#39;].&#39;(&#39;.json_encode($data).&#39;)&#39;;</pre><p>&nbsp;</p><p>Ajax跨域请求：CORS</p><p>CORS，又称跨域资源共享，英文全称Cross-Origin Resource \r\nSharing。假设我们想使用Ajax从a.com的页面上向b.com的页面上要点数据，通常情况由于同源策略，这种请求是不允许的，浏览器也会返回“源不匹配”的错误，所以就有了“跨域”这个说法。但是我们也有解决办法，我们可以再b.com的页面header信息中增加一行代码：</p><pre>header(&quot;Access-Control-Allow-Origin:&nbsp;*&quot;);</pre><p>&nbsp;</p><p>当我们设置的header为以上信息时，任意一个请求过来之后服务端我们都可以进行处理和响应，那么在调试工具中可以看到其头信息设置，其中见红框中有一项信息是“*Access-Control-Allow-Origin：*\r\n ”，表示我们已经启用CORS，如果要限制只允许某个域名的请求，可以这样：</p><pre>header(&quot;Access-Control-Allow-Origin:&nbsp;http://www.helloweba.com&quot;);</pre><p>&nbsp;</p><p>示例：通过CORS跨域请求数据</p><p><span class=\"cnblogs_code_copy\"><img src=\"/ueditor/php/upload/image/20180102/1514862996128488.gif\" alt=\"复制代码\"/></span></p><pre>$.ajax({\r\n&nbsp;&nbsp;&nbsp;&nbsp;type:&nbsp;&quot;get&quot;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;data:&nbsp;&quot;random=&quot;+Math.random(),\r\n&nbsp;&nbsp;&nbsp;&nbsp;url:&nbsp;&quot;http://demo.helloweba.net/phpajax/ajax.php&quot;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;dataType:&nbsp;&quot;json&quot;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;success:&nbsp;function(data)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(data);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&quot;#result_3&quot;).html(data.msg+&#39;:&#39;+data.rand);\r\n&nbsp;&nbsp;&nbsp;&nbsp;},\r\n&nbsp;&nbsp;&nbsp;&nbsp;error:&nbsp;function()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&quot;#result_3&quot;).html(&#39;Request&nbsp;Error.&#39;);\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n});</pre><p><span class=\"cnblogs_code_copy\"><img src=\"/ueditor/php/upload/image/20180102/1514862996128488.gif\" alt=\"复制代码\"/></span></p><p>我们在另一个网站域名下的ajax.php加上这样的代码：</p><p><span class=\"cnblogs_code_copy\"><img src=\"/ueditor/php/upload/image/20180102/1514862996128488.gif\" alt=\"复制代码\"/></span></p><pre>header(&quot;Access-Control-Allow-Origin:&nbsp;http://www.helloweba.com&quot;);$data&nbsp;=&nbsp;array(\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;rand&#39;&nbsp;=&gt;&nbsp;$_GET[&#39;random&#39;],\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;msg&#39;&nbsp;=&gt;&nbsp;&#39;Success&#39;\r\n);echo&nbsp;json_encode($data);</pre><p><span class=\"cnblogs_code_copy\"><img src=\"/ueditor/php/upload/image/20180102/1514862996128488.gif\" alt=\"复制代码\"/></span></p><p>这就实现了从www.helloweba.com页面发起跨域异步请求到域名路径demo.helloweba.net/phpajax/ajax.php，并得到响应。</p><p>好了，以上是关于PHP处理ajax以及跨域的相关内容，大家可以下载源代码以及参照demo中的在线演示体验下效果。Helloweba.com感谢您的关注。</p><p>&nbsp;</p><p>来自：http://www.helloweba.com/view-blog-408.html</p><p><br/></p><p>								</p>', '2017-12-18', '张切', '12', '4');
INSERT INTO `zq_datalist` VALUES ('4', '切切歆语', 'http://igeekbar.com/igeekbar/networks/uploadimgthumb/d164fbf4-23c8-4c71-a11d-7b77948c613b.jpg', '摘要', 'http://igeekbar.com/igeekbar/networks/uploadimgthumb/d164fbf4-23c8-4c71-a11d-7b77948c613b.jpg', '<p>									</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); text-align: center;\"><span style=\"font-size: 16px;\">相思无用，唯别而已。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); text-align: center;\"><span style=\"font-size: 16px;\">别期若有定，千般煎熬有何如。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); text-align: center;\"><span style=\"font-size: 16px;\">莫道黯然销魂，何处柳暗花明。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: \"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); text-align: center;\"><span style=\"font-size: 16px;\">疏影阑珊悦兀歆，凝眸幽雨几红尘。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); text-align: center;\"><span style=\"font-size: 16px;\">切切心语倾戎笙，痴情有梦最相思。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62);\"><span style=\"font-size: 16px;\"><br/></span></p><p style=\"text-align:center\"><img class=\"\" src=\"http://mmbiz.qpic.cn/mmbiz_jpg/N0DPfhFaL809UtU1UpjYrE5mVGTTsticNohl2VaQPV50nkW74sZa0AnbqmDT4xicT8bOkWmBYouuGS0JI8zzJsNw/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: \">&nbsp;<span style=\"margin: 0px; padding: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 27px; box-sizing: border-box !important; word-wrap: break-word !important;\"></span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); text-align: left;\"><span style=\"font-size: 16px;\">&nbsp; 无数次子夜梦回，思念跌落在千里烟波。多少尘缘如梦落飞花，多少离殇已千古凄凉。往事难忘，谁的相思渲染了忧伤的情怀；红尘旧梦，岁月的流光涟漪了满地的寂静；听风拂过似水流年，看时光的容颜暗换了青春的年轮；清风醉舞，多少痴心揉碎了暗夜的宁静；人生陌上，谁的烟火温暖了你寂寂的眼波，哪程风景又渲染了你淡淡的流年，浅夜，静思，凝眸，今夜月华如水，温柔的流泻，思绪也随清晖蔓延至远方，红尘婆娑，疏影摇曳，人生有念，岁月极美。</span><br/>　　<br/>　　<br/><span style=\"font-size: 16px;\">　　<br/>　　思念是入骨的，寂寞的，美好的。它如檐前的风铃，摇响了流年的心窗，又如一帘烟雨穿越了几世的红尘，幽幽而来，在想念的人心里盘旋，萦绕，绵绵不去；寂寞如一座空城，落寞了几世沉浮，可念依旧透过时光的窗口，与深情，与幽香与灵魂撞个满怀。相信人生中有些念，终会在最深的红尘遇见心里的美好，所以从来不奢望每一朵花都开到极致，只要有那么一朵，是你心里的念念不忘，岁月梗上的妖娆，就好。<br/>　　<br/>　　<br/>　　<br/>　　如若岁月是一首首入心的歌谣，红尘是一幕幕你来我往的离合，那么人生就是一场场在风生水起，亦或云烟静默里用心的修行，烟火里静悟喧嚣，尘缘里且行且惜，若你知我心，我懂你意，那么我想陪你穿过沧海桑田，岁月的小径走出一片春暖花开的风景，那里山水倾心，那里温暖倾城，多么好！<br/>　　<br/>　　<br/>　　<br/>　　时光的诗笺上，缘，终是一笺抒不尽的情，写不完的爱，前生的念，今世的情，和难忘的一卷蓦然回首。相信，记在心里的有花开的欣好，有草木的清香，有入心的遇见，无论时光怎样辗转，我都愿守着一场最深的红尘，与那个有缘的人来一次灵魂的重逢，隔着时光，寂静相爱，墨然喜欢。</span></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>								</p>', '2017-12-27', '张切', '222', '2');
INSERT INTO `zq_datalist` VALUES ('5', 'Android-----购物车（包含侧滑删除，商品筛选，商品增加和减少，价格计算，店铺分类等）', 'http://images2017.cnblogs.com/blog/1041439/201712/1041439-20171224162757162-1372463675.jpg', '电商项目中常常有购物车这个功能，做个很多项目了，都有不同的界面，选了一个来讲一下。 主要包含了 店铺分类，侧滑删除，商品筛选，增加和减少，价格计算等功能。 看看效果图： 重要代码： 这是我项目中用到的购物车，基本的功能都有了的。 有需要的小伙们，可以参考一下。 代码传送门', 'http://igeekbar.com/igeekbar/networks/uploadimgthumb/d164fbf4-23c8-4c71-a11d-7b77948c613b.jpg', '<p>									</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>电商项目中常常有购物车这个功能，做个很多项目了，都有不同的界面，选了一个来讲一下。</p><p>主要包含了 店铺分类，侧滑删除，商品筛选，增加和减少，价格计算等功能。</p><p>看看效果图：</p><p style=\"text-align: justify;\"><img src=\"/ueditor/php/upload/image/20171230/1514603952933961.jpg\" alt=\"\" width=\"300\" height=\"590\" title=\"\"/><img src=\"/ueditor/php/upload/image/20171230/1514603952490476.jpg\" width=\"300\" height=\"590\" title=\"\" alt=\"\"/> </p><p><br/></p><p>&nbsp;</p><p>重要代码：</p><p><span class=\"cnblogs_code_copy\"><img src=\"/ueditor/php/upload/image/20171230/1514603953121952.gif\" alt=\"复制代码\"/></span></p><pre>&nbsp;private&nbsp;void&nbsp;showExpandData(){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartExpandAdapter=new&nbsp;CartExpandAdapter(this,cartExpandablelistview,cartInfo.getData());\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartExpandablelistview.setAdapter(cartExpandAdapter);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;intgroupCount&nbsp;=&nbsp;cartExpandablelistview.getCount();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for&nbsp;(int&nbsp;i=0;&nbsp;i&lt;intgroupCount;&nbsp;i++)\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartExpandablelistview.expandGroup(i);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/**\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;全选&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartExpandAdapter.setOnItemClickListener(new&nbsp;OnViewItemClickListener()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Override&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;onItemClick(boolean&nbsp;isFlang,&nbsp;View&nbsp;view,&nbsp;int&nbsp;position)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartInfo.getData().get(position).setIscheck(isFlang);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;length=cartInfo.getData().get(position).getItems().size();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for&nbsp;(int&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;length;&nbsp;i++)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartInfo.getData().get(position).getItems().get(i).setIscheck(isFlang);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartExpandAdapter.notifyDataSetChanged();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;showCommodityCalculation();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/**\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;单选&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartExpandAdapter.setOnClickListenterModel(new&nbsp;OnClickListenterModel()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Override&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;onItemClick(boolean&nbsp;isFlang,&nbsp;View&nbsp;view,int&nbsp;onePosition,&nbsp;int&nbsp;position)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartInfo.getData().get(onePosition).getItems().get(position).setIscheck(isFlang);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;length=cartInfo.getData().get(onePosition).getItems().size();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for&nbsp;(int&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;length&nbsp;;&nbsp;i++)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!&nbsp;cartInfo.getData().get(onePosition).getItems().get(i).ischeck()){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!isFlang){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartInfo.getData().get(onePosition).setIscheck(isFlang);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartExpandAdapter.notifyDataSetChanged();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;showCommodityCalculation();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(i==&nbsp;(&nbsp;length-1)){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartInfo.getData().get(onePosition).setIscheck(isFlang);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartExpandAdapter.notifyDataSetChanged();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;showCommodityCalculation();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartExpandAdapter.setOnClickDeleteListenter(new&nbsp;OnClickDeleteListenter()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Override&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;onItemClick(View&nbsp;view,&nbsp;int&nbsp;onePosition,&nbsp;int&nbsp;position)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Toast.makeText(MainActivity.this,&quot;删除操作&quot;,Toast.LENGTH_LONG).show();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/***\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;数量增加和减少&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartExpandAdapter.setOnClickAddCloseListenter(new&nbsp;OnClickAddCloseListenter()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Override&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;void&nbsp;onItemClick(View&nbsp;view,&nbsp;int&nbsp;index,&nbsp;int&nbsp;onePosition,&nbsp;int&nbsp;position,int&nbsp;num)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(index==1){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(num&gt;1)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartInfo.getData().get(onePosition).getItems().get(position).setNum((num&nbsp;-&nbsp;1));\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartExpandAdapter.notifyDataSetChanged();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartInfo.getData().get(onePosition).getItems().get(position).setNum((num&nbsp;+&nbsp;1));\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cartExpandAdapter.notifyDataSetChanged();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;showCommodityCalculation();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p><span class=\"cnblogs_code_copy\"><img src=\"/ueditor/php/upload/image/20171230/1514603953121952.gif\" alt=\"复制代码\"/></span></p><p>&nbsp;</p><p>这是我项目中用到的购物车，基本的功能都有了的。</p><p>有需要的小伙们，可以参考一下。</p><h3>&nbsp;</h3><h3><a href=\"https://github.com/DickyQie/android-shoppingcart\" target=\"_blank\">代码传送门</a></h3><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>								</p>', '2017-12-18', '切切歆语', '36', '3');
INSERT INTO `zq_datalist` VALUES ('6', '分享6款优秀的 AR/VR 开源库', 'http://igeekbar.com/igeekbar/networks/uploadimgthumb/d164fbf4-23c8-4c71-a11d-7b77948c613b.jpg', '今天，为大家推荐几款优秀的 AR/VR 开源库，希望能对大家有所帮助~ 1、AR.js AR.js 是一款应用于 Web 的高效增强现实（AR）库，基于 three.js + jsartoolkit5，无需安装。它适用于任何带有 webgl 和 webrtc 的手机，且运行速度非常快，在手机上也能高', null, '<p>今天，为大家推荐几款优秀的 AR/VR 开源库，希望能对大家有所帮助~</p><p><br/><img class=\"img-responsive center-block\" src=\"/ueditor/php/upload/image/20180102/1514875954246141.jpg\" alt=\"\"/></p><p><br/></p><hr/><h2><a href=\"https://www.oschina.net/p/ar-js\" target=\"_blank\">1、AR.js</a></h2><p>AR.js 是一款应用于 Web 的高效增强现实（AR）库，基于 three.js + \r\njsartoolkit5，无需安装。它适用于任何带有 webgl 和 webrtc 的手机，且运行速度非常快，在手机上也能高效运行，包括 \r\nAndroid、IOS 和 Windows phone 。</p><p><img class=\"img-responsive center-block\" src=\"https://dn-sdkcnssl.qbox.me/editor/0qDHRcBrmf6ZFX4kSkJX.jpg\" alt=\"\"/></p><h3>&nbsp;</h3><h2><a href=\"https://github.com/google/lullaby\" target=\"_blank\">2、Lullaby</a></h2><p>Lullaby 是&nbsp;Google 为 AR/VR 开发而推出的高性能 C++ 开源库，支持完整的 3D VR \r\n环境，包括几何世界、全景图像和空间音频。它可实现高效的 runtime 性能，是由数据驱动的开发工具，可进行快速迭代。基于 Java API \r\n，可与现有的安卓应用集成，支持 Cardboard/Daydream 头显、DaydreamVR 控制器和 VR 键盘，适用于 \r\nAndroid、iOS、Linux 和 Windows 平台。<img class=\"img-responsive center-block\" src=\"/ueditor/php/upload/image/20180102/1514875957276522.gif\" alt=\"\"/></p><p>&nbsp;</p><h3>&nbsp;</h3><h2><a href=\"https://www.oschina.net/p/a-frame\" target=\"_blank\">3、A-Frame</a></h2><p>A-Frame 是 Mozilla 开源的网页虚拟现实体验（ WebVR ）框架，旨在让创建 WebVR 体验变得更简单。它可在移动、桌面、Vive 和 Rift 在内的平台上运行，跨平台处理 3D 和 WebVR 模板。</p><p>A-Frame 被设计成 Web 开发者很熟悉的模样，HTML 代码易于阅读和复制粘贴。</p><p><img class=\"img-responsive center-block\" src=\"https://sdk.cn/news/images/image.png\" alt=\"\"/></p><p><img class=\"img-responsive center-block\" src=\"http://7xkvof.com1.z0.glb.clouddn.com/113744_HvWZ_2896879.gif\" alt=\"Image\"/></p><p>&nbsp;</p><h2>4、<a href=\"https://github.com/exyte/ARTetris\" target=\"_blank\">ARTetris</a></h2><p>ARTetris 是一款用 ARKit/SceneKit 实现的 iOS 增强现实版俄罗斯方块游戏，和目前 iOS 11 的 App Store 里的 AR 游戏一样，要求具有 A9 及以上的芯片的设备。开始游戏之前，需找到水平面，如地板、桌面等。</p><p><img class=\"img-responsive center-block\" src=\"https://dn-sdkcnssl.qbox.me/editor/8G7RqtzbH1axo6oEKcXI.png\" alt=\"未命名1508314413.png\"/></p><p>&nbsp;</p><h2><a href=\"https://www.oschina.net/p/react-vr\" target=\"_blank\">5、React VR</a></h2><p>React VR 是 Facebook 开源的一款用于构建在 Web 浏览器中运行的 VR 应用的框架，使用与 React \r\n相同的设计，让您通过声明式的组件构建丰富的 VR 世界和 UI。它将现代&nbsp;API（例如 WebGL 和 WebVR）与 React \r\n的声明能力结合起来，通过各种设备提供适用于消费者的体验。</p><p><img class=\"img-responsive center-block\" src=\"https://dn-sdkcnssl.qbox.me/editor/aCbo3aId4Dn-7TqNpGSv.png\" alt=\"\"/></p><h3>&nbsp;</h3><h3><a href=\"https://www.oschina.net/p/ideaspace\" target=\"_blank\">6、IdeaSpace</a></h3><p>IdeaSpace 是一款用于虚拟现实网页的 CMS 内容管理系统。可以像管理博客一样管理你的虚拟现实空间和资源。IdeaSpace \r\n使用前面提到的&nbsp;A-Frame&nbsp;来实现主题和空间，提供强大的遵循 Web 标准的标识语言。可通过 Oculus Rift 或者 Google \r\nCardboard 在浏览器上方便体验虚拟现实空间，无需安装插件和应用。</p><p><img class=\"img-responsive center-block\" src=\"https://dn-sdkcnssl.qbox.me/editor/VBYc8je5Hrurv0MOmlP7.png\" alt=\"\"/></p><p>&nbsp;</p><hr/><p>&nbsp;</p><p>好啦，今天的分享就是这些啦，希望可以给各位geek小伙伴们带来帮助呦~~~</p><p><br/></p>', '2018-01-02', '转载', null, '3');
INSERT INTO `zq_datalist` VALUES ('7', '黄飞鸿', 'http://www.henkuai.com/uc_server/avatar.php?uid=124138&amp;size=middle', 'asdsad', null, '<p><img width=\"530\" height=\"340\" src=\"http://api.map.baidu.com/staticimage?center=116.404,39.915&zoom=10&width=530&height=340&markers=116.404,39.915\"/></p>', '2018-01-19', '张切', null, '3');

-- ----------------------------
-- Table structure for `zq_information`
-- ----------------------------
DROP TABLE IF EXISTS `zq_information`;
CREATE TABLE `zq_information` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `resume_id` int(2) NOT NULL,
  `url` varchar(300) NOT NULL,
  `content` mediumtext NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_information
-- ----------------------------

-- ----------------------------
-- Table structure for `zq_message`
-- ----------------------------
DROP TABLE IF EXISTS `zq_message`;
CREATE TABLE `zq_message` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_message
-- ----------------------------
INSERT INTO `zq_message` VALUES ('1', '张切', 'zhangqiem@126.com', '我是测试的消息我是测试的消息我是测试的消息我是测试的消息');
INSERT INTO `zq_message` VALUES ('2', 'zhangqie', 'zhangqiem@126.com', '加油，棒棒的。');

-- ----------------------------
-- Table structure for `zq_mi_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `zq_mi_admin_user`;
CREATE TABLE `zq_mi_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) DEFAULT '0',
  `last_login` int(11) DEFAULT '0',
  `last_ip` varchar(15) DEFAULT '',
  `action_list` text,
  `nav_list` text,
  `lang_type` varchar(50) DEFAULT '',
  `agency_id` smallint(5) unsigned DEFAULT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_mi_admin_user
-- ----------------------------
INSERT INTO `zq_mi_admin_user` VALUES ('1', 'admin', 'admin@qq.com', 'a66abb5684c45962d887564f08346e8d', '1707', '1410873806', '1856081288', '0.0.0.0', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '0', '', '0');
INSERT INTO `zq_mi_admin_user` VALUES ('2', 'zhangqie', 'zhangqie@qq.com', '41073b7b9f785c22f0902966e73746b6', '1707', '1410873806', '1516081288', '', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '0', null, '0');
INSERT INTO `zq_mi_admin_user` VALUES ('3', 'zq', 'zhangqie@qq.com', '1e589489b523150b185e5d46dc2e69bc', null, '1516288765', '0', '', null, null, '', null, '0', null, null);

-- ----------------------------
-- Table structure for `zq_mi_color`
-- ----------------------------
DROP TABLE IF EXISTS `zq_mi_color`;
CREATE TABLE `zq_mi_color` (
  `cid` int(2) NOT NULL AUTO_INCREMENT COMMENT '颜色编号',
  `c_name` varchar(12) NOT NULL COMMENT '颜色名称',
  `c_value` varchar(12) NOT NULL COMMENT '颜色值',
  `user_id` int(3) NOT NULL COMMENT '上传者',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_mi_color
-- ----------------------------

-- ----------------------------
-- Table structure for `zq_mi_commodity_type`
-- ----------------------------
DROP TABLE IF EXISTS `zq_mi_commodity_type`;
CREATE TABLE `zq_mi_commodity_type` (
  `id` int(3) NOT NULL AUTO_INCREMENT COMMENT '产品类型',
  `type_name` varchar(66) NOT NULL COMMENT '类型名称',
  `admin_id` int(6) NOT NULL COMMENT '后台上传用户',
  `upload_time` date NOT NULL COMMENT '添加时间',
  `tempplate` mediumint(9) DEFAULT NULL COMMENT '类型介绍',
  `status` int(2) NOT NULL COMMENT '是否启动',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_mi_commodity_type
-- ----------------------------
INSERT INTO `zq_mi_commodity_type` VALUES ('1', '新品', '1', '2018-01-21', null, '1');
INSERT INTO `zq_mi_commodity_type` VALUES ('2', '手机', '2', '2018-01-21', null, '1');
INSERT INTO `zq_mi_commodity_type` VALUES ('3', '电视', '2', '2018-01-22', null, '1');
INSERT INTO `zq_mi_commodity_type` VALUES ('4', '电脑', '2', '2018-01-22', null, '1');
INSERT INTO `zq_mi_commodity_type` VALUES ('5', '家电', '2', '2018-01-22', null, '1');
INSERT INTO `zq_mi_commodity_type` VALUES ('6', '电源', '2', '2018-01-22', null, '1');

-- ----------------------------
-- Table structure for `zq_mi_edition`
-- ----------------------------
DROP TABLE IF EXISTS `zq_mi_edition`;
CREATE TABLE `zq_mi_edition` (
  `id` int(2) NOT NULL AUTO_INCREMENT COMMENT '版本编号',
  `edition_name` varchar(96) NOT NULL COMMENT '版本名称',
  `edition_desc` mediumtext COMMENT '版本描述',
  `user_id` int(3) NOT NULL COMMENT '上传者',
  `type_id` int(3) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_mi_edition
-- ----------------------------
INSERT INTO `zq_mi_edition` VALUES ('1', '6G+64GB', '手机的版本', '2', '2');
INSERT INTO `zq_mi_edition` VALUES ('2', '6G+128GB', '', '2', '2');
INSERT INTO `zq_mi_edition` VALUES ('3', '4G+32GB', '', '2', '2');
INSERT INTO `zq_mi_edition` VALUES ('5', '4G+64GB', '', '2', '2');

-- ----------------------------
-- Table structure for `zq_mi_list_goods`
-- ----------------------------
DROP TABLE IF EXISTS `zq_mi_list_goods`;
CREATE TABLE `zq_mi_list_goods` (
  `goods_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `goods_sn` varchar(30) NOT NULL COMMENT '货号',
  `goods_name` varchar(60) NOT NULL COMMENT '商品名称',
  `goods_price` float(12,2) NOT NULL COMMENT '商品价格',
  `user_id` int(3) NOT NULL COMMENT '后台上传用户',
  `type_id` int(3) NOT NULL COMMENT '商品类型',
  `cid` int(2) DEFAULT NULL COMMENT '商品颜色',
  `edition_id` varchar(256) NOT NULL COMMENT '选择版本',
  `stock` int(6) NOT NULL COMMENT '库存',
  `sold` int(6) NOT NULL COMMENT '已售',
  `discount` int(2) NOT NULL COMMENT '折扣',
  `integral` int(6) NOT NULL COMMENT '购买得到积分',
  `upload_date` date NOT NULL COMMENT '上传日期',
  `goods_desc` mediumtext COMMENT '描述信息',
  `goods_image` mediumtext COMMENT '图片地址',
  `goods_thumb` mediumtext,
  `goods_recommend` int(1) NOT NULL COMMENT '是否推荐',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_mi_list_goods
-- ----------------------------
INSERT INTO `zq_mi_list_goods` VALUES ('1', 'ZQ000001', '小米6 变焦双摄', '2899.00', '2', '2', null, '2', '12', '1235', '10', '29', '2018-01-26', '变焦双摄，4 轴防抖 / 骁龙835 旗舰处理器，最高可选6GB 内存，最大可选128GB 闪存 / 5.15&quot; 护眼屏', '2018-01-26/5a6ae608edc06.jpg', null, '1');
INSERT INTO `zq_mi_list_goods` VALUES ('2', 'ZQ000002', '小米6', '2199.00', '2', '2', null, '5', '23', '123', '10', '22', '2018-01-26', '变焦双摄，4 轴防抖 / 骁龙835 旗舰处理器，最高可选6GB 内存，最大可选128GB 闪存 / 5.15&quot; 护眼屏', '2018-01-26/5a6aef6f406d5.jpg', null, '0');
INSERT INTO `zq_mi_list_goods` VALUES ('3', 'ZQ000003', '小米MIX 2 全面屏2.0', '3299.00', '2', '2', null, '2', '33', '2333', '10', '33', '2018-01-26', '全面屏2.0，5.99&quot;大屏 / 骁龙835旗舰处理器 / 4轴光学防抖 / 6模43频，全球频段。', '2018-01-26/5a6af92c7a3dc.jpg', null, '0');
INSERT INTO `zq_mi_list_goods` VALUES ('4', 'ZQ000004', '小米Note 3 人脸解锁', '1999.00', '2', '2', null, '1', '56', '5632', '10', '20', '2018-01-26', '1600万美颜自拍 / 2倍变焦双摄，四轴光学防抖 / 5.5&quot;护眼屏 / 超轻四曲面，7系铝金属边框。', '2018-01-26/5a6afa06a53b4.jpg', null, '0');
INSERT INTO `zq_mi_list_goods` VALUES ('5', 'ZQ000005', '小米5X 变焦双摄', '1299.00', '2', '2', null, '1,2', '123', '12', '10', '13', '2018-01-28', '光学变焦双摄，拍人更美 / 5.5&quot;大屏轻薄全金属 / 骁龙八核处理器 / 4GB大内存', '2018-01-28/5a6d448e53693.jpg', null, '0');

-- ----------------------------
-- Table structure for `zq_resume`
-- ----------------------------
DROP TABLE IF EXISTS `zq_resume`;
CREATE TABLE `zq_resume` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(6) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `school` varchar(120) NOT NULL,
  `major` varchar(120) NOT NULL,
  `itname` varchar(36) NOT NULL,
  `introduce` mediumtext NOT NULL,
  `motto` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_resume
-- ----------------------------

-- ----------------------------
-- Table structure for `zq_type`
-- ----------------------------
DROP TABLE IF EXISTS `zq_type`;
CREATE TABLE `zq_type` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `type` varchar(26) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_type
-- ----------------------------
INSERT INTO `zq_type` VALUES ('1', 'IT');
INSERT INTO `zq_type` VALUES ('2', '程序员');
INSERT INTO `zq_type` VALUES ('3', 'Android');
INSERT INTO `zq_type` VALUES ('4', 'PHP');
INSERT INTO `zq_type` VALUES ('5', 'HTMl');
INSERT INTO `zq_type` VALUES ('6', 'CSS');
INSERT INTO `zq_type` VALUES ('7', 'JS');
INSERT INTO `zq_type` VALUES ('8', 'SQL');
