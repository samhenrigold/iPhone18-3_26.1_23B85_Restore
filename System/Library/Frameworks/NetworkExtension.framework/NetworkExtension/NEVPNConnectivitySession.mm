@interface NEVPNConnectivitySession
- (id)initWithConfiguration:(void *)configuration delegate:(void *)delegate queue:;
@end

@implementation NEVPNConnectivitySession

uint64_t __56__NEVPNConnectivitySession_cancelWithCompletionHandler___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic_copy(v3, a2, *(a1 + 40), 32);
  }

  return ne_session_cancel();
}

- (id)initWithConfiguration:(void *)configuration delegate:(void *)delegate queue:
{
  v46[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  configurationCopy = configuration;
  delegateCopy = delegate;
  if (self && (v40.receiver = self, v40.super_class = NEVPNConnectivitySession, v11 = objc_msgSendSuper2(&v40, sel_init), (v12 = v11) != 0))
  {
    objc_storeStrong(v11 + 1, a2);
    objc_storeWeak(v12 + 3, configurationCopy);
    objc_storeStrong(v12 + 5, delegate);
    v46[0] = 0;
    v46[1] = 0;
    identifier = [v8 identifier];
    [identifier getUUIDBytes:v46];

    v14 = [v8 VPN];
    LODWORD(identifier) = v14 == 0;

    if (identifier)
    {
      appVPN = [v8 appVPN];
      v17 = appVPN == 0;

      if (v17)
      {
        alwaysOnVPN = [v8 alwaysOnVPN];
        v19 = alwaysOnVPN == 0;

        if (v19)
        {
          pathController = [v8 pathController];
          v21 = pathController == 0;

          if (v21)
          {
            contentFilter = [v8 contentFilter];
            v23 = contentFilter == 0;

            if (v23)
            {
              dnsProxy = [v8 dnsProxy];
              v25 = dnsProxy == 0;

              if (v25)
              {
                dnsSettings = [v8 dnsSettings];
                v27 = dnsSettings == 0;

                if (v27)
                {
                  appPush = [v8 appPush];
                  v29 = appPush == 0;

                  if (v29)
                  {
                    relay = [v8 relay];
                    v31 = relay == 0;

                    if (v31)
                    {
                      [v8 urlFilter];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v32 = ne_session_create();
    if (v32)
    {
      objc_initWeak(location, v12);
      objc_copyWeak(&v39, location);
      v38 = v12;
      ne_session_set_event_handler();
      v38[2] = v32;
      v15 = v38;

      objc_destroyWeak(&v39);
      objc_destroyWeak(location);
    }

    else
    {
      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        name = [v8 name];
        identifier2 = [v8 identifier];
        v37 = ne_session_type_to_string();
        *location = 138412802;
        *&location[4] = name;
        v42 = 2112;
        v43 = identifier2;
        v44 = 2080;
        v45 = v37;
        _os_log_error_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_ERROR, "Failed to create a ne_session for %@ (%@), session type %s", location, 0x20u);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __65__NEVPNConnectivitySession_initWithConfiguration_delegate_queue___block_invoke(uint64_t a1, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      if (!v7[2] || (ne_session_release(), (v8 = *(a1 + 32)) != 0) && (*(v8 + 16) = 0, (v7 = *(a1 + 32)) != 0))
      {
        if (objc_getProperty(v7, a2, 32, 1))
        {
          Property = *(a1 + 32);
          if (Property)
          {
            Property = objc_getProperty(Property, v9, 32, 1);
          }

          v13 = Property;
          v12 = *(a1 + 32);
          if (v12)
          {
            objc_setProperty_atomic_copy(v12, v11, 0, 32);
          }

          v13[2]();
        }
      }
    }
  }

  else if (a2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = WeakRetained;
    if (WeakRetained && (v5 = objc_loadWeakRetained(WeakRetained + 3)) != 0)
    {
      v6 = v5;
      [v5 sessionStatusDidChange:v4];
    }

    else
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v15 = v4;
        v16 = 2048;
        v17 = 0;
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "Failed to notify of a session status change because self (%p) or the delegate (%p) is nil", buf, 0x16u);
      }
    }
  }
}

@end