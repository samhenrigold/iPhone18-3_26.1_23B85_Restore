@interface GEOPDMapsIdentifier
- (unint64_t)hash;
@end

@implementation GEOPDMapsIdentifier

- (unint64_t)hash
{
  [(GEOPDMapsIdentifier *)self readAll:1];
  shardedId = self->_shardedId;

  return [(GEOPDShardedId *)shardedId hash];
}

@end