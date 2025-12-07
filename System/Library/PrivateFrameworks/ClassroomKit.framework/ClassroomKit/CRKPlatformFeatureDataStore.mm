@interface CRKPlatformFeatureDataStore
+ (CRKFeatureDataStoreProtocol)sharedDataStore;
@end

@implementation CRKPlatformFeatureDataStore

+ (CRKFeatureDataStoreProtocol)sharedDataStore
{
  if (sharedDataStore_onceToken != -1)
  {
    +[CRKPlatformFeatureDataStore sharedDataStore];
  }

  v3 = sharedDataStore_dataStore;

  return v3;
}

void __46__CRKPlatformFeatureDataStore_sharedDataStore__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  v2 = [v4 makeFeatureDataStore];
  v3 = sharedDataStore_dataStore;
  sharedDataStore_dataStore = v2;
}

@end