@interface VMSpeechAnalyzerOperation
- (BOOL)enumerateSampleBuffersWithURL:(id)l sampleRate:(double)rate useFloat:(BOOL)float block:(id)block;
- (BOOL)submitAudioToAnalyzer:(id)analyzer sampleRate:(double)rate useFloat:(BOOL)float;
- (VMSpeechAnalyzerOperation)init;
- (VMSpeechAnalyzerOperation)initWithClientIdentifier:(id)identifier transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate transcriberOptions:(id)options options:(id)a8 languageDetectorOptions:(id)detectorOptions restrictedLogging:(BOOL)self0 didChangeVolatileRange:(id)self1;
- (VMSpeechAnalyzerOperation)initWithSpeechAnalyzer:(id)analyzer;
@end

@implementation VMSpeechAnalyzerOperation

- (VMSpeechAnalyzerOperation)init
{
  [(VMSpeechAnalyzerOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMSpeechAnalyzerOperation)initWithClientIdentifier:(id)identifier transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate transcriberOptions:(id)options options:(id)a8 languageDetectorOptions:(id)detectorOptions restrictedLogging:(BOOL)self0 didChangeVolatileRange:(id)self1
{
  rangeCopy = range;
  detectorOptionsCopy = detectorOptions;
  v17 = a8;
  optionsCopy = options;
  detectorResultDelegateCopy = detectorResultDelegate;
  resultDelegateCopy = resultDelegate;
  delegateCopy = delegate;
  identifierCopy = identifier;
  v23 = [[AVAudioFormat alloc] initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  v24 = objc_alloc_init(NSOperationQueue);
  [v24 setMaxConcurrentOperationCount:1];
  LOBYTE(v31) = logging;
  v34 = v23;
  v25 = [[SFSpeechAnalyzer alloc] initWithClientIdentifier:identifierCopy audioFormat:v23 transcriberResultDelegate:delegateCopy endpointingResultDelegate:resultDelegateCopy languageDetectorResultDelegate:detectorResultDelegateCopy queue:v24 transcriberOptions:optionsCopy options:v17 languageDetectorOptions:detectorOptionsCopy restrictedLogging:v31 geoLMRegionID:0 contextualNamedEntities:0 didChangeVolatileRange:rangeCopy];

  if (v25)
  {
    v26 = [(VMSpeechAnalyzerOperation *)self initWithSpeechAnalyzer:v25];
    v27 = v26;
    if (v26)
    {
      [(VMSpeechAnalyzerOperation *)v26 setSpeechAnalyzerQueue:v24];
    }

    selfCopy = v27;
    v29 = selfCopy;
  }

  else
  {
    v29 = 0;
    selfCopy = self;
  }

  return v29;
}

- (VMSpeechAnalyzerOperation)initWithSpeechAnalyzer:(id)analyzer
{
  analyzerCopy = analyzer;
  v9.receiver = self;
  v9.super_class = VMSpeechAnalyzerOperation;
  v6 = [(VMSpeechAnalyzerOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_speechAnalyzer, analyzer);
  }

  return v7;
}

- (BOOL)enumerateSampleBuffersWithURL:(id)l sampleRate:(double)rate useFloat:(BOOL)float block:(id)block
{
  floatCopy = float;
  lCopy = l;
  blockCopy = block;
  v11 = [AVURLAsset assetWithURL:lCopy];
  if (v11)
  {
    v29 = 0;
    v12 = [AVAssetReader assetReaderWithAsset:v11 error:&v29];
    v13 = v29;
    v14 = v13;
    if (!v12)
    {
      v18 = sub_1000025A8(v13);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v33 = v14;
        v34 = 2112;
        v35 = lCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "enumerateSampleBuffersWithURL: Error with reader %@ for URL %@", buf, 0x16u);
      }

      v25 = 0;
      goto LABEL_24;
    }

    v31[0] = &off_1000F5620;
    v30[0] = AVFormatIDKey;
    v30[1] = AVSampleRateKey;
    v15 = [NSNumber numberWithDouble:rate];
    v31[1] = v15;
    v31[2] = &off_1000F5638;
    v30[2] = AVNumberOfChannelsKey;
    v30[3] = AVLinearPCMBitDepthKey;
    v16 = &off_1000F5650;
    if (!floatCopy)
    {
      v16 = &off_1000F5668;
    }

    v31[3] = v16;
    v31[4] = &__kCFBooleanFalse;
    v30[4] = AVLinearPCMIsBigEndianKey;
    v30[5] = AVLinearPCMIsFloatKey;
    v17 = [NSNumber numberWithBool:floatCopy];
    v31[5] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:6];

    v19 = [v11 tracksWithMediaType:AVMediaTypeAudio];
    v20 = [AVAssetReaderAudioMixOutput assetReaderAudioMixOutputWithAudioTracks:v19 audioSettings:v18];

    if (v20)
    {
      v22 = [v12 canAddOutput:v20];
      if (v22)
      {
        [v12 addOutput:v20];
        [v12 startReading];
        copyNextSampleBuffer = [v20 copyNextSampleBuffer];
        if (copyNextSampleBuffer)
        {
          copyNextSampleBuffer2 = copyNextSampleBuffer;
          do
          {
            blockCopy[2](blockCopy, copyNextSampleBuffer2);
            CFRelease(copyNextSampleBuffer2);
            copyNextSampleBuffer2 = [v20 copyNextSampleBuffer];
          }

          while (copyNextSampleBuffer2);
        }

        [v12 cancelReading];
        v25 = 1;
        goto LABEL_23;
      }

      v26 = sub_1000025A8(v22);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = lCopy;
        v27 = "enumerateSampleBuffersWithURL: Could not add output for %@";
        goto LABEL_21;
      }
    }

    else
    {
      v26 = sub_1000025A8(v21);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = lCopy;
        v27 = "enumerateSampleBuffersWithURL: Empty output for URL %@";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
      }
    }

    v25 = 0;
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  v14 = sub_1000025A8(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = lCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "enumerateSampleBuffersWithURL:Invalid asset for URL %@", buf, 0xCu);
  }

  v25 = 0;
LABEL_25:

  return v25;
}

- (BOOL)submitAudioToAnalyzer:(id)analyzer sampleRate:(double)rate useFloat:(BOOL)float
{
  floatCopy = float;
  analyzerCopy = analyzer;
  v10 = analyzerCopy;
  if (self->_speechAnalyzer)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000AD54;
    v15[3] = &unk_1000ED808;
    v15[4] = self;
    v15[5] = a2;
    v11 = [(VMSpeechAnalyzerOperation *)self enumerateSampleBuffersWithURL:analyzerCopy sampleRate:floatCopy useFloat:v15 block:rate];
    v12 = sub_1000025A8(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      LODWORD(v17[0]) = v11;
      WORD2(v17[0]) = 2112;
      *(v17 + 6) = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "enumerateSampleBuffersWithURL success? %d for URL %@", buf, 0x12u);
    }

    [(SFSpeechAnalyzer *)self->_speechAnalyzer finishAudio];
    [(SFSpeechAnalyzer *)self->_speechAnalyzer finalizeAndFinishThroughEndOfInputWithCompletion:&stru_1000ED848];
  }

  else
  {
    v13 = sub_1000025A8(analyzerCopy);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17[0] = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unable to submit audio to analyzer for URL %@.", buf, 0xCu);
    }

    LOBYTE(v11) = 0;
  }

  return v11;
}

@end