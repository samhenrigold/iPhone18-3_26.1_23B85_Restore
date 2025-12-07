@interface AVAudioNode
- (AUAudioUnit)AUAudioUnit;
- (AVAudio3DPoint)position;
- (AVAudioEngine)engine;
- (AVAudioFormat)inputFormatForBus:(AVAudioNodeBus)bus;
- (AVAudioFormat)outputFormatForBus:(AVAudioNodeBus)bus;
- (AVAudioNode)initWithImpl:(void *)impl;
- (AVAudioTime)lastRenderTime;
- (BOOL)resetImpl:(void *)impl;
- (BOOL)setInputFormat:(id)format forBus:(unint64_t)bus;
- (BOOL)setOutputFormat:(id)format forBus:(unint64_t)bus;
- (NSTimeInterval)latency;
- (NSTimeInterval)outputPresentationLatency;
- (NSUInteger)numberOfInputs;
- (NSUInteger)numberOfOutputs;
- (OpaqueAudioComponentInstance)audioUnit;
- (float)obstruction;
- (float)occlusion;
- (float)pan;
- (float)rate;
- (float)reverbBlend;
- (float)volume;
- (id)clock;
- (id)destinationForMixer:(id)mixer bus:(unint64_t)bus;
- (int64_t)pointSourceInHeadMode;
- (int64_t)renderingAlgorithm;
- (int64_t)sourceMode;
- (void)dealloc;
- (void)didAttachToEngine:(id)engine;
- (void)didDetachFromEngine:(id)engine error:(id *)error;
- (void)installTapOnBus:(AVAudioNodeBus)bus bufferSize:(AVAudioFrameCount)bufferSize format:(AVAudioFormat *)format block:(AVAudioNodeTapBlock)tapBlock;
- (void)removeTapOnBus:(AVAudioNodeBus)bus;
- (void)reset;
- (void)setNumberOfInputs:(unsigned int)inputs;
- (void)setNumberOfOutputs:(unsigned int)outputs;
- (void)setObstruction:(float)obstruction;
- (void)setOcclusion:(float)occlusion;
- (void)setPan:(float)pan;
- (void)setPointSourceInHeadMode:(int64_t)mode;
- (void)setPosition:(AVAudio3DPoint)position;
- (void)setRate:(float)rate;
- (void)setRenderingAlgorithm:(int64_t)algorithm;
- (void)setReverbBlend:(float)blend;
- (void)setSourceMode:(int64_t)mode;
- (void)setVolume:(float)volume;
@end

@implementation AVAudioNode

- (float)occlusion
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 60);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)setOcclusion:(float)occlusion
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v15, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 104))(MixingImpl, occlusion);
  v7 = *(self->_impl + 8);
  if (v7)
  {
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        *&v6 = occlusion;
        [v9[6] setOcclusion:v6];
        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v8);
    }
  }

  if (v18 == 1)
  {
    std::recursive_mutex::unlock(v17);
  }

  if (v16 == 1)
  {
    v14 = v15;

    std::recursive_mutex::unlock(v14);
  }
}

- (float)obstruction
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 56);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)setObstruction:(float)obstruction
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v15, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 96))(MixingImpl, obstruction);
  v7 = *(self->_impl + 8);
  if (v7)
  {
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        *&v6 = obstruction;
        [v9[6] setObstruction:v6];
        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v8);
    }
  }

  if (v18 == 1)
  {
    std::recursive_mutex::unlock(v17);
  }

  if (v16 == 1)
  {
    v14 = v15;

    std::recursive_mutex::unlock(v14);
  }
}

- (AVAudio3DPoint)position
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v10, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  v4 = MixingImpl[11];
  v5 = MixingImpl[12];
  v6 = MixingImpl[13];
  if (v13 == 1)
  {
    std::recursive_mutex::unlock(v12);
  }

  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  v7 = v4;
  v8 = v5;
  v9 = v6;
  result.z = v9;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setPosition:(AVAudio3DPoint)position
{
  z = position.z;
  y = position.y;
  x = position.x;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v19, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 88))(MixingImpl, x, y, z);
  v11 = *(self->_impl + 8);
  if (v11)
  {
    v14 = *v11;
    v12 = v11 + 1;
    v13 = v14;
    if (v14 != v12)
    {
      do
      {
        *&v8 = x;
        *&v9 = y;
        *&v10 = z;
        [v13[6] setPosition:{v8, v9, v10}];
        v15 = v13[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v13[2];
            v17 = *v16 == v13;
            v13 = v16;
          }

          while (!v17);
        }

        v13 = v16;
      }

      while (v16 != v12);
    }
  }

  if (v22 == 1)
  {
    std::recursive_mutex::unlock(v21);
  }

  if (v20 == 1)
  {
    v18 = v19;

    std::recursive_mutex::unlock(v18);
  }
}

- (float)reverbBlend
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 40);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)setReverbBlend:(float)blend
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v15, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 80))(MixingImpl, blend);
  v7 = *(self->_impl + 8);
  if (v7)
  {
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        *&v6 = blend;
        [v9[6] setReverbBlend:v6];
        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v8);
    }
  }

  if (v18 == 1)
  {
    std::recursive_mutex::unlock(v17);
  }

  if (v16 == 1)
  {
    v14 = v15;

    std::recursive_mutex::unlock(v14);
  }
}

- (float)rate
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 36);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)setRate:(float)rate
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v15, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 72))(MixingImpl, rate);
  v7 = *(self->_impl + 8);
  if (v7)
  {
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        *&v6 = rate;
        [v9[6] setRate:v6];
        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v8);
    }
  }

  if (v18 == 1)
  {
    std::recursive_mutex::unlock(v17);
  }

  if (v16 == 1)
  {
    v14 = v15;

    std::recursive_mutex::unlock(v14);
  }
}

- (int64_t)pointSourceInHeadMode
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 32);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)setPointSourceInHeadMode:(int64_t)mode
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v14, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 64))(MixingImpl, mode);
  v6 = *(self->_impl + 8);
  if (v6)
  {
    v9 = *v6;
    v7 = v6 + 1;
    v8 = v9;
    if (v9 != v7)
    {
      do
      {
        [v8[6] setPointSourceInHeadMode:mode];
        v10 = v8[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v8[2];
            v12 = *v11 == v8;
            v8 = v11;
          }

          while (!v12);
        }

        v8 = v11;
      }

      while (v11 != v7);
    }
  }

  if (v17 == 1)
  {
    std::recursive_mutex::unlock(v16);
  }

  if (v15 == 1)
  {
    v13 = v14;

    std::recursive_mutex::unlock(v13);
  }
}

- (int64_t)sourceMode
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 28);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)setSourceMode:(int64_t)mode
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v14, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 56))(MixingImpl, mode);
  v6 = *(self->_impl + 8);
  if (v6)
  {
    v9 = *v6;
    v7 = v6 + 1;
    v8 = v9;
    if (v9 != v7)
    {
      do
      {
        [v8[6] setSourceMode:mode];
        v10 = v8[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v8[2];
            v12 = *v11 == v8;
            v8 = v11;
          }

          while (!v12);
        }

        v8 = v11;
      }

      while (v11 != v7);
    }
  }

  if (v17 == 1)
  {
    std::recursive_mutex::unlock(v16);
  }

  if (v15 == 1)
  {
    v13 = v14;

    std::recursive_mutex::unlock(v13);
  }
}

- (int64_t)renderingAlgorithm
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 24);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)setRenderingAlgorithm:(int64_t)algorithm
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v14, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 48))(MixingImpl, algorithm);
  v6 = *(self->_impl + 8);
  if (v6)
  {
    v9 = *v6;
    v7 = v6 + 1;
    v8 = v9;
    if (v9 != v7)
    {
      do
      {
        [v8[6] setRenderingAlgorithm:algorithm];
        v10 = v8[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v8[2];
            v12 = *v11 == v8;
            v8 = v11;
          }

          while (!v12);
        }

        v8 = v11;
      }

      while (v11 != v7);
    }
  }

  if (v17 == 1)
  {
    std::recursive_mutex::unlock(v16);
  }

  if (v15 == 1)
  {
    v13 = v14;

    std::recursive_mutex::unlock(v13);
  }
}

- (float)pan
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 20);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)setPan:(float)pan
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v15, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 40))(MixingImpl, pan);
  v7 = *(self->_impl + 8);
  if (v7)
  {
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        *&v6 = pan;
        [v9[6] setPan:v6];
        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v8);
    }
  }

  if (v18 == 1)
  {
    std::recursive_mutex::unlock(v17);
  }

  if (v16 == 1)
  {
    v14 = v15;

    std::recursive_mutex::unlock(v14);
  }
}

- (float)volume
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = *(AVAudioNodeImplBase::GetMixingImpl(self->_impl) + 16);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)setVolume:(float)volume
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v15, self->_impl);
  MixingImpl = AVAudioNodeImplBase::GetMixingImpl(self->_impl);
  (*(*MixingImpl + 32))(MixingImpl, volume);
  v7 = *(self->_impl + 8);
  if (v7)
  {
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        *&v6 = volume;
        [v9[6] setVolume:v6];
        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v8);
    }
  }

  if (v18 == 1)
  {
    std::recursive_mutex::unlock(v17);
  }

  if (v16 == 1)
  {
    v14 = v15;

    std::recursive_mutex::unlock(v14);
  }
}

- (id)destinationForMixer:(id)mixer bus:(unint64_t)bus
{
  v29 = *MEMORY[0x1E69E9840];
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v13, self->_impl);
  if (!mixer)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v18 = "AVAEInternal.h";
      v19 = 1024;
      v20 = 71;
      v21 = 2080;
      v22 = "AVAudioNode.mm";
      v23 = 1024;
      v24 = 230;
      v25 = 2080;
      v26 = "[AVAudioNode destinationForMixer:bus:]";
      v27 = 2080;
      v28 = "mixer";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "mixer"}];
  }

  impl = self->_impl;
  v9 = objc_msgSend_impl(mixer);
  v10 = (*(*v9 + 240))(v9, bus);
  MixingDestination = AVAudioNodeImplBase::GetMixingDestination(impl, mixer, v10);
  if (v16 == 1)
  {
    std::recursive_mutex::unlock(v15);
  }

  if (v14 == 1)
  {
    std::recursive_mutex::unlock(v13);
  }

  return MixingDestination;
}

- (AUAudioUnit)AUAudioUnit
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 232))(self->_impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (OpaqueAudioComponentInstance)audioUnit
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 224))(self->_impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)removeTapOnBus:(AVAudioNodeBus)bus
{
  v23 = *MEMORY[0x1E69E9840];
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->_impl);
  engine = [(AVAudioNode *)self engine];
  if (!engine)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v12 = "AVAEInternal.h";
      v13 = 1024;
      v14 = 71;
      v15 = 2080;
      v16 = "AVAudioNode.mm";
      v17 = 1024;
      v18 = 194;
      v19 = 2080;
      v20 = "[AVAudioNode removeTapOnBus:]";
      v21 = 2080;
      v22 = "NULL != engine";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "NULL != engine"}];
  }

  AVAudioEngineImpl::RemoveTapOnNode([(AVAudioEngine *)engine implementation], self, bus);
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }
}

- (void)installTapOnBus:(AVAudioNodeBus)bus bufferSize:(AVAudioFrameCount)bufferSize format:(AVAudioFormat *)format block:(AVAudioNodeTapBlock)tapBlock
{
  v8 = *&bufferSize;
  v30 = *MEMORY[0x1E69E9840];
  if (!tapBlock)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v19 = "AVAEInternal.h";
      v20 = 1024;
      v21 = 71;
      v22 = 2080;
      v23 = "AVAudioNode.mm";
      v24 = 1024;
      v25 = 180;
      v26 = 2080;
      v27 = "[AVAudioNode installTapOnBus:bufferSize:format:block:]";
      v28 = 2080;
      v29 = "tapBlock";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "tapBlock"}];
  }

  AVAudioNodeImplBase::GetAttachAndEngineLock(&v14, self->_impl);
  engine = [(AVAudioNode *)self engine];
  if (!engine)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v13 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v19 = "AVAEInternal.h";
      v20 = 1024;
      v21 = 71;
      v22 = 2080;
      v23 = "AVAudioNode.mm";
      v24 = 1024;
      v25 = 185;
      v26 = 2080;
      v27 = "[AVAudioNode installTapOnBus:bufferSize:format:block:]";
      v28 = 2080;
      v29 = "NULL != engine";
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "NULL != engine"}];
  }

  AVAudioEngineImpl::InstallTapOnNode([(AVAudioEngine *)engine implementation], self, bus, v8, format, tapBlock);
  if (v17 == 1)
  {
    std::recursive_mutex::unlock(v16);
  }

  if (v15 == 1)
  {
    std::recursive_mutex::unlock(v14);
  }
}

- (void)setNumberOfOutputs:(unsigned int)outputs
{
  v3 = *&outputs;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->_impl);
  (*(*self->_impl + 120))(self->_impl, v3);
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    v5 = v6;

    std::recursive_mutex::unlock(v5);
  }
}

- (void)setNumberOfInputs:(unsigned int)inputs
{
  v3 = *&inputs;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->_impl);
  (*(*self->_impl + 112))(self->_impl, v3);
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    v5 = v6;

    std::recursive_mutex::unlock(v5);
  }
}

- (NSUInteger)numberOfOutputs
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 104))(self->_impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (NSUInteger)numberOfInputs
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 96))(self->_impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (AVAudioEngine)engine
{
  v2 = *(self->_impl + 1);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

- (NSTimeInterval)outputPresentationLatency
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 400))(self->_impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (NSTimeInterval)latency
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 384))(self->_impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (AVAudioTime)lastRenderTime
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 360))(self->_impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (id)clock
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->_impl);
  v3 = (*(*self->_impl + 352))(self->_impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)reset
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v4, self->_impl);
  (*(*self->_impl + 88))(self->_impl);
  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }

  if (v5 == 1)
  {
    v3 = v4;

    std::recursive_mutex::unlock(v3);
  }
}

- (void)didDetachFromEngine:(id)engine error:(id *)error
{
  implementation = [engine implementation];
  impl = self->_impl;
  std::lock[abi:ne200100]<std::recursive_mutex,std::recursive_mutex>((impl + 96), (implementation + 112));
  v9 = AVAudioEngineGraph::RemoveNode(*(implementation + 8), self, error);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioEngine.mm", 1530, "DestroyGraphNode", "_graph->RemoveNode(inNode, outErr)", v9, error);
  (*(*self->_impl + 24))(self->_impl, engine);
  std::recursive_mutex::unlock((impl + 96));

  std::recursive_mutex::unlock((implementation + 112));
}

- (void)didAttachToEngine:(id)engine
{
  implementation = [engine implementation];
  impl = self->_impl;
  std::lock[abi:ne200100]<std::recursive_mutex,std::recursive_mutex>((impl + 96), (implementation + 112));
  AVAudioEngineGraph::AddNode(*(implementation + 8), self);
  (*(*self->_impl + 16))(self->_impl, engine);
  std::recursive_mutex::unlock((impl + 96));

  std::recursive_mutex::unlock((implementation + 112));
}

- (BOOL)setInputFormat:(id)format forBus:(unint64_t)bus
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v9, self->_impl);
  v7 = (*(*self->_impl + 80))(self->_impl, bus, format);
  if (v12 == 1)
  {
    std::recursive_mutex::unlock(v11);
  }

  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  return v7;
}

- (AVAudioFormat)inputFormatForBus:(AVAudioNodeBus)bus
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->_impl);
  v5 = (*(*self->_impl + 72))(self->_impl, bus);
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

- (BOOL)setOutputFormat:(id)format forBus:(unint64_t)bus
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v9, self->_impl);
  v7 = (*(*self->_impl + 64))(self->_impl, bus, format);
  if (v12 == 1)
  {
    std::recursive_mutex::unlock(v11);
  }

  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  return v7;
}

- (AVAudioFormat)outputFormatForBus:(AVAudioNodeBus)bus
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->_impl);
  v5 = (*(*self->_impl + 48))(self->_impl, bus);
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

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl + 8))(impl, a2);
  }

  v4.receiver = self;
  v4.super_class = AVAudioNode;
  [(AVAudioNode *)&v4 dealloc];
}

- (BOOL)resetImpl:(void *)impl
{
  if (impl)
  {
    impl = self->_impl;
    if (impl != impl)
    {
      if (impl)
      {
        (*(*impl + 8))(impl, a2);
      }

      self->_impl = impl;
    }
  }

  return impl != 0;
}

- (AVAudioNode)initWithImpl:(void *)impl
{
  if (impl)
  {
    v5.receiver = self;
    v5.super_class = AVAudioNode;
    result = [(AVAudioNode *)&v5 init];
    if (result)
    {
      result->_impl = impl;
      return result;
    }

    (*(*impl + 8))(impl);
  }

  else
  {
  }

  return 0;
}

@end