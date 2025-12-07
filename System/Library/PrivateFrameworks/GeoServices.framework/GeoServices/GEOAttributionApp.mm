@interface GEOAttributionApp
- (GEOAttributionApp)init;
- (NSMutableArray)handledSchemes;
- (void)_readHandledSchemes;
@end

@implementation GEOAttributionApp

- (GEOAttributionApp)init
{
  v6.receiver = self;
  v6.super_class = GEOAttributionApp;
  v2 = [(GEOAttributionApp *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readHandledSchemes
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 60) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAttributionAppReadSpecified(self, *(self + 8), &_readHandledSchemes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (NSMutableArray)handledSchemes
{
  [(GEOAttributionApp *)self _readHandledSchemes];
  handledSchemes = self->_handledSchemes;

  return handledSchemes;
}

@end