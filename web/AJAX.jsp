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

<body>
    <form id="myform" action="">
        用户名<input type="text" name="username" id="username"/>
        密码<input type="password" name="password" id="password"/>

    </form>
       <button id="b1">Ajax()提交</button>
<p id="p1">正常</p>
<br>
<button id="b2">load()交互</button>
<p id="mytext">文本域</p>
<br>
<button id="b3">get()交互</button>
    <p id="mytext1">文本域1</p>
    <button id="b4">post()交互</button>
</body>
<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js">
</script>
<script>
   $(function () {

      $("#b1").click(function () {
          var username = $("#username").val();    // 获取id为username的<input>框数据
          var password = $("#password").val();
          <%--jQuery最底层的AJAX方法,有很多功能，如果不是特别需要这些功能，建议不用--%>
          $.ajax({
              url: "servlet/ServletJquery",    // 提交到controller的url路径
              type: "post",    // 提交方式
              data: $("#myform").serialize(),  // data为String类型,也可以写出JSON格式，后台都是通过request.getParamter()获得
              //表单序列化就是将参数变成pass="232"&name="123",序列化
            //  dataType: "json",    // 服务器端返回的数据类型
              cache:false,
              success:function(data){
                  $("#p1").html('after: ' + data);
              },
              async:true,//是否异步
              error : function(xhr) {
                  alert("错误提示： " + xhr.status + " " + xhr.statusText);
              }
          });

      }) ;

    $("#b2").click(function () {
        <%--load，从服务器加载数据，并把返回的数据放入被选元素中--%>
        $("#mytext").load("a.txt",function(responseTxt,statusTxt,xhr){
            if(statusTxt=="success")
                alert("External content loaded successfully!");
            if(statusTxt=="error")
                alert("Error: "+xhr.status+": "+xhr.statusText);
        });
    });

    <%--get()方式交互,从指定的资源请求数据,如果要交互数据，用post--%>
       $("#b3").click(function () {
          $.get("/servlet/ServletJquery",function (data,status) {
              alert("数据: " + data + "\n状态: " + status);
          });
       });
    <%--post请求。POST是为了提交数据到后台进行交互操作，是双方面的--%>
       $("#b4").click(function () {
           $.post("/servlet/ServletJquery",
               //最开始的我们是用表单序列化，这里我们就用普通JSON数据。
               {
                   username:"Donald Duck",
                   city:"Duckburg"
               },
               function (data,status) {
               alert("数据: " + data + "\n状态: " + status);
           });
       });
    <%--getJSON方式，返回的就直接是json格式的对象，无需JSON.parse的方法转换--%>
       $("#b4").click(function () {
           $.getJSON("/servlet/ServletJquery", {
               name:"我是谁",
               age:12
           }, function(json) {
               alert(json.name);
               $("#mydiv").html(json.name);
           });
       });

      <%--有两种将字符串转成JSON方法
      1. eval（）函数  ：不推荐，有隐患 会执行其他js操作
        2. JSON.parse（）函数 ：推荐：只执行对象转换操作
      --%>

   });

</script>
</html>
