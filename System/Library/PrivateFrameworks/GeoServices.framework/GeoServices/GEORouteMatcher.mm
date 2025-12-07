@interface GEORouteMatcher
- (void)_startRouteMatch;
@end

@implementation GEORouteMatcher

- (void)_startRouteMatch
{
  array = [MEMORY[0x1E695DF70] array];
  candidateRouteMatches = self->_candidateRouteMatches;
  self->_candidateRouteMatches = array;
}

@end