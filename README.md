<p align="center"><img src="https://ipic.vizards.cc/wmpk9.png" width="200" alt="UESTC"/></p>
<h1 align="center">UESTC-NGINX</h1>

> 部署 [UESTC-API](https://github.com/Vizards/uestc-api) 项目的 Nginx 配置

UESTC-API 的 11 个其他 API 均通过 Nginx 转发指定网页实现，此项目为对应的配置文件

## 项目结构说明

> 参照各文件内的注释进行自定义配置

```
uestc-nginx
├── nginx.conf      Nginx 配置          
├── login.sh        模拟登录脚本
├── crontab         定时任务配置
```

## Nginx 安装说明

Nginx 需要额外支持：

- lua 脚本：[`lua-nginx-module`](https://github.com/openresty/lua-nginx-module)
- subs_filter 指令：[`ngx_http_substitutions_filter_module`](https://github.com/yaoweibin/ngx_http_substitutions_filter_module)
- HTTP/2 (选装)


