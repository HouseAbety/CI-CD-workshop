#DUMMY Dockerfile
#Team needs to containerize their service via Dockerfile which will define the service's build steps.

# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster as prod

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]


FROM prod as test

COPY ./requirements.test.txt /code/requirements.test.txt

COPY ./tests /code/tests

RUN pip install --no-cache-dir --upgrade -r /code/requirements.test.txt

ENV PYTHONPATH "${PYTHONPATH}:/code"