@interface GEOAdditionalEnabledMarkets
+ (GEOAdditionalEnabledMarkets)additionalEnabledMarkets;
+ (id)_additionalEnabledTransitMarkets;
- (GEOAdditionalEnabledMarkets)init;
- (unint64_t)hash;
- (void)clearTransitMarkets;
- (void)reload;
@end

@implementation GEOAdditionalEnabledMarkets

+ (GEOAdditionalEnabledMarkets)additionalEnabledMarkets
{
  if (additionalEnabledMarkets_once[0] != -1)
  {
    dispatch_once(additionalEnabledMarkets_once, &__block_literal_global_115532);
  }

  v3 = additionalEnabledMarkets_singleton;

  return v3;
}

uint64_t __71__GEOAdditionalEnabledMarkets_GEOProtoExtras__additionalEnabledMarkets__block_invoke()
{
  v0 = objc_alloc_init(GEOAdditionalEnabledMarkets);
  v1 = additionalEnabledMarkets_singleton;
  additionalEnabledMarkets_singleton = v0;

  [additionalEnabledMarkets_singleton reload];
  v2 = MEMORY[0x1E69E96A0];

  return notify_register_dispatch("com.apple.GeoServices.additionalEnabledMarketsChanged", additionalEnabledMarkets_changedNotificationToken, v2, &__block_literal_global_7_115534);
}

- (GEOAdditionalEnabledMarkets)init
{
  v6.receiver = self;
  v6.super_class = GEOAdditionalEnabledMarkets;
  v2 = [(GEOAdditionalEnabledMarkets *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)reload
{
  v13 = *MEMORY[0x1E69E9840];
  [(GEOAdditionalEnabledMarkets *)self clearTransitMarkets];
  _additionalEnabledTransitMarkets = [objc_opt_class() _additionalEnabledTransitMarkets];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [_additionalEnabledTransitMarkets countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(_additionalEnabledTransitMarkets);
        }

        [(GEOAdditionalEnabledMarkets *)self addTransitMarket:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [_additionalEnabledTransitMarkets countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)clearTransitMarkets
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 4u;
  os_unfair_lock_unlock(&self->_readerLock);
  *&self->_flags |= 8u;
  transitMarkets = self->_transitMarkets;

  [(NSMutableArray *)transitMarkets removeAllObjects];
}

+ (id)_additionalEnabledTransitMarkets
{
  v2 = _getValue(360, &GeoServicesConfig_AdditionalTransitMarkets_Metadata, 1, 0, 0, 0);
  v3 = [v2 count];
  if (v3)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__GEOAdditionalEnabledMarkets_GEOProtoExtras___additionalEnabledTransitMarkets__block_invoke;
  v6[3] = &unk_1E706F118;
  v4 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (unint64_t)hash
{
  [(GEOAdditionalEnabledMarkets *)self readAll:1];
  v3 = [(NSMutableArray *)self->_transitMarkets hash];
  return [(NSMutableArray *)self->_offlineMarkets hash]^ v3;
}

@end