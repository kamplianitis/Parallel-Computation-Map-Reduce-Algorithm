FROM python:3.9-slim as builder

ARG DJANGO_ENV

ENV DJANGO_ENV=${DJANGO_ENV} \
    # python:
    PYTHONFAULTHANDLER=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONHASHSEED=random \
    # pip:
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    # poetry:
    POETRY_VERSION=1.5.1 \
    POETRY_VIRTUALENVS_CREATE=false \
    POETRY_CACHE_DIR='/var/cache/pypoetry'

# System deps:
RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    && pip install "poetry==$POETRY_VERSION" && poetry --version


WORKDIR /mr

COPY pyproject.toml poetry.lock /mr/

RUN poetry install

COPY . .

ENTRYPOINT [ "/bin/sh", "entrypoint.sh" ]
