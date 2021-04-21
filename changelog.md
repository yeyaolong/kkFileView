# 20210409
url参数中的文件没有带上后缀名时，比如正常的文件url应该是
`https://xx.xx.xx.xx:port/xxx.pdf`
但是我实际中从文件服务器拿到的pdf文件url是:
`https://xx.xx.xx.xx:port/aaa/bbb/hash?expires=timestamp&Signature=hash2`

为了适应这种类型的pdf URI做了修改。如果是没有后缀的word文件，依然不能预览。

# 20210421
添加对钉钉小程序中的预览PDF的支持,访问url如下:
`http://localhost:8012/onlinePreview?officePreviewType=pdf&&fileType=ddPdf&&url=aHR0cHM6Ly9qZC5jaXR5YnJhaW4uaGFuZ3pob3UuZ292LmNuL3VwbG9hZC9jaXR5YnJhaW4vZTU2N2Q4YWYxNGM5YzlhNWZkNDg4ZDczOWQxZDIxOTQ%2FRXhwaXJlcz0xNjE4OTg2ODk4Jk9TU0FjY2Vzc0tleUlkPWo4a2VCMTJ0SkZMSWVVZnEmU2lnbmF0dXJlPSUyRnIlMkJSZzIlMkZJU0Q2TFlzTHQweFNmY3ZUNFZoTSUzRA%3D%3D`