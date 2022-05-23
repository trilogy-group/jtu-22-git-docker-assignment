
FROM python:3.9


WORKDIR /AnshulGoyal-jtu-22-assignment

EXPOSE 8000

COPY ./requirements.txt /AnshulGoyal-jtu-22-assignment/requirements.txt

RUN pip install -r requirements.txt
COPY . /AnshulGoyal-jtu-22-assignment 

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--reload"]
