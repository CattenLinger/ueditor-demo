<#import "temp.ftl" as temp>
<@temp.body title="File Upload Test">
<@temp.nav/>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <form method="post" enctype="multipart/form-data" action="/file/upload">
                <div class="form-group">
                    <label>Choose file</label>
                    <input class="form-control" type="file" name="files" multiple="multiple">
                </div>
                <div class="form-group">
                    <input type="submit" value="Upload" class="btn btn-success btn-block">
                </div>
            </form>
            <div class="panel panel-primary">
                <div class="panel-heading">Files</div>
                <div class="list-group">
                    <#if files??>
                        <#list files as file>
                            <a class="list-group-item" href="/uploaded-files/${file.name}">${file.name}</a>
                        </#list>
                    <#else>
                        <div class="list-group-item disabled">EMPTY</div>
                    </#if>
                </div>
            </div>
        </div>
    </div>
</div>
</@temp.body>