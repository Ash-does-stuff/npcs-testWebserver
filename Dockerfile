FROM python:3.10-slim

WORKDIR usr/src/index

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 3040

CMD ["gunicorn", "--bind", "0.0.0.0:3040", "run:app"]