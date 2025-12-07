@interface AFCheckSRT
- (AFCheckSRT)init;
- (BOOL)trackEvent:(double)event forTurn:(id)turn;
- (void)dealloc;
- (void)didReceivePluginSelected:(id)selected;
@end

@implementation AFCheckSRT

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, self, @"SelectedFlowPlugin", 0);
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v7 = "[AFCheckSRT dealloc]";
    v8 = 2112;
    v9 = @"SelectedFlowPlugin";
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s No longer listening for '%@' notifications", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = AFCheckSRT;
  [(AFCheckSRT *)&v5 dealloc];
}

- (void)didReceivePluginSelected:(id)selected
{
  v10 = *MEMORY[0x1E69E9840];
  selectedCopy = selected;
  v5 = selectedCopy;
  if (selectedCopy)
  {
    v6 = [selectedCopy objectForKey:@"FlowPlugin"];
    if (v6)
    {
      os_unfair_lock_lock(&self->_stateLock);
      objc_storeStrong(&self->_pluginSelected, v6);
      os_unfair_lock_unlock(&self->_stateLock);
    }
  }

  else
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[AFCheckSRT didReceivePluginSelected:]";
      _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s Unexpected nil payload, no-op", &v8, 0xCu);
    }
  }
}

- (BOOL)trackEvent:(double)event forTurn:(id)turn
{
  v28[2] = *MEMORY[0x1E69E9840];
  turnCopy = turn;
  currentTurnID = self->_currentTurnID;
  if (currentTurnID && (objc_msgSend_isEqualToString_(currentTurnID) & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    objc_storeStrong(&self->_currentTurnID, turn);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v11 = v10;
    os_unfair_lock_lock(&self->_stateLock);
    pluginSelected = self->_pluginSelected;
    if (pluginSelected)
    {
      v13 = pluginSelected;
      v14 = self->_pluginSelected;
      self->_pluginSelected = 0;

      os_unfair_lock_unlock(&self->_stateLock);
      v27[0] = @"SRTTime";
      *&v15 = v11 - event;
      v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
      v27[1] = @"PluginMeasuringSRT";
      v28[0] = v16;
      v28[1] = v13;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];

      v18 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v21 = 136315650;
        v22 = "[AFCheckSRT trackEvent:forTurn:]";
        v23 = 2112;
        v24 = @"com.apple.assistant.srt.stats";
        v25 = 2112;
        v26 = v17;
        _os_log_debug_impl(&dword_1912FE000, v18, OS_LOG_TYPE_DEBUG, "%s Posting notification '%@' with SRT stats: %@", &v21, 0x20u);
      }

      DistributedCenter = CFNotificationCenterGetDistributedCenter();
      v9 = 1;
      CFNotificationCenterPostNotification(DistributedCenter, @"com.apple.assistant.srt.stats", 0, v17, 1u);
    }

    else
    {
      os_unfair_lock_unlock(&self->_stateLock);
      v9 = 1;
    }
  }

  return v9;
}

- (AFCheckSRT)init
{
  v13 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = AFCheckSRT;
  v2 = [(AFCheckSRT *)&v8 init];
  if (v2)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v10 = "[AFCheckSRT init]";
      v11 = 2112;
      v12 = @"SelectedFlowPlugin";
      _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s Listening for '%@' notifications", buf, 0x16u);
    }

    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, v2, _FlowPluginSelected, @"SelectedFlowPlugin", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    pluginSelected = v2->_pluginSelected;
    v2->_pluginSelected = 0;

    currentTurnID = v2->_currentTurnID;
    v2->_currentTurnID = 0;

    v2->_stateLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

@end