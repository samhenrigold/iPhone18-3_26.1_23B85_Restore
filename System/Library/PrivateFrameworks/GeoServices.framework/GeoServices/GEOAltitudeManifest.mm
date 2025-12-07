@interface GEOAltitudeManifest
+ (id)sharedManager;
- (GEOAltitudeManifest)init;
- (void)_reloadManifest;
- (void)commonInit;
@end

@implementation GEOAltitudeManifest

+ (id)sharedManager
{
  if (+[GEOAltitudeManifest sharedManager]::once[0] != -1)
  {
    dispatch_once(+[GEOAltitudeManifest sharedManager]::once, &__block_literal_global_117330);
  }

  v3 = +[GEOAltitudeManifest sharedManager]::singleton;

  return v3;
}

- (GEOAltitudeManifest)init
{
  v7.receiver = self;
  v7.super_class = GEOAltitudeManifest;
  v2 = [(GEOAltitudeManifest *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(GEOAltitudeManifest *)v2 commonInit];
    v4 = +[GEOResourceManifestManager modernManager];
    [v4 addTileGroupObserver:v3 queue:MEMORY[0x1E69E96A0]];

    [(GEOAltitudeManifest *)v3 _reloadManifest];
    v5 = v3;
  }

  return v3;
}

- (void)_reloadManifest
{
  v3 = +[GEOResourceManager sharedManager];
  __geoBundle = [MEMORY[0x1E696AAE8] __geoBundle];
  v5 = [v3 dataForResourceWithName:@"altitude.xml" fallbackBundle:__geoBundle];

  [(GEOAltitudeManifest *)self parseManifest:v5];
}

- (void)commonInit
{
  v3 = objc_alloc_init(GEOAltitudeManifestReserved);
  reserved = self->_reserved;
  self->_reserved = v3;

  v5 = geo_isolater_create();
  v6 = self->_reserved;
  reservedIsolater = v6->_reservedIsolater;
  v6->_reservedIsolater = v5;
}

void __36__GEOAltitudeManifest_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(GEOAltitudeManifest);
  v1 = +[GEOAltitudeManifest sharedManager]::singleton;
  +[GEOAltitudeManifest sharedManager]::singleton = v0;
}

void __63__GEOAltitudeManifest_Internal__getvalidFlyOverAnimationIDPool__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (*(v1 + 36) == 1)
  {
    v2 = *(v1 + 8);
    v3 = (v1 + 16);
    if (v2 != (v1 + 16))
    {
      do
      {
        v5 = v2[8];
        v6 = v2[9];
        if (v5 != v6)
        {
          do
          {
            v7 = v5 + 1;
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((*(*(a1 + 40) + 8) + 48), *v5, v5);
            v5 = v7;
          }

          while (v7 != v6);
        }

        v8 = v2[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v2[2];
            v10 = *v9 == v2;
            v2 = v9;
          }

          while (!v10);
        }

        v2 = v9;
      }

      while (v9 != v3);
    }
  }
}

@end