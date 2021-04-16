from celery import Celery

app = Celery('hello', broker='amqp://admin:mypass@rabbit//')

@app.task
def hello():
    return 'hello world'