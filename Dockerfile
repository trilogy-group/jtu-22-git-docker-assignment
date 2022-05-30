# Specify base image.
FROM python:3.9

# Set working directory.
WORKDIR /assignment1
# Expose port 8000 for your FastAPI server.
EXPOSE 8000

COPY ./requirements.txt /assignment1/requirements.txt
# Install Python requirements using Pip.
RUN pip install -r /assignment1/requirements.txt

# Copy your codebase into the Docker container.
COPY . /assignment1
# Run FastAPI server on the port exposed above.
CMD [ "uvicorn", "main:app"]