import { PrismaClient } from '../prisma/client'

test('instantiate Prisma Client', async () => {
  const prisma = new PrismaClient()
  await prisma.$connect()
  await prisma.$disconnect()
})
