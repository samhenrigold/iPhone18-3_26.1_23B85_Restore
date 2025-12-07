@interface GEOTileLoaderConfiguration
- (GEOTileLoaderConfiguration)init;
@end

@implementation GEOTileLoaderConfiguration

- (GEOTileLoaderConfiguration)init
{
  v12.receiver = self;
  v12.super_class = GEOTileLoaderConfiguration;
  v2 = [(GEOTileLoaderConfiguration *)&v12 init];
  if (v2)
  {
    v2->_serverProxyClass = objc_opt_class();
    *&v2->_memoryCacheCountLimit = xmmword_187FBCFA0;
    v2->_backpressureControlCountLimit = 50;
    v3 = objc_alloc_init(GEOResourceManifestConfiguration);
    manifestConfiguration = v2->_manifestConfiguration;
    v2->_manifestConfiguration = v3;

    v5 = [GEOFilePaths pathFor:10];
    v6 = [v5 copy];
    diskCacheLocation = v2->_diskCacheLocation;
    v2->_diskCacheLocation = v6;

    v8 = [GEOFilePaths pathFor:11];
    v9 = [v8 copy];
    diskCacheExternalLocation = v2->_diskCacheExternalLocation;
    v2->_diskCacheExternalLocation = v9;
  }

  return v2;
}

@end