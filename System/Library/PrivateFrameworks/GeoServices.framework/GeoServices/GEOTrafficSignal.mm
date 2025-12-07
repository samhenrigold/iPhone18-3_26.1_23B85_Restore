@interface GEOTrafficSignal
- (GEOLatLng)position;
- (GEOTrafficSignal)init;
- (NSString)identifier;
- (void)_readIdentifier;
- (void)_readPosition;
@end

@implementation GEOTrafficSignal

- (void)_readPosition
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 60) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOTrafficSignalReadSpecified(self, *(self + 8), &_readPosition_tags_8823);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (GEOTrafficSignal)init
{
  v6.receiver = self;
  v6.super_class = GEOTrafficSignal;
  v2 = [(GEOTrafficSignal *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (GEOLatLng)position
{
  [(GEOTrafficSignal *)self _readPosition];
  position = self->_position;

  return position;
}

- (NSString)identifier
{
  [(GEOTrafficSignal *)self _readIdentifier];
  identifier = self->_identifier;

  return identifier;
}

- (void)_readIdentifier
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 60) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOTrafficSignalReadSpecified(self, *(self + 8), &_readIdentifier_tags_8822);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

@end