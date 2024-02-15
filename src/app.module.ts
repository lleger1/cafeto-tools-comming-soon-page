import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { StaticModule } from './static.module';

@Module({
  imports: [StaticModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
