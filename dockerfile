FROM nginx:alpine

# remover default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# copiar tu config propia
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
