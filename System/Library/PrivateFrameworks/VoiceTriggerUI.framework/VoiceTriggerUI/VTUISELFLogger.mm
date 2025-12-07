@interface VTUISELFLogger
+ (id)SISchemaLocaleToSISchemaISOLocale:(int)locale;
+ (int)getSiriSetupUIEnrollmentMode:(int64_t)mode;
+ (void)logSiriSetupPHSEnrollmentTrainingUtteranceAttempted:(id)attempted enrollmentMode:(int64_t)mode locale:(id)locale trainingOutcome:(int)outcome pageNumber:(int)number isRetry:(unsigned __int8)retry audioHintNeeded:(unsigned __int8)needed audioHintSpoken:(unsigned __int8)self0;
+ (void)logSiriSetupPHSEnrollmentUICompleted:(id)completed enrollmentMode:(int64_t)mode locale:(id)locale enrollmentSessionOutcome:(int)outcome pageNumber:(int)number;
+ (void)logSiriSetupPHSEnrollmentUIStarted:(id)started enrollmentMode:(int64_t)mode locale:(id)locale voiceTriggerType:(int)type;
@end

@implementation VTUISELFLogger

+ (void)logSiriSetupPHSEnrollmentUIStarted:(id)started enrollmentMode:(int64_t)mode locale:(id)locale voiceTriggerType:(int)type
{
  v6 = *&type;
  v10 = MEMORY[0x277D5A6D8];
  localeCopy = locale;
  startedCopy = started;
  v19 = objc_alloc_init(v10);
  v13 = [MEMORY[0x277D5ACF0] convertLanguageCodeToSchemaLocale:localeCopy];

  v14 = [self SISchemaLocaleToSISchemaISOLocale:v13];
  [v19 setLocale:v14];
  [v19 setEnrollmentMode:{objc_msgSend(self, "getSiriSetupUIEnrollmentMode:", mode)}];
  [v19 setVoiceTriggerType:v6];
  v15 = objc_alloc_init(MEMORY[0x277D5A6A0]);
  v16 = objc_alloc_init(MEMORY[0x277D5A6A8]);
  v17 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:startedCopy];

  [v16 setSiriSetupId:v17];
  [v15 setEventMetadata:v16];
  [v15 setEnrollmentUIStarted:v19];
  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:v15];
}

+ (void)logSiriSetupPHSEnrollmentTrainingUtteranceAttempted:(id)attempted enrollmentMode:(int64_t)mode locale:(id)locale trainingOutcome:(int)outcome pageNumber:(int)number isRetry:(unsigned __int8)retry audioHintNeeded:(unsigned __int8)needed audioHintSpoken:(unsigned __int8)self0
{
  retryCopy = retry;
  v11 = *&number;
  v12 = *&outcome;
  v16 = MEMORY[0x277D5A6E0];
  localeCopy = locale;
  attemptedCopy = attempted;
  v25 = objc_alloc_init(v16);
  v19 = [MEMORY[0x277D5ACF0] convertLanguageCodeToSchemaLocale:localeCopy];

  v20 = [self SISchemaLocaleToSISchemaISOLocale:v19];
  [v25 setLocale:v20];
  [v25 setEnrollmentMode:{objc_msgSend(self, "getSiriSetupUIEnrollmentMode:", mode)}];
  [v25 setTrainingOutcome:v12];
  [v25 setPageNumber:v11];
  [v25 setIsRetry:retryCopy != 0];
  [v25 setWasAudioHintNeeded:needed != 0];
  [v25 setWasAudioHintSpokenSuccessfully:spoken != 0];
  v21 = objc_alloc_init(MEMORY[0x277D5A6A0]);
  v22 = objc_alloc_init(MEMORY[0x277D5A6A8]);
  v23 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:attemptedCopy];

  [v22 setSiriSetupId:v23];
  [v21 setEventMetadata:v22];
  [v21 setEnrollmentUIUtteranceTrainingAttempted:v25];
  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:v21];
}

+ (void)logSiriSetupPHSEnrollmentUICompleted:(id)completed enrollmentMode:(int64_t)mode locale:(id)locale enrollmentSessionOutcome:(int)outcome pageNumber:(int)number
{
  v7 = *&number;
  v8 = *&outcome;
  v12 = MEMORY[0x277D5A6D0];
  localeCopy = locale;
  completedCopy = completed;
  v21 = objc_alloc_init(v12);
  v15 = [MEMORY[0x277D5ACF0] convertLanguageCodeToSchemaLocale:localeCopy];

  v16 = [self SISchemaLocaleToSISchemaISOLocale:v15];
  [v21 setLocale:v16];
  [v21 setEnrollmentMode:{objc_msgSend(self, "getSiriSetupUIEnrollmentMode:", mode)}];
  [v21 setEnrollmentOutcome:v8];
  [v21 setPageNumber:v7];
  v17 = objc_alloc_init(MEMORY[0x277D5A6A0]);
  v18 = objc_alloc_init(MEMORY[0x277D5A6A8]);
  v19 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:completedCopy];

  [v18 setSiriSetupId:v19];
  [v17 setEventMetadata:v18];
  [v17 setEnrollmentUICompleted:v21];
  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:v17];
}

+ (id)SISchemaLocaleToSISchemaISOLocale:(int)locale
{
  v4 = objc_alloc_init(MEMORY[0x277D5A900]);
  v5 = v4;
  if (locale <= 0x3E)
  {
    v6 = dword_272933E00[locale];
    v7 = dword_272933EFC[locale];
    [v4 setCountryCode:v6];
    [v5 setLanguageCode:v7];
  }

  return v5;
}

+ (int)getSiriSetupUIEnrollmentMode:(int64_t)mode
{
  if (mode < 7)
  {
    return mode + 1;
  }

  else
  {
    return 0;
  }
}

@end