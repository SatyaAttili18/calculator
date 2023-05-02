FROM python:3.10.11-alpine3.17
WORKDIR /app 
COPY . .
RUN pip install flask 
RUN pip install -r requirements.txt

ENTRYPOINT FLASK_APP=/app/app.py flask run --host=0.0.0.0

EXPOSE 5000 
