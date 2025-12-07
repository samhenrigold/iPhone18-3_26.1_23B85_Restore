@interface AVAudioBuffer
- (AVAudioBuffer)initWithFormat:(id)format byteCapacity:(unsigned int)capacity;
- (AVAudioBuffer)initWithPCMFormat:(id)format byteCapacity:(unsigned int)capacity bufferListNoCopy:(const AudioBufferList *)copy deallocator:(id)deallocator;
- (AudioBufferList)mutableAudioBufferList;
- (const)audioBufferList;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unsigned)byteLength;
- (void)dealloc;
- (void)setByteLength:(unsigned int)length;
@end

@implementation AVAudioBuffer

- (AudioBufferList)mutableAudioBufferList
{
  impl = self->_impl;
  if ((*(impl + 88) & 1) == 0)
  {
    if (*(impl + 56) == 1)
    {
      v5 = (*(impl + 6) + 48);
    }

    else
    {
      v5 = *(impl + 12);
    }

    std::vector<char>::vector[abi:ne200100](&__p, (16 * *v5) | 8);
  }

  if (*(impl + 56) == 1)
  {
    v4 = (*(impl + 6) + 48);
  }

  else
  {
    v4 = *(impl + 12);
  }

  v6 = (16 * *v4) | 8;
  v7 = *(impl + 8);
  v8 = *(impl + 9);
  v9 = v6 - (v8 - v7);
  if (v6 <= v8 - v7)
  {
    if (v6 < v8 - v7)
    {
      v8 = &v7[v6];
      *(impl + 9) = &v7[v6];
    }
  }

  else
  {
    v10 = *(impl + 10);
    if (v10 - v8 < v9)
    {
      operator new();
    }

    v11 = &v7[v6];
    bzero(*(impl + 9), v9);
    *(impl + 9) = v11;
    v8 += v9;
    v7 = *(impl + 8);
  }

  memcpy(v7, v4, v8 - v7);
  return *(self->_impl + 8);
}

- (const)audioBufferList
{
  impl = self->_impl;
  if (*(impl + 56) == 1)
  {
    return (*(impl + 6) + 48);
  }

  else
  {
    return *(impl + 12);
  }
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {

    v4 = self->_impl;
    if (v4[56] == 1)
    {
      ExtendedAudioBufferList_Destroy();
      v4[56] = 0;
    }

    else if (self->_deallocator)
    {
      std::vector<char>::vector[abi:ne200100](&__p, (16 * **(v4 + 12)) | 8);
    }

    free(*(self->_impl + 1));
    free(*(self->_impl + 16));
    v5 = self->_impl;
    if (*(v5 + 88) == 1)
    {
      v6 = *(v5 + 8);
      v7 = self->_impl;
      if (v6)
      {
        *(v5 + 9) = v6;
        operator delete(v6);
        v7 = self->_impl;
      }

      *(v5 + 88) = 0;
      v5 = v7;
    }

    if (*(v5 + 144) == 1)
    {
      unilaterally_billed_shared_memory::~unilaterally_billed_shared_memory(v5 + 17);
      *(v5 + 144) = 0;
      v5 = self->_impl;
      if (!v5)
      {
        goto LABEL_23;
      }

      if (*(v5 + 144))
      {
        unilaterally_billed_shared_memory::~unilaterally_billed_shared_memory(v5 + 17);
      }
    }

    if (*(v5 + 120) == 1)
    {
      v8 = *(v5 + 12);
      if (v8)
      {
        *(v5 + 13) = v8;
        operator delete(v8);
      }
    }

    if (*(v5 + 88) == 1)
    {
      v9 = *(v5 + 8);
      if (v9)
      {
        *(v5 + 9) = v9;
        operator delete(v9);
      }
    }

    if (*(v5 + 56) == 1)
    {
      ExtendedAudioBufferList_Destroy();
    }

    MEMORY[0x1BFAF5800](v5, 0x10B2C40D4A92739);
  }

LABEL_23:
  v10.receiver = self;
  v10.super_class = AVAudioBuffer;
  [(AVAudioBuffer *)&v10 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[AVAudioBuffer allocWithZone:?]byteCapacity:"initWithFormat:byteCapacity:", *self->_impl, *(self->_impl + 10)];
  impl = v4->_impl;
  v6 = self->_impl;
  if (*(v6 + 56) == 1)
  {
    v7 = (v6[6] + 48);
  }

  else
  {
    v7 = v6[12];
  }

  if (*(impl + 56) == 1)
  {
    v8 = impl[6] + 48;
  }

  else
  {
    v8 = impl[12];
  }

  if (*v7)
  {
    v9 = 0;
    v10 = (v8 + 16);
    v11 = (v7 + 4);
    do
    {
      v12 = *(v11 - 1);
      *(v10 - 1) = v12;
      v14 = *v10;
      v10 += 2;
      v13 = v14;
      v15 = *v11;
      v11 += 2;
      memcpy(v13, v15, v12);
      ++v9;
    }

    while (v9 < *v7);
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@@%p: %d/%d bytes>", NSStringFromClass(v4), self, -[AVAudioBuffer byteLength](self, "byteLength"), -[AVAudioBuffer byteCapacity](self, "byteCapacity")];
}

- (void)setByteLength:(unsigned int)length
{
  v28 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl[10] < length)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v17 = "AVAEInternal.h";
      v18 = 1024;
      v19 = 71;
      v20 = 2080;
      v21 = "AVAudioBuffer.mm";
      v22 = 1024;
      v23 = 203;
      v24 = 2080;
      v25 = "[AVAudioBuffer setByteLength:]";
      v26 = 2080;
      v27 = "length <= _imp->_byteCapacity";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "length <= _imp->_byteCapacity"}];
    impl = self->_impl;
  }

  if (*(impl + 56) == 1)
  {
    v7 = (*(impl + 6) + 48);
  }

  else
  {
    v7 = *(impl + 12);
  }

  v8 = *v7;
  if (v8)
  {
    v9 = (v8 + 3) & 0x1FFFFFFFCLL;
    v10 = vdupq_n_s64(v8 - 1);
    v11 = xmmword_1BA6CF300;
    v12 = xmmword_1BA6CF310;
    v13 = v7 + 11;
    v14 = vdupq_n_s64(4uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v10, v12));
      if (vuzp1_s16(v15, *v10.i8).u8[0])
      {
        *(v13 - 8) = length;
      }

      if (vuzp1_s16(v15, *&v10).i8[2])
      {
        *(v13 - 4) = length;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11))).i32[1])
      {
        *v13 = length;
        v13[4] = length;
      }

      v11 = vaddq_s64(v11, v14);
      v12 = vaddq_s64(v12, v14);
      v13 += 16;
      v9 -= 4;
    }

    while (v9);
  }
}

- (unsigned)byteLength
{
  impl = self->_impl;
  if (*(impl + 56) == 1)
  {
    v3 = impl[6] + 48;
  }

  else
  {
    v3 = impl[12];
  }

  return *(v3 + 12);
}

- (AVAudioBuffer)initWithPCMFormat:(id)format byteCapacity:(unsigned int)capacity bufferListNoCopy:(const AudioBufferList *)copy deallocator:(id)deallocator
{
  v30 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AVAudioBuffer;
  if ([(AVAudioBuffer *)&v18 init])
  {
    streamDescription = [format streamDescription];
    v9 = *(streamDescription + 16);
    v15 = *streamDescription;
    v16 = v9;
    v17 = *(streamDescription + 32);
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v10 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136316418;
        *&buf[1] = "AVAEInternal.h";
        v20 = 1024;
        v21 = 71;
        v22 = 2080;
        v23 = "AVAudioBuffer.mm";
        v24 = 1024;
        v25 = 157;
        v26 = 2080;
        v27 = "[AVAudioBuffer initWithPCMFormat:byteCapacity:bufferListNoCopy:deallocator:]";
        v28 = 2080;
        v29 = "isPCMFormat(fmt)";
        _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "isPCMFormat(fmt)"}];
    }

    if ((BYTE12(v15) & 0x20) != 0)
    {
      v11 = HIDWORD(v16);
    }

    else
    {
      v11 = 1;
    }

    if (!copy)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v12 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136316418;
        *&buf[1] = "AVAEInternal.h";
        v20 = 1024;
        v21 = 71;
        v22 = 2080;
        v23 = "AVAudioBuffer.mm";
        v24 = 1024;
        v25 = 159;
        v26 = 2080;
        v27 = "[AVAudioBuffer initWithPCMFormat:byteCapacity:bufferListNoCopy:deallocator:]";
        v28 = 2080;
        v29 = "bufferList != nullptr";
        _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "bufferList != nullptr"}];
    }

    if (copy->mNumberBuffers != v11)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v13 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136316418;
        *&buf[1] = "AVAEInternal.h";
        v20 = 1024;
        v21 = 71;
        v22 = 2080;
        v23 = "AVAudioBuffer.mm";
        v24 = 1024;
        v25 = 160;
        v26 = 2080;
        v27 = "[AVAudioBuffer initWithPCMFormat:byteCapacity:bufferListNoCopy:deallocator:]";
        v28 = 2080;
        v29 = "bufferList->mNumberBuffers == numBuffers";
        _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "bufferList->mNumberBuffers == numBuffers"}];
    }

    operator new();
  }

  return 0;
}

- (AVAudioBuffer)initWithFormat:(id)format byteCapacity:(unsigned int)capacity
{
  v6.receiver = self;
  v6.super_class = AVAudioBuffer;
  if ([(AVAudioBuffer *)&v6 init])
  {
    [format streamDescription];
    operator new();
  }

  return 0;
}

@end