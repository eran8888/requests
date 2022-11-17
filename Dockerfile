FROM python:3.9.15-alpine3.16
USER app
WORKDIR /app
COPY . .
RUN "pip3 install -t requirements.txt"
CMD [ "python"  ,"http_e.py"]
