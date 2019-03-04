<%--
  Created by IntelliJ IDEA.
  User: 12714
  Date: 2019/2/20
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
    <p id ="p1">我等下就消失了</p>
    <button id="button1">消失</button>
    <button id="button2">出现</button>
    <button id="button3">消失或出现</button>
    <br>
    <p id ="p2">淡入淡出的效果</p>
    <button id="butto1">淡入</button>
    <button id="butto2">淡出</button>
    <button id="butto3">淡入淡出</button>
    <br>
    <button id="button4">方法连接</button>
    <br>
    <button id="b1">text()获取文本</button>
    <button id="b2">html()获取html</button>
    <button id="b3" value="wowo">val()获取值</button>
    <button id="b4" >attr()获取指定属性值</button>
    <br>
    <button id="bu1">text()改变文本</button>
    <button id="bu2">html()改变html</button>
    <button id="bu3" value="wowo">val()改变值</button>
    <button id="bu4" >attr()修改指定属性值</button>
</body>
<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js">
</script>
<script>
   $(function () {
      <%--Jquery效果--%>

       <%--隐藏和显示--%>

       $("#button1").click(function () {
           <%--这个时间如果没有，默认是0--%>
           $("#p1").hide(1000);
       });
       $("#button2").click(function () {
           $("#p1").show(1000);
       });
       $("#button3").click(function () {
           <%--可以取以下值："slow"、"fast" 或毫秒
           $(selector).toggle(speed,callback);
           也可以有回调函数，在执行完后，执行函数
           --%>
           $("#p1").toggle("slow");
       });

       <%--淡入淡出效果--%>
       $("#butto1").click(function () {
           <%--这个时间如果没有，默认是0--%>
           $("#p2").fadeIn(1000);
       });
       $("#butto2").click(function () {
           $("#p2").fadeOut(1000);
       });
       $("#butto3").click(function () {
           <%--可以取以下值："slow"、"fast" 或毫秒
           $(selector).toggle(speed,callback);
           也可以有回调函数，在执行完后，执行函数
           --%>
           $("#p2").fadeToggle("slow");
       });

       <%--Jquery中允许将多个方法连接在一起执行，但是这样会使得代码难看懂--%>
       $("#button4").click(function () {
           $("#p1").css("color","red").slideUp(2000).slideDown(2000);
       });

       <%--其他效果看文档，差不多--%>
       <%--获得内容 - text()、html() 以及 val()--%>
       $("#b1").click(function(){
           alert("Text: " + $(this).text());

       });
       $("#b2").click(function(){
           alert("HTML: " + $(this).html());
       });
       $("#b3").click(function(){
           alert("HTML: " + $(this).val());
       });
       $("#b4").click(function(){
           alert("id: " + $(this).attr("id"));
       });
       <%--修改内容 - text()、html() 以及 val()--%>
       $("#bu1").click(function(){
          $(this).text("修改text()");

       });
       $("#bu2").click(function(){
           $(this).html("<p>修改html</p>");
       });
       $("#bu3").click(function(){
           $(this).val("567");
       });
       $("#bu4").click(function(){
          $(this).attr("id","id5");
       });
   });
    <%--noConflict() 方法会释放对 $ 标识符的控制，这样其他脚本就可以使用它了--%>
   $.noConflict();
   jQuery(document).ready(function(){
       jQuery("button").click(function(){
           jQuery("p").text("jQuery is still working!");
       });
   });
</script>
</html>
