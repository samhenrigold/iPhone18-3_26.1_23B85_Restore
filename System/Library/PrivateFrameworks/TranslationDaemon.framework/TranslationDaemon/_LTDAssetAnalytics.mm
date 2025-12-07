@interface _LTDAssetAnalytics
+ (_LTDAssetAnalytics)shared;
- (id)_init;
- (id)analyticsDataForLocaleIdentifier:(id)identifier completionTime:(double)time connectionType:(unint64_t)type downloadOutcome:(unint64_t)outcome downloadTriggerSource:(unint64_t)source hasClientReportedError:(BOOL)error;
- (id)createEventWithNSLocale:(id)locale connectionType:(unint64_t)type downloadTriggerSource:(unint64_t)source;
- (id)getEventWithNSLocale:(id)locale;
- (void)markEventsAsRetriedForLocales:(id)locales;
- (void)sendEventToAnalytics:(id)analytics;
- (void)sendEventsToAnalytics:(id)analytics;
@end

@implementation _LTDAssetAnalytics

+ (_LTDAssetAnalytics)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28___LTDAssetAnalytics_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_sharedInstance;

  return v2;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = _LTDAssetAnalytics;
  v2 = [(_LTDAssetAnalytics *)&v6 init];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  localeAnalyticsMap = v2->_localeAnalyticsMap;
  v2->_localeAnalyticsMap = dictionary;

  v2->_lock._os_unfair_lock_opaque = 0;
  return v2;
}

- (id)createEventWithNSLocale:(id)locale connectionType:(unint64_t)type downloadTriggerSource:(unint64_t)source
{
  localeCopy = locale;
  v9 = [[_LTDAssetDownloadAnalyticsEvent alloc] initWithNSLocale:localeCopy connectionType:type downloadTriggerSource:source];
  _ltLocaleIdentifier = [localeCopy _ltLocaleIdentifier];

  if (_ltLocaleIdentifier)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __83___LTDAssetAnalytics_createEventWithNSLocale_connectionType_downloadTriggerSource___block_invoke;
    v22[3] = &unk_2789B5968;
    v22[4] = self;
    v23 = _ltLocaleIdentifier;
    v24 = v9;
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    __83___LTDAssetAnalytics_createEventWithNSLocale_connectionType_downloadTriggerSource___block_invoke(v22);
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v13 = _LTOSLogAnalytics(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(_LTDAssetAnalytics *)v13 createEventWithNSLocale:v14 connectionType:v15 downloadTriggerSource:v16, v17, v18, v19, v20];
    }
  }

  return v9;
}

- (void)markEventsAsRetriedForLocales:(id)locales
{
  v19 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __52___LTDAssetAnalytics_markEventsAsRetriedForLocales___block_invoke;
  v14 = &unk_2789B5990;
  v5 = localesCopy;
  v15 = v5;
  selfCopy = self;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __52___LTDAssetAnalytics_markEventsAsRetriedForLocales___block_invoke(&v11);
  os_unfair_lock_unlock(&self->_lock);
  v6 = [v5 _ltCompactMap:{&__block_literal_global_3, v11, v12}];
  v8 = _LTOSLogAnalytics(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 componentsJoinedByString:@" : "];
    *buf = 138543362;
    v18 = v10;
    _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_DEFAULT, "Asset analytic retry event [%{public}@]", buf, 0xCu);
  }
}

- (id)getEventWithNSLocale:(id)locale
{
  localeCopy = locale;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  _ltLocaleIdentifier = [localeCopy _ltLocaleIdentifier];
  v7 = _ltLocaleIdentifier;
  if (_ltLocaleIdentifier)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v20 = __43___LTDAssetAnalytics_getEventWithNSLocale___block_invoke;
    v21 = &unk_2789B59B8;
    v24 = &v25;
    selfCopy = self;
    v23 = _ltLocaleIdentifier;
    v8 = v19;
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    v20(v8);

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v9 = _LTOSLogAnalytics(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_LTDAssetAnalytics *)v9 getEventWithNSLocale:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  v17 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v17;
}

- (void)sendEventToAnalytics:(id)analytics
{
  v30 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v6 = _LTOSLogAnalytics(analyticsCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = _LTDAssetAnalyticStringForDownloadOutcome([analyticsCopy downloadOutcome]);
    *buf = 138543362;
    v29 = v8;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  localeIdentifier = [analyticsCopy localeIdentifier];
  v11 = localeIdentifier;
  if (localeIdentifier)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __43___LTDAssetAnalytics_sendEventToAnalytics___block_invoke;
    v26[3] = &unk_2789B5990;
    v26[4] = self;
    v27 = localeIdentifier;
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    __43___LTDAssetAnalytics_sendEventToAnalytics___block_invoke(v26);
    os_unfair_lock_unlock(&self->_lock);

    localeIdentifier2 = [analyticsCopy localeIdentifier];
    [analyticsCopy completionTime];
    v14 = -[_LTDAssetAnalytics analyticsDataForLocaleIdentifier:completionTime:connectionType:downloadOutcome:downloadTriggerSource:hasClientReportedError:](self, "analyticsDataForLocaleIdentifier:completionTime:connectionType:downloadOutcome:downloadTriggerSource:hasClientReportedError:", localeIdentifier2, [analyticsCopy connectionType], objc_msgSend(analyticsCopy, "downloadOutcome"), objc_msgSend(analyticsCopy, "downloadTriggerSource"), objc_msgSend(analyticsCopy, "hasClientReportedError"), v13);

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.translation", @"AssetDownloadMetrics"];
    v25 = v14;
    v16 = v14;
    AnalyticsSendEventLazy();
  }

  else
  {
    v17 = _LTOSLogAnalytics(0, v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(_LTDAssetAnalytics *)v17 sendEventToAnalytics:v18, v19, v20, v21, v22, v23, v24];
    }
  }
}

- (void)sendEventsToAnalytics:(id)analytics
{
  v14 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [analyticsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(analyticsCopy);
        }

        [(_LTDAssetAnalytics *)self sendEventToAnalytics:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [analyticsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)analyticsDataForLocaleIdentifier:(id)identifier completionTime:(double)time connectionType:(unint64_t)type downloadOutcome:(unint64_t)outcome downloadTriggerSource:(unint64_t)source hasClientReportedError:(BOOL)error
{
  errorCopy = error;
  v22[6] = *MEMORY[0x277D85DE8];
  v21[0] = @"assetLocale";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_LTDAssetAnalyticsLocaleFromLocaleIdentifier(identifier)];
  v22[0] = v13;
  v21[1] = @"completionTime";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  v22[1] = v14;
  v21[2] = @"connectionType";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v22[2] = v15;
  v21[3] = @"downloadOutcome";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:outcome];
  v22[3] = v16;
  v21[4] = @"downloadTriggerSource";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
  v22[4] = v17;
  v21[5] = @"hasClientReportedError";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:errorCopy];
  v22[5] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];

  return v19;
}

@end