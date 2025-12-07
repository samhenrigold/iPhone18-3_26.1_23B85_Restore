@interface GEOSearchAttributionSource
- (GEOSearchAttributionSource)init;
- (id)localizedAttributions;
- (id)supportedComponentActions;
- (os_unfair_lock_s)sourceIdentifier;
- (os_unfair_lock_s)webBaseActionURL;
- (void)_readAttributionApps;
- (void)_readAttributionRequirements;
- (void)_readLocalizedAttributions;
- (void)_readSupportedComponentActions;
@end

@implementation GEOSearchAttributionSource

- (GEOSearchAttributionSource)init
{
  v6.receiver = self;
  v6.super_class = GEOSearchAttributionSource;
  v2 = [(GEOSearchAttributionSource *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (id)localizedAttributions
{
  if (self)
  {
    selfCopy = self;
    [(GEOSearchAttributionSource *)self _readLocalizedAttributions];
    self = selfCopy[11];
    v1 = vars8;
  }

  return self;
}

- (void)_readLocalizedAttributions
{
  os_unfair_lock_lock((self + 128));
  if ((*(self + 140) & 0x100) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOSearchAttributionSourceReadSpecified(self, *(self + 8), &_readLocalizedAttributions_tags_392);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 128));
}

- (os_unfair_lock_s)sourceIdentifier
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 32);
    if ((selfCopy[35]._os_unfair_lock_opaque & 0x200) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOSearchAttributionSourceReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readSourceIdentifier_tags_115289);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 32);
    self = *&selfCopy[24]._os_unfair_lock_opaque;
  }

  return self;
}

- (void)_readAttributionRequirements
{
  os_unfair_lock_lock((self + 128));
  if ((*(self + 140) & 0x10) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOSearchAttributionSourceReadSpecified(self, *(self + 8), &_readAttributionRequirements_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 128));
}

- (void)_readAttributionApps
{
  os_unfair_lock_lock((self + 128));
  if ((*(self + 140) & 0x80) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOSearchAttributionSourceReadSpecified(self, *(self + 8), &_readAttributionApps_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 128));
}

- (id)supportedComponentActions
{
  [(GEOSearchAttributionSource *)self _readSupportedComponentActions];
  v2 = *(self + 104);

  return v2;
}

- (void)_readSupportedComponentActions
{
  os_unfair_lock_lock((self + 128));
  if ((*(self + 140) & 0x400) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOSearchAttributionSourceReadSpecified(self, *(self + 8), &_readSupportedComponentActions_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 128));
}

- (os_unfair_lock_s)webBaseActionURL
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 32);
    if ((selfCopy[35]._os_unfair_lock_opaque & 0x800) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOSearchAttributionSourceReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readWebBaseActionURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 32);
    self = *&selfCopy[28]._os_unfair_lock_opaque;
  }

  return self;
}

@end