@interface TLAlertQueuePlayerAnalyticsRecorder
+ (TLAlertQueuePlayerAnalyticsRecorder)sharedRecorder;
- (id)_init;
- (void)_beginMonitoringDisplayLayout;
- (void)_updateWithDisplayLayout:(id)layout;
- (void)dealloc;
- (void)recordAnalytics:(id)analytics;
@end

@implementation TLAlertQueuePlayerAnalyticsRecorder

+ (TLAlertQueuePlayerAnalyticsRecorder)sharedRecorder
{
  if (sharedRecorder__TLAlertQueuePlayerAnalyticsRecorderSharedInstanceOnceToken != -1)
  {
    +[TLAlertQueuePlayerAnalyticsRecorder sharedRecorder];
  }

  v3 = sharedRecorder__TLAlertQueuePlayerAnalyticsRecorderSharedInstance;

  return v3;
}

uint64_t __53__TLAlertQueuePlayerAnalyticsRecorder_sharedRecorder__block_invoke()
{
  sharedRecorder__TLAlertQueuePlayerAnalyticsRecorderSharedInstance = [[TLAlertQueuePlayerAnalyticsRecorder alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = TLAlertQueuePlayerAnalyticsRecorder;
  v2 = [(TLAlertQueuePlayerAnalyticsRecorder *)&v6 init];
  if (v2)
  {
    v3 = +[TLAudioQueue sharedAudioQueue];
    audioQueue = v2->_audioQueue;
    v2->_audioQueue = v3;

    v2->_isDisplayInStandByMode = 0;
    [(TLAlertQueuePlayerAnalyticsRecorder *)v2 _beginMonitoringDisplayLayout];
  }

  return v2;
}

- (void)dealloc
{
  audioQueue = self->_audioQueue;
  self->_audioQueue = 0;
  v4 = audioQueue;

  [(TLAudioQueue *)v4 performSynchronousTaskWithBlock:&__block_literal_global_3];
  v5.receiver = self;
  v5.super_class = TLAlertQueuePlayerAnalyticsRecorder;
  [(TLAlertQueuePlayerAnalyticsRecorder *)&v5 dealloc];
}

- (void)recordAnalytics:(id)analytics
{
  v45 = *MEMORY[0x1E69E9840];
  analyticsCopy = analytics;
  assertRunningOnAudioQueue = [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v7 = TLLogPlayback(assertRunningOnAudioQueue, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v43 = 2114;
    v44 = analyticsCopy;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Recording analytics: %{public}@", buf, 0x16u);
  }

  v39[0] = @"alertType";
  v38 = NSStringFromTLAlertType([analyticsCopy alertType]);
  v40[0] = v38;
  v39[1] = @"toneIdentifier";
  toneIdentifierForAnalytics = [analyticsCopy toneIdentifierForAnalytics];
  v40[1] = toneIdentifierForAnalytics;
  v39[2] = @"toneKind";
  toneKindForAnalytics = [analyticsCopy toneKindForAnalytics];
  v40[2] = toneKindForAnalytics;
  v39[3] = @"userVolume";
  v8 = MEMORY[0x1E696AD98];
  [analyticsCopy userVolume];
  v35 = [v8 numberWithFloat:?];
  v40[3] = v35;
  v39[4] = @"toneWasAttenuated";
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(analyticsCopy, "didAttenuatePlayback")}];
  v40[4] = v34;
  v39[5] = @"timeToAttenuate";
  v9 = MEMORY[0x1E696AD98];
  didAttenuatePlayback = [analyticsCopy didAttenuatePlayback];
  v11 = 0.0;
  if (didAttenuatePlayback)
  {
    [analyticsCopy attenuationTime];
    v13 = v12;
    [analyticsCopy startTime];
    v11 = v13 - v14;
  }

  v15 = [v9 numberWithDouble:v11];
  v40[5] = v15;
  v39[6] = @"timeToStopAlert";
  v16 = MEMORY[0x1E696AD98];
  [analyticsCopy stopTime];
  v18 = v17;
  [analyticsCopy startTime];
  v20 = [v16 numberWithDouble:v18 - v19];
  v40[6] = v20;
  v39[7] = @"isDisplayInStandByMode";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDisplayInStandByMode];
  v40[7] = v21;
  v39[8] = @"deviceChargingOnToneStart";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(analyticsCopy, "wasDeviceChargingOnStart")}];
  v40[8] = v22;
  v39[9] = @"deviceChargingOnToneStop";
  selfCopy2 = self;
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(analyticsCopy, "wasDeviceChargingOnStop")}];
  v40[9] = v23;
  v39[10] = @"deviceHasFaceID";
  v24 = MEMORY[0x1E696AD98];
  v25 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  v26 = [v24 numberWithBool:{objc_msgSend(v25, "hasFaceIDCapability")}];
  v40[10] = v26;
  v39[11] = @"deviceHasAttentionAwarenessEnabled";
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(analyticsCopy, "isAttentionAwarenessSupportEnabled")}];
  v40[11] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:12];

  v29 = [objc_alloc(MEMORY[0x1E698D470]) initWithReporterID:{objc_msgSend(analyticsCopy, "reporterID")}];
  v30 = [v29 sendMessage:v28 category:4 type:2];
  v32 = TLLogPlayback(v30, v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = selfCopy2;
    v43 = 2114;
    v44 = v28;
    _os_log_impl(&dword_1D9356000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Did send analytics message: %{public}@", buf, 0x16u);
  }
}

- (void)_beginMonitoringDisplayLayout
{
  configurationForDefaultMainDisplayMonitor = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
  [configurationForDefaultMainDisplayMonitor setNeedsUserInteractivePriority:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__TLAlertQueuePlayerAnalyticsRecorder__beginMonitoringDisplayLayout__block_invoke;
  v6[3] = &unk_1E8579800;
  v6[4] = self;
  [configurationForDefaultMainDisplayMonitor setTransitionHandler:v6];
  v4 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = v4;
}

void __68__TLAlertQueuePlayerAnalyticsRecorder__beginMonitoringDisplayLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__TLAlertQueuePlayerAnalyticsRecorder__beginMonitoringDisplayLayout__block_invoke_2;
    v8[3] = &unk_1E8578900;
    v8[4] = v6;
    v9 = v4;
    [v7 performTaskWithBlock:v8];
  }
}

- (void)_updateWithDisplayLayout:(id)layout
{
  v27 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  [layoutCopy elements];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = *MEMORY[0x1E69D4418];
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        identifier = [*(*(&v18 + 1) + 8 * v10) identifier];
        v12 = [identifier isEqualToString:v9];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  if (self->_isDisplayInStandByMode != v13 || !self->_hasInitializedDisplayInStandByModeFlag)
  {
    self->_isDisplayInStandByMode = v13;
    self->_hasInitializedDisplayInStandByModeFlag = 1;
    v16 = TLLogPlayback(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      isDisplayInStandByMode = self->_isDisplayInStandByMode;
      *buf = 138543618;
      selfCopy = self;
      v24 = 1024;
      v25 = isDisplayInStandByMode;
      _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: isDisplayInStandByMode = %{BOOL}u", buf, 0x12u);
    }
  }
}

@end