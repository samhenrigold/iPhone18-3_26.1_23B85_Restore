@interface RDSAPIObjCSpeechAnalyzerAudioBuffer
- (RDSAPIObjCSpeechAnalyzerAudioBuffer)initWithSwiftSpeechAnalyzer:(id)analyzer task:(id)task;
- (void)addAudioSamples:(const signed __int16 *)samples count:(unint64_t)count;
- (void)cancelRecognition;
- (void)dealloc;
- (void)endAudio;
- (void)newUtteranceBegins;
- (void)setRecognitionReplacements:(BOOL)replacements;
- (void)startRecognition:(id)recognition;
@end

@implementation RDSAPIObjCSpeechAnalyzerAudioBuffer

- (RDSAPIObjCSpeechAnalyzerAudioBuffer)initWithSwiftSpeechAnalyzer:(id)analyzer task:(id)task
{
  analyzerCopy = analyzer;
  taskCopy = task;
  v29.receiver = self;
  v29.super_class = RDSAPIObjCSpeechAnalyzerAudioBuffer;
  v8 = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)&v29 init];
  v9 = v8;
  if (v8)
  {
    [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)v8 setSwiftSpeechAnalyzer:analyzerCopy];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  currentTask = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)v9 currentTask];

  if (currentTask != taskCopy)
  {
    v11 = dispatch_time(0, 10000000000);
    v12 = dispatch_semaphore_create(0);
    swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)v9 swiftSpeechAnalyzer];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100002E74;
    v20[3] = &unk_1000FDC90;
    v21 = v9;
    v22 = taskCopy;
    v24 = &v25;
    v14 = v12;
    v23 = v14;
    [swiftSpeechAnalyzer attachTranscriberWithTask:v22 completionHandler:v20];

    v15 = dispatch_semaphore_wait(v14, v11);
    if (v15)
    {
      v16 = RXOSLog(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19[0] = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Timed out waiting to get attach transcriber. ", v19, 2u);
      }

      *(v26 + 24) = 0;
    }
  }

  if (*(v26 + 24) == 1)
  {
    v17 = v9;
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v25, 8);

  return v17;
}

- (void)setRecognitionReplacements:(BOOL)replacements
{
  replacementsCopy = replacements;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  if ([(RDSAPIObjCSpeechAnalyzerAudioBuffer *)self useRecognitionReplacements]!= replacements)
  {
    v5 = dispatch_time(0, 10000000000);
    v6 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)self swiftSpeechAnalyzer];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003218;
    v11[3] = &unk_1000FDCB8;
    objc_copyWeak(&v14, &location);
    v15 = replacementsCopy;
    v13 = &v17;
    v8 = v6;
    v12 = v8;
    [swiftSpeechAnalyzer setRecognitionReplacementsWithUseRecognitionReplacements:replacementsCopy completionHandler:v11];

    v9 = dispatch_semaphore_wait(v8, v5);
    if (v9)
    {
      v10 = RXOSLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v22 = replacementsCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Timed out waiting to get attach transcriber for recognition replacements %d", buf, 8u);
      }

      *(v18 + 24) = 0;
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v17, 8);
}

- (void)startRecognition:(id)recognition
{
  recognitionCopy = recognition;
  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)self swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer startRecognitionWithTranscriberModuleWrapper:recognitionCopy];
}

- (void)newUtteranceBegins
{
  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)self swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer newUtteranceBegins];
}

- (void)addAudioSamples:(const signed __int16 *)samples count:(unint64_t)count
{
  countCopy = count;
  for (i = [[NSMutableArray alloc] initWithCapacity:count]; countCopy; --countCopy)
  {
    v7 = *samples++;
    v8 = [NSNumber numberWithInt:v7];
    [i addObject:v8];
  }

  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)self swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer addAudioSamplesWithAudio:i];
}

- (void)endAudio
{
  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)self swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer endAudio];

  v4 = RXOSLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ended audio stream", v5, 2u);
  }
}

- (void)cancelRecognition
{
  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)self swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer cancelRecognition];

  v4 = RXOSLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Canceled recognition", v5, 2u);
  }
}

- (void)dealloc
{
  v3 = RXOSLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SpeechAnalyzerObjC AudioBuffer deallocated", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = RDSAPIObjCSpeechAnalyzerAudioBuffer;
  [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)&v4 dealloc];
}

@end