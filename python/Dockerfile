FROM python:3.6-stretch
WORKDIR /usr/src/app/py

COPY python/requirements.txt /usr/src/app/python/requirements.txt
RUN pip install --no-cache-dir -r /usr/src/app/python/requirements.txt

COPY . .

# Run server
EXPOSE 5000
CMD ["python", "app.py"]
