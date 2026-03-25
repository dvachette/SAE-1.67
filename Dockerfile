FROM httpd:2.4-alpine



COPY . /app/dist/ /usr/local/apache2/htdocs/

COPY apache.conf /usr/local/apache2/conf/extra/projetr.conf
RUN echo "Include conf/extra/projetr.conf" >> /usr/local/apache2/conf/httpd.conf

EXPOSE 80