TEST_COPIES = 50

.PHONY: test

prisma/client/index.js: prisma/schema.prisma node_modules/prisma/build/index.js
	npx prisma generate

node_modules/prisma/build/index.js:
	npm install

tests-generated: src/test.ts
	./generate-tests $(TEST_COPIES)

test: prisma/client/index.js tests-generated
	node --expose-gc ./node_modules/.bin/jest --runInBand --logHeapUsage --no-cache tests-generated --shard=1/4
	node --expose-gc ./node_modules/.bin/jest --runInBand --logHeapUsage --no-cache tests-generated --shard=2/4
	node --expose-gc ./node_modules/.bin/jest --runInBand --logHeapUsage --no-cache tests-generated --shard=3/4
	node --expose-gc ./node_modules/.bin/jest --runInBand --logHeapUsage --no-cache tests-generated --shard=4/4
