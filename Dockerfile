# Dockerfile to build a flask app

# Start from a Python base image
FROM python:3.8-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the Docker image
COPY requirements.txt .

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application into the Docker image
COPY . .

# Expose the port your application runs on
EXPOSE 5000

# Set the default command for the container
CMD ["python", "app.py"]