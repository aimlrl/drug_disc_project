FROM python:3.10.14-bookworm

RUN pip3 install mlflow==2.12.2

RUN pip3 install mysql-connector-python

RUN pip3 install PyMySQL

RUN pip3 install mysqlclient

EXPOSE 5000

RUN mkdir /mlruns

RUN chmod 777 /mlruns

CMD mlflow server --host 0.0.0.0 --port 5000