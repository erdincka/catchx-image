FROM --platform=linux/amd64 erdincka/maprclient

RUN pip install nicegui protobuf==3.20.* requests importlib_resources
RUN pip install faker pyiceberg[hive,pandas,s3fs] sqlalchemy

# for pyspark
RUN apt install -y mapr-spark

RUN pip install geopy country_converter PyMySQL pycountry

EXPOSE 3000
# for spark standalone driver
EXPOSE 51400
EXPOSE 51500

COPY app.sh /
RUN chmod +x /app.sh

WORKDIR /app

CMD [ "/app.sh" ]
