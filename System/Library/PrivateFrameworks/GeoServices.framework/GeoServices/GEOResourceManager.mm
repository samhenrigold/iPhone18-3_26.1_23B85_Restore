@interface GEOResourceManager
+ (id)sharedManager;
- (id)allResourceNames;
@end

@implementation GEOResourceManager

+ (id)sharedManager
{
  if (sharedManager_once_59853 != -1)
  {
    dispatch_once(&sharedManager_once_59853, &__block_literal_global_59854);
  }

  v3 = sharedManager_singleton_59855;

  return v3;
}

void __35__GEOResourceManager_sharedManager__block_invoke()
{
  v0 = [[GEOResourceManager alloc] initWithConfiguration:0];
  v1 = sharedManager_singleton_59855;
  sharedManager_singleton_59855 = v0;
}

- (id)allResourceNames
{
  v2 = [GEOResourceManifestManager modernManagerForConfiguration:self->_configuration];
  allResourceNames = [v2 allResourceNames];

  return allResourceNames;
}

@end