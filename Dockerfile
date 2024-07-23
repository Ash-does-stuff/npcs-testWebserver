FROM python:3.10-slim

WORKDIR usr/src/index

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 3030

CMD ["gunicorn", "--bind", "172.31.11.252:3030", "run:app"]