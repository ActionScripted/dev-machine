## Builder
#
FROM python:3.9-slim as builder

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt .

RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    python3-sphinx

RUN --mount=type=cache,target=/root/.cache/pip \
    pip install -r requirements.txt

##
# Service
FROM python:3.9-slim as service

WORKDIR /app

COPY --from=builder /app/requirements.txt ./development/
