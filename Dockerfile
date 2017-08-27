FROM nginx

# copy the cert and key
COPY privkey.pem /root/privkey.pem
COPY fullchain.pem /root/fullchain.pem

# copy the config files
RUN rm /etc/nginx/conf.d/*
COPY backend.conf /etc/nginx/conf.d/

