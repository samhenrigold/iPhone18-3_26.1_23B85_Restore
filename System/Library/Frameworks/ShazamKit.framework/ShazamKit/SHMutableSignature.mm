@interface SHMutableSignature
- (BOOL)appendBuffer:(id)buffer atTime:(id)time error:(id *)error;
- (BOOL)configureMusicalFeaturesExtractorWithConfiguration:(id)configuration sampleRate:(double)rate error:(id *)error;
- (BOOL)configureSpectralPeaksExtractorWithSampleRate:(double)rate error:(id *)error;
- (BOOL)updateRingBufferDuration:(double)duration error:(id *)error;
- (SHAudioConverter)audioConverter;
- (SHMutableSignature)initWithCoder:(id)coder;
- (SHMutableSignature)initWithID:(id)d dataRepresentation:(id)representation startTime:(id)time error:(id *)error;
- (SHMutableSignature)initWithMaximumSeconds:(double)seconds clipStyle:(int64_t)style;
- (SHMutableSignature)initWithMaximumSeconds:(double)seconds clipStyle:(int64_t)style musicalFeaturesConfiguration:(id)configuration;
- (double)duration;
- (double)secondsFromFrameCount:(unsigned int)count forFormat:(id)format;
- (id)clipExcessAudio:(id)audio;
- (id)dataRepresentation;
- (id)generate:(id *)generate;
- (int64_t)currentPosition;
- (void)configureWithFormat:(id)format;
- (void)disableSpectralOutput;
- (void)enableSpectralOutputWithConfiguration:(id)configuration;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
@end

@implementation SHMutableSignature

- (SHMutableSignature)initWithMaximumSeconds:(double)seconds clipStyle:(int64_t)style musicalFeaturesConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10 = [(SHMutableSignature *)self initWithMaximumSeconds:style clipStyle:seconds];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_musicalFeaturesConfiguration, configuration);
  }

  return v11;
}

- (SHMutableSignature)initWithMaximumSeconds:(double)seconds clipStyle:(int64_t)style
{
  if (seconds <= 0.0)
  {
    v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Signature maximum duration must be greater than zero" userInfo:0];
    objc_exception_throw(v13);
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  data = [MEMORY[0x277CBEA90] data];
  data2 = [MEMORY[0x277CBEA90] data];
  v14.receiver = self;
  v14.super_class = SHMutableSignature;
  v10 = [(SHSignature *)&v14 initWithID:uUID spectralPeaksData:data musicalFeaturesData:data2 startTime:0 error:0];

  if (v10)
  {
    secondsCopy = 36000.0;
    if (seconds <= 36000.0)
    {
      secondsCopy = seconds;
    }

    v10->_maximumSeconds = secondsCopy;
    v10->_clipStyle = style;
  }

  return v10;
}

- (SHMutableSignature)initWithID:(id)d dataRepresentation:(id)representation startTime:(id)time error:(id *)error
{
  v7.receiver = self;
  v7.super_class = SHMutableSignature;
  result = [(SHSignature *)&v7 initWithID:d dataRepresentation:representation startTime:time error:error];
  if (result)
  {
    result->_maximumSeconds = 36000.0;
    result->_clipStyle = 0;
  }

  return result;
}

- (SHMutableSignature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SHMutableSignature;
  v5 = [(SHSignature *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"SHMutableSignatureCodingMaximumSeconds"];
    v5->_maximumSeconds = v6;
    v5->_clipStyle = [coderCopy decodeIntegerForKey:@"SHMutableSignatureCodingClipStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SHMutableSignature;
  coderCopy = coder;
  [(SHSignature *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[SHMutableSignature clipStyle](self forKey:{"clipStyle", v5.receiver, v5.super_class), @"SHMutableSignatureCodingClipStyle"}];
  [(SHMutableSignature *)self maximumSeconds];
  [coderCopy encodeDouble:@"SHMutableSignatureCodingMaximumSeconds" forKey:?];
}

- (BOOL)updateRingBufferDuration:(double)duration error:(id *)error
{
  clipStyle = [(SHMutableSignature *)self clipStyle];
  if (clipStyle != 1)
  {
    v25 = sh_log_object(clipStyle);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_impl(&dword_230F52000, v25, OS_LOG_TYPE_ERROR, "Can't update mutable signature duration as the clip style is not OLD", v26, 2u);
    }

    [SHError annotateClientError:error code:500 underlyingError:0];
    return 0;
  }

  extractorController = [(SHMutableSignature *)self extractorController];
  if (extractorController)
  {
    v9 = extractorController;
    extractorController2 = [(SHMutableSignature *)self extractorController];
    *&v11 = duration;
    v12 = [extractorController2 setRollingBufferSeconds:error error:v11];

    if (!v12)
    {
      return 0;
    }
  }

  [(SHMutableSignature *)self duration];
  if (v13 > duration)
  {
    [(SHMutableSignature *)self duration];
    v15 = v14 - duration;
    format = [(SHMutableSignature *)self format];
    [format sampleRate];
    v18 = (v15 * v17);

    v19 = objc_alloc(MEMORY[0x277CB8428]);
    time = [(SHSignature *)self time];
    sampleTime = [time sampleTime];
    format2 = [(SHMutableSignature *)self format];
    [format2 sampleRate];
    v23 = [v19 initWithSampleTime:sampleTime + v18 atRate:?];
    [(SHSignature *)self setTime:v23];

    [(SHMutableSignature *)self setCurrentFrameCount:[(SHMutableSignature *)self currentFrameCount]- v18];
  }

  self->_maximumSeconds = duration;
  return 1;
}

- (BOOL)configureSpectralPeaksExtractorWithSampleRate:(double)rate error:(id *)error
{
  extractorController = [(SHMutableSignature *)self extractorController];

  if (!extractorController)
  {
    v7 = objc_alloc_init(SHFeatureExtractorController);
    extractorController = self->_extractorController;
    self->_extractorController = v7;
  }

  extractorController2 = [(SHMutableSignature *)self extractorController];
  clipStyle = [(SHMutableSignature *)self clipStyle];
  [(SHMutableSignature *)self maximumSeconds];
  v11 = [extractorController2 configureSpectralPeaksExtractorWithClipStype:clipStyle maximumSeconds:error sampleRate:? error:?];

  return v11;
}

- (BOOL)configureMusicalFeaturesExtractorWithConfiguration:(id)configuration sampleRate:(double)rate error:(id *)error
{
  configurationCopy = configuration;
  extractorController = [(SHMutableSignature *)self extractorController];

  if (!extractorController)
  {
    v10 = objc_alloc_init(SHFeatureExtractorController);
    extractorController = self->_extractorController;
    self->_extractorController = v10;
  }

  extractorController2 = [(SHMutableSignature *)self extractorController];
  v13 = [extractorController2 configureMusicalFeaturesExtractorWithConfiguration:configurationCopy sampleRate:error error:rate];

  return v13;
}

- (void)configureWithFormat:(id)format
{
  v33 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  v5 = os_log_create("com.apple.shazamkit", "feature-extraction");
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_230F52000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SHMutableSignature_ConfigureWithFormat", "", buf, 2u);
  }

  [(SHMutableSignature *)self setFormat:formatCopy];
  [formatCopy sampleRate];
  v30 = 0;
  v9 = [(SHMutableSignature *)self configureSpectralPeaksExtractorWithSampleRate:&v30 error:?];
  v10 = v30;
  v11 = v10;
  if (!v9)
  {
    v23 = sh_log_object(v10);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v11;
      _os_log_impl(&dword_230F52000, v23, OS_LOG_TYPE_ERROR, "Could not configure spectral peaks extractor with error %@", buf, 0xCu);
    }

    v24 = MEMORY[0x277CBEAD8];
    v25 = *MEMORY[0x277CBE660];
    localizedDescription = [v11 localizedDescription];
    v27 = [v24 exceptionWithName:v25 reason:localizedDescription userInfo:0];
    v28 = v27;

    objc_exception_throw(v27);
  }

  musicalFeaturesConfiguration = [(SHMutableSignature *)self musicalFeaturesConfiguration];
  if (musicalFeaturesConfiguration)
  {
    v13 = musicalFeaturesConfiguration;
    musicalFeaturesConfiguration2 = [(SHMutableSignature *)self musicalFeaturesConfiguration];
    [formatCopy sampleRate];
    v29 = 0;
    v15 = [(SHMutableSignature *)self configureMusicalFeaturesExtractorWithConfiguration:musicalFeaturesConfiguration2 sampleRate:&v29 error:?];
    v16 = v29;

    if (!v15)
    {
      v18 = sh_log_object(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v16;
        _os_log_impl(&dword_230F52000, v18, OS_LOG_TYPE_ERROR, "Could not configure musical features with error %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v16 = 0;
  }

  spectralOutputConfiguration = [(SHMutableSignature *)self spectralOutputConfiguration];

  if (spectralOutputConfiguration)
  {
    spectralOutputConfiguration2 = [(SHMutableSignature *)self spectralOutputConfiguration];
    [(SHMutableSignature *)self enableSpectralOutputWithConfiguration:spectralOutputConfiguration2];
  }

  v21 = v8;
  v22 = v21;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_230F52000, v22, OS_SIGNPOST_INTERVAL_END, v6, "SHMutableSignature_ConfigureWithFormat", "", buf, 2u);
  }
}

- (void)enableSpectralOutputWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_initWeak(&location, self);
  extractorController = [(SHMutableSignature *)self extractorController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SHMutableSignature_enableSpectralOutputWithConfiguration___block_invoke;
  v6[3] = &unk_2788F81F0;
  objc_copyWeak(&v7, &location);
  [extractorController enableSpectralOutputWithConfiguration:configurationCopy completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __60__SHMutableSignature_enableSpectralOutputWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 subarrayWithRange:{1, 6}];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = @"spectralData";
  v8[0] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 postNotificationName:@"com.apple.shazamd.sigx.newspectraloutput" object:WeakRetained userInfo:v6];
}

- (void)disableSpectralOutput
{
  extractorController = [(SHMutableSignature *)self extractorController];
  [extractorController disableSpectralOutput];
}

- (void)reset
{
  [(SHMutableSignature *)self setFormat:0];
  [(SHMutableSignature *)self setCurrentFrameCount:0];
  extractorController = [(SHMutableSignature *)self extractorController];
  [extractorController reset];
}

- (id)clipExcessAudio:(id)audio
{
  v20 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  [SHAudioUtilities durationOfBuffer:audioCopy];
  v6 = v5;
  [(SHMutableSignature *)self duration];
  v8 = v6 + v7;
  [(SHMutableSignature *)self maximumSeconds];
  if (v8 > v9)
  {
    [(SHMutableSignature *)self maximumSeconds];
    v11 = v10;
    duration = [(SHMutableSignature *)self duration];
    v14 = v11 - v13;
    v15 = sh_log_object(duration);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = 134217984;
      v19 = v14;
      _os_log_impl(&dword_230F52000, v15, OS_LOG_TYPE_DEBUG, "Audio will be too long we require only %f", &v18, 0xCu);
    }

    v16 = [SHAudioUtilities bufferHead:audioCopy duration:v14];

    audioCopy = v16;
  }

  return audioCopy;
}

- (BOOL)appendBuffer:(id)buffer atTime:(id)time error:(id *)error
{
  v105 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  timeCopy = time;
  format = [bufferCopy format];
  v11 = [SHAudioUtilities willAudioFormatCauseBufferMutation:format];

  if (v11)
  {
    v12 = [bufferCopy copy];

    bufferCopy = v12;
  }

  format2 = [bufferCopy format];
  v14 = [SHAudioUtilities isAudioFormatSupported:format2];

  if (!v14)
  {
    audioConverter = [(SHMutableSignature *)self audioConverter];
    v16 = [audioConverter supportedPCMBufferFromBuffer:bufferCopy error:error];

    if (!v16)
    {
      v26 = sh_log_object(v17);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_230F52000, v26, OS_LOG_TYPE_ERROR, "Failed to convert input buffer to standard format", buf, 2u);
      }

      goto LABEL_41;
    }

    if (timeCopy)
    {
      format3 = [v16 format];
      [format3 sampleRate];
      if (v19 == 0.0)
      {
        v25 = 1.0;
      }

      else
      {
        format4 = [bufferCopy format];
        [format4 sampleRate];
        v22 = v21;
        format5 = [v16 format];
        [format5 sampleRate];
        v25 = v22 / v24;
      }

      v28 = vcvtpd_s64_f64([timeCopy sampleTime] / v25);
      v29 = MEMORY[0x277CB8428];
      format6 = [v16 format];
      [format6 sampleRate];
      v27 = [v29 timeWithSampleTime:v28 atRate:?];
    }

    else
    {
      v27 = 0;
    }

    timeCopy = v27;
    bufferCopy = v16;
  }

  format7 = [(SHMutableSignature *)self format];

  if (!format7)
  {
    [(SHSignature *)self setTime:timeCopy];
    time = [(SHSignature *)self time];
    v33 = [(SHSignature *)self _startDateBasedUponAudioTime:time];
    [(SHSignature *)self setAudioStartDate:v33];

    format8 = [bufferCopy format];
    [(SHMutableSignature *)self configureWithFormat:format8];
  }

  format9 = [bufferCopy format];
  format10 = [(SHMutableSignature *)self format];
  v37 = [format9 isEqual:format10];

  if ((v37 & 1) == 0)
  {
    format11 = [bufferCopy format];
    formatDescription = [format11 formatDescription];

    format12 = [(SHMutableSignature *)self format];
    formatDescription2 = [format12 formatDescription];

    v86 = sh_log_object(v85);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      format13 = [bufferCopy format];
      *buf = 138412546;
      formatDescription3 = [format13 formatDescription];
      v103 = 2112;
      v104 = formatDescription2;
      _os_log_impl(&dword_230F52000, v86, OS_LOG_TYPE_ERROR, "Audio format mismatch %@ != %@", buf, 0x16u);
    }

    v88 = MEMORY[0x277CBEAD8];
    v89 = *MEMORY[0x277CBE660];
    v90 = [MEMORY[0x277CCACA8] stringWithFormat:@"Supplied audio format %@ does not match existing format %@", formatDescription, formatDescription2];
    v91 = [v88 exceptionWithName:v89 reason:v90 userInfo:0];
    v92 = v91;

    objc_exception_throw(v91);
  }

  [SHAudioUtilities durationOfBuffer:bufferCopy];
  v39 = v38;
  [(SHMutableSignature *)self duration];
  v41 = v40;
  [(SHMutableSignature *)self maximumSeconds];
  v43 = v42;
  [(SHMutableSignature *)self duration];
  v45 = v39 + v44;
  [(SHMutableSignature *)self maximumSeconds];
  v47 = v46;
  if ([(SHMutableSignature *)self clipStyle])
  {
    goto LABEL_18;
  }

  if (v41 >= v43)
  {
    v77 = sh_log_object(0);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_230F52000, v77, OS_LOG_TYPE_DEBUG, "Discarding audio we are at max duration with a discard behaviour", buf, 2u);
    }

    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"The signature has reached the max duration"];
    v99[0] = *MEMORY[0x277CCA470];
    v99[1] = @"discardedAudioDuration";
    v100[0] = v26;
    v78 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
    v100[1] = v78;
    v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:2];
    [SHError annotateClientError:error code:201 underlyingError:0 keyOverrides:v79];

LABEL_40:
LABEL_41:

    goto LABEL_42;
  }

  if (v45 <= v47)
  {
LABEL_18:
    if (!timeCopy)
    {
      goto LABEL_22;
    }

    if ([timeCopy isSampleTimeValid])
    {
      if (!-[SHMutableSignature currentPosition](self, "currentPosition") || (v48 = -[SHMutableSignature currentPosition](self, "currentPosition"), v48 == [timeCopy sampleTime]))
      {
LABEL_22:
        extractorController = [(SHMutableSignature *)self extractorController];
        v50 = [extractorController flowBuffer:bufferCopy error:error];

        if (v50)
        {
          if ([(SHMutableSignature *)self clipStyle]== 1 && v45 > v47)
          {
            [(SHMutableSignature *)self maximumSeconds];
            v52 = v51;
            format14 = [(SHMutableSignature *)self format];
            [format14 sampleRate];
            v55 = (v52 * v54);

            LODWORD(format14) = [(SHMutableSignature *)self currentFrameCount];
            v56 = format14 - v55 + [bufferCopy frameLength];
            v57 = objc_alloc(MEMORY[0x277CB8428]);
            time2 = [(SHSignature *)self time];
            sampleTime = [time2 sampleTime];
            format15 = [(SHMutableSignature *)self format];
            [format15 sampleRate];
            v61 = [v57 initWithSampleTime:sampleTime + v56 atRate:?];
            [(SHSignature *)self setTime:v61];

            [(SHMutableSignature *)self setCurrentFrameCount:[(SHMutableSignature *)self currentFrameCount]- v56];
          }

          -[SHMutableSignature setCurrentFrameCount:](self, "setCurrentFrameCount:", -[SHMutableSignature currentFrameCount](self, "currentFrameCount") + [bufferCopy frameLength]);
          v62 = 1;
          goto LABEL_43;
        }

LABEL_42:
        v62 = 0;
        goto LABEL_43;
      }

      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"The current frame position %lld does not equal the sample time %lld", -[SHMutableSignature currentPosition](self, "currentPosition"), objc_msgSend(timeCopy, "sampleTime")];
      v93 = *MEMORY[0x277CCA470];
      v94 = v26;
      v74 = MEMORY[0x277CBEAC0];
      v75 = &v94;
      v76 = &v93;
    }

    else
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"The provided time does not have a valid sample time"];
      v95 = *MEMORY[0x277CCA470];
      v96 = v26;
      v74 = MEMORY[0x277CBEAC0];
      v75 = &v96;
      v76 = &v95;
    }

    v78 = [v74 dictionaryWithObjects:v75 forKeys:v76 count:1];
    [SHError annotateClientError:error code:101 underlyingError:0 keyOverrides:v78];
    goto LABEL_40;
  }

  v63 = [(SHMutableSignature *)self clipExcessAudio:bufferCopy];

  extractorController2 = [(SHMutableSignature *)self extractorController];
  v65 = [extractorController2 flowBuffer:v63 error:error];

  if (v65)
  {
    v67 = sh_log_object(v66);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_230F52000, v67, OS_LOG_TYPE_DEBUG, "Discarding audio we are at max duration with a discard behaviour", buf, 2u);
    }

    v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"The signature has reached the max duration"];
    [(SHMutableSignature *)self maximumSeconds];
    v70 = v69;
    [(SHMutableSignature *)self duration];
    v97[0] = *MEMORY[0x277CCA470];
    v97[1] = @"discardedAudioDuration";
    v98[0] = v68;
    v72 = [MEMORY[0x277CCABB0] numberWithDouble:v39 - (v70 - v71)];
    v98[1] = v72;
    v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];
    [SHError annotateClientError:error code:201 underlyingError:0 keyOverrides:v73];

    -[SHMutableSignature setCurrentFrameCount:](self, "setCurrentFrameCount:", -[SHMutableSignature currentFrameCount](self, "currentFrameCount") + [v63 frameLength]);
  }

  v62 = 0;
  bufferCopy = v63;
LABEL_43:

  return v62;
}

- (int64_t)currentPosition
{
  time = [(SHSignature *)self time];
  sampleTime = [time sampleTime];
  v5 = sampleTime + [(SHMutableSignature *)self currentFrameCount];

  return v5;
}

- (id)generate:(id *)generate
{
  extractorController = [(SHMutableSignature *)self extractorController];
  v5 = [extractorController signatureWithError:generate];

  return v5;
}

- (id)dataRepresentation
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  dataRepresentation = [(SHMutableSignature *)self generate:&v16];
  v4 = v16;
  v5 = v4;
  if (dataRepresentation)
  {
    [SHSigUtilities signatureDurationForData:dataRepresentation error:0];
    v7 = v6;
    maximumSeconds = [(SHMutableSignature *)self maximumSeconds];
    if (v7 > v9)
    {
      v10 = sh_log_object(maximumSeconds);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_230F52000, v10, OS_LOG_TYPE_ERROR, "Rolling signature buffer is over maximum seconds, cropping down to duration", buf, 2u);
      }

      [(SHMutableSignature *)self maximumSeconds];
      v12 = [SigCrop cropSignature:dataRepresentation atPosition:0 withDuration:0.0 error:v11];

      dataRepresentation = v12;
    }
  }

  else
  {
    if (v4)
    {
      v13 = sh_log_object(v4);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&dword_230F52000, v13, OS_LOG_TYPE_ERROR, "Signature generation error %@", buf, 0xCu);
      }
    }

    v15.receiver = self;
    v15.super_class = SHMutableSignature;
    dataRepresentation = [(SHSignature *)&v15 dataRepresentation];
  }

  return dataRepresentation;
}

- (double)duration
{
  if ([(SHMutableSignature *)self currentFrameCount])
  {
    currentFrameCount = [(SHMutableSignature *)self currentFrameCount];
    format = [(SHMutableSignature *)self format];
    [(SHMutableSignature *)self secondsFromFrameCount:currentFrameCount forFormat:format];
    v6 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SHMutableSignature;
    dataRepresentation = [(SHSignature *)&v10 dataRepresentation];
    [SHSigUtilities signatureDurationForData:dataRepresentation error:0];
    v6 = v8;
  }

  return v6;
}

- (double)secondsFromFrameCount:(unsigned int)count forFormat:(id)format
{
  if (!count)
  {
    return 0.0;
  }

  countCopy = count;
  [format sampleRate];
  return countCopy / v5;
}

- (SHAudioConverter)audioConverter
{
  audioConverter = self->_audioConverter;
  if (!audioConverter)
  {
    v4 = objc_alloc_init(SHAudioConverter);
    v5 = self->_audioConverter;
    self->_audioConverter = v4;

    audioConverter = self->_audioConverter;
  }

  return audioConverter;
}

@end