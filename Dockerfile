FROM python:3.8-alpine
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN apk add --update \
  && pip install --upgrade pip  \
  && pip install -r requirements.txt \
  && rm -rf /var/cache/apk/*
COPY ./ /app
EXPOSE 4000
CMD python app.py