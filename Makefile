TEST_COPIES = 50

.PHONY: test

client/index.js: prisma/schema.prisma
	npx prisma generate

tests-generated: src/test.ts
	./generate-tests $(TEST_COPIES)

test: client/index.js tests-generated
	node --expose-gc ./node_modules/.bin/jest --runInBand --logHeapUsage --no-cache tests-generated
