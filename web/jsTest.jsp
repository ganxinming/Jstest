
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>JS测试</title>
  </head>
  <!-- 通过src引用外部js文件-->
  <script >
    //注释有两种
    /*
    注释有两种
     */

   function display() {
       //用来改变html文本
       document.getElementById("demo").innerHTML=Date();
   }
   //四大输出方式
    //输出一个元素，可以是html文本,如果不加位置，默认第一行
   document.write('<a href="http://www.baidu.com"> 百度</a>');
   //window.alert("123");
    //console.log(Date());这个只能通过浏览器F12查看
    //innerHTML;

    //改变内置属性，这里是颜色
   function changeColor() {
      element =document.getElementById("aa");
      element.style.color="#ff0000";
   }

   function writeLog() {

       console.log(Date());
   }
   //输出六大数据类型，JS是一种弱类型语言。JS拥有动态类型
   function wireNumberType() {
       //nubmer类型包括整数和浮点数和 NaN:非数字类型isNaN() 函数用于检查其参数是否是非数字值。
       //
       //isNaN(123)  //false   isNaN("hello")  //true
       var i=1;
       //String字符串类型
       var b="123";
       //boolean类型
       var c=isNaN(b);
       //Undefined类型 使用var声明了变量，但未给变量初始化值，那么这个变量的值就是undefined。
       var d;
       //null类型：null类型被看做空对象指针，前文说到null类型也是空的对象引用。
       var e=null;
      //对象类型Object，有两种方式
   /*    var person=new person();
       person.name="gan";
       */
      var person1={
        name : "xin",
       gender: "nan"
      };
      var name=person1.name;
      var gender=person1["gender"];
      //Array类型，属于object类型
       var array=new Array("redis","nosql");

      // var array=["null","undefined"];
      //function类型根据他的返回值决定类型
       function a() {
        return 5;
       }
       alert(typeof i +' '+ typeof b+' '+typeof c+' '+typeof d+' '+typeof e+' '+typeof person1+' '+typeof array+' '+typeof  a());
   }
    //传参函数
   function inputfunction(x,y) {
        if (x>y){
            alert(x);
        }
   }
    <%--几大类型转换--%>

    function transfer() {
        <%--将数字转换为字符串,String()是全局方法,toString()是其他所有类方法--%>
        var a=String(123);
        var b=(123).toString();
        <%--Number() 转换为数字， String() 转换为字符串， Boolean() 转化为布尔值。--%>
        var d=Number(b);
        var c=Boolean("false");
        alert(typeof  a+' '+typeof  b+' '+ typeof  d +' ' + typeof  c);
    }
    <%--测试异常--%>
    function testException() {
        try
        {
            var x=11;
            if(x=="")    throw "empty";
            if(isNaN(x)) throw "not a number";
            if(x>10)     throw "too high";
            if(x<5)      throw "too low";
        }
        catch(err)
        {
            <%--err异常名称,err.message 打印的是err异常信息--%>
           alert(err+err.message);

        }
        
        <%--表单验证--%>
        function validateForm()
        {
            var x=document.forms["myForm"]["fname"].value;
            if (x==null || x=="")
            {
                alert("First name must be filled out");
                return false;
            }
        }
    }
  </script>
  <body>
  我的第一个JS程序
  <p id="demo">时间</p>

  <button onclick="display()">显示当前</button>
  <button onclick="alert('弹出来吧')">弹框</button>

  <a href="#" onclick="changeColor()" id="aa">颜色改变了</a>

  <button onclick="writeLog()">打印到控制台</button>

  <button onclick="wireNumberType()">输出六大数据类型</button>

  <button onclick="inputfunction(1,2)">传参函数返回值</button>
  <!-- 各种事件-->
  <%--当内容改变时触发事件 --%>
  姓名:<input type="text" onchange="alert(this.value)">
  <%--当鼠标在元素上时--%>
  密码:<input type="password" onmouseover="alert('password')">
  <%--当鼠标离开时 --%>
  性别: <input type="radio" onmouseout="alert('男')" checked="true">男
  <%--当键盘按下时 --%>
  爱好: <input type="checkbox" onkeydown="alert('爱好')" checked="true">篮球
  <%--当页面加载时--%>
  邮箱:<input type="text" onload="alert('欢迎你')">
  <br>
  <button onclick="transfer()">类型转换</button>
  <br>
  <button onclick="testException()">测试异常</button>
  <br>
  <%--表单验证--%>
  <form name="myForm" action="#" onsubmit="return validateForm()" method="post">
    First name: <input type="text" name="fname">
    <input type="submit" value="Submit">
  </form>
  <br>
  <%-- void(0)作用:只会执行，没有返回值，当里面是0是时就可以取消这个链接 --%>
  <a href="javascript:void(alert('Warning!!!'))">点我!</a>
  <a href="javascript:void(0);">点我没有反应的!</a>
  <a href="#pos">点我定位到指定位置!</a>
  <br><br><br> <p id="pos">尾部定位点</p>
  </body>
</html>
