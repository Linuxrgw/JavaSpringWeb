<%--
  Created by IntelliJ IDEA.
  User: 任广伟
  Date: 2018/6/7 0007
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>用户注册</title>
</head>
<body bgcolor="aqua">

<table width="800" border="0" align="center"
       cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <font size="10"><center>企业员工管理平台</center></font>
        </td>
    </tr>
    <tr>
        <td>
            <form name="frm" method="post">
                <table width="100%" border="1"
                       cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="30" colspan="2">
                            用户注册
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="right">
                            用户ID:
                        </td>
                        <td>
                            <input name="id" type="text" size="10">
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            姓名:
                        </td>
                        <td>
                            <input name="name" type="text" size="10">
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            性别:
                        </td>
                        <td>
                            <input name="sex" type="text" size="10">
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            邮箱:
                        </td>
                        <td>
                            <input name="email" type="text" size="20">
                        </td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
    <tr>
        <td>
            <center>
            <input type="button" style="width: 80px"
                   value="提交" onclick="btnAdd('${pageContext.request.contextPath}/registerUser')">
            <input type="reset" style="width: 80px"
                   value="重置" onclick="">
            <input type="button" style="width: 80px" value="取消">
            </center>
        </td>
    </tr>
</table>


<script language="JavaScript">
    function btnAdd(url) {
        document.frm.action = url;
        document.frm.submit();
    }
</script>
</body>
</html>
