
# Check for cache events on update and automatically refresh. Makes online-mode
# work more like the traditional web.

appCache = window.applicationCache

exports.autoReload = true

window.addEventListener 'load', (e) ->
  appCache.addEventListener 'updateready', (e) ->
    if appCache.status ==  appCache.UPDATEREADY
      appCache.swapCache()
      window.location.reload() if exports.autoReload

