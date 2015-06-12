
escape = (text)->
  text
    .replace /&/g, '&amp;'
    .replace /</g, '&lt;'
    .replace />/g, '&gt;'

render = (node) ->
  result = """<li>#{ node.text || 'trouble'}</li>"""
  result += "<ul>#{(render s for s in node.subs).join ''}</ul>" if node.subs?
  result

emit = ($item, item) ->
  $item.append """
    <div style="background-color:#eee;padding:15px;">
      <ul>#{render item.outline || {}}</ul>
    </div>
  """

bind = ($item, item) ->
  html = "<pre>#{JSON.stringify item.outline, null, '  '}</pre>"
  $item.dblclick -> wiki.dialog 'JSON for Outline', html

window.plugins.outline = {emit, bind} if window?
module.exports = {render} if module?

