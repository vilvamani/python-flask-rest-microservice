from python:3

MAINTAINER Dipayan Biswas

COPY . /app
WORKDIR /app

RUN pip install pipenv

RUN pipenv install --system --deploy --skip-lock

CMD ["python", "run.py"]