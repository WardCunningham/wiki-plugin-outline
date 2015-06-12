
escape = (text)->
  text
    .replace /&/g, '&amp;'
    .replace /</g, '&lt;'
    .replace />/g, '&gt;'

render = (node) ->
  result = """<li>#{ node.text || 'trouble'}</li>"""
  if node.subs?

    result += "<ul>#{(render other for other in node.subs).join "\n"}</ul>"
  result

emit = ($item, item) ->
  $item.append """
    <div style="background-color:#eee;padding:15px;">
      #{render item.outline}
    </div>
  """

bind = ($item, item) ->
  $item.dblclick -> wiki.textEditor $item, item

window.plugins.outline = {emit, bind} if window?
module.exports = {} if module?

