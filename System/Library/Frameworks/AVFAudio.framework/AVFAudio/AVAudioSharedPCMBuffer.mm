@interface AVAudioSharedPCMBuffer
- (AVAudioSharedBufferToken)sharedBufferToken;
- (AVAudioSharedPCMBuffer)initWithPCMFormat:(id)format frameCapacity:(unsigned int)capacity;
- (AVAudioSharedPCMBuffer)initWithPCMFormat:(id)format sharedBufferToken:(id)token;
@end

@implementation AVAudioSharedPCMBuffer

- (AVAudioSharedBufferToken)sharedBufferToken
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [AVAudioSharedBufferToken alloc];
  v4 = *(self->super.super._impl + 17);
  token = 0;
  v5 = task_create_identity_token(*MEMORY[0x1E69E9A60], &token);
  if (v5)
  {
    if (AVSharedMemoryLog(void)::once != -1)
    {
      dispatch_once(&AVSharedMemoryLog(void)::once, &__block_literal_global_1092);
    }

    v6 = *AVSharedMemoryLog(void)::category;
    if (os_log_type_enabled(*AVSharedMemoryLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "unilaterally_billed_shared_memory.mm";
      v14 = 1024;
      v15 = 131;
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d unilaterally_billed_shared_memory - error on task_create_identity_token: %u", buf, 0x18u);
    }

    v7 = 0;
  }

  else
  {
    v7 = token;
  }

  v10 = 0;
  v8 = [(AVAudioSharedBufferToken *)v3 initWithSurface:v4 taskToken:v7];
  caulk::mach::mach_port::~mach_port(&v10);
  return v8;
}

- (AVAudioSharedPCMBuffer)initWithPCMFormat:(id)format sharedBufferToken:(id)token
{
  v25 = *MEMORY[0x1E69E9840];
  streamDescription = [format streamDescription];
  v5 = *(streamDescription + 16);
  v10 = *streamDescription;
  v11 = v5;
  v12 = *(streamDescription + 32);
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v14 = "AVAEInternal.h";
      v15 = 1024;
      v16 = 71;
      v17 = 2080;
      v18 = "AVAudioBuffer.mm";
      v19 = 1024;
      v20 = 706;
      v21 = 2080;
      v22 = "[AVAudioSharedPCMBuffer initWithPCMFormat:sharedBufferToken:]";
      v23 = 2080;
      v24 = "isPCMFormat(fmt)";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "isPCMFormat(fmt)"}];
  }

  if ((BYTE12(v10) & 0x20) != 0)
  {
    v7 = HIDWORD(v11);
  }

  else
  {
    v7 = 1;
  }

  buf[0] = 0;
  std::vector<char>::vector[abi:ne200100](&__p, (16 * v7) | 8, buf);
}

- (AVAudioSharedPCMBuffer)initWithPCMFormat:(id)format frameCapacity:(unsigned int)capacity
{
  v24 = *MEMORY[0x1E69E9840];
  streamDescription = [format streamDescription];
  v5 = *(streamDescription + 16);
  v9 = *streamDescription;
  v10 = v5;
  v11 = *(streamDescription + 32);
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
      v14 = 1024;
      v15 = 71;
      v16 = 2080;
      v17 = "AVAudioBuffer.mm";
      v18 = 1024;
      v19 = 671;
      v20 = 2080;
      v21 = "[AVAudioSharedPCMBuffer initWithPCMFormat:frameCapacity:]";
      v22 = 2080;
      v23 = "isPCMFormat(fmt)";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "isPCMFormat(fmt)"}];
  }

  if ((BYTE12(v9) & 0x20) != 0)
  {
    v7 = HIDWORD(v10);
  }

  else
  {
    v7 = 1;
  }

  v12[0] = 0;
  std::vector<char>::vector[abi:ne200100](buf, (16 * v7) | 8, v12);
}

@end