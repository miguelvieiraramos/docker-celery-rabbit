FROM python:3.6
ADD requirements.txt /app/requirements.txt
ADD . /app/
WORKDIR /app/
RUN pip install -r requirements.txt
ENTRYPOINT celery -A celeryapp worker