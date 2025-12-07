@interface RDSAPIObjCSpeechAnalyzer
- (RDSAPIObjCSpeechAnalyzer)initWithLocale:(id)locale;
- (id)getJitProfileData;
- (id)getUserProfileData;
- (void)createRecognitionBufferWithDelegate:(RDSAPICSpeechAnalyzerDelegate *)delegate task:(id)task;
- (void)dealloc;
- (void)didFinishRecognitionWithError:(id)error;
- (void)didGetUtteranceBoundary:(int64_t)boundary utteranceEndSampleNumber:(int64_t)number totalSamplesSentToASR:(int64_t)r;
- (void)didRecognizeFinalResults:(id)results;
- (void)didRecognizePartialResults:(id)results;
- (void)setJitProfileData:(id)data;
- (void)setLeftContextText:(id)text;
- (void)setRecognitionReplacements:(BOOL)replacements;
- (void)setUserProfileData:(id)data;
@end

@implementation RDSAPIObjCSpeechAnalyzer

- (RDSAPIObjCSpeechAnalyzer)initWithLocale:(id)locale
{
  localeCopy = locale;
  v10.receiver = self;
  v10.super_class = RDSAPIObjCSpeechAnalyzer;
  v5 = [(RDSAPIObjCSpeechAnalyzer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(RDSAPIObjCSpeechAnalyzer *)v5 setLocale:localeCopy];
  }

  v7 = [[_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer alloc] initWithDelegate:v6 locale:v6->_locale highPriority:v6->_highPriority != 0 farField:v6->_farField != 0 supportEmojiRecognition:1];
  [(RDSAPIObjCSpeechAnalyzer *)v6 setSwiftSpeechAnalyzer:v7];

  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzer *)v6 swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer attachAnalysisContextWithCompletionHandler:&stru_1000FDC68];

  return v6;
}

- (void)createRecognitionBufferWithDelegate:(RDSAPICSpeechAnalyzerDelegate *)delegate task:(id)task
{
  taskCopy = task;
  [(RDSAPIObjCSpeechAnalyzer *)self setDelegate:delegate];
  v7 = [RDSAPIObjCSpeechAnalyzerAudioBuffer alloc];
  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzer *)self swiftSpeechAnalyzer];
  v9 = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)v7 initWithSwiftSpeechAnalyzer:swiftSpeechAnalyzer task:taskCopy];

  speechAnalyzerAudioBuffer = self->_speechAnalyzerAudioBuffer;
  self->_speechAnalyzerAudioBuffer = v9;

  v11 = self->_speechAnalyzerAudioBuffer;
  v13 = RXOSLog(v12);
  v14 = v13;
  if (v11)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v22 = 0;
    v15 = "SpeechAnalyzerObjC transcriber initialized";
    v16 = &v22;
    v17 = v14;
    v18 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v21 = 0;
    v15 = "SpeechAnalyzerObjC transcriber could not be initialized";
    v16 = &v21;
    v17 = v14;
    v18 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&_mh_execute_header, v17, v18, v15, v16, 2u);
LABEL_7:

  v19 = self->_speechAnalyzerAudioBuffer;

  return v19;
}

- (void)didRecognizeFinalResults:(id)results
{
  resultsCopy = results;
  v5 = RXOSLog(resultsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Calling didRecognizeFinalResults", v6, 2u);
  }

  if (*([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 5))
  {
    (*([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 5))(*[(RDSAPIObjCSpeechAnalyzer *)self delegate], resultsCopy);
  }
}

- (void)didGetUtteranceBoundary:(int64_t)boundary utteranceEndSampleNumber:(int64_t)number totalSamplesSentToASR:(int64_t)r
{
  if (*([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 4))
  {
    v10 = *([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 4);
    v9 = *[(RDSAPIObjCSpeechAnalyzer *)self delegate];

    v10(v9, boundary, number, r);
  }
}

- (void)didRecognizePartialResults:(id)results
{
  resultsCopy = results;
  v5 = RXOSLog(resultsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Calling didRecognizePartialResults", v6, 2u);
  }

  if (*([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 2))
  {
    (*([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 2))(*[(RDSAPIObjCSpeechAnalyzer *)self delegate], resultsCopy);
  }
}

- (void)didFinishRecognitionWithError:(id)error
{
  v4 = RXOSLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Recognition Error", v6, 2u);
  }

  if (*([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 3))
  {
    v5 = [[NSError alloc] initWithDomain:@"SpeechAPIErrorDomain" code:0 userInfo:0];
    (*([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 3))(*[(RDSAPIObjCSpeechAnalyzer *)self delegate], v5);
  }
}

- (void)setLeftContextText:(id)text
{
  textCopy = text;
  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzer *)self swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer setTextWithLeftContextText:textCopy];
}

- (id)getUserProfileData
{
  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzer *)self swiftSpeechAnalyzer];
  getUserProfileData = [swiftSpeechAnalyzer getUserProfileData];

  return getUserProfileData;
}

- (void)setUserProfileData:(id)data
{
  dataCopy = data;
  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzer *)self swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer setContextWithUserProfileData:dataCopy];
}

- (id)getJitProfileData
{
  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzer *)self swiftSpeechAnalyzer];
  getJitProfileData = [swiftSpeechAnalyzer getJitProfileData];

  return getJitProfileData;
}

- (void)setJitProfileData:(id)data
{
  dataCopy = data;
  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzer *)self swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer setContextWithJitProfileData:dataCopy];
}

- (void)setRecognitionReplacements:(BOOL)replacements
{
  replacementsCopy = replacements;
  speechAnalyzerAudioBuffer = [(RDSAPIObjCSpeechAnalyzer *)self speechAnalyzerAudioBuffer];
  [speechAnalyzerAudioBuffer setRecognitionReplacements:replacementsCopy];
}

- (void)dealloc
{
  v3 = RXOSLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SpeechAnalyzerObjC deallocated", buf, 2u);
  }

  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzer *)self swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer cancelRecognition];

  v5.receiver = self;
  v5.super_class = RDSAPIObjCSpeechAnalyzer;
  [(RDSAPIObjCSpeechAnalyzer *)&v5 dealloc];
}

@end