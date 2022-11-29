# nestjs-gql-prisma-mongo-starter

## GraphQL + Prisma

Run `sh initialize-gql-prisma.sh` in the terminal and follow the prompts:

- Choose your favorite package manager.
- Choose GraphQL (code first) for transport layer and generate CRUD entry points.

This will initialize a new NestJS project, install GraphQL and Prisma, and run a Docker that starts a MongoDB server (with a replica set, since Prisma requires that)

Afterwards, go to the newly created folder `gql-prisma`, run `npm run start:dev`, go to `http://localhost:3000/graphql` and run the following query:

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
