FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_project create-db
RUN flask_project populate-db
RUN flask_project add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_project", "run"]
