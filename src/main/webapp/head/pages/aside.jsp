<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="${pageContext.request.contextPath}/head/img/user2-160x160.jpg"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>
					<security:authentication property="principal.username" />
				</p>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>
			<li id="admin-index"><a
				href="${pageContext.request.contextPath}/head/pages/main.jsp"><i
					class="fa fa-dashboard"></i> <span>首页</span></a></li>

			<li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
					<span>学生信息管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>


			</a>
				<ul class="treeview-menu">

					<li><a
						href="${pageContext.request.contextPath}/head/pages/student-add.jsp"> <i
							class="fa fa-circle-o"></i> 添加学生
					</a></li>
					<li><a
						href="${pageContext.request.contextPath}/student/findAll"> <i
							class="fa fa-circle-o"></i> 查询所有学生
					</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
				<span>小组信息管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>


			</a>
				<ul class="treeview-menu">
					<li><a
							href="${pageContext.request.contextPath}/group/findAll"> <i
							class="fa fa-circle-o"></i> 查询所有小组
					</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
				<span>班级信息管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>


			</a>
				<ul class="treeview-menu">
					<li><a
							href="${pageContext.request.contextPath}/clazz/findAll"> <i
							class="fa fa-circle-o"></i> 查询所有班级
					</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
				<span>标签信息管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>


			</a>
				<ul class="treeview-menu">
					<li><a
							href="${pageContext.request.contextPath}/tag/findAll"> <i
							class="fa fa-circle-o"></i> 查询所有标签
					</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
				<span>城市信息管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>


			</a>
				<ul class="treeview-menu">
					<li><a
							href="${pageContext.request.contextPath}/city/findAll"> <i
							class="fa fa-circle-o"></i> 查询所有城市
					</a></li>
				</ul></li>
<%--			<li class="treeview"><a href="#"> <i class="fa fa-cube"></i>--%>
<%--					<span>基础数据</span> <span class="pull-right-container"> <i--%>
<%--						class="fa fa-angle-left pull-right"></i>--%>
<%--				</span>--%>
<%--			</a>--%>
<%--				<ul class="treeview-menu">--%>

<%--					<li><a--%>
<%--						href="#">--%>
<%--							<i class="fa fa-circle-o"></i> 产品管理--%>
<%--					</a></li>--%>
<%--					<li><a--%>
<%--						href="#">--%>
<%--							<i class="fa fa-circle-o"></i> 订单管理--%>
<%--					</a></li>--%>

<%--				</ul></li>--%>

		</ul>
	</section>
	<!-- /.sidebar -->
</aside>