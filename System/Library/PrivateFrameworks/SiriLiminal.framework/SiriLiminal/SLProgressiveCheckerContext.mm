@interface SLProgressiveCheckerContext
- (SLProgressiveCheckerContext)initWithContext:(id)context error:(id *)error;
@end

@implementation SLProgressiveCheckerContext

- (SLProgressiveCheckerContext)initWithContext:(id)context error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v28.receiver = self;
  v28.super_class = SLProgressiveCheckerContext;
  v7 = [(SLProgressiveCheckerContext *)&v28 init];
  if (!v7)
  {
LABEL_18:
    v18 = v7;
    goto LABEL_19;
  }

  if (SLLogInitIfNeeded_once != -1)
  {
    dispatch_once(&SLLogInitIfNeeded_once, &__block_literal_global);
  }

  v8 = [contextCopy objectForKeyedSubscript:@"SLInvocationType"];
  if (v8)
  {
    v9 = v8;
    v10 = [contextCopy objectForKeyedSubscript:@"SLAudioSourceOption"];
    if (v10)
    {
      v11 = v10;
      v12 = [contextCopy objectForKeyedSubscript:@"SLLanguageCode"];

      if (v12)
      {
LABEL_14:
        v19 = [contextCopy objectForKeyedSubscript:@"SLAudioSourceOption"];
        v7->_audioOption = [v19 unsignedIntegerValue];

        v20 = [contextCopy objectForKeyedSubscript:@"SLInvocationType"];
        v7->_invocationType = [v20 unsignedIntegerValue];

        v21 = [contextCopy objectForKeyedSubscript:@"SLLanguageCode"];
        locale = v7->_locale;
        v7->_locale = v21;

        v23 = [contextCopy objectForKeyedSubscript:@"SLVoiceTriggerEventInfo"];
        v24 = v23;
        if (v23)
        {
          v23 = [contextCopy objectForKeyedSubscript:@"SLVoiceTriggerEventInfo"];
        }

        vtei = v7->_vtei;
        v7->_vtei = v23;

        v26 = SLLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v30 = "[SLProgressiveCheckerContext initWithContext:error:]";
          v31 = 2114;
          v32 = v7;
          _os_log_impl(&dword_26754E000, v26, OS_LOG_TYPE_INFO, "%s Created SLAcousticContext: %{public}@", buf, 0x16u);
        }

        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing keys in context"];
  v14 = v13;
  if (!error)
  {

    goto LABEL_14;
  }

  v15 = MEMORY[0x277CCA9B8];
  v33 = @"reason";
  v34[0] = v13;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  *error = [v15 errorWithDomain:@"com.apple.sl" code:102 userInfo:v16];

  v17 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v30 = "[SLProgressiveCheckerContext initWithContext:error:]";
    v31 = 2114;
    v32 = v14;
    _os_log_error_impl(&dword_26754E000, v17, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
  }

  v18 = 0;
LABEL_19:

  return v18;
}

@end