@interface GEOMapsAuthServiceHelper
+ (GEOMapsAuthServiceHelper)sharedAuthHelper;
- (BOOL)_hasMAT;
- (BOOL)_hasMRT;
- (GEOMapsAuthServiceHelper)init;
- (id)dictionaryForAuthTokenState;
@end

@implementation GEOMapsAuthServiceHelper

void __44__GEOMapsAuthServiceHelper_sharedAuthHelper__block_invoke()
{
  v0 = objc_alloc_init(GEOMapsAuthServiceHelper);
  v1 = sharedAuthHelper_singleton;
  sharedAuthHelper_singleton = v0;
}

- (GEOMapsAuthServiceHelper)init
{
  v9.receiver = self;
  v9.super_class = GEOMapsAuthServiceHelper;
  v2 = [(GEOMapsAuthServiceHelper *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentEnvironmentState = 0;
    v4 = geo_isolater_create();
    currentEnvironmentStateIsolater = v3->_currentEnvironmentStateIsolater;
    v3->_currentEnvironmentStateIsolater = v4;

    v6 = +[GEOResourceManifestManager modernManager];
    global_queue = geo_get_global_queue();
    [v6 addTileGroupObserver:v3 queue:global_queue];
  }

  return v3;
}

+ (GEOMapsAuthServiceHelper)sharedAuthHelper
{
  if (sharedAuthHelper_once[0] != -1)
  {
    dispatch_once(sharedAuthHelper_once, &__block_literal_global_59_177469);
  }

  v3 = sharedAuthHelper_singleton;

  return v3;
}

- (id)dictionaryForAuthTokenState
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:-[GEOMapsAuthServiceHelper _hasMAT](self)];
  [v3 setObject:v4 forKey:@"Has MAT"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:-[GEOMapsAuthServiceHelper _hasMRT](self)];
  [v3 setObject:v5 forKey:@"Has MRT"];

  return v3;
}

- (BOOL)_hasMAT
{
  if (!self)
  {
    return 0;
  }

  v1 = _getValue(126, &GeoServicesConfig_MapsAuthToken_Metadata, 1, 0, 0, 0);
  v2 = v1 != 0;

  return v2;
}

- (BOOL)_hasMRT
{
  if (!self)
  {
    return 0;
  }

  v1 = _getValue(127, &GeoServicesConfig_MapsRefreshToken_Metadata, 1, 0, 0, 0);
  v2 = v1 != 0;

  return v2;
}

@end