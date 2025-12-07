@interface AFInterstitialProvider
- (AFInterstitialProvider)initWithStyle:(int64_t)style recordRoute:(id)route isVoiceTrigger:(BOOL)trigger isDucking:(BOOL)ducking isTwoShot:(BOOL)shot speechEndHostTime:(unint64_t)time context:(id)context delegate:(id)self0;
- (AFInterstitialProvider)initWithStyle:(int64_t)style recordRoute:(id)route isVoiceTrigger:(BOOL)trigger isDucking:(BOOL)ducking isTwoShot:(BOOL)shot speechEndHostTime:(unint64_t)time context:(id)context preferences:(id)self0 delegate:(id)self1;
- (void)_invalidate;
- (void)_performNextActionWithExpectedDelay:(double)delay;
- (void)dealloc;
- (void)invalidate;
@end

@implementation AFInterstitialProvider

- (void)invalidate
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[AFInterstitialProvider invalidate]";
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AFInterstitialProvider_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_invalidate
{
  configuration = self->_configuration;
  self->_configuration = 0;

  pendingActions = self->_pendingActions;
  self->_pendingActions = 0;

  context = self->_context;
  self->_context = 0;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[AFInterstitialProvider dealloc]";
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = AFInterstitialProvider;
  [(AFInterstitialProvider *)&v4 dealloc];
}

- (void)_performNextActionWithExpectedDelay:(double)delay
{
  v57 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_pendingActions count])
  {
    v5 = [(NSMutableArray *)self->_pendingActions objectAtIndex:0];
    [(NSMutableArray *)self->_pendingActions removeObjectAtIndex:0];
    objc_initWeak(&location, self);
    v6 = [AFOneArgumentSafetyBlock alloc];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __62__AFInterstitialProvider__performNextActionWithExpectedDelay___block_invoke;
    v44[3] = &unk_1E7341B40;
    objc_copyWeak(&v45, &location);
    v37 = [(AFOneArgumentSafetyBlock *)v6 initWithBlock:v44];
    phase = [v5 phase];
    style = [(AFInterstitialConfiguration *)self->_configuration style];
    [v5 duration];
    if (phase)
    {
      languageCode = [(AFInterstitialConfiguration *)self->_configuration languageCode];
      gender = [(AFInterstitialConfiguration *)self->_configuration gender];
      v36 = languageCode;
      v12 = 0;
      v13 = 0;
      if ([languageCode length] && gender)
      {
        if (style == 7)
        {
          v13 = 0;
        }

        else
        {
          displayKey = [v5 displayKey];
          v20 = displayKey;
          if (displayKey)
          {
            v21 = _AFInterstitialGetLocalizationKey(displayKey);
            if (v21)
            {
              v22 = +[AFLocalization sharedInstance];
              v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
              v13 = [v22 localizedStringForKey:v21 gender:gender table:@"Interstitials" bundle:v23 languageCode:languageCode];
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        speakableKey = [v5 speakableKey];
        v25 = speakableKey;
        if (speakableKey)
        {
          v26 = _AFInterstitialGetLocalizationKey(speakableKey);
          if (v26)
          {
            v27 = +[AFLocalization sharedInstance];
            v28 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
            v12 = [v27 localizedStringForKey:v26 gender:gender table:@"Interstitials" bundle:v28 languageCode:v36];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      v29 = AFSiriLogContextConnection;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        if (phase > 4)
        {
          v30 = @"(unknown)";
        }

        else
        {
          v30 = off_1E7345CA8[phase];
        }

        v31 = v30;
        *buf = 136316162;
        v48 = "[AFInterstitialProvider _performNextActionWithExpectedDelay:]";
        v49 = 2112;
        v50 = v31;
        v51 = 2112;
        v52 = v13;
        v53 = 2112;
        v54 = v12;
        v55 = 2048;
        delayCopy = delay;
        _os_log_impl(&dword_1912FE000, v29, OS_LOG_TYPE_INFO, "%s phase = %@, displayText = %@, speakableText = %@, expectedDelay = %f", buf, 0x34u);
      }

      v32 = self->_queue;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      context = self->_context;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __62__AFInterstitialProvider__performNextActionWithExpectedDelay___block_invoke_15;
      v41[3] = &unk_1E7349860;
      v35 = v32;
      v42 = v35;
      v43 = v37;
      [WeakRetained interstitialProvider:self handlePhase:phase displayText:v13 speakableText:v12 expectedDelay:context context:v41 completion:delay];
    }

    else
    {
      v14 = v9;
      if (v9 <= 0.0)
      {
LABEL_32:

        objc_destroyWeak(&v45);
        objc_destroyWeak(&location);

        return;
      }

      v15 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v48 = "[AFInterstitialProvider _performNextActionWithExpectedDelay:]";
        v49 = 2048;
        v50 = *&v14;
        _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s duration = %f", buf, 0x16u);
      }

      [v5 duration];
      v17 = dispatch_time(0, (v16 * 1000000000.0));
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__AFInterstitialProvider__performNextActionWithExpectedDelay___block_invoke_16;
      block[3] = &unk_1E7348498;
      v39 = v37;
      v40 = v14;
      dispatch_after(v17, queue, block);
      v13 = v39;
    }

    goto LABEL_32;
  }
}

void __62__AFInterstitialProvider__performNextActionWithExpectedDelay___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 doubleValue];
  v5 = v4;

  [WeakRetained _performNextActionWithExpectedDelay:v5];
}

void __62__AFInterstitialProvider__performNextActionWithExpectedDelay___block_invoke_15(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AFInterstitialProvider__performNextActionWithExpectedDelay___block_invoke_2;
  block[3] = &unk_1E73497C8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __62__AFInterstitialProvider__performNextActionWithExpectedDelay___block_invoke_16(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  [v1 invokeWithValue:v2];
}

- (AFInterstitialProvider)initWithStyle:(int64_t)style recordRoute:(id)route isVoiceTrigger:(BOOL)trigger isDucking:(BOOL)ducking isTwoShot:(BOOL)shot speechEndHostTime:(unint64_t)time context:(id)context delegate:(id)self0
{
  shotCopy = shot;
  duckingCopy = ducking;
  triggerCopy = trigger;
  delegateCopy = delegate;
  contextCopy = context;
  routeCopy = route;
  v19 = +[AFInstanceContext currentContext];
  v20 = [[AFPreferences alloc] initWithInstanceContext:v19];
  v21 = [(AFInterstitialProvider *)self initWithStyle:style recordRoute:routeCopy isVoiceTrigger:triggerCopy isDucking:duckingCopy isTwoShot:shotCopy speechEndHostTime:time context:contextCopy preferences:v20 delegate:delegateCopy];

  return v21;
}

- (AFInterstitialProvider)initWithStyle:(int64_t)style recordRoute:(id)route isVoiceTrigger:(BOOL)trigger isDucking:(BOOL)ducking isTwoShot:(BOOL)shot speechEndHostTime:(unint64_t)time context:(id)context preferences:(id)self0 delegate:(id)self1
{
  shotCopy = shot;
  duckingCopy = ducking;
  triggerCopy = trigger;
  v66 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  contextCopy = context;
  preferencesCopy = preferences;
  delegateCopy = delegate;
  v45.receiver = self;
  v45.super_class = AFInterstitialProvider;
  v21 = [(AFInterstitialProvider *)&v45 init];
  if (v21)
  {
    v32 = triggerCopy;
    v33 = duckingCopy;
    v22 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v23 = v22;
      if (style > 8)
      {
        v24 = @"(unknown)";
      }

      else
      {
        v24 = off_1E73481B8[style];
      }

      v25 = v24;
      *buf = 136317442;
      v47 = "[AFInterstitialProvider initWithStyle:recordRoute:isVoiceTrigger:isDucking:isTwoShot:speechEndHostTime:context:preferences:delegate:]";
      v48 = 2048;
      v49 = v21;
      v50 = 2112;
      v51 = v25;
      v52 = 2112;
      v53 = routeCopy;
      v54 = 1024;
      v55 = v32;
      v56 = 1024;
      v57 = v33;
      v58 = 1024;
      v59 = shotCopy;
      v60 = 2048;
      timeCopy = time;
      v62 = 2112;
      v63 = contextCopy;
      v64 = 2112;
      v65 = preferencesCopy;
      _os_log_impl(&dword_1912FE000, v23, OS_LOG_TYPE_INFO, "%s %p (style = %@, recordRoute = %@, isVoiceTrigger = %d, isDucking = %d, isTwoShot = %d, speechEndHostTime = %llu, context = %@, preferences = %@)", buf, 0x5Au);
    }

    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_attr_make_with_qos_class(v26, QOS_CLASS_USER_INTERACTIVE, 0);

    v28 = dispatch_queue_create("com.apple.assistant.interstitial-provider.default", v27);
    queue = v21->_queue;
    v21->_queue = v28;

    v30 = v21->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __134__AFInterstitialProvider_initWithStyle_recordRoute_isVoiceTrigger_isDucking_isTwoShot_speechEndHostTime_context_preferences_delegate___block_invoke;
    block[3] = &unk_1E7341B18;
    v35 = preferencesCopy;
    v36 = v21;
    styleCopy = style;
    v42 = v32;
    v43 = v33;
    v44 = shotCopy;
    v37 = routeCopy;
    timeCopy2 = time;
    v38 = contextCopy;
    v39 = delegateCopy;
    dispatch_async(v30, block);
  }

  return v21;
}

void __134__AFInterstitialProvider_initWithStyle_recordRoute_isVoiceTrigger_isDucking_isTwoShot_speechEndHostTime_context_preferences_delegate___block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = [AFPreferences alloc];
    v5 = +[AFInstanceContext currentContext];
    v3 = [(AFPreferences *)v4 initWithInstanceContext:v5];
  }

  v6 = [(AFPreferences *)v3 languageCode];
  if ([v6 length])
  {
    v7 = v6;
  }

  else
  {
    v7 = [(AFPreferences *)v3 bestSupportedLanguageCodeForLanguageCode:0];

    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[AFInterstitialProvider initWithStyle:recordRoute:isVoiceTrigger:isDucking:isTwoShot:speechEndHostTime:context:preferences:delegate:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s No language preference, using best supported language: %@", buf, 0x16u);
    }
  }

  v9 = +[AFPreferences sharedPreferences];
  v10 = [v9 outputVoice];

  v11 = [v10 gender];
  if (!v11)
  {
    v11 = [AFVoiceInfo defaultGenderForOutputVoiceLanguageCode:v7];
  }

  v12 = [AFInterstitialConfiguration alloc];
  LOBYTE(v59) = *(a1 + 90);
  v13 = [(AFInterstitialConfiguration *)v12 initWithStyle:*(a1 + 72) languageCode:v7 gender:v11 recordRoute:*(a1 + 48) isVoiceTrigger:*(a1 + 88) isDucking:*(a1 + 89) isTwoShot:v59 speechEndHostTime:*(a1 + 80)];
  v14 = *(a1 + 40);
  v15 = *(v14 + 16);
  *(v14 + 16) = v13;

  v16 = *(*(a1 + 40) + 16);
  v17 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "_AFInterstitialActionsCreate";
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, "%s configuration = %@", buf, 0x16u);
  }

  CFPreferencesAppSynchronize(@"com.apple.assistant");
  v18 = [v16 style];
  InitialInterstitialDelay = _AFPreferencesGetInitialInterstitialDelay(v18);
  if (InitialInterstitialDelay <= 0.0)
  {
    v20 = 3.5;
  }

  else
  {
    v20 = InitialInterstitialDelay;
  }

  v21 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "_AFInterstitialActionsCreate";
    *&buf[12] = 2048;
    *&buf[14] = v20;
    _os_log_impl(&dword_1912FE000, v21, OS_LOG_TYPE_INFO, "%s initialInterstitialDelay = %f", buf, 0x16u);
    v21 = AFSiriLogContextConnection;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "_AFInterstitialActionsCreate";
    *&buf[12] = 2048;
    *&buf[14] = v20;
    _os_log_impl(&dword_1912FE000, v21, OS_LOG_TYPE_INFO, "%s delayBeforeInitial = %f", buf, 0x16u);
  }

  v22 = [v16 speechEndHostTime];
  if (v22)
  {
    v23 = mach_absolute_time() - v22;
    if (_AFMachAbsoluteTimeRate_onceToken != -1)
    {
      dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
    }

    v24 = *&_AFMachAbsoluteTimeRate_rate * v23 / 1000000000.0;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = 0;
  if (v18 > 4)
  {
    if ((v18 - 5) >= 2)
    {
      if (v18 == 8)
      {
        v63 = v16;
        v64 = v10;
        v65 = v7;
        v66 = v3;
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INITIAL_%u", arc4random_uniform(3u)];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FOLLOW_UP_%u", arc4random_uniform(3u)];
        v28 = 0;
        do
        {
          v56 = v28;
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FOLLOW_UP_%u", arc4random_uniform(3u)];
        }

        while ((objc_msgSend_isEqualToString_(v28) & 1) != 0);
        v57 = 0.0;
        if (+[AFFeatureFlags isNanoSiriUIRefreshEnabled])
        {
          v58 = AFSiriLogContextConnection;
          if (v24 > 0.0)
          {
            v20 = v20 - v24 >= 0.0 ? v20 - v24 : 0.0;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *&buf[4] = "_AFInterstitialActionsCreate";
              *&buf[12] = 2048;
              *&buf[14] = v20;
              _os_log_impl(&dword_1912FE000, v58, OS_LOG_TYPE_INFO, "%s delayBeforeInitial = %f (adjustment based on end-of-speech info)", buf, 0x16u);
              v58 = AFSiriLogContextConnection;
            }
          }

          if (v20 + -0.6 >= 0.0)
          {
            v57 = v20 + -0.6;
          }

          else
          {
            v57 = 0.0;
          }

          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "_AFInterstitialActionsCreate";
            *&buf[12] = 2048;
            *&buf[14] = v57;
            _os_log_impl(&dword_1912FE000, v58, OS_LOG_TYPE_INFO, "%s delayBeforeInitial = %f (adjustment for frontend UI)", buf, 0x16u);
          }
        }

        v62 = [[_AFInterstitialAction alloc] initWithDuration:v57];
        *buf = v62;
        v61 = [[_AFInterstitialAction alloc] initWithPhase:1 displayKey:v26 speakableKey:0];
        *&buf[8] = v61;
        v60 = [[_AFInterstitialAction alloc] initWithDuration:5.4];
        *&buf[16] = v60;
        v30 = [[_AFInterstitialAction alloc] initWithPhase:2 displayKey:v27 speakableKey:0];
        v68 = v30;
        v31 = 7.4;
        v32 = [[_AFInterstitialAction alloc] initWithDuration:7.4];
        v69 = v32;
        v33 = [_AFInterstitialAction alloc];
        v34 = v28;
        v44 = 0;
        goto LABEL_60;
      }

      if (v18 != 7)
      {
        goto LABEL_61;
      }

      goto LABEL_32;
    }

LABEL_45:
    v65 = v7;
    v66 = v3;
    v63 = v16;
    v64 = v10;
    if (v24 > 0.0)
    {
      v20 = v20 - v24 >= 0.0 ? v20 - v24 : 0.0;
      v40 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "_AFInterstitialActionsCreate";
        *&buf[12] = 2048;
        *&buf[14] = v20;
        _os_log_impl(&dword_1912FE000, v40, OS_LOG_TYPE_INFO, "%s delayBeforeInitial = %f (adjustment based on end-of-speech info)", buf, 0x16u);
      }
    }

    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INITIAL_%u", arc4random_uniform(3u)];
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FOLLOW_UP_%u", arc4random_uniform(3u)];
    v28 = 0;
    do
    {
      v41 = v28;
      v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FOLLOW_UP_%u", arc4random_uniform(3u)];
    }

    while ((objc_msgSend_isEqualToString_(v28) & 1) != 0);
    if (v20 + -0.4 >= 0.0)
    {
      v42 = v20 + -0.4;
    }

    else
    {
      v42 = 0.0;
    }

    v43 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "_AFInterstitialActionsCreate";
      *&buf[12] = 2048;
      *&buf[14] = v42;
      _os_log_impl(&dword_1912FE000, v43, OS_LOG_TYPE_INFO, "%s delayBeforeInitial = %f (adjustment for frontend UI)", buf, 0x16u);
    }

    v62 = [[_AFInterstitialAction alloc] initWithDuration:v42];
    *buf = v62;
    v61 = [[_AFInterstitialAction alloc] initWithPhase:1 displayKey:v26 speakableKey:v26];
    *&buf[8] = v61;
    v60 = [[_AFInterstitialAction alloc] initWithDuration:5.6];
    *&buf[16] = v60;
    v30 = [[_AFInterstitialAction alloc] initWithPhase:2 displayKey:v27 speakableKey:v27];
    v68 = v30;
    v31 = 7.6;
    v32 = [[_AFInterstitialAction alloc] initWithDuration:7.6];
    v69 = v32;
    v33 = [_AFInterstitialAction alloc];
    v34 = v28;
    goto LABEL_59;
  }

  if ((v18 - 1) < 2)
  {
    goto LABEL_45;
  }

  if (v18 == 3)
  {
    v35 = [v16 isVoiceTrigger];
    v36 = [v16 isDucking];
    v37 = [v16 isTwoShot];
    if (v35 && (v36 & 1) == 0 && (v37 & 1) == 0)
    {
      InitialInterstitialDelayForVoiceTriggerOneShotWithoutAudioDucking = _AFPreferencesGetInitialInterstitialDelayForVoiceTriggerOneShotWithoutAudioDucking();
      if (InitialInterstitialDelayForVoiceTriggerOneShotWithoutAudioDucking <= 0.0)
      {
        v20 = 1.75;
      }

      else
      {
        v20 = InitialInterstitialDelayForVoiceTriggerOneShotWithoutAudioDucking;
      }

      v39 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "_AFInterstitialActionsCreate";
        *&buf[12] = 2048;
        *&buf[14] = v20;
        _os_log_impl(&dword_1912FE000, v39, OS_LOG_TYPE_INFO, "%s initialInterstitialDelayForVoiceTriggerOneShotWithoutAudioDucking = %f", buf, 0x16u);
        v39 = AFSiriLogContextConnection;
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "_AFInterstitialActionsCreate";
        *&buf[12] = 2048;
        *&buf[14] = v20;
        _os_log_impl(&dword_1912FE000, v39, OS_LOG_TYPE_INFO, "%s delayBeforeInitial = %f (adjustment based on speech request info for Hearst)", buf, 0x16u);
      }
    }

    goto LABEL_45;
  }

  if (v18 == 4)
  {
LABEL_32:
    v63 = v16;
    v64 = v10;
    v65 = v7;
    v66 = v3;
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INITIAL_%u", arc4random_uniform(3u)];
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FOLLOW_UP_%u", arc4random_uniform(3u)];
    v28 = 0;
    do
    {
      v29 = v28;
      v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FOLLOW_UP_%u", arc4random_uniform(3u)];
    }

    while ((objc_msgSend_isEqualToString_(v28) & 1) != 0);
    v62 = [[_AFInterstitialAction alloc] initWithDuration:v20];
    *buf = v62;
    v61 = [[_AFInterstitialAction alloc] initWithPhase:1 displayKey:0 speakableKey:v26];
    *&buf[8] = v61;
    v60 = [[_AFInterstitialAction alloc] initWithDuration:6.0];
    *&buf[16] = v60;
    v30 = [[_AFInterstitialAction alloc] initWithPhase:2 displayKey:0 speakableKey:v27];
    v68 = v30;
    v31 = 8.0;
    v32 = [[_AFInterstitialAction alloc] initWithDuration:8.0];
    v69 = v32;
    v33 = [_AFInterstitialAction alloc];
    v34 = 0;
LABEL_59:
    v44 = v28;
LABEL_60:
    v45 = [(_AFInterstitialAction *)v33 initWithPhase:3 displayKey:v34 speakableKey:v44];
    v70 = v45;
    v46 = v26;
    v47 = [[_AFInterstitialAction alloc] initWithDuration:v31];
    v71 = v47;
    v48 = [[_AFInterstitialAction alloc] initWithPhase:4 displayKey:0 speakableKey:0];
    v72 = v48;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:8];

    v7 = v65;
    v3 = v66;
    v16 = v63;
    v10 = v64;
  }

LABEL_61:

  v49 = [v25 mutableCopy];
  v50 = *(a1 + 40);
  v51 = *(v50 + 24);
  *(v50 + 24) = v49;

  objc_storeStrong((*(a1 + 40) + 32), *(a1 + 56));
  objc_storeWeak((*(a1 + 40) + 40), *(a1 + 64));
  v52 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v53 = *(a1 + 40);
    v54 = *(v53 + 16);
    v55 = *(v53 + 32);
    *buf = 136315650;
    *&buf[4] = "[AFInterstitialProvider initWithStyle:recordRoute:isVoiceTrigger:isDucking:isTwoShot:speechEndHostTime:context:preferences:delegate:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v54;
    *&buf[22] = 2112;
    v68 = v55;
    _os_log_impl(&dword_1912FE000, v52, OS_LOG_TYPE_INFO, "%s configuration = %@, context = %@", buf, 0x20u);
  }

  [*(a1 + 40) _performNextActionWithExpectedDelay:0.0];
}

@end