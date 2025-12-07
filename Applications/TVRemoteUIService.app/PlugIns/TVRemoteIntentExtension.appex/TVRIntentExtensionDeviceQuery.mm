@interface TVRIntentExtensionDeviceQuery
+ (id)sharedInstance;
- (void)provideDeviceOptionsWithCompletion:(id)completion;
@end

@implementation TVRIntentExtensionDeviceQuery

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[TVRIntentExtensionDeviceQuery sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

void __47__TVRIntentExtensionDeviceQuery_sharedInstance__block_invoke(id a1)
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(TVRIntentExtensionDeviceQuery);

  _objc_release_x1();
}

- (void)provideDeviceOptionsWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __68__TVRIntentExtensionDeviceQuery_provideDeviceOptionsWithCompletion___block_invoke;
  v4[3] = &unk_1000105C0;
  v4[4] = self;
  completionCopy = completion;
  v3 = completionCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

void __68__TVRIntentExtensionDeviceQuery_provideDeviceOptionsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!*(*(a1 + 32) + 8))
  {
    v3 = _TVRIntentExtensionLog(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting device query", buf, 2u);
    }

    v4 = objc_alloc_init(TVRCDeviceQuery);
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;

    [*(*(a1 + 32) + 8) start];
  }

  v7 = dispatch_time(0, 3000000000);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __68__TVRIntentExtensionDeviceQuery_provideDeviceOptionsWithCompletion___block_invoke_2;
  v9[3] = &unk_1000105C0;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  dispatch_after(v7, &_dispatch_main_q, v9);
}

void __68__TVRIntentExtensionDeviceQuery_provideDeviceOptionsWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = a1;
  v3 = [*(*(a1 + 32) + 8) devices];
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v8 connectionType];
        if (v9 == 1 && (v9 = [v8 isPaired], v9))
        {
          v10 = _TVRIntentExtensionLog(v9);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v29 = v8;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found paired device=%{public}@", buf, 0xCu);
          }

          v11 = [TVRDevice alloc];
          v12 = [v8 identifier];
          v13 = [v8 name];
          v14 = [v8 name];
          v15 = [v11 initWithIdentifier:v12 displayString:v13 pronunciationHint:v14];
          [v2 addObject:v15];
        }

        else
        {
          v12 = _TVRIntentExtensionLog(v9);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v29 = v8;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring since it is not paired or discovered via Rapport, device=%{public}@", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v5);
  }

  [*(*(v23 + 32) + 8) stop];
  v16 = *(v23 + 32);
  v17 = *(v16 + 8);
  *(v16 + 8) = 0;

  v18 = [v2 count];
  v19 = _TVRIntentExtensionLog(v18);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      *buf = 138543362;
      v29 = v2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Calling device options completion with list=%{public}@", buf, 0xCu);
    }

    v21 = *(v23 + 40);
    v22 = [[INObjectCollection alloc] initWithItems:v2];
    (*(v21 + 16))(v21, v22, 0);
  }

  else
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Calling device options completion with nil list since no devices were found", buf, 2u);
    }

    (*(*(v23 + 40) + 16))();
  }
}

@end