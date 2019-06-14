<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>App 管理系统</title>
    <link rel="stylesheet" href="${ctx}/static/plugins/layui/css/layui.css">
</head>

<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">

    <jsp:include page="/jsp/common/header.jsp"/>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <form class="layui-form" action="${ctx}/app/edit" method="post">
                <input type="hidden" name="id" value="${appInfo.id}">
                <div class="layui-form-item">
                    <label class="layui-form-label">软件名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="softwareName" lay-verify="title" autocomplete="off" placeholder="请输入软件名称" class="layui-input" value="${appInfo.softwareName}">
                    </div>
                    <label class="layui-form-label">APK名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="APKName" lay-verify="title" autocomplete="off" placeholder="请输入APK名称" class="layui-input" value="${appInfo.APKName}">
                    </div>
                    <label class="layui-form-label">支持ROM</label>
                    <div class="layui-input-inline">
                        <input type="text" name="supportROM" lay-verify="title" autocomplete="off" placeholder="请输入ROM名称" class="layui-input" value="${appInfo.supportROM}">
                    </div>
                    <label class="layui-form-label">界面语言</label>
                    <div class="layui-input-inline">
                        <input type="text" name="interfaceLanguage" lay-verify="title" autocomplete="off" placeholder="请输入界面语言" class="layui-input" value="${appInfo.interfaceLanguage}">
                    </div>
                    <label class="layui-form-label">软件大小</label>
                    <div class="layui-input-inline">
                        <input type="text" name="softwareSize" lay-verify="title" autocomplete="off" placeholder="请输入软件大小" class="layui-input" value="${appInfo.softwareSize}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <%-- TODO 应用状态 --%>
                    <label class="layui-form-label">APP状态</label>
                    <div class="layui-input-inline">
                        <select name="status"  lay-filter="nihao">
                            <option value="">-请选择-</option>
                            <c:forEach items="${appStatuses}" var="obj">
                                <option value="${obj.valueId}" <c:if test="${appInfo.statusInfo.valueId eq obj.valueId}">
                                    selected
                                </c:if>>${obj.valueName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <%-- TODO 所属平台 --%>
                    <label class="layui-form-label">所属平台</label>
                    <div class="layui-input-inline">
                        <select name="flatformId"  lay-filter="nihao">
                            <option value="">-请选择-</option>

                            <c:forEach items="${appFlatforms}" var="obj">
                                <option value="${obj.valueId}" <c:if test="${appInfo.platFormInfo.valueId eq obj.valueId}">
                                    selected
                                </c:if>>${obj.valueName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <%-- TODO 一级分类 --%>
                    <label class="layui-form-label">一级分类</label>
                    <div class="layui-input-inline">
                        <select name="categoryLevel1.id" id="levelOne" lay-filter="levelOne">
                            <option value="">-请选择-</option>
                            <c:forEach items="${levelOne}" var="obj">
                                <option value="${obj.id}" <c:if test="${appInfo.categoryLevel1.id eq obj.id}">
                                    selected
                                </c:if>>${obj.categoryName}</option>
                            </c:forEach>
                        </select>
                    </div>
                     <%-- TODO 二级分类 --%>
                    <label class="layui-form-label">二级分类</label>
                    <div class="layui-input-inline">
                        <select name="categoryLevel2.id" lay-filter="levelTwo" id="levelTwo">
                            <option value="">-请选择-</option>
                        </select>
                    </div>
                    <%-- TODO 三级分类 --%>
                    <label class="layui-form-label">三级分类</label>
                    <div class="layui-input-inline">
                        <select name="categoryLevel3.id" lay-filter="levelThree" id="levelThree">
                            <option value="">-请选择-</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">应用简介</label>
                    <div class="layui-input-inline">
                        <input type="text" name="appInfo" lay-verify="title" autocomplete="off" placeholder="请输入应用简介" class="layui-input" value="${appInfo.appInfo}">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    </div>
                </div>

            </form>
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
                            html += '<option value="'+data[i].id+'"'
                            if (data[i].id == levelThree) {
                                html += 'selected'
                            }
                            html += '>' + data[i].categoryName + '</option>'
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
                            html += '<option value="'+data[i].id+'"'
                            if (data[i].id == levelThree) {
                                html += 'selected'
                            }
                            html += '>' + data[i].categoryName + '</option>'
                        }
                        // 选择 level2 更新
                        $('#levelThree').html(html)
                        form.render()
                    }
                })
            }
        })

        // 级联
        $(function () {
            // 1. 取出一级分类的值
            var levelOne = $('#levelOne').val()
            if (levelOne != '' && levelOne != null) {
                var levelTwo = '${appInfo.categoryLevel2.id}'
                $.ajax({
                    url:'${ctx}/category/queryLevelTwoByLevelOne/' + levelOne,
                    type:'get',
                    success:function (data) {
                        // 根据 data 修改数据，重新渲染就 OK 了。
                        var html = '<option value="">-请选择-</option>'
                        var len = data.length
                        var levelTwo = '${appInfo.categoryLevel2.id}'
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

                var levelThree = '${appInfo.categoryLevel3.id}'
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
