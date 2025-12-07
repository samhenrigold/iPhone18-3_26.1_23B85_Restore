@interface GEOAPSessionData
- (GEOSessionID)sessionId;
@end

@implementation GEOAPSessionData

- (GEOSessionID)sessionId
{
  p_sessionId = &self->_sessionId;
  high = self->_sessionId._high;
  low = p_sessionId->_low;
  result._low = low;
  result._high = high;
  return result;
}

@end