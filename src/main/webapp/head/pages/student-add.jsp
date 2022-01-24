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
                <div class="col-sm-12">
                    <h1 class="text-center">学生信息录入</h1>
                </div>
            </div>

            <%--创建表单--%>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <form class="form-horizontal" action="${pageContext.request.contextPath}/student/save" method="post">
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label">姓名</label>
                            <div class="col-sm-10">
                                <input type="text" name="name" class="form-control" id="name" placeholder="请输入学生姓名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="bir" class="col-sm-2 control-label">生日</label>
                            <div class="col-sm-10">
                                <input type="text" name="bir" class="form-control" id="bir" placeholder="请输入生日">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phone" class="col-sm-2 control-label">电话</label>
                            <div class="col-sm-10">
                                <input type="text" name="phone" class="form-control" id="phone" placeholder="请输入手机号码">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="qq" class="col-sm-2 control-label">QQ</label>
                            <div class="col-sm-10">
                                <input type="text" name="qq" class="form-control" id="qq" placeholder="请输入QQ号码">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="mark" class="col-sm-2 control-label">备注</label>
                            <div class="col-sm-10">
                                <input type="text" name="mark" class="form-control" id="mark" placeholder="请输入学生备注信息">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="city" class="col-sm-2 control-label">就业城市</label>
                            <div class="col-sm-10">
                                <select name="cityid" id="city" class="form-control">

                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="clazz" class="col-sm-2 control-label">班级信息</label>
                            <div class="col-sm-10">
                                <select name="clazzid" id="clazz" class="form-control">

                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="group" class="col-sm-2 control-label">小组信息</label>
                            <div class="col-sm-10">
                                <select name="groupid" id="group" class="form-control">

                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">选择标签信息:</label>
                            <div class="col-sm-10">
                                <div class="checkbox" id="cks">

                                </div>
                            </div>
                        </div>
                        <div class="form-group" style="margin-top: 20px;">
                            <div class="col-sm-12 col-sm-offset-1">
                                <button type="submit" style="width: 45%" class="btn btn-info">提交</button>
                                <a href="${pageContext.request.contextPath}/student/findAll" style="width: 45%"
                                   class="btn btn-danger">返回列表</a>
                            </div>
                        </div>
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
    $(function () {
        //1.发送ajax请求查询所有城市信息
        $.get("${pageContext.request.contextPath}/city/findAllJSON",function(res){
            //遍历城市信息
            $.each(res,function(index,city){
                var option = $("<option/>").text(city.name).val(city.id);
                $("#city").append(option);
            });
        });
        //2.发送ajax请求查询所有班级信息
        $.get("${pageContext.request.contextPath}/clazz/findAllClazzJSON",function(clazzs){
            $.each(clazzs,function(index,clazz){
                var option = $("<option/>").text(clazz.name).val(clazz.id);
                $("#clazz").append(option);
            });
            $("#clazz").change();
        });
        //3.监听班级的下拉列表中onchange事件根据选择班级获取对应的小组信息
        $("#clazz").change(function(){
            //清空上一次小组信息
            $("#group").empty();
            $.get("${pageContext.request.contextPath}/group/findByClazzId",{id:$(this).val()},function(res){
                $.each(res,function(index,group){
                    var option  = $("<option/>").text(group.name).val(group.id);
                    $("#group").append(option);
                });
            });
        });
        $.get("${pageContext.request.contextPath}/tag/findByType",{type:"学生"},function(tags){
            console.log(tags);
            $.each(tags,function(index,tag){
                var label = $("<label/>");
                var cks = $("<input/>").attr({type:"checkbox",name:"tagIds"}).val(tag.id);
                label.append(cks).append(tag.name +"&nbsp;&nbsp;");
                $("#cks").append(label);
            });
        });
    })
</script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
</body>

</html>