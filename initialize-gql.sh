# installing necessary packages
npm i @nestjs/graphql @nestjs/apollo graphql apollo-server-express

# creating a dummy GraphQL resource 
nest g resource dummy

# removing unnecessary files and copying premade files to jumpstart the application
rm ./src/app.controller.ts
rm ./src/app.service.ts
cp ../gql-app.module.ts ./src/app.module.ts