import { PrismaClient } from "@prisma/client";
import { Injectable } from "@nestjs/common";
import { CreateDummyInput } from "./dto/create-dummy.input";
import { UpdateDummyInput } from "./dto/update-dummy.input";

const prisma = new PrismaClient();

@Injectable()
export class DummyService {
  create(createDummyInput: CreateDummyInput) {
    return "This action adds a new dummy";
  }

  findAll() {
    return `This action returns all dummy`;
  }

  async findOne(id: number) {
    await prisma.$connect();
    return prisma.dummy.findFirst();
  }

  update(id: number, updateDummyInput: UpdateDummyInput) {
    return `This action updates a #${id} dummy`;
  }

  remove(id: number) {
    return `This action removes a #${id} dummy`;
  }
}
