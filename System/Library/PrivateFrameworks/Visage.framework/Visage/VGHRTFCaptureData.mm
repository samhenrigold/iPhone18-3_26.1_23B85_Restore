@interface VGHRTFCaptureData
- (__n128)setColorIntrinsics:(__n128)intrinsics;
@end

@implementation VGHRTFCaptureData

- (__n128)setColorIntrinsics:(__n128)intrinsics
{
  result[3] = a2;
  result[4] = intrinsics;
  result[5] = a4;
  return result;
}

@end