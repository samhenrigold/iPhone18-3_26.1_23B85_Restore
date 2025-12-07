@interface GEOTileCache
- (GEOTileCache)init;
- (void)_receivedMemoryNotification;
@end

@implementation GEOTileCache

- (GEOTileCache)init
{
  v18.receiver = self;
  v18.super_class = GEOTileCache;
  v2 = [(GEOTileCache *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(GEOTileCacheReserved);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    *(*(v2 + 1) + 136) = 64;
    *(*(v2 + 1) + 144) = 0x200000;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v7 = [bundleIdentifier isEqualToString:@"com.apple.Maps"];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = defaultCenter;
    if (v7)
    {
      v10 = @"MNApplicationDidEnterBackgroundNotification";
    }

    else
    {
      v10 = @"UIApplicationDidEnterBackgroundNotification";
    }

    [defaultCenter addObserver:v2 selector:sel__enteredBackground_ name:v10 object:0];

    v11 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, MEMORY[0x1E69E96A0]);
    v12 = *(v2 + 2);
    *(v2 + 2) = v11;

    objc_initWeak(&location, v2);
    v13 = *(v2 + 2);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __20__GEOTileCache_init__block_invoke;
    v15[3] = &unk_1E7070E60;
    objc_copyWeak(&v16, &location);
    dispatch_source_set_event_handler(v13, v15);
    dispatch_activate(*(v2 + 2));
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __20__GEOTileCache_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _receivedMemoryNotification];
}

- (void)_receivedMemoryNotification
{
  reserved = self->_reserved;
  std::mutex::lock((reserved + 8));
  [(GEOTileCache *)self _evictWithMaxCost:*(self->_reserved + 18) >> 1 maxCapacity:*(self->_reserved + 17) >> 1];

  std::mutex::unlock((reserved + 8));
}

@end