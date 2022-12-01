# initiating Prisma
npm install prisma --save-dev
npx prisma init
npm install @prisma/client

# copying premade files to jumpstart the application
cp ../schema.prisma ./prisma/schema.prisma
cp ../.env .


if [[ $1 == "isGql" ]]
then
  cp ../gql-prisma-premade-files/prisma-dummy.service.ts ./src/Dummy/dummy.service.ts
else
  cp ../prisma-premade-files/prisma-app.controller.ts ./src/app.controller.ts
  cp ../prisma-premade-files/prisma-app.service.ts ./src/app.service.ts
fi

npx prisma generate