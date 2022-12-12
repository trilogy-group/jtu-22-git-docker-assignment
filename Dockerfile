# Specify base image.
FROM python:3.9

# Set working directory.
WORKDIR /server

# Expose port 8000 for your FastAPI server.
EXPOSE 8000

# Install Python requirements using Pip.
COPY ./requirements.txt /server/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /server/requirements.txt

# Copy your codebase into the Docker container.
COPY . /server/.

# Run FastAPI server on the port exposed above.
CMD ["uvicorn", "main:app", "--reload", "--port", "8000"]
