@interface BSUIBrandManager
- (BSUIBrandManager)initWithBrandType:(int64_t)type cachingEnabled:(BOOL)enabled;
- (BSUIBrandManager)initWithCachingEnabled:(BOOL)enabled cacheURL:(id)l;
- (BSUIBrandManager)initWithCachingEnabled:(BOOL)enabled cacheURL:(id)l brandDataSourceOpaqueWrapper:(id)wrapper;
@end

@implementation BSUIBrandManager

- (BSUIBrandManager)initWithBrandType:(int64_t)type cachingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (type == 1)
  {
    v7 = objc_alloc_init(BSUIMapKitBrandDataSourceObjcShim);
    opaqueWrapper = [(BSUIMapKitBrandDataSourceObjcShim *)v7 opaqueWrapper];
  }

  else
  {
    opaqueWrapper = 0;
  }

  v11.receiver = self;
  v11.super_class = BSUIBrandManager;
  v9 = [(BSBrandManager *)&v11 initWithBrandType:type cachingEnabled:enabledCopy brandDataSourceOpaqueWrapper:opaqueWrapper];

  return v9;
}

- (BSUIBrandManager)initWithCachingEnabled:(BOOL)enabled cacheURL:(id)l
{
  enabledCopy = enabled;
  lCopy = l;
  v7 = objc_alloc_init(BSUIMapKitBrandDataSourceObjcShim);
  opaqueWrapper = [(BSUIMapKitBrandDataSourceObjcShim *)v7 opaqueWrapper];
  v9 = [(BSUIBrandManager *)self initWithCachingEnabled:enabledCopy cacheURL:lCopy brandDataSourceOpaqueWrapper:opaqueWrapper];

  return v9;
}

- (BSUIBrandManager)initWithCachingEnabled:(BOOL)enabled cacheURL:(id)l brandDataSourceOpaqueWrapper:(id)wrapper
{
  v6.receiver = self;
  v6.super_class = BSUIBrandManager;
  return [(BSBrandManager *)&v6 initWithCachingEnabled:enabled cacheURL:l brandDataSourceOpaqueWrapper:wrapper];
}

@end