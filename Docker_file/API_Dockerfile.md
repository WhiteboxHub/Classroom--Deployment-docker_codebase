
FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN pip install python-dotenv
EXPOSE 8000
COPY .env .env
CMD ["uvicorn", "fapi.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]


# Use an official Python runtime as a parent image
# Set the working directory in the container
# Copy the current directory contents into the container at /app
# Install any needed packages specified in requirements.txt
# Install python-dotenv if you need it for local development
# Make port 8000 available to the world outside this container
# # Copy the .env file to the working directory
# Run the FastAPI server with reload option