<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"/>
<script src="${pageContext.request.contextPath}/back/statics/js/jquery-1.8.3.min.js"></script>
<style>
    body,ul,li{
        background:#eee;
    }
    .list-group-item{
        background: #eee;
    }
</style>
<body>
<ul class="list-group  text-center" style="margin-top: 0px;">
    <li id="li1" class="list-group-item" style="color:blue"><a href="${pageContext.request.contextPath}/student/findAll" target="content">学生信息管理</a>
    </li>
    <li id="li2" class="list-group-item"><a href="${pageContext.request.contextPath}/group/findAll" target="content">小组信息管理</a>
    </li>
    <li id="li3" class="list-group-item"><a href="${pageContext.request.contextPath}/clazz/findAll" target="content">班级信息管理</a>
    </li>
    <li id="li4" class="list-group-item"><a href="${pageContext.request.contextPath}/tag/findAll" target="content">标签信息管理</a>
    </li>
    <li id="li5" class="list-group-item"><a href="${pageContext.request.contextPath}/city/findAll" target="content">城市信息管理</a>
    </li>
</ul>
</body>