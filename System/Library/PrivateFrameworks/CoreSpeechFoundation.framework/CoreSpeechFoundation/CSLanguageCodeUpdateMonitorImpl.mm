@interface CSLanguageCodeUpdateMonitorImpl
- (BOOL)isLanguageCodeCurrent:(id)current;
- (CSLanguageCodeUpdateMonitorImpl)init;
- (void)_didReceiveLanguageCodeUpdate;
- (void)_notifyObserver:(id)observer withLanguageCode:(id)code;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSLanguageCodeUpdateMonitorImpl

- (CSLanguageCodeUpdateMonitorImpl)init
{
  v3.receiver = self;
  v3.super_class = CSLanguageCodeUpdateMonitorImpl;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
  }

  return result;
}

- (BOOL)isLanguageCodeCurrent:(id)current
{
  currentCopy = current;
  v4 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  v5 = [v4 isEqualToString:currentCopy];

  return v5;
}

- (void)_notifyObserver:(id)observer withLanguageCode:(id)code
{
  observerCopy = observer;
  codeCopy = code;
  [(CSEventMonitor *)self notifyObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSLanguageCodeUpdateMonitor:self didReceiveLanguageCodeChanged:codeCopy];
  }
}

- (void)_didReceiveLanguageCodeUpdate
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CSLanguageCodeUpdateMonitorImpl _didReceiveLanguageCodeUpdate]";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Siri language changed to : %{public}@", buf, 0x16u);
  }

  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__CSLanguageCodeUpdateMonitorImpl__didReceiveLanguageCodeUpdate__block_invoke;
    v6[3] = &unk_1E865B4E8;
    v6[4] = self;
    v7 = v3;
    [(CSEventMonitor *)self enumerateObserversInQueue:v6];
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "[CSLanguageCodeUpdateMonitorImpl _didReceiveLanguageCodeUpdate]";
      _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Ignore notifying change of language code, since it is nil", buf, 0xCu);
    }
  }
}

- (void)_stopMonitoring
{
  v7 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E698D070], 0);
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSLanguageCodeUpdateMonitorImpl _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Siri language code", &v5, 0xCu);
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v8 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _AFLanguageDidChangeCallback, *MEMORY[0x1E698D070], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSLanguageCodeUpdateMonitorImpl _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : Siri language code", &v6, 0xCu);
  }
}

@end