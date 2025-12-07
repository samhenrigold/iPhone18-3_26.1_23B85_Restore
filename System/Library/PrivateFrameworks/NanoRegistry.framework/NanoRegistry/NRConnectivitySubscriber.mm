@interface NRConnectivitySubscriber
+ (BOOL)getDropoutCounter:(unint64_t *)counter;
- (NRConnectivitySubscriber)init;
@end

@implementation NRConnectivitySubscriber

- (NRConnectivitySubscriber)init
{
  v14 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NRConnectivitySubscriber;
  v2 = [(NRConnectivitySubscriber *)&v10 init];
  if (v2)
  {
    if (init_onceToken != -1)
    {
      dispatch_once(&init_onceToken, &__block_literal_global_16);
    }

    if (notifyHandle != -1)
    {
      state64 = 0;
      if (notify_get_state(notifyHandle, &state64))
      {
        v3 = nr_framework_log();
        v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

        if (v4)
        {
          v5 = nr_framework_log();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v6 = objc_opt_class();
            *buf = 138412290;
            v13 = v6;
            v7 = v6;
            _os_log_impl(&dword_1E0ADF000, v5, OS_LOG_TYPE_DEFAULT, "Failed to read notify token in %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v8 = state64;
        v2->_connected = (state64 & 0x8000000000000000) == 0;
        v2->_dropoutCounter = v8 & 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return v2;
}

void __32__NRConnectivitySubscriber_init__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  if (notify_register_check("com.apple.nanoregistry.dropoutcounter", &notifyHandle))
  {
    v0 = nr_framework_log();
    v1 = os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);

    if (v1)
    {
      v2 = nr_framework_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = 136315138;
        v4 = "com.apple.nanoregistry.dropoutcounter";
        _os_log_impl(&dword_1E0ADF000, v2, OS_LOG_TYPE_DEFAULT, "Failed to register block and get notify token for %s", &v3, 0xCu);
      }
    }
  }
}

+ (BOOL)getDropoutCounter:(unint64_t *)counter
{
  v4 = objc_opt_new();
  if (counter)
  {
    if (v4)
    {
      v5 = *(v4 + 16);
    }

    else
    {
      v5 = 0;
    }

    *counter = v5;
  }

  if (v4)
  {
    v6 = *(v4 + 8) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

@end