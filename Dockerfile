# Use an official Python runtime as base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install essential libraries and tools
RUN apt-get update && \
    apt-get install -y build-essential

# Copy the requirements.txt into the container
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Command to run when the container starts
CMD ["python", "main.py"]