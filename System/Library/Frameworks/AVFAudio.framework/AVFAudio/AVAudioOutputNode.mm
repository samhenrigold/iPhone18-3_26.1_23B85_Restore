@interface AVAudioOutputNode
- (BOOL)setManualRenderingPCMFormat:(id)format maximumFrameCount:(unsigned int)count;
- (id)manualRenderingFormat;
- (unsigned)manualRenderingMaximumFrameCount;
@end

@implementation AVAudioOutputNode

- (unsigned)manualRenderingMaximumFrameCount
{
  v23 = *MEMORY[0x1E69E9840];
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->super.super._impl);
  if (![(AVAudioIONode *)self isInManualRenderingMode])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v3 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v12 = "AVAEInternal.h";
      v13 = 1024;
      v14 = 71;
      v15 = 2080;
      v16 = "AVAudioIONode.mm";
      v17 = 1024;
      v18 = 152;
      v19 = 2080;
      v20 = "[AVAudioOutputNode manualRenderingMaximumFrameCount]";
      v21 = 2080;
      v22 = "self.isInManualRenderingMode";
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "self.isInManualRenderingMode"}];
  }

  v4 = (*(*self->super.super._impl + 40))(self->super.super._impl);
  v5 = (*(*v4 + 152))(v4);
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

- (id)manualRenderingFormat
{
  v22 = *MEMORY[0x1E69E9840];
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super._impl);
  if (![(AVAudioIONode *)self isInManualRenderingMode])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v3 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v11 = "AVAEInternal.h";
      v12 = 1024;
      v13 = 71;
      v14 = 2080;
      v15 = "AVAudioIONode.mm";
      v16 = 1024;
      v17 = 144;
      v18 = 2080;
      v19 = "[AVAudioOutputNode manualRenderingFormat]";
      v20 = 2080;
      v21 = "self.isInManualRenderingMode";
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "self.isInManualRenderingMode"}];
  }

  v4 = [(AVAudioNode *)self outputFormatForBus:0];
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }

  return v4;
}

- (BOOL)setManualRenderingPCMFormat:(id)format maximumFrameCount:(unsigned int)count
{
  v4 = *&count;
  v27 = *MEMORY[0x1E69E9840];
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v11, self->super.super._impl);
  if (![(AVAudioIONode *)self isInManualRenderingMode])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v16 = "AVAEInternal.h";
      v17 = 1024;
      v18 = 71;
      v19 = 2080;
      v20 = "AVAudioIONode.mm";
      v21 = 1024;
      v22 = 128;
      v23 = 2080;
      v24 = "[AVAudioOutputNode setManualRenderingPCMFormat:maximumFrameCount:]";
      v25 = 2080;
      v26 = "self.isInManualRenderingMode";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "self.isInManualRenderingMode"}];
  }

  if ([-[AVAudioOutputNode manualRenderingFormat](self "manualRenderingFormat")] && -[AVAudioOutputNode manualRenderingMaximumFrameCount](self, "manualRenderingMaximumFrameCount") == v4)
  {
    goto LABEL_11;
  }

  if ((*(*self->super.super._impl + 64))(self->super.super._impl, 0, format))
  {
    v8 = (*(*self->super.super._impl + 40))(self->super.super._impl);
    (*(*v8 + 160))(v8, v4);
LABEL_11:
    v9 = 1;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:
  if (v14 == 1)
  {
    std::recursive_mutex::unlock(v13);
  }

  if (v12 == 1)
  {
    std::recursive_mutex::unlock(v11);
  }

  return v9;
}

@end