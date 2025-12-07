@interface _LTDAssetDownloadAnalyticsEvent
- (_LTDAssetDownloadAnalyticsEvent)initWithNSLocale:(id)locale connectionType:(unint64_t)type downloadTriggerSource:(unint64_t)source;
- (void)_timeoutEvent;
- (void)startTimer;
- (void)stopTimerWithOutcome:(unint64_t)outcome hasClientReportedError:(BOOL)error localeIdentifier:(id)identifier;
@end

@implementation _LTDAssetDownloadAnalyticsEvent

- (_LTDAssetDownloadAnalyticsEvent)initWithNSLocale:(id)locale connectionType:(unint64_t)type downloadTriggerSource:(unint64_t)source
{
  localeCopy = locale;
  v14.receiver = self;
  v14.super_class = _LTDAssetDownloadAnalyticsEvent;
  v9 = [(_LTDAssetDownloadAnalyticsEvent *)&v14 init];
  if (v9)
  {
    _ltLocaleIdentifier = [localeCopy _ltLocaleIdentifier];
    localeIdentifier = v9->_localeIdentifier;
    v9->_localeIdentifier = _ltLocaleIdentifier;

    v9->_downloadOutcome = 0;
    v9->_downloadTriggerSource = source;
    v9->_completionTime = 0.0;
    v9->_connectionType = type;
    *&v9->_hasClientReportedError = 0;
    v12 = v9;
  }

  return v9;
}

- (void)startTimer
{
  v13 = *MEMORY[0x277D85DE8];
  timeIntervalSinceReferenceDate = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_startTime = v4;
  v6 = _LTOSLogAnalytics(timeIntervalSinceReferenceDate, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    localeIdentifier = self->_localeIdentifier;
    *buf = 138412290;
    v12 = localeIdentifier;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Started download timer for language %@", buf, 0xCu);
  }

  v8 = dispatch_time(0, 300000000000);
  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45___LTDAssetDownloadAnalyticsEvent_startTimer__block_invoke;
  block[3] = &unk_2789B53F0;
  objc_copyWeak(&v10, buf);
  dispatch_after(v8, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_timeoutEvent
{
  v10 = *MEMORY[0x277D85DE8];
  [(_LTDAssetDownloadAnalyticsEvent *)self stopTimerWithOutcome:5 hasClientReportedError:0 localeIdentifier:self->_localeIdentifier];
  v3 = +[_LTDAssetAnalytics shared];
  [v3 sendEventToAnalytics:self];

  v6 = _LTOSLogAssets(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    localeIdentifier = self->_localeIdentifier;
    v8 = 138412290;
    v9 = localeIdentifier;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Timeout occurred for language %@", &v8, 0xCu);
  }
}

- (void)stopTimerWithOutcome:(unint64_t)outcome hasClientReportedError:(BOOL)error localeIdentifier:(id)identifier
{
  errorCopy = error;
  v17 = *MEMORY[0x277D85DE8];
  [(_LTDAssetDownloadAnalyticsEvent *)self setDownloadOutcome:outcome, error, identifier];
  timeIntervalSinceReferenceDate = [(_LTDAssetDownloadAnalyticsEvent *)self setHasClientReportedError:errorCopy];
  if (self->_startTime != 0.0)
  {
    timeIntervalSinceReferenceDate = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_completionTime = v9 - self->_startTime;
  }

  v10 = _LTOSLogAssets(timeIntervalSinceReferenceDate, v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    localeIdentifier = self->_localeIdentifier;
    completionTime = self->_completionTime;
    v13 = 138412546;
    v14 = localeIdentifier;
    v15 = 2048;
    v16 = completionTime;
    _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Download complete for language %@, completion time: %.3f", &v13, 0x16u);
  }
}

@end