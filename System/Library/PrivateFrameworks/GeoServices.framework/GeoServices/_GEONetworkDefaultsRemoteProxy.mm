@interface _GEONetworkDefaultsRemoteProxy
- (_GEONetworkDefaultsRemoteProxy)init;
- (unint64_t)_updateReason;
- (void)_networkDefaultsDidChange;
@end

@implementation _GEONetworkDefaultsRemoteProxy

- (_GEONetworkDefaultsRemoteProxy)init
{
  v10.receiver = self;
  v10.super_class = _GEONetworkDefaultsRemoteProxy;
  v2 = [(_GEONetworkDefaultsRemoteProxy *)&v10 init];
  if (v2)
  {
    v3 = geo_isolater_create();
    isolation = v2->_isolation;
    v2->_isolation = v3;

    objc_initWeak(&location, v2);
    global_queue = geo_get_global_queue();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38___GEONetworkDefaultsRemoteProxy_init__block_invoke;
    v7[3] = &unk_1E7070108;
    objc_copyWeak(&v8, &location);
    notify_register_dispatch("com.apple.GeoServices.internal.networkDefaultsChanged", &v2->_configChangedToken, global_queue, v7);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (unint64_t)_updateReason
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [GEOFilePaths urlFor:23];
  path = [v3 path];
  v5 = [defaultManager fileExistsAtPath:path];

  if (v5)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

- (void)_networkDefaultsDidChange
{
  v3 = GEOGetNetworkDefaultsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18660C000, v3, OS_LOG_TYPE_DEBUG, "Received network defaults change notification. Informing delegate.", buf, 2u);
  }

  v6 = 0;
  v4 = readNetworkDefaultsFromFile(&v6);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serverProxy:self networkDefaultsDidChange:v4];
}

@end