FROM python:3.8-slim-buster

COPY . app/
WORKDIR app/

RUN pip install --upgrade pip && pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["uvicorn", "app:app", "--host=0.0.0.0", "--port=8000"]