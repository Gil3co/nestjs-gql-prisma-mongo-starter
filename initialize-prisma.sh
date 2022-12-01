folderName=prisma-nest

npm i -g @nestjs/cli
nest new $folderName

cd $folderName

cp ../.gitignore .

sh ../helper-scripts/initialize-prisma-helper.sh

sh ../helper-scripts/initialize-mongo-helper.sh