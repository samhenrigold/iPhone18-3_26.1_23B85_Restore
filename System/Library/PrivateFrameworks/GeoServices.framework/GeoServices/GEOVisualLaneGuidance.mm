@interface GEOVisualLaneGuidance
- (GEOVisualLaneGuidance)init;
- (NSMutableArray)instructions;
- (NSMutableArray)titles;
- (void)_readInstructions;
- (void)_readTitles;
@end

@implementation GEOVisualLaneGuidance

- (void)_readTitles
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 64) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOVisualLaneGuidanceReadSpecified(self, *(self + 8), &_readTitles_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (NSMutableArray)instructions
{
  [(GEOVisualLaneGuidance *)self _readInstructions];
  instructions = self->_instructions;

  return instructions;
}

- (void)_readInstructions
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 64) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOVisualLaneGuidanceReadSpecified(self, *(self + 8), &_readInstructions_tags_9602);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (NSMutableArray)titles
{
  [(GEOVisualLaneGuidance *)self _readTitles];
  titles = self->_titles;

  return titles;
}

- (GEOVisualLaneGuidance)init
{
  v6.receiver = self;
  v6.super_class = GEOVisualLaneGuidance;
  v2 = [(GEOVisualLaneGuidance *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end