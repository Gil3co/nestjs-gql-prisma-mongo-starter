# nestjs-gql-prisma-mongo-starter

Welcome to this application starter! I was having trouble starting a project with NestJS, Prisma and GraphQL, so I decided to write this in order to help others.

## Prerequisites

Make sure that you have Docker installed: https://docs.docker.com/get-docker

## GraphQL + Prisma

Run `sh initialize-gql-prisma.sh` in the terminal and follow the prompts:

- Choose your favorite package manager.
- Choose GraphQL (code first) for transport layer and generate CRUD entry points.

This will initialize a new NestJS project, install GraphQL and Prisma, and run a Docker that starts a MongoDB server (with a replica set, since Prisma requires that)

Afterwards, go to the newly created folder `gql-prisma-nest`, run `npm run start:dev`/`yarn run start:dev`, go to `http://localhost:3000/graphql` and run the following query:

```
query {
	dummy (id: 1) {
		exampleField
  	}
}
```

You can start developing your application :)

## Starting and stopping the Dockers running the MongoDB server

In general, run `sh mongo-docker.sh` to start the dockers and run `sh mongo-docker.sh stop` to stop them
In the file `mongo-docker.sh` there is a variable named `mongoPersistPath`. It will point the Docker to the folder in which to persist the mongo data.
Feel free to change it to whichever path you would like your data to be persisted in.
In addition, feel free to remove the `mongoimport` command, as it's only there to scaffold your application.
