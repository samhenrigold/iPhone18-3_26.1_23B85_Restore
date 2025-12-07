@interface AVVCMetricsManager
+ (id)sharedManager;
+ (void)createSharedManager;
+ (void)destroySharedManager;
+ (void)getLock;
- (AVVCMetricsManager)init;
- (BOOL)measureElapseTimeForMetric:(id)metric block:(id)block;
- (id)getStringDate:(id)date;
- (id)retrieveMetrics;
- (id)retrieveProfileMetrics;
- (int)_disposeADAM;
- (int)adamAnalyzeBuffer:(AudioBufferList *)buffer numFrames:(unsigned int)frames timeStamp:(const AudioTimeStamp *)stamp shouldAnalyze:(BOOL)analyze;
- (int)audioIssueDetectorAnalyzeBuffer:(AudioBufferList *)buffer numFrames:(unsigned int)frames timeStamp:(const AudioTimeStamp *)stamp shouldAnalyze:(BOOL)analyze;
- (int)disposeADAM;
- (int)resetAudioIssueDetector;
- (int)setADAMFormat:(CAStreamBasicDescription *)format numFrames:(unsigned int)frames;
- (int)setAudioIssueDetectorFormat:(CAStreamBasicDescription *)format numFrames:(unsigned int)frames;
- (int64_t)reporterID;
- (void)checkAndUpdateReporterID:(int64_t)d;
- (void)dealloc;
- (void)logABCMetric:(id)metric category:(unsigned int)category type:(unsigned __int16)type reporterID:(int64_t)d;
- (void)logProfileMetrics:(id)metrics;
- (void)logRecordAudioFormat:(CAStreamBasicDescription *)format reporterID:(int64_t)d;
- (void)logRecordRoute:(id)route andPlaybackRoute:(id)playbackRoute reporterID:(int64_t)d;
- (void)logSessionMetric:(id)metric value:(id)value category:(unsigned int)category type:(unsigned __int16)type context:(id)context reporterID:(int64_t)d;
- (void)logSingleMetric:(id)metric value:(id)value category:(unsigned int)category type:(unsigned __int16)type reporterID:(int64_t)d;
- (void)resetProfileMetrics;
- (void)updateWithReporterID:(int64_t)d;
@end

@implementation AVVCMetricsManager

+ (id)sharedManager
{
  v11 = *MEMORY[0x1E69E9840];
  if (isAudioStatisticsAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioStatisticsAvailable(void)::onceToken, &__block_literal_global_161);
  }

  if (isAudioStatisticsAvailable(void)::audioStatisticsAvailable != 1)
  {
    v4 = 0;
    goto LABEL_15;
  }

  v2 = gSharedInstance;
  if (!gSharedInstance)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_13:
        v2 = gSharedInstance;
        goto LABEL_14;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "AVVCMetricsManager.mm";
      v9 = 1024;
      v10 = 174;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCMetricsManager: sharedInstance is nil !!!!", &v7, 0x12u);
    }

    goto LABEL_13;
  }

LABEL_14:
  v4 = v2;
LABEL_15:

  return v4;
}

- (int)resetAudioIssueDetector
{
  v12 = *MEMORY[0x1E69E9840];
  mAudioIssueDetector = self->mAudioIssueDetector;
  if (mAudioIssueDetector)
  {
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_256);
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      LODWORD(mAudioIssueDetector) = AudioIssueDetectorLibraryLoader(void)::libSym(mAudioIssueDetector);
      if (!mAudioIssueDetector)
      {
        return mAudioIssueDetector;
      }
    }

    else
    {
      LODWORD(mAudioIssueDetector) = -1;
    }

    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
        return mAudioIssueDetector;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "AVVCMetricsManager.mm";
      v8 = 1024;
      v9 = 545;
      v10 = 1024;
      v11 = mAudioIssueDetector;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioIssueDetectorClientReset Failed: %d", &v6, 0x18u);
    }
  }

  return mAudioIssueDetector;
}

- (id)retrieveProfileMetrics
{
  v118 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->mProfileAVVC)
  {
    goto LABEL_52;
  }

  avvcProfilingInfoDictionary = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
  v4 = [avvcProfilingInfoDictionary objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PrepareStart"];
  if (v4)
  {
    avvcProfilingInfoDictionary2 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v6 = [avvcProfilingInfoDictionary2 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PrepareEnd"];

    if (!v6)
    {
      goto LABEL_6;
    }

    avvcProfilingInfoDictionary3 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v8 = [avvcProfilingInfoDictionary3 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PrepareEnd"];
    avvcProfilingInfoDictionary4 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v10 = [avvcProfilingInfoDictionary4 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PrepareStart"];
    [v8 timeIntervalSinceDate:v10];
    v12 = v11;

    avvcProfilingInfoDictionary = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12 * 1000.0];
    [avvcProfilingInfoDictionary setObject:v13 forKey:@"AVVC_PROFILE_Delta_PrepareAPIStartEnd"];
  }

LABEL_6:
  avvcProfilingInfoDictionary5 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
  v15 = [avvcProfilingInfoDictionary5 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_GetPropertiesStart"];
  if (v15)
  {
    avvcProfilingInfoDictionary6 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v17 = [avvcProfilingInfoDictionary6 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_GetPropertiesEnd"];

    if (!v17)
    {
      goto LABEL_10;
    }

    avvcProfilingInfoDictionary7 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v19 = [avvcProfilingInfoDictionary7 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_GetPropertiesEnd"];
    avvcProfilingInfoDictionary8 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v21 = [avvcProfilingInfoDictionary8 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_GetPropertiesStart"];
    [v19 timeIntervalSinceDate:v21];
    v23 = v22;

    avvcProfilingInfoDictionary5 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v24 = [MEMORY[0x1E696AD98] numberWithDouble:v23 * 1000.0];
    [avvcProfilingInfoDictionary5 setObject:v24 forKey:@"AVVC_PROFILE_Delta_GetSessionPropStartEnd"];
  }

LABEL_10:
  avvcProfilingInfoDictionary9 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
  v26 = [avvcProfilingInfoDictionary9 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetSessionActiveStart"];
  if (v26)
  {
    avvcProfilingInfoDictionary10 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v28 = [avvcProfilingInfoDictionary10 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetSessionActiveEnd"];

    if (!v28)
    {
      goto LABEL_14;
    }

    avvcProfilingInfoDictionary11 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v30 = [avvcProfilingInfoDictionary11 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetSessionActiveEnd"];
    avvcProfilingInfoDictionary12 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v32 = [avvcProfilingInfoDictionary12 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetSessionActiveStart"];
    [v30 timeIntervalSinceDate:v32];
    v34 = v33;

    avvcProfilingInfoDictionary9 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v35 = [MEMORY[0x1E696AD98] numberWithDouble:v34 * 1000.0];
    [avvcProfilingInfoDictionary9 setObject:v35 forKey:@"AVVC_PROFILE_Delta_SetSessionActiveStartEnd"];
  }

LABEL_14:
  avvcProfilingInfoDictionary13 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
  v37 = [avvcProfilingInfoDictionary13 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetupRecordQueueStart"];
  if (v37)
  {
    avvcProfilingInfoDictionary14 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v39 = [avvcProfilingInfoDictionary14 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetupRecordQueueEnd"];

    if (!v39)
    {
      goto LABEL_18;
    }

    avvcProfilingInfoDictionary15 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v41 = [avvcProfilingInfoDictionary15 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetupRecordQueueEnd"];
    avvcProfilingInfoDictionary16 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v43 = [avvcProfilingInfoDictionary16 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_SetupRecordQueueStart"];
    [v41 timeIntervalSinceDate:v43];
    v45 = v44;

    avvcProfilingInfoDictionary13 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v46 = [MEMORY[0x1E696AD98] numberWithDouble:v45 * 1000.0];
    [avvcProfilingInfoDictionary13 setObject:v46 forKey:@"AVVC_PROFILE_Delta_SetupRecordQueueStartEnd"];
  }

LABEL_18:
  avvcProfilingInfoDictionary17 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
  v48 = [avvcProfilingInfoDictionary17 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_StartRecordingStart"];
  if (v48)
  {
    avvcProfilingInfoDictionary18 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v50 = [avvcProfilingInfoDictionary18 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_StartRecordingEnd"];

    if (!v50)
    {
      goto LABEL_22;
    }

    avvcProfilingInfoDictionary19 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v52 = [avvcProfilingInfoDictionary19 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_StartRecordingEnd"];
    avvcProfilingInfoDictionary20 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v54 = [avvcProfilingInfoDictionary20 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_StartRecordingStart"];
    [v52 timeIntervalSinceDate:v54];
    v56 = v55;

    avvcProfilingInfoDictionary17 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v57 = [MEMORY[0x1E696AD98] numberWithDouble:v56 * 1000.0];
    [avvcProfilingInfoDictionary17 setObject:v57 forKey:@"AVVC_PROFILE_Delta_StartRecordAPIStartEnd"];
  }

LABEL_22:
  avvcProfilingInfoDictionary21 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
  v59 = [avvcProfilingInfoDictionary21 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PlayAlertStart"];
  if (v59)
  {
    avvcProfilingInfoDictionary22 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v61 = [avvcProfilingInfoDictionary22 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PlayAlertEnd"];

    if (!v61)
    {
      goto LABEL_26;
    }

    avvcProfilingInfoDictionary23 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v63 = [avvcProfilingInfoDictionary23 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PlayAlertEnd"];
    avvcProfilingInfoDictionary24 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v65 = [avvcProfilingInfoDictionary24 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_PlayAlertStart"];
    [v63 timeIntervalSinceDate:v65];
    v67 = v66;

    avvcProfilingInfoDictionary21 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v68 = [MEMORY[0x1E696AD98] numberWithDouble:v67 * 1000.0];
    [avvcProfilingInfoDictionary21 setObject:v68 forKey:@"AVVC_PROFILE_Delta_PlayAlertQueueStartEnd"];
  }

LABEL_26:
  avvcProfilingInfoDictionary25 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
  v70 = [avvcProfilingInfoDictionary25 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueStart"];
  if (v70)
  {
    avvcProfilingInfoDictionary26 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v72 = [avvcProfilingInfoDictionary26 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueEnd"];

    if (!v72)
    {
      goto LABEL_30;
    }

    avvcProfilingInfoDictionary27 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v74 = [avvcProfilingInfoDictionary27 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueEnd"];
    avvcProfilingInfoDictionary28 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v76 = [avvcProfilingInfoDictionary28 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueStart"];
    [v74 timeIntervalSinceDate:v76];
    v78 = v77;

    avvcProfilingInfoDictionary25 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v79 = [MEMORY[0x1E696AD98] numberWithDouble:v78 * 1000.0];
    [avvcProfilingInfoDictionary25 setObject:v79 forKey:@"AVVC_PROFILE_Delta_StartRecordAudioQueueStartEnd"];
  }

LABEL_30:
  avvcProfilingInfoDictionary29 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
  v81 = [avvcProfilingInfoDictionary29 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueStart"];
  if (v81)
  {
    avvcProfilingInfoDictionary30 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v83 = [avvcProfilingInfoDictionary30 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_FirstBufferReceived"];

    if (!v83)
    {
      goto LABEL_34;
    }

    avvcProfilingInfoDictionary31 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v85 = [avvcProfilingInfoDictionary31 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_FirstBufferReceived"];
    avvcProfilingInfoDictionary32 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v87 = [avvcProfilingInfoDictionary32 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueStart"];
    [v85 timeIntervalSinceDate:v87];
    v89 = v88;

    avvcProfilingInfoDictionary29 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v90 = [MEMORY[0x1E696AD98] numberWithDouble:v89 * 1000.0];
    [avvcProfilingInfoDictionary29 setObject:v90 forKey:@"AVVC_PROFILE_Delta_RecordAudioQueueFirstBufferDelta"];
  }

LABEL_34:
  avvcProfilingInfoDictionary33 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
  v92 = [avvcProfilingInfoDictionary33 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_FirstBufferReceived"];
  if (v92)
  {
    avvcProfilingInfoDictionary34 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v94 = [avvcProfilingInfoDictionary34 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueStart"];

    if (!v94)
    {
      goto LABEL_38;
    }

    avvcProfilingInfoDictionary35 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v96 = [avvcProfilingInfoDictionary35 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_FirstBufferReceived"];
    avvcProfilingInfoDictionary36 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v98 = [avvcProfilingInfoDictionary36 objectForKeyedSubscript:@"AVVC_PROFILE_Prop_RecordQueueStart"];
    [v96 timeIntervalSinceDate:v98];
    v100 = v99;

    avvcProfilingInfoDictionary33 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    v101 = [MEMORY[0x1E696AD98] numberWithDouble:v100 * 1000.0];
    [avvcProfilingInfoDictionary33 setObject:v101 forKey:@"AVVC_PROFILE_Delta_RecordAudioQueueFirstBufferToDelegateCallDelta"];
  }

LABEL_38:
  avvcProfilingInfoDictionary37 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __44__AVVCMetricsManager_retrieveProfileMetrics__block_invoke;
  v111[3] = &unk_1E7EF5518;
  v111[4] = selfCopy;
  [avvcProfilingInfoDictionary37 enumerateKeysAndObjectsUsingBlock:v111];

  if (!kAVVCScope)
  {
    v103 = MEMORY[0x1E69E9C10];
    v104 = MEMORY[0x1E69E9C10];
    goto LABEL_42;
  }

  v103 = *kAVVCScope;
  if (v103)
  {
LABEL_42:
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v113 = "AVVCMetricsManager.mm";
      v114 = 1024;
      v115 = 465;
      _os_log_impl(&dword_1BA5AC000, v103, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController PERF_INFO ####", buf, 0x12u);
    }
  }

  if (kAVVCScope)
  {
    v105 = *kAVVCScope;
    if (!v105)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v105 = MEMORY[0x1E69E9C10];
    v106 = MEMORY[0x1E69E9C10];
  }

  v107 = v105;
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    avvcProfilingInfoDictionary38 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
    *buf = 136315650;
    v113 = "AVVCMetricsManager.mm";
    v114 = 1024;
    v115 = 466;
    v116 = 2112;
    v117 = avvcProfilingInfoDictionary38;
    _os_log_impl(&dword_1BA5AC000, v107, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PROFILE %@", buf, 0x1Cu);
  }

LABEL_52:
  avvcProfilingInfoDictionary39 = [(AVVCMetricsManager *)selfCopy avvcProfilingInfoDictionary];
  objc_sync_exit(selfCopy);

  return avvcProfilingInfoDictionary39;
}

- (void)resetProfileMetrics
{
  if (self->mProfileAVVC)
  {
    avvcProfilingInfoDictionary = [(AVVCMetricsManager *)self avvcProfilingInfoDictionary];
    [avvcProfilingInfoDictionary removeAllObjects];
  }
}

- (int)disposeADAM
{
  mWorkQueue = self->mWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__AVVCMetricsManager_disposeADAM__block_invoke;
  block[3] = &unk_1E7EF6628;
  block[4] = self;
  dispatch_async(mWorkQueue, block);
  return 0;
}

void __33__AVVCMetricsManager_disposeADAM__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[4] != 561211748)
  {
    [v2 _disposeADAM];
  }

  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "AVVCMetricsManager.mm";
    v9 = 1024;
    v10 = 638;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Releasing OS Transaction for ADAMSiriSession", &v7, 0x12u);
  }

LABEL_10:
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (int)_disposeADAM
{
  v14 = *MEMORY[0x1E69E9840];
  mAudioDataAnalysisSiriSession = self->mAudioDataAnalysisSiriSession;
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_278);
  }

  if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    v4 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(mAudioDataAnalysisSiriSession);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = 560033897;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315650;
    v9 = "AVVCMetricsManager.mm";
    v10 = 1024;
    v11 = 623;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ADAMClientDispose Failed %d", &v8, 0x18u);
  }

LABEL_14:
  self->mAudioDataAnalysisSiriSession = 561211748;
  return v4;
}

- (void)logProfileMetrics:(id)metrics
{
  v15 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  if (self->mProfileAVVC)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_9:
        avvcProfilingInfoDictionary = [(AVVCMetricsManager *)self avvcProfilingInfoDictionary];
        date = [MEMORY[0x1E695DF00] date];
        [avvcProfilingInfoDictionary setObject:date forKey:metricsCopy];

        goto LABEL_10;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315650;
      v10 = "AVVCMetricsManager.mm";
      v11 = 1024;
      v12 = 732;
      v13 = 2112;
      v14 = metricsCopy;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Logging PROFILE METRIC : %@", &v9, 0x1Cu);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)logRecordRoute:(id)route andPlaybackRoute:(id)playbackRoute reporterID:(int64_t)d
{
  v12[2] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  playbackRouteCopy = playbackRoute;
  v11[0] = @"avvcRecordRoute";
  v11[1] = @"avvcPlaybackRoute";
  v12[0] = routeCopy;
  v12[1] = playbackRouteCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (self->mMetricsReporter)
  {
    [(AVVCMetricsManager *)self checkAndUpdateReporterID:d];
    [(CAReporter *)self->mMetricsReporter sendMessage:v10 category:6 type:5];
  }
}

- (void)logRecordAudioFormat:(CAStreamBasicDescription *)format reporterID:(int64_t)d
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12[0] = @"avvcSampleRate";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:format->var0];
  v13[0] = v7;
  v12[1] = @"avvcBitDepth";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:format->var7];
  v13[1] = v8;
  v12[2] = @"avvcChannels";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:format->var6];
  v13[2] = v9;
  v12[3] = @"avvcFormatID";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:format->var1];
  v13[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

  if (self->mMetricsReporter)
  {
    [(AVVCMetricsManager *)self checkAndUpdateReporterID:d];
    [(CAReporter *)self->mMetricsReporter sendMessage:v11 category:2 type:5];
  }
}

- (void)logABCMetric:(id)metric category:(unsigned int)category type:(unsigned __int16)type reporterID:(int64_t)d
{
  typeCopy = type;
  v22 = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  if (self->mMetricsReporter)
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
LABEL_12:
        v14[0] = @"avvcGenerateAutoBugCapture";
        v14[1] = metricCopy;
        v15[0] = &unk_1F385A2A0;
        v15[1] = &unk_1F385A2A0;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
        [(AVVCMetricsManager *)self checkAndUpdateReporterID:d];
        [(CAReporter *)self->mMetricsReporter sendMessage:v11 category:2 type:typeCopy];
        goto LABEL_13;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v17 = "AVVCMetricsManager.mm";
      v18 = 1024;
      v19 = 686;
      v20 = 2112;
      v21 = metricCopy;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Logging Out-of-Session ABC Metric %@", buf, 0x1Cu);
    }

    goto LABEL_12;
  }

  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v17 = "AVVCMetricsManager.mm";
    v18 = 1024;
    v19 = 695;
    v20 = 2112;
    v21 = metricCopy;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Error! No CAReporter for sending %@ message", buf, 0x1Cu);
  }

LABEL_13:

LABEL_14:
}

- (void)logSingleMetric:(id)metric value:(id)value category:(unsigned int)category type:(unsigned __int16)type reporterID:(int64_t)d
{
  typeCopy = type;
  v27 = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  valueCopy = value;
  if (self->mMetricsReporter)
  {
    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
LABEL_12:
        v17 = metricCopy;
        v18 = valueCopy;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        [(AVVCMetricsManager *)self checkAndUpdateReporterID:d];
        [(CAReporter *)self->mMetricsReporter sendMessage:v14 category:2 type:typeCopy];
        goto LABEL_13;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v20 = "AVVCMetricsManager.mm";
      v21 = 1024;
      v22 = 674;
      v23 = 2112;
      v24 = metricCopy;
      v25 = 2112;
      v26 = valueCopy;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Logging Out-of-Session Metric %@ : %@", buf, 0x26u);
    }

    goto LABEL_12;
  }

  if (kAVVCScope)
  {
    v14 = *kAVVCScope;
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v20 = "AVVCMetricsManager.mm";
    v21 = 1024;
    v22 = 679;
    v23 = 2112;
    v24 = metricCopy;
    _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Error! No CAReporter for sending %@ message", buf, 0x1Cu);
  }

LABEL_13:

LABEL_14:
}

- (void)logSessionMetric:(id)metric value:(id)value category:(unsigned int)category type:(unsigned __int16)type context:(id)context reporterID:(int64_t)d
{
  typeCopy = type;
  v29 = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  valueCopy = value;
  contextCopy = context;
  if (self->mMetricsReporter)
  {
    if (kAVVCScope)
    {
      v16 = *kAVVCScope;
      if (!v16)
      {
LABEL_12:
        v19 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{valueCopy, metricCopy, 0}];
        v17 = v19;
        if (contextCopy)
        {
          [v19 setObject:contextCopy forKeyedSubscript:@"avvcLogContext"];
        }

        [(AVVCMetricsManager *)self checkAndUpdateReporterID:d];
        [(CAReporter *)self->mMetricsReporter sendMessage:v17 category:2 type:typeCopy];
        goto LABEL_15;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v22 = "AVVCMetricsManager.mm";
      v23 = 1024;
      v24 = 658;
      v25 = 2112;
      v26 = metricCopy;
      v27 = 2112;
      v28 = valueCopy;
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Logging In-Session Metric %@ : %@", buf, 0x26u);
    }

    goto LABEL_12;
  }

  if (kAVVCScope)
  {
    v17 = *kAVVCScope;
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v22 = "AVVCMetricsManager.mm";
    v23 = 1024;
    v24 = 666;
    v25 = 2112;
    v26 = metricCopy;
    _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Error! No CAReporter for sending %@ message", buf, 0x1Cu);
  }

LABEL_15:

LABEL_16:
}

- (int)adamAnalyzeBuffer:(AudioBufferList *)buffer numFrames:(unsigned int)frames timeStamp:(const AudioTimeStamp *)stamp shouldAnalyze:(BOOL)analyze
{
  v8 = *MEMORY[0x1E69E9840];
  if (!analyze || self->mAudioDataAnalysisSiriSession == 561211748)
  {
    return 0;
  }

  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_278);
  }

  v6 = 560033897;
  if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    return AudioDataAnalysisManagerLibraryLoader(void)::libSym();
  }

  return v6;
}

- (int)setADAMFormat:(CAStreamBasicDescription *)format numFrames:(unsigned int)frames
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  reporterID = [(CAReporter *)self->mMetricsReporter reporterID];
  v23 = reporterID;
  if (reporterID)
  {
    std::vector<long long>::push_back[abi:ne200100](&v24, &v23);
    v9 = v24;
    v8 = v25;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  mWorkQueue = self->mWorkQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = __46__AVVCMetricsManager_setADAMFormat_numFrames___block_invoke;
  v14[3] = &unk_1F384DA08;
  v14[4] = self;
  __p = 0;
  v16 = 0;
  v17 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v9, v8, (v8 - v9) >> 3);
  v14[5] = &v27;
  v18 = reporterID;
  v11 = *&format->var3;
  v19 = *&format->var0;
  v20 = v11;
  v21 = *&format->var7;
  framesCopy = frames;
  dispatch_async(mWorkQueue, v14);
  v12 = *(v28 + 6);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    operator delete(v9);
  }

  _Block_object_dispose(&v27, 8);
  return v12;
}

void __46__AVVCMetricsManager_setADAMFormat_numFrames___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_278);
  }

  if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    v2 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(4, a1 + 48);
  }

  else
  {
    v2 = 560033897;
  }

  *(*(a1 + 32) + 32) = v2;
  v3 = *(*(a1 + 32) + 32);
  if (v3 != 561211748)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "avvc-recordQueue");
    v5 = *(a1 + 120);
    if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_278);
    }

    v6 = 560033897;
    v7 = 560033897;
    if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
    {
      v7 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(v3, 0, __p, a1 + 80, v5, 0);
    }

    *(*(*(a1 + 40) + 8) + 24) = v7;
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*__p);
    }

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if (kAVVCScope)
      {
        v8 = *kAVVCScope;
        if (!v8)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = *(*(*(a1 + 40) + 8) + 24);
        *__p = 136315650;
        *&__p[4] = "AVVCMetricsManager.mm";
        v23 = 1024;
        v24 = 574;
        v25 = 1024;
        v26 = v14;
        _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d ADAMClientCreateNodePCM returned error %d", __p, 0x18u);
      }

LABEL_35:

LABEL_36:
      [*(a1 + 32) _disposeADAM];
      return;
    }

    v12 = *(*(a1 + 32) + 32);
    if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_278);
    }

    if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
    {
      v6 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(v12);
    }

    *(*(*(a1 + 40) + 8) + 24) = v6;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if (kAVVCScope)
      {
        v8 = *kAVVCScope;
        if (!v8)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v17 = *(*(*(a1 + 40) + 8) + 24);
        *__p = 136315650;
        *&__p[4] = "AVVCMetricsManager.mm";
        v23 = 1024;
        v24 = 580;
        v25 = 1024;
        v26 = v17;
        _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d ADAMClientInitialize returned error %d", __p, 0x18u);
      }

      goto LABEL_35;
    }

    if (kAVVCScope)
    {
      v15 = *kAVVCScope;
      if (!v15)
      {
LABEL_48:
        v19 = os_transaction_create();
        v20 = *(a1 + 32);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 136315394;
      *&__p[4] = "AVVCMetricsManager.mm";
      v23 = 1024;
      v24 = 584;
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Acquiring an OS Transaction for ADAMSiriSession", __p, 0x12u);
    }

    goto LABEL_48;
  }

  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = *(*(*(a1 + 40) + 8) + 24);
    v11 = *(a1 + 72);
    *__p = 136315906;
    *&__p[4] = "AVVCMetricsManager.mm";
    v23 = 1024;
    v24 = 569;
    v25 = 1024;
    v26 = v10;
    v27 = 2048;
    v28 = v11;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: %d. Failed to create ADAM SiriSession with reporterID: %lld", __p, 0x22u);
  }
}

- (int)audioIssueDetectorAnalyzeBuffer:(AudioBufferList *)buffer numFrames:(unsigned int)frames timeStamp:(const AudioTimeStamp *)stamp shouldAnalyze:(BOOL)analyze
{
  v20 = *MEMORY[0x1E69E9840];
  if (!analyze)
  {
    return 0;
  }

  mAudioIssueDetector = self->mAudioIssueDetector;
  if (!mAudioIssueDetector)
  {
    return 0;
  }

  v8 = *&frames;
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_256);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    v10 = AudioIssueDetectorLibraryLoader(void)::libSym(mAudioIssueDetector, 0, 0, buffer, v8, stamp);
    if (!v10)
    {
      return v10;
    }
  }

  else
  {
    v10 = -1;
  }

  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      return v10;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315650;
    v15 = "AVVCMetricsManager.mm";
    v16 = 1024;
    v17 = 531;
    v18 = 1024;
    v19 = v10;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioIssueDetectorClientAnalyzeBuffer Failed: %d", &v14, 0x18u);
  }

  return v10;
}

- (int)setAudioIssueDetectorFormat:(CAStreamBasicDescription *)format numFrames:(unsigned int)frames
{
  v21 = *MEMORY[0x1E69E9840];
  mAudioIssueDetector = self->mAudioIssueDetector;
  if (mAudioIssueDetector)
  {
    v5 = *&frames;
    std::string::basic_string[abi:ne200100]<0>(__p, "avvc-recordQueue");
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_256);
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      v8 = AudioIssueDetectorLibraryLoader(void)::libSym(mAudioIssueDetector, __p, 0, format, v5);
    }

    else
    {
      v8 = -1;
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(*__p);
      if (v8)
      {
        goto LABEL_12;
      }
    }

    else if (v8)
    {
LABEL_12:
      if (kAVVCScope)
      {
        v9 = *kAVVCScope;
        if (!v9)
        {
          return v8;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v11 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *__p = 136315650;
      *&__p[4] = "AVVCMetricsManager.mm";
      v17 = 1024;
      v18 = 507;
      v19 = 1024;
      v20 = v8;
      v12 = "%25s:%-5d AudioIssueDetectorClientSetNodeFormat returned error %d";
LABEL_35:
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, v12, __p, 0x18u);
LABEL_36:

      return v8;
    }

    v10 = self->mAudioIssueDetector;
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_256);
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      v8 = AudioIssueDetectorLibraryLoader(void)::libSym(v10);
      if (!v8)
      {
        return v8;
      }
    }

    else
    {
      v8 = -1;
    }

    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        return v8;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *__p = 136315650;
    *&__p[4] = "AVVCMetricsManager.mm";
    v17 = 1024;
    v18 = 512;
    v19 = 1024;
    v20 = v8;
    v12 = "%25s:%-5d AudioIssueDetectorClientInitialize returned error %d";
    goto LABEL_35;
  }

  if (!kAVVCScope)
  {
    v9 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
    goto LABEL_25;
  }

  v9 = *kAVVCScope;
  if (v9)
  {
LABEL_25:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "AVVCMetricsManager.mm";
      v17 = 1024;
      v18 = 516;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d setAudioIssueDetectorFormat: Invalid AudioIssueDetector client. Not creating AudioIssueDetectorClient node.", __p, 0x12u);
    }

    v8 = 0;
    goto LABEL_36;
  }

  return 0;
}

- (BOOL)measureElapseTimeForMetric:(id)metric block:(id)block
{
  v32[3] = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  blockCopy = block;
  v8 = mach_absolute_time();
  v9 = blockCopy[2](blockCopy);
  v10 = mach_absolute_time();
  v11 = __udivti3();
  if (v10 >= v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v11;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v31[0] = @"BeginHostTime";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
  v32[0] = v14;
  v31[1] = @"EndHostTime";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
  v16 = v12 / 1000000.0;
  v32[1] = v15;
  v31[2] = @"DurationMilliSeconds";
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  v32[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

  publicMetrics = [(AVVCMetricsManager *)selfCopy publicMetrics];
  [publicMetrics setObject:v18 forKey:metricCopy];

  objc_sync_exit(selfCopy);
  if (kAVVCScope)
  {
    v20 = *kAVVCScope;
    if (!v20)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v20 = MEMORY[0x1E69E9C10];
    v21 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v23 = 136315906;
    v24 = "AVVCMetricsManager.mm";
    v25 = 1024;
    v26 = 490;
    v27 = 2112;
    v28 = metricCopy;
    v29 = 2048;
    v30 = v16;
    _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Measuring Elapsed Time for %@ : %f ms", &v23, 0x26u);
  }

LABEL_11:
  return v9;
}

void __44__AVVCMetricsManager_retrieveProfileMetrics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) avvcProfilingInfoDictionary];
    v7 = [*(a1 + 32) getStringDate:v5];
    [v6 setObject:v7 forKey:v8];
  }
}

- (id)getStringDate:(id)date
{
  dateCopy = date;
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [v4 setTimeZone:localTimeZone];

  [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSSSSSZZZZZ"];
  v6 = [v4 stringFromDate:dateCopy];

  return v6;
}

- (id)retrieveMetrics
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E695DF20];
  publicMetrics = [(AVVCMetricsManager *)selfCopy publicMetrics];
  v5 = [v3 dictionaryWithDictionary:publicMetrics];

  objc_sync_exit(selfCopy);

  return v5;
}

- (int64_t)reporterID
{
  v10 = *MEMORY[0x1E69E9840];
  mMetricsReporter = self->mMetricsReporter;
  if (!mMetricsReporter)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        return 0;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "AVVCMetricsManager.mm";
      v8 = 1024;
      v9 = 369;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d CAReporter object is nil", &v6, 0x12u);
    }

    return 0;
  }

  return [(CAReporter *)mMetricsReporter reporterID];
}

- (void)checkAndUpdateReporterID:(int64_t)d
{
  v13 = *MEMORY[0x1E69E9840];
  if (IsMetricsOwnedByAVVC(void)::onceToken != -1)
  {
    dispatch_once(&IsMetricsOwnedByAVVC(void)::onceToken, &__block_literal_global_209);
  }

  if ((IsMetricsOwnedByAVVC(void)::owned & 1) == 0 && [(CAReporter *)self->mMetricsReporter reporterID]<= 1)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_12:
        if (d)
        {
          [(CAReporter *)self->mMetricsReporter updateWithReporterID:d];
          publicMetrics = [(AVVCMetricsManager *)self publicMetrics];
          v8 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
          [publicMetrics setObject:v8 forKey:@"avvcReporterID"];
        }

        return;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "AVVCMetricsManager.mm";
      v11 = 1024;
      v12 = 348;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d CAReporter reporterID is Invalid", &v9, 0x12u);
    }

    goto LABEL_12;
  }
}

- (void)updateWithReporterID:(int64_t)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (IsMetricsOwnedByAVVC(void)::onceToken != -1)
  {
    dispatch_once(&IsMetricsOwnedByAVVC(void)::onceToken, &__block_literal_global_209);
  }

  if ((IsMetricsOwnedByAVVC(void)::owned & 1) == 0)
  {
    if (!d)
    {
      memset(buf, 0, 24);
      goto LABEL_14;
    }

    publicMetrics = [(AVVCMetricsManager *)self publicMetrics];
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
    [publicMetrics setObject:v6 forKey:@"avvcReporterID"];

    [(CAReporter *)self->mMetricsReporter updateWithReporterID:d];
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_13:
        memset(buf, 0, 24);
        std::vector<long long>::push_back[abi:ne200100](buf, &dCopy);
LABEL_14:
        mAudioIssueDetector = self->mAudioIssueDetector;
        if (!mAudioIssueDetector)
        {
          goto LABEL_28;
        }

        if (AudioIssueDetectorLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_256);
        }

        if (AudioIssueDetectorLibraryLoader(void)::libSym)
        {
          v10 = AudioIssueDetectorLibraryLoader(void)::libSym(mAudioIssueDetector, buf);
          if (!v10)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v10 = -1;
        }

        if (kAVVCScope)
        {
          v11 = *kAVVCScope;
          if (!v11)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v11 = MEMORY[0x1E69E9C10];
          v12 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v18 = 136315650;
          v19 = "AVVCMetricsManager.mm";
          v20 = 1024;
          v21 = 329;
          v22 = 1024;
          v23 = v10;
          _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioIssueDetectorClientUpdateReportingSessions returned error %d", v18, 0x18u);
        }

LABEL_28:
        mAudioDataAnalysisSiriSession = self->mAudioDataAnalysisSiriSession;
        if (mAudioDataAnalysisSiriSession == 561211748)
        {
          goto LABEL_42;
        }

        if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_278);
        }

        if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
        {
          v14 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(mAudioDataAnalysisSiriSession, buf);
          if (!v14)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v14 = 560033897;
        }

        if (kAVVCScope)
        {
          v15 = *kAVVCScope;
          if (!v15)
          {
LABEL_42:
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            return;
          }
        }

        else
        {
          v15 = MEMORY[0x1E69E9C10];
          v16 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *v18 = 136315650;
          v19 = "AVVCMetricsManager.mm";
          v20 = 1024;
          v21 = 335;
          v22 = 1024;
          v23 = v14;
          _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d ADAMClientUpdateReportingSessions returned error %d", v18, 0x18u);
        }

        goto LABEL_42;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AVVCMetricsManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 321;
      *&buf[18] = 2048;
      *&buf[20] = d;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCMetricsManager: UpdateWithReporterID: %lld", buf, 0x1Cu);
    }

    goto LABEL_13;
  }
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "AVVCMetricsManager.mm";
    v14 = 1024;
    v15 = 281;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCMetricsManager: dealloc", buf, 0x12u);
  }

LABEL_8:
  mMetricsReporter = self->mMetricsReporter;
  if (mMetricsReporter)
  {
    [(CAReporter *)mMetricsReporter stop];
    v6 = self->mMetricsReporter;
    self->mMetricsReporter = 0;
  }

  mAudioIssueDetector = self->mAudioIssueDetector;
  if (mAudioIssueDetector)
  {
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_256);
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      AudioIssueDetectorLibraryLoader(void)::libSym(mAudioIssueDetector);
    }
  }

  mAudioDataAnalysisSiriSession = self->mAudioDataAnalysisSiriSession;
  if (mAudioDataAnalysisSiriSession != 561211748)
  {
    if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_278);
    }

    if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
    {
      AudioDataAnalysisManagerLibraryLoader(void)::libSym(mAudioDataAnalysisSiriSession);
    }

    self->mAudioDataAnalysisSiriSession = 561211748;
  }

  mWorkQueue = self->mWorkQueue;
  if (mWorkQueue)
  {
    self->mWorkQueue = 0;
  }

  mADAMTransaction = self->mADAMTransaction;
  if (mADAMTransaction)
  {
    self->mADAMTransaction = 0;
  }

  [(AVVCMetricsManager *)self setPublicMetrics:0];
  [(AVVCMetricsManager *)self setAvvcProfilingInfoDictionary:0];
  v11.receiver = self;
  v11.super_class = AVVCMetricsManager;
  [(AVVCMetricsManager *)&v11 dealloc];
}

- (AVVCMetricsManager)init
{
  v57[3] = *MEMORY[0x1E69E9840];
  if (isAudioStatisticsAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioStatisticsAvailable(void)::onceToken, &__block_literal_global_161);
  }

  if (isAudioStatisticsAvailable(void)::audioStatisticsAvailable)
  {
    v46.receiver = self;
    v46.super_class = AVVCMetricsManager;
    v3 = [(AVVCMetricsManager *)&v46 init];
    if (!v3)
    {
LABEL_68:
      self = v3;
      selfCopy = self;
      goto LABEL_69;
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v3 setPublicMetrics:v4];

    publicMetrics = [v3 publicMetrics];
    v56[0] = @"BeginHostTime";
    v56[1] = @"EndHostTime";
    v57[0] = &unk_1F385A288;
    v57[1] = &unk_1F385A288;
    v56[2] = @"DurationMilliSeconds";
    v57[2] = &unk_1F385A288;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];
    [publicMetrics setObject:v6 forKey:@"SetSessionActiveTime"];

    publicMetrics2 = [v3 publicMetrics];
    v54[0] = @"BeginHostTime";
    v54[1] = @"EndHostTime";
    v55[0] = &unk_1F385A288;
    v55[1] = &unk_1F385A288;
    v54[2] = @"DurationMilliSeconds";
    v55[2] = &unk_1F385A288;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];
    [publicMetrics2 setObject:v8 forKey:@"SetSessionInactiveTime"];

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v3 setAvvcProfilingInfoDictionary:v9];

    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"profile_avvc", @"com.apple.avfoundation.avvc", 0);
    v3[48] = AppBooleanValue != 0;
    if (AppBooleanValue)
    {
      if (kAVVCScope)
      {
        v11 = *kAVVCScope;
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVVCMetricsManager.mm";
        *&buf[12] = 1024;
        *&buf[14] = 213;
        _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Profiling AVVC NOW.", buf, 0x12u);
      }
    }

LABEL_20:
    *(v3 + 24) = xmmword_1BA6CF3B0;
    v15 = *(v3 + 5);
    *(v3 + 5) = 0;

    if (IsMetricsOwnedByAVVC(void)::onceToken != -1)
    {
      dispatch_once(&IsMetricsOwnedByAVVC(void)::onceToken, &__block_literal_global_209);
    }

    if ((IsMetricsOwnedByAVVC(void)::owned & 1) == 0)
    {
      v27 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v28 = dispatch_queue_create("AVVCMetricsManager Work Queue", v27);
      v29 = *(v3 + 1);
      *(v3 + 1) = v28;

      v30 = [objc_alloc(MEMORY[0x1E69E4FE8]) initWithReporterID:1 serviceType:1];
      v31 = *(v3 + 2);
      *(v3 + 2) = v30;

      memset(buf, 0, 24);
      if (AudioIssueDetectorLibraryLoader(void)::once != -1)
      {
        dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_256);
      }

      if (AudioIssueDetectorLibraryLoader(void)::libSym)
      {
        v32 = AudioIssueDetectorLibraryLoader(void)::libSym(4, buf);
        *(v3 + 3) = v32;
        if (v32)
        {
          goto LABEL_61;
        }
      }

      else
      {
        *(v3 + 3) = 0;
      }

      if (kAVVCScope)
      {
        v34 = *kAVVCScope;
        if (!v34)
        {
LABEL_61:
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          goto LABEL_67;
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v41 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *v50 = 136315394;
        v51 = "AVVCMetricsManager.mm";
        v52 = 1024;
        v53 = 231;
        _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create AudioIssueDetector.", v50, 0x12u);
      }

      goto LABEL_61;
    }

    initWithNewReporterID = [objc_alloc(MEMORY[0x1E69E4FE8]) initWithNewReporterID];
    v17 = *(v3 + 2);
    *(v3 + 2) = initWithNewReporterID;

    v18 = *(v3 + 2);
    if (!v18)
    {
      if (kAVVCScope)
      {
        v33 = *kAVVCScope;
        if (!v33)
        {
LABEL_67:
          [v3 setVoiceTriggerStartHostTime:0];
          [v3 setCallToStartRecordHostTime:0];
          goto LABEL_68;
        }
      }

      else
      {
        v33 = MEMORY[0x1E69E9C10];
        v43 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AVVCMetricsManager.mm";
        *&buf[12] = 1024;
        *&buf[14] = 239;
        _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to create a CAReporter", buf, 0x12u);
      }

      goto LABEL_67;
    }

    [v18 setServiceType:1];
    v19 = *(v3 + 2);
    v48 = *MEMORY[0x1E69E4FE0];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v49 = bundleIdentifier;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    [v19 setConfiguration:v22];

    reporterID = [*(v3 + 2) reporterID];
    v45 = reporterID;
    publicMetrics3 = [v3 publicMetrics];
    v25 = [MEMORY[0x1E696AD98] numberWithLongLong:reporterID];
    [publicMetrics3 setObject:v25 forKey:@"avvcReporterID"];

    if (kAVVCScope)
    {
      v26 = *kAVVCScope;
      if (!v26)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v26 = MEMORY[0x1E69E9C10];
      v35 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AVVCMetricsManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 255;
      *&buf[18] = 2048;
      *&buf[20] = reporterID;
      _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created a reporter with id(%lld)", buf, 0x1Cu);
    }

LABEL_43:
    v36 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v37 = dispatch_queue_create("AVVCMetricsManager Work Queue", v36);
    v38 = *(v3 + 1);
    *(v3 + 1) = v37;

    memset(buf, 0, 24);
    std::vector<long long>::push_back[abi:ne200100](buf, &v45);
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_256);
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      v39 = AudioIssueDetectorLibraryLoader(void)::libSym(4, buf);
      *(v3 + 3) = v39;
      if (v39)
      {
LABEL_60:
        [*(v3 + 2) start];
        goto LABEL_61;
      }
    }

    else
    {
      *(v3 + 3) = 0;
    }

    if (kAVVCScope)
    {
      v40 = *kAVVCScope;
      if (!v40)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v40 = MEMORY[0x1E69E9C10];
      v42 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v50 = 136315394;
      v51 = "AVVCMetricsManager.mm";
      v52 = 1024;
      v53 = 263;
      _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create AudioIssueDetector.", v50, 0x12u);
    }

    goto LABEL_60;
  }

  if (kAVVCScope)
  {
    selfCopy = *kAVVCScope;
    if (!selfCopy)
    {
      goto LABEL_69;
    }
  }

  else
  {
    selfCopy = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AVVCMetricsManager.mm";
    *&buf[12] = 1024;
    *&buf[14] = 183;
    _os_log_impl(&dword_1BA5AC000, &selfCopy->super, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCMetricsManager not supported on this platform", buf, 0x12u);
  }

  selfCopy = 0;
LABEL_69:

  return selfCopy;
}

+ (void)destroySharedManager
{
  v16 = *MEMORY[0x1E69E9840];
  if (isAudioStatisticsAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioStatisticsAvailable(void)::onceToken, &__block_literal_global_161);
  }

  if (isAudioStatisticsAvailable(void)::audioStatisticsAvailable)
  {
    v2 = +[AVVCMetricsManager getLock];
    v3 = v2;
    if (v2)
    {
      v4 = (*(*v2 + 16))(v2);
    }

    else
    {
      v4 = 0;
    }

    --gReferenceCount;
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_21:
        if (!gReferenceCount)
        {
          v9 = gSharedInstance;
          gSharedInstance = 0;
        }

        if (v4)
        {
          (*(*v3 + 24))(v3);
        }

        return;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "AVVCMetricsManager.mm";
      v12 = 1024;
      v13 = 152;
      v14 = 2048;
      v15 = gReferenceCount;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCMetricsManager: destroySharedManager : referenceCount after decrementing = %llu", &v10, 0x1Cu);
    }

    goto LABEL_21;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "AVVCMetricsManager.mm";
    v12 = 1024;
    v13 = 138;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCMetricsManager not supported on this platform", &v10, 0x12u);
  }
}

+ (void)createSharedManager
{
  v17 = *MEMORY[0x1E69E9840];
  if (isAudioStatisticsAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAudioStatisticsAvailable(void)::onceToken, &__block_literal_global_161);
  }

  if (isAudioStatisticsAvailable(void)::audioStatisticsAvailable)
  {
    v2 = +[AVVCMetricsManager getLock];
    v3 = v2;
    if (v2)
    {
      v4 = (*(*v2 + 16))(v2);
    }

    else
    {
      v4 = 0;
    }

    if (!gSharedInstance)
    {
      v6 = objc_alloc_init(AVVCMetricsManager);
      v7 = gSharedInstance;
      gSharedInstance = v6;
    }

    ++gReferenceCount;
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_23:
        if (v4)
        {
          (*(*v3 + 24))(v3);
        }

        return;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = "AVVCMetricsManager.mm";
      v13 = 1024;
      v14 = 131;
      v15 = 2048;
      v16 = gReferenceCount;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCMetricsManager: createSharedManager: referenceCount after incrementing = %llu", buf, 0x1Cu);
    }

    goto LABEL_23;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v12 = "AVVCMetricsManager.mm";
    v13 = 1024;
    v14 = 114;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCMetricsManager not supported on this platform", buf, 0x12u);
  }
}

+ (void)getLock
{
  if (gOnceLockToken != -1)
  {
    dispatch_once(&gOnceLockToken, &__block_literal_global_2544);
  }

  return gMutex;
}

@end