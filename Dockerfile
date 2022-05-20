# Specify base image.
FROM python:3.9

# Set working directory.
WORKDIR /the/workdir/path

# Expose port 8000 for your FastAPI server.
EXPOSE 8000

# Install Python requirements using Pip.
COPY ./requirements.txt /code/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy your codebase into the Docker container.
COPY ./app /code/app

# Run FastAPI server on the port exposed above.
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
