@interface GEOPDRoadAccessInfo
- (id)roadAccessPoints;
@end

@implementation GEOPDRoadAccessInfo

- (id)roadAccessPoints
{
  if (self)
  {
    self = self[2];
    v1 = vars8;
  }

  return self;
}

@end