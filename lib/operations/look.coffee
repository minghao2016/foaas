module.exports =
  name: "Look"
  url: '/look/:name/:from'
  fields: [
    { name: 'Name', field: 'name'}
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/look/:name/:from', (req, res) ->
      message = "#{req.params.name}, do I look like I give a fuck?"
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)
