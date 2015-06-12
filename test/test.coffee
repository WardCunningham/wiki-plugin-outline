# build time tests for outline plugin
# see http://mochajs.org/

outline = require '../client/outline'
expect = require 'expect.js'

describe 'outline', ->

  it 'does text', ->
    result = outline.render {text: 'foo'}
    expect(result).to.be '<li>foo</li>'

  it 'does subs', ->
    result = outline.render {text: 'foo', subs: [{text: 'bar'}]}
    expect(result).to.be '<li>foo</li><ul><li>bar</li></ul>'
