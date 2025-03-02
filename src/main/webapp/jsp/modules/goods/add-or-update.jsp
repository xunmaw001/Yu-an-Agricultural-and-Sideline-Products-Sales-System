<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑农副产品信息</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">农副产品信息管理</li>
                        <li class="breadcrumb-item active">编辑农副产品信息</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">农副产品信息信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa shangjia">
                                        <label>农户</label>
                                        <div>
                                            <select style="width: 450px" id="shangjiaSelect" name="shangjiaSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 shangjia">
                                        <label>农户名称</label>
                                        <input style="width: 450px" id="shangjiaName" name="shangjiaName" class="form-control"
                                               placeholder="农户名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6 shangjia">
                                        <label>联系方式</label>
                                        <input style="width: 450px" id="shangjiaPhone" name="shangjiaPhone" class="form-control"
                                               placeholder="联系方式" readonly>
                                    </div>
                                    <div class="form-group col-md-6 shangjia">
                                        <label>邮箱</label>
                                        <input style="width: 450px" id="shangjiaEmail" name="shangjiaEmail" class="form-control"
                                               placeholder="邮箱" readonly>
                                    </div>
                                    <div class="form-group col-md-6 shangjia">
                                        <label>农户头像</label>
                                        <img id="shangjiaPhotoImg" src="" width="100" height="100">
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="shangjiaId" name="shangjiaId" type="hidden">
                                    <div class="form-group col-md-6 goodsNameDiv">
                                        <label>农副产品名称</label>
                                        <input style="width: 450px" id="goodsName" name="goodsName" class="form-control"
                                               placeholder="农副产品名称">
                                    </div>
                                    <div class="form-group col-md-6 goodsTypesDiv">
                                        <label>农副产品类型</label>
                                        <select style="width: 450px" id="goodsTypesSelect" name="goodsTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 goodsPhotoDiv">
                                        <label>农副产品照片</label>
                                        <img id="goodsPhotoImg" src="" width="100" height="100">
                                        <input name="file" type="file" id="goodsPhotoupload"
                                               class="form-control-file">
                                        <input name="goodsPhoto" id="goodsPhoto-input" type="hidden">
                                    </div>
                                    <div class="form-group col-md-6 goodsKucunNumberDiv">
                                        <label>农副产品库存</label>
                                        <input style="width: 450px" id="goodsKucunNumber" name="goodsKucunNumber" class="form-control"
                                               onchange="goodsKucunNumberChickValue(this)"  placeholder="农副产品库存">
                                    </div>

                                    <div class="form-group col-md-6 cuxiaoTypesDiv">
                                        <label>是否促销</label>
                                        <select style="width: 450px" id="cuxiaoTypesSelect" name="cuxiaoTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 goodsOldMoneyDiv">
                                        <label>农副产品原价</label>
                                        <input style="width: 450px" id="goodsOldMoney" name="goodsOldMoney" class="form-control"
                                               onchange="goodsOldMoneyChickValue(this)" placeholder="农副产品原价">
                                    </div>
                                    <div class="form-group col-md-6 goodsNewMoneyDiv">
                                        <label>现价</label>
                                        <input style="width: 450px" id="goodsNewMoney" name="goodsNewMoney" class="form-control"
                                               onchange="goodsNewMoneyChickValue(this)" placeholder="现价">
                                    </div>
                                    <div class="form-group  col-md-6 goodsContentDiv">
                                        <label>农副产品简介</label>
                                        <input id="goodsContentupload" name="file" type="file">
                                        <script id="goodsContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var goodsContentUe = UE.getEditor('goodsContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="goodsContent" id="goodsContent-input">
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "goods";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var goodsTypesOptions = [];
    var cuxiaoTypesOptions = [];
    var shangxiaTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var shangjiaOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->
        $('#goodsPhotoupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                var photoUrl= baseUrl + 'file/download?fileName=' + data.result.file;
                document.getElementById('goodsPhotoImg').setAttribute('src',photoUrl);
                document.getElementById('goodsPhoto-input').setAttribute('value',photoUrl);
            }
        });


        $('#goodsContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('goodsContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '农户'){//当前登录用户不为这个
                if($("#shangjiaId") !=null){
                    var shangjiaId = $("#shangjiaId").val();
                    if(shangjiaId == null || shangjiaId =='' || shangjiaId == 'null'){
                        alert("农户不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("goods/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addgoods');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function goodsTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=goods_types", "GET", {}, (res) => {
                if(res.code == 0){
                    goodsTypesOptions = res.data.list;
                }
            });
        }
        function cuxiaoTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=cuxiao_types", "GET", {}, (res) => {
                if(res.code == 0){
                    cuxiaoTypesOptions = res.data.list;
                }
            });
        }
        function shangxiaTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=shangxia_types", "GET", {}, (res) => {
                if(res.code == 0){
                    shangxiaTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function shangjiaSelect() {
            //填充下拉框选项
            http("shangjia/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    shangjiaOptions = res.data.list;
                }
            });
        }

        function shangjiaSelectOne(id) {
            http("shangjia/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                shangjiaShowImg();
                shangjiaShowVideo();
                shangjiaDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationGoodstypesSelect(){
            var goodsTypesSelect = document.getElementById('goodsTypesSelect');
            if(goodsTypesSelect != null && goodsTypesOptions != null  && goodsTypesOptions.length > 0 ){
                for (var i = 0; i < goodsTypesOptions.length; i++) {
                    goodsTypesSelect.add(new Option(goodsTypesOptions[i].indexName,goodsTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationCuxiaotypesSelect(){
            var cuxiaoTypesSelect = document.getElementById('cuxiaoTypesSelect');
            if(cuxiaoTypesSelect != null && cuxiaoTypesOptions != null  && cuxiaoTypesOptions.length > 0 ){
                for (var i = 0; i < cuxiaoTypesOptions.length; i++) {
                    cuxiaoTypesSelect.add(new Option(cuxiaoTypesOptions[i].indexName,cuxiaoTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationShangxiatypesSelect(){
            var shangxiaTypesSelect = document.getElementById('shangxiaTypesSelect');
            if(shangxiaTypesSelect != null && shangxiaTypesOptions != null  && shangxiaTypesOptions.length > 0 ){
                for (var i = 0; i < shangxiaTypesOptions.length; i++) {
                    shangxiaTypesSelect.add(new Option(shangxiaTypesOptions[i].indexName,shangxiaTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationshangjiaSelect() {
            var shangjiaSelect = document.getElementById('shangjiaSelect');
            if(shangjiaSelect != null && shangjiaOptions != null  && shangjiaOptions.length > 0 ) {
                for (var i = 0; i < shangjiaOptions.length; i++) {
                        shangjiaSelect.add(new Option(shangjiaOptions[i].shangjiaName, shangjiaOptions[i].id));
                }

                $("#shangjiaSelect").change(function(e) {
                        shangjiaSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var goodsTypesSelect = document.getElementById("goodsTypesSelect");
        if(goodsTypesSelect != null && goodsTypesOptions != null  && goodsTypesOptions.length > 0 ) {
            for (var i = 0; i < goodsTypesOptions.length; i++) {
                if (goodsTypesOptions[i].codeIndex == ruleForm.goodsTypes) {//下拉框value对比,如果一致就赋值汉字
                        goodsTypesSelect.options[i].selected = true;
                }
            }
        }

        var cuxiaoTypesSelect = document.getElementById("cuxiaoTypesSelect");
        if(cuxiaoTypesSelect != null && cuxiaoTypesOptions != null  && cuxiaoTypesOptions.length > 0 ) {
            for (var i = 0; i < cuxiaoTypesOptions.length; i++) {
                if (cuxiaoTypesOptions[i].codeIndex == ruleForm.cuxiaoTypes) {//下拉框value对比,如果一致就赋值汉字
                        cuxiaoTypesSelect.options[i].selected = true;
                }
            }
        }

        var shangxiaTypesSelect = document.getElementById("shangxiaTypesSelect");
        if(shangxiaTypesSelect != null && shangxiaTypesOptions != null  && shangxiaTypesOptions.length > 0 ) {
            for (var i = 0; i < shangxiaTypesOptions.length; i++) {
                if (shangxiaTypesOptions[i].codeIndex == ruleForm.shangxiaTypes) {//下拉框value对比,如果一致就赋值汉字
                        shangxiaTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var shangjiaSelect = document.getElementById("shangjiaSelect");
            if(shangjiaSelect != null && shangjiaOptions != null  && shangjiaOptions.length > 0 ) {
                for (var i = 0; i < shangjiaOptions.length; i++) {
                    if (shangjiaOptions[i].id == ruleForm.shangjiaId) {//下拉框value对比,如果一致就赋值汉字
                        shangjiaSelect.options[i+1].selected = true;
                        $("#shangjiaSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.goodsContent != null && ruleForm.goodsContent != 'null' && ruleForm.goodsContent != '' && $("#goodsContentupload").length>0) {

            var goodsContentUeditor = UE.getEditor('goodsContentEditor');
            goodsContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.goodsContent != null){
                    mes = ''+ ruleForm.goodsContent;
                    // mes = mes.replace(/\n/g, "<br>");
                }
                goodsContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#goodsContentupload").length>0) {
            var goodsContentEditor = UE.getEditor('goodsContentEditor');
            if (goodsContentEditor.hasContents()) {
                $('#goodsContent-input').attr('value', goodsContentEditor.getContent());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->
        function goodsKucunNumberChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[1-9][0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }
        function goodsOldMoneyChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[0-9]{0,6}(\.[0-9]{1,2})?$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("只允许输入整数6位,小数2位的数字");
                return false;
            }
        }
        function goodsNewMoneyChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[0-9]{0,6}(\.[0-9]{1,2})?$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("只允许输入整数6位,小数2位的数字");
                return false;
            }
        }
        function goodsClicknumChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[1-9][0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }
        function goodsDeleteChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[1-9][0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addgoods');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                shangjiaId: "required",
                goodsName: "required",
                goodsTypes: "required",
                goodsPhoto: "required",
                goodsKucunNumber: "required",
                cuxiaoTypes: "required",
                // goodsOldMoney: "required",
                // goodsNewMoney: "required",
                goodsClicknum: "required",
                shangxiaTypes: "required",
                goodsContent: "required",
            },
            messages: {
                shangjiaId: "农户不能为空",
                goodsName: "农副产品名称不能为空",
                goodsTypes: "农副产品类型不能为空",
                goodsPhoto: "农副产品照片不能为空",
                goodsKucunNumber: "农副产品库存不能为空",
                cuxiaoTypes: "是否促销不能为空",
                // goodsOldMoney: "农副产品原价不能为空",
                // goodsNewMoney: "现价不能为空",
                goodsClicknum: "点击次数不能为空",
                shangxiaTypes: "是否上架不能为空",
                goodsContent: "农副产品简介不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addgoods = window.sessionStorage.getItem("addgoods");
        if (addgoods != null && addgoods != "" && addgoods != "null") {
            //注册表单验证
            $(validform());

            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("goods/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        shangjiaDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#shangjiaId").val(ruleForm.shangjiaId);
        $("#goodsName").val(ruleForm.goodsName);
        $("#goodsKucunNumber").val(ruleForm.goodsKucunNumber);
        $("#goodsOldMoney").val(ruleForm.goodsOldMoney);
        $("#goodsNewMoney").val(ruleForm.goodsNewMoney);
        $("#goodsClicknum").val(ruleForm.goodsClicknum);
        $("#goodsContent").val(ruleForm.goodsContent);

    }
    <!--  级联表的数据回显  -->
    function shangjiaDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#shangjiaId").val(ruleForm.id);

        $("#shangjiaName").val(ruleForm.shangjiaName);
        $("#shangjiaPhone").val(ruleForm.shangjiaPhone);
        $("#shangjiaEmail").val(ruleForm.shangjiaEmail);
        $("#shangjiaYesnoValue").val(ruleForm.shangjiaYesnoValue);
        $("#newMoney").val(ruleForm.newMoney);
        $("#shangjiaContent").val(ruleForm.shangjiaContent);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->
        $("#goodsPhotoImg").attr("src",ruleForm.goodsPhoto);

        <!--  级联表的图片  -->
        shangjiaShowImg();
    }


    <!--  级联表的图片  -->

    function shangjiaShowImg() {
        $("#shangjiaPhotoImg").attr("src",ruleForm.shangjiaPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        shangjiaShowVideo();
    }


    <!--  级联表的视频  -->

    function shangjiaShowVideo() {
        $("#shangjiaPhotoV").attr("src",ruleForm.shangjiaPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            goodsTypesSelect();
            cuxiaoTypesSelect();
            shangxiaTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            shangjiaSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationGoodstypesSelect();
            initializationCuxiaotypesSelect();
            initializationShangxiatypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationshangjiaSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addgoods');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }
		else if (window.sessionStorage.getItem('role') == '用户') {
            // $(".aaaaaa").remove();
            $(".yonghu").remove();//删除当前用户的信息
            // 农副产品原价设置不可选
            $('#goodsOldMoney').attr('readonly', 'readonly');
            // 现价设置不可选
            $('#goodsNewMoney').attr('readonly', 'readonly');
        }
		else if (window.sessionStorage.getItem('role') == '农户') {
            // $(".aaaaaa").remove();
            $(".shangjia").remove();//删除当前用户的信息
            // 农副产品原价设置不可选
            $('#goodsOldMoney').attr('readonly', 'readonly');
            // 现价设置不可选
            $('#goodsNewMoney').attr('readonly', 'readonly');
        }
        else{
            // alert("未知情况.......");
            // var replyTextUeditor = UE.getEditor('replyTextEditor');
            // replyTextUeditor.ready(function () {
            //     replyTextUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
