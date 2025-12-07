@interface VGHRTFDepthCalibrationData
- (__n128)setIntrinsicMatrix:(__n128)matrix;
@end

@implementation VGHRTFDepthCalibrationData

- (__n128)setIntrinsicMatrix:(__n128)matrix
{
  result[2] = a2;
  result[3] = matrix;
  result[4] = a4;
  return result;
}

@end