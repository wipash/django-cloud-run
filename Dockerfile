FROM python:3.7-alpine
RUN apk update && apk upgrade && apk add bash
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt
ADD . /usr/src/app
#CMD ["gunicorn", "-w 2", "-b 0.0.0.0", "djangocloudrun.wsgi"]
CMD ["bash", "run.sh"]