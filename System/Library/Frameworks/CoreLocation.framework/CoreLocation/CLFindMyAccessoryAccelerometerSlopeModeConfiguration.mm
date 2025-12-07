@interface CLFindMyAccessoryAccelerometerSlopeModeConfiguration
- (CLFindMyAccessoryAccelerometerSlopeModeConfiguration)initWithCoder:(id)coder;
- (CLFindMyAccessoryAccelerometerSlopeModeConfiguration)initWithThreshold:(float)threshold sampleCount:(unsigned __int8)count sampleRate:(unsigned __int8)rate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessoryAccelerometerSlopeModeConfiguration

- (CLFindMyAccessoryAccelerometerSlopeModeConfiguration)initWithThreshold:(float)threshold sampleCount:(unsigned __int8)count sampleRate:(unsigned __int8)rate
{
  countCopy = count;
  v9 = objc_opt_class();
  objc_msgSend_minimumThreshold(v9, v10, v11, v12);
  if (v13 > threshold)
  {
    return 0;
  }

  v14 = objc_opt_class();
  objc_msgSend_maximumThreshold(v14, v15, v16, v17);
  if (v18 < threshold)
  {
    return 0;
  }

  v19 = objc_opt_class();
  if (objc_msgSend_minimumSampleCount(v19, v20, v21, v22) > countCopy)
  {
    return 0;
  }

  v23 = objc_opt_class();
  if (objc_msgSend_maximumSampleCount(v23, v24, v25, v26) < countCopy)
  {
    return 0;
  }

  v28.receiver = self;
  v28.super_class = CLFindMyAccessoryAccelerometerSlopeModeConfiguration;
  result = [(CLFindMyAccessoryAccelerometerSlopeModeConfiguration *)&v28 init];
  if (result)
  {
    result->_threshold = threshold;
    result->_sampleCount = countCopy;
    result->_sampleRate = rate;
  }

  return result;
}

- (CLFindMyAccessoryAccelerometerSlopeModeConfiguration)initWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = CLFindMyAccessoryAccelerometerSlopeModeConfiguration;
  v6 = [(CLFindMyAccessoryAccelerometerSlopeModeConfiguration *)&v13 init];
  if (v6)
  {
    v6->_sampleCount = objc_msgSend_decodeIntForKey_(coder, v4, @"sampleCount", v5);
    objc_msgSend_decodeFloatForKey_(coder, v7, @"threshold", v8);
    v6->_threshold = v9;
    v6->_sampleRate = objc_msgSend_decodeIntForKey_(coder, v10, @"sampleRate", v11);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt_forKey_(coder, a2, self->_sampleCount, @"sampleCount");
  *&v5 = self->_threshold;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"threshold", v7, v5);
  sampleRate = self->_sampleRate;

  objc_msgSend_encodeInt_forKey_(coder, v8, sampleRate, @"sampleRate");
}

@end