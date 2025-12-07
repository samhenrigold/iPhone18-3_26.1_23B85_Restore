@interface VSVoiceBooster
- (AudioStreamBasicDescription)asbd;
- (AudioTimeStamp)audioTimeStamp;
- (BOOL)initialize;
- (VSVoiceBooster)initWithStreamDescription:(AudioStreamBasicDescription *)description pcmBufferSize:(unint64_t)size;
- (id)processData:(id)data;
- (void)dealloc;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
- (void)setAudioTimeStamp:(AudioTimeStamp *)stamp;
- (void)setVoiceBoostGainDecibels:(float)decibels;
- (void)uninitialize;
@end

@implementation VSVoiceBooster

- (void)setAudioTimeStamp:(AudioTimeStamp *)stamp
{
  v3 = *&stamp->mSampleTime;
  v4 = *&stamp->mRateScalar;
  v5 = *&stamp->mSMPTETime.mSubframes;
  *&self->_audioTimeStamp.mSMPTETime.mHours = *&stamp->mSMPTETime.mHours;
  *&self->_audioTimeStamp.mSMPTETime.mSubframes = v5;
  *&self->_audioTimeStamp.mRateScalar = v4;
  *&self->_audioTimeStamp.mSampleTime = v3;
}

- (AudioTimeStamp)audioTimeStamp
{
  v3 = *&self[1].mSMPTETime.mType;
  *&retstr->mSampleTime = *&self[1].mWordClockTime;
  *&retstr->mRateScalar = v3;
  v4 = *&self[2].mHostTime;
  *&retstr->mSMPTETime.mSubframes = *&self[1].mFlags;
  *&retstr->mSMPTETime.mHours = v4;
  return self;
}

- (void)setAsbd:(AudioStreamBasicDescription *)asbd
{
  v3 = *&asbd->mSampleRate;
  v4 = *&asbd->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&asbd->mBitsPerChannel;
  *&self->_asbd.mSampleRate = v3;
  *&self->_asbd.mBytesPerPacket = v4;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[1].mBytesPerFrame;
  *&retstr->mSampleRate = *&self[1].mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[2].mSampleRate;
  return self;
}

- (id)processData:(id)data
{
  v32 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (self->_voiceBoostUnit && (-[VSVoiceBooster voiceBoostGainDecibels](self, "voiceBoostGainDecibels"), v5 != 0.0) && [dataCopy length] && (ioActionFlags = 512, v8 = objc_msgSend(dataCopy, "length"), mBytesPerFrame = self->_asbd.mBytesPerFrame, v10 = -[VSVoiceBooster pcmBufferSize](self, "pcmBufferSize"), objc_msgSend(v27, "asbd"), mBytesPerFrame <= v8))
  {
    v11 = 0;
    v12 = v8 / mBytesPerFrame;
    v13 = v10 / v28;
    while (1)
    {
      if (v12 - v11 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12 - v11;
      }

      [v25 asbd];
      v15 = v26 * v14;
      [v23 asbd];
      v16 = v24 * v11;
      *(&inInputData.mNumberBuffers + 1) = 0;
      inInputData.mBuffers[0].mData = 0;
      inInputData.mNumberBuffers = 1;
      inInputData.mBuffers[0].mNumberChannels = 1;
      inInputData.mBuffers[0].mDataByteSize = v15;
      inInputData.mBuffers[0].mData = [dataCopy mutableBytes] + v16;
      v17 = [MEMORY[0x277CBEB28] dataWithLength:{1, 1, 0}];
      v21.mBuffers[0].mDataByteSize = [v17 length];
      v21.mBuffers[0].mData = [v17 mutableBytes];
      if (AudioConverterConvertComplexBuffer(self->_floatConverter, v14, &inInputData, &v21))
      {
        v18 = VSGetLogDefault();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v19 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
        *buf = 138412290;
        v31 = v19;
        v20 = "Error AudioConverterConvertComplexBuffer _floatConverter %@";
        goto LABEL_25;
      }

      if (AudioUnitProcess(self->_voiceBoostUnit, &ioActionFlags, &self->_audioTimeStamp, v14, &v21))
      {
        v18 = VSGetLogDefault();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v19 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
        *buf = 138412290;
        v31 = v19;
        v20 = "Error AudioUnitProcess _voiceBoostUnit %@";
        goto LABEL_25;
      }

      if (AudioConverterConvertComplexBuffer(self->_integerConverter, v14, &v21, &inInputData))
      {
        break;
      }

      v11 += v14;
      self->_audioTimeStamp.mSampleTime = self->_audioTimeStamp.mSampleTime + v14;

      if (v11 >= v12)
      {
        goto LABEL_3;
      }
    }

    v18 = VSGetLogDefault();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v19 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
    *buf = 138412290;
    v31 = v19;
    v20 = "Error AudioConverterConvertComplexBuffer _integerConverter %@";
LABEL_25:
    _os_log_error_impl(&dword_2727E4000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);

LABEL_23:
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  }

  else
  {
LABEL_3:
    v6 = 0;
  }

  return v6;
}

- (void)setVoiceBoostGainDecibels:(float)decibels
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_voiceBoostGainDecibels == decibels)
  {
    return;
  }

  voiceBoostUnit = self->_voiceBoostUnit;
  if (voiceBoostUnit)
  {
    goto LABEL_5;
  }

  if ([(VSVoiceBooster *)self initialize])
  {
    voiceBoostUnit = self->_voiceBoostUnit;
LABEL_5:
    if (AudioUnitSetParameter(voiceBoostUnit, 2u, 0, 0, decibels, 0))
    {
      v6 = VSGetLogDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
        v8 = 138412290;
        v9 = v7;
        _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Error AudioUnitSetParameter %@", &v8, 0xCu);
      }
    }

    else
    {
      self->_voiceBoostGainDecibels = decibels;
    }

    return;
  }

  [(VSVoiceBooster *)self uninitialize];
}

- (void)uninitialize
{
  floatConverter = self->_floatConverter;
  if (floatConverter)
  {
    AudioConverterDispose(floatConverter);
    self->_floatConverter = 0;
  }

  integerConverter = self->_integerConverter;
  if (integerConverter)
  {
    AudioConverterDispose(integerConverter);
    self->_integerConverter = 0;
  }

  voiceBoostUnit = self->_voiceBoostUnit;
  if (voiceBoostUnit)
  {
    AudioComponentInstanceDispose(voiceBoostUnit);
    self->_voiceBoostUnit = 0;
  }
}

- (BOOL)initialize
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *&self->_asbd.mBytesPerPacket;
  *&inDestinationFormat.mSampleRate = *&self->_asbd.mSampleRate;
  *&inDestinationFormat.mBytesPerPacket = v3;
  *&inDestinationFormat.mBitsPerChannel = *&self->_asbd.mBitsPerChannel;
  *&inDestinationFormat.mFormatFlags = 0x400000029;
  inDestinationFormat.mBytesPerFrame = 4;
  inDestinationFormat.mBitsPerChannel = 32;
  if (AudioConverterNew(&self->_asbd, &inDestinationFormat, &self->_floatConverter))
  {
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
      buf.componentType = 138412290;
      *&buf.componentSubType = v5;
      v6 = "Error AudioUnitSetProperty _floatConverter %@";
LABEL_7:
      p_buf = &buf;
LABEL_8:
      _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, v6, p_buf, 0xCu);
    }
  }

  else
  {
    if (!AudioConverterNew(&inDestinationFormat, &self->_asbd, &self->_integerConverter))
    {
      BYTE1(buf.componentFlags) = 0;
      HIWORD(buf.componentFlags) = 0;
      buf.componentFlagsMask = 0;
      strcpy(&buf, "xfuakrfclppa");
      Next = AudioComponentFindNext(0, &buf);
      if (AudioComponentInstanceNew(Next, &self->_voiceBoostUnit))
      {
        v4 = VSGetLogDefault();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v5 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
        v12 = 138412290;
        v13 = v5;
        v6 = "Error AudioComponentInstanceNew _voiceBoostUnit %@";
      }

      else
      {
        inData = LODWORD(self->_pcmBufferSize) / self->_asbd.mBytesPerFrame;
        if (AudioUnitSetProperty(self->_voiceBoostUnit, 0xEu, 0, 0, &inData, 4u))
        {
          v4 = VSGetLogDefault();
          if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v5 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
          v12 = 138412290;
          v13 = v5;
          v6 = "Error AudioUnitSetProperty _voiceBoostUnit, kAudioUnitProperty_MaximumFramesPerSlice %@";
        }

        else if (AudioUnitSetProperty(self->_voiceBoostUnit, 8u, 1u, 0, &inDestinationFormat, 0x28u))
        {
          v4 = VSGetLogDefault();
          if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v5 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
          v12 = 138412290;
          v13 = v5;
          v6 = "Error AudioUnitSetProperty _voiceBoostUnit, kAudioUnitProperty_StreamFormat, kAudioUnitScope_Input %@";
        }

        else if (AudioUnitSetProperty(self->_voiceBoostUnit, 8u, 2u, 0, &inDestinationFormat, 0x28u))
        {
          v4 = VSGetLogDefault();
          if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v5 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
          v12 = 138412290;
          v13 = v5;
          v6 = "Error AudioUnitSetProperty _voiceBoostUnit, kAudioUnitProperty_StreamFormat, kAudioUnitScope_Output, %@";
        }

        else
        {
          if (!AudioUnitInitialize(self->_voiceBoostUnit))
          {
            return 1;
          }

          v4 = VSGetLogDefault();
          if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v5 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
          v12 = 138412290;
          v13 = v5;
          v6 = "Error AudioUnitInitialize _voiceBoostUnit %@";
        }
      }

      p_buf = &v12;
      goto LABEL_8;
    }

    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
      buf.componentType = 138412290;
      *&buf.componentSubType = v5;
      v6 = "Error AudioUnitSetProperty _integerConverter %@";
      goto LABEL_7;
    }
  }

LABEL_23:

  return 0;
}

- (void)dealloc
{
  [(VSVoiceBooster *)self uninitialize];
  v3.receiver = self;
  v3.super_class = VSVoiceBooster;
  [(VSVoiceBooster *)&v3 dealloc];
}

- (VSVoiceBooster)initWithStreamDescription:(AudioStreamBasicDescription *)description pcmBufferSize:(unint64_t)size
{
  v9.receiver = self;
  v9.super_class = VSVoiceBooster;
  result = [(VSVoiceBooster *)&v9 init];
  if (result)
  {
    v7 = *&description->mSampleRate;
    v8 = *&description->mBytesPerPacket;
    *&result->_asbd.mBitsPerChannel = *&description->mBitsPerChannel;
    *&result->_asbd.mSampleRate = v7;
    *&result->_asbd.mBytesPerPacket = v8;
    result->_pcmBufferSize = size;
    result->_audioTimeStamp.mFlags = 2;
  }

  return result;
}

@end