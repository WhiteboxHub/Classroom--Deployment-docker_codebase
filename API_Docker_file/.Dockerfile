FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN pip install python-dotenv
EXPOSE 8000
COPY .env .env
CMD ["uvicorn", "fapi.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]