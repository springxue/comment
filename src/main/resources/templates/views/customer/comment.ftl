<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>评价</title>
		<script type="text/javascript" src="/static/js/jquery-1.8.2.min.js" ></script>
		<style>
			.radio{
				margin: 10px 6px;
			}
			button{
				margin-left: 20%;
				margin-top: 50px;
				background-color: #1E9FFF;
				border: none;
				height: 30px;
				width: 80px;
				color: white
			}
		</style>
		<script>
			$(function () {
				$("#btn1").click(function () {
					$("#shop").hide();
					$("#waiter").show();
					return false;
				})
				$("#btn2").click(function () {
					$("#shop").hide();
					$("#waiter").hide();
					$("#question").show();
					return false;
				})
			})

		</script>
	</head>
	
	<body style="background-color: white;">
	<form action="/customer/comment/add" method="post">
		<div id="shop" style="margin-top: 50px;margin-left: 16%">
			<p style="margin: 0 auto;display: block;font-size: 25px;">请选择要评价的店面：</p>
			<br>
			<div style="margin-top: 20px;font-size: 20px;margin-left: 47px" >
				<input type="radio" class="radio" name="shop" value="1">保百店<br>
				<input type="radio" class="radio" name="shop" value="2">茂业店<br>
				<input type="radio" class="radio" name="shop" value="3">七一路店<br>
				<input type="radio" class="radio" name="shop" value="4">华创店<br>
				<input type="radio" class="radio" name="shop" value="5">万博店<br>
			</div>
			<button type="button" id="btn1">下一步</button>
		</div>

		<div id="waiter" style="margin-top: 50px;margin-left: 16%;display: none">
			<p style="margin: 0 auto;display: block;font-size: 25px;">请选择要评价的服务员：</p>
			<br>
			<div style="margin-top: 20px;font-size: 20px;margin-left: 47px" >
				<input type="radio" class="radio" name="waiter" value="1">服务员一<br>
				<input type="radio" class="radio" name="waiter" value="2">服务员二<br>
				<input type="radio" class="radio" name="waiter" value="3">服务员三<br>
				<input type="radio" class="radio" name="waiter" value="4">服务员四<br>
				<input type="radio" class="radio" name="waiter" value="5">服务员五<br>
			</div>
			<button type="button" id="btn2">下一步</button>
		</div>

		<div id="question" style="margin-top: 50px;margin-left: 16%;display: none">
			<p style="margin: 0 auto;display: block;font-size: 25px;">请选择进行评价：</p>
			<br>

				1、xxxxxxxxxxxxxxxx<br>
			<div style="margin-top: 20px;font-size: 20px;margin-left: 47px" >
				<input type="radio" class="radio" name="question1" value="1">满意<br>
				<input type="radio" class="radio" name="question1" value="2">一般<br>
				<input type="radio" class="radio" name="question1" value="3">不满意<br>
			</div>
				2、xxxxxxxxxxxxxxxx <br>
			<div style="margin-top: 20px;font-size: 20px;margin-left: 47px" >
				<input type="radio" class="radio" name="question2" value="1">满意<br>
				<input type="radio" class="radio" name="question2" value="2">一般<br>
				<input type="radio" class="radio" name="question2" value="3">不满意<br>
			</div>
				3、xxxxxxxxxxxxxxxx <br>
			<div style="margin-top: 20px;font-size: 20px;margin-left: 47px" >
				<input type="radio" class="radio" name="question3" value="1">满意<br>
				<input type="radio" class="radio" name="question3" value="2">一般<br>
				<input type="radio" class="radio" name="question3" value="3">不满意<br>
			</div>
			<button id="bt3">提交</button>
		</div>

	</form>

	</body>

</html>