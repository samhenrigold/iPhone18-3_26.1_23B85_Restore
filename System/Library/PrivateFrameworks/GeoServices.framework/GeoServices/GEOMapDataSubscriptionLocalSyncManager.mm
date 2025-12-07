@interface GEOMapDataSubscriptionLocalSyncManager
- (id)_pairedDeviceSubscriptionStatesSummary;
@end

@implementation GEOMapDataSubscriptionLocalSyncManager

- (id)_pairedDeviceSubscriptionStatesSummary
{
  if (self)
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x3032000000;
    v6 = __Block_byref_object_copy__150215;
    v7 = __Block_byref_object_dispose__150216;
    v8 = 0;
    geo_isolate_sync();
    v1 = v4[5];
    _Block_object_dispose(&v3, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void __80__GEOMapDataSubscriptionLocalSyncManager__pairedDeviceSubscriptionStatesSummary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (!v3)
  {
    if (*(v2 + 88))
    {
      v4 = [GEOPairedDeviceFilePaths urlFor:1 forDevice:?];
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4];
      v6 = [[GEOPairedDeviceSubscriptionStatesSummary alloc] initWithData:v5];
      v7 = *(a1 + 32);
      v8 = *(v7 + 104);
      *(v7 + 104) = v6;

      if (!*(*(a1 + 32) + 104))
      {
        v9 = objc_alloc_init(GEOPairedDeviceSubscriptionStatesSummary);
        v10 = *(a1 + 32);
        v11 = *(v10 + 104);
        *(v10 + 104) = v9;
      }

      v3 = *(*(a1 + 32) + 104);
    }

    else
    {
      v3 = 0;
    }
  }

  v12 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v12, v3);
}

@end