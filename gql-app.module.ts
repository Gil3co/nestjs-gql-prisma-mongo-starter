import { Module } from "@nestjs/common";

import { GraphQLModule } from "@nestjs/graphql";
import { ApolloDriver, ApolloDriverConfig } from "@nestjs/apollo";
import { DummyModule } from "./dummy/dummy.module";

@Module({
  imports: [
    GraphQLModule.forRoot<ApolloDriverConfig>({
      driver: ApolloDriver,
      autoSchemaFile: `${process.cwd()}/src/schema.gql`,
      sortSchema: true,
    }),
    DummyModule,
  ],
})
export class AppModule {}
