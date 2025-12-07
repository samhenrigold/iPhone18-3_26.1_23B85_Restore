@interface VATKeywordSpotter
+ (id)pronounciationsFor:(id)for wordSeparator:(id)separator;
+ (id)pronounciationsFor:(id)for wordSeparator:(id)separator prefixWithPhrase:(BOOL)phrase;
- (BOOL)_isDetectionValidForResult:(void *)result reason:(id *)reason;
- (BOOL)audioDebuggingEnabled;
- (BOOL)batchDecodeEnabled;
- (BOOL)duringKeywordSilenceCheckEnabled;
- (BOOL)postKeywordSilenceCheckEnabled;
- (BOOL)preKeywordSilenceCheckEnabled;
- (BOOL)secondPassEnabled;
- (VATKeywordSpotter)initWithConfig:(id)config keywords:(id)keywords delegate:(id)delegate;
- (VATKeywordSpotter)initWithConfig:(id)config keywordsWithPhonemes:(id)phonemes delegate:(id)delegate;
- (VATKeywordSpotter)initWithConfig:(id)config keywordsWithPhonemes:(id)phonemes delegate:(id)delegate silenceLookback:(int)lookback silenceExpect:(int)expect batchDecode:(BOOL)decode enableAudioDebugging:(BOOL)debugging;
- (id).cxx_construct;
- (id)_handleAudioDebuggingForKeyword:(id)keyword result:(void *)result buffer:(id)buffer;
- (id)_handleSecondPass:(id)pass expectedKeyword:(id)keyword duration:(double *)duration secondPassAudio:(id *)audio;
- (id)_replaceModelPathWithAbsolutePathForTest:(id)test;
- (id)_thresholdsForAllPhrases;
- (void)_acousticCallback:(id)callback rows:(int64_t)rows cols:(int64_t)cols;
- (void)_handleValidResult:(void *)result;
- (void)_initializeDecoderForKeywordsWithPhonemes:(id)phonemes;
- (void)_postKeywordSilenceProcessingWithResults:(id)results rows:(int64_t)rows cols:(int64_t)cols;
- (void)addAudioSamples:(const void *)samples count:(int)count isFloat:(BOOL)float;
- (void)addAudioSamples:(const void *)samples count:(int)count isFloat:(BOOL)float filePath:(id)path byteCount:(int64_t)byteCount currentDuration:(double)duration;
- (void)dealloc;
- (void)setAudioDebuggingEnabled:(BOOL)enabled;
- (void)setBatchDecodeEnabled:(BOOL)enabled;
- (void)setDuringKeywordSilenceCheckEnabled:(BOOL)enabled;
- (void)setPostKeywordSilenceCheckEnabled:(BOOL)enabled;
- (void)setPreKeywordSilenceCheckEnabled:(BOOL)enabled;
- (void)setSecondPassEnabled:(BOOL)enabled;
- (void)setSecondPassEnabled:(BOOL)enabled customAssetPath:(id)path;
- (void)setStreamingMode:(BOOL)mode;
- (void)start;
- (void)stop;
- (void)updateWithKeywords:(id)keywords;
- (void)updateWithKeywordsWithPhonemes:(id)phonemes;
@end

@implementation VATKeywordSpotter

- (void)setSecondPassEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  configuration = [(VATKeywordSpotter *)self configuration];
  runtime = [configuration runtime];
  secondPass = [runtime secondPass];

  if (secondPass != enabledCopy)
  {
    configuration2 = [(VATKeywordSpotter *)self configuration];
    runtime2 = [configuration2 runtime];
    [runtime2 setSecondPass:enabledCopy];
  }
}

- (BOOL)secondPassEnabled
{
  configuration = [(VATKeywordSpotter *)self configuration];
  runtime = [configuration runtime];
  secondPass = [runtime secondPass];

  return secondPass;
}

- (void)setSecondPassEnabled:(BOOL)enabled customAssetPath:(id)path
{
  [(VATKeywordSpotter *)self setCustomSecondPassModelPath:path];

  MEMORY[0x2821F9670](self, sel_setSecondPassEnabled_);
}

- (void)setBatchDecodeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  configuration = [(VATKeywordSpotter *)self configuration];
  runtime = [configuration runtime];
  [runtime setBatchDecode:enabledCopy];
}

- (BOOL)batchDecodeEnabled
{
  configuration = [(VATKeywordSpotter *)self configuration];
  runtime = [configuration runtime];
  batchDecode = [runtime batchDecode];

  return batchDecode;
}

- (void)setAudioDebuggingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  configuration = [(VATKeywordSpotter *)self configuration];
  runtime = [configuration runtime];
  [runtime setAudioDebug:enabledCopy];
}

- (BOOL)audioDebuggingEnabled
{
  configuration = [(VATKeywordSpotter *)self configuration];
  runtime = [configuration runtime];
  audioDebug = [runtime audioDebug];

  return audioDebug;
}

- (id)_handleSecondPass:(id)pass expectedKeyword:(id)keyword duration:(double *)duration secondPassAudio:(id *)audio
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  *audio = [0 copy];
  *duration = 0.0;

  return v8;
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 17) = 0;
  return self;
}

- (id)_thresholdsForAllPhrases
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  next = self->_phraseThresholds.__table_.__first_node_.__next_;
  while (next)
  {
    v5 = next + 16;
    if (next[39] < 0)
    {
      v5 = *v5;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    LODWORD(v7) = *(next + 10);
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    [v3 setValue:v8 forKey:v6];

    next = *next;
  }

  return v3;
}

- (id)_replaceModelPathWithAbsolutePathForTest:(id)test
{
  testCopy = test;
  configuration = [(FeatureExtractObjc *)self->fe configuration];
  [configuration _replaceModelPathWithCustomModelPathForTestWithPrefix:testCopy];

  configuration2 = [(FeatureExtractObjc *)self->fe configuration];
  v7 = [configuration2 description];

  return v7;
}

- (id)_handleAudioDebuggingForKeyword:(id)keyword result:(void *)result buffer:(id)buffer
{
  keywordCopy = keyword;
  bufferCopy = buffer;
  fe = self->fe;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", *(result + 6)];
  v12 = [(FeatureExtractObjc *)fe saveAudioBufferToFileWithPcmBuffer:bufferCopy keyword:keywordCopy score:v11 duration:*(result + 13)];

  return v12;
}

- (void)_handleValidResult:(void *)result
{
  v108 = *MEMORY[0x277D85DE8];
  v3 = *result;
  if (*(*result + 23) < 0)
  {
    v3 = *v3;
  }

  v90 = [MEMORY[0x277CCACA8] stringWithCString:v3 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v100 = 0.0;
  v4 = *(*result + 32);
  configuration = [(VATKeywordSpotter *)self configuration];
  decoder = [configuration decoder];
  audioCapture = [decoder audioCapture];
  leftOfStartFrameOffset = [audioCapture leftOfStartFrameOffset];

  v9 = *(*result + 36);
  configuration2 = [(VATKeywordSpotter *)self configuration];
  decoder2 = [configuration2 decoder];
  audioCapture2 = [decoder2 audioCapture];
  v13 = v9 + [audioCapture2 rightOfEndFrameOffset];

  v14 = v13;
  v99 = v13;
  configuration3 = [(VATKeywordSpotter *)self configuration];
  runtime = [configuration3 runtime];
  v85 = (v4 - leftOfStartFrameOffset);
  if ([runtime secondPass])
  {
  }

  else
  {
    configuration4 = [(VATKeywordSpotter *)self configuration];
    runtime2 = [configuration4 runtime];
    audioDebug = [runtime2 audioDebug];

    if (!audioDebug)
    {
      v88 = 0;
LABEL_44:
      obj = 0;
      v87 = 0;
      goto LABEL_45;
    }
  }

  v87 = [(FeatureExtractObjc *)self->fe audioForKeywordWithStartFrame:v85 endFrame:v14 actualEndFrame:&v99];
  configuration5 = [(VATKeywordSpotter *)self configuration];
  runtime3 = [configuration5 runtime];
  secondPass = [runtime3 secondPass];

  if (v87)
  {
    v23 = secondPass;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) != 0 || (-[VATKeywordSpotter configuration](self, "configuration"), v24 = objc_claimAutoreleasedReturnValue(), [v24 runtime], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "audioDebug"), v25, v24, !v26))
  {
    v88 = 0;
  }

  else
  {
    v27 = [(VATKeywordSpotter *)self _handleAudioDebuggingForKeyword:v90 result:*result buffer:v87];
    v28 = _VATLoggingFacility(kVATLogCategoryFramework);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v102 = v27;
      _os_log_impl(&dword_2721E4000, v28, OS_LOG_TYPE_INFO, "audio %@", buf, 0xCu);
    }

    v88 = v27;
  }

  configuration6 = [(VATKeywordSpotter *)self configuration];
  runtime4 = [configuration6 runtime];
  secondPass2 = [runtime4 secondPass];

  if (!secondPass2)
  {
    obj = 0;
LABEL_45:
    v92 = 0;
    goto LABEL_46;
  }

  if (!v87)
  {
    v56 = _VATLoggingFacility(kVATLogCategoryFramework);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2721E4000, v56, OS_LOG_TYPE_INFO, "No audio for second pass", buf, 2u);
    }

    goto LABEL_44;
  }

  v98 = 0;
  v82 = [(VATKeywordSpotter *)self _handleSecondPass:v87 expectedKeyword:v90 duration:&v100 secondPassAudio:&v98];
  v84 = v98;
  if (v84)
  {
    configuration7 = [(VATKeywordSpotter *)self configuration];
    runtime5 = [configuration7 runtime];
    audioDebug2 = [runtime5 audioDebug];

    if (audioDebug2)
    {
      v35 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:&unk_272387710];
      v36 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v35 frameCapacity:objc_msgSend(v84, "length") / *(objc_msgSend(v35, "streamDescription") + 24)];
      [v36 setFrameLength:{objc_msgSend(v36, "frameCapacity")}];
      frameCapacity = [v36 frameCapacity];
      *([v36 mutableAudioBufferList] + 12) = frameCapacity;
      v38 = *([v36 mutableAudioBufferList] + 16);
      v39 = v84;
      memcpy(v38, [v84 bytes], 2 * objc_msgSend(v36, "frameCapacity"));
      v40 = [(VATKeywordSpotter *)self _handleAudioDebuggingForKeyword:v90 result:*result buffer:v36];

      v41 = _VATLoggingFacility(kVATLogCategoryFramework);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v102 = v40;
        _os_log_impl(&dword_2721E4000, v41, OS_LOG_TYPE_INFO, "audio %@", buf, 0xCu);
      }

      v88 = v40;
    }
  }

  v83 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"_[0-9]+$" options:0 error:0];
  v81 = [v83 stringByReplacingMatchesInString:v90 options:0 range:0 withTemplate:{objc_msgSend(v90, "length"), &stru_2881908A8}];
  lowercaseString = [v81 lowercaseString];
  v43 = [lowercaseString stringByReplacingOccurrencesOfString:@"_" withString:&stru_2881908A8];

  v93 = [v43 stringByReplacingOccurrencesOfString:@" " withString:&stru_2881908A8];

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = v82;
  v44 = [obj countByEnumeratingWithState:&v94 objects:v107 count:16];
  if (v44)
  {
    v45 = 0;
    v92 = 0;
    v46 = *v95;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v95 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v94 + 1) + 8 * i);
        lowercaseString2 = [v48 lowercaseString];
        v50 = [lowercaseString2 stringByReplacingOccurrencesOfString:@" " withString:&stru_2881908A8];

        v51 = _VATLoggingFacility(kVATLogCategoryFramework);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v54 = [v50 hasPrefix:v93];
          *buf = 138412802;
          v102 = v93;
          v103 = 2112;
          v104 = v50;
          v105 = 1024;
          v106 = v54;
          _os_log_debug_impl(&dword_2721E4000, v51, OS_LOG_TYPE_DEBUG, "%@ is prefix of %@ = %d", buf, 0x1Cu);
        }

        if ([v50 hasPrefix:v93])
        {
          v52 = v48;

          v53 = _VATLoggingFacility(kVATLogCategoryFramework);
          v45 = 1;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v102 = v52;
            v103 = 2112;
            v104 = v90;
            _os_log_impl(&dword_2721E4000, v53, OS_LOG_TYPE_INFO, "Second pass %@ matches keyword %@", buf, 0x16u);
          }

          v92 = v52;
        }

        else
        {
          v53 = _VATLoggingFacility(kVATLogCategoryFramework);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v102 = v48;
            v103 = 2112;
            v104 = v90;
            _os_log_impl(&dword_2721E4000, v53, OS_LOG_TYPE_INFO, "Second pass %@ doesn't match keyword %@", buf, 0x16u);
          }
        }
      }

      v44 = [obj countByEnumeratingWithState:&v94 objects:v107 count:16];
    }

    while (v44);

    if (v45)
    {
      v55 = 0;
      goto LABEL_63;
    }
  }

  else
  {

    v92 = 0;
  }

  v74 = _VATLoggingFacility(kVATLogCategoryFramework);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
  {
    v75 = [obj componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v102 = v75;
    v103 = 2112;
    v104 = v90;
    _os_log_impl(&dword_2721E4000, v74, OS_LOG_TYPE_INFO, "Second pass %@ doesn't match keyword %@", buf, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    v76 = self->_delegate;
    v77 = [obj componentsJoinedByString:{@", "}];
    v78 = MEMORY[0x277CCACA8];
    v79 = [obj componentsJoinedByString:{@", "}];
    v80 = [v78 stringWithFormat:@"%@ vs %@ mismatch", v90, v79];
    [(VATKeywordSpotterDelegate *)v76 keywordDiscarded:v90 failedPreSilence:0 failedDuringSilence:0 failedPostSilence:0 failedSecondPass:1 secondPassResult:v77 reason:v80 audioURL:v88];
  }

  v55 = 1;
LABEL_63:

  if (v55)
  {
    goto LABEL_64;
  }

LABEL_46:
  if (objc_opt_respondsToSelector())
  {
    v57 = self->_delegate;
    v58 = [VATKeywordSpotterResult alloc];
    LODWORD(v59) = *(*result + 24);
    LODWORD(v60) = *(*result + 56);
    v61 = [(VATKeywordSpotterResult *)v58 initWithKeyword:v90 cost:*(*result + 32) threshold:*(*result + 36) start:*(*result + 52) end:v59 duration:v60];
    [(VATKeywordSpotterResult *)v61 setAudioFileURL:v88];
    configuration8 = [(VATKeywordSpotter *)self configuration];
    runtime6 = [configuration8 runtime];
    secondPass3 = [runtime6 secondPass];

    if (secondPass3)
    {
      [(VATKeywordSpotterResult *)v61 setSecondPassResult:v92];
      [(VATKeywordSpotterResult *)v61 setSecondPassDuration:v100];
    }

    configuration9 = [(VATKeywordSpotter *)self configuration];
    runtime7 = [configuration9 runtime];
    if ([runtime7 secondPass])
    {
    }

    else
    {
      configuration10 = [(VATKeywordSpotter *)self configuration];
      runtime8 = [configuration10 runtime];
      audioDebug3 = [runtime8 audioDebug];

      if (!audioDebug3)
      {
LABEL_56:
        [(VATKeywordSpotterDelegate *)v57 keywordSpotted:v61 nbestResults:0 filePath:self->_filePath fileByteCount:self->_fileByteCount fileDuration:self->_fileCurrentDuration];

        goto LABEL_64;
      }
    }

    [(VATKeywordSpotterResult *)v61 setAudioStart:v85];
    [(VATKeywordSpotterResult *)v61 setAudioEnd:v99];
    -[VATKeywordSpotterResult setAudioDuration:](v61, "setAudioDuration:", [v87 frameLength] / 16000.0);
    goto LABEL_56;
  }

  v67 = objc_opt_respondsToSelector();
  delegate = self->_delegate;
  v69 = *result;
  v70 = *(*result + 24);
  if (v67)
  {
    [(VATKeywordSpotterDelegate *)delegate keywordSpotted:v90 cost:*(v69 + 32) threshold:*(v69 + 36) start:v70 end:*(v69 + 56)];
  }

  else
  {
    [(VATKeywordSpotterDelegate *)delegate keywordSpotted:v90 cost:*(v69 + 32) start:*(v69 + 36) end:v70];
  }

LABEL_64:
}

- (BOOL)_isDetectionValidForResult:(void *)result reason:(id *)reason
{
  v95 = *MEMORY[0x277D85DE8];
  preKeywordSilenceCheckEnabled = [(VATKeywordSpotter *)self preKeywordSilenceCheckEnabled];
  configuration = [(VATKeywordSpotter *)self configuration];
  runtime = [configuration runtime];
  duringKeywordSilence = [runtime duringKeywordSilence];

  configuration2 = [(VATKeywordSpotter *)self configuration];
  runtime2 = [configuration2 runtime];
  duringKeywordSilence2 = [runtime2 duringKeywordSilence];

  if (duringKeywordSilence2)
  {
    floatFstDecoder = self->_floatFstDecoder;
    v12 = *(result + 8);
    v13 = *(result + 9);
    configuration3 = [(VATKeywordSpotter *)self configuration];
    decoder = [configuration3 decoder];
    duringKeywordSilence3 = [decoder duringKeywordSilence];
    [duringKeywordSilence3 minPercentageOfNonSilenceFrames];
    v17 = v16;
    configuration4 = [(VATKeywordSpotter *)self configuration];
    decoder2 = [configuration4 decoder];
    duringKeywordSilence4 = [decoder2 duringKeywordSilence];
    [duringKeywordSilence4 silenceProbability];
    v22 = floatFstDecoder[8];
    LODWORD(v23) = v12 - v22;
    v24 = v13 - v22;
    if (v24 >= v23)
    {
      v25 = 0;
      v23 = v23;
      do
      {
        if (*(*(floatFstDecoder[2] + (((floatFstDecoder[5] + v23) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((floatFstDecoder[5] + v23) & 0x3FF)) >= v21)
        {
          ++v25;
        }

        ++v23;
      }

      while (v24 >= v23);
    }

    else
    {
      v25 = 0;
    }

    v27 = (v13 - v12);
    v28 = ((v17 * v27) + 0.5);
    v26 = v25 >= v28;

    if (reason && v25 < v28)
    {
      v29 = MEMORY[0x277CCACA8];
      configuration5 = [(VATKeywordSpotter *)self configuration];
      decoder3 = [configuration5 decoder];
      duringKeywordSilence5 = [decoder3 duringKeywordSilence];
      [duringKeywordSilence5 minPercentageOfNonSilenceFrames];
      *reason = [v29 stringWithFormat:@"speechToSilence ratio %4.2f < %4.2f", (v25 / v27), v32];

      v26 = 0;
    }
  }

  else
  {
    v26 = duringKeywordSilence ^ 1;
  }

  if ([(VATKeywordSpotter *)self preKeywordSilenceCheckEnabled])
  {
    v73 = v26;
    v33 = self->_floatFstDecoder;
    v34 = *(result + 8);
    configuration6 = [(VATKeywordSpotter *)self configuration];
    decoder4 = [configuration6 decoder];
    preKeywordSilence = [decoder4 preKeywordSilence];
    lookbackFrames = [preKeywordSilence lookbackFrames];
    configuration7 = [(VATKeywordSpotter *)self configuration];
    decoder5 = [configuration7 decoder];
    preKeywordSilence2 = [decoder5 preKeywordSilence];
    minSilenceInLookbackFrames = [preKeywordSilence2 minSilenceInLookbackFrames];
    configuration8 = [(VATKeywordSpotter *)self configuration];
    decoder6 = [configuration8 decoder];
    preKeywordSilence3 = [decoder6 preKeywordSilence];
    [preKeywordSilence3 silenceProbability];
    v43 = v33[8];
    v44 = v34 >= v43;
    v45 = v34 - v43;
    if (v45 != 0 && v44)
    {
      v50 = configuration6;
      v46 = 0;
      if (lookbackFrames >= 1)
      {
        v47 = lookbackFrames & 0x7FFFFFFF;
        do
        {
          if (!v45)
          {
            break;
          }

          if (*(*(v33[2] + (((v45 + v33[5]) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v45 + v33[5]) & 0x3FF)) <= v42)
          {
            ++v46;
          }

          --lookbackFrames;
          --v45;
          --v47;
        }

        while (v47);
      }

      v48 = (lookbackFrames + v46);
      v49 = v48 >= minSilenceInLookbackFrames;
    }

    else
    {
      v48 = 0;
      v49 = 1;
      v50 = configuration6;
    }

    if (reason && (v49 & 1) == 0)
    {
      v51 = MEMORY[0x277CCACA8];
      configuration9 = [(VATKeywordSpotter *)self configuration];
      decoder7 = [configuration9 decoder];
      preKeywordSilence4 = [decoder7 preKeywordSilence];
      minSilenceInLookbackFrames2 = [preKeywordSilence4 minSilenceInLookbackFrames];
      if ([*reason length])
      {
        v55 = *reason;
      }

      else
      {
        v55 = &stru_2881908A8;
      }

      *reason = [v51 stringWithFormat:@"pre-keyword silence frames %d < %ld. %@", v48, minSilenceInLookbackFrames2, v55];
    }

    v26 = v73;
  }

  else
  {
    v49 = !preKeywordSilenceCheckEnabled;
  }

  v56 = v26;
  v57 = v26 ^ 1u;
  if (((v49 ^ 1) & 1) != 0 || v57)
  {
    if (*(result + 23) >= 0)
    {
      resultCopy = result;
    }

    else
    {
      resultCopy = *result;
    }

    v59 = [MEMORY[0x277CCACA8] stringWithCString:resultCopy encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    configuration10 = [(VATKeywordSpotter *)self configuration];
    runtime3 = [configuration10 runtime];
    audioDebug = [runtime3 audioDebug];

    if (audioDebug)
    {
      v63 = *(result + 8);
      *buf = *(result + 9);
      v64 = [FeatureExtractObjc audioForKeywordWithStartFrame:"audioForKeywordWithStartFrame:endFrame:actualEndFrame:" endFrame:v63 actualEndFrame:?];
      if (v64 && (-[VATKeywordSpotter configuration](self, "configuration"), v65 = objc_claimAutoreleasedReturnValue(), [v65 runtime], v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v66, "audioDebug"), v66, v65, v67))
      {
        v68 = [(VATKeywordSpotter *)self _handleAudioDebuggingForKeyword:v59 result:result buffer:v64];
      }

      else
      {
        v68 = 0;
      }
    }

    else
    {
      v68 = 0;
    }

    v69 = _VATLoggingFacility(kVATLogCategoryFramework);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      v71 = *(result + 8);
      v82 = *(result + 9);
      v84 = *reason;
      path = [v68 path];
      *buf = 138413314;
      *&buf[4] = v59;
      v87 = 1024;
      v88 = v71;
      v89 = 1024;
      v90 = v82;
      v91 = 2112;
      v92 = v84;
      v93 = 2112;
      v94 = path;
      _os_log_debug_impl(&dword_2721E4000, v69, OS_LOG_TYPE_DEBUG, "Keyword %@ [%d,%d] dismissed. %@, %@", buf, 0x2Cu);
    }

    if (objc_opt_respondsToSelector())
    {
      [(VATKeywordSpotterDelegate *)self->_delegate keywordDiscarded:v59 failedPreSilence:v49 ^ 1u failedDuringSilence:v57 failedPostSilence:0 failedSecondPass:0 secondPassResult:0 reason:*reason audioURL:v68];
    }
  }

  return v49 & v56;
}

- (void)_postKeywordSilenceProcessingWithResults:(id)results rows:(int64_t)rows cols:(int64_t)cols
{
  v90 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  [resultsCopy bytes];
  selfCopy = self;
  if (rows >= 1)
  {
    sub_272366344(1uLL);
  }

  v7 = self->_frameCountSinceKeywordDetected + rows;
  self->_frameCountSinceKeywordDetected = v7;
  v81 = 0;
  v82 = -1;
  configuration = [(VATKeywordSpotter *)self configuration];
  decoder = [configuration decoder];
  postKeywordSilence = [decoder postKeywordSilence];
  lookForwardFrames = [postKeywordSilence lookForwardFrames];

  if (lookForwardFrames <= v7)
  {
    configuration2 = [(VATKeywordSpotter *)selfCopy configuration];
    decoder2 = [configuration2 decoder];
    postKeywordSilence2 = [decoder2 postKeywordSilence];
    lookForwardFrames2 = [postKeywordSilence2 lookForwardFrames];

    p_keywordResults = &selfCopy->_keywordResults;
    v23 = *(selfCopy->_keywordResults.__begin_ + 9);
    if (v23 <= 0)
    {
      v24 = -(-v23 & 7);
    }

    else
    {
      v24 = *(selfCopy->_keywordResults.__begin_ + 9) & 7;
    }

    v25 = 15 - v24;
    if (lookForwardFrames2 == 8)
    {
      v26 = v25;
    }

    else
    {
      v26 = lookForwardFrames2;
    }

    v76 = v26;
    floatFstDecoder = selfCopy->_floatFstDecoder;
    configuration3 = [(VATKeywordSpotter *)selfCopy configuration];
    decoder3 = [configuration3 decoder];
    postKeywordSilence3 = [decoder3 postKeywordSilence];
    [postKeywordSilence3 silenceProbability];
    v30 = v29;
    configuration4 = [(VATKeywordSpotter *)selfCopy configuration];
    decoder4 = [configuration4 decoder];
    postKeywordSilence4 = [decoder4 postKeywordSilence];
    v34 = sub_27236638C(floatFstDecoder, v23, 0, 0, v76, [postKeywordSilence4 minSilenceFramesExpected], &v82, &v81, v30);

    begin = p_keywordResults->__begin_;
    if (*(p_keywordResults->__begin_ + 23) < 0)
    {
      begin = *begin;
    }

    v77 = [MEMORY[0x277CCACA8] stringWithCString:begin encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    if (v34)
    {
      v36 = _VATLoggingFacility(kVATLogCategoryFramework);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v75 = [MEMORY[0x277CCABB0] numberWithInt:v81];
        v61 = MEMORY[0x277CCABB0];
        configuration5 = [(VATKeywordSpotter *)selfCopy configuration];
        decoder5 = [configuration5 decoder];
        postKeywordSilence5 = [decoder5 postKeywordSilence];
        v65 = [v61 numberWithInteger:{objc_msgSend(postKeywordSilence5, "minSilenceFramesExpected")}];
        v66 = MEMORY[0x277CCABB0];
        configuration6 = [(VATKeywordSpotter *)selfCopy configuration];
        decoder6 = [configuration6 decoder];
        postKeywordSilence6 = [decoder6 postKeywordSilence];
        v70 = [v66 numberWithInteger:{objc_msgSend(postKeywordSilence6, "lookForwardFrames")}];
        *buf = 138413058;
        *&buf[4] = v77;
        v84 = 2112;
        v85 = v75;
        v86 = 2112;
        v87 = v65;
        v88 = 2112;
        v89 = v70;
        _os_log_debug_impl(&dword_2721E4000, v36, OS_LOG_TYPE_DEBUG, "Enough silence after keyword %@, %@ > %@/%@", buf, 0x2Au);
      }

      v38 = &selfCopy->_keywordResults;
      v37 = selfCopy;
      [(VATKeywordSpotter *)selfCopy _handleValidResult:p_keywordResults];
    }

    else
    {
      configuration7 = [(VATKeywordSpotter *)selfCopy configuration];
      runtime = [configuration7 runtime];
      audioDebug = [runtime audioDebug];

      if (audioDebug)
      {
        v42 = selfCopy->_keywordResults.__begin_;
        v43 = *(v42 + 8);
        *buf = *(v42 + 9);
        v44 = [FeatureExtractObjc audioForKeywordWithStartFrame:"audioForKeywordWithStartFrame:endFrame:actualEndFrame:" endFrame:v43 actualEndFrame:?];
        v72 = [(VATKeywordSpotter *)selfCopy _handleAudioDebuggingForKeyword:v77 result:selfCopy->_keywordResults.__begin_ buffer:v44];
      }

      else
      {
        v72 = 0;
      }

      v45 = MEMORY[0x277CCACA8];
      v74 = [MEMORY[0x277CCABB0] numberWithInt:v81];
      v46 = MEMORY[0x277CCABB0];
      configuration8 = [(VATKeywordSpotter *)selfCopy configuration];
      decoder7 = [configuration8 decoder];
      postKeywordSilence7 = [decoder7 postKeywordSilence];
      v50 = [v46 numberWithInteger:{objc_msgSend(postKeywordSilence7, "minSilenceFramesExpected")}];
      v51 = MEMORY[0x277CCABB0];
      configuration9 = [(VATKeywordSpotter *)selfCopy configuration];
      decoder8 = [configuration9 decoder];
      postKeywordSilence8 = [decoder8 postKeywordSilence];
      v55 = [v51 numberWithInteger:{objc_msgSend(postKeywordSilence8, "lookForwardFrames")}];
      v56 = [v45 stringWithFormat:@"not enough silence after keyword %@ < %@/%@", v74, v50, v55];

      v57 = _VATLoggingFacility(kVATLogCategoryFramework);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v77;
        v84 = 2112;
        v85 = v56;
        _os_log_impl(&dword_2721E4000, v57, OS_LOG_TYPE_INFO, "Discarding keyword %@, %@", buf, 0x16u);
      }

      if (objc_opt_respondsToSelector())
      {
        v58 = selfCopy->_delegate;
        v59 = selfCopy->_keywordResults.__begin_;
        if (*(v59 + 23) < 0)
        {
          v59 = *v59;
        }

        v60 = [MEMORY[0x277CCACA8] stringWithCString:v59 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
        [(VATKeywordSpotterDelegate *)v58 keywordDiscarded:v60 failedPreSilence:0 failedDuringSilence:0 failedPostSilence:1 failedSecondPass:0 secondPassResult:0 reason:v56 audioURL:v72];
      }

      v38 = &selfCopy->_keywordResults;
      v37 = selfCopy;
    }

    v37->_frameCountSinceKeywordDetected = 0;
    sub_272363EE8(v38);
    v12 = v77;
  }

  else
  {
    v12 = _VATLoggingFacility(kVATLogCategoryFramework);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = MEMORY[0x277CCABB0];
      configuration10 = [(VATKeywordSpotter *)selfCopy configuration];
      decoder9 = [configuration10 decoder];
      postKeywordSilence9 = [decoder9 postKeywordSilence];
      v17 = [v13 numberWithInteger:{objc_msgSend(postKeywordSilence9, "minSilenceFramesExpected")}];
      frameCountSinceKeywordDetected = selfCopy->_frameCountSinceKeywordDetected;
      *buf = 138412546;
      *&buf[4] = v17;
      v84 = 1024;
      LODWORD(v85) = frameCountSinceKeywordDetected;
      _os_log_debug_impl(&dword_2721E4000, v12, OS_LOG_TYPE_DEBUG, "waiting for %@ frames, have only %d", buf, 0x12u);
    }
  }
}

- (void)_acousticCallback:(id)callback rows:(int64_t)rows cols:(int64_t)cols
{
  v145 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v9 = callbackCopy;
  if (rows != 8)
  {
    v124 = sub_2723686B0(v123, "/Library/Caches/com.apple.xbs/Sources/VoiceActions/VoiceActions/v1/VATKeywordSpotter.m", 86);
    v125 = sub_2723686B0(v124, " line ", 6);
    v126 = MEMORY[0x2743C5B80](v125, 397);
    v127 = sub_2723686B0(v126, ": ", 2);
    v128 = sub_2723686B0(v127, "Mismatch in acoustic model output shape, expected 8 rows", 56);
    sub_2723689D8(v128);
    std::terminate();
  }

  if (callbackCopy)
  {
    configuration = [(VATKeywordSpotter *)self configuration];
    v131 = v9;
    runtime = [configuration runtime];
    selfCopy = self;
    if ([runtime postKeywordSilence])
    {
      end = self->_keywordResults.__end_;
      begin = self->_keywordResults.__begin_;

      v14 = end == begin;
      self = selfCopy;
      if (!v14)
      {
        [(VATKeywordSpotter *)selfCopy _postKeywordSilenceProcessingWithResults:v9 rows:8 cols:cols];
        selfCopy->_processedFrameCount += 8;
        goto LABEL_9;
      }
    }

    else
    {
    }

    bytes = [v9 bytes];
    p_keywordResults = &self->_keywordResults;
    *&v17 = 138413058;
    v129 = v17;
    v18 = 0;
    v133 = 4 * cols;
    colsCopy = cols;
    while (1)
    {
      v136 = v18;
      v137 = bytes;
      if (cols)
      {
        if (!(cols >> 62))
        {
          sub_272366344(cols);
        }

        sub_27236F7F0();
      }

      floatFstDecoder = self->_floatFstDecoder;
      if (*(floatFstDecoder + 23) != *(floatFstDecoder + 24))
      {
        processedFrameCount = self->_processedFrameCount;
        if ((floatFstDecoder[72] & 1) != 0 || (floatFstDecoder[73] & 1) != 0 || floatFstDecoder[74] == 1)
        {
          v21 = *(floatFstDecoder + 3);
          v22 = *(floatFstDecoder + 2);
          v23 = v21 - v22;
          if (v21 == v22)
          {
            v24 = 0;
          }

          else
          {
            v24 = ((v21 - v22) << 7) - 1;
          }

          v26 = *(floatFstDecoder + 5);
          v25 = *(floatFstDecoder + 6);
          v27 = v25 + v26;
          if (v24 == v25 + v26)
          {
            if (v26 < 0x400)
            {
              v28 = *(floatFstDecoder + 4);
              v29 = *(floatFstDecoder + 1);
              if (v23 < v28 - v29)
              {
                if (v28 != v21)
                {
                  operator new();
                }

                operator new();
              }

              if (v28 == v29)
              {
                v30 = 1;
              }

              else
              {
                v30 = (v28 - v29) >> 2;
              }

              *(&v142 + 1) = floatFstDecoder + 8;
              sub_272367404(v30);
            }

            *(floatFstDecoder + 5) = v26 - 1024;
            __str.__r_.__value_.__r.__words[0] = *v22;
            *(floatFstDecoder + 2) = v22 + 1;
            sub_272367300(floatFstDecoder + 1, &__str);
            v22 = *(floatFstDecoder + 2);
            v26 = *(floatFstDecoder + 5);
            v25 = *(floatFstDecoder + 6);
            v27 = v26 + v25;
          }

          *(*(v22 + ((v27 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v27 & 0x3FF)) = MEMORY[0xD8];
          *(floatFstDecoder + 6) = v25 + 1;
          if (v25 + 1 == *(floatFstDecoder + 14))
          {
            *(floatFstDecoder + 5) = v26 + 1;
            *(floatFstDecoder + 6) = v25;
            sub_272366EC0((floatFstDecoder + 8));
            ++*(floatFstDecoder + 8);
          }
        }

        v31 = *(floatFstDecoder + 23);
        if (0xAAAAAAAAAAAAAAABLL * ((*(floatFstDecoder + 11) - *(floatFstDecoder + 10)) >> 3) != (*(floatFstDecoder + 24) - v31) >> 5)
        {
          __assert_rtn("SearchFrame", "OnlineFstSpottingDecoder.hpp", 505, "tokens.size() == states.size()");
        }

        v32 = floatFstDecoder[517];
        v33 = processedFrameCount != 0;
        *v31 = voiceactions::kNolabel;
        v34 = *&voiceactions::kLogZero;
        if ((v33 & v32) == 0)
        {
          v34 = 0.0;
        }

        v132 = processedFrameCount;
        if ((v33 & v32) != 0)
        {
          v35 = voiceactions::kNoTime;
        }

        else
        {
          v35 = processedFrameCount;
        }

        *(v31 + 20) = 0;
        *(v31 + 12) = 0;
        *(v31 + 4) = v34;
        *(v31 + 8) = v35;
        v36 = -1 - 1431655765 * ((*(floatFstDecoder + 11) - *(floatFstDecoder + 10)) >> 3);
        if ((v36 & 0x80000000) == 0)
        {
          do
          {
            v37 = (*(floatFstDecoder + 10) + 24 * v36);
            v38 = *v37;
            if (v37[1] != *v37)
            {
              v39 = *(v38 + 8);
              v40 = floatFstDecoder[524];
              v41 = *(4 * v39 - 4);
              v42 = logf(v41);
              if (!v40)
              {
                v42 = v41;
              }

              sub_2723696E4(*(floatFstDecoder + 23) + 32 * v36, (*(floatFstDecoder + 23) + 32 * *(v38 + 4)), v39, *(v38 + 12), *(floatFstDecoder + 120), 1, *(v38 + 16) - v42);
              v44 = *v37;
              v43 = v37[1];
              if (0xAAAAAAAAAAAAAAABLL * ((v43 - *v37) >> 3) >= 2)
              {
                v45 = 0;
                v46 = 1;
                do
                {
                  v47 = v44 + v45;
                  v48 = *(v44 + v45 + 32);
                  v49 = floatFstDecoder[524];
                  v50 = *(4 * v48 - 4);
                  v51 = logf(v50);
                  if (!v49)
                  {
                    v51 = v50;
                  }

                  v52 = *(floatFstDecoder + 23);
                  v53 = v52 + 32 * v36;
                  v54 = (v52 + 32 * *(v47 + 28));
                  if ((v54[1] - v51) < *(v53 + 4))
                  {
                    sub_2723696E4(v53, v54, v48, *(v47 + 36), *(floatFstDecoder + 120), 0, -v51);
                    v44 = *v37;
                    v43 = v37[1];
                  }

                  ++v46;
                  v45 += 24;
                }

                while (0xAAAAAAAAAAAAAAABLL * ((v43 - v44) >> 3) > v46);
              }
            }
          }

          while (v36-- > 0);
        }

        v56 = *(floatFstDecoder + 15);
        v9 = v131;
        self = selfCopy;
        if (v56)
        {
          while (1)
          {
            v57 = v56[2];
            v139 = v57;
            v58 = *(floatFstDecoder + 23) + 32 * v57;
            v59 = *(v58 + 4);
            if (v59 >= *&voiceactions::kLogZero)
            {
              goto LABEL_87;
            }

            memset(&__str, 0, sizeof(__str));
            *&v143[20] = voiceactions::kLogZero;
            v143[24] = 0;
            *&v142 = v59 + *(&v57 + 1);
            *&v143[16] = 0;
            v60 = *(v58 + 8);
            *(&v142 + 1) = __PAIR64__(v132, v60);
            if (*v58 >= 1 && (v61 = sub_27236A1FC(floatFstDecoder + 45, *v58)) != 0)
            {
              if (*(v61 + 47) < 0)
              {
                sub_272369088(&__dst, v61[3], v61[4]);
              }

              else
              {
                __dst = *(v61 + 1);
              }
            }

            else
            {
              memset(&__dst, 0, sizeof(__dst));
            }

            v63 = *(v58 + 20);
            v62 = *(v58 + 24);
            v64 = *(v58 + 12);
            v65 = *(v58 + 16);
            __str = __dst;
            DWORD1(v142) = v65;
            *v143 = v63;
            *&v143[4] = v64;
            *&v143[8] = v62;
            *&v143[12] = v132 + 1 - v60;
            __dst.__r_.__value_.__r.__words[0] = &__str;
            v66 = *(sub_272369758(floatFstDecoder + 100, &__str, &__dst) + 10);
            v143[24] = *&v142 < v66;
            *&v143[16] = v66;
            *&v143[20] = v142;
            if (*&v142 < v66 && *&v142 < *(floatFstDecoder + 67))
            {
              std::string::operator=((floatFstDecoder + 208), &__str);
              v67 = *v143;
              *(floatFstDecoder + 232) = v142;
              *(floatFstDecoder + 248) = v67;
              *(floatFstDecoder + 257) = *&v143[9];
            }

            v68 = v139;
            v69 = *(floatFstDecoder + 19);
            if (!v69)
            {
              goto LABEL_84;
            }

            v70 = vcnt_s8(v69);
            v70.i16[0] = vaddlv_u8(v70);
            if (v70.u32[0] > 1uLL)
            {
              v71 = v139;
              if (v69 <= v139)
              {
                v71 = v139 % v69;
              }
            }

            else
            {
              v71 = (v69 - 1) & v139;
            }

            v72 = *(*(floatFstDecoder + 18) + 8 * v71);
            if (!v72 || (v73 = *v72) == 0)
            {
LABEL_84:
              __dst.__r_.__value_.__r.__words[0] = &v139;
              v76 = sub_272368C38(floatFstDecoder + 36, v68, &__dst);
              std::string::operator=(v76 + 1, &__str);
              v77 = *&v143[9];
              v78 = *v143;
              *(v76 + 3) = v142;
              *(v76 + 4) = v78;
              *(v76 + 73) = v77;
              goto LABEL_85;
            }

            while (1)
            {
              v74 = v73[1];
              if (v74 == v139)
              {
                break;
              }

              if (v70.u32[0] > 1uLL)
              {
                if (v74 >= v69)
                {
                  v74 %= v69;
                }
              }

              else
              {
                v74 &= v69 - 1;
              }

              if (v74 != v71)
              {
                goto LABEL_84;
              }

LABEL_79:
              v73 = *v73;
              if (!v73)
              {
                goto LABEL_84;
              }
            }

            if (*(v73 + 4) != v139)
            {
              goto LABEL_79;
            }

            __dst.__r_.__value_.__r.__words[0] = &v139;
            v75 = sub_272368C38(floatFstDecoder + 36, v139, &__dst);
            if (*(v75 + 12) > *&v142)
            {
              v68 = v139;
              goto LABEL_84;
            }

LABEL_85:
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

LABEL_87:
            v56 = *v56;
            if (!v56)
            {
              v79 = *(floatFstDecoder + 15);
                ;
              }

              break;
            }
          }
        }
      }

      v80 = self->_floatFstDecoder;
      v81 = self->_processedFrameCount;
      memset(&__dst, 0, sizeof(__dst));
      v82 = v80[20];
      if (v82)
      {
        v83 = 0;
        do
        {
          sub_272368BD4(&__str, (v82 + 2));
          if (v144 == 1)
          {
            v83 |= *&v143[4] >= v81 - *(v80 + 130);
          }

          if (SBYTE7(v142) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__size_);
          }

          v82 = *v82;
        }

        while (v82);
        if (v83)
        {
          v84 = v80[20];
          self = selfCopy;
          if (v84)
          {
            do
            {
              sub_272368BD4(&__str, (v84 + 2));
              if (v144 == 1)
              {
                sub_2723692DC(&__dst, &__str.__r_.__value_.__r.__words[1]);
              }

              if (SBYTE7(v142) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__size_);
              }

              v84 = *v84;
            }

            while (v84);
            size = __dst.__r_.__value_.__l.__size_;
            v85 = __dst.__r_.__value_.__r.__words[0];
          }

          else
          {
            size = 0;
            v85 = 0;
          }
        }

        else
        {
          size = 0;
          v85 = 0;
          self = selfCopy;
        }
      }

      else
      {
        size = 0;
        v85 = 0;
      }

      v87 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((size - v85) >> 3));
      if (size == v85)
      {
        v88 = 0;
      }

      else
      {
        v88 = v87;
      }

      sub_272370FCC(v85, size, v88, 1);
      configuration2 = [(VATKeywordSpotter *)self configuration];
      runtime2 = [configuration2 runtime];
      if (([(__CFString *)runtime2 batchDecode]& 1) != 0 || __dst.__r_.__value_.__l.__size_ == __dst.__r_.__value_.__r.__words[0])
      {
        goto LABEL_151;
      }

      v91 = *(__dst.__r_.__value_.__r.__words[0] + 64);

      if (v91)
      {
        break;
      }

LABEL_152:
      ++self->_processedFrameCount;
      __str.__r_.__value_.__r.__words[0] = &__dst;
      sub_272363E94(&__str);
      cols = colsCopy;
      bytes = v137 + v133;
      v18 = v136 + 1;
      if (v136 == 7)
      {
        goto LABEL_9;
      }
    }

    v92 = __dst.__r_.__value_.__r.__words[0];
    if (*(__dst.__r_.__value_.__r.__words[0] + 23) < 0)
    {
      v92 = *__dst.__r_.__value_.__l.__data_;
    }

    configuration2 = [MEMORY[0x277CCACA8] stringWithCString:v92 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding", v129)}];
    v138 = &stru_2881908A8;
    v93 = [(VATKeywordSpotter *)self _isDetectionValidForResult:__dst.__r_.__value_.__r.__words[0] reason:&v138];
    runtime2 = v138;
    if (v93)
    {
      configuration3 = [(VATKeywordSpotter *)self configuration];
      runtime3 = [configuration3 runtime];
      postKeywordSilence = [runtime3 postKeywordSilence];

      v97 = _VATLoggingFacility(kVATLogCategoryFramework);
      v98 = os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG);
      if (postKeywordSilence)
      {
        if (v98)
        {
          v118 = *(__dst.__r_.__value_.__r.__words[0] + 32);
          v117 = *(__dst.__r_.__value_.__r.__words[0] + 36);
          v119 = self->_processedFrameCount;
          LODWORD(__str.__r_.__value_.__l.__data_) = v129;
          *(__str.__r_.__value_.__r.__words + 4) = configuration2;
          WORD2(__str.__r_.__value_.__r.__words[1]) = 1024;
          *(&__str.__r_.__value_.__r.__words[1] + 6) = v118;
          WORD1(__str.__r_.__value_.__r.__words[2]) = 1024;
          HIDWORD(__str.__r_.__value_.__r.__words[2]) = v117;
          LOWORD(v142) = 1024;
          *(&v142 + 2) = v119;
          _os_log_debug_impl(&dword_2721E4000, v97, OS_LOG_TYPE_DEBUG, "Got keyword %@ [%d, %d] at frame %d, waiting for silence", &__str, 0x1Eu);
        }

        if (p_keywordResults != &__dst)
        {
          v99 = __dst.__r_.__value_.__l.__size_;
          v100 = __dst.__r_.__value_.__r.__words[0];
          v101 = __dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0];
          cap = self->_keywordResults.__cap_;
          v103 = self->_keywordResults.__begin_;
          if (cap - v103 < __dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0])
          {
            if (v103)
            {
              sub_272363EE8(p_keywordResults);
              operator delete(p_keywordResults->__begin_);
              cap = 0;
              p_keywordResults->__begin_ = 0;
              p_keywordResults->__end_ = 0;
              p_keywordResults->__cap_ = 0;
            }

            v104 = 0x8E38E38E38E38E39 * (v101 >> 3);
            if (v104 <= 0x38E38E38E38E38ELL)
            {
              v105 = 0x8E38E38E38E38E39 * (cap >> 3);
              if (2 * v105 > v104)
              {
                v104 = 2 * v105;
              }

              if (v105 >= 0x1C71C71C71C71C7)
              {
                v106 = 0x38E38E38E38E38ELL;
              }

              else
              {
                v106 = v104;
              }

              if (v106 <= 0x38E38E38E38E38ELL)
              {
                sub_272369220(v106);
              }
            }

            sub_27236F7F0();
          }

          v108 = self->_keywordResults.__end_;
          if (v108 - v103 >= v101)
          {
            if (__dst.__r_.__value_.__r.__words[0] != __dst.__r_.__value_.__l.__size_)
            {
              do
              {
                std::string::operator=(v103, v100);
                v112 = *(v100 + 24);
                v113 = *(v100 + 40);
                *(v103 + 49) = *(v100 + 49);
                *(v103 + 40) = v113;
                *(v103 + 24) = v112;
                v100 += 72;
                v103 = (v103 + 72);
              }

              while (v100 != v99);
              v108 = self->_keywordResults.__end_;
            }

            while (v108 != v103)
            {
              v114 = *(v108 - 49);
              v108 -= 9;
              if (v114 < 0)
              {
                operator delete(*v108);
              }
            }

            self->_keywordResults.__end_ = v103;
          }

          else
          {
            v109 = (__dst.__r_.__value_.__r.__words[0] + v108 - v103);
            if (v108 != v103)
            {
              do
              {
                std::string::operator=(v103, v100);
                v110 = *(v100 + 24);
                v111 = *(v100 + 40);
                *(v103 + 49) = *(v100 + 49);
                *(v103 + 40) = v111;
                *(v103 + 24) = v110;
                v100 += 72;
                v103 = (v103 + 72);
              }

              while (v100 != v109);
              v108 = self->_keywordResults.__end_;
            }

            self->_keywordResults.__end_ = sub_272369144(p_keywordResults, v109, v99, v108);
          }
        }
      }

      else
      {
        if (v98)
        {
          v121 = *(__dst.__r_.__value_.__r.__words[0] + 32);
          v120 = *(__dst.__r_.__value_.__r.__words[0] + 36);
          v122 = self->_processedFrameCount;
          LODWORD(__str.__r_.__value_.__l.__data_) = v129;
          *(__str.__r_.__value_.__r.__words + 4) = configuration2;
          WORD2(__str.__r_.__value_.__r.__words[1]) = 1024;
          *(&__str.__r_.__value_.__r.__words[1] + 6) = v121;
          WORD1(__str.__r_.__value_.__r.__words[2]) = 1024;
          HIDWORD(__str.__r_.__value_.__r.__words[2]) = v120;
          LOWORD(v142) = 1024;
          *(&v142 + 2) = v122;
          _os_log_debug_impl(&dword_2721E4000, v97, OS_LOG_TYPE_DEBUG, "Got keyword %@ [%d, %d] after %d frames, not looking for silence after", &__str, 0x1Eu);
        }

        [(VATKeywordSpotter *)self _handleValidResult:&__dst];
      }
    }

    else
    {
      v107 = _VATLoggingFacility(kVATLogCategoryFramework);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
      {
        v116 = *(__dst.__r_.__value_.__r.__words[0] + 32);
        v115 = *(__dst.__r_.__value_.__r.__words[0] + 36);
        LODWORD(__str.__r_.__value_.__l.__data_) = v129;
        *(__str.__r_.__value_.__r.__words + 4) = configuration2;
        WORD2(__str.__r_.__value_.__r.__words[1]) = 1024;
        *(&__str.__r_.__value_.__r.__words[1] + 6) = v116;
        WORD1(__str.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(__str.__r_.__value_.__r.__words[2]) = v115;
        LOWORD(v142) = 2112;
        *(&v142 + 2) = runtime2;
        _os_log_debug_impl(&dword_2721E4000, v107, OS_LOG_TYPE_DEBUG, "Keyword %@ [%d,%d] dismissed. %@", &__str, 0x22u);
      }
    }

    sub_272368A90(self->_floatFstDecoder);
LABEL_151:

    goto LABEL_152;
  }

  v15 = _VATLoggingFacility(kVATLogCategoryFramework);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_2721E4000, v15, OS_LOG_TYPE_ERROR, "Got nil acoustic model output", &__str, 2u);
  }

LABEL_9:
}

- (void)_initializeDecoderForKeywordsWithPhonemes:(id)phonemes
{
  phonemes;
  fwrite("Allocating new decoder\n", 0x17uLL, 1uLL, *MEMORY[0x277D85DF8]);
  self->_processedFrameCount = 0;
  operator new();
}

- (void)setPostKeywordSilenceCheckEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  configuration = [(VATKeywordSpotter *)self configuration];
  runtime = [configuration runtime];
  [runtime setPostKeywordSilence:enabledCopy];
}

- (BOOL)postKeywordSilenceCheckEnabled
{
  configuration = [(VATKeywordSpotter *)self configuration];
  runtime = [configuration runtime];
  postKeywordSilence = [runtime postKeywordSilence];

  return postKeywordSilence;
}

- (void)setDuringKeywordSilenceCheckEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  configuration = [(VATKeywordSpotter *)self configuration];
  runtime = [configuration runtime];
  [runtime setDuringKeywordSilence:enabledCopy];
}

- (BOOL)duringKeywordSilenceCheckEnabled
{
  configuration = [(VATKeywordSpotter *)self configuration];
  runtime = [configuration runtime];
  duringKeywordSilence = [runtime duringKeywordSilence];

  return duringKeywordSilence;
}

- (void)setPreKeywordSilenceCheckEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  configuration = [(VATKeywordSpotter *)self configuration];
  runtime = [configuration runtime];
  [runtime setPreKeywordSilence:enabledCopy];
}

- (BOOL)preKeywordSilenceCheckEnabled
{
  configuration = [(VATKeywordSpotter *)self configuration];
  runtime = [configuration runtime];
  preKeywordSilence = [runtime preKeywordSilence];

  return preKeywordSilence;
}

- (void)stop
{
  if (self->_isRunning)
  {
    v3 = dispatch_semaphore_create(0);
    fe = self->fe;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_272370840;
    v27[3] = &unk_279E40788;
    v27[4] = self;
    v5 = v3;
    v28 = v5;
    [(FeatureExtractObjc *)fe stopWithCompletionHandlerWithCompletionHandler:v27];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    self->_isRunning = 0;
    self->_processedFrameCount = 0;
    floatFstDecoder = self->_floatFstDecoder;
    sub_272368A90(floatFstDecoder);
    *(floatFstDecoder + 8) = 0;
    v7 = *(floatFstDecoder + 5);
    v8 = (v7 >> 7) & 0x1FFFFFFFFFFFFF8;
    v9 = *(floatFstDecoder + 2);
    if (*(floatFstDecoder + 3) == v9)
    {
      v10 = 0;
      v16 = 0;
      v17 = (floatFstDecoder + 2);
    }

    else
    {
      v10 = *(v9 + v8) + 4 * (*(floatFstDecoder + 5) & 0x3FFLL);
      v11 = *(floatFstDecoder + 6) + v7;
      v12 = (v11 >> 7) & 0x1FFFFFFFFFFFFF8;
      v13 = v11 & 0x3FF;
      v14 = *(v9 + v12) + 4 * v13;
      v15 = (v13 | ((v12 - v8) << 7)) - (*(floatFstDecoder + 5) & 0x3FFLL);
      if (v14 == v10)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      v17 = (floatFstDecoder + 2);
    }

    v26 = v8;
    v25 = v10;
    v18 = sub_272366F18((v9 + v8), v10, 0);
    if (v16 >= 1)
    {
      v20 = v18;
      v21 = v19;
      v22 = sub_272366F18(v18, v19, v16);
      sub_272367104(v29, (v9 + v26), v25, v20, v21, v22, v23);
      v24 = *(floatFstDecoder + 6) - v16;
      *(floatFstDecoder + 5) += v16;
      *(floatFstDecoder + 6) = v24;
        ;
      }
    }

    [(FeatureExtractObjc *)self->fe reset];
  }
}

- (void)addAudioSamples:(const void *)samples count:(int)count isFloat:(BOOL)float filePath:(id)path byteCount:(int64_t)byteCount currentDuration:(double)duration
{
  objc_storeStrong(&self->_filePath, path);
  self->_fileCurrentDuration = duration;
  self->_fileByteCount += byteCount;

  MEMORY[0x2821F9670](self, sel_addAudioSamples_count_isFloat_);
}

- (void)addAudioSamples:(const void *)samples count:(int)count isFloat:(BOOL)float
{
  fe = self->fe;
  if (float)
  {
    MEMORY[0x2821F9670](fe, sel_addFloatSamples_count_);
  }

  else
  {
    MEMORY[0x2821F9670](fe, sel_addSamples_count_);
  }
}

- (void)setStreamingMode:(BOOL)mode
{
  fe = self->fe;
  if (fe)
  {

    MEMORY[0x2821F9670](fe, sel_setStreamingModeWithStreaming_);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = _VATLoggingFacility(kVATLogCategoryFramework);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_2721E4000, v6, OS_LOG_TYPE_INFO, "VATKeywordSpotter setStreamingMode ignored due to fe being null", v7, 2u);
    }
  }
}

- (void)start
{
  filePath = self->_filePath;
  self->_filePath = 0;

  self->_fileByteCount = 0;
  self->_fileCurrentDuration = 0.0;
  if (!self->_isRunning)
  {
    v4 = dispatch_semaphore_create(0);
    fe = self->fe;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_27237261C;
    v7[3] = &unk_279E40760;
    v8 = v4;
    v6 = v4;
    [(FeatureExtractObjc *)fe startWithCompletionHandlerWithCompletionHandler:v7];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    self->_isRunning = 1;
  }
}

- (VATKeywordSpotter)initWithConfig:(id)config keywordsWithPhonemes:(id)phonemes delegate:(id)delegate
{
  v33 = *MEMORY[0x277D85DE8];
  configCopy = config;
  phonemesCopy = phonemes;
  delegateCopy = delegate;
  v29.receiver = self;
  v29.super_class = VATKeywordSpotter;
  v11 = [(VATKeywordSpotter *)&v29 init];
  if (!v11)
  {
    goto LABEL_5;
  }

  v28 = 0;
  v12 = [[VATConfiguration alloc] initWithFilename:configCopy error:&v28];
  v13 = v28;
  if (!v12)
  {
    v18 = _VATLoggingFacility("VATKeywordSpotter");
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v17 = 0;
      goto LABEL_10;
    }

    *location = 138412546;
    *&location[4] = configCopy;
    v31 = 2112;
    v32 = v13;
    v19 = "Failed to load config from %@: %@";
    v20 = v18;
    v21 = 22;
LABEL_12:
    _os_log_error_impl(&dword_2721E4000, v20, OS_LOG_TYPE_ERROR, v19, location, v21);
    goto LABEL_9;
  }

  [(VATKeywordSpotter *)v11 setConfiguration:v12];
  v14 = [[FeatureExtractObjc alloc] initWithConfig:v12];
  fe = v11->fe;
  v11->fe = v14;

  if (!v11->fe)
  {
    v18 = _VATLoggingFacility("VATKeywordSpotter");
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *location = 0;
    v19 = "Failed to create frontend or AM neural net";
    v20 = v18;
    v21 = 2;
    goto LABEL_12;
  }

  objc_storeStrong(&v11->_delegate, delegate);
  objc_storeStrong(&v11->_keywordsWithPhonemes, phonemes);
  [(VATKeywordSpotter *)v11 _initializeDecoderForKeywordsWithPhonemes:phonemesCopy];
  objc_initWeak(location, v11);
  v16 = v11->fe;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = sub_272372928;
  v26 = &unk_279E40738;
  objc_copyWeak(&v27, location);
  [(FeatureExtractObjc *)v16 addCallbackForAcousticModelOutputAvailableWithCallback:&v23];
  [(VATKeywordSpotter *)v11 start:v23];
  objc_destroyWeak(&v27);
  objc_destroyWeak(location);

LABEL_5:
  v17 = v11;
LABEL_10:

  return v17;
}

- (VATKeywordSpotter)initWithConfig:(id)config keywords:(id)keywords delegate:(id)delegate
{
  v26 = *MEMORY[0x277D85DE8];
  configCopy = config;
  keywordsCopy = keywords;
  delegateCopy = delegate;
  selfCopy = self;
  v11 = objc_alloc_init(G2PFactoredObjc);
  [(G2PFactoredObjc *)v11 setup];
  v12 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = keywordsCopy;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [(G2PFactoredObjc *)v11 getPhrasePronounciationWithPhrase:*(*(&v21 + 1) + 8 * v16) wordSep:@"<w>" prefixWithPhrase:1];
        if (v17)
        {
          [v12 addObject:v17];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [(VATKeywordSpotter *)selfCopy initWithConfig:configCopy keywordsWithPhonemes:v12 delegate:delegateCopy];
  return v18;
}

- (void)updateWithKeywordsWithPhonemes:(id)phonemes
{
  v28 = *MEMORY[0x277D85DE8];
  phonemesCopy = phonemes;
  [(VATKeywordSpotter *)self stop];
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = phonemesCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = v9;
        sub_27236B1B4(__p, [v9 UTF8String]);
        sub_27236B26C(&v24, __p);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v6);
  }

  floatFstDecoder = self->_floatFstDecoder;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  sub_27236B398(&v14, v24, v25, 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3));
  sub_27236B420(v17, floatFstDecoder, v14, v15);
  sub_27236FEDC(v17[2]);
  v12 = v17[0];
  v17[0] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  __p[0] = &v14;
  sub_27236A158(__p);
  v13 = self->_floatFstDecoder;
  sub_27236C8E0(v13 + 23, (-1431655765 * ((v13[11] - v13[10]) >> 3)));
  sub_272368A90(v13);
  sub_272368A90(self->_floatFstDecoder);
  [(VATKeywordSpotter *)self start];
  __p[0] = &v24;
  sub_27236A158(__p);
}

- (void)updateWithKeywords:(id)keywords
{
  v17 = *MEMORY[0x277D85DE8];
  keywordsCopy = keywords;
  v5 = objc_alloc_init(G2PFactoredObjc);
  [(G2PFactoredObjc *)v5 setup];
  v6 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = keywordsCopy;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [(G2PFactoredObjc *)v5 getPhrasePronounciationWithPhrase:*(*(&v12 + 1) + 8 * v10) wordSep:@"<w>" prefixWithPhrase:1, v12];
        if (v11)
        {
          [v6 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(VATKeywordSpotter *)self updateWithKeywordsWithPhonemes:v6];
}

- (VATKeywordSpotter)initWithConfig:(id)config keywordsWithPhonemes:(id)phonemes delegate:(id)delegate silenceLookback:(int)lookback silenceExpect:(int)expect batchDecode:(BOOL)decode enableAudioDebugging:(BOOL)debugging
{
  decodeCopy = decode;
  v12 = [(VATKeywordSpotter *)self initWithConfig:config keywordsWithPhonemes:phonemes delegate:delegate];
  v13 = v12;
  v15 = lookback > 0 && expect > 0;
  if (v15)
  {
    configuration = [(VATKeywordSpotter *)v12 configuration];
    decoder = [configuration decoder];
    preKeywordSilence = [decoder preKeywordSilence];
    [preKeywordSilence setLookbackFrames:lookback];

    configuration2 = [(VATKeywordSpotter *)v13 configuration];
    decoder2 = [configuration2 decoder];
    preKeywordSilence2 = [decoder2 preKeywordSilence];
    [preKeywordSilence2 setMinSilenceInLookbackFrames:expect];
  }

  [(VATKeywordSpotter *)v13 setPreKeywordSilenceCheckEnabled:v15];
  [(VATKeywordSpotter *)v13 setAudioDebuggingEnabled:debugging];
  [(VATKeywordSpotter *)v13 setBatchDecodeEnabled:decodeCopy];

  return v13;
}

- (void)dealloc
{
  floatFstDecoder = self->_floatFstDecoder;
  if (floatFstDecoder)
  {
    (*(*floatFstDecoder + 8))(floatFstDecoder, a2);
  }

  [(VATKeywordSpotter *)self _categoryDealloc];
  v4.receiver = self;
  v4.super_class = VATKeywordSpotter;
  [(VATKeywordSpotter *)&v4 dealloc];
}

+ (id)pronounciationsFor:(id)for wordSeparator:(id)separator prefixWithPhrase:(BOOL)phrase
{
  phraseCopy = phrase;
  v27 = *MEMORY[0x277D85DE8];
  forCopy = for;
  separatorCopy = separator;
  v8 = objc_alloc_init(G2PFactoredObjc);
  [(G2PFactoredObjc *)v8 setup];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = forCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        allKeys = [v9 allKeys];
        v16 = [allKeys containsObject:v14];

        if ((v16 & 1) == 0)
        {
          v17 = [(G2PFactoredObjc *)v8 getPhrasePronounciationWithPhrase:v14 wordSep:separatorCopy prefixWithPhrase:phraseCopy];
          v25 = v17;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
          [v9 setObject:v18 forKeyedSubscript:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  return v9;
}

+ (id)pronounciationsFor:(id)for wordSeparator:(id)separator
{
  v4 = [VATKeywordSpotter pronounciationsFor:for wordSeparator:separator prefixWithPhrase:0];

  return v4;
}

@end