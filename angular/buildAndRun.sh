docker.exe build -t ng-app-image .
docker.exe run --name ng-app-container -d -p 5000:80 ng-app-image