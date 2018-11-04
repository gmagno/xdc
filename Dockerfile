FROM python:3.6-alpine

ENV PYTHONFAULTHANDLER=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONPATH=/home/app \
    LC_ALL=C.UTF-8 \
    LANG=C.UTF-8 \
    DEBIAN_FRONTEND=noninteractive

RUN apk add --no-cache python3-tkinter

RUN mkdir /home/app
WORKDIR /home/app
COPY . .

CMD ["python3", "main.py"]
