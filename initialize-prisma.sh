npm install prisma --save-dev
npx prisma
npx prisma init
npm install @prisma/client

cp ../schema.prisma ./prisma/schema.prisma
cp ../.env .
cp ../prisma-dummy.service.ts ./src/Dummy/dummy.service.ts
npx prisma generate