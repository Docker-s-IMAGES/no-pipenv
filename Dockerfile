FROM python:3.7-alpine

ENV PYTHONDONTWRITEBYTECODE 1

RUN python -m pip install -U pip pipfile-requirements

WORKDIR /src

ONBUILD COPY Pipfile Pipfile
ONBUILD COPY Pipfile.lock Pipfile.lock

# https://github.com/frostming/pipfile-requirements
ONBUILD RUN pipfile2req --sources > /src/requirements.txt
