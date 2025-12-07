@interface GEODefaultsServerConnection
@end

@implementation GEODefaultsServerConnection

uint64_t ___GEODefaultsServerConnection_block_invoke()
{
  v0 = [GEOXPCConnection createServerConnectionFor:2 debugIdentifier:@"Defaults" eventHandler:&__block_literal_global_109];
  v1 = _GEODefaultsServerConnection_sharedConnection;
  _GEODefaultsServerConnection_sharedConnection = v0;

  v2 = _GEODefaultsServerConnection_sharedConnection;

  return [v2 setReconnectAutomatically:1];
}

void ___GEODefaultsServerConnection_block_invoke_2(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (MEMORY[0x18CFD4110]() == MEMORY[0x1E69E9E80])
  {
    string = xpc_dictionary_get_string(v2, "message");
    if (string)
    {
      v4 = string;
      if (!strcmp(string, "defaults.keysChanged"))
      {
        v9 = objc_opt_class();
        v28 = 0;
        v10 = GEODecodeModernXPCMessage(v2, v9, &v28);
        v5 = v28;
        v11 = [v10 keyStrings];
        v12 = [v10 keyOptions];

        if (!([v11 count] | v12) || v5)
        {
          v22 = GEOGetUserDefaultsLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v30 = v11;
            v31 = 1024;
            v32 = v12;
            v33 = 2112;
            v34 = v5;
            _os_log_impl(&dword_18660C000, v22, OS_LOG_TYPE_ERROR, "Could not decode XPC message keys: %@ options: %#x error: %@", buf, 0x1Cu);
          }
        }

        else
        {
          v5 = v11;
          os_unfair_lock_lock(&_scheduleResync_resyncLock);
          if (!_scheduleResync_resyncOptionsToKeys)
          {
            v13 = [MEMORY[0x1E695DF90] dictionary];
            v14 = _scheduleResync_resyncOptionsToKeys;
            _scheduleResync_resyncOptionsToKeys = v13;
          }

          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          v16 = [_scheduleResync_resyncOptionsToKeys objectForKeyedSubscript:v15];
          v17 = v16 == 0;

          if (v17)
          {
            v18 = [MEMORY[0x1E695DFA8] set];
            [_scheduleResync_resyncOptionsToKeys setObject:v18 forKeyedSubscript:v15];
          }

          v19 = [_scheduleResync_resyncOptionsToKeys objectForKeyedSubscript:v15];
          [v19 addObjectsFromArray:v5];

          v20 = _scheduleResync_coalescingTimer;
          if (_scheduleResync_coalescingTimer)
          {
            v21 = dispatch_time(0, 2000000);
            dispatch_source_set_timer(v20, v21, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
          }

          else
          {
            global_queue = geo_get_global_queue();
            v24 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, global_queue);
            v25 = _scheduleResync_coalescingTimer;
            _scheduleResync_coalescingTimer = v24;

            dispatch_source_set_event_handler(_scheduleResync_coalescingTimer, &__block_literal_global_191);
            v26 = _scheduleResync_coalescingTimer;
            v27 = dispatch_time(0, 2000000);
            dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
            dispatch_activate(_scheduleResync_coalescingTimer);
          }

          os_unfair_lock_unlock(&_scheduleResync_resyncLock);
        }

        goto LABEL_22;
      }

      v5 = GEOGetUserDefaultsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v30 = v4;
        v6 = "Received unknown message: %s";
        v7 = v5;
        v8 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
        _os_log_impl(&dword_18660C000, v7, v8, v6, buf, 0xCu);
      }
    }

    else
    {
      v5 = GEOGetUserDefaultsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v2;
        v6 = "Received invalid message: %@";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
        goto LABEL_8;
      }
    }

LABEL_22:
  }
}

@end