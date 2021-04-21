<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8" />
    <style type="text/css">
        body{
            margin: 0 auto;
            width:900px;
            background-color: #CCB;
        }
        .container{
            width: 700px;
            height: 700px;
            margin: 0 auto;
        }
        img{
            width:auto;
            height:auto;
            max-width:100%;
            max-height:100%;
            padding-bottom: 36px;
        }
        span{
            display: block;
            font-size:20px;
            color:blue;
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
    <img src="images/sorry.jpg" />
    <span>
    该文件类型(${file.suffix?html})系统暂时不支持在线预览，<b>说明</b>：
<#--    预览失败-->
        <p style="color: red;">${msg}</p>
        有任何疑问，请加&nbsp;<a href="https://jq.qq.com/?_wv=1027&k=5c0UAtu">官方QQ群：613025121</a>&nbsp;咨询
    </span>
</div>
</body>

</html>