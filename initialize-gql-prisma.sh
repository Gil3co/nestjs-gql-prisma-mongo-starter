folderName=gql-prisma-nest

npm i -g @nestjs/cli
nest new $folderName

cd $folderName

cp ../.gitignore .

sh ../helper-scripts/initialize-gql-helper.sh

sh ../helper-scripts/initialize-prisma-helper.sh isGql

sh ../helper-scripts/initialize-mongo-helper.sh
