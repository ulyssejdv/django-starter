FROM ubuntu:20.04

RUN apt update -y && apt -y upgrade && apt install -y python3 python3-pip

COPY . /app

WORKDIR /app

RUN python3 -m pip install --upgrade pip && pip3 install -r requirements.txt

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "-w", "2", "config.wsgi"]

EXPOSE 8000
