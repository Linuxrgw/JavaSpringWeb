<%--
  Created by IntelliJ IDEA.
  User: 任广伟
  Date: 2018/6/8 0008
  Time: 8:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户列表</title>
</head>
<body>



    <table>
    <tr>
        <td>
            <font size="10">企业员工管理平台</font>
        </td>
    </tr>

    <tr>
        <td height="10">
            <input type="button"style="width: 50px"
            value="注册" onclick="btnAdd('${pageContext.request.contextPath}/toRegister')">

        </td>
        <td height="10">
            <input type="button"style="width: 50px"
                   value="修改" onclick="btnEdit('${pageContext.request.contextPath}/toRegister')">

        </td>
        <td height="10">
            <input type="button"style="width: 50px"
                   value="删除" onclick="btnDelete('${pageContext.request.contextPath}/deleteUsers')">
        </td>
    </tr>
    <tr>
        <td>
            <form name="frm" method="post">
                <table width="100%" border="1">
                    <tr>
                        <td height="30">选择</td>
                        <td width="15%">姓名</td>
                        <td width="10%">性别</td>
                        <td width="10">邮箱</td>
                    </tr>
                    <tr>
                        <td height="20%"><input name="ids" value="1" type="checkbox"></td>
                        <td>张三</td>
                        <td>男</td>
                        <td>zhangsan@hbxy.cn</td>
                    </tr>
                    <tr>
                        <td><input name="ids" value="2" type="checkbox"></td>
                        <td>李四</td>
                        <td>女</td>
                        <td>lisi@hbxy.cn</td>
                    </tr>
                    <tr>
                        <td><input name="ids" value="3" type="checkbox"></td>
                        <td>王五</td>
                        <td>男</td>
                        <td>wangwu@hbxy.cn</td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
    </table>
    <script language="JavaScript">
        function btnAdd(url) {
            window.location.replace(url);

        }
        function btnEdit(url) {
            document.frm.action=url;
            document.frm.submit();

        }
        function btnDelete(url) {
            document.frm.action=url;
            document.frm.submit();

        }
    </script>
</body>
</html>
