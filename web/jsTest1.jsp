
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JS练习二</title>
</head>

<body>
    <button onclick="alert(a)">函数提升</button>
    <p id="demo">函数自调用</p>
    <br>
    <button onclick="haveagr(1,2,3,4)">获取函数参数</button>
    <br>
    <button onclick="showtime()">显示时间</button>
    <button onclick="shutDownTime()">关闭时间</button>
<br>

</body>

<script>
    <%--函数提升，JavaScript 默认将当前作用域提升到前面去的的行为,函数可以在声明之前调用--%>
    var a=hoist(2,4);
    function hoist(x,y) {
        return x*y;
    }
    <%--函数自调用，自己自动调用自己--%>
    (function () {
        document.getElementById("demo").innerHTML = "Hello! 我是自己调用的";
    })();

    <%--函数参数:JS它不会关注有多少个参数被传递，不关注传递的参数的数据类型。
    默认参数
    如果函数在调用时缺少参数，参数会默认设置为： undefined
    有时这是可以接受的，但是建议最好为参数设置一个默认值：
    y = y || 0;
    或者:
    function myFunction(x, y) {
    if (y === undefined) {
          y = 0;
    }
}

JavaScript 函数有个内置的对象 arguments 对象.

argument 对象包含了函数调用的参数数组。
    --%>
    function haveagr() {
        alert(arguments[3]);
    }
    <%--所有函数默认是window对象的--%>
    <%--计时事件,每隔一段时间输出
        setInterval() - 间隔指定的毫秒数不停地执行指定的代码。
        setTimeout() - 暂停指定的毫秒数后执行指定的代码
        clearInterval() 方法用于停止 setInterval() 方法执行的函数代码。
        clearTimeout() 方法用于停止执行setTimeout()方法的函数代码
    --%>
    function showtime() {
        <%--未用var的变量，是全局变量--%>
         time=setInterval(function(){alert(new Date())},3000);
    }
    function shutDownTime() {
        clearInterval(time);
    }
</script>
</html>
