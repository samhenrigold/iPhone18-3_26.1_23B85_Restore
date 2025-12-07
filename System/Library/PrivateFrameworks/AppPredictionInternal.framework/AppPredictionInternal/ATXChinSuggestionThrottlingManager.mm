@interface ATXChinSuggestionThrottlingManager
- (ATXChinSuggestionThrottlingManager)init;
- (double)timestampWallClockTimeCreditsLastReplenished;
- (double)wallClockTimeCredits;
- (void)_acceptOrRejectPendingRequestIfExists;
- (void)_acceptPendingRequest;
- (void)_rejectPendingRequest;
- (void)logAcceptedEventToCoreAnalytics;
- (void)logReceivedEventToCoreAnalytics;
- (void)logRejectedEventToCoreAnalytics;
- (void)logWallClockTimeToCoreAnalytics:(double)analytics;
- (void)replenishWallClockTimeCredits;
- (void)scheduleRequest:(id)request;
@end

@implementation ATXChinSuggestionThrottlingManager

- (ATXChinSuggestionThrottlingManager)init
{
  v27 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = ATXChinSuggestionThrottlingManager;
  v2 = [(ATXChinSuggestionThrottlingManager *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEBD0]);
    v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
    defaults = v2->_defaults;
    v2->_defaults = v4;

    v6 = objc_alloc_init(MEMORY[0x277CEB718]);
    [v6 doubleForKey:@"ATXChinSuggestionThrottlingManager.maxWallClockTimeCredits" defaultReturnValue:5.0];
    v2->_maxWallClockTimeCredits = v7;
    v8 = [v6 doubleForKey:@"ATXChinSuggestionThrottlingManager.wallClockTimeCreditsReplenishingRate" defaultReturnValue:0.005];
    v2->_wallClockTimeCreditsReplenishingRate = v9;
    v10 = __atxlog_handle_notification_management(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      maxWallClockTimeCredits = v2->_maxWallClockTimeCredits;
      wallClockTimeCreditsReplenishingRate = v2->_wallClockTimeCreditsReplenishingRate;
      *buf = 136315650;
      v22 = "[ATXChinSuggestionThrottlingManager init]";
      v23 = 2048;
      v24 = maxWallClockTimeCredits;
      v25 = 2048;
      v26 = wallClockTimeCreditsReplenishingRate;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%s: Starting up throttling manager with maxWallClockTimeCredits: %fs wallClockTimeCreditsReplenishingRate: %fs per second", buf, 0x20u);
    }

    v2->_requestProcessingQueueInUse = 0;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("ATXChinSuggestionThrottlingManager.requestManagementQueue", v13);
    requestManagementQueue = v2->_requestManagementQueue;
    v2->_requestManagementQueue = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("ATXChinSuggestionThrottlingManager.requestProcessingQueue", v16);
    requestProcessingQueue = v2->_requestProcessingQueue;
    v2->_requestProcessingQueue = v17;

    v2->_debuggingRequestSequenceNumber = 0;
  }

  return v2;
}

- (void)scheduleRequest:(id)request
{
  requestCopy = request;
  requestManagementQueue = self->_requestManagementQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ATXChinSuggestionThrottlingManager_scheduleRequest___block_invoke;
  v7[3] = &unk_278596C10;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(requestManagementQueue, v7);
}

uint64_t __54__ATXChinSuggestionThrottlingManager_scheduleRequest___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 40) + 64);
  v2 = __atxlog_handle_notification_management([*(a1 + 32) setDebugIdentifier:?]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[ATXChinSuggestionThrottlingManager scheduleRequest:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%s: Received %@", &v6, 0x16u);
  }

  [*(a1 + 40) logReceivedEventToCoreAnalytics];
  v4 = *(a1 + 40);
  if (v4[4])
  {
    [v4 _rejectPendingRequest];
    v4 = *(a1 + 40);
  }

  objc_storeStrong(v4 + 4, *(a1 + 32));
  return [*(a1 + 40) _acceptOrRejectPendingRequestIfExists];
}

- (void)_acceptOrRejectPendingRequestIfExists
{
  requestManagementQueue = self->_requestManagementQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__ATXChinSuggestionThrottlingManager__acceptOrRejectPendingRequestIfExists__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(requestManagementQueue, block);
}

void __75__ATXChinSuggestionThrottlingManager__acceptOrRejectPendingRequestIfExists__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(v2 + 32))
  {
    v3 = __atxlog_handle_notification_management(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[ATXChinSuggestionThrottlingManager _acceptOrRejectPendingRequestIfExists]_block_invoke";
      v4 = "%s: No pending request to schedule. Returning.";
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  if (*(v2 + 24) == 1)
  {
    v3 = __atxlog_handle_notification_management(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[ATXChinSuggestionThrottlingManager _acceptOrRejectPendingRequestIfExists]_block_invoke";
      v4 = "%s: A request is currently processing. Returning";
LABEL_7:
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, v4, &v10, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v2 replenishWallClockTimeCredits];
  v5 = [*(a1 + 32) wallClockTimeCredits];
  if (v6 <= 0.0)
  {
    v8 = __atxlog_handle_notification_management(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 32) wallClockTimeCredits];
      v10 = 136315394;
      v11 = "[ATXChinSuggestionThrottlingManager _acceptOrRejectPendingRequestIfExists]_block_invoke";
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: Not enough wallClockTimeCredits to process the request. Rejecting. wallClockTimeCredits: %fs", &v10, 0x16u);
    }

    [*(a1 + 32) _rejectPendingRequest];
  }

  else
  {
    v7 = *(a1 + 32);

    [v7 _acceptPendingRequest];
  }
}

- (void)_acceptPendingRequest
{
  v3 = self->_pendingRequest;
  pendingRequest = self->_pendingRequest;
  self->_pendingRequest = 0;

  self->_requestProcessingQueueInUse = 1;
  requestProcessingQueue = self->_requestProcessingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ATXChinSuggestionThrottlingManager__acceptPendingRequest__block_invoke;
  v7[3] = &unk_278596C10;
  v8 = v3;
  selfCopy = self;
  v6 = v3;
  dispatch_async(requestProcessingQueue, v7);
}

void __59__ATXChinSuggestionThrottlingManager__acceptPendingRequest__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_notification_management(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[ATXChinSuggestionThrottlingManager _acceptPendingRequest]_block_invoke";
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%s: Running %@", buf, 0x16u);
  }

  [*(a1 + 40) logAcceptedEventToCoreAnalytics];
  [*(a1 + 40) now];
  v5 = v4;
  v6 = [*(a1 + 32) acceptedBlock];
  v6[2]();

  [*(a1 + 40) now];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(v8 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ATXChinSuggestionThrottlingManager__acceptPendingRequest__block_invoke_76;
  block[3] = &unk_278599E28;
  block[4] = v8;
  v13 = v10 - v5;
  v12 = v7;
  dispatch_async(v9, block);
}

uint64_t __59__ATXChinSuggestionThrottlingManager__acceptPendingRequest__block_invoke_76(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  [v2 wallClockTimeCredits];
  v4 = __atxlog_handle_notification_management([v2 setWallClockTimeCredits:v3 - *(a1 + 48)]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    [*(a1 + 32) wallClockTimeCredits];
    v9 = 136315906;
    v10 = "[ATXChinSuggestionThrottlingManager _acceptPendingRequest]_block_invoke";
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    v14 = v5;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: Finished %@ in %fs. Remaining wallClockTimeCredits: %fs", &v9, 0x2Au);
  }

  [*(a1 + 32) logWallClockTimeToCoreAnalytics:*(a1 + 48)];
  *(*(a1 + 32) + 24) = 0;
  return [*(a1 + 32) _acceptOrRejectPendingRequestIfExists];
}

- (void)_rejectPendingRequest
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_notification_management(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pendingRequest = self->_pendingRequest;
    v7 = 136315394;
    v8 = "[ATXChinSuggestionThrottlingManager _rejectPendingRequest]";
    v9 = 2112;
    v10 = pendingRequest;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%s: Rejecting %@", &v7, 0x16u);
  }

  [(ATXChinSuggestionThrottlingManager *)self logRejectedEventToCoreAnalytics];
  rejectedBlock = [(ATXChinSuggestionRequest *)self->_pendingRequest rejectedBlock];
  rejectedBlock[2]();

  v6 = self->_pendingRequest;
  self->_pendingRequest = 0;
}

- (void)logReceivedEventToCoreAnalytics
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"received";
  v4[0] = &unk_283A57038;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  AnalyticsSendEvent();
}

- (void)logAcceptedEventToCoreAnalytics
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"accepted";
  v4[0] = &unk_283A57038;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  AnalyticsSendEvent();
}

- (void)logRejectedEventToCoreAnalytics
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"rejected";
  v4[0] = &unk_283A57038;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  AnalyticsSendEvent();
}

- (void)logWallClockTimeToCoreAnalytics:(double)analytics
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"wallClockTime";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:analytics];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  AnalyticsSendEvent();
}

- (void)replenishWallClockTimeCredits
{
  maxWallClockTimeCredits = self->_maxWallClockTimeCredits;
  [(ATXChinSuggestionThrottlingManager *)self wallClockTimeCredits];
  v5 = v4;
  [(ATXChinSuggestionThrottlingManager *)self now];
  v7 = v6;
  [(ATXChinSuggestionThrottlingManager *)self timestampWallClockTimeCreditsLastReplenished];
  [(ATXChinSuggestionThrottlingManager *)self setWallClockTimeCredits:fmin(maxWallClockTimeCredits, v5 + (v7 - v8) * self->_wallClockTimeCreditsReplenishingRate)];
  [(ATXChinSuggestionThrottlingManager *)self now];

  [(ATXChinSuggestionThrottlingManager *)self setTimestampWallClockTimeCreditsLastReplenished:?];
}

- (double)wallClockTimeCredits
{
  v2 = [(NSUserDefaults *)self->_defaults objectForKey:@"ATXChinSuggestionThrottlingManager.wallClockTimeCredits"];
  objc_opt_class();
  v3 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v2 doubleValue];
    v3 = v4;
  }

  return v3;
}

- (double)timestampWallClockTimeCreditsLastReplenished
{
  v2 = [(NSUserDefaults *)self->_defaults objectForKey:@"ATXChinSuggestionThrottlingManager.timestampWallClockTimeCreditsLastReplenished"];
  objc_opt_class();
  v3 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v2 doubleValue];
    v3 = v4;
  }

  return v3;
}

@end