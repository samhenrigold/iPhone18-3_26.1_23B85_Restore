@interface SCDAGoodnessScoreEvaluator
- (BOOL)deviceAdjustTrialEnabled;
- (SCDAGoodnessScoreEvaluator)initWithDeviceInstanceContext:(id)context preferences:(id)preferences queue:(id)queue instrumentation:(id)instrumentation;
- (id)_createSettingsConnectionIfRequired;
- (id)_readSidekickBoostsFile:(id)file;
- (int64_t)deviceAdjustTrialValue;
- (unsigned)_bumpGoodnessScore:(id)score lastActivationTime:(double)time mediaPlaybackInterruptedTime:(double)interruptedTime ignoreAdjustedBoost:(BOOL)boost recentlyWonBySmallAmount:(BOOL)amount;
- (unsigned)_getRecentBump:(double)bump ignoreAdjustedBoost:(BOOL)boost recentlyWonBySmallAmount:(BOOL)amount;
- (unsigned)getMyriadAdjustedBoostForGoodnessScoreContext:(id)context;
- (unsigned)getPlatformBias;
- (void)_fetchDevicePlatformBiasIfRequired;
- (void)_reloadTrialConfiguredBoostValues;
- (void)_updateDeviceAdjust:(int64_t)adjust;
- (void)_updateDeviceAdjustTrialEnabled:(BOOL)enabled;
- (void)_updateMediaPlaybackBoost:(unsigned __int8)boost;
- (void)_updatePlatformBias:(unsigned __int8)bias;
- (void)_updateRecentSiriBoostTrialEnabled:(BOOL)enabled;
- (void)_updateRecentSiriExponentialBoostDefined:(BOOL)defined withSecondDegree:(double)degree andFirstDegree:(double)firstDegree andIntercept:(double)intercept;
- (void)_updateSidekickBoosts:(id)boosts;
- (void)dealloc;
- (void)myriadTrialBoostsUpdated:(id)updated;
- (void)preheat;
@end

@implementation SCDAGoodnessScoreEvaluator

- (unsigned)getMyriadAdjustedBoostForGoodnessScoreContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[SCDAGoodnessScoreEvaluator getMyriadAdjustedBoostForGoodnessScoreContext:]";
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda", &v15, 0xCu);
  }

  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  myriadShouldIgnoreAdjustedBoost = [(SCDAAssistantPreferences *)self->_pref myriadShouldIgnoreAdjustedBoost];
  ignoreMyriadPlatformBias = [(SCDAAssistantPreferences *)self->_pref ignoreMyriadPlatformBias];
  v8 = ignoreMyriadPlatformBias;
  if (myriadShouldIgnoreAdjustedBoost && ignoreMyriadPlatformBias)
  {
    getPlatformBias = 0;
  }

  else if (myriadShouldIgnoreAdjustedBoost)
  {
    getPlatformBias = [(SCDAGoodnessScoreEvaluator *)self getPlatformBias];
  }

  else
  {
    reasons = [contextCopy reasons];
    lastActivationTime = self->_lastActivationTime;
    [contextCopy mediaPlaybackInterruptedTime];
    getPlatformBias = -[SCDAGoodnessScoreEvaluator _bumpGoodnessScore:lastActivationTime:mediaPlaybackInterruptedTime:ignoreAdjustedBoost:recentlyWonBySmallAmount:](self, "_bumpGoodnessScore:lastActivationTime:mediaPlaybackInterruptedTime:ignoreAdjustedBoost:recentlyWonBySmallAmount:", reasons, 0, [contextCopy recentlyWonBySmallAmount], lastActivationTime, v12);

    if (!v8)
    {
      getPlatformBias += [(SCDAGoodnessScoreEvaluator *)self getPlatformBias];
    }
  }

  v13 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[SCDAGoodnessScoreEvaluator getMyriadAdjustedBoostForGoodnessScoreContext:]";
    v17 = 2048;
    v18 = getPlatformBias;
    _os_log_impl(&dword_1DA758000, v13, OS_LOG_TYPE_INFO, "%s #scda adjusted score: %ld", &v15, 0x16u);
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
  block[2] = __37__SCDAGoodnessScoreEvaluator_preheat__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_reloadTrialConfiguredBoostValues
{
  v17[2] = *MEMORY[0x1E69E9840];
  p_queue = &self->_queue;
  dispatch_assert_queue_V2(self->_queue);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1684;
  v14 = __Block_byref_object_dispose__1685;
  v15 = [objc_alloc(MEMORY[0x1E698D1E0]) initWithInstanceContext:self->_deviceInstanceContext];
  [v11[5] setXPCConnectionManagementQueue:*p_queue];
  objc_initWeak(&location, self);
  v4 = v11[5];
  v17[0] = @"RECENT_SIRI_BOOST_TRIAL_ENABLE";
  v17[1] = @"DEVICE_ADJUST_ENABLE";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v16[0] = @"RECENT_PLAYBACK_BOOST";
  v16[1] = @"HOMEPOD_BOOST";
  v16[2] = @"RECENT_SIRI_BOOST_SECOND_DEGREE_COEFF";
  v16[3] = @"RECENT_SIRI_BOOST_FIRST_DEGREE_COEFF";
  v16[4] = @"RECENT_SIRI_BOOST_INTERCEPT";
  v16[5] = @"DEVICE_ADJUST";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:6];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__SCDAGoodnessScoreEvaluator__reloadTrialConfiguredBoostValues__block_invoke;
  v7[3] = &unk_1E85D3100;
  objc_copyWeak(&v8, &location);
  v7[4] = &v10;
  [v4 getTrialEnables:v5 doubleFactors:v6 withCompletion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v10, 8);
}

void __63__SCDAGoodnessScoreEvaluator__reloadTrialConfiguredBoostValues__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v54 = "[SCDAGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
        v55 = 2112;
        v56 = v9;
        _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, "%s #scda Error loading Trial factors: %@", buf, 0x16u);
      }
    }

    else
    {
      v12 = [v7 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_TRIAL_ENABLE"];
      v13 = [v12 BOOLValue];
      if (v12)
      {
        [WeakRetained _updateRecentSiriBoostTrialEnabled:v13];
      }

      else
      {
        v14 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v54 = "[SCDAGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          _os_log_debug_impl(&dword_1DA758000, v14, OS_LOG_TYPE_DEBUG, "%s #scda Recent Siri Boost Trial Enable Not Loaded", buf, 0xCu);
        }
      }

      v15 = [v7 objectForKeyedSubscript:@"DEVICE_ADJUST_ENABLE"];
      v16 = [v15 BOOLValue];
      v51 = v15;
      if (v15)
      {
        [WeakRetained _updateDeviceAdjustTrialEnabled:v16];
      }

      else
      {
        v17 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v54 = "[SCDAGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          _os_log_debug_impl(&dword_1DA758000, v17, OS_LOG_TYPE_DEBUG, "%s #scda Device Adjust Trial Enable not loaded", buf, 0xCu);
        }
      }

      v18 = [v8 objectForKeyedSubscript:@"DEVICE_ADJUST"];
      v50 = v18;
      if (v18)
      {
        [WeakRetained _updateDeviceAdjust:{objc_msgSend(v18, "integerValue")}];
      }

      else
      {
        v19 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v54 = "[SCDAGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          _os_log_debug_impl(&dword_1DA758000, v19, OS_LOG_TYPE_DEBUG, "%s #scda Device Adjust Trial Value not loaded", buf, 0xCu);
        }
      }

      v20 = [v8 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_SECOND_DEGREE_COEFF"];
      v21 = [v8 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_FIRST_DEGREE_COEFF"];
      v22 = [v8 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_INTERCEPT"];
      if (v20)
      {
        v23 = v13;
      }

      else
      {
        v23 = 0;
      }

      v52 = v22;
      if (v23 == 1 && v21 && (v24 = v22) != 0)
      {
        [v20 doubleValue];
        v26 = v25;
        [v21 doubleValue];
        v28 = v27;
        [v24 doubleValue];
        v30 = v29;
        v31 = WeakRetained;
        v32 = 1;
        v33 = v26;
        v34 = v28;
      }

      else
      {
        v35 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v54 = "[SCDAGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          v55 = 2112;
          v56 = v20;
          v57 = 2112;
          v58 = v21;
          v59 = 2112;
          v60 = v52;
          _os_log_debug_impl(&dword_1DA758000, v35, OS_LOG_TYPE_DEBUG, "%s #scda Recent Siri exponential factors not loaded: %@ %@ %@", buf, 0x2Au);
        }

        v33 = 0.0;
        v34 = 0.0;
        v30 = 0.0;
        v31 = WeakRetained;
        v32 = 0;
      }

      [v31 _updateRecentSiriExponentialBoostDefined:v32 withSecondDegree:v33 andFirstDegree:v34 andIntercept:v30];
      v36 = [v8 objectForKeyedSubscript:@"RECENT_PLAYBACK_BOOST"];
      v37 = [v36 unsignedIntValue];
      if (v36 && v37 <= 0xFF)
      {
        [WeakRetained _updateMediaPlaybackBoost:v37];
      }

      else
      {
        v38 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v54 = "[SCDAGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          v55 = 2112;
          v56 = v36;
          _os_log_debug_impl(&dword_1DA758000, v38, OS_LOG_TYPE_DEBUG, "%s #scda Trial Playback Boost not loaded: %@", buf, 0x16u);
        }
      }

      if (+[SCDAUtilities isCommunal])
      {
        v49 = v12;
        v39 = [v8 objectForKeyedSubscript:@"HOMEPOD_BOOST"];
        v40 = [v7 objectForKeyedSubscript:@"MULTI_DEVICE_TRIAL_TREATMENT_CONSENSUS"];
        v48 = [v40 BOOLValue];

        v41 = [v39 unsignedIntValue];
        if (v39 && (v42 = v41, v41 <= 0xFF))
        {
          if (SCDAIsInternalInstall_onceToken != -1)
          {
            dispatch_once(&SCDAIsInternalInstall_onceToken, &__block_literal_global_1238);
          }

          if (SCDAIsInternalInstall_isInternal == 1 && !v48)
          {
            v44 = WeakRetained;
            v43 = 12;
          }

          else
          {
            v43 = v42;
            v44 = WeakRetained;
          }

          [v44 _updatePlatformBias:v43];
        }

        else
        {
          v45 = SCDALogContextCore;
          if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v54 = "[SCDAGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
            v55 = 2112;
            v56 = v39;
            _os_log_debug_impl(&dword_1DA758000, v45, OS_LOG_TYPE_DEBUG, "%s #scda Trial HomePod Boost not loaded: %@", buf, 0x16u);
          }
        }

        v12 = v49;
      }

      v46 = *(*(a1 + 32) + 8);
      v47 = *(v46 + 40);
      *(v46 + 40) = 0;
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
      v11 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[SCDAGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v21 = 2112;
        v22 = fileCopy;
        _os_log_error_impl(&dword_1DA758000, v11, OS_LOG_TYPE_ERROR, "%s Unable to find sidekick boosts plist at path %@.", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_23;
    }

    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:fileCopy];
    if (!v5)
    {
      v12 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[SCDAGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v21 = 2112;
        v22 = fileCopy;
        _os_log_error_impl(&dword_1DA758000, v12, OS_LOG_TYPE_ERROR, "%s Unable to read sidekick boosts plist file at path %@.", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_22;
    }

    v18 = 0;
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v18];
    v7 = v18;
    if (v7)
    {
      v8 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v20 = "[SCDAGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v21 = 2112;
        v22 = fileCopy;
        v23 = 2112;
        v24 = v7;
        _os_log_error_impl(&dword_1DA758000, v8, OS_LOG_TYPE_ERROR, "%s Unable to initialize sidekick boosts from plist file at path %@ due to error %@", buf, 0x20u);
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

      v13 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        v15 = v13;
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 136315394;
        v20 = "[SCDAGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v21 = 2112;
        v22 = v17;
        _os_log_error_impl(&dword_1DA758000, v15, OS_LOG_TYPE_ERROR, "%s Unexpected type of initialized sidekick boosts plist %@.", buf, 0x16u);
      }
    }

    v10 = 0;
    goto LABEL_21;
  }

  v9 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v20 = "[SCDAGoodnessScoreEvaluator _readSidekickBoostsFile:]";
    _os_log_error_impl(&dword_1DA758000, v9, OS_LOG_TYPE_ERROR, "%s _readSidekickBoostsFile: called with empty filepath", buf, 0xCu);
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
    if (+[SCDAUtilities isHorseman])
    {
      [(SCDAGoodnessScoreEvaluator *)self _updatePlatformBias:12];
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
    v4 = [objc_alloc(MEMORY[0x1E698D1E0]) initWithInstanceContext:self->_deviceInstanceContext];
    v5 = self->_settingsConnection;
    self->_settingsConnection = v4;

    [(AFSettingsConnection *)self->_settingsConnection setXPCConnectionManagementQueue:self->_queue];
    settingsConnection = self->_settingsConnection;
  }

  v6 = settingsConnection;

  return v6;
}

- (void)_updateSidekickBoosts:(id)boosts
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[SCDAGoodnessScoreEvaluator _updateSidekickBoosts:]";
    _os_log_error_impl(&dword_1DA758000, v3, OS_LOG_TYPE_ERROR, "%s #scda Error updating sidekick boosts: unsupported platform", &v4, 0xCu);
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
  v11 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    isExponentialBoostDefined = self->_isExponentialBoostDefined;
    recentSiriSecondDegreeCoefficient = self->_recentSiriSecondDegreeCoefficient;
    recentSiriFirstDegreeCoefficient = self->_recentSiriFirstDegreeCoefficient;
    recentSiriIntercept = self->_recentSiriIntercept;
    v16 = 136316162;
    v17 = "[SCDAGoodnessScoreEvaluator _updateRecentSiriExponentialBoostDefined:withSecondDegree:andFirstDegree:andIntercept:]";
    v18 = 1024;
    v19 = isExponentialBoostDefined;
    v20 = 2048;
    v21 = recentSiriSecondDegreeCoefficient;
    v22 = 2048;
    v23 = recentSiriFirstDegreeCoefficient;
    v24 = 2048;
    v25 = recentSiriIntercept;
    _os_log_impl(&dword_1DA758000, v11, OS_LOG_TYPE_INFO, "%s #scda updated Trial recent Siri exponential boost to %du %.12f %.12f %.12f", &v16, 0x30u);
  }
}

- (void)_updateDeviceAdjust:(int64_t)adjust
{
  v15 = *MEMORY[0x1E69E9840];
  if ((adjust - 129) > 0xFFFFFFFFFFFFFEFELL)
  {
    os_unfair_lock_lock(&self->_scoreEvaluationLock);
    self->_deviceAdjust = adjust;
    os_unfair_lock_unlock(&self->_scoreEvaluationLock);
    v6 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      deviceAdjust = self->_deviceAdjust;
      if (self->_isDeviceAdjustTrialEnabled)
      {
        v7 = @"YES";
      }

      v9 = 136315650;
      v10 = "[SCDAGoodnessScoreEvaluator _updateDeviceAdjust:]";
      v11 = 2112;
      adjustCopy = v7;
      v13 = 2048;
      v14 = deviceAdjust;
      _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s #scda updated Trial Device Adjust to (Enabled: %@) Value %ld", &v9, 0x20u);
    }
  }

  else
  {
    v5 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[SCDAGoodnessScoreEvaluator _updateDeviceAdjust:]";
      v11 = 2048;
      adjustCopy = adjust;
      _os_log_error_impl(&dword_1DA758000, v5, OS_LOG_TYPE_ERROR, "%s #scda Error: Attempting to assign out of bounds device adjust: %ld", &v9, 0x16u);
    }

    os_unfair_lock_lock(&self->_scoreEvaluationLock);
    self->_deviceAdjust = 0;
    os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  }
}

- (void)_updateDeviceAdjustTrialEnabled:(BOOL)enabled
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_isDeviceAdjustTrialEnabled = enabled;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    deviceAdjust = self->_deviceAdjust;
    if (self->_isDeviceAdjustTrialEnabled)
    {
      v6 = @"YES";
    }

    v8 = 136315650;
    v9 = "[SCDAGoodnessScoreEvaluator _updateDeviceAdjustTrialEnabled:]";
    v10 = 2112;
    v11 = v6;
    v12 = 2048;
    v13 = deviceAdjust;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda updated isDeviceAdjustTrialEnabled to Enabled: %@ (Value: %ld)", &v8, 0x20u);
  }
}

- (void)_updateRecentSiriBoostTrialEnabled:(BOOL)enabled
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_isRecentSiriBoostTrialEnabled = enabled;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (self->_isRecentSiriBoostTrialEnabled)
    {
      v6 = @"YES";
    }

    v7 = 136315394;
    v8 = "[SCDAGoodnessScoreEvaluator _updateRecentSiriBoostTrialEnabled:]";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda updated _isRecentSiriBoostTrialEnabled to %@", &v7, 0x16u);
  }
}

- (void)_updateMediaPlaybackBoost:(unsigned __int8)boost
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_mediaPlaybackBoost = boost;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    mediaPlaybackBoost = self->_mediaPlaybackBoost;
    v7 = 136315394;
    v8 = "[SCDAGoodnessScoreEvaluator _updateMediaPlaybackBoost:]";
    v9 = 1024;
    v10 = mediaPlaybackBoost;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda updated _mediaPlaybackBoost to %d", &v7, 0x12u);
  }
}

- (void)_updatePlatformBias:(unsigned __int8)bias
{
  biasCopy = bias;
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_myriadPlatformBias = biasCopy;
  myriadInstrumentation = self->_myriadInstrumentation;
  if (myriadInstrumentation)
  {
    [(SCDAInstrumentation *)myriadInstrumentation updateBoost:1 value:biasCopy];
  }

  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v6 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[SCDAGoodnessScoreEvaluator _updatePlatformBias:]";
    v9 = 1024;
    v10 = biasCopy;
    _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s #scda updated platform bias to %d", &v7, 0x12u);
  }
}

- (unsigned)_bumpGoodnessScore:(id)score lastActivationTime:(double)time mediaPlaybackInterruptedTime:(double)interruptedTime ignoreAdjustedBoost:(BOOL)boost recentlyWonBySmallAmount:(BOOL)amount
{
  amountCopy = amount;
  boostCopy = boost;
  v31 = *MEMORY[0x1E69E9840];
  scoreCopy = score;
  v13 = scoreCopy;
  if (!scoreCopy || ([scoreCopy containsObject:&unk_1F562E2E8] & 1) != 0)
  {
    LOBYTE(alarmTimerBoost) = 0;
    goto LABEL_4;
  }

  if ([v13 containsObject:&unk_1F562E300])
  {
    alarmTimerBoost = self->_alarmTimerBoost;
    v17 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *v29 = 136315394;
      *&v29[4] = "[SCDAGoodnessScoreEvaluator _bumpGoodnessScore:lastActivationTime:mediaPlaybackInterruptedTime:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
      *&v29[12] = 1024;
      *&v29[14] = alarmTimerBoost;
      _os_log_impl(&dword_1DA758000, v17, OS_LOG_TYPE_INFO, "%s #scda bumping goodness score (reason: alarm/timer firing, adjusted score: %d)", v29, 0x12u);
    }

    myriadInstrumentation = self->_myriadInstrumentation;
    if (myriadInstrumentation)
    {
      [(SCDAInstrumentation *)myriadInstrumentation updateBoost:7 value:alarmTimerBoost];
    }
  }

  else
  {
    LOBYTE(alarmTimerBoost) = 0;
  }

  if ([v13 containsObject:&unk_1F562E318])
  {
    if (!+[SCDAUtilities isCommunal])
    {
      goto LABEL_4;
    }

    LOBYTE(alarmTimerBoost) = self->_mediaPlaybackBoost + alarmTimerBoost;
    v19 = SCDALogContextCore;
    if (!os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *v29 = 136315394;
    *&v29[4] = "[SCDAGoodnessScoreEvaluator _bumpGoodnessScore:lastActivationTime:mediaPlaybackInterruptedTime:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
    *&v29[12] = 1024;
    *&v29[14] = alarmTimerBoost;
    v20 = "%s #scda bumping goodness score (reason: media playback active, bump: %d)";
    v21 = v19;
    v22 = 18;
    goto LABEL_15;
  }

  if (![v13 containsObject:&unk_1F562E330])
  {
    goto LABEL_4;
  }

  if (!+[SCDAUtilities isCommunal])
  {
    goto LABEL_4;
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  v26 = v25;

  if (v26 <= interruptedTime)
  {
    goto LABEL_4;
  }

  v27 = v26 - interruptedTime;
  if (v27 > 60.0)
  {
    goto LABEL_4;
  }

  LOBYTE(alarmTimerBoost) = self->_mediaPlaybackBoost + alarmTimerBoost;
  v28 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *v29 = 136315650;
    *&v29[4] = "[SCDAGoodnessScoreEvaluator _bumpGoodnessScore:lastActivationTime:mediaPlaybackInterruptedTime:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
    *&v29[12] = 2048;
    *&v29[14] = v27;
    *&v29[22] = 1024;
    LODWORD(v30) = alarmTimerBoost;
    v20 = "%s #scda bumping goodness score (reason: media playback interrupted, last playback time: %f seconds ago, bump: %d)";
    v21 = v28;
    v22 = 28;
LABEL_15:
    _os_log_impl(&dword_1DA758000, v21, OS_LOG_TYPE_INFO, v20, v29, v22);
  }

LABEL_16:
  v23 = self->_myriadInstrumentation;
  if (v23)
  {
    [(SCDAInstrumentation *)v23 updateBoost:6 value:alarmTimerBoost];
  }

LABEL_4:
  v15 = [(SCDAGoodnessScoreEvaluator *)self _getRecentBump:boostCopy ignoreAdjustedBoost:amountCopy recentlyWonBySmallAmount:time, *v29, *&v29[8], v30];

  return v15 + alarmTimerBoost;
}

- (int64_t)deviceAdjustTrialValue
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    deviceAdjust = self->_deviceAdjust;
    v6 = 136315394;
    v7 = "[SCDAGoodnessScoreEvaluator deviceAdjustTrialValue]";
    v8 = 2048;
    v9 = deviceAdjust;
    _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s #scda device adjust value: %ld", &v6, 0x16u);
  }

  return self->_deviceAdjust;
}

- (BOOL)deviceAdjustTrialEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    isDeviceAdjustTrialEnabled = self->_isDeviceAdjustTrialEnabled;
    v6 = 136315394;
    v7 = "[SCDAGoodnessScoreEvaluator deviceAdjustTrialEnabled]";
    v8 = 1024;
    v9 = isDeviceAdjustTrialEnabled;
    _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s #scda device adjust trial enabled: %du", &v6, 0x12u);
  }

  return self->_isDeviceAdjustTrialEnabled;
}

- (unsigned)getPlatformBias
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    myriadPlatformBias = self->_myriadPlatformBias;
    v7 = 136315394;
    v8 = "[SCDAGoodnessScoreEvaluator getPlatformBias]";
    v9 = 1024;
    v10 = myriadPlatformBias;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s #scda bumping goodness score (reason: platform bias, adjusted bias: %d)", &v7, 0x12u);
  }

  myriadInstrumentation = self->_myriadInstrumentation;
  if (myriadInstrumentation)
  {
    [(SCDAInstrumentation *)myriadInstrumentation updateBoost:1 value:self->_myriadPlatformBias];
  }

  return self->_myriadPlatformBias;
}

- (unsigned)_getRecentBump:(double)bump ignoreAdjustedBoost:(BOOL)boost recentlyWonBySmallAmount:(BOOL)amount
{
  v43 = *MEMORY[0x1E69E9840];
  if (boost)
  {
    v5 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v37 = 136315138;
      v38 = "[SCDAGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
      _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda ignoring recent event bump", &v37, 0xCu);
    }

    LOBYTE(v6) = 0;
  }

  else
  {
    amountCopy = amount;
    v10 = 0.0;
    v11 = 0.0;
    if (+[SCDAUtilities isIOS])
    {
      if (+[SCDAUtilities isDeviceUnlocked])
      {
        if (!+[SCDAUtilities accessibilitySupportsAttentionAwareFeatures])
        {
          v12 = SCDALogContextCore;
          v11 = 4.0;
          if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
          {
            v37 = 136315138;
            v38 = "[SCDAGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
            _os_log_impl(&dword_1DA758000, v12, OS_LOG_TYPE_INFO, "%s #scda device is unlocked and doesn't support attention, apply +4 bump", &v37, 0xCu);
          }
        }
      }
    }

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    v15 = v14;

    v16 = v15 - bump;
    [(SCDAAssistantPreferences *)self->_pref recencyBoostDecayInterval];
    v18 = 8.0 / v17;
    [(SCDAAssistantPreferences *)self->_pref recencyBoostInitialInterval];
    v20 = v15 - bump - v19;
    v21 = -v20;
    v22 = v20 < 0.0;
    v23 = -0.0;
    if (!v22)
    {
      v23 = v21;
    }

    v24 = v23 * v18 + 8.0;
    if (v24 >= 0.0)
    {
      v10 = v24;
    }

    if (self->_isRecentSiriBoostTrialEnabled && self->_isExponentialBoostDefined)
    {
      v25 = SCDAGoodnessComputeExponentialBoost(bump, v15, self->_recentSiriSecondDegreeCoefficient, self->_recentSiriFirstDegreeCoefficient, self->_recentSiriIntercept);
      v26 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v37 = 136315650;
        v38 = "[SCDAGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
        v39 = 2048;
        v40 = v10;
        v41 = 1024;
        *v42 = v25;
        _os_log_impl(&dword_1DA758000, v26, OS_LOG_TYPE_INFO, "%s #scda trial exponential boost configured, replacing %f with %du", &v37, 0x1Cu);
      }

      v10 = v25;
    }

    if (amountCopy && v10 > v11)
    {
      v27 = SCDALogContextCore;
      v28 = 0.0;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v37 = 136316162;
        v38 = "[SCDAGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
        v39 = 2048;
        v40 = v16;
        v41 = 2048;
        *v42 = v11;
        *&v42[8] = 2048;
        *&v42[10] = v11;
        *&v42[18] = 2048;
        *&v42[20] = v10;
        _os_log_impl(&dword_1DA758000, v27, OS_LOG_TYPE_INFO, "%s #scda previous close win: canceling recency bump from secsAgo=%f yields %f = %f(act) + %f(siri)", &v37, 0x34u);
      }
    }

    else
    {
      v28 = v10;
    }

    disableRecencyBoost = [(SCDAAssistantPreferences *)self->_pref disableRecencyBoost];
    v30 = SCDALogContextCore;
    if (disableRecencyBoost)
    {
      v31 = 0.0;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v37 = 136315394;
        v38 = "[SCDAGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
        v39 = 2048;
        v40 = v28;
        _os_log_impl(&dword_1DA758000, v30, OS_LOG_TYPE_INFO, "%s #scda recency boost disabled, clearing it %f -> 0", &v37, 0x16u);
        v30 = SCDALogContextCore;
      }
    }

    else
    {
      v31 = v28;
    }

    if (v11 >= v31)
    {
      v32 = v11;
    }

    else
    {
      v32 = v31;
    }

    v6 = v32;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v37 = 136316162;
      v38 = "[SCDAGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
      v39 = 2048;
      v40 = v16;
      v41 = 1024;
      *v42 = v6;
      *&v42[4] = 2048;
      *&v42[6] = v11;
      *&v42[14] = 2048;
      *&v42[16] = v31;
      _os_log_impl(&dword_1DA758000, v30, OS_LOG_TYPE_INFO, "%s #scda bumptoGoodness secsAgo=%f yields %d = %f(act) + %f(siri)", &v37, 0x30u);
    }

    myriadInstrumentation = self->_myriadInstrumentation;
    if (myriadInstrumentation && v6)
    {
      if (v11 <= v31)
      {
        v34 = v31;
        v35 = 4;
      }

      else
      {
        v34 = v11;
        v35 = 2;
      }

      [(SCDAInstrumentation *)myriadInstrumentation updateBoost:v35 value:v34];
    }
  }

  return v6;
}

- (void)myriadTrialBoostsUpdated:(id)updated
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SCDAGoodnessScoreEvaluator_myriadTrialBoostsUpdated___block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __55__SCDAGoodnessScoreEvaluator_myriadTrialBoostsUpdated___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[SCDAGoodnessScoreEvaluator myriadTrialBoostsUpdated:]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s Trial Boosts Updated Notification", &v4, 0xCu);
  }

  return [*(a1 + 32) _reloadTrialConfiguredBoostValues];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SCDAGoodnessScoreEvaluator;
  [(SCDAGoodnessScoreEvaluator *)&v4 dealloc];
}

- (SCDAGoodnessScoreEvaluator)initWithDeviceInstanceContext:(id)context preferences:(id)preferences queue:(id)queue instrumentation:(id)instrumentation
{
  contextCopy = context;
  preferencesCopy = preferences;
  queueCopy = queue;
  instrumentationCopy = instrumentation;
  v26.receiver = self;
  v26.super_class = SCDAGoodnessScoreEvaluator;
  v15 = [(SCDAGoodnessScoreEvaluator *)&v26 init];
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
      v17 = [[SCDAAssistantPreferences alloc] initWithInstanceContext:v16->_deviceInstanceContext];
    }

    pref = v16->_pref;
    v16->_pref = v17;

    v16->_platformBiasAcquisitionState = 0;
    objc_storeStrong(&v16->_queue, queue);
    v16->_evaluateForAudioAccessory = 0;
    v16->_scoreEvaluationLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v16->_myriadInstrumentation, instrumentation);
    *&v16->_mediaPlaybackBoost = 5127;
    v16->_isSpeakerEndpoint = 0;
    endpointModelName = v16->_endpointModelName;
    v16->_endpointModelName = 0;

    *&v16->_isRecentSiriBoostTrialEnabled = 0;
    v16->_isExponentialBoostDefined = 0;
    v20 = MEMORY[0x1E69E9820];
    *&v16->_recentSiriSecondDegreeCoefficient = 0u;
    *&v16->_recentSiriIntercept = 0u;
    block[0] = v20;
    block[1] = 3221225472;
    block[2] = __94__SCDAGoodnessScoreEvaluator_initWithDeviceInstanceContext_preferences_queue_instrumentation___block_invoke;
    block[3] = &unk_1E85D3850;
    v21 = v16;
    v25 = v21;
    dispatch_async(queueCopy, block);
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v21 selector:sel_myriadTrialBoostsUpdated_ name:*MEMORY[0x1E698D088] object:0];
  }

  return v16;
}

uint64_t __94__SCDAGoodnessScoreEvaluator_initWithDeviceInstanceContext_preferences_queue_instrumentation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _fetchDevicePlatformBiasIfRequired];
  v2 = *(a1 + 32);

  return [v2 _reloadTrialConfiguredBoostValues];
}

@end