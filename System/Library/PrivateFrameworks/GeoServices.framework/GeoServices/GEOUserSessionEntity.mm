@interface GEOUserSessionEntity
- (GEOSessionID)sessionID;
@end

@implementation GEOUserSessionEntity

- (GEOSessionID)sessionID
{
  low = self->_sessionID._low;
  high = self->_sessionID._high;
  result._low = low;
  result._high = high;
  return result;
}

@end