@interface GEOSearchAttributionManifestManager
+ (id)sharedManager;
+ (void)useRemoteProxy;
- (GEOSearchAttributionManifestManager)init;
@end

@implementation GEOSearchAttributionManifestManager

void __52__GEOSearchAttributionManifestManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(GEOSearchAttributionManifestManager);
  v1 = _singleton_131727;
  _singleton_131727 = v0;
}

- (GEOSearchAttributionManifestManager)init
{
  v8.receiver = self;
  v8.super_class = GEOSearchAttributionManifestManager;
  v2 = [(GEOSearchAttributionManifestManager *)&v8 init];
  if (v2)
  {
    v3 = _proxyClass_131715;
    if (!_proxyClass_131715)
    {
      [objc_opt_class() useRemoteProxy];
      v3 = _proxyClass_131715;
    }

    v4 = objc_alloc_init(v3);
    serverProxy = v2->_serverProxy;
    v2->_serverProxy = v4;

    v6 = v2;
  }

  return v2;
}

+ (void)useRemoteProxy
{
  v3 = objc_opt_class();

  [self useProxy:v3];
}

+ (id)sharedManager
{
  if (sharedManager_once_131725 != -1)
  {
    dispatch_once(&sharedManager_once_131725, &__block_literal_global_131726);
  }

  v3 = _singleton_131727;

  return v3;
}

@end