@interface AFMyriadGoodnessScoreEvaluator
- (AFMyriadGoodnessScoreEvaluator)initWithDeviceInstanceContext:(id)context preferences:(id)preferences queue:(id)queue instrumentation:(id)instrumentation;
- (id)_createSettingsConnectionIfRequired;
- (id)_readSidekickBoostsFile:(id)file;
- (unsigned)_bumpGoodnessScore:(id)score lastActivationTime:(double)time mediaPlaybackInterruptedTime:(double)interruptedTime ignoreAdjustedBoost:(BOOL)boost recentlyWonBySmallAmount:(BOOL)amount;
- (unsigned)_getRecentBump:(double)bump ignoreAdjustedBoost:(BOOL)boost recentlyWonBySmallAmount:(BOOL)amount;
- (unsigned)getMyriadAdjustedBoostForGoodnessScoreContext:(id)context;
- (unsigned)getPlatformBias;
- (void)_fetchDevicePlatformBiasIfRequired;
- (void)_reloadTrialConfiguredBoostValues;
- (void)_settingsConnectionDidDisconnect;
- (void)_updateMediaPlaybackBoost:(unsigned __int8)boost;
- (void)_updatePlatformBias:(unsigned __int8)bias;
- (void)_updateRecentSiriBoostTrialEnabled:(BOOL)enabled;
- (void)_updateRecentSiriExponentialBoostDefined:(BOOL)defined withSecondDegree:(double)degree andFirstDegree:(double)firstDegree andIntercept:(double)intercept;
- (void)_updateSidekickBoosts:(id)boosts;
- (void)dealloc;
- (void)myriadTrialBoostsUpdated:(id)updated;
- (void)preheat;
@end

@implementation AFMyriadGoodnessScoreEvaluator

- (void)_settingsConnectionDidDisconnect
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__AFMyriadGoodnessScoreEvaluator__settingsConnectionDidDisconnect__block_invoke;
  v4[3] = &unk_1E7348A80;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__AFMyriadGoodnessScoreEvaluator__settingsConnectionDidDisconnect__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v3 = WeakRetained[7];
      v5 = 136315394;
      v6 = "[AFMyriadGoodnessScoreEvaluator _settingsConnectionDidDisconnect]_block_invoke";
      v7 = 2048;
      v8 = v3;
      _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s #myriad platform bias acquisition state: %ld", &v5, 0x16u);
    }

    if (WeakRetained[7] == 1)
    {
      WeakRetained[7] = 0;
      v4 = WeakRetained[9];
      WeakRetained[9] = 0;
    }
  }
}

- (unsigned)getMyriadAdjustedBoostForGoodnessScoreContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "[AFMyriadGoodnessScoreEvaluator getMyriadAdjustedBoostForGoodnessScoreContext:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s #myriad", &v16, 0xCu);
  }

  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  myriadShouldIgnoreAdjustedBoost = [(AFPreferences *)self->_pref myriadShouldIgnoreAdjustedBoost];
  ignoreMyriadPlatformBias = [(AFPreferences *)self->_pref ignoreMyriadPlatformBias];
  v8 = ignoreMyriadPlatformBias;
  if (myriadShouldIgnoreAdjustedBoost && ignoreMyriadPlatformBias)
  {
    getPlatformBias = 0;
  }

  else if (myriadShouldIgnoreAdjustedBoost)
  {
    getPlatformBias = [(AFMyriadGoodnessScoreEvaluator *)self getPlatformBias];
  }

  else
  {
    reasons = [contextCopy reasons];
    lastActivationTime = self->_lastActivationTime;
    [contextCopy mediaPlaybackInterruptedTime];
    getPlatformBias = -[AFMyriadGoodnessScoreEvaluator _bumpGoodnessScore:lastActivationTime:mediaPlaybackInterruptedTime:ignoreAdjustedBoost:recentlyWonBySmallAmount:](self, "_bumpGoodnessScore:lastActivationTime:mediaPlaybackInterruptedTime:ignoreAdjustedBoost:recentlyWonBySmallAmount:", reasons, 0, [contextCopy recentlyWonBySmallAmount], lastActivationTime, v12);

    if (!v8)
    {
      v13 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v16 = 136315394;
        v17 = "[AFMyriadGoodnessScoreEvaluator getMyriadAdjustedBoostForGoodnessScoreContext:]";
        v18 = 2048;
        v19 = 0;
        _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s #myriad payload adjusted score: %ld", &v16, 0x16u);
      }

      getPlatformBias += [(AFMyriadGoodnessScoreEvaluator *)self getPlatformBias];
    }
  }

  v14 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[AFMyriadGoodnessScoreEvaluator getMyriadAdjustedBoostForGoodnessScoreContext:]";
    v18 = 2048;
    v19 = getPlatformBias;
    _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s #myriad adjusted score: %ld", &v16, 0x16u);
  }

  if (getPlatformBias >= 0xFF)
  {
    LOBYTE(getPlatformBias) = -1;
  }

  os_unfair_lock_unlock(&self->_scoreEvaluationLock);

  return getPlatformBias;
}

- (void)preheat
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AFMyriadGoodnessScoreEvaluator_preheat__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_reloadTrialConfiguredBoostValues
{
  v16[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (+[AFFeatureFlags isSCDATrialEnabled])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__30710;
    v13 = __Block_byref_object_dispose__30711;
    v14 = [[AFSettingsConnection alloc] initWithInstanceContext:self->_deviceInstanceContext];
    [v10[5] setXPCConnectionManagementQueue:self->_queue];
    objc_initWeak(&location, self);
    v3 = v10[5];
    v16[0] = @"RECENT_SIRI_BOOST_TRIAL_ENABLE";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v15[0] = @"RECENT_PLAYBACK_BOOST";
    v15[1] = @"HOMEPOD_BOOST";
    v15[2] = @"RECENT_SIRI_BOOST_SECOND_DEGREE_COEFF";
    v15[3] = @"RECENT_SIRI_BOOST_FIRST_DEGREE_COEFF";
    v15[4] = @"RECENT_SIRI_BOOST_INTERCEPT";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:5];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__AFMyriadGoodnessScoreEvaluator__reloadTrialConfiguredBoostValues__block_invoke;
    v6[3] = &unk_1E7346610;
    objc_copyWeak(&v7, &location);
    v6[4] = &v9;
    [v3 getTrialEnables:v4 doubleFactors:v5 withCompletion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v9, 8);
  }
}

void __67__AFMyriadGoodnessScoreEvaluator__reloadTrialConfiguredBoostValues__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v41 = "[AFMyriadGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
        v42 = 2112;
        v43 = v9;
        _os_log_debug_impl(&dword_1912FE000, v11, OS_LOG_TYPE_DEBUG, "%s #myriad Error loading Trial factors: %@", buf, 0x16u);
      }
    }

    else
    {
      v12 = [v7 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_TRIAL_ENABLE"];
      v13 = [v12 BOOLValue];
      v39 = v12;
      if (v12)
      {
        [WeakRetained _updateRecentSiriBoostTrialEnabled:v13];
      }

      else
      {
        v14 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v41 = "[AFMyriadGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          _os_log_debug_impl(&dword_1912FE000, v14, OS_LOG_TYPE_DEBUG, "%s #myriad Recent Siri Boost Trial Enable Not Loaded", buf, 0xCu);
        }
      }

      v15 = [v8 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_SECOND_DEGREE_COEFF"];
      v16 = [v8 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_FIRST_DEGREE_COEFF"];
      v17 = [v8 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_INTERCEPT"];
      v18 = v17;
      if (v15)
      {
        v19 = v13;
      }

      else
      {
        v19 = 0;
      }

      if (v19 == 1 && v16 && v17)
      {
        [v15 doubleValue];
        v21 = v20;
        [v16 doubleValue];
        v23 = v22;
        [v18 doubleValue];
        v25 = v24;
        v26 = WeakRetained;
        v27 = 1;
        v28 = v21;
        v29 = v23;
      }

      else
      {
        v30 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v41 = "[AFMyriadGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          v42 = 2112;
          v43 = v15;
          v44 = 2112;
          v45 = v16;
          v46 = 2112;
          v47 = v18;
          _os_log_debug_impl(&dword_1912FE000, v30, OS_LOG_TYPE_DEBUG, "%s #myriad Recent Siri exponential factors not loaded: %@ %@ %@", buf, 0x2Au);
        }

        v28 = 0.0;
        v29 = 0.0;
        v25 = 0.0;
        v26 = WeakRetained;
        v27 = 0;
      }

      [v26 _updateRecentSiriExponentialBoostDefined:v27 withSecondDegree:v28 andFirstDegree:v29 andIntercept:v25];
      v31 = [v8 objectForKeyedSubscript:@"RECENT_PLAYBACK_BOOST"];
      v32 = [v31 unsignedIntValue];
      if (v31 && v32 <= 0xFF)
      {
        [WeakRetained _updateMediaPlaybackBoost:v32];
      }

      else
      {
        v33 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v41 = "[AFMyriadGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          v42 = 2112;
          v43 = v31;
          _os_log_debug_impl(&dword_1912FE000, v33, OS_LOG_TYPE_DEBUG, "%s #myriad Trial Playback Boost not loaded: %@", buf, 0x16u);
        }
      }

      if (AFIsHorseman_onceToken != -1)
      {
        dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
      }

      if (AFIsHorseman_isHorseman == 1)
      {
        v34 = [v8 objectForKeyedSubscript:@"HOMEPOD_BOOST"];
        v35 = [v34 unsignedIntValue];
        if (v34 && v35 <= 0xFF)
        {
          [WeakRetained _updatePlatformBias:v35];
        }

        else
        {
          log = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v41 = "[AFMyriadGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
            v42 = 2112;
            v43 = v34;
            _os_log_debug_impl(&dword_1912FE000, log, OS_LOG_TYPE_DEBUG, "%s #myriad Trial HomePod Boost not loaded: %@", buf, 0x16u);
          }
        }
      }

      v36 = *(*(a1 + 32) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = 0;
    }
  }
}

- (id)_readSidekickBoostsFile:(id)file
{
  v25 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if (fileCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if (([defaultManager fileExistsAtPath:fileCopy] & 1) == 0)
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[AFMyriadGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v21 = 2112;
        v22 = fileCopy;
        _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s Unable to find sidekick boosts plist at path %@.", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_23;
    }

    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:fileCopy];
    if (!v5)
    {
      v12 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[AFMyriadGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v21 = 2112;
        v22 = fileCopy;
        _os_log_error_impl(&dword_1912FE000, v12, OS_LOG_TYPE_ERROR, "%s Unable to read sidekick boosts plist file at path %@.", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_22;
    }

    v18 = 0;
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v18];
    v7 = v18;
    if (v7)
    {
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v20 = "[AFMyriadGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v21 = 2112;
        v22 = fileCopy;
        v23 = 2112;
        v24 = v7;
        _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s Unable to initialize sidekick boosts from plist file at path %@ due to error %@", buf, 0x20u);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v6;
LABEL_21:

LABEL_22:
LABEL_23:

        goto LABEL_24;
      }

      v13 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v15 = v13;
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 136315394;
        v20 = "[AFMyriadGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v21 = 2112;
        v22 = v17;
        _os_log_error_impl(&dword_1912FE000, v15, OS_LOG_TYPE_ERROR, "%s Unexpected type of initialized sidekick boosts plist %@.", buf, 0x16u);
      }
    }

    v10 = 0;
    goto LABEL_21;
  }

  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v20 = "[AFMyriadGoodnessScoreEvaluator _readSidekickBoostsFile:]";
    _os_log_error_impl(&dword_1912FE000, v9, OS_LOG_TYPE_ERROR, "%s _readSidekickBoostsFile: called with empty filepath", buf, 0xCu);
  }

  v10 = 0;
LABEL_24:

  return v10;
}

- (void)_fetchDevicePlatformBiasIfRequired
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_platformBiasAcquisitionState != 2)
  {
    if (AFIsHorseman_onceToken != -1)
    {
      dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
    }

    if (AFIsHorseman_isHorseman == 1)
    {
      [(AFMyriadGoodnessScoreEvaluator *)self _updatePlatformBias:12];
    }

    self->_platformBiasAcquisitionState = 2;
  }
}

- (id)_createSettingsConnectionIfRequired
{
  dispatch_assert_queue_V2(self->_queue);
  settingsConnection = self->_settingsConnection;
  if (!settingsConnection)
  {
    v4 = [[AFSettingsConnection alloc] initWithInstanceContext:self->_deviceInstanceContext];
    v5 = self->_settingsConnection;
    self->_settingsConnection = v4;

    [(AFSettingsConnection *)self->_settingsConnection setXPCConnectionManagementQueue:self->_queue];
    [(AFSettingsConnection *)self->_settingsConnection _setDelegate:self];
    settingsConnection = self->_settingsConnection;
  }

  v6 = settingsConnection;

  return v6;
}

- (void)_updateSidekickBoosts:(id)boosts
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[AFMyriadGoodnessScoreEvaluator _updateSidekickBoosts:]";
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s #myriad Error updating sidekick boosts: unsupported platform", &v4, 0xCu);
  }
}

- (void)_updateRecentSiriExponentialBoostDefined:(BOOL)defined withSecondDegree:(double)degree andFirstDegree:(double)firstDegree andIntercept:(double)intercept
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_isExponentialBoostDefined = defined;
  self->_recentSiriSecondDegreeCoefficient = degree;
  self->_recentSiriFirstDegreeCoefficient = firstDegree;
  self->_recentSiriIntercept = intercept;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    isExponentialBoostDefined = self->_isExponentialBoostDefined;
    recentSiriSecondDegreeCoefficient = self->_recentSiriSecondDegreeCoefficient;
    recentSiriFirstDegreeCoefficient = self->_recentSiriFirstDegreeCoefficient;
    recentSiriIntercept = self->_recentSiriIntercept;
    v16 = 136316162;
    v17 = "[AFMyriadGoodnessScoreEvaluator _updateRecentSiriExponentialBoostDefined:withSecondDegree:andFirstDegree:andIntercept:]";
    v18 = 1024;
    v19 = isExponentialBoostDefined;
    v20 = 2048;
    v21 = recentSiriSecondDegreeCoefficient;
    v22 = 2048;
    v23 = recentSiriFirstDegreeCoefficient;
    v24 = 2048;
    v25 = recentSiriIntercept;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s #myriad updated Trial recent Siri exponential boost to %du %.12f %.12f %.12f", &v16, 0x30u);
  }
}

- (void)_updateRecentSiriBoostTrialEnabled:(BOOL)enabled
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_isRecentSiriBoostTrialEnabled = enabled;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (self->_isRecentSiriBoostTrialEnabled)
    {
      v6 = @"YES";
    }

    v7 = 136315394;
    v8 = "[AFMyriadGoodnessScoreEvaluator _updateRecentSiriBoostTrialEnabled:]";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s #myriad updated _isRecentSiriBoostTrialEnabled to %@", &v7, 0x16u);
  }
}

- (void)_updateMediaPlaybackBoost:(unsigned __int8)boost
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_mediaPlaybackBoost = boost;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    mediaPlaybackBoost = self->_mediaPlaybackBoost;
    v7 = 136315394;
    v8 = "[AFMyriadGoodnessScoreEvaluator _updateMediaPlaybackBoost:]";
    v9 = 1024;
    v10 = mediaPlaybackBoost;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s #myriad updated _mediaPlaybackBoost to %d", &v7, 0x12u);
  }
}

- (void)_updatePlatformBias:(unsigned __int8)bias
{
  biasCopy = bias;
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_myriadPlatformBias = biasCopy;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[AFMyriadGoodnessScoreEvaluator _updatePlatformBias:]";
    v8 = 1024;
    v9 = biasCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s #myriad updated platform bias to %d", &v6, 0x12u);
  }
}

- (unsigned)_bumpGoodnessScore:(id)score lastActivationTime:(double)time mediaPlaybackInterruptedTime:(double)interruptedTime ignoreAdjustedBoost:(BOOL)boost recentlyWonBySmallAmount:(BOOL)amount
{
  amountCopy = amount;
  boostCopy = boost;
  v31 = *MEMORY[0x1E69E9840];
  scoreCopy = score;
  v13 = scoreCopy;
  if (!scoreCopy || ([scoreCopy containsObject:&unk_1F056E478] & 1) != 0)
  {
LABEL_3:
    LOBYTE(mediaPlaybackBoost) = 0;
    goto LABEL_4;
  }

  if ([v13 containsObject:&unk_1F056E490])
  {
    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v29 = 136315138;
      *&v29[4] = "[AFMyriadGoodnessScoreEvaluator _bumpGoodnessScore:lastActivationTime:mediaPlaybackInterruptedTime:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
      _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, "%s #myriad alarm/timer bumping is no longer allowed", v29, 0xCu);
    }
  }

  if ([v13 containsObject:&unk_1F056E4A8])
  {
    if (AFIsHorseman_onceToken != -1)
    {
      dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
    }

    if (AFIsHorseman_isHorseman != 1)
    {
      goto LABEL_3;
    }

    p_mediaPlaybackBoost = &self->_mediaPlaybackBoost;
    mediaPlaybackBoost = self->_mediaPlaybackBoost;
    v19 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    *v29 = 136315394;
    *&v29[4] = "[AFMyriadGoodnessScoreEvaluator _bumpGoodnessScore:lastActivationTime:mediaPlaybackInterruptedTime:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
    *&v29[12] = 1024;
    *&v29[14] = mediaPlaybackBoost;
    v20 = "%s #myriad bumping goodness score (reason: media playback active, adjusted score: %d)";
    v21 = v19;
    v22 = 18;
    goto LABEL_14;
  }

  if (![v13 containsObject:&unk_1F056E4C0])
  {
    goto LABEL_3;
  }

  if (AFIsHorseman_onceToken != -1)
  {
    dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
  }

  if (AFIsHorseman_isHorseman != 1)
  {
    goto LABEL_3;
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  v26 = v25;

  LOBYTE(mediaPlaybackBoost) = 0;
  if (v26 > interruptedTime)
  {
    v27 = v26 - interruptedTime;
    if (v27 <= 60.0)
    {
      p_mediaPlaybackBoost = &self->_mediaPlaybackBoost;
      mediaPlaybackBoost = self->_mediaPlaybackBoost;
      v28 = AFSiriLogContextConnection;
      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      *v29 = 136315650;
      *&v29[4] = "[AFMyriadGoodnessScoreEvaluator _bumpGoodnessScore:lastActivationTime:mediaPlaybackInterruptedTime:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
      *&v29[12] = 2048;
      *&v29[14] = v27;
      *&v29[22] = 1024;
      LODWORD(v30) = mediaPlaybackBoost;
      v20 = "%s #myriad bumping goodness score (reason: media playback interrupted, last playback time: %f seconds ago, adjusted score: %d)";
      v21 = v28;
      v22 = 28;
LABEL_14:
      _os_log_impl(&dword_1912FE000, v21, OS_LOG_TYPE_INFO, v20, v29, v22);
LABEL_15:
      if ([AFFeatureFlags isMyriadSelfMetricsEnabled:*v29])
      {
        myriadInstrumentation = self->_myriadInstrumentation;
        if (myriadInstrumentation)
        {
          [(AFMyriadInstrumentation *)myriadInstrumentation updateBoost:6 value:*p_mediaPlaybackBoost];
        }
      }
    }
  }

LABEL_4:
  v15 = [(AFMyriadGoodnessScoreEvaluator *)self _getRecentBump:boostCopy ignoreAdjustedBoost:amountCopy recentlyWonBySmallAmount:time];

  return v15 + mediaPlaybackBoost;
}

- (unsigned)getPlatformBias
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    myriadPlatformBias = self->_myriadPlatformBias;
    v7 = 136315394;
    v8 = "[AFMyriadGoodnessScoreEvaluator getPlatformBias]";
    v9 = 1024;
    v10 = myriadPlatformBias;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s #myriad bumping goodness score (reason: platform bias, adjusted bias: %d)", &v7, 0x12u);
  }

  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    myriadInstrumentation = self->_myriadInstrumentation;
    if (myriadInstrumentation)
    {
      [(AFMyriadInstrumentation *)myriadInstrumentation updateBoost:1 value:self->_myriadPlatformBias];
    }
  }

  return self->_myriadPlatformBias;
}

- (unsigned)_getRecentBump:(double)bump ignoreAdjustedBoost:(BOOL)boost recentlyWonBySmallAmount:(BOOL)amount
{
  v35 = *MEMORY[0x1E69E9840];
  if (boost)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v29 = 136315138;
      v30 = "[AFMyriadGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s #myriad ignoring recent event bump", &v29, 0xCu);
    }

    LOBYTE(v6) = 0;
  }

  else
  {
    amountCopy = amount;
    if (softLinkMKBGetDeviceLockState(0, a2) == 3 || (v10 = 0.0, !(softLinkMKBGetDeviceLockState)(0)))
    {
      v11 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v29 = 136315138;
        v30 = "[AFMyriadGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
        _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s #myriad device is unlocked, compute bump", &v29, 0xCu);
      }

      v10 = 4.0;
      if (AFCDAFaceDetection())
      {
        if (AFAccessibilitySupportsAttentionAwareFeatures())
        {
          v12 = AFSiriLogContextConnection;
          v10 = 0.0;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
          {
            v29 = 136315138;
            v30 = "[AFMyriadGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
            _os_log_debug_impl(&dword_1912FE000, v12, OS_LOG_TYPE_DEBUG, "%s #myriad unlock bump is ignored due to awareness being on", &v29, 0xCu);
          }
        }
      }
    }

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    v15 = v14;

    v16 = v15 - bump;
    v17 = v15 - bump + -15.0;
    if (v17 < 0.0)
    {
      v17 = 0.0;
    }

    v18 = v17 * -0.0444444455 + 8.0;
    if (v18 >= 0.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0.0;
    }

    if (self->_isRecentSiriBoostTrialEnabled && self->_isExponentialBoostDefined)
    {
      v20 = AFMyriadGoodnessComputeExponentialBoost(bump, v15, self->_recentSiriSecondDegreeCoefficient, self->_recentSiriFirstDegreeCoefficient, self->_recentSiriIntercept);
      v21 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v29 = 136315650;
        v30 = "[AFMyriadGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
        v31 = 2048;
        v32 = v19;
        v33 = 1024;
        *v34 = v20;
        _os_log_impl(&dword_1912FE000, v21, OS_LOG_TYPE_INFO, "%s #myriad trial exponential boost configured, replacing %f with %du", &v29, 0x1Cu);
      }

      v19 = v20;
    }

    v22 = AFSiriLogContextConnection;
    if (amountCopy && v19 > v10)
    {
      v23 = 0.0;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v29 = 136316162;
        v30 = "[AFMyriadGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
        v31 = 2048;
        v32 = v16;
        v33 = 2048;
        *v34 = v10;
        *&v34[8] = 2048;
        *&v34[10] = v10;
        *&v34[18] = 2048;
        *&v34[20] = v19;
        _os_log_impl(&dword_1912FE000, v22, OS_LOG_TYPE_INFO, "%s #myriad previous close win: canceling recency bump from secsAgo=%f yields %f = %f(act) + %f(siri)", &v29, 0x34u);
        v22 = AFSiriLogContextConnection;
      }
    }

    else
    {
      v23 = v19;
    }

    if (v10 >= v23)
    {
      v24 = v10;
    }

    else
    {
      v24 = v23;
    }

    v6 = v24;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v29 = 136316162;
      v30 = "[AFMyriadGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
      v31 = 2048;
      v32 = v16;
      v33 = 1024;
      *v34 = v6;
      *&v34[4] = 2048;
      *&v34[6] = v10;
      *&v34[14] = 2048;
      *&v34[16] = v23;
      _os_log_impl(&dword_1912FE000, v22, OS_LOG_TYPE_INFO, "%s #myriad bumptoGoodness secsAgo=%f yields %d = %f(act) + %f(siri)", &v29, 0x30u);
    }

    if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      myriadInstrumentation = self->_myriadInstrumentation;
      if (myriadInstrumentation)
      {
        if (v6)
        {
          if (v10 <= v23)
          {
            v26 = v23;
            v27 = 4;
          }

          else
          {
            v26 = v10;
            v27 = 2;
          }

          [(AFMyriadInstrumentation *)myriadInstrumentation updateBoost:v27 value:v26];
        }
      }
    }
  }

  return v6;
}

- (void)myriadTrialBoostsUpdated:(id)updated
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AFMyriadGoodnessScoreEvaluator_myriadTrialBoostsUpdated___block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __59__AFMyriadGoodnessScoreEvaluator_myriadTrialBoostsUpdated___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AFMyriadGoodnessScoreEvaluator myriadTrialBoostsUpdated:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s Trial Boosts Updated Notification", &v4, 0xCu);
  }

  return [*(a1 + 32) _reloadTrialConfiguredBoostValues];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AFMyriadGoodnessScoreEvaluator;
  [(AFMyriadGoodnessScoreEvaluator *)&v4 dealloc];
}

- (AFMyriadGoodnessScoreEvaluator)initWithDeviceInstanceContext:(id)context preferences:(id)preferences queue:(id)queue instrumentation:(id)instrumentation
{
  contextCopy = context;
  preferencesCopy = preferences;
  queueCopy = queue;
  instrumentationCopy = instrumentation;
  v26.receiver = self;
  v26.super_class = AFMyriadGoodnessScoreEvaluator;
  v15 = [(AFMyriadGoodnessScoreEvaluator *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deviceInstanceContext, context);
    if (preferencesCopy)
    {
      v17 = preferencesCopy;
    }

    else
    {
      v17 = [[AFPreferences alloc] initWithInstanceContext:v16->_deviceInstanceContext];
    }

    pref = v16->_pref;
    v16->_pref = v17;

    v16->_platformBiasAcquisitionState = 0;
    objc_storeStrong(&v16->_queue, queue);
    v16->_scoreEvaluationLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v16->_myriadInstrumentation, instrumentation);
    v16->_mediaPlaybackBoost = 7;
    v16->_isSpeakerEndpoint = 0;
    endpointModelName = v16->_endpointModelName;
    v16->_endpointModelName = 0;

    v20 = MEMORY[0x1E69E9820];
    *(&v16->_recentSiriSecondDegreeCoefficient + 6) = 0.0;
    *&v16->_isRecentSiriBoostTrialEnabled = 0;
    HIWORD(v16->_recentSiriIntercept) = 0;
    *(&v16->_recentSiriFirstDegreeCoefficient + 6) = 0.0;
    block[0] = v20;
    block[1] = 3221225472;
    block[2] = __98__AFMyriadGoodnessScoreEvaluator_initWithDeviceInstanceContext_preferences_queue_instrumentation___block_invoke;
    block[3] = &unk_1E73497C8;
    v21 = v16;
    v25 = v21;
    dispatch_async(queueCopy, block);
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v21 selector:sel_myriadTrialBoostsUpdated_ name:@"AFMyriadTrialBoostsUpdatedNotification" object:0];
  }

  return v16;
}

uint64_t __98__AFMyriadGoodnessScoreEvaluator_initWithDeviceInstanceContext_preferences_queue_instrumentation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _fetchDevicePlatformBiasIfRequired];
  v2 = *(a1 + 32);

  return [v2 _reloadTrialConfiguredBoostValues];
}

@end