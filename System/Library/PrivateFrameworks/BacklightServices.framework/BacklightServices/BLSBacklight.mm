@interface BLSBacklight
+ (id)defaultBacklightProxy;
+ (id)sharedBacklight;
+ (void)setDefaultBacklightProxy:(id)proxy;
- (BLSBacklight)init;
@end

@implementation BLSBacklight

+ (id)sharedBacklight
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__BLSBacklight_sharedBacklight__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedBacklight_onceToken != -1)
  {
    dispatch_once(&sharedBacklight_onceToken, block);
  }

  v2 = sharedBacklight___sharedBacklight;

  return v2;
}

uint64_t __31__BLSBacklight_sharedBacklight__block_invoke(uint64_t a1)
{
  sharedBacklight___sharedBacklight = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BLSBacklight)init
{
  v6.receiver = self;
  v6.super_class = BLSBacklight;
  v2 = [(BLSBacklight *)&v6 init];
  if (v2)
  {
    v3 = +[BLSBacklight defaultBacklightProxy];
    backlightProxy = v2->_backlightProxy;
    v2->_backlightProxy = v3;
  }

  return v2;
}

+ (id)defaultBacklightProxy
{
  objc_opt_self();
  os_unfair_lock_lock(&_classLock_0);
  v1 = _defaultBacklightProxy;
  if (!v1)
  {
    v2 = +[BLSRuntime isHostProcess];
    v3 = off_278428410;
    if (!v2)
    {
      v3 = off_278428478;
    }

    v4 = objc_alloc_init(*v3);
    v5 = _defaultBacklightProxy;
    _defaultBacklightProxy = v4;

    v1 = v4;
  }

  os_unfair_lock_unlock(&_classLock_0);

  return v1;
}

+ (void)setDefaultBacklightProxy:(id)proxy
{
  proxyCopy = proxy;
  os_unfair_lock_lock(&_classLock_0);
  v5 = _defaultBacklightProxy;
  v6 = v5;
  if (!v5)
  {
    v7 = bls_backlight_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BLSBacklight setDefaultBacklightProxy:v7];
    }

    goto LABEL_10;
  }

  if (!proxyCopy)
  {
    v7 = bls_backlight_log(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21FE25000, v7, OS_LOG_TYPE_DEFAULT, "BLSBacklightProxy defaultBacklightProxy reset - should only occur during unit testing", buf, 2u);
    }

LABEL_10:

    objc_storeStrong(&_defaultBacklightProxy, proxy);
    os_unfair_lock_unlock(&_classLock_0);
    goto LABEL_11;
  }

  objc_storeStrong(&_defaultBacklightProxy, proxy);
  os_unfair_lock_unlock(&_classLock_0);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"attempting to replace backlightProxy:%@ which does not respond to replaceWithBacklightProxy:", v6}];
  }

  [v6 replaceWithBacklightProxy:proxyCopy];
LABEL_11:
}

@end