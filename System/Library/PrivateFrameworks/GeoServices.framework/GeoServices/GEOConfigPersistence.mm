@interface GEOConfigPersistence
- (id)getAllExpiringKeys;
@end

@implementation GEOConfigPersistence

- (id)getAllExpiringKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  keyExpiryCache = self->_keyExpiryCache;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__GEOConfigPersistence_getAllExpiringKeys__block_invoke;
  v5[3] = &unk_1E704E448;
  v5[4] = &v6;
  [(_GEOConfigCache *)keyExpiryCache withCache:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__GEOConfigPersistence_getAllExpiringKeys__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end