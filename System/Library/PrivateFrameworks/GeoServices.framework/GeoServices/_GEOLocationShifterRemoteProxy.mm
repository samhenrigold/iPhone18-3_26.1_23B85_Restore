@interface _GEOLocationShifterRemoteProxy
- (BOOL)isLocationShiftEnabled;
- (_GEOLocationShifterRemoteProxy)init;
@end

@implementation _GEOLocationShifterRemoteProxy

- (_GEOLocationShifterRemoteProxy)init
{
  v15.receiver = self;
  v15.super_class = _GEOLocationShifterRemoteProxy;
  v2 = [(_GEOLocationShifterRemoteProxy *)&v15 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    shiftFunctionCache = v2->_shiftFunctionCache;
    v2->_shiftFunctionCache = v5;

    [(NSCache *)v2->_shiftFunctionCache setMinimumObjectCount:GEOConfigGetUInteger(198, &GeoServicesConfig_LocationShiftMinimumNumberToKeep_Metadata)];
    objc_initWeak(&location, v2);
    v7 = +[GEOResourceManifestConfiguration defaultConfiguration];
    v8 = GEOActiveTileGroupChangedInternalDarwinNotificationName(v7);
    uTF8String = [v8 UTF8String];
    v10 = v2->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38___GEOLocationShifterRemoteProxy_init__block_invoke;
    v12[3] = &unk_1E7070108;
    objc_copyWeak(&v13, &location);
    notify_register_dispatch(uTF8String, init_dispatchToken, v10, v12);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (BOOL)isLocationShiftEnabled
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = +[GEOResourceManifestManager modernManagerNoCreate];
  hasLoadedActiveTileGroup = [v3 hasLoadedActiveTileGroup];

  if (hasLoadedActiveTileGroup)
  {
    v5 = GEOFindOrCreateLog("com.apple.GeoServices", "GEOLocationShifter");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18660C000, v5, OS_LOG_TYPE_DEBUG, "going local for location shifting state", buf, 2u);
    }

    v6 = _GEOGetURLWithSource(15, 0, 1, 0);
    bOOLValue = [v6 length] != 0;
  }

  else
  {
    *buf = 0;
    v25 = buf;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__35538;
    v28 = __Block_byref_object_dispose__35539;
    v29 = 0;
    queue = self->_queue;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __56___GEOLocationShifterRemoteProxy_isLocationShiftEnabled__block_invoke;
    v23[3] = &unk_1E7071448;
    v23[4] = self;
    v23[5] = buf;
    dispatch_async_and_wait(queue, v23);
    v9 = *(v25 + 5);
    if (v9)
    {
      bOOLValue = [v9 BOOLValue];
    }

    else
    {
      v10 = GEOFindOrCreateLog("com.apple.GeoServices", "GEOLocationShifter");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v30 = 0;
        _os_log_impl(&dword_18660C000, v10, OS_LOG_TYPE_DEBUG, "going to geod for location shifting state", v30, 2u);
      }

      v11 = [GEOXPCConnection createServerConnectionFor:8 debugIdentifier:@"enabled" eventHandler:0];
      v12 = [[GEOLocationShiftingEnabledRequest alloc] initWithTraits:0 auditToken:0 throttleToken:0];
      v13 = [(GEOXPCRequest *)v12 sendSync:v11 error:0];
      v14 = v13;
      if (v13)
      {
        error = [v13 error];
        v16 = error == 0;

        if (v16)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v14, "enabled")}];
          shiftingEnabled = self->_shiftingEnabled;
          self->_shiftingEnabled = v17;

          v19 = GEOFindOrCreateLog("com.apple.GeoServices", "GEOLocationShifter");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            enabled = [v14 enabled];
            v21 = @"DISABLED";
            if (enabled)
            {
              v21 = @"ENABLED";
            }

            *v30 = 138412290;
            v31 = v21;
            _os_log_impl(&dword_18660C000, v19, OS_LOG_TYPE_DEBUG, "Caching location shifting %@", v30, 0xCu);
          }
        }
      }

      bOOLValue = [v14 enabled];
    }

    _Block_object_dispose(buf, 8);
  }

  return bOOLValue;
}

@end