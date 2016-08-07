FROM nginx

ADD nginx/personal-homepage.conf /etc/nginx/sites-available/personal-homepage.conf
ADD nginx/nginx.conf /etc/nginx/nginx.conf
ADD www /var/www

RUN mkdir -p /etc/nginx/sites-enabled
RUN ln -s /etc/nginx/sites-available/personal-homepage.conf /etc/nginx/sites-enabled/personal-homepage.conf