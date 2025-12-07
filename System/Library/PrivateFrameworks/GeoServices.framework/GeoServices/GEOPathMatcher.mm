@interface GEOPathMatcher
- (id)_cachedSegments;
@end

@implementation GEOPathMatcher

- (id)_cachedSegments
{
  if (self)
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x3032000000;
    v6 = __Block_byref_object_copy__115970;
    v7 = __Block_byref_object_dispose__115971;
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

void __33__GEOPathMatcher__cachedSegments__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end