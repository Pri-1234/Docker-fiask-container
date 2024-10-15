# Use the Python 3.11 image as the base
FROM python:3.11

# This command tells Docker to echo "hello world" when the container runs
CMD exec gunicorn entrypoint:app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY ./entrypoint.py .
docker run tributary
