@interface SHSpectralPeakFeaturesExtractor
- (BOOL)flowBuffer:(id)buffer error:(id *)error;
- (BOOL)setRollingBufferSeconds:(float)seconds error:(id *)error;
- (SHSpectralPeakFeaturesExtractor)initWithClipStype:(int64_t)stype maximumSeconds:(double)seconds sampleRate:(double)rate error:(id *)error;
- (id)signatureWithError:(id *)error;
- (int)signatureType;
- (void)dealloc;
- (void)disableSpectralOutput;
- (void)enableSpectralOutputWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)reset;
@end

@implementation SHSpectralPeakFeaturesExtractor

- (SHSpectralPeakFeaturesExtractor)initWithClipStype:(int64_t)stype maximumSeconds:(double)seconds sampleRate:(double)rate error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = SHSpectralPeakFeaturesExtractor;
  v10 = [(SHSpectralPeakFeaturesExtractor *)&v28 init];
  if (!v10)
  {
LABEL_12:
    v24 = v10;
    goto LABEL_16;
  }

  v11 = os_log_create("com.apple.shazamkit", "feature-extraction");
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_230F52000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SHSpectralPeakFeaturesExtractor_Init", "", buf, 2u);
  }

  v10->_clipStyle = stype;
  v10->_sampleRate = rate;
  v15 = [[SHSigX alloc] initWithSignatureType:[(SHSpectralPeakFeaturesExtractor *)v10 signatureType] sampleRate:rate error:error];
  sigX = v10->_sigX;
  v10->_sigX = v15;

  sigX = [(SHSpectralPeakFeaturesExtractor *)v10 sigX];
  v18 = sigX == 0;

  if (!v18)
  {
    if ([(SHSpectralPeakFeaturesExtractor *)v10 signatureType]== 4)
    {
      sigX2 = [(SHSpectralPeakFeaturesExtractor *)v10 sigX];
      *&v21 = seconds;
      [sigX2 setRollingBufferSeconds:error error:v21];
    }

    v22 = v14;
    v23 = v22;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_230F52000, v23, OS_SIGNPOST_INTERVAL_END, v12, "SHSpectralPeakFeaturesExtractor_Init", "", buf, 2u);
    }

    goto LABEL_12;
  }

  v25 = sh_log_object(v19);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = *error;
    *buf = 138412290;
    v30 = v26;
    _os_log_impl(&dword_230F52000, v25, OS_LOG_TYPE_ERROR, "Spectral peaks feature extractor failed to initialize with error: %@", buf, 0xCu);
  }

  v24 = 0;
LABEL_16:

  return v24;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  sigX = self->_sigX;
  if (sigX)
  {
    [(SHSigX *)sigX disableSpectralOutput];
    v4 = self->_sigX;
    v10 = 0;
    [(SHSigX *)v4 resetWithError:&v10];
    v5 = v10;
    v6 = v5;
    if (v5)
    {
      v7 = sh_log_object(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v6;
        _os_log_impl(&dword_230F52000, v7, OS_LOG_TYPE_ERROR, "Error resetting SigX %@", buf, 0xCu);
      }
    }

    v8 = self->_sigX;
    self->_sigX = 0;
  }

  v9.receiver = self;
  v9.super_class = SHSpectralPeakFeaturesExtractor;
  [(SHSpectralPeakFeaturesExtractor *)&v9 dealloc];
}

- (void)reset
{
  v10 = *MEMORY[0x277D85DE8];
  sigX = self->_sigX;
  if (sigX)
  {
    v7 = 0;
    v3 = [(SHSigX *)sigX resetWithError:&v7];
    v4 = v7;
    v5 = v4;
    if (!v3)
    {
      v6 = sh_log_object(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v5;
        _os_log_impl(&dword_230F52000, v6, OS_LOG_TYPE_ERROR, "Error resetting SigX %@", buf, 0xCu);
      }
    }
  }
}

- (void)disableSpectralOutput
{
  sigX = [(SHSpectralPeakFeaturesExtractor *)self sigX];
  [sigX disableSpectralOutput];
}

- (id)signatureWithError:(id *)error
{
  sigX = [(SHSpectralPeakFeaturesExtractor *)self sigX];
  v5 = [sigX signatureWithError:error];

  return v5;
}

- (BOOL)flowBuffer:(id)buffer error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  format = [bufferCopy format];
  [format sampleRate];
  v9 = v8;
  [(SHSpectralPeakFeaturesExtractor *)self sampleRate];
  v11 = v10;

  if (v9 == v11)
  {
    goto LABEL_6;
  }

  v13 = sh_log_object(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    [(SHSpectralPeakFeaturesExtractor *)self sampleRate];
    v15 = v14;
    format2 = [bufferCopy format];
    [format2 sampleRate];
    *buf = 134218240;
    v35 = v15;
    v36 = 2048;
    v37 = v17;
    _os_log_impl(&dword_230F52000, v13, OS_LOG_TYPE_INFO, "Sample rate for spectral peaks extractor changed from %.1f to %.1f", buf, 0x16u);
  }

  [(SHSpectralPeakFeaturesExtractor *)self reset];
  sigX = self->_sigX;
  self->_sigX = 0;

  format3 = [bufferCopy format];
  [format3 sampleRate];
  self->_sampleRate = v20;

  v21 = [SHSigX alloc];
  signatureType = [(SHSpectralPeakFeaturesExtractor *)self signatureType];
  [(SHSpectralPeakFeaturesExtractor *)self sampleRate];
  v33 = 0;
  v24 = [(SHSigX *)v21 initWithSignatureType:signatureType sampleRate:v23 error:&v33];
  sigX2 = v33;
  v26 = self->_sigX;
  self->_sigX = v24;

  sigX = [(SHSpectralPeakFeaturesExtractor *)self sigX];
  LODWORD(v24) = sigX == 0;

  if (!v24)
  {

LABEL_6:
    sigX2 = [(SHSpectralPeakFeaturesExtractor *)self sigX];
    v29 = [sigX2 flowBuffer:bufferCopy error:error];
    goto LABEL_7;
  }

  v31 = sh_log_object(v28);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v35 = sigX2;
    _os_log_impl(&dword_230F52000, v31, OS_LOG_TYPE_ERROR, "Spectral peaks feature extractor failed to initialize with error: %@", buf, 0xCu);
  }

  if (error)
  {
    v32 = sigX2;
    v29 = 0;
    *error = sigX2;
  }

  else
  {
    v29 = 0;
  }

LABEL_7:

  return v29;
}

- (BOOL)setRollingBufferSeconds:(float)seconds error:(id *)error
{
  sigX = [(SHSpectralPeakFeaturesExtractor *)self sigX];
  *&v7 = seconds;
  LOBYTE(error) = [sigX setRollingBufferSeconds:error error:v7];

  return error;
}

- (int)signatureType
{
  if ([(SHSpectralPeakFeaturesExtractor *)self clipStyle]== 1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

- (void)enableSpectralOutputWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  sigX = [(SHSpectralPeakFeaturesExtractor *)self sigX];
  [sigX enableSpectralOutputForNumberOfFrequencyBins:objc_msgSend(configurationCopy callbackFrequency:"numberOfBins") completionHandler:{objc_msgSend(configurationCopy, "callbackFrequency"), handlerCopy}];
}

@end