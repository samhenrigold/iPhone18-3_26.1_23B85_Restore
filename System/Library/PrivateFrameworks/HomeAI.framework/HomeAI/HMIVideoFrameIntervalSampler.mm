@interface HMIVideoFrameIntervalSampler
- (HMIVideoFrameIntervalSampler)initWithInterval:(id *)interval;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer;
@end

@implementation HMIVideoFrameIntervalSampler

- (HMIVideoFrameIntervalSampler)initWithInterval:(id *)interval
{
  v7.receiver = self;
  v7.super_class = HMIVideoFrameIntervalSampler;
  result = [(HMIVideoFrameIntervalSampler *)&v7 init];
  if (result)
  {
    var3 = interval->var3;
    *&result->_interval.value = *&interval->var0;
    result->_interval.epoch = var3;
    v6 = MEMORY[0x277CC0898];
    result->_firstPTS.epoch = *(MEMORY[0x277CC0898] + 16);
    *&result->_firstPTS.value = *v6;
    result->_lastSampledIntervalIndex = -1;
  }

  return result;
}

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  memset(&v18, 0, sizeof(v18));
  CMSampleBufferGetPresentationTimeStamp(&v18, buffer);
  if ((v18.flags & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = MEMORY[0x277CCACA8];
    time = v18;
    v11 = CMTimeCopyDescription(0, &time);
    v12 = [v10 stringWithFormat:v11];
    v13 = [v9 exceptionWithName:? reason:? userInfo:?];
    v14 = v13;

    objc_exception_throw(v13);
  }

  p_firstPTS = &self->_firstPTS;
  if ((self->_firstPTS.flags & 1) == 0)
  {
    *&p_firstPTS->value = *&v18.value;
    self->_firstPTS.epoch = v18.epoch;
  }

  lhs = v18;
  *&rhs.value = *&p_firstPTS->value;
  rhs.epoch = self->_firstPTS.epoch;
  CMTimeSubtract(&time, &lhs, &rhs);
  lhs = self->_interval;
  v5 = CMTimeDivide();
  lastSampledIntervalIndex = self->_lastSampledIntervalIndex;
  delegate = [(HMIVideoFrameSampler *)self delegate];
  v8 = delegate;
  if (v5 <= lastSampledIntervalIndex)
  {
    if (objc_opt_respondsToSelector())
    {
      [v8 frameSampler:? didDropFrame:?];
    }
  }

  else
  {
    [delegate frameSampler:? didSampleFrame:?];

    self->_lastSampledIntervalIndex = v5;
  }
}

@end