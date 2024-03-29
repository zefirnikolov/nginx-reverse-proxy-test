
FROM python:3.9-slim

WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir Flask gunicorn
EXPOSE 5000
ENV FLASK_APP=app.py

CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
