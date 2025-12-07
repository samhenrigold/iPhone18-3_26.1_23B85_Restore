@interface SHSigX
+ (id)version;
- (BOOL)ConvertSigXErrorCode:(id *)code code:(int)a4;
- (BOOL)flowBuffer:(id)buffer error:(id *)error;
- (BOOL)flowFloatSamples:(float *)samples sampleCount:(int)count channels:(int)channels error:(id *)error;
- (BOOL)flowFloatSamples:(float *)samples sampleCount:(int)count error:(id *)error;
- (BOOL)flowIntSamples:(const signed __int16 *)samples sampleCount:(int)count error:(id *)error;
- (BOOL)flowIntSamples:(signed __int16 *)samples sampleCount:(int)count channels:(int)channels error:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (BOOL)setRollingBufferSeconds:(float)seconds error:(id *)error;
- (SHSigX)initWithSignatureType:(int)type sampleRate:(unsigned int)rate signatureOptions:(int)options error:(id *)error;
- (id)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:;
- (id)signatureWithError:(id *)error;
- (uint64_t)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:;
- (void)dealloc;
- (void)disableSpectralOutput;
- (void)enableSpectralOutputForNumberOfFrequencyBins:(int)bins callbackFrequency:(int)frequency completionHandler:(id)handler;
- (void)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:;
@end

@implementation SHSigX

- (BOOL)flowBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  if (![bufferCopy int16ChannelData])
  {
    if ([bufferCopy int32ChannelData] || !objc_msgSend(bufferCopy, "floatChannelData"))
    {
      [SHError annotateClientError:error code:100 underlyingError:0];
      v11 = 0;
      goto LABEL_11;
    }

    if (*[bufferCopy floatChannelData])
    {
      v12 = *[bufferCopy floatChannelData];
      frameLength = [bufferCopy frameLength];
      format = [bufferCopy format];
      v10 = -[SHSigX flowFloatSamples:sampleCount:channels:error:](self, "flowFloatSamples:sampleCount:channels:error:", v12, frameLength, [format channelCount], error);
      goto LABEL_4;
    }

LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  if (!*[bufferCopy int16ChannelData])
  {
    goto LABEL_10;
  }

  v7 = *[bufferCopy int16ChannelData];
  frameLength2 = [bufferCopy frameLength];
  format = [bufferCopy format];
  v10 = -[SHSigX flowIntSamples:sampleCount:channels:error:](self, "flowIntSamples:sampleCount:channels:error:", v7, frameLength2, [format channelCount], error);
LABEL_4:
  v11 = v10;

LABEL_11:
  return v11;
}

- (BOOL)ConvertSigXErrorCode:(id *)code code:(int)a4
{
  if (code)
  {
    v6 = shazam::sigx_category(self);
    v7 = MEMORY[0x277CCACA8];
    (*v6)[6](__p);
    v8 = v17;
    v9 = __p[0];
    defaultCStringEncoding = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v8 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = v9;
    }

    v12 = [v7 stringWithCString:v11 encoding:defaultCStringEncoding];
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v12 forKey:*MEMORY[0x277CCA450]];
    *code = [v13 errorWithDomain:@"com.shazam.sigx" code:a4 userInfo:v14];
  }

  return code != 0;
}

- (SHSigX)initWithSignatureType:(int)type sampleRate:(unsigned int)rate signatureOptions:(int)options error:(id *)error
{
  v7 = *&options;
  v8 = *&rate;
  v9 = *&type;
  v17.receiver = self;
  v17.super_class = SHSigX;
  v10 = [(SHSigX *)&v17 init];
  if (v10)
  {
    shazam::sig_extractor_pipe<shazam::spectral_peak_t>::create(v9, v8, v7, &v15);
    if (v16 == 1)
    {
      v11 = tl::expected<std::unique_ptr<shazam::sigx_pipe_base>,shazam::sigx_error>::value<std::unique_ptr<shazam::sigx_pipe_base>,(void *)0>(&v15);
      v12 = *v11;
      *v11 = 0;
      v10->_pipeline = v12;
    }

    else
    {
      [(SHSigX *)v10 ConvertSigXErrorCode:error code:v15];

      v10 = 0;
    }

    if (v16 == 1)
    {
      v13 = v15;
      v15 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }
  }

  return v10;
}

- (BOOL)flowIntSamples:(const signed __int16 *)samples sampleCount:(int)count error:(id *)error
{
  (*(self->_pipeline->var0 + 2))(self->_pipeline, samples, *&count);
  v7 = (*(self->_pipeline->var0 + 8))(self->_pipeline);
  if (v7)
  {
    [(SHSigX *)self ConvertSigXErrorCode:error code:v7];
  }

  return v7 == 0;
}

- (BOOL)flowFloatSamples:(float *)samples sampleCount:(int)count error:(id *)error
{
  v6 = *&count;
  v9 = gsl::make_span<shazam::spectral_peak_compact_t const>(samples, count);
  v11 = v10;
  v12 = v10 + 4 * v9;
  v18 = v10;
  v19 = v12;
  v20 = v10;
  while (v20 != v12)
  {
    v13 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v18);
    *v13 = *v13 * 32767.0;
    v14 = gsl::details::span_iterator<float>::operator++(&v18);
    if (v18 != v11 || v19 != v12)
    {
      gsl::details::terminate(v14);
    }
  }

  (*(self->_pipeline->var0 + 3))(self->_pipeline, samples, v6);
  v16 = (*(self->_pipeline->var0 + 8))(self->_pipeline);
  if (v16)
  {
    [(SHSigX *)self ConvertSigXErrorCode:error code:v16];
  }

  return v16 == 0;
}

- (BOOL)flowIntSamples:(signed __int16 *)samples sampleCount:(int)count channels:(int)channels error:(id *)error
{
  v7 = *&count;
  shazam::audio::downMix<short>(samples, count, channels);
  (*(self->_pipeline->var0 + 2))(self->_pipeline, samples, v7);
  v10 = (*(self->_pipeline->var0 + 8))(self->_pipeline);
  if (v10)
  {
    [(SHSigX *)self ConvertSigXErrorCode:error code:v10];
  }

  return v10 == 0;
}

- (BOOL)flowFloatSamples:(float *)samples sampleCount:(int)count channels:(int)channels error:(id *)error
{
  v8 = *&count;
  v11 = gsl::make_span<shazam::spectral_peak_compact_t const>(samples, (channels * count));
  v13 = v12;
  v14 = v12 + 4 * v11;
  v20 = v12;
  v21 = v14;
  v22 = v12;
  while (v22 != v14)
  {
    v15 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v20);
    *v15 = *v15 * 32767.0;
    v16 = gsl::details::span_iterator<float>::operator++(&v20);
    if (v20 != v13 || v21 != v14)
    {
      gsl::details::terminate(v16);
    }
  }

  shazam::audio::downMix<float>(samples, v8, channels);
  (*(self->_pipeline->var0 + 3))(self->_pipeline, samples, v8);
  v18 = (*(self->_pipeline->var0 + 8))(self->_pipeline);
  if (v18)
  {
    [(SHSigX *)self ConvertSigXErrorCode:error code:v18];
  }

  return v18 == 0;
}

- (BOOL)resetWithError:(id *)error
{
  (*(self->_pipeline->var0 + 7))(self->_pipeline, a2);
  v5 = (*(self->_pipeline->var0 + 8))(self->_pipeline);
  if (v5)
  {
    [(SHSigX *)self ConvertSigXErrorCode:error code:v5];
  }

  return v5 == 0;
}

- (id)signatureWithError:(id *)error
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(self->_pipeline->var0 + 6))(self->_pipeline, &__p);
  v5 = (*(self->_pipeline->var0 + 8))(self->_pipeline);
  if (v5)
  {
    [(SHSigX *)self ConvertSigXErrorCode:error code:v5];
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:__p length:v9 - __p];
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

+ (id)version
{
  v2 = MEMORY[0x277CCACA8];
  defaultCStringEncoding = [MEMORY[0x277CCACA8] defaultCStringEncoding];

  return [v2 stringWithCString:"25.5.4 (compilation mode 'release' encoding:{built on 'OS X')", defaultCStringEncoding}];
}

- (void)dealloc
{
  pipeline = self->_pipeline;
  if (pipeline)
  {
    (*(pipeline->var0 + 1))(pipeline, a2);
  }

  v4.receiver = self;
  v4.super_class = SHSigX;
  [(SHSigX *)&v4 dealloc];
}

- (BOOL)setRollingBufferSeconds:(float)seconds error:(id *)error
{
  (*(self->_pipeline->var0 + 9))(self->_pipeline, a2, seconds);
  v6 = (*(self->_pipeline->var0 + 8))(self->_pipeline);
  if (v6)
  {
    [(SHSigX *)self ConvertSigXErrorCode:error code:v6];
  }

  return v6 == 0;
}

- (void)enableSpectralOutputForNumberOfFrequencyBins:(int)bins callbackFrequency:(int)frequency completionHandler:(id)handler
{
  v13[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  [(SHSigX *)self setSpectralOutputHandler:handlerCopy];
  selfCopy = self;
  v10 = (*(selfCopy->_pipeline->var0 + 10))(selfCopy->_pipeline);
  v11 = selfCopy;
  v13[0] = &unk_2845C6008;
  v13[1] = v11;
  v13[3] = v13;
  shazam::SpectralOutput::enable(v10, bins, frequency, v13, v12);
  std::__function::__value_func<void ()(float const*,unsigned long)>::~__value_func[abi:ne200100](v13);
}

- (void)disableSpectralOutput
{
  v3 = (*(self->_pipeline->var0 + 10))(self->_pipeline, a2);
  shazam::SpectralOutput::disable(v3);

  [(SHSigX *)self setSpectralOutputHandler:0];
}

- (void)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:
{
  v4 = *a2;
  v5 = *a3;
  v6 = objc_autoreleasePoolPush();
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
  {
    LODWORD(v8) = *v4;
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    [i addObject:v9];

    ++v4;
  }

  spectralOutputHandler = [*(self + 8) spectralOutputHandler];
  v11 = [i copy];
  (spectralOutputHandler)[2](spectralOutputHandler, v11);

  objc_autoreleasePoolPop(v6);
}

- (id)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:
{
  *a2 = &unk_2845C6008;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (uint64_t)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)initWithSignatureType:(uint64_t *)a1 sampleRate:(uint64_t)a2 signatureOptions:(int)a3 error:(uint64_t)a4 .cold.1(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

@end