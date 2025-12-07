@interface AVAudioUnitVarispeed
- (AVAudioUnitVarispeed)init;
- (float)rate;
- (void)setRate:(float)rate;
@end

@implementation AVAudioUnitVarispeed

- (float)rate
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

- (void)setRate:(float)rate
{
  v5 = objc_msgSend_impl(self, a2);
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, v5);
  *&v6 = rate;
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

- (AVAudioUnitVarispeed)init
{
  v4 = xmmword_1BA6CF340;
  v5 = 0;
  v3.receiver = self;
  v3.super_class = AVAudioUnitVarispeed;
  return [(AVAudioUnitTimeEffect *)&v3 initWithAudioComponentDescription:&v4];
}

@end