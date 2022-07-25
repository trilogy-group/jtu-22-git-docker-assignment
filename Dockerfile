# Specify base image.
FROM python:3.9

# Set working directory.
WORKDIR /app

# Expose port 8000 for your FastAPI server.
EXPOSE 8000

# Install Python requirements using Pip.

# Copy your codebase into the Docker container.
COPY . .

RUN pip install -r ./requirements.txt

# Run FastAPI server on the port exposed above.
RUN uvicorn main:app --port 8000
