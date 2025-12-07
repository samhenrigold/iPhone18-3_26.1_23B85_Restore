@interface GEOComposedDrivingRouteStep
- (id)evInfo;
@end

@implementation GEOComposedDrivingRouteStep

- (id)evInfo
{
  composedRoute = [(GEOComposedRouteStep *)self composedRoute];
  mutableData = [composedRoute mutableData];
  v5 = [mutableData evInfoForStepID:{-[GEOComposedRouteStep stepID](self, "stepID")}];

  evInfo = v5;
  if (!v5)
  {
    evInfo = self->_evInfo;
  }

  v7 = evInfo;

  return evInfo;
}

@end