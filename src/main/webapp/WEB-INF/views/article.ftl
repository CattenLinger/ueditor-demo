<html>
<head>
    <title>File upload</title>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css"/>
</head>
<body>
<#if files??>
<ul class="list-group">
    <#list files as file>
        <li class="list-group-item"><a href="/html/${file}">${file}</a></li>
    </#list>
</ul>
<#else >
Empty
</#if>
</body>
</html>