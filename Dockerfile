FROM nginx:alpine
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/
COPY dist/ /usr/share/nginx/html/
EXPOSE 3000
CMD ["serve", "-s", "dist", "-l", "3000", "-a", "0.0.0.0"]
