@interface AVAudioUnitTimePitch
- (AVAudioUnitTimePitch)init;
- (float)overlap;
- (float)pitch;
- (float)rate;
- (void)setOverlap:(float)overlap;
- (void)setPitch:(float)pitch;
- (void)setRate:(float)rate;
@end

@implementation AVAudioUnitTimePitch

- (float)overlap
{
  v3 = objc_msgSend_impl(self, a2);
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, v3);
  [(AVAudioUnit *)self valueForParam:4];
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

- (float)pitch
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

- (void)setOverlap:(float)overlap
{
  v5 = objc_msgSend_impl(self, a2);
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, v5);
  *&v6 = overlap;
  [(AVAudioUnit *)self setValue:4 forParam:v6];
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

- (void)setPitch:(float)pitch
{
  v5 = objc_msgSend_impl(self, a2);
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, v5);
  *&v6 = pitch;
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

- (AVAudioUnitTimePitch)init
{
  v4 = xmmword_1BA6CF380;
  v5 = 0;
  v3.receiver = self;
  v3.super_class = AVAudioUnitTimePitch;
  return [(AVAudioUnitTimeEffect *)&v3 initWithAudioComponentDescription:&v4];
}

@end