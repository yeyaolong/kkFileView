<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0">
    <title>PDF预览</title>
    <#include "*/commonHeader.ftl">
    <link rel="stylesheet" href="css/ddPdf.css" />
    <script type="text/javascript" src="https://appx/web-view.min.js"></script>
    <script>

        if (navigator.userAgent.indexOf('AlipayClient') > -1 || navigator.userAgent.indexOf('mPaaSClient') > -1) {
            document.writeln('<script src="https://appx/web-view.min.js"' + '>' + '<' + '/' + 'script>');
        }
        // javascript
        // my.navigateTo({url: '../index/index'});
        // 网页向小程序 postMessage 消息
        my.postMessage({name:"测试web-view"});
        // 接收来自小程序的消息。
        my.onMessage = function(e) {
            console.log(e); //{'sendToWebView': '1'}
        }
    </script>
</head>
<body>
<#if pdfUrl?contains("http://") || pdfUrl?contains("https://")>
    <#assign finalUrl="${pdfUrl}">
<#else>
    <#assign finalUrl="${baseUrl}${pdfUrl}">
</#if>
<iframe src="" width="100%" frameborder="0"></iframe>
<div class="btn-group">
    <div class="btn" onclick="goForAudit()">查看预约信息</div>
</div>
</body>
<script type="text/javascript">
    var url = '${finalUrl}';
    var baseUrl = '${baseUrl}'.endsWith('/') ? '${baseUrl}' : '${baseUrl}' + '/';
    if (!url.startsWith(baseUrl)) {
        url = baseUrl + 'getCorsFile?urlPath=' + encodeURIComponent(url);
    }
    document.getElementsByTagName('iframe')[0].src = "${baseUrl}pdfjs/web/viewer.html?file=" + encodeURIComponent(url) + "&disabledownload=${pdfDownloadDisable}";
    document.getElementsByTagName('iframe')[0].height = document.documentElement.clientHeight - 45;
    document.getElementsByTagName('iframe')[0].align = "top";
    /**
     * 页面变化调整高度
     */
    window.onresize = function () {
        var fm = document.getElementsByTagName("iframe")[0];
        fm.height = window.document.documentElement.clientHeight - 45;
    }
    // 返回审核页面
    function goForAudit() {
        my.postMessage({name: "返回", operation: 'back'});
    }

</script>
</html>