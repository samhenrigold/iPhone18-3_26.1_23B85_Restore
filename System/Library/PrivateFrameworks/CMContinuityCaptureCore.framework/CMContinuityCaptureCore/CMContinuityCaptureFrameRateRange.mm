@interface CMContinuityCaptureFrameRateRange
+ (id)frameRateRangeWithMinRate:(unsigned int)rate maxFrameRate:(unsigned int)frameRate;
- (CMContinuityCaptureFrameRateRange)initWithMinFrameRate:(unsigned int)rate maxFrameRate:(unsigned int)frameRate;
@end

@implementation CMContinuityCaptureFrameRateRange

+ (id)frameRateRangeWithMinRate:(unsigned int)rate maxFrameRate:(unsigned int)frameRate
{
  v4 = [objc_alloc(objc_opt_class()) initWithMinFrameRate:? maxFrameRate:?];

  return v4;
}

- (CMContinuityCaptureFrameRateRange)initWithMinFrameRate:(unsigned int)rate maxFrameRate:(unsigned int)frameRate
{
  v10.receiver = self;
  v10.super_class = CMContinuityCaptureFrameRateRange;
  v4 = [(CMContinuityCaptureFrameRateRange *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    minFrameRate = v4->_minFrameRate;
    v4->_minFrameRate = v5;

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    maxFrameRate = v4->_maxFrameRate;
    v4->_maxFrameRate = v7;
  }

  return v4;
}

@end