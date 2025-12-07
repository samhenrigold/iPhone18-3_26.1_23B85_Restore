@interface CSVTUITrainingSelfLogger
+ (id)sharedLogger;
- (void)logSiriSetupEnrollmentSessionSummaryWithSiriSetupID:(id)d lastOpenedPage:(int)page completedPage:(int)completedPage pageAttemptsMap:(id)map;
- (void)logSiriSetupPHSEnrollmentDigitalZeroDetectionCompletedWithSiriSetupID:(id)d withPageNumber:(int)number withPhId:(id)id withMaxNumContinuousZeros:(int)zeros withMaxNumAllowedContinuousZeros:(int)continuousZeros withIsMaxNumContinuousZerosOverThreshold:(BOOL)threshold withLocale:(id)locale withVTAssetConfigVersion:(id)self0 withStageStatus:(int)self1 didDetectSpeechStart:(BOOL)self2 didUseTwoPassDetector:(BOOL)self3 didFirstPassTrigger:(BOOL)self4;
- (void)logSiriSetupPHSEnrollmentUtteranceCompletedWithSiriSetupID:(id)d withPageNumber:(int)number withPhId:(id)id withTopScoreForUtterance:(float)utterance withStartSampleCount:(int)count withEndSampleCount:(int)sampleCount withHasSpeechDetected:(int)detected;
@end

@implementation CSVTUITrainingSelfLogger

- (void)logSiriSetupEnrollmentSessionSummaryWithSiriSetupID:(id)d lastOpenedPage:(int)page completedPage:(int)completedPage pageAttemptsMap:(id)map
{
  v7 = *&completedPage;
  v8 = *&page;
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  mapCopy = map;
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v22 = "[CSVTUITrainingSelfLogger logSiriSetupEnrollmentSessionSummaryWithSiriSetupID:lastOpenedPage:completedPage:pageAttemptsMap:]";
    v23 = 1024;
    v24 = v8;
    v25 = 1024;
    v26 = v7;
    v27 = 2112;
    v28 = mapCopy;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s Session summary - lastOpenedPage: %d, lastCompletedPage: %d attemptMap: %@", buf, 0x22u);
  }

  array = [MEMORY[0x1E695DF70] array];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __125__CSVTUITrainingSelfLogger_logSiriSetupEnrollmentSessionSummaryWithSiriSetupID_lastOpenedPage_completedPage_pageAttemptsMap___block_invoke;
  v19[3] = &unk_1E865A8D8;
  v13 = array;
  v20 = v13;
  [mapCopy enumerateKeysAndObjectsUsingBlock:v19];
  if ([v13 count])
  {
    v14 = objc_alloc_init(MEMORY[0x1E69CF558]);
    [v14 setPageAttempts:v13];
    [v14 setLastCompletedPage:v7];
    [v14 setLastOpenedPageNumber:v8];
    v15 = objc_alloc_init(MEMORY[0x1E69CF538]);
    v16 = objc_alloc_init(MEMORY[0x1E69CF540]);
    v17 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];
    [v16 setSiriSetupId:v17];

    [v15 setEventMetadata:v16];
    [v15 setSessionSummary:v14];
    mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
    [mEMORY[0x1E69CE1F0] emitMessage:v15];
  }
}

void __125__CSVTUITrainingSelfLogger_logSiriSetupEnrollmentSessionSummaryWithSiriSetupID_lastOpenedPage_completedPage_pageAttemptsMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69CF550];
  v6 = a3;
  v7 = a2;
  v10 = objc_alloc_init(v5);
  v8 = [v7 unsignedIntValue];

  [v10 setPageNumber:v8];
  v9 = [v6 unsignedIntValue];

  [v10 setNumAttempts:v9];
  [*(a1 + 32) addObject:v10];
}

- (void)logSiriSetupPHSEnrollmentDigitalZeroDetectionCompletedWithSiriSetupID:(id)d withPageNumber:(int)number withPhId:(id)id withMaxNumContinuousZeros:(int)zeros withMaxNumAllowedContinuousZeros:(int)continuousZeros withIsMaxNumContinuousZerosOverThreshold:(BOOL)threshold withLocale:(id)locale withVTAssetConfigVersion:(id)self0 withStageStatus:(int)self1 didDetectSpeechStart:(BOOL)self2 didUseTwoPassDetector:(BOOL)self3 didFirstPassTrigger:(BOOL)self4
{
  thresholdCopy = threshold;
  v15 = *&continuousZeros;
  v16 = *&zeros;
  v18 = *&number;
  v55 = *MEMORY[0x1E69E9840];
  dCopy = d;
  idCopy = id;
  localeCopy = locale;
  versionCopy = version;
  v22 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136318210;
    v30 = "[CSVTUITrainingSelfLogger logSiriSetupPHSEnrollmentDigitalZeroDetectionCompletedWithSiriSetupID:withPageNumber:withPhId:withMaxNumContinuousZeros:withMaxNumAllowedContinuousZeros:withIsMaxNumContinuousZerosOverThreshold:withLocale:withVTAssetConfigVersion:withStageStatus:didDetectSpeechStart:didUseTwoPassDetector:didFirstPassTrigger:]";
    v31 = 2112;
    v32 = dCopy;
    v33 = 1024;
    v34 = v18;
    v35 = 2112;
    v36 = idCopy;
    v37 = 1024;
    v38 = v16;
    v39 = 1024;
    v40 = v15;
    v41 = 1024;
    v42 = thresholdCopy;
    v43 = 2112;
    v44 = localeCopy;
    v45 = 2112;
    v46 = versionCopy;
    v47 = 1024;
    statusCopy = status;
    v49 = 1024;
    startCopy = start;
    v51 = 1024;
    detectorCopy = detector;
    v53 = 1024;
    triggerCopy = trigger;
    _os_log_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEFAULT, "%s logSiriSetupPHSEnrollmentDigitalZero, setupID: %@, pageNumber: %d, phID: %@, maxZeros: %d, maxAllowed: %d, isOverThreshold: %d locale: %@, assetConfigVersion: %@, sessionStatus: %u, didDetectSpeechStart: %d, didUseTwoPassDetector: %d, didFirstPassTrigger: %d", buf, 0x64u);
  }

  v23 = objc_alloc_init(MEMORY[0x1E69CF548]);
  [v23 setPageNumber:v18];
  [v23 setPhraseId:idCopy];
  [v23 setMaxNumContinuousZeros:v16];
  [v23 setMaxNumAllowedContinuousZeros:v15];
  [v23 setIsMaxNumContinuousZerosOverThreshold:thresholdCopy];
  [v23 setLocale:localeCopy];
  [v23 setVtAssetConfigVersion:versionCopy];
  [v23 setStageStatus:status];
  [v23 setDidTriggerFirstPass:trigger];
  [v23 setSpeechStartPointDetected:start];
  [v23 setTwoPassRecognizerUsed:detector];
  v24 = objc_alloc_init(MEMORY[0x1E69CF538]);
  v25 = objc_alloc_init(MEMORY[0x1E69CF540]);
  v26 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];
  [v25 setSiriSetupId:v26];

  [v24 setEventMetadata:v25];
  [v24 setEnrollmentZeroDetectionCompleted:v23];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v24];
}

- (void)logSiriSetupPHSEnrollmentUtteranceCompletedWithSiriSetupID:(id)d withPageNumber:(int)number withPhId:(id)id withTopScoreForUtterance:(float)utterance withStartSampleCount:(int)count withEndSampleCount:(int)sampleCount withHasSpeechDetected:(int)detected
{
  v10 = *&sampleCount;
  v11 = *&count;
  v13 = *&number;
  v15 = MEMORY[0x1E69CF560];
  idCopy = id;
  dCopy = d;
  v23 = objc_alloc_init(v15);
  [v23 setPageNumber:v13];
  [v23 setPhraseId:idCopy];

  *&v18 = utterance;
  [v23 setTopScoreForUtterance:v18];
  [v23 setStartSampleCount:v11];
  [v23 setEndSampleCount:v10];
  [v23 setHasSpeechDetected:detected != 0];
  v19 = objc_alloc_init(MEMORY[0x1E69CF538]);
  v20 = objc_alloc_init(MEMORY[0x1E69CF540]);
  v21 = [objc_alloc(MEMORY[0x1E69CF638]) initWithNSUUID:dCopy];

  [v20 setSiriSetupId:v21];
  [v19 setEventMetadata:v20];
  [v19 setEnrollmentUtteranceCompleted:v23];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
  [mEMORY[0x1E69CE1F0] emitMessage:v19];
}

+ (id)sharedLogger
{
  if (sharedLogger_onceToken != -1)
  {
    dispatch_once(&sharedLogger_onceToken, &__block_literal_global_1577);
  }

  v3 = sharedLogger_sharedVTUITrainingSelfLogger;

  return v3;
}

uint64_t __40__CSVTUITrainingSelfLogger_sharedLogger__block_invoke()
{
  v0 = objc_alloc_init(CSVTUITrainingSelfLogger);
  v1 = sharedLogger_sharedVTUITrainingSelfLogger;
  sharedLogger_sharedVTUITrainingSelfLogger = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end