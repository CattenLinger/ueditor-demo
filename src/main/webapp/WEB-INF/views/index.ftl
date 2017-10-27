<#import "temp.ftl" as temp>
<@temp.body title="UEditor Demo">
<@temp.nav/>
<div class="row">
    <div class="col-sm-8 col-sm-offset-2">
        <form method="post" action="/article/post">
            <div class="form-group">
                <!-- 加载编辑器的容器 -->
                <script id="container" name="content" type="text/plain"></script>
            </div>
            <div class="form-group">
                <input type="submit" value="Submit" class="btn btn-success btn-block">
            </div>
        </form>
    </div>
</div>

<!-- 配置文件 -->
<script type="text/javascript" src="/js/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="/js/ueditor.all.min.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    var ue = UE.getEditor('container');
</script>
</@temp.body>