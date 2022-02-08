import { PrismaClient } from '../client'

test('instantiate Prisma Client', async () => {
  const prisma = new PrismaClient()
  await prisma.$connect()
  await prisma.$disconnect()
})
