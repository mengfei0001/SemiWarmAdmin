<%--
  Created by IntelliJ IDEA.
  User: alibct
  Date: 2017/3/9
  Time: 下午2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Long adminId = (Long) session.getAttribute("adminId");
    String adminName = (String) session.getAttribute("adminName");
    Integer privilegeLevel = (Integer) session.getAttribute("privilegeLevel");
    if (null == adminId) {
        response.sendRedirect(request.getContextPath() + "/signIn");
        return;
    }
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>半暖商城-商品管理</title>
    <%--Tell the browser to be responsive to screen width--%>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/ionicons.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/AdminLTE.min.css">
    <%--
    AdminLTE Skins. We have chosen the skin-blue for this starter
    page. However, you can choose any other skin. Make sure you
    apply the skin class to the body tag so the changes take effect.
    --%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/skin-red-light.min.css">
    <%--HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries--%>
    <%--WARNING: Respond.js doesn't work if you view the page via file://--%>
    <%--[if lt IE 9]--%>
    <%--<script src="../../static/js/html5shiv.min.js"></script>--%>
    <%--<script src="../../static/js/respond.min.js"></script>--%>
    <%--[endif]--%>
</head>
<%--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
--%>
<body class="hold-transition skin-red-light sidebar-mini">
<div class="wrapper">
    <%--顶部导航条--%>
    <header class="main-header">
        <a href="#" class="logo">
            <span class="logo-mini"><b>半</b>暖</span>
            <span class="logo-lg"><b>S</b>emi<b>W</b>arm</span>
        </a>

        <nav class="navbar navbar-static-top" role="navigation">
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="<%=request.getContextPath()%>/static/images/user_logo.png" class="user-image"
                                 alt="User Image">
                            <span class="hidden-xs"><%=adminName%></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="user-header" style="color: white">
                                <img src="<%=request.getContextPath()%>/static/images/user_logo.png" class="img-circle"
                                     alt="User Image">
                                <p style="color: white">
                                    <%=adminName%>
                                </p>
                                <small>权限等级</small>
                                <%=privilegeLevel%>
                            </li>
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4">
                                        <%--消息图标--%>
                                        <ul class="nav navbar-nav">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-envelope-o"></i>
                                                    <span class="label label-success">4</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-xs-4">
                                        <%--通知图标--%>
                                        <ul class="nav navbar-nav">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-bell-o"></i>
                                                    <span class="label label-warning">10</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-xs-4">
                                        <%--任务图标--%>
                                        <ul class="nav navbar-nav">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-flag-o"></i>
                                                    <span class="label label-danger">9</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="user-footer">
                                <div class="pull-left">
                                    <%--设置界面--%>
                                    <a href="#" class="btn btn-default btn-flat">设 置</a>
                                </div>
                                <div class="pull-right">
                                    <%--退出登录按钮--%>
                                    <a href="<%=request.getContextPath()%>/signIn" class="btn btn-default btn-flat">退 出</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <%--左侧导航栏--%>
    <aside class="main-sidebar">
        <section class="sidebar">
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="<%=request.getContextPath()%>/static/images/user_logo.png" class="img-circle"
                         alt="User Image">
                </div>
                <div class="pull-left info">
                    <p><%=adminName%>
                    </p>
                    <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                </div>
            </div>
            <%--搜索表单--%>
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="search-field" class="form-control">
                    <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i
                            class="fa fa-search"></i>
                    </button>
                    </span>
                </div>
            </form>
            <ul class="sidebar-menu">
                <%--主页--%>
                <li>
                    <a href="<%=request.getContextPath()%>/main">
                        <i class="fa fa-home" style="font-size: larger"></i>
                        <span>主页</span>
                    </a>
                </li>
                <%--Splash管理模块--%>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-picture-o"></i>
                        <span> Splash管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="#">
                                <i class="fa fa-plus-square"></i>
                                <span> Splash管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-pencil-square"></i>
                                <span> Splash编辑</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <%--用户管理模块--%>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-users"></i>
                        <span>用户管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="#">
                                <i class="fa fa-plus-square"></i>
                                <span> 用户管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-pencil-square"></i>
                                <span> 用户编辑</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <%--商品管理模块--%>
                <li class="treeview active">
                    <a href="#">
                        <i class="fa fa-gift" style="font-size: larger"></i>
                        <span>商品管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="active">
                            <a href="<%=request.getContextPath()%>/goods">
                                <i class="fa fa-plus-square"></i>
                                <span> 商品管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-pencil-square"></i>
                                <span> 商品编辑</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </section>
    </aside>

    <%--主要内容区--%>
    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                主 页
                <small>商品管理</small>
            </h1>
            <ol class="breadcrumb">
                <li>
                    <a href="<%=request.getContextPath()%>/main"><i class="fa fa-home"></i> 主页</a>
                </li>
                <li class="active">商品管理</li>
            </ol>
        </section>

        <!-- 内容区域 -->
        <section class="content">

            <br>
            <!-- 页面内容 -->
            <div class="row">

                <div class="col-lg-12">
                    <div class="box box-success">
                        <div class="box-header with-border">
                            <h3 class="box-title">增加商品</h3>
                            <div class="box-tools pull-right">
                                <span class="btn btn-box-tool"><a href="#"><i class="fa fa-save"></i></a></span>
                                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                            </div><!-- /.box-tools -->
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            The body of the box
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div>

                <div class="col-lg-12">
                    <div class="box box-info collapsed-box">
                        <div class="box-header with-border">
                            <h3 class="box-title">查询商品</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
                            </div><!-- /.box-tools -->
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            The body of the box
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div>

                <div class="col-lg-12">
                    <div class="box box-danger collapsed-box">
                        <div class="box-header with-border">
                            <h3 class="box-title">删除商品</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
                            </div><!-- /.box-tools -->
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            The body of the box
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div>

            </div>

        </section>
    </div>
</div>
<%--引用文件--%>
<script src="<%=request.getContextPath()%>/static/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/app.min.js"></script>
</body>
</html>
