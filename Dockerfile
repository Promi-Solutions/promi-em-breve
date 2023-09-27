FROM nginx:alpine

COPY assets /usr/share/nginx/html/assets
COPY index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

# docker build -t promi-site . 
# docker run -d -p 8080:80 --name promi-web promi-site:latest
