FROM python:3.10 AS builder
COPY requirements.txt .
RUN pip install --user -r requirements.txt

FROM python:3.10-slim
WORKDIR /app

COPY --from=builder /root/.local /root/.local
ENV PATH=/root/.local/bin:$PATH

COPY ./src .

RUN mkdir ./bin
COPY ./bin ./bin/
RUN chmod +x ./bin/*

RUN mkdir ./conf
COPY ./conf ./conf/

RUN apt-get update
RUN apt-get install -y libxml2-dev mariadb-client


EXPOSE 8000
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
CMD ["/app/bin/run.sh"]
