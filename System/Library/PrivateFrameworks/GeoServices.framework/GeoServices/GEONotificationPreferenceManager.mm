@interface GEONotificationPreferenceManager
+ (id)sharedManager;
- (GEONotificationPreferenceManager)init;
@end

@implementation GEONotificationPreferenceManager

void __49__GEONotificationPreferenceManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(GEONotificationPreferenceManager);
  v1 = sharedManager_singleton;
  sharedManager_singleton = v0;
}

- (GEONotificationPreferenceManager)init
{
  v6.receiver = self;
  v6.super_class = GEONotificationPreferenceManager;
  v2 = [(GEONotificationPreferenceManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    enableFlags = v2->_enableFlags;
    v2->_enableFlags = v3;
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, &__block_literal_global_56377);
  }

  v3 = sharedManager_singleton;

  return v3;
}

@end