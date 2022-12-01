# initiating Prisma
npm install prisma --save-dev
npx prisma init
npm install @prisma/client

# copying premade files to jumpstart the application
cp ../schema.prisma ./prisma/schema.prisma
cp ../.env .
cp ../prisma-dummy.service.ts ./src/Dummy/dummy.service.ts
npx prisma generate