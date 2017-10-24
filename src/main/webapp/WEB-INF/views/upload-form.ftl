<html>
<head>
    <title>File upload</title>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css"/>
</head>
<body>
<form method="post" enctype="multipart/form-data" action="/file/upload">
    <div class="form-group">
        <label>Choose file</label>
        <input class="form-control" type="file" name="files" multiple="multiple">
    </div>
    <div class="form-group">
        <input type="submit" value="Upload" class="btn btn-success">
    </div>
</form>
<#if files??>
<ul class="list-group">
<#list files as file>
    <li class="list-group-item"><a href="/uploaded-files/${file.name}">${file.name}</a></li>
</#list>
</ul>
</#if>
</body>
</html>