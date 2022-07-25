# Specify base image.
FROM python:3.9

# Set working directory.
WORKDIR /app

# Expose port 8000 for your FastAPI server.
EXPOSE 8000

# Install Python requirements using Pip.
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

# Copy your codebase into the Docker container.
COPY . /app

# Run FastAPI server on the port exposed above.
ENTRYPOINT [ "uvicorn", "main:app", "--host", "0.0.0.0"]
