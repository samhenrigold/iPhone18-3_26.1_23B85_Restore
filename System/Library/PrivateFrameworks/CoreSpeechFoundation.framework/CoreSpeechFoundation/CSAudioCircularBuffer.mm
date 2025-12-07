@interface CSAudioCircularBuffer
- (CSAudioCircularBuffer)initWithNumChannels:(unint64_t)channels recordingDuration:(float)duration samplingRate:(float)rate audioTimeConverter:(id)converter;
- (id)copyBufferWithNumSamplesCopiedIn:(unint64_t *)in;
- (id)copySamplesFrom:(unint64_t)from to:(unint64_t)to;
- (id)copySamplesFrom:(unint64_t)from to:(unint64_t)to channelIdx:(unint64_t)idx;
- (id)copySamplesFromHostTime:(unint64_t)time;
- (id)copybufferFrom:(unint64_t)from to:(unint64_t)to;
- (void)addSamples:(const void *)samples numSamples:(unint64_t)numSamples;
- (void)addSamples:(const void *)samples numSamples:(unint64_t)numSamples atHostTime:(unint64_t)time;
- (void)reset;
@end

@implementation CSAudioCircularBuffer

- (void)reset
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAudioCircularBuffer reset]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s CSAudioCircularBuffer.reset", &v5, 0xCu);
  }

  ptr = self->_csAudioCircularBufferImpl.__ptr_;
  ptr[3] = 0;
  ptr[4] = 0;
}

- (id)copyBufferWithNumSamplesCopiedIn:(unint64_t *)in
{
  v25 = *MEMORY[0x1E69E9840];
  ptr = self->_csAudioCircularBufferImpl.__ptr_;
  v6 = ptr[4];
  v7 = ptr[2];
  v8 = v6 >= v7;
  v9 = v6 - v7;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *in;
    v17 = 136315906;
    v18 = "[CSAudioCircularBuffer copyBufferWithNumSamplesCopiedIn:]";
    v19 = 2050;
    v20 = v10;
    v21 = 2050;
    v22 = v6;
    v23 = 2050;
    v24 = v12;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s copyBuffer: oldestSample: %{public}lu latestSample: %{public}lu, numSamplesCopied: %{public}lu", &v17, 0x2Au);
  }

  v13 = [(CSAudioCircularBuffer *)self copySamplesFrom:v10 to:v6];
  v14 = v13;
  if (v13)
  {
    *in = [v13 numSamples];
    data = [v14 data];
  }

  else
  {
    data = 0;
    *in = 0;
  }

  return data;
}

- (id)copybufferFrom:(unint64_t)from to:(unint64_t)to
{
  v20 = *MEMORY[0x1E69E9840];
  corespeech::CSAudioCircularBufferImpl<unsigned short>::copySamples(&v11, self->_csAudioCircularBufferImpl.__ptr_, from, to);
  v7 = v11;
  if (v11)
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v11 length:2 * (to - from) * *self->_csAudioCircularBufferImpl.__ptr_];
    MEMORY[0x1E12B9880](v7, 0x1000C80BDFB0063);
  }

  else
  {
    v9 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v13 = "[CSAudioCircularBuffer copybufferFrom:to:]";
      v14 = 2050;
      fromCopy = from;
      v16 = 2050;
      toCopy = to;
      v18 = 2050;
      v19 = 0;
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Could NOT copyFrom: %{public}lu to: %{public}lu, retSampleCount: %{public}lu", buf, 0x2Au);
    }

    v8 = 0;
  }

  return v8;
}

- (id)copySamplesFrom:(unint64_t)from to:(unint64_t)to channelIdx:(unint64_t)idx
{
  v28 = *MEMORY[0x1E69E9840];
  ptr = self->_csAudioCircularBufferImpl.__ptr_;
  v8 = ptr[2];
  v9 = ptr[4];
  if (v9 >= v8)
  {
    v10 = v9 - v8;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= from && to > from && v9 >= to && v9 > from && v10 < to)
  {
    operator new[]();
  }

  v15 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v19 = "copySamples";
    v20 = 2050;
    fromCopy2 = from;
    v22 = 2050;
    toCopy2 = to;
    v24 = 2050;
    v25 = v10;
    v26 = 2050;
    v27 = v9;
    _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s Invalid request: reqStartSample=%{public}lu, reqEndSample=%{public}lu, oldestSampleInBuffer: %{public}lu, latestSampleInBuffer=%{public}lu", buf, 0x34u);
  }

  v16 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v19 = "[CSAudioCircularBuffer copySamplesFrom:to:channelIdx:]";
    v20 = 2050;
    fromCopy2 = from;
    v22 = 2050;
    toCopy2 = to;
    v24 = 2050;
    v25 = 0;
    _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s Could NOT copyFrom: %{public}lu to: %{public}lu, retSampleCount: %{public}lu", buf, 0x2Au);
  }

  return 0;
}

- (id)copySamplesFrom:(unint64_t)from to:(unint64_t)to
{
  v28 = *MEMORY[0x1E69E9840];
  corespeech::CSAudioCircularBufferImpl<unsigned short>::copySamples(&v19, self->_csAudioCircularBufferImpl.__ptr_, from, to);
  v7 = v19;
  if (v19)
  {
    v8 = *self->_csAudioCircularBufferImpl.__ptr_;
    v9 = to - from;
    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v19 length:2 * (to - from) * v8];
    audioTimeConverter = self->_audioTimeConverter;
    if (audioTimeConverter)
    {
      v12 = [(CSAudioTimeConverter *)audioTimeConverter hostTimeFromSampleCount:from];
    }

    else
    {
      v12 = 0;
    }

    v15 = [CSAudioChunk alloc];
    LOBYTE(v18) = +[CSConfig inputRecordingIsFloat];
    LOBYTE(v17) = 1;
    v14 = [(CSAudioChunk *)v15 initWithData:v10 numChannels:v8 numSamples:v9 sampleByteDepth:2 startSampleCount:from hostTime:v12 arrivalHostTimeToAudioRecorder:0 wasBuffered:v17 remoteVAD:0 isFloat:v18];

    MEMORY[0x1E12B9880](v7, 0x1000C80BDFB0063);
  }

  else
  {
    v13 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v21 = "[CSAudioCircularBuffer copySamplesFrom:to:]";
      v22 = 2050;
      fromCopy = from;
      v24 = 2050;
      toCopy = to;
      v26 = 2050;
      v27 = 0;
      _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s Could NOT copyFrom: %{public}lu to: %{public}lu, retSampleCount: %{public}lu", buf, 0x2Au);
    }

    return 0;
  }

  return v14;
}

- (id)copySamplesFromHostTime:(unint64_t)time
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(self->_csAudioCircularBufferImpl.__ptr_ + 4))
  {
    audioTimeConverter = self->_audioTimeConverter;
    if (audioTimeConverter)
    {
      v5 = [(CSAudioTimeConverter *)audioTimeConverter sampleCountFromHostTime:time];
    }

    else
    {
      v5 = 0;
    }

    sampleCount = [(CSAudioCircularBuffer *)self sampleCount];

    return [(CSAudioCircularBuffer *)self copySamplesFrom:v5 to:sampleCount];
  }

  else
  {
    v6 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSAudioCircularBuffer copySamplesFromHostTime:]";
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Cannot copy samples since this is empty", &v9, 0xCu);
    }

    return 0;
  }
}

- (void)addSamples:(const void *)samples numSamples:(unint64_t)numSamples atHostTime:(unint64_t)time
{
  ptr = self->_csAudioCircularBufferImpl.__ptr_;
  v7 = ptr[2];
  if (*ptr)
  {
    v9 = 0;
    v20 = numSamples - v7;
    __n = 2 * numSamples;
    do
    {
      v10 = ptr[3];
      v11 = *(ptr[6] + 8 * v9);
      v12 = samples + 2 * v9 * numSamples;
      v13 = v7 - v10;
      v14 = numSamples - (v7 - v10);
      if (numSamples <= v7 - v10)
      {
        memcpy(&v11[2 * v10], samples + 2 * v9 * numSamples, __n);
        v14 = v10 + numSamples;
      }

      else
      {
        if (numSamples >= v7)
        {
          v14 = (v10 + v20) % v7;
          v18 = &v12[2 * v20];
          memcpy(&v11[2 * v14], v18, 2 * (v7 - v14));
          v16 = &v18[2 * (v7 - v14)];
          v17 = v11;
          v15 = 2 * v14;
        }

        else
        {
          memcpy(&v11[2 * v10], samples + 2 * v9 * numSamples, 2 * v13);
          v15 = 2 * v14;
          v16 = &v12[2 * v13];
          v17 = v11;
        }

        memcpy(v17, v16, v15);
      }

      ++v9;
    }

    while (v9 < *ptr);
  }

  else
  {
    v14 = ptr[3];
  }

  v19 = ptr[4] + numSamples;
  ptr[3] = v14 % v7;
  ptr[4] = v19;
}

- (void)addSamples:(const void *)samples numSamples:(unint64_t)numSamples
{
  v7 = mach_absolute_time();

  [(CSAudioCircularBuffer *)self addSamples:samples numSamples:numSamples atHostTime:v7];
}

- (CSAudioCircularBuffer)initWithNumChannels:(unint64_t)channels recordingDuration:(float)duration samplingRate:(float)rate audioTimeConverter:(id)converter
{
  v10 = *MEMORY[0x1E69E9840];
  converterCopy = converter;
  v9.receiver = self;
  v9.super_class = CSAudioCircularBuffer;
  if ([(CSAudioCircularBuffer *)&v9 init])
  {
    operator new();
  }

  return 0;
}

@end