docker.exe build -t py-crud-image .
docker.exe run --name py-crud-container -d -p 5000:80 py-crud-image