@interface _GEORegionalResourcesTileLoader
- (_GEORegionalResourcesTileLoader)init;
- (void)cancel;
- (void)dealloc;
@end

@implementation _GEORegionalResourcesTileLoader

- (_GEORegionalResourcesTileLoader)init
{
  v6.receiver = self;
  v6.super_class = _GEORegionalResourcesTileLoader;
  v2 = [(_GEORegionalResourcesTileLoader *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  [(_GEORegionalResourcesTileLoader *)self cancel];
  v3.receiver = self;
  v3.super_class = _GEORegionalResourcesTileLoader;
  [(_GEORegionalResourcesTileLoader *)&v3 dealloc];
}

- (void)cancel
{
  os_unfair_lock_lock_with_options();
  resourceLoader = self->_resourceLoader;
  self->_resourceLoader = 0;
  v4 = resourceLoader;

  os_unfair_lock_unlock(&self->_lock);
  [(GEOResourceLoader *)v4 cancel];
}

@end