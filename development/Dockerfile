##
# Service
FROM python:3.9-slim as builder

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    python3-sphinx

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt .

RUN --mount=type=cache,target=/root/.cache/pip \
    pip install -r requirements.txt

##
# Service
FROM python:3.9-slim as service

WORKDIR /app

# Move/refactor to not do this? Clear apt cache after?
RUN apt-get update && apt-get install -y --no-install-recommends \
    make

COPY --from=builder /app/requirements.txt ./development/
COPY --from=builder /opt/venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"
