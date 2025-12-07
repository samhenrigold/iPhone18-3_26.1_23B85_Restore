@interface GEOLogMsgStatePlaceCard
- (GEOLogMsgStatePlaceCard)init;
- (void)_readCommingledRichProviderIds;
- (void)dealloc;
@end

@implementation GEOLogMsgStatePlaceCard

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = GEOLogMsgStatePlaceCard;
  [(GEOLogMsgStatePlaceCard *)&v3 dealloc];
}

- (void)_readCommingledRichProviderIds
{
  if (self)
  {
    os_unfair_lock_lock((self + 144));
    if ((*(self + 156) & 0x200) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStatePlaceCardReadSpecified(self, *(self + 8), &_readCommingledRichProviderIds_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 144));
  }
}

- (GEOLogMsgStatePlaceCard)init
{
  v6.receiver = self;
  v6.super_class = GEOLogMsgStatePlaceCard;
  v2 = [(GEOLogMsgStatePlaceCard *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end