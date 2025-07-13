# Base Image
FROM python:3.11-slim

# Working directory --> sets working directory inside docker container.
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
