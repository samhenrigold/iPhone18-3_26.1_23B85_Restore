@interface GEOOfflineDataAccess
+ (id)sharedInstance;
@end

@implementation GEOOfflineDataAccess

void __38__GEOOfflineDataAccess_sharedInstance__block_invoke()
{
  if (_sUseLocalPersistence == 1)
  {
    v0 = _GEOGetSharedTileDB();
    if (!v0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: diskCache != nil", v6, 2u);
    }

    v1 = [GEOOfflineLocalDataAccess alloc];
    v2 = +[GEOOfflineDataConfiguration sharedConfiguration];
    v3 = [(GEOOfflineLocalDataAccess *)v1 initWithDiskCache:v0 configuration:v2];
  }

  else
  {
    v3 = objc_alloc_init(GEOOfflineRemoteDataAccess);
  }

  v4 = [[GEOOfflineDataAccess alloc] initWithAccessor:v3];
  v5 = sharedInstance_singleton_129973;
  sharedInstance_singleton_129973 = v4;
}

+ (id)sharedInstance
{
  if (sharedInstance_once_129971 != -1)
  {
    dispatch_once(&sharedInstance_once_129971, &__block_literal_global_129972);
  }

  v3 = sharedInstance_singleton_129973;

  return v3;
}

@end