FROM ubuntu:20.04

RUN apt update -y && apt -y upgrade && apt install -y python3 python3-pip

WORKDIR /app

COPY requirements.txt .
RUN python3 -m pip install --upgrade pip && pip3 install -r requirements.txt

COPY . /app

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "-w", "2", "config.wsgi", "--reload"]

EXPOSE 8000
