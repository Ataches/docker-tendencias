FROM python:3.6-stretch
WORKDIR /usr/src/app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt

# Run server
EXPOSE 5000
CMD ["python", "app.py"]