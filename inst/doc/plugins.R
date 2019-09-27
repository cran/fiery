## ---- eval=FALSE---------------------------------------------------------
#  app$attach(plugin)

## ---- eval=FALSE---------------------------------------------------------
#  plugin <- list(
#    on_attach = function(server) {
#      router <- server$plugins$request_routr
#      route <- Route$new()
#      route$add_handler('all', '*', function(request, response, arg_list, ...) {
#        message('Hello')
#        TRUE
#      })
#      router$add_route(route, 1)
#    },
#    name = 'Hello_plugin',
#    require = 'request_routr'
#  )

## ---- eval=FALSE---------------------------------------------------------
#  plugin <- list(
#    on_attach = function(server) {
#      if (!server$has_plugin('request_routr')) {
#        server$attach(RouteStack$new())
#      }
#      router <- server$plugins$request_routr
#      route <- Route$new()
#      route$add_handler('all', '*', function(request, response, arg_list, ...) {
#        message('Hello')
#        TRUE
#      })
#      router$add_route(route, 1)
#    },
#    name = 'Hello_plugin2'
#  )

