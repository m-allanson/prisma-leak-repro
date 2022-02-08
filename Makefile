TEST_COPIES = 50

.PHONY: test

prisma/client/index.js: prisma/schema.prisma
	npx prisma generate

tests-generated: src/test.ts
	./generate-tests $(TEST_COPIES)

test: prisma/client/index.js tests-generated
	node --expose-gc ./node_modules/.bin/jest --runInBand --logHeapUsage --no-cache tests-generated
