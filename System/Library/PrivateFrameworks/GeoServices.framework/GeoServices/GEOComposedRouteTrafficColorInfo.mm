@interface GEOComposedRouteTrafficColorInfo
- (id)description;
@end

@implementation GEOComposedRouteTrafficColorInfo

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = (self->_routeCoordinate.offset * 100.0);
  offsetMeters = self->_offsetMeters;
  index = self->_routeCoordinate.index;
  v6 = [(GEOComposedRouteTrafficColorInfo *)self _stringForColor:self->_color];
  v7 = [v2 stringWithFormat:@"[%u.%d | %gm] %@", index, v3, *&offsetMeters, v6];

  return v7;
}

@end