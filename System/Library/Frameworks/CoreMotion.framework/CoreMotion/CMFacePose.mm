@interface CMFacePose
- (__n128)setRotation:(__n128)rotation;
@end

@implementation CMFacePose

- (__n128)setRotation:(__n128)rotation
{
  result[8] = a2;
  result[9] = rotation;
  result[10] = a4;
  return result;
}

@end