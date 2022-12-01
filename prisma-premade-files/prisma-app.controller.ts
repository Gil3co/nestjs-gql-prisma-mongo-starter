import { Controller, Get } from '@nestjs/common';
import { Dummy } from '@prisma/client';

import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  findOne(): Promise<Dummy> {
    return this.appService.findOne();
  }
}
