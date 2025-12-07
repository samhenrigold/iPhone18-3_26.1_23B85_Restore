@interface AVAudioUnitGenerator
- (AVAudioUnitGenerator)initWithAudioComponentDescription:(AudioComponentDescription *)audioComponentDescription;
- (BOOL)bypass;
- (void)setBypass:(BOOL)bypass;
@end

@implementation AVAudioUnitGenerator

- (void)setBypass:(BOOL)bypass
{
  v3 = bypass;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super._impl);
  v5 = v3;
  (*(*self->super.super._impl + 144))(self->super.super._impl, 21, 0, 0, &v5, 4);
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }
}

- (BOOL)bypass
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super._impl);
  v5 = 0;
  (*(*self->super.super._impl + 152))(self->super.super._impl, 21, 0, 0, &v5, 4);
  v3 = v5;
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }

  return v3 != 0;
}

- (AVAudioUnitGenerator)initWithAudioComponentDescription:(AudioComponentDescription *)audioComponentDescription
{
  v17 = *MEMORY[0x1E69E9840];
  if (audioComponentDescription->componentType != 1635084142 && audioComponentDescription->componentType != 1635086951)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      v10 = "AVAudioUnitGenerator.mm";
      v11 = 1024;
      v12 = 24;
      v13 = 2080;
      v14 = "[AVAudioUnitGenerator initWithAudioComponentDescription:]";
      v15 = 2080;
      v16 = "(audioComponentDescription.componentType == kAudioUnitType_Generator) || (audioComponentDescription.componentType == kAudioUnitType_RemoteGenerator)";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "(audioComponentDescription.componentType == kAudioUnitType_Generator) || (audioComponentDescription.componentType == kAudioUnitType_RemoteGenerator)"}];
  }

  *buf = *&audioComponentDescription->componentType;
  *&buf[16] = audioComponentDescription->componentFlagsMask;
  v8.receiver = self;
  v8.super_class = AVAudioUnitGenerator;
  return [(AVAudioUnit *)&v8 initWithAudioComponentDescription:buf];
}

@end