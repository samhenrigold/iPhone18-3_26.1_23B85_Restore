@interface CSVTRePromptSELFLogger
+ (id)sharedLogger;
+ (void)initialize;
- (void)logRePromptFinishedWithSiriSpeechID:(id)d withRePromptDate:(id)date withIsRePrompted:(BOOL)prompted withLocale:(id)locale;
@end

@implementation CSVTRePromptSELFLogger

- (void)logRePromptFinishedWithSiriSpeechID:(id)d withRePromptDate:(id)date withIsRePrompted:(BOOL)prompted withLocale:(id)locale
{
  promptedCopy = prompted;
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  localeCopy = locale;
  v12 = SSRLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SSRLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v20 = "[CSVTRePromptSELFLogger logRePromptFinishedWithSiriSpeechID:withRePromptDate:withIsRePrompted:withLocale:]";
    v13 = @"NO";
    v19 = 136316162;
    if (promptedCopy)
    {
      v13 = @"YES";
    }

    v21 = 2112;
    v22 = dCopy;
    v23 = 2112;
    v24 = dateCopy;
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = localeCopy;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s RePrompt SELF Log for siri speech ID %@, repromptDate %@, isRePrompted %@, locale %@", &v19, 0x34u);
  }

  v14 = objc_alloc_init(MEMORY[0x1E69CEF48]);
  [v14 setSiriSpeechID:dCopy];
  [v14 setIsRePrompted:promptedCopy];
  [v14 setLastWhenRePrompted:dateCopy];
  v15 = objc_alloc_init(MEMORY[0x1E69CEEF8]);
  [v15 setVoiceTriggerRePrompted:v14];
  mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x1E69CE1F0] defaultMessageStream];
  v18 = +[CSVTRePromptSELFLogger voiceTriggerRePromptIsolatedStreamID];
  [defaultMessageStream emitMessage:v15 isolatedStreamUUID:v18];
}

+ (id)sharedLogger
{
  if (sharedLogger_onceToken_6638 != -1)
  {
    dispatch_once(&sharedLogger_onceToken_6638, &__block_literal_global_6639);
  }

  v3 = sharedLogger_shared;

  return v3;
}

uint64_t __38__CSVTRePromptSELFLogger_sharedLogger__block_invoke()
{
  v0 = objc_alloc_init(CSVTRePromptSELFLogger);
  v1 = sharedLogger_shared;
  sharedLogger_shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v3 = _voiceTriggerRePromptIsolatedStreamID;
    _voiceTriggerRePromptIsolatedStreamID = uUID;

    MEMORY[0x1EEE66BB8](uUID, v3);
  }
}

@end