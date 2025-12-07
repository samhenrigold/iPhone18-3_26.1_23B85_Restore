@interface GEOPDTemplateData
- (GEOPDTemplateData)init;
- (id)footer;
- (id)subtitle;
- (void)_readFooter;
- (void)_readSubtitle;
@end

@implementation GEOPDTemplateData

- (GEOPDTemplateData)init
{
  v6.receiver = self;
  v6.super_class = GEOPDTemplateData;
  v2 = [(GEOPDTemplateData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (id)footer
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDTemplateData *)self _readFooter];
    self = selfCopy[3];
    v1 = vars8;
  }

  return self;
}

- (void)_readFooter
{
  os_unfair_lock_lock((self + 88));
  if ((*(self + 96) & 4) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDTemplateDataReadSpecified(self, *(self + 8), &_readFooter_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 88));
}

- (id)subtitle
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDTemplateData *)self _readSubtitle];
    self = selfCopy[7];
    v1 = vars8;
  }

  return self;
}

- (void)_readSubtitle
{
  os_unfair_lock_lock((self + 88));
  if ((*(self + 96) & 0x40) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDTemplateDataReadSpecified(self, *(self + 8), &_readSubtitle_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 88));
}

@end