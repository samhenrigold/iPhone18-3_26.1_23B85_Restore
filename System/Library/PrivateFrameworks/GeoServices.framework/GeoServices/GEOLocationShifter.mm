@interface GEOLocationShifter
+ (BOOL)isLocationShiftEnabled;
+ (Class)proxyClass;
+ (_GEOLocationShifterProxy)_proxy;
- (GEOLocationShifter)init;
- (void)dealloc;
@end

@implementation GEOLocationShifter

void __28__GEOLocationShifter__proxy__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init([*(a1 + 32) proxyClass]);
  v2 = _shifterProxy;
  _shifterProxy = v1;
}

+ (_GEOLocationShifterProxy)_proxy
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__GEOLocationShifter__proxy__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_proxy_onceToken != -1)
  {
    dispatch_once(&_proxy_onceToken, block);
  }

  v2 = _shifterProxy;

  return v2;
}

+ (Class)proxyClass
{
  v3 = _proxyClass_35669;
  if (_proxyClass_35669)
  {
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (GEOLocationShifter)init
{
  v19.receiver = self;
  v19.super_class = GEOLocationShifter;
  v2 = [(GEOLocationShifter *)&v19 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__countryProvidersDidChange_ name:@"GEOCountryConfigurationProvidersDidChangeNotification" object:0];
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    locationsToShift = v2->_locationsToShift;
    v2->_locationsToShift = v4;

    _proxy = [objc_opt_class() _proxy];
    queue = [_proxy queue];
    queue = v2->_queue;
    v2->_queue = queue;

    _proxy2 = [objc_opt_class() _proxy];
    memoryCache = [_proxy2 memoryCache];
    shiftFunctionCache = v2->_shiftFunctionCache;
    v2->_shiftFunctionCache = memoryCache;

    v12 = +[GEOResourceManifestManager modernManager];
    global_queue = geo_get_global_queue();
    [v12 addTileGroupObserver:v2 queue:global_queue];

    objc_initWeak(&location, v2);
    v14 = v2->_queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __26__GEOLocationShifter_init__block_invoke;
    v16[3] = &unk_1E7070108;
    objc_copyWeak(&v17, &location);
    notify_register_dispatch("com.apple.Preferences.ResetPrivacyWarningsNotification", &v2->_resetPrivacyToken, v14, v16);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (BOOL)isLocationShiftEnabled
{
  _proxy = [self _proxy];
  isLocationShiftEnabled = [_proxy isLocationShiftEnabled];

  return isLocationShiftEnabled;
}

- (void)dealloc
{
  notify_cancel(self->_resetPrivacyToken);
  v3 = +[GEOResourceManifestManager modernManager];
  [v3 removeTileGroupObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = GEOLocationShifter;
  [(GEOLocationShifter *)&v5 dealloc];
}

@end