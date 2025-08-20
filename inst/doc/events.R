## ----eval=FALSE---------------------------------------------------------------
# # Add a handler to the 'new-event' event
# id <- app$on('new-event', function() {
#   message('Event fired')
# })
# 
# # Trigger the event
# app$trigger('new-event')
# 
# # Remove the handler
# app$off(id)

## ----eval=FALSE---------------------------------------------------------------
# app$trigger_dir <- '/some/path/to/dir/'

## ----eval=FALSE---------------------------------------------------------------
# saveRDS(list(arg1 = 'test'), '/some/path/to/dir/external-event.rds')

