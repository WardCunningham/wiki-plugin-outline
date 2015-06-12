# build time tests for outline plugin
# see http://mochajs.org/

outline = require '../client/outline'
expect = require 'expect.js'

describe 'outline plugin', ->

  describe 'expand', ->

    # it 'can make itallic', ->
    #   result = outline.expand 'hello *world*'
    #   expect(result).to.be 'hello <i>world</i>'
