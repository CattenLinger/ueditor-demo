<html>
<head>
    <title>File upload</title>
</head>
<body>
<form method="post" enctype="multipart/form-data" action="/file/upload">
    <label>Choose file</label>
    <input type="file" name="files" multiple="multiple">
    <input type="submit" value="Upload">
</form>
<#if files??>
<ul>
<#list files as file>
    <li><a href="/uploaded-files/${file.name}">${file.name}</a></li>
</#list>
</ul>
</#if>
</body>
</html>