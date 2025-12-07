@interface GEONetworkDefaults
+ (GEONetworkDefaults)sharedNetworkDefaults;
- (GEONetworkDefaults)init;
@end

@implementation GEONetworkDefaults

+ (GEONetworkDefaults)sharedNetworkDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__GEONetworkDefaults_sharedNetworkDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedNetworkDefaults_once != -1)
  {
    dispatch_once(&sharedNetworkDefaults_once, block);
  }

  v2 = sharedNetworkDefaults_singleton;

  return v2;
}

void __43__GEONetworkDefaults_sharedNetworkDefaults__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedNetworkDefaults_singleton;
  sharedNetworkDefaults_singleton = v1;
}

- (GEONetworkDefaults)init
{
  v15.receiver = self;
  v15.super_class = GEONetworkDefaults;
  v2 = [(GEONetworkDefaults *)&v15 init];
  if (v2)
  {
    v14 = 0;
    v3 = readNetworkDefaultsFromFile(&v14);
    v4 = v14;
    networkDefaults = v2->_networkDefaults;
    v2->_networkDefaults = v3;

    v6 = geo_isolater_create();
    networkDefaultsIsolation = v2->_networkDefaultsIsolation;
    v2->_networkDefaultsIsolation = v6;

    if ((_disableServerConnection_76718 & 1) == 0)
    {
      if (UseLocalProxy)
      {
        v8 = off_1E704D138;
      }

      else
      {
        v8 = off_1E704D140;
      }

      v9 = objc_alloc_init(*v8);
      serverProxy = v2->_serverProxy;
      v2->_serverProxy = v9;
    }

    [(_GEONetworkDefaultsServerProxy *)v2->_serverProxy setDelegate:v2];
    v13 = v2;
    geo_dispatch_async_qos();
    v11 = v13;
  }

  return v2;
}

void *__26__GEONetworkDefaults_init__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) _updateReason];
  if (!v2)
  {
    result = GEOConfigGetBOOL(231, &GeoServicesConfig_ShouldAlwaysUpdateNetworkDefaultsAtLaunch_Metadata);
    if (!result)
    {
      return result;
    }

    v2 = 1;
  }

  v4 = *(a1 + 32);

  return [v4 updateNetworkDefaultsWithReason:v2 completionHandler:0];
}

@end