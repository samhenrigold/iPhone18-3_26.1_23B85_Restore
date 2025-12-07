@interface GEORouteInformation
- (GEORouteInformation)init;
- (os_unfair_lock_s)distance;
- (os_unfair_lock_s)duration;
- (os_unfair_lock_s)routeDescription;
- (os_unfair_lock_s)separator;
@end

@implementation GEORouteInformation

- (GEORouteInformation)init
{
  v6.receiver = self;
  v6.super_class = GEORouteInformation;
  v2 = [(GEORouteInformation *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (os_unfair_lock_s)duration
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 18);
    if ((selfCopy[19]._os_unfair_lock_opaque & 8) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteInformationReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readDuration_tags_48506);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 18);
    self = *&selfCopy[10]._os_unfair_lock_opaque;
  }

  return self;
}

- (os_unfair_lock_s)routeDescription
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 18);
    if ((selfCopy[19]._os_unfair_lock_opaque & 0x10) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteInformationReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readRouteDescription_tags_6842);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 18);
    self = *&selfCopy[12]._os_unfair_lock_opaque;
  }

  return self;
}

- (os_unfair_lock_s)separator
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 18);
    if ((selfCopy[19]._os_unfair_lock_opaque & 0x20) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteInformationReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readSeparator_tags_6843);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 18);
    self = *&selfCopy[14]._os_unfair_lock_opaque;
  }

  return self;
}

- (os_unfair_lock_s)distance
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 18);
    if ((selfCopy[19]._os_unfair_lock_opaque & 4) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteInformationReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readDistance_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 18);
    self = *&selfCopy[8]._os_unfair_lock_opaque;
  }

  return self;
}

@end