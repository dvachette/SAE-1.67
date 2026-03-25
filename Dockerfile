FROM httpd:2.4-alpine



COPY . /app/dist/ /usr/local/apache2/htdocs/

COPY apache.conf /usr/local/apache2/conf/extra/projetR.conf
RUN echo "Include conf/extra/projetR.conf" >> /usr/local/apache2/conf/httpd.conf

EXPOSE 80