@interface GEOConfigStorageCached
- (void)resync;
@end

@implementation GEOConfigStorageCached

- (void)resync
{
  p_isResyncing = &self->_isResyncing;
  if ((atomic_exchange(&self->_isResyncing._Value, 1u) & 1) == 0)
  {
    [(GEOConfigStorageReadOnly *)self->_direct resync];
    v4 = +[GEOConfigStorageClient shared];
    v6 = [v4 getAllKeysAndValuesForOptions:self->_options];

    os_unfair_recursive_lock_lock_with_options();
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&self->_cachedValues, v5);
    os_unfair_recursive_lock_unlock();
    atomic_store(0, p_isResyncing);
  }
}

@end