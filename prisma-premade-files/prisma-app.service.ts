import { Dummy, PrismaClient } from '@prisma/client';
import { Injectable } from '@nestjs/common';

const prisma = new PrismaClient();

@Injectable()
export class AppService {
  async findOne(): Promise<Dummy> {
    await prisma.$connect();
    return prisma.dummy.findFirst();
  }
}
