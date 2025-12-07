@interface GEOMultiSectionFeature
- (int)formOfWay;
- (unsigned)roadWidth;
@end

@implementation GEOMultiSectionFeature

- (unsigned)roadWidth
{
  roadFeature = self->_roadFeature;
  if (roadFeature)
  {
    return roadFeature[74];
  }

  else
  {
    return 0;
  }
}

- (int)formOfWay
{
  roadFeature = self->_roadFeature;
  if (roadFeature)
  {
    return roadFeature[152];
  }

  else
  {
    return 0;
  }
}

@end