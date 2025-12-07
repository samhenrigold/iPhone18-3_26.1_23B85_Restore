@interface GEODaemon
- (NSSet)peers;
@end

@implementation GEODaemon

- (NSSet)peers
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__178494;
  v12 = __Block_byref_object_dispose__178495;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  geo_isolate_sync();
  v2 = v9[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __18__GEODaemon_peers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end