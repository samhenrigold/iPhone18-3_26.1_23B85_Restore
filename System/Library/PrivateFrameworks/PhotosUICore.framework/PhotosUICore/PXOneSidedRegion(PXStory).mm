@interface PXOneSidedRegion(PXStory)
- (void)initWithEdge:()PXStory tiltedInset:rect:;
@end

@implementation PXOneSidedRegion(PXStory)

- (void)initWithEdge:()PXStory tiltedInset:rect:
{
  v10 = 0.0;
  if (a10 <= 3)
  {
    v10 = dbl_1A5381C30[a10];
  }

  __sincos_stret(v10);
  PXRectGetCenter();
}

@end