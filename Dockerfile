FROM --platform=linux/amd64 erdincka/maprclient

RUN pip install nicegui protobuf==3.20.* requests importlib_resources
RUN pip install faker pyiceberg[hive,pandas,s3fs] sqlalchemy

RUN sed -i 's/10.1.1.4/10.2.50.20/g' /etc/apt/sources.list.d/mapr.list
RUN apt update
RUN apt install -y mapr-spark

RUN pip install geopy country_converter PyMySQL pycountry country_converter minio
RUN apt install sshpass

EXPOSE 3000

COPY app.sh /
RUN chmod +x /app.sh

WORKDIR /app

CMD [ "/app.sh" ]
