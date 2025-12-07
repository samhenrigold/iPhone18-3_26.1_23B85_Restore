@interface AVAudioCompressedBuffer
- (AVAudioCompressedBuffer)initWithFormat:(AVAudioFormat *)format packetCapacity:(AVAudioPacketCount)packetCapacity maximumPacketSize:(NSInteger)maximumPacketSize;
- (void)data;
- (void)setPacketCount:(AVAudioPacketCount)packetCount;
@end

@implementation AVAudioCompressedBuffer

- (void)setPacketCount:(AVAudioPacketCount)packetCount
{
  v19 = *MEMORY[0x1E69E9840];
  impl = self->super._impl;
  if (impl[5] < packetCount)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v8 = "AVAEInternal.h";
      v9 = 1024;
      v10 = 71;
      v11 = 2080;
      v12 = "AVAudioBuffer.mm";
      v13 = 1024;
      v14 = 637;
      v15 = 2080;
      v16 = "[AVAudioCompressedBuffer setPacketCount:]";
      v17 = 2080;
      v18 = "length <= _imp->_packetCapacity";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "length <= _imp->_packetCapacity"}];
    impl = self->super._impl;
  }

  impl[4] = packetCount;
}

- (void)data
{
  impl = self->super._impl;
  if (*(impl + 56) == 1)
  {
    v3 = impl[6] + 48;
  }

  else
  {
    v3 = impl[12];
  }

  return *(v3 + 16);
}

- (AVAudioCompressedBuffer)initWithFormat:(AVAudioFormat *)format packetCapacity:(AVAudioPacketCount)packetCapacity maximumPacketSize:(NSInteger)maximumPacketSize
{
  v40 = *MEMORY[0x1E69E9840];
  streamDescription = [(AVAudioFormat *)format streamDescription];
  v10 = *&streamDescription->mBitsPerChannel;
  v11 = *&streamDescription->mBytesPerPacket;
  inSpecifier = *&streamDescription->mSampleRate;
  v25 = v11;
  v26 = v10;
  if (DWORD2(inSpecifier) == 1634492791 || DWORD2(inSpecifier) == 1970037111 || DWORD2(inSpecifier) == 1819304813)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v14 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v29 = "AVAEInternal.h";
      v30 = 1024;
      v31 = 71;
      v32 = 2080;
      v33 = "AVAudioBuffer.mm";
      v34 = 1024;
      v35 = 595;
      v36 = 2080;
      v37 = "[AVAudioCompressedBuffer initWithFormat:packetCapacity:maximumPacketSize:]";
      v38 = 2080;
      v39 = "!(fmt.IsLinearPCM() || fmt.mFormatID == kAudioFormatALaw || fmt.mFormatID == kAudioFormatULaw)";
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "!(fmt.IsLinearPCM() || fmt.mFormatID == kAudioFormatALaw || fmt.mFormatID == kAudioFormatULaw)"}];
  }

  v15 = v25;
  if (v25)
  {
    v16 = v25;
  }

  else
  {
    v16 = maximumPacketSize;
  }

  if (!v16)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v17 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v29 = "AVAEInternal.h";
      v30 = 1024;
      v31 = 71;
      v32 = 2080;
      v33 = "AVAudioBuffer.mm";
      v34 = 1024;
      v35 = 599;
      v36 = 2080;
      v37 = "[AVAudioCompressedBuffer initWithFormat:packetCapacity:maximumPacketSize:]";
      v38 = 2080;
      v39 = "maximumPacketSize != 0";
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "maximumPacketSize != 0"}];
  }

  v23.receiver = self;
  v23.super_class = AVAudioCompressedBuffer;
  packetCapacity = [(AVAudioBuffer *)&v23 initWithFormat:format byteCapacity:v16 * packetCapacity];
  v19 = packetCapacity;
  if (packetCapacity)
  {
    *(packetCapacity->super._impl + 6) = v16;
    *(packetCapacity->super._impl + 5) = packetCapacity;
    *(packetCapacity->super._impl + 4) = 0;
    if (v15)
    {
      v20 = 0;
      v21 = 8;
LABEL_29:
      *(v19->super._impl + v21) = v20;
      return v19;
    }

    *(packetCapacity->super._impl + 1) = malloc_type_calloc(packetCapacity, 0x10uLL, 0x1000040451B5BE8uLL);
    ioPropertyDataSize = 4;
    *buf = 0;
    if (!AudioFormatGetProperty(0x66646570u, 0x28u, &inSpecifier, &ioPropertyDataSize, buf) && *buf)
    {
      v20 = malloc_type_calloc(packetCapacity, 0x10uLL, 0x1000040451B5BE8uLL);
      v21 = 128;
      goto LABEL_29;
    }
  }

  return v19;
}

@end