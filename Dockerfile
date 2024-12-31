# 使用官方的 Nginx 镜像作为基础镜像
FROM nginx:latest

# 将本地静态文件目录中的内容复制到容器的 Nginx 默认静态文件目录
COPY ./index.html /usr/share/nginx/html

# 将自定义的 Nginx 配置文件复制到容器内（如果需要自定义配置）
# 如果不需要修改配置，可以省略这一行
# COPY ./nginx.conf /etc/nginx/nginx.conf

# 暴露 Nginx 默认的端口（80端口）
EXPOSE 80

# 启动 Nginx 服务
CMD ["nginx", "-g", "daemon off;"]
