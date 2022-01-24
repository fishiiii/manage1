<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

            <div class="row">
                <div class="col-sm-4 col-sm-offset-4">
                    <h1 class="text-center">班级管理</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <table class="table table-striped table-hover table-bordered">
                        <tr>
                            <th>编号</th>
                            <th>名称</th>
                            <th>所属标签</th>
                            <th>操作</th>
                        </tr>
                        <c:forEach items="${requestScope.clazzes}" var="clazz">
                            <tr>
                                <td>${clazz.id}</td>
                                <td>${clazz.name}</td>
                                <td>${clazz.tag.name}</td>
                                <td>
                                    <a href="" class="btn btn-info">修改</a>
                                    <a href="" class="btn btn-danger">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <form id="inputForm" class="form-inline" action="${pageContext.request.contextPath}/clazz/save" method="post">
                        <div class="form-group">
                            <label for="name">名称:</label>
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                        <div class="form-group">
                            <label for="tagid">选择对应标签:</label>
                            <select name="tagid" id="tagid" class="form-control">

                            </select>
                        </div>
                        <button type="submit" class="btn btn-success">添加班级</button>
                    </form>
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
    $(function(){
        $("#inputForm").submit(function(){
            if(!$("#name").val()){
                alert('请输入班级名称');
                return false;
            }
            return true;
        });
        //页面加载完成之后查询所有班级类型的标签信息
        $.get("${pageContext.request.contextPath}/tag/findByType",{type:"班级"},function(res){
            //console.log(res);
            //班级标签的集合 res:返回的标签集合 i:索引 tag:每一个标签对象
            $.each(res,function(i,tag){
                // <option value="tag.id">tag.name</option>
                var option = $("<option/>").text(tag.name).val(tag.id);
                $("#tagid").append(option);
            });
        });
    })
</script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
</body>

</html>
