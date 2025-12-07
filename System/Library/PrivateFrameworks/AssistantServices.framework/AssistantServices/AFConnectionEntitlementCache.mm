@interface AFConnectionEntitlementCache
+ (id)sharedCache;
- (AFConnectionEntitlementCache)init;
- (BOOL)hasEntitlement:(id)entitlement forPID:(int)d;
- (void)cacheEntitlement:(id)entitlement forPID:(int)d bundleID:(id)iD;
@end

@implementation AFConnectionEntitlementCache

- (void)cacheEntitlement:(id)entitlement forPID:(int)d bundleID:(id)iD
{
  v5 = *&d;
  iDCopy = iD;
  cache = self->_cache;
  v9 = MEMORY[0x1E696AD98];
  entitlementCopy = entitlement;
  v11 = [v9 numberWithInt:v5];
  [(NSMutableDictionary *)cache setObject:entitlementCopy forKey:v11];

  v12 = [(NSMutableDictionary *)self->_bundleIDToPIDMap objectForKey:iDCopy];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v5];
    v14 = [v12 isEqual:v13];

    if ((v14 & 1) == 0)
    {
      [(NSMutableDictionary *)self->_cache removeObjectForKey:v12];
      bundleIDToPIDMap = self->_bundleIDToPIDMap;
      v16 = [MEMORY[0x1E696AD98] numberWithInt:v5];
      [(NSMutableDictionary *)bundleIDToPIDMap setObject:v16 forKey:iDCopy];
    }
  }
}

- (BOOL)hasEntitlement:(id)entitlement forPID:(int)d
{
  v4 = *&d;
  cache = self->_cache;
  v6 = MEMORY[0x1E696AD98];
  entitlementCopy = entitlement;
  v8 = [v6 numberWithInt:v4];
  v9 = [(NSMutableDictionary *)cache objectForKey:v8];
  LOBYTE(v6) = objc_msgSend_isEqualToString_(v9);

  return v6;
}

- (AFConnectionEntitlementCache)init
{
  v8.receiver = self;
  v8.super_class = AFConnectionEntitlementCache;
  v2 = [(AFConnectionEntitlementCache *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    bundleIDToPIDMap = v2->_bundleIDToPIDMap;
    v2->_bundleIDToPIDMap = v5;
  }

  return v2;
}

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    dispatch_once(&sharedCache_onceToken, &__block_literal_global_411);
  }

  v3 = sharedCache_sCache;

  return v3;
}

void __43__AFConnectionEntitlementCache_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(AFConnectionEntitlementCache);
  v1 = sharedCache_sCache;
  sharedCache_sCache = v0;
}

@end