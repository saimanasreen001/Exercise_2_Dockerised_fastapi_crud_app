# Docker is a tool that encapsulates a s/w and runs it in an isolated environment.
# Docker image is a lightweight, executable package that includes libraries, code, dependencies, environment variables, configuration files
# Docker Container is a running instance of Docker Image.

# Base Image -- starting point to build your own docker image.
FROM python:3.11-slim

# Working directory --> sets working directory inside docker container ecosystem.
WORKDIR /app

# Copy requirements file and install dependencies inside the working directory in docker container.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the code to the docker container
COPY . .

# Expose the port FastAPI will run on -- container port
EXPOSE 8000

# Run the FastAPI app with Uvicorn
# 0.0.0.0 --> exposes the server on all network interfaces.
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
