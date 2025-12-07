@interface CALayer(PerspectiveAdditions)
- (uint64_t)setPerspectiveDistance:()PerspectiveAdditions;
@end

@implementation CALayer(PerspectiveAdditions)

- (uint64_t)setPerspectiveDistance:()PerspectiveAdditions
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  objc_msgSend_sublayerTransform(self, a2);
  *(&v12 + 1) = -1.0 / a3;
  v6[4] = v11;
  v6[5] = v12;
  v6[6] = v13;
  v6[7] = v14;
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  return [self setSublayerTransform:v6];
}

@end