@interface RSCamera
- (__n128)setIntrinsics:(__n128)intrinsics;
- (__n128)setPose:(__n128)pose;
- (__n128)setTransform:(__n128)transform;
- (uint64_t)setImageResolution:(double)resolution;
@end

@implementation RSCamera

- (__n128)setTransform:(__n128)transform
{
  result[1] = a2;
  result[2] = transform;
  result[3] = a4;
  result[4] = a5;
  return result;
}

- (__n128)setPose:(__n128)pose
{
  result[5] = a2;
  result[6] = pose;
  result[7] = a4;
  result[8] = a5;
  return result;
}

- (__n128)setIntrinsics:(__n128)intrinsics
{
  result[9] = a2;
  result[10] = intrinsics;
  result[11] = a4;
  return result;
}

- (uint64_t)setImageResolution:(double)resolution
{
  *(result + 192) = a2;
  *(result + 200) = resolution;
  return result;
}

@end