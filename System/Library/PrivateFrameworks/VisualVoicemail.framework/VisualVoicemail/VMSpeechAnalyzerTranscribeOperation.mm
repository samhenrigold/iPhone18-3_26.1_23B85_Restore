@interface VMSpeechAnalyzerTranscribeOperation
- (VMSpeechAnalyzerTranscribeOperation)initWithClientIdentifier:(id)identifier transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate transcriberOptions:(id)options options:(id)a8 languageDetectorOptions:(id)detectorOptions restrictedLogging:(BOOL)self0 didChangeVolatileRange:(id)self1;
- (id)initSpeechAnalyzerForTranscribe:(id)transcribe taskHint:(int64_t)hint dataURL:(id)l queue:(id)queue profanityFilterOverride:(BOOL)override;
- (void)cancel;
- (void)main;
- (void)prepareTranscriptionString:(id)string;
- (void)speechAnalyzer:(id)analyzer didProduceTranscriberResult:(id)result;
- (void)speechAnalyzer:(id)analyzer didStopTranscriptionWithError:(id)error;
- (void)speechAnalyzerDidProduceAllTranscriberResults:(id)results;
@end

@implementation VMSpeechAnalyzerTranscribeOperation

- (VMSpeechAnalyzerTranscribeOperation)initWithClientIdentifier:(id)identifier transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate transcriberOptions:(id)options options:(id)a8 languageDetectorOptions:(id)detectorOptions restrictedLogging:(BOOL)self0 didChangeVolatileRange:(id)self1
{
  [(VMSpeechAnalyzerTranscribeOperation *)self doesNotRecognizeSelector:a2, delegate, resultDelegate, detectorResultDelegate, options, a8];

  return 0;
}

- (id)initSpeechAnalyzerForTranscribe:(id)transcribe taskHint:(int64_t)hint dataURL:(id)l queue:(id)queue profanityFilterOverride:(BOOL)override
{
  overrideCopy = override;
  lCopy = l;
  queueCopy = queue;
  v14 = @"com.apple.visualvoicemail";
  transcribeCopy = transcribe;
  v16 = objc_alloc_init(SFSpeechAnalyzerTranscriberOptions);
  [v16 setTaskHint:hint];
  [v16 setLocale:transcribeCopy];

  if (overrideCopy)
  {
    v18 = sub_100002894(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = lCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Profanity Filter Enabled for URL %@.", buf, 0xCu);
    }

    [v16 setTranscriptionOptions:16];
  }

  v26.receiver = self;
  v26.super_class = VMSpeechAnalyzerTranscribeOperation;
  v24 = 1;
  v19 = [(VMSpeechAnalyzerOperation *)&v26 initWithClientIdentifier:v14 transcriberResultDelegate:self endpointingResultDelegate:0 languageDetectorResultDelegate:0 transcriberOptions:v16 options:0 languageDetectorOptions:0 restrictedLogging:v24 didChangeVolatileRange:&stru_1000EF460];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_dataURL, l);
    objc_storeStrong(&v20->_transcriptionControllerQueue, queue);
    v21 = +[VMConfiguration getVMConcatenationDelimiterforLocale:](VMConfiguration, "getVMConcatenationDelimiterforLocale:", [v16 taskHint]);
    delimiter = v20->_delimiter;
    v20->_delimiter = v21;
  }

  return v20;
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = VMSpeechAnalyzerTranscribeOperation;
  cancel = [(VMSpeechAnalyzerTranscribeOperation *)&v5 cancel];
  v4 = sub_100002894(cancel);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancelled Speech Analyzer transcriber operation %@.", buf, 0xCu);
  }
}

- (void)main
{
  v3 = sub_100002894(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    dataURL = [(VMSpeechAnalyzerTranscribeOperation *)self dataURL];
    queuePriority = [(VMSpeechAnalyzerTranscribeOperation *)self queuePriority];
    v6 = +[MFPowerController sharedInstance];
    isPluggedIn = [v6 isPluggedIn];
    v8 = @" not";
    *buf = 138413058;
    selfCopy = self;
    v42 = 2112;
    if (isPluggedIn)
    {
      v8 = &stru_1000F0098;
    }

    v43 = dataURL;
    v44 = 2048;
    v45 = queuePriority;
    v46 = 2112;
    v47 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting Speech Analyzer transcriber operation %@ for %@. Priority is %ld and device is %@ charging.", buf, 0x2Au);
  }

  transcribeOperationBeginCallback = [(VMSpeechAnalyzerTranscribeOperation *)self transcribeOperationBeginCallback];

  if (transcribeOperationBeginCallback)
  {
    transcribeOperationBeginCallback2 = [(VMSpeechAnalyzerTranscribeOperation *)self transcribeOperationBeginCallback];
    transcribeOperationBeginCallback2[2]();
  }

  if ([(VMSpeechAnalyzerTranscribeOperation *)self isCancelled])
  {
    v11 = kVVErrorDomain;
    v38 = NSLocalizedDescriptionKey;
    v39 = @"Speech Analyzer transcriber operation was cancelled.";
    v12 = &v39;
    v13 = &v38;
    goto LABEL_18;
  }

  if ([(VMSpeechAnalyzerTranscribeOperation *)self queuePriority]== -4)
  {
    v14 = +[MFPowerController sharedInstance];
    isPluggedIn2 = [v14 isPluggedIn];

    if ((isPluggedIn2 & 1) == 0)
    {
      v11 = kVVErrorDomain;
      v36 = NSLocalizedDescriptionKey;
      v37 = @"Low priority Speech Analyzer transcriber operation cancelled. The device is no longer connected to a power source.";
      v12 = &v37;
      v13 = &v36;
LABEL_18:
      v25 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:1];
      v24 = [NSError errorWithDomain:v11 code:1038 userInfo:v25];

      if (!v24)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  transcriptionControllerQueue = [(VMSpeechAnalyzerTranscribeOperation *)self transcriptionControllerQueue];

  if (!transcriptionControllerQueue)
  {
    v11 = kVVErrorDomain;
    v34 = NSLocalizedDescriptionKey;
    v35 = @"Speech Analyzer transcriber operation cancelled as transcriptionController queue invalid or not initialized.";
    v12 = &v35;
    v13 = &v34;
    goto LABEL_18;
  }

  v17 = dispatch_semaphore_create(0);
  [(VMSpeechAnalyzerTranscribeOperation *)self setSemaphore:v17];

  dataURL2 = [(VMSpeechAnalyzerTranscribeOperation *)self dataURL];
  v19 = [(VMSpeechAnalyzerOperation *)self submitAudioToAnalyzer:dataURL2 sampleRate:0 useFloat:16000.0];

  if (v19)
  {
    v21 = sub_100002894(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      dataURL3 = [(VMSpeechAnalyzerTranscribeOperation *)self dataURL];
      *buf = 138412290;
      selfCopy = dataURL3;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "VMSpeechAnalyzerTranscribeOperation: Submitted URL %@ for transcribing", buf, 0xCu);
    }

    semaphore = [(VMSpeechAnalyzerTranscribeOperation *)self semaphore];
    dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);
    v24 = 0;
  }

  else
  {
    v26 = kVVErrorDomain;
    v32 = NSLocalizedDescriptionKey;
    v33 = @"Audio was not submitted to speech analyzer successfully.";
    semaphore = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v24 = [NSError errorWithDomain:v26 code:1039 userInfo:semaphore];
  }

  [(VMSpeechAnalyzerTranscribeOperation *)self cancel];
  if (v24)
  {
LABEL_22:
    transcribeOperationCompletion = [(VMSpeechAnalyzerTranscribeOperation *)self transcribeOperationCompletion];

    if (transcribeOperationCompletion)
    {
      objc_msgSend_duration(self);
      v29 = v28;
      progress = [(VMSpeechAnalyzerTranscribeOperation *)self progress];
      [progress setCompletedUnitCount:v29];

      transcribeOperationCompletion2 = [(VMSpeechAnalyzerTranscribeOperation *)self transcribeOperationCompletion];
      (transcribeOperationCompletion2)[2](transcribeOperationCompletion2, 0, v24);
    }
  }

LABEL_24:
}

- (void)prepareTranscriptionString:(id)string
{
  stringCopy = string;
  contextualizedTranscriberMultisegmentResult = [stringCopy contextualizedTranscriberMultisegmentResult];
  transcriptions = [contextualizedTranscriberMultisegmentResult transcriptions];
  firstObject = [transcriptions firstObject];

  v7 = +[NSMutableString string];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = firstObject;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        text = [*(*(&v17 + 1) + 8 * v12) text];
        [v7 appendString:text];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = sub_100002894(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (stringCopy)
    {
      objc_msgSend_range(stringCopy);
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    v16 = CMTimeRangeCopyDescription(0, &range);
    LODWORD(range.start.value) = 138412546;
    *(&range.start.value + 4) = v16;
    LOWORD(range.start.flags) = 2112;
    *(&range.start.flags + 2) = v7;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "time range = %@, text = %@", &range, 0x16u);
  }
}

- (void)speechAnalyzer:(id)analyzer didProduceTranscriberResult:(id)result
{
  resultCopy = result;
  transcriptionControllerQueue = [(VMSpeechAnalyzerTranscribeOperation *)self transcriptionControllerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100086350;
  v8[3] = &unk_1000ED450;
  v9 = resultCopy;
  selfCopy = self;
  v7 = resultCopy;
  dispatch_async(transcriptionControllerQueue, v8);
}

- (void)speechAnalyzer:(id)analyzer didStopTranscriptionWithError:(id)error
{
  errorCopy = error;
  transcriptionControllerQueue = [(VMSpeechAnalyzerTranscribeOperation *)self transcriptionControllerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000865B8;
  v8[3] = &unk_1000ED450;
  v9 = errorCopy;
  selfCopy = self;
  v7 = errorCopy;
  dispatch_async(transcriptionControllerQueue, v8);
}

- (void)speechAnalyzerDidProduceAllTranscriberResults:(id)results
{
  transcriptionControllerQueue = [(VMSpeechAnalyzerTranscribeOperation *)self transcriptionControllerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086788;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_async(transcriptionControllerQueue, block);
}

@end