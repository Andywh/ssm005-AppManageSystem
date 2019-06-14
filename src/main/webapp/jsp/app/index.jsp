<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>App 管理系统</title>
    <link rel="stylesheet" href="${ctx}/static/plugins/layui/css/layui.css">
    <style>
        table tr th:first-of-type {
            width: 10%;
        }
        table tr th:nth-of-type(2) {
            width: 5%;
        }
    </style>
</head>

<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">

    <jsp:include page="/jsp/common/header.jsp"/>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">

            <form class="layui-form" action="${ctx}/app/query" method="post">
                <div class="layui-form-item">
                    <div class="layui-input-inline">
                        <input type="hidden" name="pageNum" lay-verify="title" value="1">
                    </div>
                    <label class="layui-form-label">软件名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="appName" lay-verify="title" autocomplete="off" placeholder="请输入名称" class="layui-input" value="${appInfoDTO.appName}">
                    </div>
                    <label class="layui-form-label">APP状态</label>
                    <div class="layui-input-inline">
                        <select name="appStatus"  lay-filter="nihao">
                            <option value="">-请选择-</option>
                            <c:forEach items="${appStatuses}" var="obj">
                                <option value="${obj.valueId}" <c:if test="${obj.valueId eq appInfoDTO.appStatus}">
                                    selected
                                </c:if>>${obj.valueName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <label class="layui-form-label">所属平台</label>
                    <div class="layui-input-inline">
                        <select name="appPlatform"  lay-filter="nihao">
                            <option value="">-请选择-</option>
                            <c:forEach items="${appFlatforms}" var="obj">
                                <option value="${obj.valueId}"  <c:if test="${obj.valueId eq appInfoDTO.appPlatform}">
                                    selected
                                </c:if> >${obj.valueName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <%--<label class="layui-form-label">单行输入框</label>--%>
                    <%--<div class="layui-input-inline">--%>
                        <%--<input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">--%>
                    <%--</div>--%>
                    <label class="layui-form-label">一级分类</label>
                    <div class="layui-input-inline">
                        <select name="levelOne" id="levelOne" lay-filter="levelOne">
                            <option value="">-请选择-</option>
                            <c:forEach items="${levelOne}" var="obj">
                                <option value="${obj.id}" <c:if test="${obj.id eq appInfoDTO.levelOne}">
                                    selected
                                </c:if>>${obj.categoryName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <label class="layui-form-label">二级分类</label>
                    <div class="layui-input-inline">
                        <select name="levelTwo" lay-filter="levelTwo" id="levelTwo">
                            <option value="">-请选择-</option>
                        </select>
                    </div>
                    <label class="layui-form-label">三级分类</label>
                    <div class="layui-input-inline">
                        <select name="levelThree" lay-filter="levelThree" id="levelThree">
                            <option value="">-请选择-</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">查询</button>
                    </div>
                </div>
            </form>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <a class="layui-btn" href="${ctx}/app/toAdd">新增APP基础信息</a>
                </div>
            </div>

            <table class="layui-table">
                <thead>
                    <tr>
                        <th class="layui-t">软件名称</th>
                        <th>APK名称</th>
                        <th>软件大小(单位M)</th>
                        <th>所属平台</th>
                        <th>所属分类(一级分类、二级分类、三级分类)</th>
                        <th>状态</th>
                        <th>下载次数</th>
                        <th>最新版本号</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${page.list}" var="obj">
                        <tr>
                            <td>${obj.softwareName}</td>
                            <td>${obj.APKName}</td>
                            <td>${obj.softwareSize}</td>
                            <%--<td>${obj.flatformId}</td>--%>
                            <td>
                                <c:if test="${obj.flatformId eq 1}">
                                    手机
                                </c:if>
                                <c:if test="${obj.flatformId eq 2}">
                                    平板
                                </c:if>
                                <c:if test="${obj.flatformId eq 3}">
                                    通用
                                </c:if>
                            </td>
                            <td>
                                ${obj.categoryLevel1.categoryName}->${obj.categoryLevel2.categoryName}->${obj.categoryLevel3.categoryName}
                            </td>
                            <td>
                                <c:if test="${obj.status eq 1}">
                                    待审核
                                </c:if>
                                <c:if test="${obj.status eq 2}">
                                    审核通过
                                </c:if>
                                <c:if test="${obj.status eq 3}">
                                    审核未通过
                                </c:if>
                                <c:if test="${obj.status eq 4}">
                                    已上架
                                </c:if>
                                <c:if test="${obj.status eq 5}">
                                    已下架
                                </c:if>
                            </td>
                            <td>${obj.downloads}</td>
                            <td>${obj.appVersion.versionNo}</td>
                            <td>
                                <a href="${ctx}/app/toEdit/${obj.id}" class="layui-btn layui-btn-normal"><i class="layui-icon">&#xe642;</i></a>
                                <a href="${ctx}/app/delete/${obj.id}" class="layui-btn layui-btn-danger"><i class="layui-icon">&#xe640;</i></a>
                                <%--<a href="${ctx}/app/queryById/${obj.id}" class="layui-btn"><i class="layui-icon">&#xe615;</i></a>--%>
                            </td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td>
                            共 ${page.total} 条记录 第 ${page.pageNum} / ${page.pages} 页
                        </td>
                        <td colspan="8">
                            <a data-for="page-first" href="javascript:void(0);">首页</a>
                            <a data-for="page-prev" href="javascript:void(0);">上一页</a>
                            <a data-for="page-next" href="javascript:void(0);">下一页</a>
                            <a data-for="page-last" href="javascript:void(0);">末页</a>
                        </td>
                        <%--<td colspan="8">--%>
                            <%--<a href="">首页</a>--%>
                            <%--<a href="">上一页</a>--%>
                            <%--<a href="">下一页</a>--%>
                            <%--<a href="">尾页</a>--%>
                        <%--</td>--%>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <jsp:include page="/jsp/common/footer.jsp"/>

</div>
<script src="${ctx}/static/plugins/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use(['element', 'form', 'jquery'], function(){
        var element = layui.element
        var form = layui.form
        var $ = layui.jquery

        // 一级分类
        form.on('select(levelOne)', function () {
            // 获取 id
            var levelOneId = $('#levelOne').val()
            if (levelOneId == '') {
                // 清空 levelTwo
                var html = '<option value="">-请选择-</option>'
                $('#levelTwo').html(html)
                $('#levelThree').html(html)
                form.render()
                return;
            } else {
                $.ajax({
                    url:'${ctx}/category/queryLevelTwoByLevelOne/' + levelOneId,
                    type:'get',
                    success:function (data) {
                        // 根据 data 修改数据，重新渲染就 OK 了。
                        var html = '<option value="">-请选择-</option>'
                        var len = data.length
                        <%--var levelTwo = '${appInfoDTO.levelTwo}'--%>
                        for (var i = 0; i < len; i++) {
                            html += '<option value="'+data[i].id+'">' + data[i].categoryName + '</option>'
                        }
                        // 选择 level2 更新
                        $('#levelTwo').html(html)
                        form.render()
                    }
                })
            }
        })

        // 二级分类
        form.on('select(levelTwo)', function () {
            // 获取 id
            var levelTwoId = $('#levelTwo').val()
            if (levelTwoId == '') {
                // 清空 levelTwo
                var html = '<option value="">-请选择-</option>'
                $('#levelThree').html(html)
                form.render()
                return;
            } else {
                $.ajax({
                    url:'${ctx}/category/queryLevelThreeByLevelTwo/' + levelTwoId,
                    type:'get',
                    success:function (data) {
                        // 根据 data 修改数据，重新渲染就 OK 了。
                        var html = '<option value="">-请选择-</option>'
                        var len = data.length
                        for (var i = 0; i < len; i++) {
                            html += '<option value="'+data[i].id+'">' + data[i].categoryName + '</option>'
                        }
                        // 选择 level2 更新
                        $('#levelThree').html(html)
                        form.render()
                    }
                })
            }
        })

        // 分页事件
        $('a[data-for^=page]').click(function () {
            var val = $(this).attr('data-for')
            var pageNum = '${page.pageNum}'
            var totalPages = '${page.pages}'
            switch(val) {
                case 'page-first':
                    pageNum = 1
                    break
                case 'page-prev':
                    pageNum = parseInt(pageNum) - 1
                    if (pageNum < 1) {
                        pageNum = 1
                    }
                    break
                case 'page-next':
                    pageNum = parseInt(pageNum) + 1
                    if (pageNum > totalPages) {
                        pageNum = totalPages
                    }
                    break
                case 'page-last':
                    pageNum = totalPages
                    break
            }
            // 更新隐藏域里面的值
            $('input[name=pageNum]').val(pageNum)
            $('form').submit()
        })

        // 级联
        $(function () {
            // 1. 取出一级分类的值
            var levelOne = $('#levelOne').val()
            if (levelOne != '' && levelOne != null) {
                var levelTwo = '${appInfoDTO.levelTwo}'
                $.ajax({
                    url:'${ctx}/category/queryLevelTwoByLevelOne/' + levelOne,
                    type:'get',
                    success:function (data) {
                        // 根据 data 修改数据，重新渲染就 OK 了。
                        var html = '<option value="">-请选择-</option>'
                        var len = data.length
                        var levelTwo = '${appInfoDTO.levelTwo}'
                        for (var i = 0; i < len; i++) {
                            html += '<option value="'+data[i].id+'"'
                            if (data[i].id == levelTwo) {
                                html += 'selected'
                            }
                            html += '>' + data[i].categoryName + '</option>'
                        }
                        // 选择 level2 更新
                        $('#levelTwo').html(html)
                        form.render()
                    }
                })

                var levelThree = '${appInfoDTO.levelThree}'
                $.ajax({
                        url:'${ctx}/category/queryLevelThreeByLevelTwo/' + levelTwo,
                        type:'get',
                        success:function (data) {
                            // 根据 data 修改数据，重新渲染就 OK 了。
                            var html = '<option value="">-请选择-</option>'
                            var len = data.length
                            for (var i = 0; i < len; i++) {
                                html += '<option value="'+data[i].id+'"'
                                if (data[i].id == levelThree) {
                                    html += 'selected'
                                }
                                html += '>' + data[i].categoryName + '</option>'
                            }
                            // 选择 level3 更新
                            $('#levelThree').html(html)
                            form.render()
                        }
                    })

            }

        })

    })
</script>
</body>

</html>
