<#import "temp.ftl" as temp>
<@temp.body title="Post List">
<@temp.nav/>
<div class="row">
    <div class="col-sm-6 col-sm-offset-3">
        <div class="list-group">
            <#if files?? && (files?size > 0)>
                <#list files as file>
                    <a class="list-group-item" href="/html/${file}">${file}</a>
                </#list>
            <#else >
                <div class="list-group-item disabled">Empty</div>
            </#if>
        </div>
    </div>
</div>
</@temp.body>