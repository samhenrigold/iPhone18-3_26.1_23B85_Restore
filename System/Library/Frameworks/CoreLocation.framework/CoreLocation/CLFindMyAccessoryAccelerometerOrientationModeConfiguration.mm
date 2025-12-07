@interface CLFindMyAccessoryAccelerometerOrientationModeConfiguration
- (CLFindMyAccessoryAccelerometerOrientationModeConfiguration)initWithCoder:(id)coder;
- (CLFindMyAccessoryAccelerometerOrientationModeConfiguration)initWithThreshold:(unsigned int)threshold sleepDuration:(unsigned __int16)duration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessoryAccelerometerOrientationModeConfiguration

- (CLFindMyAccessoryAccelerometerOrientationModeConfiguration)initWithThreshold:(unsigned int)threshold sleepDuration:(unsigned __int16)duration
{
  v7.receiver = self;
  v7.super_class = CLFindMyAccessoryAccelerometerOrientationModeConfiguration;
  result = [(CLFindMyAccessoryAccelerometerOrientationModeConfiguration *)&v7 init];
  if (result)
  {
    result->_threshold = threshold;
    result->_sleepDuration_ms = duration;
  }

  return result;
}

- (CLFindMyAccessoryAccelerometerOrientationModeConfiguration)initWithCoder:(id)coder
{
  v6 = objc_msgSend_decodeIntForKey_(coder, a2, @"threshold", v3);
  v9 = objc_msgSend_decodeIntForKey_(coder, v7, @"sleepDuration", v8);

  return MEMORY[0x1EEE66B58](self, sel_initWithThreshold_sleepDuration_, v6, v9);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt_forKey_(coder, a2, self->_threshold, @"threshold");
  sleepDuration_ms = self->_sleepDuration_ms;

  objc_msgSend_encodeInt_forKey_(coder, v5, sleepDuration_ms, @"sleepDuration");
}

@end