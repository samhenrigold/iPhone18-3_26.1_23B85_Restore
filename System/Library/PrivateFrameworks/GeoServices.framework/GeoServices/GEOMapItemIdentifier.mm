@interface GEOMapItemIdentifier
- (unint64_t)muid;
@end

@implementation GEOMapItemIdentifier

- (unint64_t)muid
{
  shardedId = [(GEOPDMapsIdentifier *)self->_mapsIdentifier shardedId];
  if ([shardedId hasMuid])
  {
    shardedId2 = [(GEOPDMapsIdentifier *)self->_mapsIdentifier shardedId];
    muid = [shardedId2 muid];
  }

  else
  {
    muid = 0;
  }

  return muid;
}

@end