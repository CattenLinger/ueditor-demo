<#macro body title>
<html>
<head>
    <title>${title}</title>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css"/>
    <style>
        body {
            margin-top: 1pt;
        }
    </style>
</head>
<body>
<#nested >
</body>
</html>
</#macro>

<#macro nav>
<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <ul class="nav navbar-nav">
                <li><a href="/">Editor</a></li>
                <li><a href="/file/upload">File upload</a></li>
                <li><a href="/article">Post List</a></li>
            </ul>
        </div><!-- /.container-fluid -->
    </nav>
</div>
</#macro>