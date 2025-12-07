@interface GEOCompanionDriveStep
- (GEOCompanionDriveStep)init;
- (void)_readManeuverNames;
- (void)clearJunctionElements;
- (void)dealloc;
@end

@implementation GEOCompanionDriveStep

- (GEOCompanionDriveStep)init
{
  v6.receiver = self;
  v6.super_class = GEOCompanionDriveStep;
  v2 = [(GEOCompanionDriveStep *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readManeuverNames
{
  if (self)
  {
    os_unfair_lock_lock((self + 104));
    if ((*(self + 128) & 0x400) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOCompanionDriveStepReadSpecified(self, *(self + 8), &_readManeuverNames_tags_205);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 104));
  }
}

- (void)dealloc
{
  [(GEOCompanionDriveStep *)self clearJunctionElements];
  v3.receiver = self;
  v3.super_class = GEOCompanionDriveStep;
  [(GEOCompanionDriveStep *)&v3 dealloc];
}

- (void)clearJunctionElements
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 0x20u;
  os_unfair_lock_unlock(&self->_readerLock);
  *&self->_flags |= 0x2000u;
  self->_junctionElementsSpace = 0;
  self->_junctionElementsCount = 0;
  free(self->_junctionElements);
  self->_junctionElements = 0;
}

@end