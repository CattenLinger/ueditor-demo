## Ueditor demo

用 Spring MVC 做的 ueditor-demo。

只是因为项目用到，所以就测试一下这玩意怎么用。结果让我恶心了一晚上。。。

## 思路

用一个 Controller 封装了官方源码的 `ActionEnter`，把源码直接丢到自己的项目里，然后修改其 `BinaryUploader` 使其适配 SpringMVC 以免上传的时候出问题。

## 参考资料

[Spring MVC整合UEditor](http://dr-yanglong.github.io/2015/10/05/ueditor/)
