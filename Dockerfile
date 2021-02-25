FROM nginx:1.17
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY ./dist/AngularDevops/ /usr/share/nginx/html
CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
