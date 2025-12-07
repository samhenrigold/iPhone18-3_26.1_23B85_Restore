@interface EARSpeechRecognitionResultStream
- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error;
- (void)speechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration;
- (void)speechRecognizer:(id)recognizer didProduceEndpointFeaturesWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior processedAudioDurationInMilliseconds:(int64_t)milliseconds acousticEndpointerScore:(double)self0;
- (void)speechRecognizer:(id)recognizer didProduceLoggablePackage:(id)package;
- (void)speechRecognizer:(id)recognizer didRecognizeFinalResultCandidatePackage:(id)package;
- (void)speechRecognizer:(id)recognizer didRecognizeFinalResultPackage:(id)package;
- (void)speechRecognizer:(id)recognizer didRecognizeFinalResults:(id)results;
- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result;
- (void)speechRecognizer:(id)recognizer didRecognizeVoiceCommandCandidatePackage:(id)package;
- (void)speechRecognizer:(id)recognizer didReportStatus:(unint64_t)status statusContext:(id)context;
@end

@implementation EARSpeechRecognitionResultStream

- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error
{
  recognizerCopy = recognizer;
  selfCopy = self;
  errorCopy = error;
  sub_10003170C(errorCopy, error);
}

- (void)speechRecognizer:(id)recognizer didRecognizeFinalResultCandidatePackage:(id)package
{
  recognizerCopy = recognizer;
  packageCopy = package;
  selfCopy = self;
  sub_100031948(selfCopy, packageCopy);
}

- (void)speechRecognizer:(id)recognizer didRecognizeVoiceCommandCandidatePackage:(id)package
{
  recognizerCopy = recognizer;
  packageCopy = package;
  selfCopy = self;
  sub_1000319C8(selfCopy, packageCopy);
}

- (void)speechRecognizer:(id)recognizer didRecognizeFinalResultPackage:(id)package
{
  recognizerCopy = recognizer;
  packageCopy = package;
  selfCopy = self;
  sub_100031A48(selfCopy, packageCopy);
}

- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result
{
  recognizerCopy = recognizer;
  resultCopy = result;
  selfCopy = self;
  sub_100031EE4(selfCopy, resultCopy);
}

- (void)speechRecognizer:(id)recognizer didProduceLoggablePackage:(id)package
{
  recognizerCopy = recognizer;
  packageCopy = package;
  selfCopy = self;
  sub_100032064(selfCopy, packageCopy);
}

- (void)speechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_100032168();
}

- (void)speechRecognizer:(id)recognizer didProduceEndpointFeaturesWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior processedAudioDurationInMilliseconds:(int64_t)milliseconds acousticEndpointerScore:(double)self0
{
  sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
  v18 = sub_100046EFC();
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1000321F0(likelihood, posterior, score, selfCopy, count, duration, v18, milliseconds);

  v18, v21, v22, v23, v24, v25, v26, v27;
}

- (void)speechRecognizer:(id)recognizer didReportStatus:(unint64_t)status statusContext:(id)context
{
  if (context)
  {
    v8 = sub_100046D7C();
  }

  else
  {
    v8 = 0;
  }

  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1000323A0(selfCopy, status);

  v8, v11, v12, v13, v14, v15, v16, v17;
}

- (void)speechRecognizer:(id)recognizer didRecognizeFinalResults:(id)results
{
  sub_1000029E4(0, &qword_100070028, _EARSpeechRecognitionResult_ptr);
  v4 = sub_100046EFC();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

@end