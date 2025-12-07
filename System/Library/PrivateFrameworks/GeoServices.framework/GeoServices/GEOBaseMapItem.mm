@interface GEOBaseMapItem
- (int)referenceFrame;
@end

@implementation GEOBaseMapItem

- (int)referenceFrame
{
  [(GEOBaseMapItem *)self coordinate];
  if ([GEOLocationShifter isLocationShiftRequiredForCoordinate:?])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end