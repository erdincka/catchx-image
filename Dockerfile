FROM erdincka/maprclient:latest

RUN pip install importlib-resources nicegui protobuf==3.20.* requests faker

EXPOSE 3000

COPY app.sh /
RUN chmod +x /app.sh

CMD [ "/app.sh" ]
