@interface AVAudioUnitDelay
- (AVAudioUnitDelay)init;
- (NSTimeInterval)delayTime;
- (float)feedback;
- (float)lowPassCutoff;
- (float)wetDryMix;
- (void)setDelayTime:(NSTimeInterval)delayTime;
- (void)setFeedback:(float)feedback;
- (void)setLowPassCutoff:(float)lowPassCutoff;
- (void)setWetDryMix:(float)wetDryMix;
@end

@implementation AVAudioUnitDelay

- (float)lowPassCutoff
{
  v3 = objc_msgSend_impl(self, a2);
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, v3);
  [(AVAudioUnit *)self valueForParam:3];
  v5 = v4;
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  return v5;
}

- (float)feedback
{
  v3 = objc_msgSend_impl(self, a2);
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, v3);
  [(AVAudioUnit *)self valueForParam:2];
  v5 = v4;
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  return v5;
}

- (NSTimeInterval)delayTime
{
  v3 = objc_msgSend_impl(self, a2);
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, v3);
  [(AVAudioUnit *)self valueForParam:1];
  v5 = v4;
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  return v5;
}

- (float)wetDryMix
{
  v3 = objc_msgSend_impl(self, a2);
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, v3);
  [(AVAudioUnit *)self valueForParam:0];
  v5 = v4;
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  return v5;
}

- (void)setLowPassCutoff:(float)lowPassCutoff
{
  v5 = objc_msgSend_impl(self, a2);
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, v5);
  *&v6 = lowPassCutoff;
  [(AVAudioUnit *)self setValue:3 forParam:v6];
  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  if (v9 == 1)
  {
    v7 = v8;

    std::recursive_mutex::unlock(v7);
  }
}

- (void)setFeedback:(float)feedback
{
  v5 = objc_msgSend_impl(self, a2);
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, v5);
  *&v6 = feedback;
  [(AVAudioUnit *)self setValue:2 forParam:v6];
  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  if (v9 == 1)
  {
    v7 = v8;

    std::recursive_mutex::unlock(v7);
  }
}

- (void)setDelayTime:(NSTimeInterval)delayTime
{
  v5 = objc_msgSend_impl(self, a2);
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, v5);
  *&v6 = delayTime;
  [(AVAudioUnit *)self setValue:1 forParam:v6];
  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  if (v9 == 1)
  {
    v7 = v8;

    std::recursive_mutex::unlock(v7);
  }
}

- (void)setWetDryMix:(float)wetDryMix
{
  v5 = objc_msgSend_impl(self, a2);
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, v5);
  *&v6 = wetDryMix;
  [(AVAudioUnit *)self setValue:0 forParam:v6];
  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  if (v9 == 1)
  {
    v7 = v8;

    std::recursive_mutex::unlock(v7);
  }
}

- (AVAudioUnitDelay)init
{
  v4 = xmmword_1BA6CF330;
  v5 = 0;
  v3.receiver = self;
  v3.super_class = AVAudioUnitDelay;
  return [(AVAudioUnitEffect *)&v3 initWithAudioComponentDescription:&v4];
}

@end