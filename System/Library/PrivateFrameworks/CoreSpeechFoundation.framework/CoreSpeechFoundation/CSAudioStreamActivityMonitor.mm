@interface CSAudioStreamActivityMonitor
+ (id)sharedInstance;
- (BOOL)hasNonVoiceTriggerStreamsOrStreamHoldersActive;
- (CSAudioStreamActivityMonitor)init;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)notifyActiveStreamsChanged:(id)changed streamHolders:(id)holders streamId:(unint64_t)id;
@end

@implementation CSAudioStreamActivityMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1620 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1620, &__block_literal_global_1621);
  }

  v3 = sharedInstance_monitor;

  return v3;
}

- (BOOL)hasNonVoiceTriggerStreamsOrStreamHoldersActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__CSAudioStreamActivityMonitor_hasNonVoiceTriggerStreamsOrStreamHoldersActive__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)notifyActiveStreamsChanged:(id)changed streamHolders:(id)holders streamId:(unint64_t)id
{
  v51 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  holdersCopy = holders;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = changedCopy;
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    v32 = holdersCopy;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        streamRequest = [v13 streamRequest];
        if ([streamRequest clientIdentity] == 3)
        {
          goto LABEL_14;
        }

        streamRequest2 = [v13 streamRequest];
        if ([streamRequest2 clientIdentity] == 4)
        {

LABEL_14:
LABEL_15:
          v19 = CSLogContextFacilityCoreSpeech;
          v18 = 1;
          holdersCopy = v32;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
          {
            v20 = v19;
            name = [v13 name];
            *buf = 136315394;
            v47 = "[CSAudioStreamActivityMonitor notifyActiveStreamsChanged:streamHolders:streamId:]";
            v48 = 2112;
            v49 = name;
            _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_INFO, "%s stream %@ is active", buf, 0x16u);
          }

          goto LABEL_17;
        }

        streamRequest3 = [v13 streamRequest];
        clientIdentity = [streamRequest3 clientIdentity];

        if (clientIdentity == 9)
        {
          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v41 objects:v50 count:16];
      v18 = 0;
      holdersCopy = v32;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_17:

  v40 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v22 = holdersCopy;
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    while (2)
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v37 + 1) + 8 * j);
        if ([v27 clientIdentity] == 6)
        {
          v28 = CSLogContextFacilityCoreSpeech;
          v18 = 1;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
          {
            v29 = v28;
            name2 = [v27 name];
            *buf = 136315394;
            v47 = "[CSAudioStreamActivityMonitor notifyActiveStreamsChanged:streamHolders:streamId:]";
            v48 = 2112;
            v49 = name2;
            _os_log_impl(&dword_1DDA4B000, v29, OS_LOG_TYPE_INFO, "%s streamHolder %@ is active", buf, 0x16u);
          }

          goto LABEL_28;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__CSAudioStreamActivityMonitor_notifyActiveStreamsChanged_streamHolders_streamId___block_invoke;
  block[3] = &unk_1E865B178;
  block[4] = self;
  v36 = v18;
  dispatch_async(queue, block);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __82__CSAudioStreamActivityMonitor_notifyActiveStreamsChanged_streamHolders_streamId___block_invoke_2;
  v34[3] = &unk_1E865CB20;
  v34[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v34];
}

- (void)_stopMonitoring
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSAudioStreamActivityMonitor _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : audio stream activity", &v3, 0xCu);
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAudioStreamActivityMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : audio stream activity", &v4, 0xCu);
  }
}

- (CSAudioStreamActivityMonitor)init
{
  v6.receiver = self;
  v6.super_class = CSAudioStreamActivityMonitor;
  v2 = [(CSEventMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSAudioStreamActivityMonitor", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

uint64_t __46__CSAudioStreamActivityMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSAudioStreamActivityMonitor);
  v1 = sharedInstance_monitor;
  sharedInstance_monitor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end