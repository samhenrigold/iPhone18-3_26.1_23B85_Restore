@interface AVAudioUnitTimeEffect
- (AVAudioUnitTimeEffect)initWithAudioComponentDescription:(AudioComponentDescription *)audioComponentDescription;
- (BOOL)bypass;
- (void)setBypass:(BOOL)bypass;
@end

@implementation AVAudioUnitTimeEffect

- (void)setBypass:(BOOL)bypass
{
  v3 = bypass;
  v5 = objc_msgSend_impl(self, a2);
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, v5);
  v6 = v3;
  (*(*self->super.super._impl + 144))(self->super.super._impl, 21, 0, 0, &v6, 4);
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }
}

- (BOOL)bypass
{
  v3 = objc_msgSend_impl(self, a2);
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, v3);
  v6 = 0;
  (*(*self->super.super._impl + 152))(self->super.super._impl, 21, 0, 0, &v6, 4);
  v4 = v6;
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  return v4 != 0;
}

- (AVAudioUnitTimeEffect)initWithAudioComponentDescription:(AudioComponentDescription *)audioComponentDescription
{
  v16 = *MEMORY[0x1E69E9840];
  if (audioComponentDescription->componentType != 1635083875)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      v9 = "AVAudioUnitTimeEffect.mm";
      v10 = 1024;
      v11 = 17;
      v12 = 2080;
      v13 = "[AVAudioUnitTimeEffect initWithAudioComponentDescription:]";
      v14 = 2080;
      v15 = "audioComponentDescription.componentType == kAudioUnitType_FormatConverter";
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "audioComponentDescription.componentType == kAudioUnitType_FormatConverter"}];
  }

  *buf = *&audioComponentDescription->componentType;
  *&buf[16] = audioComponentDescription->componentFlagsMask;
  v7.receiver = self;
  v7.super_class = AVAudioUnitTimeEffect;
  return [(AVAudioUnit *)&v7 initWithAudioComponentDescription:buf];
}

@end