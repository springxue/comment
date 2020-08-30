<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>评价</title>
		<link rel="stylesheet" href="/static/css/new_file.css" type="text/css"/>
		<script type="text/javascript" src="/static/js/jquery-1.8.2.min.js" ></script>
	</head>
	
	<body>
		<!--头部  star-->
		<header>
<#--			<a href="javascript:history.go(-1);">-->
<#--				<div class="_left"><img src="/static/images/left.png"></div>-->
				   评价
<#--			</a>-->
		<br>

		</header>

		<!--头部 end-->
        <!--内容 star-->

		<div class="contaniner" style="background-color: white;margin-top: 15%;padding: 0 5px" >
			&nbsp;&nbsp;请选择店铺：<select style="margin-top: 10px;margin-bottom: 10px">
				<option>朝阳大街店</option>
				<option>长城北大街店</option>
				<option>河北大学店</option>
			</select><br>
			&nbsp;&nbsp;请选择服务员：<select style="margin-top: 10px;margin-bottom: 10px">
				<option>白世辉</option>
				<option>薛振春</option>
				<option>是夏龙</option>
			</select>
		</div>
		<div class="contaniner fixed-cont" style="margin-top: 10px">

			<!--1-->
			<section class="assess">

				<p>
					<textarea rows="20" placeholder="请写下对我们服务员的评价，对我们帮助很大哦～～"></textarea>
				</p>
				<ul>
					<li>评价</li>
					<li class="assess-right">
						<div><input type="radio" name="radio" value="radio1"/><img src="/static/images/hua.png"/></div>
						<div><input type="radio" name="radio" value="radio2"/><img src="/static/images/huah.png"/></div>
						<div><input type="radio" name="radio" value="radio3"/><img src="/static/images/huae.png"/></div>
					</li>
				</ul>
			</section>
			<!--2-->
			<section class="main">
			<div class="main-wrap">
				<span class="revtit">综合评分:</span>
				<div id="mydiv1" currentIndex="0" class="mydiv">
	    			<ul class="star_ul">
				        <li num="1"><img src="/static/images/star_empty.png" class="xing_hui"/></li>
				        <li num="2"><img src="/static/images/star_empty.png"  class="xing_hui"/></li>
				        <li num="3"><img src="/static/images/star_empty.png"  class="xing_hui"/></li>
				        <li num="4"><img src="/static/images/star_empty.png"  class="xing_hui"/></li>
				        <li num="5"><img src="/static/images/star_empty.png"  class="xing_hui"/></li>
			   		</ul>
				</div>
			</div>
			
			<div class="main-wrap">
				<span class="revtit">基本素质:</span>
				<div id="mydiv2" currentIndex="0" class="mydiv">
	    			<ul class="star_ul">
				        <li num="1"><img src="/static/images/star_empty.png" class="xing_hui"/></li>
				        <li num="2"><img src="/static/images/star_empty.png"  class="xing_hui"/></li>
				        <li num="3"><img src="/static/images/star_empty.png"  class="xing_hui"/></li>
				        <li num="4"><img src="/static/images/star_empty.png"  class="xing_hui"/></li>
				        <li num="5"><img src="/static/images/star_empty.png"  class="xing_hui"/></li>
			   		</ul>
				</div>
			</div>
		
			<div class="main-wrap">
				<span class="revtit">仪容着装:</span>
				<div id="mydiv3" currentIndex="0" class="mydiv">
	    			<ul class="star_ul">
				        <li num="1"><img src="/static/images/star_empty.png" class="xing_hui"/></li>
				        <li num="2"><img src="/static/images/star_empty.png"  class="xing_hui"/></li>
				        <li num="3"><img src="/static/images/star_empty.png"  class="xing_hui"/></li>
				        <li num="4"><img src="/static/images/star_empty.png"  class="xing_hui"/></li>
				        <li num="5"><img src="/static/images/star_empty.png"  class="xing_hui"/></li>
			   		</ul>
				</div>
			</div>
	</section>
		</div>
		<!--内容 end-->
        
        <!--底部 star-->
		<footer class="assess-footer fixed-footer ">
			<ul>
				<li>
<#--					<input type="checkbox" id="ass" />-->
<#--					<label for="ass" onselectstart="return false">匿名评价</label>-->
				</li>
				<input type="button" value="发表评论" />
			</ul>
		</footer>
       <!--底部  end-->
		<script type="text/javascript">
				$(".assess-footer ul li label").on('touchstart',function(){
			if($(this).hasClass('assd')){
				$(".assess-footer ul li label").removeClass("assd")
			}else{
				$(".assess-footer ul li label").addClass("assd")
			};
		});
			
//匿名评价
        var isclick = false;
        function change(mydivid,num) {
            if (!isclick) {
                var tds = $("#"+mydivid+" ul li");
                for (var i = 0; i < num; i++) {
                    var td = tds[i];
                    $(td).find("img").attr("src","/static\/images\/star_full.png");
                }
                var tindex = $("#"+mydivid).attr("currentIndex");
                tindex = tindex==0?0:tindex+1;
                for (var j = num; j < tindex; j++) {
                    var td = tds[j];
                    $(td).find("img").attr("src","images\/star_empty.png");
                }
                $("#"+mydivid).attr("currentIndex",num);
            }
        }
        function repeal(mydivid,num) {
            if (!isclick) {
                var tds = $("#"+mydivid+" ul li");
                var tindex = $("#"+mydivid).attr("currentIndex");
                tindex = tindex==0?0:tindex+1;
                for (var i = tindex; i < num; i++) {
                    var td = tds[i];
                    $(td).find("img").attr("src","images\/star_empty.png");
                }
                $("#"+mydivid).attr("currentIndex",num);
            }
        }
        function change1(mydivid,num) {
            if (!isclick) {
                change(mydivid,num);

            }
            else {
                alert("Sorry,You had clicked me!");
            }
        }
        $(function(){
            initEvent('mydiv1');
            initEvent('mydiv2');
            initEvent('mydiv3');
        });
        function initEvent(mydivid) {
            var tds = $("#"+mydivid+" ul li");
            for (var i = 0; i < tds.length; i++) {
                var td = tds[i];
                $(td).live('mouseover',function(){var num = $(this).attr("num");change(mydivid,num);});
                $(td).live('click',function(){var num = $(this).attr("num");change1(mydivid,num);});
            }
        }

		</script>
	</body>

</html>