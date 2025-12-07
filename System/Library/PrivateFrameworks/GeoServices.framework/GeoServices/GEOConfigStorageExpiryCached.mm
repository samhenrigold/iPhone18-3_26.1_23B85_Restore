@interface GEOConfigStorageExpiryCached
- (void)resync;
@end

@implementation GEOConfigStorageExpiryCached

- (void)resync
{
  v3 = +[GEOConfigStorageClient shared];
  options = self->_options;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__GEOConfigStorageExpiryCached_resync__block_invoke;
  v5[3] = &unk_1E7070C68;
  v5[4] = self;
  [v3 getExpiringKeys:options result:v5];
}

void __38__GEOConfigStorageExpiryCached_resync__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock_with_options();
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;
  v6 = v3;

  os_unfair_lock_unlock((*(a1 + 32) + 16));
}

@end