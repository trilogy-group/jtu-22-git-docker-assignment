# Specify base image.
FROM python:3.9

# Set working directory.
WORKDIR /fastapi
COPY ./requirements.txt /fastapi/requirements.txt
# Expose port 8000 for your FastAPI server.
EXPOSE 8000
# Install Python requirements using Pip.
RUN pip install -r requirements.txt
# Copy your codebase into the Docker container.
COPY ./* /fastapi/
# Run FastAPI server on the port exposed above.
CMD [ "uvicorn" ,"main:app",  "--host", "0.0.0.0", "--reload" ]