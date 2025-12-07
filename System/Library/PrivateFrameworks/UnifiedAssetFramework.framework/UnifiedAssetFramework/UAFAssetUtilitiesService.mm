@interface UAFAssetUtilitiesService
- (BOOL)_updateDictationAvailabilityForLanguage:(id)language;
- (NSMutableDictionary)dictationStatus;
- (UAFAssetStatus)assetStatus;
- (UAFAssetUtilitiesService)init;
- (id)_getDiskSpaceNeededInBytesForLanguage:(id)language isDictation:(BOOL)dictation error:(id *)error;
- (id)getLanguage;
- (unint64_t)_checkFreeSpaceNeededForLanguage:(id)language isDictation:(BOOL)dictation;
- (void)_downloadDictationAssetsForLanguage:(id)language useCellular:(BOOL)cellular;
- (void)_downloadSiriAssetsWithCellular:(BOOL)cellular;
- (void)_downloadUnderstandingAssetsForLanguage:(id)language useCellular:(BOOL)cellular;
- (void)_handleDictationCompletionForLanguage:(id)language;
- (void)_handleDictationProgress:(unint64_t)progress status:(unint64_t)status language:(id)language;
- (void)_handleUpdateProgress:(unint64_t)progress status:(unint64_t)status language:(id)language;
- (void)_postAssetStateChangedNotification;
- (void)_siriDownloadCompleteForLanguage:(id)language;
- (void)_stopObserver;
- (void)_triggerCompletionTimerForLanguage:(id)language;
- (void)_updateAssetState:(unint64_t)state value:(id)value forLanguage:(id)language;
- (void)_updateDictationProgress:(unint64_t)progress language:(id)language;
- (void)_updateDictationState:(unint64_t)state value:(id)value forLanguage:(id)language;
- (void)_updateProgress:(unint64_t)progress forLanguage:(id)language;
- (void)_updateSiriAssetAvailability:(id)availability forLanguage:(id)language;
- (void)checkAssetStatus:(id)status;
- (void)dealloc;
- (void)diskSpaceNeededInBytesForLanguage:(id)language forClient:(unint64_t)client completion:(id)completion;
- (void)downloadDictationAssetsForLanguage:(id)language;
- (void)downloadSiriAssets;
- (void)downloadSiriAssetsOverCellular;
- (void)postAssetNotificationIfNeeded;
- (void)postDictationAssetNotificationForLanguage:(id)language;
- (void)resume;
- (void)startObserver;
- (void)suspend;
- (void)switchLanguage:(id)language;
- (void)updateAssetState:(unint64_t)state value:(id)value forLanguage:(id)language;
- (void)updateSiriAssetAvailabilityForLanguage:(id)language;
- (void)updateSiriAssetAvailabilityForLanguageSync:(id)sync;
- (void)updateSiriAssetAvailabilityForObserver;
@end

@implementation UAFAssetUtilitiesService

- (UAFAssetStatus)assetStatus
{
  assetStatus = self->_assetStatus;
  if (!assetStatus)
  {
    v4 = objc_alloc_init(UAFAssetStatus);
    v5 = self->_assetStatus;
    self->_assetStatus = v4;

    assetStatus = self->_assetStatus;
  }

  return assetStatus;
}

- (UAFAssetUtilitiesService)init
{
  v14.receiver = self;
  v14.super_class = UAFAssetUtilitiesService;
  v2 = [(UAFAssetUtilitiesService *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.UAF.Asset.download", v4);
    downloadQueue = v2->_downloadQueue;
    v2->_downloadQueue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INTERACTIVE, 0);

    v9 = dispatch_queue_create("com.apple.UAF.Asset.status", v8);
    statusQueue = v2->_statusQueue;
    v2->_statusQueue = v9;

    v11 = dispatch_group_create();
    statusGroup = v2->_statusGroup;
    v2->_statusGroup = v11;
  }

  return v2;
}

- (void)suspend
{
  v6 = *MEMORY[0x1E69E9840];
  if (!self->_queuesArePaused)
  {
    dispatch_suspend(self->_downloadQueue);
    dispatch_suspend(self->_statusQueue);
    v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[UAFAssetUtilitiesService suspend]";
      _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s #settings service suspended", &v4, 0xCu);
    }

    self->_queuesArePaused = 1;
  }
}

- (void)resume
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->_queuesArePaused)
  {
    dispatch_resume(self->_downloadQueue);
    dispatch_resume(self->_statusQueue);
    v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[UAFAssetUtilitiesService resume]";
      _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s #settings service resumed", &v4, 0xCu);
    }

    self->_queuesArePaused = 0;
  }
}

- (void)dealloc
{
  [(UAFAssetUtilitiesService *)self resume];
  [(UAFAssetUtilitiesService *)self _stopObserver];
  v3.receiver = self;
  v3.super_class = UAFAssetUtilitiesService;
  [(UAFAssetUtilitiesService *)&v3 dealloc];
}

- (void)startObserver
{
  if (!self->_observerEnabled)
  {
    self->_observerEnabled = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v5 = getAFSiriXAssetDidChangeDarwinNotification_0();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, AFSiriXAssetDidChangeCallback, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)_stopObserver
{
  if (self->_observerEnabled)
  {
    self->_observerEnabled = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v5 = getAFSiriXAssetDidChangeDarwinNotification_0();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v5, 0);
  }
}

- (void)downloadSiriAssets
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[UAFAssetUtilitiesService downloadSiriAssets]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s #settings download XPC", &v4, 0xCu);
  }

  [(UAFAssetUtilitiesService *)self _downloadSiriAssetsWithCellular:0];
}

- (void)downloadSiriAssetsOverCellular
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[UAFAssetUtilitiesService downloadSiriAssetsOverCellular]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s #settings download cellular XPC", &v4, 0xCu);
  }

  [(UAFAssetUtilitiesService *)self _downloadSiriAssetsWithCellular:1];
}

- (void)_downloadSiriAssetsWithCellular:(BOOL)cellular
{
  downloadQueue = [(UAFAssetUtilitiesService *)self downloadQueue];
  dispatch_assert_queue_not_V2(downloadQueue);

  objc_initWeak(&location, self);
  downloadQueue2 = [(UAFAssetUtilitiesService *)self downloadQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__UAFAssetUtilitiesService__downloadSiriAssetsWithCellular___block_invoke;
  block[3] = &unk_1E7FFD800;
  objc_copyWeak(&v8, &location);
  cellularCopy = cellular;
  dispatch_async(downloadQueue2, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __60__UAFAssetUtilitiesService__downloadSiriAssetsWithCellular___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained getLanguage];
    if (v4)
    {
      [v3 _downloadUnderstandingAssetsForLanguage:v4 useCellular:*(a1 + 40)];
    }

    else
    {
      v5 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315138;
        v7 = "[UAFAssetUtilitiesService _downloadSiriAssetsWithCellular:]_block_invoke";
        _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s #settings nil language, skipping download...", &v6, 0xCu);
      }

      [v3 updateAssetState:2 value:0 forLanguage:0];
    }
  }
}

- (void)_downloadUnderstandingAssetsForLanguage:(id)language useCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  v47 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  downloadQueue = [(UAFAssetUtilitiesService *)self downloadQueue];
  dispatch_assert_queue_V2(downloadQueue);

  v8 = [(UAFAssetUtilitiesService *)self _checkFreeSpaceNeededForLanguage:languageCopy isDictation:0];
  if (v8)
  {
    v9 = v8;
    v10 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[UAFAssetUtilitiesService _downloadUnderstandingAssetsForLanguage:useCellular:]";
      *&buf[12] = 2114;
      *&buf[14] = languageCopy;
      *&buf[22] = 2048;
      v46 = v9;
      _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s #settings Download requested for Siri assets (%{public}@) but hit out of space... %llu bytes needed", buf, 0x20u);
    }

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
    [(UAFAssetUtilitiesService *)self updateAssetState:6 value:v11 forLanguage:languageCopy];

    goto LABEL_27;
  }

  if (cellularCopy)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v12 addObject:@"UseCellular"];
    goto LABEL_9;
  }

  if (+[UAFCommonUtilities isInexpensiveNetworkAvailable])
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
LABEL_9:
    _isLegacySiriDevice = [(UAFAssetUtilitiesService *)self _isLegacySiriDevice];
    v14 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (_isLegacySiriDevice)
    {
      if (v15)
      {
        *buf = 136315650;
        *&buf[4] = "[UAFAssetUtilitiesService _downloadUnderstandingAssetsForLanguage:useCellular:]";
        *&buf[12] = 2114;
        *&buf[14] = languageCopy;
        *&buf[22] = 1024;
        LODWORD(v46) = cellularCopy;
        _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s #settings Download legacy Siri assets for language:%{public}@ cellular:%d", buf, 0x1Cu);
      }

      [(UAFAssetUtilitiesService *)self updateAssetState:1 value:0 forLanguage:languageCopy];
      v16 = +[UAFAssetSetManager sharedManager];
      [v16 updateAssetsForSubscriber:@"com.apple.siri.assistant" subscriptionName:0 policies:v12 queue:0 progress:0 completion:0];

      goto LABEL_26;
    }

    if (v15)
    {
      *buf = 136315650;
      *&buf[4] = "[UAFAssetUtilitiesService _downloadUnderstandingAssetsForLanguage:useCellular:]";
      *&buf[12] = 2114;
      *&buf[14] = languageCopy;
      *&buf[22] = 1024;
      LODWORD(v46) = cellularCopy;
      _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s #settings Download Siri assets for language:%{public}@ cellular:%d", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v46 = 2;
    statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__UAFAssetUtilitiesService__downloadUnderstandingAssetsForLanguage_useCellular___block_invoke;
    block[3] = &unk_1E7FFD070;
    block[4] = self;
    block[5] = buf;
    dispatch_sync(statusQueue, block);

    v18 = *(*&buf[8] + 24);
    if (v18 != 5)
    {
      if (v18 == 3)
      {
        v19 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *v41 = 136315394;
          v42 = "[UAFAssetUtilitiesService _downloadUnderstandingAssetsForLanguage:useCellular:]";
          v43 = 2114;
          v44 = languageCopy;
          _os_log_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_DEFAULT, "%s #settings Download requested for Siri assets skipped due to existing download in progress (%{public}@)...", v41, 0x16u);
        }

        goto LABEL_25;
      }

      [(UAFAssetUtilitiesService *)self updateAssetState:3 value:&unk_1F3B73140 forLanguage:languageCopy];
    }

    objc_initWeak(v41, self);
    statusQueue2 = [(UAFAssetUtilitiesService *)self statusQueue];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __80__UAFAssetUtilitiesService__downloadUnderstandingAssetsForLanguage_useCellular___block_invoke_300;
    v37[3] = &unk_1E7FFD160;
    objc_copyWeak(&v39, v41);
    v22 = languageCopy;
    v38 = v22;
    dispatch_async(statusQueue2, v37);

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __80__UAFAssetUtilitiesService__downloadUnderstandingAssetsForLanguage_useCellular___block_invoke_2;
    v34[3] = &unk_1E7FFD828;
    objc_copyWeak(&v36, v41);
    v23 = v22;
    v35 = v23;
    v24 = MEMORY[0x1BFB33950](v34);
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __80__UAFAssetUtilitiesService__downloadUnderstandingAssetsForLanguage_useCellular___block_invoke_3;
    v31 = &unk_1E7FFD160;
    objc_copyWeak(&v33, v41);
    v32 = v23;
    v25 = MEMORY[0x1BFB33950](&v28);
    v26 = [UAFAssetSetManager sharedManager:v28];
    statusQueue3 = [(UAFAssetUtilitiesService *)self statusQueue];
    [v26 updateAssetsForSubscriber:@"com.apple.siri.assistant" subscriptionName:0 policies:v12 queue:statusQueue3 progress:v24 completion:v25];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v36);

    objc_destroyWeak(&v39);
    objc_destroyWeak(v41);
LABEL_25:
    _Block_object_dispose(buf, 8);
LABEL_26:

    goto LABEL_27;
  }

  v20 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[UAFAssetUtilitiesService _downloadUnderstandingAssetsForLanguage:useCellular:]";
    *&buf[12] = 2114;
    *&buf[14] = languageCopy;
    _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s #settings Cannot download Siri assets for language %{public}@ due to network connectivity...", buf, 0x16u);
  }

  [(UAFAssetUtilitiesService *)self updateAssetState:2 value:0 forLanguage:languageCopy];
LABEL_27:
}

void __80__UAFAssetUtilitiesService__downloadUnderstandingAssetsForLanguage_useCellular___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetStatus];
  *(*(*(a1 + 40) + 8) + 24) = [v2 state];
}

void __80__UAFAssetUtilitiesService__downloadUnderstandingAssetsForLanguage_useCellular___block_invoke_300(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained uodAvailable];
    if (v3)
    {
      v5[4] = 0;
    }

    v4 = [*(a1 + 32) stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
    [UAFInstrumentationProvider logDownloadTriggerEventWithLanguage:v4 hasExistingAssets:v3 retryCount:v5[4]];
    if ((v3 & 1) == 0)
    {
      ++v5[4];
    }

    WeakRetained = v5;
  }
}

void __80__UAFAssetUtilitiesService__downloadUnderstandingAssetsForLanguage_useCellular___block_invoke_2(uint64_t a1, uint64_t a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleUpdateProgress:a3 status:a2 language:*(a1 + 32)];
}

void __80__UAFAssetUtilitiesService__downloadUnderstandingAssetsForLanguage_useCellular___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _siriDownloadCompleteForLanguage:*(a1 + 32)];
}

- (void)_handleUpdateProgress:(unint64_t)progress status:(unint64_t)status language:(id)language
{
  v17 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  dispatch_assert_queue_V2(statusQueue);

  v10 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = UAFSubscriptionDownloadStatusDescription(status);
    v13 = 136315394;
    v14 = "[UAFAssetUtilitiesService _handleUpdateProgress:status:language:]";
    v15 = 2112;
    v16 = v12;
    _os_log_debug_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEBUG, "%s #settings progress status %@", &v13, 0x16u);
  }

  if (status - 1 >= 3)
  {
    if (status != 4)
    {
      if (status == 5)
      {
        v11 = [(UAFAssetUtilitiesService *)self _getDiskSpaceNeededInBytesForLanguage:languageCopy isDictation:0 error:0];
        [(UAFAssetUtilitiesService *)self _updateAssetState:6 value:v11 forLanguage:languageCopy];
      }

      else
      {
        [(UAFAssetUtilitiesService *)self _updateAssetState:4 value:0 forLanguage:languageCopy];
      }
    }
  }

  else
  {
    [(UAFAssetUtilitiesService *)self _updateProgress:progress forLanguage:languageCopy];
  }
}

- (void)_updateProgress:(unint64_t)progress forLanguage:(id)language
{
  *&v16[13] = *MEMORY[0x1E69E9840];
  languageCopy = language;
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  dispatch_assert_queue_V2(statusQueue);

  v8 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[UAFAssetUtilitiesService _updateProgress:forLanguage:]";
    v15 = 1024;
    *v16 = progress;
    v16[2] = 2114;
    *&v16[3] = languageCopy;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s #settings Download progress %d%% for language %{public}@", &v13, 0x1Cu);
  }

  if (languageCopy)
  {
    assetStatus = [(UAFAssetUtilitiesService *)self assetStatus];
    state = [assetStatus state];

    if (state == 5)
    {
      v11 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315394;
        v14 = "[UAFAssetUtilitiesService _updateProgress:forLanguage:]";
        v15 = 2114;
        *v16 = languageCopy;
        _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s #settings UOD available already for %{public}@. Skip updating download progress...", &v13, 0x16u);
      }
    }

    else
    {
      if (progress >= 0x63)
      {
        v12 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315650;
          v14 = "[UAFAssetUtilitiesService _updateProgress:forLanguage:]";
          v15 = 1024;
          *v16 = 98;
          v16[2] = 2114;
          *&v16[3] = languageCopy;
          _os_log_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_DEFAULT, "%s #settings Download progress clamped to %d%% for language %{public}@", &v13, 0x1Cu);
        }

        progress = 98;
      }

      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:progress];
      [(UAFAssetUtilitiesService *)self _updateAssetState:3 value:v11 forLanguage:languageCopy];
    }
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[UAFAssetUtilitiesService _updateProgress:forLanguage:]";
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s #settings nil language", &v13, 0xCu);
    }
  }
}

- (void)_siriDownloadCompleteForLanguage:(id)language
{
  v14 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  dispatch_assert_queue_V2(statusQueue);

  v6 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[UAFAssetUtilitiesService _siriDownloadCompleteForLanguage:]";
    v12 = 2114;
    v13 = languageCopy;
    _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s #settings Download complete for language %{public}@", &v10, 0x16u);
  }

  if (languageCopy)
  {
    assetStatus = [(UAFAssetUtilitiesService *)self assetStatus];
    state = [assetStatus state];

    if (state != 5)
    {
      [(UAFAssetUtilitiesService *)self _updateAssetState:3 value:&unk_1F3B73158 forLanguage:languageCopy];
      [(UAFAssetUtilitiesService *)self _triggerCompletionTimerForLanguage:languageCopy];
      goto LABEL_11;
    }

    v9 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[UAFAssetUtilitiesService _siriDownloadCompleteForLanguage:]";
      v12 = 2114;
      v13 = languageCopy;
      _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s #settings UOD available already for %{public}@. Skip updating download progress...", &v10, 0x16u);
    }
  }

  else
  {
    v9 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[UAFAssetUtilitiesService _siriDownloadCompleteForLanguage:]";
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s #settings nil language", &v10, 0xCu);
    }
  }

LABEL_11:
}

- (void)_triggerCompletionTimerForLanguage:(id)language
{
  v14 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  dispatch_assert_queue_V2(statusQueue);

  if (self->_completionWatchdogInProgress)
  {
    v6 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[UAFAssetUtilitiesService _triggerCompletionTimerForLanguage:]";
      _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s #settings Skipping due to one attempt already in progress", buf, 0xCu);
    }
  }

  else
  {
    self->_completionWatchdogInProgress = 1;
    objc_initWeak(buf, self);
    v7 = dispatch_time(0, 20000000000);
    statusQueue2 = [(UAFAssetUtilitiesService *)self statusQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__UAFAssetUtilitiesService__triggerCompletionTimerForLanguage___block_invoke;
    v9[3] = &unk_1E7FFD160;
    objc_copyWeak(&v11, buf);
    v10 = languageCopy;
    dispatch_after(v7, statusQueue2, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __63__UAFAssetUtilitiesService__triggerCompletionTimerForLanguage___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained uodAvailable])
    {
      v3[21] = 0;
    }

    else
    {
      v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        *buf = 136315394;
        v12 = "[UAFAssetUtilitiesService _triggerCompletionTimerForLanguage:]_block_invoke";
        v13 = 2114;
        v14 = v7;
        _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s #settings UOD status watchdog hit. Fetching status again. Language = %{public}@", buf, 0x16u);
      }

      [v3 updateSiriAssetAvailabilityForLanguageSync:*(a1 + 32)];
      v5 = dispatch_time(0, 20000000000);
      v6 = [v3 statusQueue];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __63__UAFAssetUtilitiesService__triggerCompletionTimerForLanguage___block_invoke_313;
      v8[3] = &unk_1E7FFD160;
      objc_copyWeak(&v10, (a1 + 40));
      v9 = *(a1 + 32);
      dispatch_after(v5, v6, v8);

      objc_destroyWeak(&v10);
    }
  }
}

void __63__UAFAssetUtilitiesService__triggerCompletionTimerForLanguage___block_invoke_313(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained uodAvailable] & 1) == 0)
    {
      v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = 136315394;
        v9 = "[UAFAssetUtilitiesService _triggerCompletionTimerForLanguage:]_block_invoke";
        v10 = 2114;
        v11 = v7;
        _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s #settings UOD status watchdog hit. Download failed. Language = %{public}@", &v8, 0x16u);
      }

      v5 = [v3 assetStatus];
      v6 = [v5 state];

      if (v6 != 4)
      {
        [v3 _updateAssetState:4 value:0 forLanguage:*(a1 + 32)];
      }
    }

    v3[21] = 0;
  }
}

- (id)getLanguage
{
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  dispatch_assert_queue_not_V2(statusQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  statusQueue2 = [(UAFAssetUtilitiesService *)self statusQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__UAFAssetUtilitiesService_getLanguage__block_invoke;
  v7[3] = &unk_1E7FFD070;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(statusQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)switchLanguage:(id)language
{
  languageCopy = language;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__UAFAssetUtilitiesService_switchLanguage___block_invoke;
  block[3] = &unk_1E7FFD850;
  block[4] = self;
  v6 = languageCopy;
  v8 = v6;
  v9 = &v10;
  dispatch_sync(statusQueue, block);

  if (*(v11 + 24) == 1)
  {
    [(UAFAssetUtilitiesService *)self updateSiriAssetAvailabilityForLanguage:v6];
  }

  _Block_object_dispose(&v10, 8);
}

void __43__UAFAssetUtilitiesService_switchLanguage___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (([v2 isEqualToString:*(a1 + 40)] & 1) == 0)
  {
    *(*(a1 + 32) + 16) = 0;
    objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 32) _updateAssetState:2 value:0 forLanguage:*(a1 + 40)];
  }
}

- (void)postAssetNotificationIfNeeded
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[UAFAssetUtilitiesService postAssetNotificationIfNeeded]";
    _os_log_error_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_ERROR, "%s #settings posting Siri notification not supported.", &v3, 0xCu);
  }
}

- (void)updateSiriAssetAvailabilityForObserver
{
  statusGroup = [(UAFAssetUtilitiesService *)self statusGroup];
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__UAFAssetUtilitiesService_updateSiriAssetAvailabilityForObserver__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_group_async(statusGroup, statusQueue, block);
}

- (void)updateSiriAssetAvailabilityForLanguage:(id)language
{
  languageCopy = language;
  statusGroup = [(UAFAssetUtilitiesService *)self statusGroup];
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__UAFAssetUtilitiesService_updateSiriAssetAvailabilityForLanguage___block_invoke;
  v8[3] = &unk_1E7FFD098;
  v8[4] = self;
  v9 = languageCopy;
  v7 = languageCopy;
  dispatch_group_async(statusGroup, statusQueue, v8);
}

- (void)updateSiriAssetAvailabilityForLanguageSync:(id)sync
{
  v29 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  v5 = syncCopy;
  if (syncCopy)
  {
    v6 = [syncCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    location = 0;
    p_location = &location;
    v24 = 0x2050000000;
    v7 = getAFSettingsConnectionClass_softClass_0;
    v25 = getAFSettingsConnectionClass_softClass_0;
    if (!getAFSettingsConnectionClass_softClass_0)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getAFSettingsConnectionClass_block_invoke_0;
      v27 = &unk_1E7FFD1D8;
      v28 = &location;
      __getAFSettingsConnectionClass_block_invoke_0(buf);
      v7 = p_location[3];
    }

    v8 = v7;
    _Block_object_dispose(&location, 8);
    v9 = objc_alloc_init(v7);
    v10 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[UAFAssetUtilitiesService updateSiriAssetAvailabilityForLanguageSync:]";
      *&buf[12] = 2114;
      *&buf[14] = v5;
      _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s #settings server UOD check for language %{public}@", buf, 0x16u);
    }

    v11 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__UAFAssetUtilitiesService_updateSiriAssetAvailabilityForLanguageSync___block_invoke;
    v17[3] = &unk_1E7FFD8A0;
    v12 = v9;
    v18 = v12;
    objc_copyWeak(&v21, &location);
    v13 = v5;
    v19 = v13;
    v14 = v11;
    v20 = v14;
    [v12 getAssetStatusForLanguage:v6 completionHandler:v17];
    v15 = dispatch_time(0, 3000000000);
    if (dispatch_semaphore_wait(v14, v15))
    {
      v16 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[UAFAssetUtilitiesService updateSiriAssetAvailabilityForLanguageSync:]";
        *&buf[12] = 2114;
        *&buf[14] = v13;
        _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s #settings Failed to check assets availability due to timeout, language = %{public}@", buf, 0x16u);
      }
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __71__UAFAssetUtilitiesService_updateSiriAssetAvailabilityForLanguageSync___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained statusGroup];
    v8 = [v6 statusQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__UAFAssetUtilitiesService_updateSiriAssetAvailabilityForLanguageSync___block_invoke_2;
    block[3] = &unk_1E7FFD878;
    objc_copyWeak(&v12, (a1 + 56));
    v10 = v3;
    v11 = *(a1 + 40);
    dispatch_group_async(v7, v8, block);

    dispatch_semaphore_signal(*(a1 + 48));
    objc_destroyWeak(&v12);
  }
}

void __71__UAFAssetUtilitiesService_updateSiriAssetAvailabilityForLanguageSync___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateSiriAssetAvailability:*(a1 + 32) forLanguage:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_updateSiriAssetAvailability:(id)availability forLanguage:(id)language
{
  v23 = *MEMORY[0x1E69E9840];
  availabilityCopy = availability;
  languageCopy = language;
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  dispatch_assert_queue_V2(statusQueue);

  if (languageCopy)
  {
    v9 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315650;
      v18 = "[UAFAssetUtilitiesService _updateSiriAssetAvailability:forLanguage:]";
      v19 = 2112;
      v20 = availabilityCopy;
      v21 = 2114;
      v22 = languageCopy;
      _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s #settings update asset status %@ for language %{public}@", &v17, 0x20u);
    }

    if (+[UAFCommonUtilities deviceSupportFullUOD])
    {
      if ([UAFCommonUtilities isFullUODSupportedForStatus:availabilityCopy language:languageCopy])
      {
LABEL_6:
        [(UAFAssetUtilitiesService *)self uodAvailable];
        assetStatus = [(UAFAssetUtilitiesService *)self assetStatus];
        state = [assetStatus state];

        if (state != 5)
        {
          v12 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 136315394;
            v18 = "[UAFAssetUtilitiesService _updateSiriAssetAvailability:forLanguage:]";
            v19 = 2114;
            v20 = languageCopy;
            _os_log_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_DEFAULT, "%s #settings forcing state to UAFAssetStateFinished due to sudden UOD available for %{public}@...", &v17, 0x16u);
          }

          [(UAFAssetUtilitiesService *)self _updateAssetState:5 value:0 forLanguage:languageCopy];
        }

        v13 = 1;
LABEL_18:
        [(UAFAssetUtilitiesService *)self setUodAvailable:v13];
        goto LABEL_20;
      }
    }

    else
    {
      if (!+[UAFCommonUtilities deviceSupportAndUseHybridASR])
      {
        [(UAFAssetUtilitiesService *)self _updateAssetState:1 value:0 forLanguage:languageCopy];
        goto LABEL_20;
      }

      if ([UAFCommonUtilities isHybridUODSupportedForStatus:availabilityCopy language:languageCopy])
      {
        goto LABEL_6;
      }
    }

    assetStatus2 = [(UAFAssetUtilitiesService *)self assetStatus];
    state2 = [assetStatus2 state];

    if (state2 == 5)
    {
      v16 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "[UAFAssetUtilitiesService _updateSiriAssetAvailability:forLanguage:]";
        v19 = 2114;
        v20 = languageCopy;
        _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s #settings forcing state to UAFAssetStateNotStarted due to sudden UOD unavailable for %{public}@...", &v17, 0x16u);
      }

      [(UAFAssetUtilitiesService *)self _updateAssetState:2 value:&unk_1F3B73170 forLanguage:languageCopy];
    }

    v13 = 0;
    goto LABEL_18;
  }

LABEL_20:
}

- (void)downloadDictationAssetsForLanguage:(id)language
{
  v12 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v5 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[UAFAssetUtilitiesService downloadDictationAssetsForLanguage:]";
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s #settings download dictation XPC", buf, 0xCu);
  }

  downloadQueue = [(UAFAssetUtilitiesService *)self downloadQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__UAFAssetUtilitiesService_downloadDictationAssetsForLanguage___block_invoke;
  v8[3] = &unk_1E7FFD098;
  v8[4] = self;
  v9 = languageCopy;
  v7 = languageCopy;
  dispatch_async(downloadQueue, v8);
}

- (void)_downloadDictationAssetsForLanguage:(id)language useCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  v68 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  downloadQueue = [(UAFAssetUtilitiesService *)self downloadQueue];
  dispatch_assert_queue_V2(downloadQueue);

  if (languageCopy)
  {
    if (cellularCopy || +[UAFCommonUtilities isInexpensiveNetworkAvailable])
    {
      v8 = [(UAFAssetUtilitiesService *)self _checkFreeSpaceNeededForLanguage:languageCopy isDictation:1];
      if (v8)
      {
        v9 = v8;
        v10 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v66 = 136315650;
          *&v66[4] = "[UAFAssetUtilitiesService _downloadDictationAssetsForLanguage:useCellular:]";
          *&v66[12] = 2114;
          *&v66[14] = languageCopy;
          *&v66[22] = 2048;
          v67 = v9;
          _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s #settings Download requested for Dictation assets (%{public}@) but hit out of space... %llu bytes needed", v66, 0x20u);
        }

        statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __76__UAFAssetUtilitiesService__downloadDictationAssetsForLanguage_useCellular___block_invoke_317;
        block[3] = &unk_1E7FFD8C8;
        block[4] = self;
        v54 = v9;
        v53 = languageCopy;
        dispatch_async(statusQueue, block);
      }

      else
      {
        *v66 = 0;
        *&v66[8] = v66;
        *&v66[16] = 0x2020000000;
        v67 = 2;
        statusQueue2 = [(UAFAssetUtilitiesService *)self statusQueue];
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __76__UAFAssetUtilitiesService__downloadDictationAssetsForLanguage_useCellular___block_invoke_2;
        v49[3] = &unk_1E7FFD8F0;
        v51 = v66;
        v49[4] = self;
        v14 = languageCopy;
        v50 = v14;
        dispatch_sync(statusQueue2, v49);

        if (*(*&v66[8] + 24) == 3)
        {
          v15 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v63 = "[UAFAssetUtilitiesService _downloadDictationAssetsForLanguage:useCellular:]";
            v64 = 2114;
            v65 = v14;
            _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s #settings Already in progress download for dictation assets language %{public}@... Skipping...", buf, 0x16u);
          }
        }

        else
        {
          v15 = [v14 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
          v18 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v63 = "[UAFAssetUtilitiesService _downloadDictationAssetsForLanguage:useCellular:]";
            v64 = 2114;
            v65 = v15;
            _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s #settings Downloading dictation assets for language %{public}@...", buf, 0x16u);
          }

          v59 = v15;
          v60 = @"com.apple.siri.understanding";
          v58 = @"asr.language";
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v61 = v19;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];

          v37 = [@"dictation." stringByAppendingString:v15];
          v35 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:2592000.0];
          v34 = [[UAFAssetSetSubscription alloc] initWithName:v37 assetSets:v36 usageAliases:0 expires:v35];
          v20 = dispatch_semaphore_create(0);
          objc_initWeak(&location, self);
          v21 = +[UAFAssetSetManager sharedManager];
          v57 = v34;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __76__UAFAssetUtilitiesService__downloadDictationAssetsForLanguage_useCellular___block_invoke_328;
          v44[3] = &unk_1E7FFD918;
          objc_copyWeak(&v47, &location);
          v23 = v14;
          v45 = v23;
          v24 = v20;
          v46 = v24;
          [v21 subscribe:@"com.apple.uaf.assetutil" subscriptions:v22 queue:0 completion:v44];

          v25 = dispatch_time(0, 3000000000);
          if (dispatch_semaphore_wait(v24, v25))
          {
            v26 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v63 = "[UAFAssetUtilitiesService _downloadDictationAssetsForLanguage:useCellular:]";
              v64 = 2114;
              v65 = v23;
              _os_log_error_impl(&dword_1BCF2C000, v26, OS_LOG_TYPE_ERROR, "%s #settings Failed to subscribe to dictation language %{public}@ due to timeout", buf, 0x16u);
            }
          }

          else
          {
            v41[0] = MEMORY[0x1E69E9820];
            v41[1] = 3221225472;
            v41[2] = __76__UAFAssetUtilitiesService__downloadDictationAssetsForLanguage_useCellular___block_invoke_330;
            v41[3] = &unk_1E7FFD828;
            objc_copyWeak(&v43, &location);
            v27 = v23;
            v42 = v27;
            v28 = MEMORY[0x1BFB33950](v41);
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __76__UAFAssetUtilitiesService__downloadDictationAssetsForLanguage_useCellular___block_invoke_2_331;
            v38[3] = &unk_1E7FFD160;
            objc_copyWeak(&v40, &location);
            v39 = v27;
            v29 = MEMORY[0x1BFB33950](v38);
            v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v31 = v30;
            if (cellularCopy)
            {
              [v30 addObject:@"UseCellular"];
            }

            v32 = +[UAFAssetSetManager sharedManager];
            statusQueue3 = [(UAFAssetUtilitiesService *)self statusQueue];
            [v32 updateAssetsForSubscriber:@"com.apple.uaf.assetutil" subscriptionName:v37 policies:v31 queue:statusQueue3 progress:v28 completion:v29];

            objc_destroyWeak(&v40);
            objc_destroyWeak(&v43);
          }

          objc_destroyWeak(&v47);
          objc_destroyWeak(&location);
        }

        _Block_object_dispose(v66, 8);
      }
    }

    else
    {
      v16 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v66 = 136315394;
        *&v66[4] = "[UAFAssetUtilitiesService _downloadDictationAssetsForLanguage:useCellular:]";
        *&v66[12] = 2114;
        *&v66[14] = languageCopy;
        _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s #settings Cannot download Dictation assets for %{public}@ due to network connectivity...", v66, 0x16u);
      }

      statusQueue4 = [(UAFAssetUtilitiesService *)self statusQueue];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __76__UAFAssetUtilitiesService__downloadDictationAssetsForLanguage_useCellular___block_invoke;
      v55[3] = &unk_1E7FFD098;
      v55[4] = self;
      v56 = languageCopy;
      dispatch_async(statusQueue4, v55);
    }
  }

  else
  {
    v12 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v66 = 136315138;
      *&v66[4] = "[UAFAssetUtilitiesService _downloadDictationAssetsForLanguage:useCellular:]";
      _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s #settings Cannot download Dictation assets due to nil language", v66, 0xCu);
    }
  }
}

void __76__UAFAssetUtilitiesService__downloadDictationAssetsForLanguage_useCellular___block_invoke_317(void *a1)
{
  v2 = a1[4];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[6]];
  [v2 _updateDictationState:6 value:v3 forLanguage:a1[5]];
}

void __76__UAFAssetUtilitiesService__downloadDictationAssetsForLanguage_useCellular___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) dictationStatus];
  v2 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v2 state];
}

void __76__UAFAssetUtilitiesService__downloadDictationAssetsForLanguage_useCellular___block_invoke_328(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v7 = 136315650;
        v8 = "[UAFAssetUtilitiesService _downloadDictationAssetsForLanguage:useCellular:]_block_invoke";
        v9 = 2114;
        v10 = v6;
        v11 = 2112;
        v12 = v3;
        _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s #settings Failed to subscribe to dictation language %{public}@ due to error %@", &v7, 0x20u);
      }
    }

    else
    {
      dispatch_semaphore_signal(*(a1 + 40));
    }
  }
}

void __76__UAFAssetUtilitiesService__downloadDictationAssetsForLanguage_useCellular___block_invoke_330(uint64_t a1, uint64_t a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleDictationProgress:a3 status:a2 language:*(a1 + 32)];
}

void __76__UAFAssetUtilitiesService__downloadDictationAssetsForLanguage_useCellular___block_invoke_2_331(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleDictationCompletionForLanguage:*(a1 + 32)];
}

- (void)_handleDictationProgress:(unint64_t)progress status:(unint64_t)status language:(id)language
{
  languageCopy = language;
  v9 = languageCopy;
  if ((status & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v11 = languageCopy;
    [(UAFAssetUtilitiesService *)self _updateDictationProgress:progress language:languageCopy];
  }

  else
  {
    if (status == 4)
    {
      goto LABEL_8;
    }

    v11 = languageCopy;
    if (status == 5)
    {
      v10 = [(UAFAssetUtilitiesService *)self _getDiskSpaceNeededInBytesForLanguage:languageCopy isDictation:1 error:0];
      [(UAFAssetUtilitiesService *)self _updateDictationState:6 value:v10 forLanguage:v11];
    }

    else
    {
      [(UAFAssetUtilitiesService *)self _updateDictationState:4 value:0 forLanguage:languageCopy];
    }
  }

  v9 = v11;
LABEL_8:
}

- (void)_updateDictationProgress:(unint64_t)progress language:(id)language
{
  v17 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  dispatch_assert_queue_V2(statusQueue);

  v8 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[UAFAssetUtilitiesService _updateDictationProgress:language:]";
    v13 = 1024;
    progressCopy = progress;
    v15 = 2114;
    v16 = languageCopy;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s #settings Dictation download percent %d for language %{public}@", &v11, 0x1Cu);
  }

  if (progress >= 0x63)
  {
    v9 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[UAFAssetUtilitiesService _updateDictationProgress:language:]";
      v13 = 1024;
      progressCopy = 98;
      v15 = 2114;
      v16 = languageCopy;
      _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s #settings Download progress clamped to %d%% for language %{public}@", &v11, 0x1Cu);
    }

    progress = 98;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:progress];
  [(UAFAssetUtilitiesService *)self _updateDictationState:3 value:v10 forLanguage:languageCopy];
}

- (void)_handleDictationCompletionForLanguage:(id)language
{
  v17 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  dispatch_assert_queue_V2(statusQueue);

  v6 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[UAFAssetUtilitiesService _handleDictationCompletionForLanguage:]";
    v15 = 2114;
    v16 = languageCopy;
    _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s #settings Dictation download complete for %{public}@", buf, 0x16u);
  }

  [(UAFAssetUtilitiesService *)self _updateDictationState:3 value:&unk_1F3B73158 forLanguage:languageCopy];
  objc_initWeak(buf, self);
  v7 = dispatch_time(0, 3000000000);
  statusQueue2 = [(UAFAssetUtilitiesService *)self statusQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__UAFAssetUtilitiesService__handleDictationCompletionForLanguage___block_invoke;
  v10[3] = &unk_1E7FFD160;
  objc_copyWeak(&v12, buf);
  v11 = languageCopy;
  v9 = languageCopy;
  dispatch_after(v7, statusQueue2, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __66__UAFAssetUtilitiesService__handleDictationCompletionForLanguage___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained _updateDictationAvailabilityForLanguage:*(a1 + 32)] & 1) == 0)
  {
    v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 136315394;
      v12 = "[UAFAssetUtilitiesService _handleDictationCompletionForLanguage:]_block_invoke";
      v13 = 2114;
      v14 = v7;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s #settings Dictation still not available after download completed for language %{public}@", buf, 0x16u);
    }

    v5 = dispatch_time(0, 3000000000);
    v6 = [v3 statusQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__UAFAssetUtilitiesService__handleDictationCompletionForLanguage___block_invoke_332;
    v8[3] = &unk_1E7FFD160;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = *(a1 + 32);
    dispatch_after(v5, v6, v8);

    objc_destroyWeak(&v10);
  }
}

void __66__UAFAssetUtilitiesService__handleDictationCompletionForLanguage___block_invoke_332(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained _updateDictationAvailabilityForLanguage:*(a1 + 32)] & 1) == 0)
  {
    v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 136315394;
      v7 = "[UAFAssetUtilitiesService _handleDictationCompletionForLanguage:]_block_invoke";
      v8 = 2114;
      v9 = v5;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s #settings Dictation still not available after retrying availability check for language %{public}@", &v6, 0x16u);
    }

    [v3 _updateDictationState:4 value:0 forLanguage:*(a1 + 32)];
  }
}

- (BOOL)_updateDictationAvailabilityForLanguage:(id)language
{
  v13 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v5 = [UAFAssetStatus dictationAvailableForLanguage:languageCopy];
  v6 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[UAFAssetUtilitiesService _updateDictationAvailabilityForLanguage:]";
      v11 = 2114;
      v12 = languageCopy;
      _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s #settings Dictation available for %{public}@", &v9, 0x16u);
    }

    [(UAFAssetUtilitiesService *)self _updateDictationState:5 value:0 forLanguage:languageCopy];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[UAFAssetUtilitiesService _updateDictationAvailabilityForLanguage:]";
      v11 = 2114;
      v12 = languageCopy;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s #settings Dictation still not available after successful download for language %{public}@", &v9, 0x16u);
    }
  }

  return v5;
}

- (void)postDictationAssetNotificationForLanguage:(id)language
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[UAFAssetUtilitiesService postDictationAssetNotificationForLanguage:]";
    _os_log_error_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_ERROR, "%s #settings posting Dictation notification not supported.", &v4, 0xCu);
  }
}

- (NSMutableDictionary)dictationStatus
{
  dictationStatus = self->_dictationStatus;
  if (!dictationStatus)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_dictationStatus;
    self->_dictationStatus = v4;

    dictationStatus = self->_dictationStatus;
  }

  return dictationStatus;
}

- (void)_updateDictationState:(unint64_t)state value:(id)value forLanguage:(id)language
{
  languageCopy = language;
  valueCopy = value;
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  dispatch_assert_queue_V2(statusQueue);

  dictationStatus = [(UAFAssetUtilitiesService *)self dictationStatus];
  v11 = [dictationStatus objectForKeyedSubscript:languageCopy];

  if (!v11)
  {
    v12 = objc_alloc_init(UAFAssetStatus);
    dictationStatus2 = [(UAFAssetUtilitiesService *)self dictationStatus];
    [dictationStatus2 setObject:v12 forKeyedSubscript:languageCopy];
  }

  dictationStatus3 = [(UAFAssetUtilitiesService *)self dictationStatus];
  v15 = [dictationStatus3 objectForKeyedSubscript:languageCopy];
  [v15 setState:state];

  dictationStatus4 = [(UAFAssetUtilitiesService *)self dictationStatus];
  v17 = [dictationStatus4 objectForKeyedSubscript:languageCopy];
  [v17 setValue:valueCopy];
}

- (void)checkAssetStatus:(id)status
{
  v12 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  dispatch_assert_queue_not_V2(statusQueue);

  if (statusCopy)
  {
    statusQueue2 = [(UAFAssetUtilitiesService *)self statusQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__UAFAssetUtilitiesService_checkAssetStatus___block_invoke;
    v8[3] = &unk_1E7FFD940;
    v8[4] = self;
    v9 = statusCopy;
    dispatch_async(statusQueue2, v8);

    v7 = v9;
  }

  else
  {
    v7 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "[UAFAssetUtilitiesService checkAssetStatus:]";
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s #settings nil completion", buf, 0xCu);
    }
  }
}

void __45__UAFAssetUtilitiesService_checkAssetStatus___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) assetStatus];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)updateAssetState:(unint64_t)state value:(id)value forLanguage:(id)language
{
  valueCopy = value;
  languageCopy = language;
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  dispatch_assert_queue_not_V2(statusQueue);

  statusQueue2 = [(UAFAssetUtilitiesService *)self statusQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__UAFAssetUtilitiesService_updateAssetState_value_forLanguage___block_invoke;
  v14[3] = &unk_1E7FFD968;
  v14[4] = self;
  v15 = valueCopy;
  v16 = languageCopy;
  stateCopy = state;
  v12 = languageCopy;
  v13 = valueCopy;
  dispatch_async(statusQueue2, v14);
}

- (void)_updateAssetState:(unint64_t)state value:(id)value forLanguage:(id)language
{
  v26 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  languageCopy = language;
  statusQueue = [(UAFAssetUtilitiesService *)self statusQueue];
  dispatch_assert_queue_V2(statusQueue);

  if (languageCopy)
  {
    goto LABEL_4;
  }

  v11 = +[UAFCommonUtilities currentAssistantLanguage];
  if (v11)
  {
    languageCopy = v11;
LABEL_4:
    v12 = [languageCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    assetStatus = [(UAFAssetUtilitiesService *)self assetStatus];
    [assetStatus setState:state];

    assetStatus2 = [(UAFAssetUtilitiesService *)self assetStatus];
    [assetStatus2 setValue:valueCopy];

    assetStatus3 = [(UAFAssetUtilitiesService *)self assetStatus];
    [assetStatus3 setSiriLanguage:v12];

    v16 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [UAFAssetStatus stringFromUAFAssetState:state];
      v18 = 136315906;
      v19 = "[UAFAssetUtilitiesService _updateAssetState:value:forLanguage:]";
      v20 = 2114;
      v21 = v12;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = valueCopy;
      _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s #settings Updated Siri asset status for %{public}@ with state %@ and value %@", &v18, 0x2Au);
    }

    [(UAFAssetUtilitiesService *)self _postAssetStateChangedNotification];
    goto LABEL_7;
  }

  languageCopy = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(languageCopy, OS_LOG_TYPE_ERROR))
  {
    v18 = 136315138;
    v19 = "[UAFAssetUtilitiesService _updateAssetState:value:forLanguage:]";
    _os_log_error_impl(&dword_1BCF2C000, languageCopy, OS_LOG_TYPE_ERROR, "%s #settings nil language", &v18, 0xCu);
  }

LABEL_7:
}

- (void)_postAssetStateChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kUAFAssetStatusDidChangeDarwinNotification", 0, 0, 1u);
}

- (void)diskSpaceNeededInBytesForLanguage:(id)language forClient:(unint64_t)client completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  completionCopy = completion;
  if (completionCopy)
  {
    v12 = 0;
    v10 = [(UAFAssetUtilitiesService *)self _getDiskSpaceNeededInBytesForLanguage:languageCopy isDictation:client == 1 error:&v12];
    v11 = v12;
    completionCopy[2](completionCopy, v10, v11);
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[UAFAssetUtilitiesService diskSpaceNeededInBytesForLanguage:forClient:completion:]";
      v15 = 2114;
      v16 = languageCopy;
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s #settings diskSpaceNeededInBytesForLanguage with nil completion, language = %{public}@", buf, 0x16u);
    }
  }
}

- (id)_getDiskSpaceNeededInBytesForLanguage:(id)language isDictation:(BOOL)dictation error:(id *)error
{
  dictationCopy = dictation;
  v27[1] = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if (languageCopy)
  {
    v8 = @"com.apple.siri.assistant";
    if (dictationCopy)
    {
      v8 = @"com.apple.uaf.assetutil";
    }

    v9 = v8;
    if (dictationCopy)
    {
      v10 = [languageCopy stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
      v11 = [@"dictation." stringByAppendingString:v10];
    }

    else
    {
      v11 = 0;
    }

    v15 = +[UAFAssetSetManager sharedManager];
    v16 = [v15 diskSpaceNeededForSubscriber:v9 subscriptionName:v11 error:error];

    unsignedLongLongValue = [v16 unsignedLongLongValue];
    v18 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (unsignedLongLongValue)
    {
      v20 = v16;
      if (v19)
      {
        v22 = 136315394;
        v23 = "[UAFAssetUtilitiesService _getDiskSpaceNeededInBytesForLanguage:isDictation:error:]";
        v24 = 2048;
        unsignedLongLongValue2 = [v16 unsignedLongLongValue];
        _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s #settings return size %llu", &v22, 0x16u);
        v20 = v16;
      }
    }

    else
    {
      v20 = &unk_1F3B731D0;
      if (v19)
      {
        v22 = 136315394;
        v23 = "[UAFAssetUtilitiesService _getDiskSpaceNeededInBytesForLanguage:isDictation:error:]";
        v24 = 2048;
        unsignedLongLongValue2 = [&unk_1F3B731D0 unsignedLongLongValue];
        _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s #settings return default size %llu", &v22, 0x16u);
      }
    }

    v14 = v20;
    goto LABEL_17;
  }

  v12 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v22 = 136315138;
    v23 = "[UAFAssetUtilitiesService _getDiskSpaceNeededInBytesForLanguage:isDictation:error:]";
    _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s #settings nil language", &v22, 0xCu);
  }

  if (error)
  {
    v13 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A588];
    v27[0] = @"nil language";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    *error = [v13 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v9];
    v14 = &unk_1F3B73140;
LABEL_17:

    goto LABEL_18;
  }

  v14 = &unk_1F3B73140;
LABEL_18:

  return v14;
}

- (unint64_t)_checkFreeSpaceNeededForLanguage:(id)language isDictation:(BOOL)dictation
{
  dictationCopy = dictation;
  v21 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v14 = 0;
  v7 = [(UAFAssetUtilitiesService *)self _getDiskSpaceNeededInBytesForLanguage:languageCopy isDictation:dictationCopy error:&v14];
  v8 = v14;
  if (v8)
  {
    v9 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "[UAFAssetUtilitiesService _checkFreeSpaceNeededForLanguage:isDictation:]";
      v17 = 2112;
      v18 = v8;
      v19 = 2114;
      v20 = languageCopy;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s #settings Failed to check assets download size due to error %@, language = %{public}@", buf, 0x20u);
    }
  }

  unsignedLongLongValue = [v7 unsignedLongLongValue];
  if (unsignedLongLongValue)
  {
    v11 = [UAFCommonUtilities getFreeDiskSpaceNeededInBytes:unsignedLongLongValue];
  }

  else
  {
    v12 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[UAFAssetUtilitiesService _checkFreeSpaceNeededForLanguage:isDictation:]";
      v17 = 2114;
      v18 = languageCopy;
      _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s #settings Returning enough space for assets even with an unknown size requested, language = %{public}@", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

@end