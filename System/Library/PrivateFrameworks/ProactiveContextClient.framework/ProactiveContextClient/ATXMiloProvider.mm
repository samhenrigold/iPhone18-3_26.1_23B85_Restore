@interface ATXMiloProvider
- (ATXMiloProvider)initWithInferredModeStream:(id)stream;
- (BOOL)_isInferredModeEventEligibleForHistoricalLabelDonations:(id)donations;
- (BOOL)_isInferredModeEventEligibleForMicrolocationLabelDonation:(id)donation;
- (BOOL)_isUserFocusComputedModeEventEligibleForHistoricalLabelDonations:(id)donations;
- (BOOL)_isUserFocusComputedModeEventEligibleForMicrolocationLabelDonation:(id)donation;
- (id)_schedulerForStreamName:(id)name;
- (id)_truthLabelForMode:(int)mode;
- (void)_subscribeToModeChanges;
- (void)_subscribeToStreamWithPublisher:(id)publisher scheduler:(id)scheduler sink:(id)sink;
- (void)_triggerHistoricalLabelDonationAtModeEndWithStoreEvent:(id)event;
- (void)_triggerMicroLocationHistoricalLabelDonationWithStartDate:(id)date endDate:(id)endDate;
- (void)_triggerMicrolocationLabelingAtModeStartWithStoreEvent:(id)event;
- (void)_triggerPredictionRequest;
- (void)_userDidEnterModeOrModeWasPredicted;
- (void)_userDidExitModeOrModeWasNoLongerPredicted;
- (void)dealloc;
- (void)requestPrediction;
@end

@implementation ATXMiloProvider

- (ATXMiloProvider)initWithInferredModeStream:(id)stream
{
  streamCopy = stream;
  v36.receiver = self;
  v36.super_class = ATXMiloProvider;
  v6 = [(ATXMiloProvider *)&v36 init];
  if (v6)
  {
    objc_initWeak(&location, v6);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.proactive.ProactiveContextClient.ATXMiloProvider.queue", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = objc_alloc(MEMORY[0x277D42628]);
    v11 = v6->_queue;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __46__ATXMiloProvider_initWithInferredModeStream___block_invoke;
    v33[3] = &unk_279AB7B90;
    objc_copyWeak(&v34, &location);
    v12 = [v10 initWithQueue:v11 operation:v33];
    coalescingTimerForLabelDonation = v6->_coalescingTimerForLabelDonation;
    v6->_coalescingTimerForLabelDonation = v12;

    v14 = objc_alloc(MEMORY[0x277D42628]);
    v15 = v6->_queue;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __46__ATXMiloProvider_initWithInferredModeStream___block_invoke_2;
    v31[3] = &unk_279AB7B90;
    objc_copyWeak(&v32, &location);
    v16 = [v14 initWithQueue:v15 operation:v31];
    coalescingTimerForHistoricalLabelDonations = v6->_coalescingTimerForHistoricalLabelDonations;
    v6->_coalescingTimerForHistoricalLabelDonations = v16;

    v18 = objc_alloc(MEMORY[0x277D42628]);
    v19 = v6->_queue;
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __46__ATXMiloProvider_initWithInferredModeStream___block_invoke_3;
    v29 = &unk_279AB7B90;
    objc_copyWeak(&v30, &location);
    v20 = [v18 initWithQueue:v19 operation:&v26];
    coalescingTimerForPrediction = v6->_coalescingTimerForPrediction;
    v6->_coalescingTimerForPrediction = v20;

    objc_storeStrong(&v6->_inferredModeStream, stream);
    v22 = objc_alloc(MEMORY[0x277CBEBD0]);
    v23 = [v22 initWithSuiteName:{@"com.apple.DuetExpertCenter.AppPredictionExpert", v26, v27, v28, v29}];
    [v23 doubleForKey:@"ATXMiloProviderTimeBufferKey"];
    if (v24 <= 0.0)
    {
      v24 = 300.0;
    }

    v6->_timeBuffer = v24;
    [(ATXMiloProvider *)v6 _subscribeToModeChanges];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __46__ATXMiloProvider_initWithInferredModeStream___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _userDidEnterModeOrModeWasPredicted];
}

void __46__ATXMiloProvider_initWithInferredModeStream___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _userDidExitModeOrModeWasNoLongerPredicted];
}

void __46__ATXMiloProvider_initWithInferredModeStream___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _triggerPredictionRequest];
}

- (void)requestPrediction
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = __atxlog_handle_modes(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    v12 = 2048;
    v13 = 0x4082C00000000000;
    _os_log_impl(&dword_260C9F000, v4, OS_LOG_TYPE_DEFAULT, "[%@][%@] Initiating prediction scan in %f seconds", &v8, 0x20u);
  }

  [(_PASSimpleCoalescingTimer *)self->_coalescingTimerForPrediction runAfterDelaySeconds:1 coalescingBehavior:600.0];
}

- (void)_triggerPredictionRequest
{
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_3();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_260C9F000, v5, v6, "[%@][%@] ULConnection unavilable", v7, v8, v9, v10);
}

- (void)_subscribeToModeChanges
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = BiomeLibrary();
  userFocus = [v4 UserFocus];
  computedMode = [userFocus ComputedMode];
  userFocusComputedModeStream = self->_userFocusComputedModeStream;
  self->_userFocusComputedModeStream = computedMode;

  v9 = __atxlog_handle_modes(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    identifier = [(BMStream *)self->_inferredModeStream identifier];
    identifier2 = [(BMStream *)self->_userFocusComputedModeStream identifier];
    v23 = 138413058;
    v24 = v10;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = identifier;
    v29 = 2112;
    v30 = identifier2;
    _os_log_impl(&dword_260C9F000, v9, OS_LOG_TYPE_DEFAULT, "[%@][%@] subscribing to %@ and %@ streams", &v23, 0x2Au);
  }

  identifier3 = [(BMStream *)self->_inferredModeStream identifier];
  v16 = [(ATXMiloProvider *)self _schedulerForStreamName:identifier3];
  inferredModeScheduler = self->_inferredModeScheduler;
  self->_inferredModeScheduler = v16;

  identifier4 = [(BMStream *)self->_userFocusComputedModeStream identifier];
  v19 = [(ATXMiloProvider *)self _schedulerForStreamName:identifier4];
  userComputedModeScheduler = self->_userComputedModeScheduler;
  self->_userComputedModeScheduler = v19;

  dSLPublisher = [(BMStream *)self->_inferredModeStream DSLPublisher];
  [(ATXMiloProvider *)self _subscribeToStreamWithPublisher:dSLPublisher scheduler:self->_inferredModeScheduler sink:self->_inferredModeStreamSink];

  dSLPublisher2 = [(BMStream *)self->_userFocusComputedModeStream DSLPublisher];
  [(ATXMiloProvider *)self _subscribeToStreamWithPublisher:dSLPublisher2 scheduler:self->_userComputedModeScheduler sink:self->_userComputedModeStreamSink];
}

- (void)dealloc
{
  [(BPSSink *)self->_inferredModeStreamSink cancel];
  [(BPSSink *)self->_userComputedModeStreamSink cancel];
  v3.receiver = self;
  v3.super_class = ATXMiloProvider;
  [(ATXMiloProvider *)&v3 dealloc];
}

- (void)_subscribeToStreamWithPublisher:(id)publisher scheduler:(id)scheduler sink:(id)sink
{
  v32 = *MEMORY[0x277D85DE8];
  publisherCopy = publisher;
  schedulerCopy = scheduler;
  sinkCopy = sink;
  if (!sinkCopy)
  {
    v12 = __atxlog_handle_modes(0);
    v13 = v12;
    if (publisherCopy)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = v14;
        v16 = NSStringFromSelector(a2);
        rootStreamIdentifiers = [publisherCopy rootStreamIdentifiers];
        *buf = 138412802;
        v27 = v14;
        v28 = 2112;
        v29 = v16;
        v30 = 2112;
        v31 = rootStreamIdentifiers;
        _os_log_impl(&dword_260C9F000, v13, OS_LOG_TYPE_DEFAULT, "[%@][%@] listening to stream %@ for mode start events", buf, 0x20u);
      }

      objc_initWeak(buf, self);
      v18 = [publisherCopy subscribeOn:schedulerCopy];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke;
      v24[3] = &unk_279AB7F08;
      objc_copyWeak(v25, buf);
      v25[1] = a2;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke_22;
      v21[3] = &unk_279AB7F30;
      objc_copyWeak(v23, buf);
      v23[1] = a2;
      v22 = publisherCopy;
      sinkCopy = [v18 sinkWithCompletion:v24 receiveInput:v21];

      if (!sinkCopy)
      {
        v20 = __atxlog_handle_modes(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [ATXMiloProvider _subscribeToStreamWithPublisher:v20 scheduler:? sink:?];
        }
      }

      objc_destroyWeak(v23);
      objc_destroyWeak(v25);
      objc_destroyWeak(buf);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ATXMiloProvider _subscribeToStreamWithPublisher:a2 scheduler:v13 sink:?];
      }

      sinkCopy = 0;
    }
  }
}

void __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [a2 state];
  v4 = __atxlog_handle_modes(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = objc_opt_class();
    v8 = *(a1 + 40);
    v9 = v7;
    v10 = NSStringFromSelector(v8);
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "[%@][%@] successfully completed listening to mode events", &v11, 0x16u);
  }
}

void __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke_22(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = __atxlog_handle_modes(WeakRetained);
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 48);
      v9 = v7;
      v10 = NSStringFromSelector(v8);
      v11 = [*(a1 + 32) rootStreamIdentifiers];
      v12 = 138412802;
      v13 = v7;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "[%@][%@] mode event received from %@", &v12, 0x20u);
    }

    [WeakRetained _triggerHistoricalLabelDonationAtModeEndWithStoreEvent:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke_22_cold_1();
    }
  }
}

- (void)_triggerMicrolocationLabelingAtModeStartWithStoreEvent:(id)event
{
  eventCopy = event;
  eventBody = [eventCopy eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  eventBody2 = [eventCopy eventBody];
  if (isKindOfClass)
  {
    v7 = [(ATXMiloProvider *)self _isUserFocusComputedModeEventEligibleForMicrolocationLabelDonation:eventBody2];

    if (!v7)
    {
      goto LABEL_7;
    }

LABEL_6:
    [(_PASSimpleCoalescingTimer *)self->_coalescingTimerForLabelDonation runAfterDelaySeconds:1 coalescingBehavior:self->_timeBuffer];
    goto LABEL_7;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  eventBody3 = [eventCopy eventBody];
  v10 = [(ATXMiloProvider *)self _isInferredModeEventEligibleForMicrolocationLabelDonation:eventBody3];

  if (v10)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_triggerHistoricalLabelDonationAtModeEndWithStoreEvent:(id)event
{
  eventCopy = event;
  eventBody = [eventCopy eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  eventBody2 = [eventCopy eventBody];
  if (isKindOfClass)
  {
    v7 = [(ATXMiloProvider *)self _isUserFocusComputedModeEventEligibleForHistoricalLabelDonations:eventBody2];

    if (!v7)
    {
      goto LABEL_7;
    }

LABEL_6:
    [(_PASSimpleCoalescingTimer *)self->_coalescingTimerForHistoricalLabelDonations runAfterDelaySeconds:1 coalescingBehavior:5.0];
    goto LABEL_7;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  eventBody3 = [eventCopy eventBody];
  v10 = [(ATXMiloProvider *)self _isInferredModeEventEligibleForHistoricalLabelDonations:eventBody3];

  if (v10)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (BOOL)_isUserFocusComputedModeEventEligibleForMicrolocationLabelDonation:(id)donation
{
  donationCopy = donation;
  if ([donationCopy starting])
  {
    v4 = [donationCopy semanticType] == 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isUserFocusComputedModeEventEligibleForHistoricalLabelDonations:(id)donations
{
  donationsCopy = donations;
  v4 = ([donationsCopy starting] & 1) == 0 && objc_msgSend(donationsCopy, "semanticType") == 6;

  return v4;
}

- (BOOL)_isInferredModeEventEligibleForMicrolocationLabelDonation:(id)donation
{
  donationCopy = donation;
  if ([donationCopy isStart])
  {
    v4 = [donationCopy modeType] == 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isInferredModeEventEligibleForHistoricalLabelDonations:(id)donations
{
  donationsCopy = donations;
  v4 = ([donationsCopy isStart] & 1) == 0 && objc_msgSend(donationsCopy, "modeType") == 4;

  return v4;
}

- (id)_schedulerForStreamName:(id)name
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCAC38];
  nameCopy = name;
  processInfo = [v6 processInfo];
  processName = [processInfo processName];
  nameCopy = [v5 stringWithFormat:@"ATXMiloProvider.Modes.%@.%@", processName, nameCopy];

  v12 = __atxlog_handle_modes(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = NSStringFromSelector(a2);
    *buf = 138412802;
    v25 = v13;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = nameCopy;
    _os_log_impl(&dword_260C9F000, v12, OS_LOG_TYPE_INFO, "[%@][%@] scheduler identifier: %@", buf, 0x20u);
  }

  v16 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:nameCopy targetQueue:self->_queue];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = __atxlog_handle_modes(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = v21;
      v23 = NSStringFromSelector(a2);
      *buf = 138412802;
      v25 = v21;
      v26 = 2112;
      v27 = v23;
      v28 = 2112;
      v29 = nameCopy;
      _os_log_error_impl(&dword_260C9F000, v19, OS_LOG_TYPE_ERROR, "[%@][%@] unable to initialize Biome Scheduler: %@", buf, 0x20u);
    }
  }

  return v17;
}

- (void)_userDidEnterModeOrModeWasPredicted
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = __atxlog_handle_modes(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v41 = 138412546;
    v42 = v5;
    v43 = 2112;
    v44 = v7;
    _os_log_impl(&dword_260C9F000, v4, OS_LOG_TYPE_INFO, "[%@][%@] Starting Microlocation Labeling", &v41, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  v8 = self->_timeBuffer + 1.0;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = [[ATXUserFocusComputedMode alloc] initWithStream:self->_userFocusComputedModeStream];
  currentModeEvent = [(ATXUserFocusComputedMode *)v10 currentModeEvent];

  eventBody = [currentModeEvent eventBody];
  if ([(ATXMiloProvider *)self _isUserFocusComputedModeEventEligibleForMicrolocationLabelDonation:eventBody])
  {
    [v9 timeIntervalSinceReferenceDate];
    v14 = v13;
    [currentModeEvent timestamp];
    v16 = v14 - v15;

    if (v16 < v8)
    {
      v17 = MEMORY[0x277CCABB0];
      eventBody2 = [currentModeEvent eventBody];
      modeType = BMUserFocusInferredModeTypeFromBMUserFocusModeComputedSemanticType([eventBody2 semanticType]);
LABEL_10:
      v26 = [v17 numberWithInt:modeType];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v20 = [[ATXUserFocusInferredMode alloc] initWithStream:self->_inferredModeStream];
  eventBody2 = [(ATXUserFocusInferredMode *)v20 currentMode];

  if ([(ATXMiloProvider *)self _isInferredModeEventEligibleForMicrolocationLabelDonation:eventBody2])
  {
    [v9 timeIntervalSinceReferenceDate];
    v22 = v21;
    absoluteTimestamp = [eventBody2 absoluteTimestamp];
    [absoluteTimestamp timeIntervalSinceReferenceDate];
    v25 = v22 - v24;

    if (v25 < v8)
    {
      v17 = MEMORY[0x277CCABB0];
      modeType = [eventBody2 modeType];
      goto LABEL_10;
    }
  }

  v26 = 0;
LABEL_12:

  if (v26)
  {
    integerValue = [v26 integerValue];
    v29 = __atxlog_handle_modes(integerValue);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = v30;
      v32 = NSStringFromSelector(a2);
      v33 = BMUserFocusInferredModeTypeAsString();
      v41 = 138412802;
      v42 = v30;
      v43 = 2112;
      v44 = v32;
      v45 = 2114;
      v46 = *&v33;
      _os_log_impl(&dword_260C9F000, v29, OS_LOG_TYPE_DEFAULT, "[%@][%@] user entered mode: %{public}@", &v41, 0x20u);
    }

    v34 = objc_alloc(MEMORY[0x277D287A0]);
    v35 = [(ATXMiloProvider *)self _truthLabelForMode:integerValue];
    v36 = [v34 initWithName:v35];

    connection = [(ATXMiloProvider *)self connection];
    [connection addLabel:v36];
  }

  else
  {
    v36 = __atxlog_handle_modes(v27);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_opt_class();
      v39 = v38;
      v40 = NSStringFromSelector(a2);
      v41 = 138412802;
      v42 = v38;
      v43 = 2112;
      v44 = v40;
      v45 = 2048;
      v46 = v8;
      _os_log_error_impl(&dword_260C9F000, v36, OS_LOG_TYPE_ERROR, "[%@][%@] Unable to find an inferred mode event or user focus computed mode event in the past %f seconds", &v41, 0x20u);
    }
  }
}

- (void)_userDidExitModeOrModeWasNoLongerPredicted
{
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_3();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_260C9F000, v5, v6, "[%@][%@] Error: Expected to see at least two events in either the inferred mode stream or the user computed stream", v7, v8, v9, v10);
}

- (id)_truthLabelForMode:(int)mode
{
  if (mode == 4)
  {
    return @"C9FC4298-DE04-494A-9791-71AB71B52E27";
  }

  else
  {
    return @"75BF0CD2-AB18-4E42-AD01-3D5CAADFDFF1";
  }
}

- (void)_triggerMicroLocationHistoricalLabelDonationWithStartDate:(id)date endDate:(id)endDate
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v9 = __atxlog_handle_modes(endDateCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    v17 = 138413058;
    v18 = v10;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = dateCopy;
    v23 = 2112;
    v24 = endDateCopy;
    _os_log_impl(&dword_260C9F000, v9, OS_LOG_TYPE_DEFAULT, "[%@][%@] Labeling scans between startDate: %@ and endDate: %@ with work label", &v17, 0x2Au);
  }

  connection = [(ATXMiloProvider *)self connection];

  if (connection)
  {
    v15 = [objc_alloc(MEMORY[0x277D287A0]) initWithName:@"C9FC4298-DE04-494A-9791-71AB71B52E27"];
    connection2 = [(ATXMiloProvider *)self connection];
    [connection2 addLabel:v15 betweenStartDate:dateCopy andEndDate:endDateCopy];
  }

  else
  {
    v15 = __atxlog_handle_modes(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXMiloProvider _triggerMicroLocationHistoricalLabelDonationWithStartDate:? endDate:?];
    }
  }
}

- (void)_subscribeToStreamWithPublisher:(uint64_t)a1 scheduler:(const char *)a2 sink:(NSObject *)a3 .cold.2(uint64_t a1, const char *a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_260C9F000, a3, OS_LOG_TYPE_ERROR, "[%@][%@] Publisher was unexpectedly nil", v7, 0x16u);
}

void __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_opt_class();
  v4 = *(a1 + 40);
  v5 = v3;
  v6 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_260C9F000, v7, v8, "[%@][%@] Error encountered while listening to mode events", v9, v10, v11, v12);
}

void __66__ATXMiloProvider__subscribeToStreamWithPublisher_scheduler_sink___block_invoke_22_cold_1()
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_3();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_260C9F000, v4, v5, "[%@][%@] self is nil", v6, v7, v8, v9);
}

- (void)_triggerMicroLocationHistoricalLabelDonationWithStartDate:(uint64_t)a1 endDate:.cold.1(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_3();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_260C9F000, v5, v6, "[%@][%@] Connection unavilable, Unable to label scans between dates", v7, v8, v9, v10);
}

@end