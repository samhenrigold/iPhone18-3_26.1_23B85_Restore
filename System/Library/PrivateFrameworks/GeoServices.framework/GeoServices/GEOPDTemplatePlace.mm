@interface GEOPDTemplatePlace
- (GEOPDTemplatePlace)init;
- (id)templateDatas;
- (void)_readTemplateDatas;
@end

@implementation GEOPDTemplatePlace

- (GEOPDTemplatePlace)init
{
  v6.receiver = self;
  v6.super_class = GEOPDTemplatePlace;
  v2 = [(GEOPDTemplatePlace *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (id)templateDatas
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDTemplatePlace *)self _readTemplateDatas];
    self = selfCopy[4];
    v1 = vars8;
  }

  return self;
}

- (void)_readTemplateDatas
{
  os_unfair_lock_lock((self + 48));
  if ((*(self + 56) & 8) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDTemplatePlaceReadSpecified(self, *(self + 8), &_readTemplateDatas_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 48));
}

@end