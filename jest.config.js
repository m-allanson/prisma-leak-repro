'use strict'

module.exports = {
  testEnvironment: 'node',
  testTimeout: 60000,
  preset: 'ts-jest',
  globals: {
    'ts-jest': {
      tsconfig: 'tsconfig.json',
    },
  },
}
