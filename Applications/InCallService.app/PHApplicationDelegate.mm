@interface PHApplicationDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (PHApplicationDelegate)init;
@end

@implementation PHApplicationDelegate

- (PHApplicationDelegate)init
{
  v8.receiver = self;
  v8.super_class = PHApplicationDelegate;
  v2 = [(PHApplicationDelegate *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v2->_featureFlags;
    v2->_featureFlags = v3;

    v5 = +[CNKFeatures sharedInstance];
    features = v2->_features;
    v2->_features = v5;
  }

  return v2;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  v7 = sub_100004F84(optionsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = applicationCopy;
    v11 = 2112;
    v12 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@, %@", &v9, 0x16u);
  }

  dispatch_async(&_dispatch_main_q, &stru_100358710);
  return 1;
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  applicationCopy = application;
  lCopy = l;
  optionsCopy = options;
  v10 = sub_100004F84(optionsCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = applicationCopy;
    v16 = 2112;
    v17 = lCopy;
    v18 = 2112;
    v19 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@, %@ %@", &v14, 0x20u);
  }

  v12 = sub_100004F84(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring unknown URL format.", &v14, 2u);
  }

  return 0;
}

@end