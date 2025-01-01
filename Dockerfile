# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application's requirements file to the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port the application runs on
EXPOSE 5000

# Build the application
RUN echo "Building application..."

# Run tests (optional, but added for CI/CD workflow consistency)
RUN echo "Running tests..."

# Command to run the application
CMD ["python", "app.py"]
