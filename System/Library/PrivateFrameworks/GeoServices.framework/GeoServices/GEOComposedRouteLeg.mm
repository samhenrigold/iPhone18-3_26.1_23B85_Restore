@interface GEOComposedRouteLeg
- (GEOComposedWaypointDisplayInfo)destinationDisplayInfo;
- (_NSRange)stepRange;
@end

@implementation GEOComposedRouteLeg

- (_NSRange)stepRange
{
  length = self->_stepRange.length;
  location = self->_stepRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (GEOComposedWaypointDisplayInfo)destinationDisplayInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_route);
  mutableData = [WeakRetained mutableData];
  v5 = [mutableData destinationDisplayInfoForLeg:{-[GEOComposedRouteLeg legIndex](self, "legIndex")}];

  return v5;
}

@end