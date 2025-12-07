@interface GEOCountryConfiguration
+ (Class)proxyClass;
+ (GEOCountryConfiguration)sharedConfiguration;
- (GEOCountryConfiguration)init;
- (double)urlAuthenticationTimeToLive;
- (uint64_t)_resetSupportedFeatures;
- (void)_countryCodeOnIsolationQueue;
@end

@implementation GEOCountryConfiguration

void __46__GEOCountryConfiguration_sharedConfiguration__block_invoke()
{
  v0 = objc_alloc_init(GEOCountryConfiguration);
  v1 = sharedConfiguration__sharedConfiguration;
  sharedConfiguration__sharedConfiguration = v0;
}

+ (Class)proxyClass
{
  v3 = _proxyClass_31448;
  if (_proxyClass_31448)
  {
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

+ (GEOCountryConfiguration)sharedConfiguration
{
  if (sharedConfiguration__once[0] != -1)
  {
    dispatch_once(sharedConfiguration__once, &__block_literal_global_31446);
  }

  v3 = sharedConfiguration__sharedConfiguration;

  return v3;
}

- (GEOCountryConfiguration)init
{
  v21.receiver = self;
  v21.super_class = GEOCountryConfiguration;
  v2 = [(GEOCountryConfiguration *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v2->_tileGroupChangedToken = -1;
    v4 = geo_isolater_create();
    isolater = v3->_isolater;
    v3->_isolater = v4;

    v6 = geo_isolater_create();
    currentCountrySupportsNavigationIsolater = v3->_currentCountrySupportsNavigationIsolater;
    v3->_currentCountrySupportsNavigationIsolater = v6;

    if ((_disableServerConnection & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = objc_alloc(+[GEOCountryConfiguration proxyClass]);
      global_workloop = geo_get_global_workloop();
      v11 = [v9 initWithDelegate:v3 delegateQueue:global_workloop];
      serverProxy = v3->_serverProxy;
      v3->_serverProxy = v11;

      if (+[GEOPlatform isRunningInGeod])
      {
        [(GEOCountryConfiguration *)v3 updateCountryConfiguration:0];
      }

      objc_autoreleasePoolPop(v8);
      if (+[GEOPlatform isRunningInGeod])
      {
        objc_initWeak(&location, v3);
        v13 = GEOActiveTileGroupChangedNotification;
        v14 = geo_get_global_workloop();
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __31__GEOCountryConfiguration_init__block_invoke;
        v18[3] = &unk_1E7070108;
        objc_copyWeak(&v19, &location);
        notify_register_dispatch(v13, &v3->_tileGroupChangedToken, v14, v18);

        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);
      }

      else
      {
        v15 = +[GEOResourceManifestManager modernManager];
        v16 = geo_get_global_workloop();
        [v15 addTileGroupObserver:v3 queue:v16];
      }
    }
  }

  return v3;
}

- (void)_countryCodeOnIsolationQueue
{
  if (self)
  {
    selfCopy = self;
    v3 = self[3];
    if (!v3)
    {
      v4 = _GEOReadStoredCountryCodeWithFallback();
      v5 = selfCopy[3];
      selfCopy[3] = v4;

      v3 = selfCopy[3];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (uint64_t)_resetSupportedFeatures
{
  if (result)
  {
    geo_assert_not_isolated();
    geo_isolate_sync_data();
    geo_assert_not_isolated();
    return geo_isolate_sync_data();
  }

  return result;
}

void __50__GEOCountryConfiguration__resetSupportedFeatures__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  *(*(a1 + 32) + 80) = 0;
}

- (double)urlAuthenticationTimeToLive
{
  geo_assert_not_isolated();
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_isolate_sync();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

double __54__GEOCountryConfiguration_urlAuthenticationTimeToLive__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 80) & 1) == 0)
  {
    v3 = [(GEOCountryConfiguration *)*(a1 + 32) _countryCodeOnIsolationQueue];
    v4 = [v3 countryCode];
    v5 = [(GEOCountryConfiguration *)v2 _defaultForKey:v4 inCountry:0 defaultValue:0 sourcePtr:0 decoder:?];

    *(*(a1 + 32) + 72) = 0x40B0680000000000;
    if (v5)
    {
      [v5 doubleValue];
      *(*(a1 + 32) + 72) = v6;
    }

    *(*(a1 + 32) + 80) = 1;

    v2 = *(a1 + 32);
  }

  result = *(v2 + 72);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end