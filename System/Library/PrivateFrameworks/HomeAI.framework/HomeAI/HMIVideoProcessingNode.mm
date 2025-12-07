@interface HMIVideoProcessingNode
- (void)finish;
- (void)finishWithCompletionHandler:(id)handler;
- (void)flush;
- (void)flushAsync;
- (void)handleAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)handleVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer;
@end

@implementation HMIVideoProcessingNode

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v15 = *MEMORY[0x277D85DE8];
  MediaType = HMICMSampleBufferGetMediaType(buffer);
  if (MediaType == 1936684398)
  {

    [(HMIVideoProcessingNode *)self handleAudioSampleBuffer:?];
  }

  else if (MediaType == 1986618469)
  {

    [(HMIVideoProcessingNode *)self handleVideoSampleBuffer:?];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMICMSampleBufferFormattedDescription(buffer, 0);
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Ignoring %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)handleVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:v5];
  v7 = [v3 exceptionWithName:? reason:? userInfo:?];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)handleAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:v5];
  v7 = [v3 exceptionWithName:? reason:? userInfo:?];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)finish
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 stringWithFormat:v4];
  v6 = [v2 exceptionWithName:? reason:? userInfo:?];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x277CBEAD8];
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:v7];
  v9 = [v5 exceptionWithName:? reason:? userInfo:?];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)flush
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 stringWithFormat:v4];
  v6 = [v2 exceptionWithName:? reason:? userInfo:?];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)flushAsync
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 stringWithFormat:v4];
  v6 = [v2 exceptionWithName:? reason:? userInfo:?];
  v7 = v6;

  objc_exception_throw(v6);
}

@end