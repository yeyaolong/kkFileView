<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>PDF图片预览</title>
    <script src="js/lazyload.js"></script>
    <#include "*/commonHeader.ftl">
    <style>
        body {
            background-color: #404040;
        }
        .container {
            width: 100%;
            height: 100%;
        }
        .img-area {
            text-align: center
        }

    </style>
    <script type="text/javascript" src="https://appx/web-view.min.js"></script>
    <script>

        if (navigator.userAgent.indexOf('AlipayClient') > -1 || navigator.userAgent.indexOf('mPaaSClient') > -1) {
            document.writeln('<script src="https://appx/web-view.min.js"' + '>' + '<' + '/' + 'script>');
        }
        // javascript
        my.navigateTo({url: '../index/index'});
        // 网页向小程序 postMessage 消息
        my.postMessage({name:"测试web-view"});
        // 接收来自小程序的消息。
        my.onMessage = function(e) {
            console.log(e); //{'sendToWebView': '1'}
        }
    </script>
</head>
<body>
<div class="container">
    <#list imgurls as img>
        <div class="img-area">
            <img class="my-photo" alt="loading"  data-src="${img}" src="images/loading.gif">
        </div>
    </#list>
</div>
<#if "false" == switchDisabled>
    <img src="images/pdf.svg" width="63" height="63" style="position: fixed; cursor: pointer; top: 40%; right: 48px; z-index: 999;" alt="使用PDF预览" title="使用PDF预览" onclick="changePreviewType('pdf')"/>
</#if>
<script>
    window.onload = function () {
        /*初始化水印*/
        initWaterMark();
        checkImgs();
    };
    window.onscroll = throttle(checkImgs);
    function changePreviewType(previewType) {
        var url = window.location.href;
        if (url.indexOf("officePreviewType=image") !== -1) {
            url = url.replace("officePreviewType=image", "officePreviewType="+previewType);
        } else {
            url = url + "&officePreviewType="+previewType;
        }
        if ('allImages' === previewType) {
            window.open(url)
        } else {
            window.location.href = url;
        }
    }
</script>
</body>
</html>