# Use a Python runtime as the base image
FROM python:3.9-slim-buster

# Set the working directory
WORKDIR /app

# Copy the application files into the container
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .

# Expose the port that the application runs on
EXPOSE 8000

# Set the entry point to run the application
CMD ["python", "app.py"]
