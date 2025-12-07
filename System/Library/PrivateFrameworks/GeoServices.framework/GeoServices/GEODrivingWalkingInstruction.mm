@interface GEODrivingWalkingInstruction
- (GEODrivingWalkingInstruction)init;
- (id)normalCommands;
- (os_unfair_lock_s)title;
- (void)_readNormalCommands;
@end

@implementation GEODrivingWalkingInstruction

- (void)_readNormalCommands
{
  os_unfair_lock_lock((self + 80));
  if ((*(self + 84) & 0x10) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEODrivingWalkingInstructionReadSpecified(self, *(self + 8), &_readNormalCommands_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 80));
}

- (GEODrivingWalkingInstruction)init
{
  v6.receiver = self;
  v6.super_class = GEODrivingWalkingInstruction;
  v2 = [(GEODrivingWalkingInstruction *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (os_unfair_lock_s)title
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 20);
    if ((selfCopy[21]._os_unfair_lock_opaque & 0x20) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEODrivingWalkingInstructionReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readTitle_tags_1704);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 20);
    self = *&selfCopy[14]._os_unfair_lock_opaque;
  }

  return self;
}

- (id)normalCommands
{
  if (self)
  {
    selfCopy = self;
    [(GEODrivingWalkingInstruction *)self _readNormalCommands];
    self = selfCopy[6];
    v1 = vars8;
  }

  return self;
}

@end