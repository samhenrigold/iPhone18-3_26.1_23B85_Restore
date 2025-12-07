@interface HMIVideoFrameSampler
- (HMIVideoFrameSamplerDelegate)delegate;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer;
@end

@implementation HMIVideoFrameSampler

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:v5];
  v7 = [v3 exceptionWithName:? reason:? userInfo:?];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMIVideoFrameSamplerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end