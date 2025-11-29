FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install --upgrade pip setuptools wheel

RUN pip install --upgrade Werkzeug==3.0.3

EXPOSE 80

ENV FLASK_APP=app.py 

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=80"]