# Dockerfile for book_catalog microservice
FROM python:3.11-alpine

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY book_catalog/requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY book_catalog .

# Make port 8000 available to the world outside this container
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]