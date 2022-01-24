<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>ITCAST - AdminLTE2定制版</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">

    <!-- Tell the browser to be responsive to screen width -->
    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/css/style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/head/plugins/bootstrap-slider/slider.css">
</head>

<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="aside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">
        <div class="container-fluid">

            <%--标题--%>
            <div class="row">
                <div class="col-sm-4 col-sm-offset-4">
                    <h1 class="text-center">学生管理</h1>
                </div>
            </div>

            <%--搜索条件--%>
            <div class="row" style="margin:20px 0px;">
                <div class="col-sm-10 col-sm-offset-1 text-center">
                    <form class="form-inline" action="${pageContext.request.contextPath}/student/findAll" method="post">
                        <div class="form-group">
                            <select class="form-control" name="searchCol" id="searchCol">
                                <option value="s.name"
                                        <c:if test="${searchCol=='s.name'}">
                                            selected
                                        </c:if>
                                >姓名</option>
                                <option value="s.phone"
                                        <c:if test="${searchCol=='s.phone'}">
                                            selected
                                        </c:if>
                                >电话</option>
                                <option value="s.qq"
                                        <c:if test="${searchCol=='s.qq'}">
                                            selected
                                        </c:if>
                                >QQ</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="searchValue" value="${searchValue}"
                                   style="width:500px;" id="searchValue"
                                   placeholder="请输入对应的搜索关键词">
                        </div>
                        <button type="submit" class="btn btn-primary">查询</button>
                    </form>
                </div>
            </div>

            <%--表格--%>
            <div class="row" style="height: 600px;">
                <div class="col-sm-12">

                    <c:if test="${students.size()==0}">
                        <h1 class="text-center text-info">
                            还没有任何数据哦~~！
                        </h1>
                    </c:if>

                    <c:if test="${students.size()>0}">
                    <table class="table table-striped table-hover table-bordered">
                        <tr>
                            <th>编号</th>
                            <th>姓名</th>
                            <th>年龄</th>
                            <th>生日</th>
                            <th>电话</th>
                            <th>QQ</th>
                            <th>生肖</th>
                            <th>星座</th>
                            <th>备注</th>
                            <th>就业城市</th>
                            <th>班级</th>
                            <th>小组</th>
                            <th>标签</th>
                            <th>操作</th>
                        </tr>
                        <c:forEach items="${students}" var="student">
                            <tr>
                                <td>${student.id}</td>
                                <td>${student.name}</td>
                                <td>${student.age}</td>
                                <td><fmt:formatDate value="${student.bir}" pattern="yyyy-MM-dd"/></td>
                                <td>${student.phone}</td>
                                <td>${student.qq}</td>
                                <td>${student.attr}</td>
                                <td>${student.starts}</td>
                                <td>${student.mark}</td>
                                <td>${student.city.name}</td>
                                <td>${student.clazz.name}</td>
                                <td>${student.group.name}</td>
                                <td>
                                    <c:forEach items="${student.tags}" var="tag">
                                        ${tag.name}&nbsp;&nbsp;
                                    </c:forEach>
                                </td>
                                <td>
                                    <a href="javascript:void(0);" class="btn btn-info">修改</a>
                                    <a href="javascript:void(0);" onclick="delStu('${student.id}')" class="btn btn-danger">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </c:if>
                    </table>

                </div>
            </div>

            <%--分页工具栏--%>
            <div class="row">
                <div class="col-sm-12 text-center">
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            <li>
                                <a href="${pageContext.request.contextPath}/student/findAll?page=${page-1}&searchCol=${searchCol}&searchValue=${searchValue}" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>

                            <c:forEach begin="1" step="1" end="${pages}" varStatus="state">
                                <li><a href="${pageContext.request.contextPath}/student/findAll?page=${state.count}&searchCol=${searchCol}&searchValue=${searchValue}">${state.count}</a></li>
                            </c:forEach>

                            <li>
                                <a href="${pageContext.request.contextPath}/student/findAll?page=${page+1}&searchCol=${searchCol}&searchValue=${searchValue}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>

        </div>
    </div>

</div>

<script
        src="${pageContext.request.contextPath}/head/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/jQueryUI/jquery-ui.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/raphael/raphael-min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/morris/morris.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/sparkline/jquery.sparkline.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/knob/jquery.knob.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/daterangepicker/moment.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/daterangepicker/daterangepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/fastclick/fastclick.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/iCheck/icheck.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/adminLTE/js/app.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/treeTable/jquery.treetable.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/select2/select2.full.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/bootstrap-markdown/js/markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/ckeditor/ckeditor.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/datatables/jquery.dataTables.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/chartjs/Chart.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/flot/jquery.flot.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/flot/jquery.flot.resize.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/flot/jquery.flot.pie.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/flot/jquery.flot.categories.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script
        src="${pageContext.request.contextPath}/head/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script>
    $(document).ready(function() {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale : 'zh-CN'
        });
    });
    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document).ready(function() {
        // 激活导航位置
        setSidebarActive("admin-index");
    });

    function delStu(studentId){
        if(confirm("你确定要删除该学生吗?")){
            location.href="${pageContext.request.contextPath}/student/del/"+studentId;
        }
    }
</script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
</body>

</html>
