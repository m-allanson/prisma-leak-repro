# About

This is a fork of https://github.com/aqrln/prisma-leak-repro. It's updated to use `jest@28`'s new test sharding feature.

Sharding is meant for splitting your tests to run across different machines. It works by allowing you to run Jest on a deterministic subset of your tests, without having to manually list out exactly _which_ tests to run on.

Each shard runs as a fresh instance of Jest, so you can create as many shards as you need to avoid any one instance running out of memory.

Run:

- `make test x` where x is the number of tests to generate.

Output:

```
❯ make test
node --expose-gc ./node_modules/.bin/jest --runInBand --logHeapUsage --no-cache tests-generated --shard=1/4
 PASS  tests-generated/19.test.ts (556 MB heap size)
 PASS  tests-generated/12.test.ts (674 MB heap size)
 PASS  tests-generated/45.test.ts (758 MB heap size)
 PASS  tests-generated/26.test.ts (841 MB heap size)
 PASS  tests-generated/27.test.ts (925 MB heap size)
 PASS  tests-generated/11.test.ts (1008 MB heap size)
 PASS  tests-generated/33.test.ts (1091 MB heap size)
 PASS  tests-generated/21.test.ts (1175 MB heap size)
 PASS  tests-generated/4.test.ts (1258 MB heap size)
 PASS  tests-generated/13.test.ts (1342 MB heap size)
 PASS  tests-generated/43.test.ts (1425 MB heap size)
 PASS  tests-generated/15.test.ts (1509 MB heap size)
 PASS  tests-generated/22.test.ts (1592 MB heap size)

Test Suites: 13 passed, 13 total
Tests:       13 passed, 13 total
Snapshots:   0 total
Time:        15.256 s
Ran all test suites matching /tests-generated/i.
node --expose-gc ./node_modules/.bin/jest --runInBand --logHeapUsage --no-cache tests-generated --shard=2/4
 PASS  tests-generated/42.test.ts (556 MB heap size)
 PASS  tests-generated/30.test.ts (674 MB heap size)
 PASS  tests-generated/41.test.ts (758 MB heap size)
 PASS  tests-generated/16.test.ts (841 MB heap size)
 PASS  tests-generated/31.test.ts (925 MB heap size)
 PASS  tests-generated/24.test.ts (1008 MB heap size)
 PASS  tests-generated/25.test.ts (1091 MB heap size)
 PASS  tests-generated/29.test.ts (1175 MB heap size)
 PASS  tests-generated/28.test.ts (1258 MB heap size)
 PASS  tests-generated/46.test.ts (1342 MB heap size)
 PASS  tests-generated/18.test.ts (1425 MB heap size)
 PASS  tests-generated/32.test.ts (1509 MB heap size)
 PASS  tests-generated/48.test.ts (1592 MB heap size)

Test Suites: 13 passed, 13 total
Tests:       13 passed, 13 total
Snapshots:   0 total
Time:        15.267 s
Ran all test suites matching /tests-generated/i.
node --expose-gc ./node_modules/.bin/jest --runInBand --logHeapUsage --no-cache tests-generated --shard=3/4
 PASS  tests-generated/17.test.ts (555 MB heap size)
 PASS  tests-generated/20.test.ts (673 MB heap size)
 PASS  tests-generated/23.test.ts (757 MB heap size)
 PASS  tests-generated/40.test.ts (840 MB heap size)
 PASS  tests-generated/10.test.ts (924 MB heap size)
 PASS  tests-generated/1.test.ts (1007 MB heap size)
 PASS  tests-generated/6.test.ts (1091 MB heap size)
 PASS  tests-generated/5.test.ts (1174 MB heap size)
 PASS  tests-generated/44.test.ts (1258 MB heap size)
 PASS  tests-generated/36.test.ts (1341 MB heap size)
 PASS  tests-generated/47.test.ts (1424 MB heap size)
 PASS  tests-generated/2.test.ts (1508 MB heap size)
 PASS  tests-generated/7.test.ts (1591 MB heap size)

Test Suites: 13 passed, 13 total
Tests:       13 passed, 13 total
Snapshots:   0 total
Time:        15.502 s
Ran all test suites matching /tests-generated/i.
node --expose-gc ./node_modules/.bin/jest --runInBand --logHeapUsage --no-cache tests-generated --shard=4/4
 PASS  tests-generated/39.test.ts (555 MB heap size)
 PASS  tests-generated/50.test.ts (673 MB heap size)
 PASS  tests-generated/38.test.ts (757 MB heap size)
 PASS  tests-generated/8.test.ts (840 MB heap size)
 PASS  tests-generated/35.test.ts (924 MB heap size)
 PASS  tests-generated/9.test.ts (1007 MB heap size)
 PASS  tests-generated/34.test.ts (1090 MB heap size)
 PASS  tests-generated/3.test.ts (1174 MB heap size)
 PASS  tests-generated/49.test.ts (1257 MB heap size)
 PASS  tests-generated/14.test.ts (1341 MB heap size)
 PASS  tests-generated/37.test.ts (1424 MB heap size)

Test Suites: 11 passed, 11 total
Tests:       11 passed, 11 total
Snapshots:   0 total
Time:        12.937 s
Ran all test suites matching /tests-generated/i.
```
