@interface GEOMapFeatureRoad
- (BOOL)isTunnel;
- (double)roadWidth;
- (id)_attributes;
- (int)formOfWay;
@end

@implementation GEOMapFeatureRoad

- (BOOL)isTunnel
{
  _attributes = [(GEOMapFeatureRoad *)self _attributes];
  isTunnel = [_attributes isTunnel];

  return isTunnel;
}

- (id)_attributes
{
  feature = [(GEOMapFeatureRoad *)self feature];
  v2Feature = [feature feature];
  attributes = [v2Feature attributes];

  return attributes;
}

- (double)roadWidth
{
  feature = [(GEOMapFeatureRoad *)self feature];
  v3 = [feature roadWidth] * 0.01;

  return v3;
}

- (int)formOfWay
{
  feature = [(GEOMapFeatureRoad *)self feature];
  if (feature)
  {
    feature2 = [(GEOMapFeatureRoad *)self feature];
    formOfWay = [feature2 formOfWay];
  }

  else
  {
    formOfWay = 0;
  }

  return formOfWay;
}

@end