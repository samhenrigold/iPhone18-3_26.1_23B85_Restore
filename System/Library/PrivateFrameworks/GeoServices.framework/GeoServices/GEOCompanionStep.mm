@interface GEOCompanionStep
- (GEOCompanionStep)init;
- (void)_readGuidanceEvents;
- (void)_readInstructionWithAlternatives;
@end

@implementation GEOCompanionStep

- (GEOCompanionStep)init
{
  v6.receiver = self;
  v6.super_class = GEOCompanionStep;
  v2 = [(GEOCompanionStep *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readInstructionWithAlternatives
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 157) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOCompanionStepReadSpecified(self, *(self + 8), &_readInstructionWithAlternatives_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (void)_readGuidanceEvents
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 157) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOCompanionStepReadSpecified(self, *(self + 8), &_readGuidanceEvents_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

@end