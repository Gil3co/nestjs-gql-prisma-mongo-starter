npm i @nestjs/graphql @nestjs/apollo graphql apollo-server-express

nest g resource dummy
rm ./src/app.controller.ts
rm ./src/app.service.ts
cp ../gql-app.module.ts ./src/app.module.ts