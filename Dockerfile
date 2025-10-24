FROM nginx:alpine
# remove default nginx files (optional but safe)
RUN rm -rf /usr/share/nginx/html/*
# copy the whole local site/ folder into nginx webroot
COPY site/ /usr/share/nginx/html/
EXPOSE 3010
CMD ["nginx", "-g", "daemon off;"]
