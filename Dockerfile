FROM python:3.10-slim

WORKDIR usr/src/index

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80

CMD ["gunicorn", "-b", "0.0.0.0:80", "run:app"]