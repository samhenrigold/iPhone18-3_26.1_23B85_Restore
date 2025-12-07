@interface GEODirectionsRequestFeedback
- (GEODirectionsRequestFeedback)init;
@end

@implementation GEODirectionsRequestFeedback

- (GEODirectionsRequestFeedback)init
{
  v6.receiver = self;
  v6.super_class = GEODirectionsRequestFeedback;
  v2 = [(GEODirectionsRequestFeedback *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end