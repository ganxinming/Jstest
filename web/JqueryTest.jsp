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
    <p class="p">第一个Jquery</p>
    <button>点我消失</button>
    <a id="alaber">a标签</a>
    <p id="through">穿过触发</p>
    <p id="out">离开触发</p>
    <br>
    <p id="down">当鼠标指针移动到元素上方，并按下鼠标按键时</p>
    <p id ="up">当在元素上松开鼠标按钮时，会发生 mouseup 事件</p>
    <br>
    <p id="hover">模拟光标悬停事件</p>
    <br>
    email: <input type="text" name="email">
</body>
<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js">
</script>
<script>
    $(document).ready(function(){
        <%--使元素隐藏,hide()方法--%>
        $("button").click(function(){
           $("p").hide();
        });

    });

    <%--常用事件--%>
    <%--click事件--%>
    $(function () {
        <%--点击--%>
        $(".p").click(function () {
           alert("123");
        });
        <%--双击事件--%>
        $("#alaber").dblclick(function () {
            alert("321");
        });
        <%--鼠标在上面触发--%>
        $("#through").mouseenter(function () {
           alert("鼠标在上面触发");
        });
        <%--鼠标离开时触发--%>
        $("#out").mouseleave(function () {
            alert("鼠标离开触发");
        });
        <%--当鼠标指针移动到元素上方，并按下鼠标按键时--%>
        $("#down").mousedown(function () {
            alert("当鼠标指针移动到元素上方，并按下鼠标按键时");
        })
        <%--当在元素上松开鼠标按钮时，会发生 mouseup 事件--%>
        $("#up").mouseup(function () {
            alert("当在元素上松开鼠标按钮时，会发生 mouseup 事件");
        });
        <%--hover()方法用于模拟光标悬停事件。
当鼠标移动到元素上时，会触发指定的第一个函数(mouseenter);当鼠标移出这个元素时，会触发指定的第二个函数(mouseleave)。--%>
        $("#hover").hover(function(){
                alert("你进入了 hover!");
            },
            function(){
                alert("拜拜! 现在你离开了 hover!");
            });
        <%--当元素获得焦点时，发生 focus 事件。
当通过鼠标点击选中元素或通过 tab 键定位到元素时，该元素就会获得焦点。
当元素失去焦点时，发生 blur 事件。
blur() 方法触发 blur 事件，或规定当发生 blur 事件时运行的函数：--%>
        $("input").focus(function(){
            $(this).css("background-color","#cccccc");
        });
        $("input").blur(function(){
            $(this).css("background-color","#ffffff");
        });
    });
</script>
</html>
