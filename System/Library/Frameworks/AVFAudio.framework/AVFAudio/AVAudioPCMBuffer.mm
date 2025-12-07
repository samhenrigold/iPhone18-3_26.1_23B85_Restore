@interface AVAudioPCMBuffer
- (AVAudioPCMBuffer)initWithPCMFormat:(AVAudioFormat *)format bufferListNoCopy:(const AudioBufferList *)bufferList deallocator:(void *)deallocator;
- (AVAudioPCMBuffer)initWithPCMFormat:(AVAudioFormat *)format frameCapacity:(AVAudioFrameCount)frameCapacity;
- (BOOL)appendDataFromBuffer:(id)buffer channel:(int64_t)channel;
- (float)calculatePower:(unint64_t)power forFloatData:(float *)data stride:(int64_t)stride frameLength:(unsigned int)length;
- (float)floatChannelData;
- (id)calculatePower:(unint64_t)power;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)splitIntoSingleChannelBuffers;
- (int16_t)int16ChannelData;
- (int32_t)int32ChannelData;
- (void)_initChannelPtrs;
- (void)setByteLength:(unsigned int)length;
- (void)setFrameLength:(AVAudioFrameCount)frameLength;
@end

@implementation AVAudioPCMBuffer

- (void)_initChannelPtrs
{
  streamDescription = [*self->super._impl streamDescription];
  v4 = *(streamDescription + 28);
  if (v4)
  {
    v5 = *(streamDescription + 12);
    *(self->super._impl + 1) = malloc_type_calloc(*(streamDescription + 28), 8uLL, 0x80040B8603338uLL);
    if ((v5 & 0x20) != 0)
    {
      v8 = 0;
      v9 = 16;
      do
      {
        impl = self->super._impl;
        if (*(impl + 56) == 1)
        {
          v11 = impl[6] + 48;
        }

        else
        {
          v11 = impl[12];
        }

        *(impl[1] + v8) = *(v11 + v9);
        v8 += 8;
        v9 += 16;
      }

      while (8 * v4 != v8);
    }

    else
    {
      v6 = self->super._impl;
      if (*(v6 + 56) == 1)
      {
        v7 = v6[6] + 48;
      }

      else
      {
        v7 = v6[12];
      }

      v12 = *(v6 + 6);
      *v6[1] = *(v7 + 16);
      if (v4 != 1)
      {
        v13 = 0;
        v14 = v12 / v4;
        do
        {
          v15 = (*(self->super._impl + 1) + 8 * v13);
          v15[1] = *v15 + v14;
          ++v13;
        }

        while (v4 - 1 != v13);
      }
    }
  }
}

- (int16_t)int16ChannelData
{
  impl = self->super._impl;
  if (*(impl + 8) != 1)
  {
    return 0;
  }

  result = *(impl + 1);
  if (!result)
  {
    [(AVAudioPCMBuffer *)self _initChannelPtrs];
    return *(self->super._impl + 1);
  }

  return result;
}

- (float)calculatePower:(unint64_t)power forFloatData:(float *)data stride:(int64_t)stride frameLength:(unsigned int)length
{
  if (power == 1)
  {
    v8 = 0.0;
    vDSP_rmsqv(data, stride, &v8, length);
    v7 = v8;
  }

  else
  {
    if (power)
    {
      return result;
    }

    __C = 0.0;
    vDSP_maxv(data, stride, &__C, length);
    v7 = __C;
  }

  if (v7 < 0.00000001)
  {
    v7 = 0.00000001;
  }

  return log10f(v7) * 20.0;
}

- (id)calculatePower:(unint64_t)power
{
  v5 = objc_opt_new();
  if (![(AVAudioPCMBuffer *)self floatChannelData])
  {
    if ([(AVAudioPCMBuffer *)self int16ChannelData])
    {
      v8 = malloc_type_malloc(4 * [(AVAudioPCMBuffer *)self frameLength], 0x100004052888210uLL);
      if ([(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount])
      {
        v9 = 0;
        do
        {
          vDSP_vflt16([(AVAudioPCMBuffer *)self int16ChannelData][8 * v9], [(AVAudioPCMBuffer *)self stride], v8, [(AVAudioPCMBuffer *)self stride], [(AVAudioPCMBuffer *)self frameLength]);
          __B = 32767.0;
          vDSP_vsdiv(v8, [(AVAudioPCMBuffer *)self stride], &__B, v8, [(AVAudioPCMBuffer *)self stride], [(AVAudioPCMBuffer *)self frameLength]);
          v10 = MEMORY[0x1E696AD98];
          [(AVAudioPCMBuffer *)self calculatePower:power forFloatData:v8 stride:[(AVAudioPCMBuffer *)self stride] frameLength:[(AVAudioPCMBuffer *)self frameLength]];
          [v5 addObject:{objc_msgSend(v10, "numberWithFloat:")}];
          ++v9;
        }

        while (v9 < [(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount]);
      }
    }

    else
    {
      if (![(AVAudioPCMBuffer *)self int32ChannelData])
      {
        return v5;
      }

      v8 = malloc_type_malloc(4 * [(AVAudioPCMBuffer *)self frameLength], 0x100004052888210uLL);
      if ([(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount])
      {
        v11 = 0;
        do
        {
          vDSP_vflt32([(AVAudioPCMBuffer *)self int32ChannelData][8 * v11], [(AVAudioPCMBuffer *)self stride], v8, [(AVAudioPCMBuffer *)self stride], [(AVAudioPCMBuffer *)self frameLength]);
          v14 = 2147500000.0;
          vDSP_vsdiv(v8, [(AVAudioPCMBuffer *)self stride], &v14, v8, [(AVAudioPCMBuffer *)self stride], [(AVAudioPCMBuffer *)self frameLength]);
          v12 = MEMORY[0x1E696AD98];
          [(AVAudioPCMBuffer *)self calculatePower:power forFloatData:v8 stride:[(AVAudioPCMBuffer *)self stride] frameLength:[(AVAudioPCMBuffer *)self frameLength]];
          [v5 addObject:{objc_msgSend(v12, "numberWithFloat:")}];
          ++v11;
        }

        while (v11 < [(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount]);
      }
    }

    free(v8);
    return v5;
  }

  if ([(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount])
  {
    v6 = 0;
    do
    {
      v7 = MEMORY[0x1E696AD98];
      [(AVAudioPCMBuffer *)self calculatePower:power forFloatData:[(AVAudioPCMBuffer *)self floatChannelData][8 * v6] stride:[(AVAudioPCMBuffer *)self stride] frameLength:[(AVAudioPCMBuffer *)self frameLength]];
      [v5 addObject:{objc_msgSend(v7, "numberWithFloat:")}];
      ++v6;
    }

    while (v6 < [(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount]);
  }

  return v5;
}

- (id)splitIntoSingleChannelBuffers
{
  if ([(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount]< 2 || [(AVAudioFormat *)[(AVAudioBuffer *)self format] isInterleaved])
  {
    return 0;
  }

  v3 = objc_opt_new();
  if ([(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount])
  {
    v5 = 0;
    do
    {
      v6 = [AVAudioFormat alloc];
      [(AVAudioFormat *)[(AVAudioBuffer *)self format] sampleRate];
      v7 = [(AVAudioFormat *)v6 initStandardFormatWithSampleRate:1 channels:?];
      v8 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:v7 frameCapacity:[(AVAudioPCMBuffer *)self frameLength]];

      [(AVAudioPCMBuffer *)v8 appendDataFromBuffer:self channel:v5];
      [v3 addObject:v8];

      ++v5;
    }

    while (v5 < [(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount]);
  }

  return v3;
}

- (BOOL)appendDataFromBuffer:(id)buffer channel:(int64_t)channel
{
  impl = self->super._impl;
  if (*(impl + 56) == 1)
  {
    v8 = impl[6] + 48;
  }

  else
  {
    v8 = impl[12];
  }

  audioBufferList = [buffer audioBufferList];
  frameLength = [(AVAudioPCMBuffer *)self frameLength];
  v11 = *(self->super._impl + 6);
  frameCapacity = [(AVAudioPCMBuffer *)self frameCapacity];
  v13 = frameCapacity - [(AVAudioPCMBuffer *)self frameLength];
  frameLength2 = [(AVAudioPCMBuffer *)self frameLength];
  v15 = [buffer frameLength] + frameLength2;
  frameLength3 = v13;
  if (v15 <= [(AVAudioPCMBuffer *)self frameCapacity])
  {
    frameLength3 = [buffer frameLength];
  }

  v17 = v11 * frameLength;
  if (-[AVAudioFormat isEqual:](-[AVAudioBuffer format](self, "format"), "isEqual:", [buffer format]) || (v27 = -[AVAudioFormat channelCount](-[AVAudioBuffer format](self, "format"), "channelCount"), v27 == objc_msgSend(objc_msgSend(buffer, "format"), "channelCount")) && (-[AVAudioFormat sampleRate](-[AVAudioBuffer format](self, "format"), "sampleRate"), v29 = v28, objc_msgSend(objc_msgSend(buffer, "format"), "sampleRate"), v29 == v30) && (v31 = -[AVAudioFormat streamDescription](-[AVAudioBuffer format](self, "format"), "streamDescription")[8], v31 == *(objc_msgSend(objc_msgSend(buffer, "format"), "streamDescription") + 8)))
  {
    if (*audioBufferList)
    {
      v18 = 0;
      v19 = (audioBufferList + 4);
      v20 = (v8 + 16);
      do
      {
        frameLength4 = [(AVAudioPCMBuffer *)self frameLength];
        v22 = [buffer frameLength] + frameLength4;
        if (v22 <= [(AVAudioPCMBuffer *)self frameCapacity])
        {
          v23 = *(v19 - 1);
        }

        else
        {
          v23 = *(self->super._impl + 6) * v13;
        }

        v25 = *v20;
        v20 += 2;
        v24 = v25;
        v26 = *v19;
        v19 += 2;
        memcpy((v24 + v17), v26, v23);
        ++v18;
      }

      while (v18 < *audioBufferList);
    }

    goto LABEL_25;
  }

  channelCount = [(AVAudioFormat *)[(AVAudioBuffer *)self format] channelCount];
  if ((channel & 0x8000000000000000) == 0 && channelCount == 1 && [objc_msgSend(buffer "format")] > channel)
  {
    frameLength5 = [(AVAudioPCMBuffer *)self frameLength];
    v34 = [buffer frameLength] + frameLength5;
    frameCapacity2 = [(AVAudioPCMBuffer *)self frameCapacity];
    v36 = &audioBufferList[4 * channel];
    if (v34 <= frameCapacity2)
    {
      v37 = *(v36 + 3);
    }

    else
    {
      v37 = *(self->super._impl + 6) * v13;
    }

    memcpy((*(v8 + 16) + v17), v36[2], v37);
LABEL_25:
    frameLength6 = [(AVAudioPCMBuffer *)self frameLength]+ frameLength3;
    v39 = 1;
    goto LABEL_26;
  }

  frameLength6 = [(AVAudioPCMBuffer *)self frameLength];
  v39 = 0;
LABEL_26:
  [(AVAudioPCMBuffer *)self setFrameLength:frameLength6];
  return v39;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[AVAudioPCMBuffer allocWithZone:?]frameCapacity:"initWithPCMFormat:frameCapacity:", *self->super._impl, *(self->super._impl + 10)];
  impl = v4->super._impl;
  v6 = self->super._impl;
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
    v6 = self->super._impl;
  }

  *(impl + 4) = *(v6 + 4);
  return v4;
}

- (int32_t)int32ChannelData
{
  impl = self->super._impl;
  if (*(impl + 8) != 2)
  {
    return 0;
  }

  result = *(impl + 1);
  if (!result)
  {
    [(AVAudioPCMBuffer *)self _initChannelPtrs];
    return *(self->super._impl + 1);
  }

  return result;
}

- (float)floatChannelData
{
  impl = self->super._impl;
  if (*(impl + 8))
  {
    return 0;
  }

  result = *(impl + 1);
  if (!result)
  {
    [(AVAudioPCMBuffer *)self _initChannelPtrs];
    return *(self->super._impl + 1);
  }

  return result;
}

- (void)setFrameLength:(AVAudioFrameCount)frameLength
{
  v21 = *MEMORY[0x1E69E9840];
  impl = self->super._impl;
  if (impl[5] < frameLength)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v10 = "AVAEInternal.h";
      v11 = 1024;
      v12 = 71;
      v13 = 2080;
      v14 = "AVAudioBuffer.mm";
      v15 = 1024;
      v16 = 389;
      v17 = 2080;
      v18 = "[AVAudioPCMBuffer setFrameLength:]";
      v19 = 2080;
      v20 = "length <= _imp->_frameCapacity";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "length <= _imp->_frameCapacity"}];
    impl = self->super._impl;
  }

  v7 = impl[6] * frameLength;
  v8.receiver = self;
  v8.super_class = AVAudioPCMBuffer;
  [(AVAudioBuffer *)&v8 setByteLength:v7];
  *(self->super._impl + 4) = frameLength;
}

- (void)setByteLength:(unsigned int)length
{
  v5.receiver = self;
  v5.super_class = AVAudioPCMBuffer;
  [(AVAudioBuffer *)&v5 setByteLength:?];
  *(self->super._impl + 4) = length / *(self->super._impl + 6);
}

- (AVAudioPCMBuffer)initWithPCMFormat:(AVAudioFormat *)format bufferListNoCopy:(const AudioBufferList *)bufferList deallocator:(void *)deallocator
{
  v52 = *MEMORY[0x1E69E9840];
  streamDescription = [(AVAudioFormat *)format streamDescription];
  v10 = *&streamDescription->mBytesPerPacket;
  v39 = *&streamDescription->mSampleRate;
  v40 = v10;
  v41 = *&streamDescription->mBitsPerChannel;
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v43 = "AVAEInternal.h";
      v44 = 1024;
      v45 = 71;
      v46 = 2080;
      *v47 = "AVAudioBuffer.mm";
      *&v47[8] = 1024;
      *v48 = 345;
      *&v48[4] = 2080;
      v49 = "[AVAudioPCMBuffer initWithPCMFormat:bufferListNoCopy:deallocator:]";
      v50 = 2080;
      v51 = "isPCMFormat(fmt)";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "isPCMFormat(fmt)"}];
  }

  if (!bufferList)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v43 = "AVAEInternal.h";
      v44 = 1024;
      v45 = 71;
      v46 = 2080;
      *v47 = "AVAudioBuffer.mm";
      *&v47[8] = 1024;
      *v48 = 346;
      *&v48[4] = 2080;
      v49 = "[AVAudioPCMBuffer initWithPCMFormat:bufferListNoCopy:deallocator:]";
      v50 = 2080;
      v51 = "bufferList != nullptr";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "bufferList != nullptr"}];
  }

  v13 = DWORD2(v40);
  if (!DWORD2(v40))
  {
    v26 = gAVAudioBufferLog();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 136315394;
    v43 = "AVAudioBuffer.mm";
    v44 = 1024;
    v45 = 349;
    v27 = "%25s:%-5d format has zero bytes per frame";
    goto LABEL_37;
  }

  mNumberBuffers = bufferList->mNumberBuffers;
  if (!mNumberBuffers)
  {
    v26 = gAVAudioBufferLog();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 136315394;
    v43 = "AVAudioBuffer.mm";
    v44 = 1024;
    v45 = 267;
    v27 = "%25s:%-5d the number of buffers is 0";
LABEL_37:
    v28 = v26;
    v29 = 18;
    goto LABEL_47;
  }

  if ((BYTE12(v39) & 0x20) != 0)
  {
    v15 = HIDWORD(v40);
  }

  else
  {
    v15 = 1;
  }

  if (mNumberBuffers != v15)
  {
    v30 = gAVAudioBufferLog();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v31 = bufferList->mNumberBuffers;
    *buf = 136315906;
    v43 = "AVAudioBuffer.mm";
    v44 = 1024;
    v45 = 274;
    v46 = 1024;
    *v47 = v31;
    *&v47[4] = 1024;
    *&v47[6] = v15;
    v27 = "%25s:%-5d the number of buffers (%u) does not match the format's number of channel streams (%u)";
    v28 = v30;
    v29 = 30;
LABEL_47:
    _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
    goto LABEL_48;
  }

  mDataByteSize = bufferList->mBuffers[0].mDataByteSize;
  if (mDataByteSize)
  {
    v17 = 0;
    v18 = 0;
    if ((BYTE12(v39) & 0x20) != 0)
    {
      v19 = 1;
    }

    else
    {
      v19 = HIDWORD(v40);
    }

    v20 = 16 * mNumberBuffers;
    while (1)
    {
      if (v17)
      {
        v21 = bufferList + v17;
        if (bufferList->mBuffers[v17 / 0x10].mDataByteSize != mDataByteSize)
        {
          break;
        }
      }

      v22 = bufferList + v17;
      if (bufferList->mBuffers[v17 / 0x10].mNumberChannels != v19)
      {
        v33 = gAVAudioBufferLog();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        v34 = *(v22 + 2);
        *buf = 136316162;
        v43 = "AVAudioBuffer.mm";
        v44 = 1024;
        v45 = 296;
        v46 = 1024;
        *v47 = v18;
        *&v47[4] = 1024;
        *&v47[6] = v34;
        *v48 = 1024;
        *&v48[2] = v19;
        v27 = "%25s:%-5d mBuffers[%d].mNumberChannels (%u) does not match the format's number of interleaved channels (%u)";
        v28 = v33;
        v29 = 36;
        goto LABEL_47;
      }

      if (!*(v22 + 2))
      {
        v32 = gAVAudioBufferLog();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        *buf = 136315650;
        v43 = "AVAudioBuffer.mm";
        v44 = 1024;
        v45 = 299;
        v46 = 1024;
        *v47 = v18;
        v27 = "%25s:%-5d mBuffers[%u].mData is null";
        goto LABEL_46;
      }

      ++v18;
      v17 += 16;
      if (v20 == v17)
      {
        v38.receiver = self;
        v38.super_class = AVAudioPCMBuffer;
        v23 = [(AVAudioBuffer *)&v38 initWithPCMFormat:format byteCapacity:mDataByteSize bufferListNoCopy:bufferList deallocator:deallocator];
        v24 = v23;
        if (v23)
        {
          *(v23->super._impl + 1) = 0;
          *(v23->super._impl + 6) = v13;
          *(v23->super._impl + 5) = mDataByteSize / v13;
          *(v23->super._impl + 4) = mDataByteSize / v13;
          *(v23->super._impl + 7) = v19;
          impl = v24->super._impl;
          if ((impl[56] & 1) != 0 || (impl[120] & 1) == 0)
          {
            __assert_rtn("[AVAudioPCMBuffer initWithPCMFormat:bufferListNoCopy:deallocator:]", "AVAudioBuffer.mm", 372, "!_imp->OwnsMemory() && _imp->_externalABL.has_value()");
          }
        }

        return v24;
      }
    }

    v36 = gAVAudioBufferLog();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v37 = *(v21 + 3);
    *buf = 136316418;
    v43 = "AVAudioBuffer.mm";
    v44 = 1024;
    v45 = 291;
    v46 = 1024;
    *v47 = v18;
    *&v47[4] = 1024;
    *&v47[6] = v37;
    *v48 = 1024;
    *&v48[2] = v18 - 1;
    LOWORD(v49) = 1024;
    *(&v49 + 2) = mDataByteSize;
    v27 = "%25s:%-5d mBuffers[%u].mDataByteSize (%u) does not match the previous mBuffers[%u].mDataByteSize (%u)";
    v28 = v36;
    v29 = 42;
    goto LABEL_47;
  }

  v32 = gAVAudioBufferLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v43 = "AVAudioBuffer.mm";
    v44 = 1024;
    v45 = 281;
    v46 = 1024;
    *v47 = 0;
    v27 = "%25s:%-5d mBuffers[0].mDataByteSize (%u) should be non-zero";
LABEL_46:
    v28 = v32;
    v29 = 24;
    goto LABEL_47;
  }

LABEL_48:

  return 0;
}

- (AVAudioPCMBuffer)initWithPCMFormat:(AVAudioFormat *)format frameCapacity:(AVAudioFrameCount)frameCapacity
{
  v34 = *MEMORY[0x1E69E9840];
  streamDescription = [(AVAudioFormat *)format streamDescription];
  v8 = *&streamDescription->mBytesPerPacket;
  v19 = *&streamDescription->mSampleRate;
  v20 = v8;
  v21 = *&streamDescription->mBitsPerChannel;
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v23 = "AVAEInternal.h";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "AVAudioBuffer.mm";
      v28 = 1024;
      v29 = 312;
      v30 = 2080;
      v31 = "[AVAudioPCMBuffer initWithPCMFormat:frameCapacity:]";
      v32 = 2080;
      v33 = "isPCMFormat(fmt)";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "isPCMFormat(fmt)"}];
  }

  v10 = DWORD2(v20);
  if (!DWORD2(v20))
  {
    v11 = gAVAudioBufferLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "AVAudioBuffer.mm";
      v24 = 1024;
      v25 = 315;
      v12 = "%25s:%-5d format has zero bytes per frame";
      goto LABEL_13;
    }

LABEL_14:

    return 0;
  }

  if (((DWORD2(v20) * frameCapacity) & 0xFFFFFFFF00000000) != 0)
  {
    v11 = gAVAudioBufferLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "AVAudioBuffer.mm";
      v24 = 1024;
      v25 = 322;
      v12 = "%25s:%-5d buffer byte capacity cannot be represented by an uint32_t";
LABEL_13:
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v18.receiver = self;
  v18.super_class = AVAudioPCMBuffer;
  frameCapacity = [(AVAudioBuffer *)&v18 initWithFormat:format byteCapacity:DWORD2(v20) * frameCapacity];
  v13 = frameCapacity;
  if (frameCapacity)
  {
    *(frameCapacity->super._impl + 1) = 0;
    *(frameCapacity->super._impl + 6) = v10;
    *(frameCapacity->super._impl + 5) = frameCapacity;
    *(frameCapacity->super._impl + 4) = 0;
    if ((BYTE12(v19) & 0x20) != 0)
    {
      v15 = 1;
    }

    else
    {
      v15 = HIDWORD(v20);
    }

    *(frameCapacity->super._impl + 7) = v15;
    impl = v13->super._impl;
    if (impl[56] != 1 || impl[120] == 1)
    {
      __assert_rtn("[AVAudioPCMBuffer initWithPCMFormat:frameCapacity:]", "AVAudioBuffer.mm", 337, "_imp->OwnsMemory() && !_imp->_externalABL.has_value()");
    }
  }

  return v13;
}

@end