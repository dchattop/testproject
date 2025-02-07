FROM python:latest

ENV PYTHONUNBUFFERED 1

WORKDIR /app

ADD . /app

COPY ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY TestProject_Django /app

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"] 

