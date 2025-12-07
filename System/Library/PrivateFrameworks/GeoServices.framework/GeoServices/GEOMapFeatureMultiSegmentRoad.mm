@interface GEOMapFeatureMultiSegmentRoad
- (id)feature;
@end

@implementation GEOMapFeatureMultiSegmentRoad

- (id)feature
{
  firstObject = [(NSArray *)self->_roadSegments firstObject];
  feature = [firstObject feature];

  return feature;
}

@end