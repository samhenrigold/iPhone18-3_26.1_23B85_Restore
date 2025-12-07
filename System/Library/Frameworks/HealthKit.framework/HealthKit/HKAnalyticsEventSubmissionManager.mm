@interface HKAnalyticsEventSubmissionManager
- (BOOL)submitEvent:(id)event error:(id *)error;
- (HKAnalyticsEventSubmissionManager)initWithDataSource:(id)source eventUsedProvider:(id)provider analyticsEventConsumer:(id)consumer loggingCategory:(id)category;
- (HKAnalyticsEventSubmissionManager)initWithLoggingCategory:(id)category healthDataSource:(id)source;
- (id)queue;
- (void)submitEvent:(id)event completion:(id)completion;
@end

@implementation HKAnalyticsEventSubmissionManager

- (HKAnalyticsEventSubmissionManager)initWithLoggingCategory:(id)category healthDataSource:(id)source
{
  sourceCopy = source;
  categoryCopy = category;
  v8 = [[HKAnalyticsDataSource alloc] initWithHealthDataSource:sourceCopy];

  v9 = [(HKAnalyticsEventSubmissionManager *)self initWithDataSource:v8 eventUsedProvider:&__block_literal_global_27 analyticsEventConsumer:&__block_literal_global_7 loggingCategory:categoryCopy];
  return v9;
}

- (HKAnalyticsEventSubmissionManager)initWithDataSource:(id)source eventUsedProvider:(id)provider analyticsEventConsumer:(id)consumer loggingCategory:(id)category
{
  sourceCopy = source;
  providerCopy = provider;
  consumerCopy = consumer;
  categoryCopy = category;
  v22.receiver = self;
  v22.super_class = HKAnalyticsEventSubmissionManager;
  v15 = [(HKAnalyticsEventSubmissionManager *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dataSource, source);
    v17 = _Block_copy(providerCopy);
    eventUsedProvider = v16->_eventUsedProvider;
    v16->_eventUsedProvider = v17;

    v19 = _Block_copy(consumerCopy);
    analyticsEventConsumer = v16->_analyticsEventConsumer;
    v16->_analyticsEventConsumer = v19;

    objc_storeStrong(&v16->_loggingCategory, category);
  }

  return v16;
}

- (BOOL)submitEvent:(id)event error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  eventName = [eventCopy eventName];
  v8 = [eventName containsString:@"pregnan"];

  eventName2 = [eventCopy eventName];
  v10 = eventName2;
  if (v8)
  {
    v11 = HKSensitiveLogItem(eventName2);

    v10 = v11;
  }

  eventName3 = [eventCopy eventName];
  v13 = (*(self->_eventUsedProvider + 2))();
  if (v13)
  {
    environmentDataSource = [(HKAnalyticsDataSource *)self->_dataSource environmentDataSource];
    isImproveHealthAndActivityEnabled = [environmentDataSource isImproveHealthAndActivityEnabled];

    isEventSubmissionIHAGated = [eventCopy isEventSubmissionIHAGated];
    if (isEventSubmissionIHAGated && (isImproveHealthAndActivityEnabled & 1) == 0)
    {
      _HKInitializeLogging(isEventSubmissionIHAGated, v18);
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy7 = self;
        v49 = 2114;
        v50 = v10;
        v20 = "[%{public}@:%{public}@] Analytics event not sent as event requires IH&A but IH&A not enabled";
LABEL_10:
        _os_log_impl(&dword_19197B000, loggingCategory, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dataSource = self->_dataSource;
    v46 = 0;
    v24 = [eventCopy makeUnrestrictedEventPayloadWithDataSource:dataSource error:&v46];
    v25 = v46;
    if (v25)
    {
      v27 = v25;
      if (error)
      {
        v28 = v25;
        *error = v27;
      }

      else
      {
        _HKLogDroppedError(v25);
      }

      _HKInitializeLogging(v28, v29);
      v31 = self->_loggingCategory;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy7 = self;
        v49 = 2114;
        v50 = v27;
        v51 = 2114;
        v52 = v10;
        _os_log_error_impl(&dword_19197B000, v31, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Error when extracting unrestricted event payload: %{public}@", buf, 0x20u);
      }

LABEL_20:

      goto LABEL_21;
    }

    if (v24)
    {
      v30 = [v24 copy];
      [v22 addEntriesFromDictionary:v30];
    }

    else
    {
      _HKInitializeLogging(0, v26);
      v33 = self->_loggingCategory;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        selfCopy7 = self;
        v49 = 2114;
        v50 = v10;
        _os_log_impl(&dword_19197B000, v33, OS_LOG_TYPE_INFO, "[%{public}@:%{public}@] No unrestricted payload", buf, 0x16u);
      }
    }

    if (isImproveHealthAndActivityEnabled)
    {
      v34 = self->_dataSource;
      v45 = 0;
      v35 = [eventCopy makeIHAGatedEventPayloadWithDataSource:v34 error:&v45];
      v36 = v45;
      if (v36)
      {
        v27 = v36;
        if (error)
        {
          v38 = v36;
          *error = v27;
        }

        else
        {
          _HKLogDroppedError(v36);
        }

        _HKInitializeLogging(v38, v39);
        v41 = self->_loggingCategory;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          selfCopy7 = self;
          v49 = 2114;
          v50 = v27;
          v51 = 2114;
          v52 = v10;
          _os_log_error_impl(&dword_19197B000, v41, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Error when extracting IHA gated event payload: %{public}@", buf, 0x20u);
        }

        goto LABEL_20;
      }

      if (v35)
      {
        v40 = [v35 copy];
        [v22 addEntriesFromDictionary:v40];
      }

      else
      {
        _HKInitializeLogging(0, v37);
        v42 = self->_loggingCategory;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          selfCopy7 = self;
          v49 = 2114;
          v50 = v10;
          _os_log_impl(&dword_19197B000, v42, OS_LOG_TYPE_INFO, "[%{public}@:%{public}@] No IH&A gated payload", buf, 0x16u);
        }
      }
    }

    if ([v22 count])
    {
      (*(self->_analyticsEventConsumer + 2))();
      v21 = 1;
      goto LABEL_22;
    }

    _HKInitializeLogging(0, v43);
    v44 = self->_loggingCategory;
    v21 = 0;
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 138543618;
    selfCopy7 = self;
    v49 = 2114;
    v50 = v10;
    _os_log_impl(&dword_19197B000, v44, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Not sending payload as there were no contents", buf, 0x16u);
LABEL_21:
    v21 = 0;
LABEL_22:

    goto LABEL_23;
  }

  _HKInitializeLogging(v13, v14);
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy7 = self;
    v49 = 2114;
    v50 = v10;
    v20 = "[%{public}@:%{public}@] Analytics event not sent as event treated as unused by CoreAnalytics";
    goto LABEL_10;
  }

LABEL_11:
  v21 = 0;
LABEL_23:

  return v21;
}

- (id)queue
{
  queue = self->_queue;
  if (!queue)
  {
    v4 = HKCreateSerialDispatchQueue(self, @"HKAnalyticsEventSubmissionManager.queue");
    v5 = self->_queue;
    self->_queue = v4;

    queue = self->_queue;
  }

  return queue;
}

- (void)submitEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  queue = [(HKAnalyticsEventSubmissionManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__HKAnalyticsEventSubmissionManager_submitEvent_completion___block_invoke;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v12 = eventCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = eventCopy;
  dispatch_async(queue, block);
}

void __60__HKAnalyticsEventSubmissionManager_submitEvent_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = 0;
  [v2 submitEvent:v3 error:&v5];
  v4 = v5;
  (*(a1[6] + 16))();
}

@end