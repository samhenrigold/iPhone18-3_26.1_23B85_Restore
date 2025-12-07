@interface GEOGuidanceEvent
- (GEOARGuidance)arGuidance;
- (GEOGuidanceEvent)init;
- (GEOGuidanceImportanceMode)importanceInfo;
- (GEONavTrayGuidance)navTrayGuidance;
- (GEOSignGuidance)signGuidance;
- (GEOSpokenGuidance)spokenGuidance;
- (GEOVisualLaneGuidance)laneGuidance;
- (int)eventType;
- (void)_readArGuidance;
- (void)_readImportanceInfo;
- (void)_readJunctionView;
- (void)_readLaneGuidance;
- (void)_readNavTrayGuidance;
- (void)_readSignGuidance;
- (void)_readSpokenGuidance;
@end

@implementation GEOGuidanceEvent

- (void)_readSignGuidance
{
  if (self)
  {
    os_unfair_lock_lock((self + 104));
    if ((*(self + 158) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOGuidanceEventReadSpecified(self, *(self + 8), &_readSignGuidance_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 104));
  }
}

- (int)eventType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 0x80) != 0)
  {
    return self->_eventType;
  }

  else
  {
    return 0;
  }
}

- (GEOSignGuidance)signGuidance
{
  [(GEOGuidanceEvent *)self _readSignGuidance];
  signGuidance = self->_signGuidance;

  return signGuidance;
}

- (void)_readArGuidance
{
  if (self)
  {
    os_unfair_lock_lock((self + 104));
    if ((*(self + 158) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOGuidanceEventReadSpecified(self, *(self + 8), &_readArGuidance_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 104));
  }
}

- (void)_readSpokenGuidance
{
  if (self)
  {
    os_unfair_lock_lock((self + 104));
    if ((*(self + 158) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOGuidanceEventReadSpecified(self, *(self + 8), &_readSpokenGuidance_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 104));
  }
}

- (GEOSpokenGuidance)spokenGuidance
{
  [(GEOGuidanceEvent *)self _readSpokenGuidance];
  spokenGuidance = self->_spokenGuidance;

  return spokenGuidance;
}

- (GEOGuidanceImportanceMode)importanceInfo
{
  [(GEOGuidanceEvent *)self _readImportanceInfo];
  importanceInfo = self->_importanceInfo;

  return importanceInfo;
}

- (void)_readImportanceInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 104));
    if ((*(self + 158) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOGuidanceEventReadSpecified(self, *(self + 8), &_readImportanceInfo_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 104));
  }
}

- (GEOGuidanceEvent)init
{
  v6.receiver = self;
  v6.super_class = GEOGuidanceEvent;
  v2 = [(GEOGuidanceEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readJunctionView
{
  if (self)
  {
    os_unfair_lock_lock((self + 104));
    if ((*(self + 158) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOGuidanceEventReadSpecified(self, *(self + 8), &_readJunctionView_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 104));
  }
}

- (void)_readLaneGuidance
{
  if (self)
  {
    os_unfair_lock_lock((self + 104));
    if ((*(self + 158) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOGuidanceEventReadSpecified(self, *(self + 8), &_readLaneGuidance_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 104));
  }
}

- (void)_readNavTrayGuidance
{
  if (self)
  {
    os_unfair_lock_lock((self + 104));
    if ((*(self + 158) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOGuidanceEventReadSpecified(self, *(self + 8), &_readNavTrayGuidance_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 104));
  }
}

- (GEOARGuidance)arGuidance
{
  [(GEOGuidanceEvent *)self _readArGuidance];
  arGuidance = self->_arGuidance;

  return arGuidance;
}

- (GEOVisualLaneGuidance)laneGuidance
{
  [(GEOGuidanceEvent *)self _readLaneGuidance];
  laneGuidance = self->_laneGuidance;

  return laneGuidance;
}

- (GEONavTrayGuidance)navTrayGuidance
{
  [(GEOGuidanceEvent *)self _readNavTrayGuidance];
  navTrayGuidance = self->_navTrayGuidance;

  return navTrayGuidance;
}

@end