@interface ATXAppInFocusStream
+ (id)currentAppInFocusStartEvent;
- (ATXAppInFocusStream)initWithRemoteIDSIdentifier:(id)identifier;
- (BOOL)_shouldPairStartEvent:(id)event withEndEvent:(id)endEvent;
- (id)_appLaunchPublisherWithStartDate:(id)date endDate:(id)endDate shouldReverse:(BOOL)reverse;
- (id)_createAppInFocusSessionFromEvent:(id)event startTime:(id)time endTime:(id)endTime;
- (id)_fetchBMDeviceFromIDSIdentifier:(id)identifier;
- (id)_getAppLaunchEventFromBMAppInFocus:(id)focus;
- (id)currentAppInFocusStartEventAtGivenTime:(id)time;
- (id)getFirstAppLaunchSessionBetweenStartDate:(id)date endDate:(id)endDate;
- (id)getFirstAppLaunchStartEventBetweenStartDate:(id)date endDate:(id)endDate;
- (id)getLastAppLaunchSessionBetweenStartDate:(id)date endDate:(id)endDate;
- (id)getLastAppLaunchStartEventBetweenStartDate:(id)date endDate:(id)endDate;
- (int)_atxAppInFocusDisplayTypeForBMAppInFocusDisplayType:(int)type;
- (int)_atxAppInFocusEventTypeForBMAppInFocusType:(int)type;
- (unint64_t)numberOfAppLaunchEventsBetweenStartDate:(id)date endDate:(id)endDate;
- (unint64_t)numberOfAppLaunchSessionsBetweenStartDate:(id)date endDate:(id)endDate forBundleID:(id)d;
- (void)_enumerateAppLaunchEventsBetweenStartDate:(id)date endDate:(id)endDate shouldReverse:(BOOL)reverse type:(int)type displayType:(int)displayType bundleIDsFilter:(id)filter block:(id)block;
- (void)_enumerateAppLaunchSessionsBetweenStartDate:(id)date endDate:(id)endDate shouldReverse:(BOOL)reverse type:(int)type displayType:(int)displayType bundleIDsFilter:(id)filter block:(id)block;
- (void)enumerateAllAppLaunchSessionsFromStartDate:(id)date bundleIDFilter:(id)filter block:(id)block;
- (void)enumerateAppLaunchEventsBetweenStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit shouldReverse:(BOOL)reverse bundleIDFilter:(id)filter block:(id)block;
- (void)enumerateAppLaunchEventsBetweenStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit shouldReverse:(BOOL)reverse type:(int)type displayType:(int)displayType bundleIDsFilter:(id)filter block:(id)self0;
- (void)enumerateAppLaunchEventsFromStartDate:(id)date bundleIDFilter:(id)filter block:(id)block;
- (void)enumerateAppLaunchSessionsBetweenStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit shouldReverse:(BOOL)reverse bundleIDFilter:(id)filter block:(id)block;
- (void)enumerateAppLaunchSessionsBetweenStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit shouldReverse:(BOOL)reverse type:(int)type displayType:(int)displayType bundleIDsFilter:(id)filter block:(id)self0;
@end

@implementation ATXAppInFocusStream

- (ATXAppInFocusStream)initWithRemoteIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = ATXAppInFocusStream;
  v5 = [(ATXAppInFocusStream *)&v10 init];
  if (!v5 || (v6 = [identifierCopy copy], remoteIDSIdentifier = v5->_remoteIDSIdentifier, v5->_remoteIDSIdentifier = v6, remoteIDSIdentifier, -[ATXAppInFocusStream _fetchBMDeviceFromIDSIdentifier:](v5, "_fetchBMDeviceFromIDSIdentifier:", v5->_remoteIDSIdentifier), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v8 = v5;
  }

  return v8;
}

+ (id)currentAppInFocusStartEvent
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [v3 currentAppInFocusStartEventAtGivenTime:v4];

  objc_autoreleasePoolPop(v2);

  return v5;
}

- (void)enumerateAppLaunchEventsFromStartDate:(id)date bundleIDFilter:(id)filter block:(id)block
{
  v8 = MEMORY[0x277CBEAA8];
  blockCopy = block;
  filterCopy = filter;
  dateCopy = date;
  v12 = [v8 now];
  [(ATXAppInFocusStream *)self enumerateAppLaunchEventsBetweenStartDate:dateCopy endDate:v12 shouldReverse:0 bundleIDFilter:filterCopy block:blockCopy];
}

- (void)enumerateAppLaunchEventsBetweenStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit shouldReverse:(BOOL)reverse bundleIDFilter:(id)filter block:(id)block
{
  reverseCopy = reverse;
  v22 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  v15 = filterCopy;
  if (filterCopy)
  {
    v21 = filterCopy;
    v16 = MEMORY[0x277CBEA60];
    blockCopy = block;
    blockCopy2 = endDate;
    endDateCopy2 = date;
    dateCopy2 = [v16 arrayWithObjects:&v21 count:1];
    [(ATXAppInFocusStream *)self enumerateAppLaunchEventsBetweenStartDate:endDateCopy2 endDate:blockCopy2 limit:limit shouldReverse:reverseCopy bundleIDsFilter:dateCopy2 block:blockCopy, v21, v22];
  }

  else
  {
    blockCopy2 = block;
    endDateCopy2 = endDate;
    dateCopy2 = date;
    [(ATXAppInFocusStream *)self enumerateAppLaunchEventsBetweenStartDate:dateCopy2 endDate:endDateCopy2 limit:limit shouldReverse:reverseCopy bundleIDsFilter:0 block:blockCopy2];
  }
}

- (void)enumerateAppLaunchEventsBetweenStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit shouldReverse:(BOOL)reverse type:(int)type displayType:(int)displayType bundleIDsFilter:(id)filter block:(id)self0
{
  v10 = *&displayType;
  v11 = *&type;
  reverseCopy = reverse;
  dateCopy = date;
  endDateCopy = endDate;
  filterCopy = filter;
  blockCopy = block;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __131__ATXAppInFocusStream_enumerateAppLaunchEventsBetweenStartDate_endDate_limit_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke;
  v21[3] = &unk_278590678;
  v23 = v25;
  limitCopy = limit;
  v20 = blockCopy;
  v22 = v20;
  [(ATXAppInFocusStream *)self _enumerateAppLaunchEventsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:reverseCopy type:v11 displayType:v10 bundleIDsFilter:filterCopy block:v21];

  _Block_object_dispose(v25, 8);
}

uint64_t __131__ATXAppInFocusStream_enumerateAppLaunchEventsBetweenStartDate_endDate_limit_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke(void *a1)
{
  if (++*(*(a1[5] + 8) + 24) <= a1[6])
  {
    return (*(a1[4] + 16))();
  }

  else
  {
    return 0;
  }
}

- (id)getFirstAppLaunchStartEventBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__ATXAppInFocusStream_getFirstAppLaunchStartEventBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_2785906A0;
  v10[4] = &v11;
  [(ATXAppInFocusStream *)self _enumerateAppLaunchEventsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:0 type:2 displayType:7 bundleIDsFilter:0 block:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __75__ATXAppInFocusStream_getFirstAppLaunchStartEventBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 starting] && objc_msgSend(v4, "type") == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)getLastAppLaunchStartEventBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__ATXAppInFocusStream_getLastAppLaunchStartEventBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_2785906A0;
  v10[4] = &v11;
  [(ATXAppInFocusStream *)self _enumerateAppLaunchEventsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:1 type:2 displayType:7 bundleIDsFilter:0 block:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __74__ATXAppInFocusStream_getLastAppLaunchStartEventBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 starting] && objc_msgSend(v4, "type") == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (unint64_t)numberOfAppLaunchEventsBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__ATXAppInFocusStream_numberOfAppLaunchEventsBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_2785906A0;
  v10[4] = &v11;
  [(ATXAppInFocusStream *)self _enumerateAppLaunchEventsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:0 type:2 displayType:7 bundleIDsFilter:0 block:v10];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __71__ATXAppInFocusStream_numberOfAppLaunchEventsBetweenStartDate_endDate___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return 1;
}

- (id)currentAppInFocusStartEventAtGivenTime:(id)time
{
  v28 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v5 = objc_autoreleasePoolPush();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v6 = __atxlog_handle_default(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "[ATXAppInFocusStream currentAppInFocusStartEventAtGivenTime:]";
    v26 = 2112;
    v27 = timeCopy;
    _os_log_impl(&dword_226368000, v6, OS_LOG_TYPE_DEFAULT, "%s: Getting the current app in focus at time: %@", buf, 0x16u);
  }

  v7 = BiomeLibrary();
  v8 = [v7 App];
  inFocus = [v8 InFocus];
  v10 = [inFocus atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_283988F00 lastN:&unk_283988F00 reversed:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__ATXAppInFocusStream_currentAppInFocusStartEventAtGivenTime___block_invoke_15;
  v15[3] = &unk_2785906C8;
  v15[4] = self;
  v17 = &v18;
  v11 = timeCopy;
  v16 = v11;
  v12 = [v10 sinkWithCompletion:&__block_literal_global_14 shouldContinue:v15];

  v13 = v19[5];
  _Block_object_dispose(&v18, 8);

  objc_autoreleasePoolPop(v5);

  return v13;
}

void __62__ATXAppInFocusStream_currentAppInFocusStartEventAtGivenTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_default(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__ATXAppInFocusStream_currentAppInFocusStartEventAtGivenTime___block_invoke_cold_1(v2);
    }
  }
}

uint64_t __62__ATXAppInFocusStream_currentAppInFocusStartEventAtGivenTime___block_invoke_15(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) _getAppLaunchEventFromBMAppInFocus:a2];
  v4 = [v3 starting];
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  }

  v5 = __atxlog_handle_default(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = [v3 bundleID];
    v9 = 136315906;
    v10 = "[ATXAppInFocusStream currentAppInFocusStartEventAtGivenTime:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 1024;
    v16 = [v3 starting];
    _os_log_impl(&dword_226368000, v5, OS_LOG_TYPE_DEFAULT, "%s: Last event from BMAppInFocus stream at time %@ is %@. Is a starting event: %d", &v9, 0x26u);
  }

  return 0;
}

- (void)_enumerateAppLaunchEventsBetweenStartDate:(id)date endDate:(id)endDate shouldReverse:(BOOL)reverse type:(int)type displayType:(int)displayType bundleIDsFilter:(id)filter block:(id)block
{
  reverseCopy = reverse;
  dateCopy = date;
  endDateCopy = endDate;
  filterCopy = filter;
  blockCopy = block;
  if ([dateCopy compare:endDateCopy] != -1)
  {
    [ATXAppInFocusStream _enumerateAppLaunchEventsBetweenStartDate:a2 endDate:self shouldReverse:? type:? displayType:? bundleIDsFilter:? block:?];
  }

  v20 = objc_autoreleasePoolPush();
  v21 = [(ATXAppInFocusStream *)self _appLaunchPublisherWithStartDate:dateCopy endDate:endDateCopy shouldReverse:reverseCopy];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __126__ATXAppInFocusStream__enumerateAppLaunchEventsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke_26;
  v25[3] = &unk_2785906F0;
  v25[4] = self;
  typeCopy = type;
  displayTypeCopy = displayType;
  v22 = filterCopy;
  v26 = v22;
  v23 = blockCopy;
  v27 = v23;
  v24 = [v21 sinkWithCompletion:&__block_literal_global_25_0 shouldContinue:v25];

  objc_autoreleasePoolPop(v20);
}

void __126__ATXAppInFocusStream__enumerateAppLaunchEventsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_default(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __126__ATXAppInFocusStream__enumerateAppLaunchEventsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke_cold_1(v2);
    }
  }
}

uint64_t __126__ATXAppInFocusStream__enumerateAppLaunchEventsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke_26(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _getAppLaunchEventFromBMAppInFocus:a2];
  v4 = v3;
  if (v3 && ((*(a1 + 56) >> [v3 type]) & 1) != 0 && ((*(a1 + 60) >> objc_msgSend(v4, "displayType")) & 1) != 0 && ((v5 = *(a1 + 40)) == 0 || (objc_msgSend(v4, "bundleID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "containsObject:", v6), v6, v7)))
  {
    v8 = (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)enumerateAllAppLaunchSessionsFromStartDate:(id)date bundleIDFilter:(id)filter block:(id)block
{
  v8 = MEMORY[0x277CBEAA8];
  blockCopy = block;
  filterCopy = filter;
  dateCopy = date;
  v12 = [v8 now];
  [(ATXAppInFocusStream *)self enumerateAppLaunchSessionsBetweenStartDate:dateCopy endDate:v12 shouldReverse:0 bundleIDFilter:filterCopy block:blockCopy];
}

- (void)enumerateAppLaunchSessionsBetweenStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit shouldReverse:(BOOL)reverse bundleIDFilter:(id)filter block:(id)block
{
  reverseCopy = reverse;
  v22 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  v15 = filterCopy;
  if (filterCopy)
  {
    v21 = filterCopy;
    v16 = MEMORY[0x277CBEA60];
    blockCopy = block;
    blockCopy2 = endDate;
    endDateCopy2 = date;
    dateCopy2 = [v16 arrayWithObjects:&v21 count:1];
    [(ATXAppInFocusStream *)self enumerateAppLaunchSessionsBetweenStartDate:endDateCopy2 endDate:blockCopy2 limit:limit shouldReverse:reverseCopy bundleIDsFilter:dateCopy2 block:blockCopy, v21, v22];
  }

  else
  {
    blockCopy2 = block;
    endDateCopy2 = endDate;
    dateCopy2 = date;
    [(ATXAppInFocusStream *)self enumerateAppLaunchSessionsBetweenStartDate:dateCopy2 endDate:endDateCopy2 limit:limit shouldReverse:reverseCopy bundleIDsFilter:0 block:blockCopy2];
  }
}

- (void)enumerateAppLaunchSessionsBetweenStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit shouldReverse:(BOOL)reverse type:(int)type displayType:(int)displayType bundleIDsFilter:(id)filter block:(id)self0
{
  v10 = *&displayType;
  v11 = *&type;
  reverseCopy = reverse;
  dateCopy = date;
  endDateCopy = endDate;
  filterCopy = filter;
  blockCopy = block;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __133__ATXAppInFocusStream_enumerateAppLaunchSessionsBetweenStartDate_endDate_limit_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke;
  v21[3] = &unk_278590718;
  v23 = v25;
  limitCopy = limit;
  v20 = blockCopy;
  v22 = v20;
  [(ATXAppInFocusStream *)self _enumerateAppLaunchSessionsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:reverseCopy type:v11 displayType:v10 bundleIDsFilter:filterCopy block:v21];

  _Block_object_dispose(v25, 8);
}

uint64_t __133__ATXAppInFocusStream_enumerateAppLaunchSessionsBetweenStartDate_endDate_limit_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke(void *a1)
{
  if (++*(*(a1[5] + 8) + 24) <= a1[6])
  {
    return (*(a1[4] + 16))();
  }

  else
  {
    return 0;
  }
}

- (id)getFirstAppLaunchSessionBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__ATXAppInFocusStream_getFirstAppLaunchSessionBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_278590740;
  v10[4] = &v11;
  [(ATXAppInFocusStream *)self _enumerateAppLaunchSessionsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:0 type:2 displayType:7 bundleIDsFilter:0 block:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

BOOL __72__ATXAppInFocusStream_getFirstAppLaunchSessionBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 type];
  if (v5 == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  return v5 != 1;
}

- (id)getLastAppLaunchSessionBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__ATXAppInFocusStream_getLastAppLaunchSessionBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_278590740;
  v10[4] = &v11;
  [(ATXAppInFocusStream *)self _enumerateAppLaunchSessionsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:1 type:2 displayType:7 bundleIDsFilter:0 block:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

BOOL __71__ATXAppInFocusStream_getLastAppLaunchSessionBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 type];
  if (v5 == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  return v5 != 1;
}

- (unint64_t)numberOfAppLaunchSessionsBetweenStartDate:(id)date endDate:(id)endDate forBundleID:(id)d
{
  v20[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  v11 = dCopy;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (dCopy)
  {
    v20[0] = dCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  }

  else
  {
    v12 = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__ATXAppInFocusStream_numberOfAppLaunchSessionsBetweenStartDate_endDate_forBundleID___block_invoke;
  v15[3] = &unk_278590740;
  v15[4] = &v16;
  [(ATXAppInFocusStream *)self _enumerateAppLaunchSessionsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:0 type:2 displayType:7 bundleIDsFilter:v12 block:v15];
  if (v11)
  {
  }

  v13 = v17[3];
  _Block_object_dispose(&v16, 8);

  return v13;
}

uint64_t __85__ATXAppInFocusStream_numberOfAppLaunchSessionsBetweenStartDate_endDate_forBundleID___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return 1;
}

- (void)_enumerateAppLaunchSessionsBetweenStartDate:(id)date endDate:(id)endDate shouldReverse:(BOOL)reverse type:(int)type displayType:(int)displayType bundleIDsFilter:(id)filter block:(id)block
{
  reverseCopy = reverse;
  dateCopy = date;
  endDateCopy = endDate;
  filterCopy = filter;
  blockCopy = block;
  if ([dateCopy compare:endDateCopy] != -1)
  {
    [ATXAppInFocusStream _enumerateAppLaunchSessionsBetweenStartDate:a2 endDate:self shouldReverse:? type:? displayType:? bundleIDsFilter:? block:?];
  }

  context = objc_autoreleasePoolPush();
  v20 = objc_opt_new();
  v21 = [(ATXAppInFocusStream *)self _appLaunchPublisherWithStartDate:dateCopy endDate:endDateCopy shouldReverse:reverseCopy];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __128__ATXAppInFocusStream__enumerateAppLaunchSessionsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke_31;
  v27[3] = &unk_278590768;
  v27[4] = self;
  v28 = v20;
  typeCopy = type;
  displayTypeCopy = displayType;
  v22 = filterCopy;
  v29 = v22;
  v33 = reverseCopy;
  v23 = blockCopy;
  v30 = v23;
  v24 = v20;
  v25 = [v21 sinkWithCompletion:&__block_literal_global_30_0 shouldContinue:v27];

  objc_autoreleasePoolPop(context);
}

void __128__ATXAppInFocusStream__enumerateAppLaunchSessionsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_default(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __126__ATXAppInFocusStream__enumerateAppLaunchEventsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke_cold_1(v2);
    }
  }
}

uint64_t __128__ATXAppInFocusStream__enumerateAppLaunchSessionsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke_31(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _getAppLaunchEventFromBMAppInFocus:a2];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = [v3 bundleID];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (((*(a1 + 64) >> [v4 type]) & 1) == 0)
    {
      goto LABEL_19;
    }

    if (((*(a1 + 68) >> [v4 displayType]) & 1) == 0)
    {
      goto LABEL_19;
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [v4 bundleID];
      v10 = [v8 containsObject:v9];

      if (!v10)
      {
        goto LABEL_19;
      }
    }

    v11 = *(a1 + 72);
    v12 = [v4 starting];
    if (v11 == 1)
    {
      if (v12)
      {
        if (v7 && [v4 starting])
        {
          if ([*(a1 + 32) _shouldPairStartEvent:v4 withEndEvent:v7])
          {
            v13 = *(a1 + 32);
            v14 = [v4 absoluteTimestamp];
            v15 = v7;
LABEL_24:
            v22 = [v15 absoluteTimestamp];
            v18 = [v13 _createAppInFocusSessionFromEvent:v4 startTime:v14 endTime:v22];

            v16 = (*(*(a1 + 56) + 16))();
            v7 = 0;
            goto LABEL_16;
          }

LABEL_25:
          v23 = *(a1 + 40);
          v18 = [v4 bundleID];
          v19 = v23;
          v20 = 0;
          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    else if (!v12)
    {
      if (v7 && ([v4 starting] & 1) == 0)
      {
        if ([*(a1 + 32) _shouldPairStartEvent:v7 withEndEvent:v4])
        {
          v13 = *(a1 + 32);
          v14 = [v7 absoluteTimestamp];
          v15 = v4;
          goto LABEL_24;
        }

        goto LABEL_25;
      }

LABEL_19:
      v16 = 1;
      goto LABEL_20;
    }

    v17 = *(a1 + 40);
    v18 = [v4 bundleID];
    v19 = v17;
    v20 = v4;
LABEL_15:
    [v19 setObject:v20 forKeyedSubscript:v18];
    v16 = 1;
LABEL_16:

LABEL_20:
    goto LABEL_21;
  }

  v16 = 1;
LABEL_21:

  return v16;
}

- (id)_appLaunchPublisherWithStartDate:(id)date endDate:(id)endDate shouldReverse:(BOOL)reverse
{
  reverseCopy = reverse;
  remoteIDSIdentifier = self->_remoteIDSIdentifier;
  endDateCopy = endDate;
  dateCopy = date;
  if ([(NSString *)remoteIDSIdentifier length])
  {
    v11 = [(ATXAppInFocusStream *)self _fetchBMDeviceFromIDSIdentifier:self->_remoteIDSIdentifier];
    v12 = BiomeLibrary();
    v13 = [v12 App];
    inFocus = [v13 InFocus];
    v15 = objc_alloc(MEMORY[0x277CF1A50]);
    if (reverseCopy)
    {
      v16 = endDateCopy;
    }

    else
    {
      v16 = dateCopy;
    }

    if (reverseCopy)
    {
      v17 = dateCopy;
    }

    else
    {
      v17 = endDateCopy;
    }

    v18 = [v15 initWithStartDate:v16 endDate:v17 maxEvents:0 lastN:0 reversed:reverseCopy];

    v19 = [inFocus publisherForDevice:v11 withUseCase:@"ProactiveAppPrediction" options:v18];
    endDateCopy = v18;
    dateCopy = inFocus;
  }

  else
  {
    v11 = BiomeLibrary();
    v12 = [v11 App];
    inFocus2 = [v12 InFocus];
    v13 = inFocus2;
    if (reverseCopy)
    {
      v21 = endDateCopy;
    }

    else
    {
      v21 = dateCopy;
    }

    if (reverseCopy)
    {
      v22 = dateCopy;
    }

    else
    {
      v22 = endDateCopy;
    }

    v19 = [inFocus2 atx_publisherWithStartDate:v21 endDate:v22 maxEvents:0 lastN:0 reversed:reverseCopy];
  }

  return v19;
}

- (id)_fetchBMDeviceFromIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  v20 = 0;
  v5 = [v4 remoteDevicesWithError:&v20];
  v6 = v20;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __55__ATXAppInFocusStream__fetchBMDeviceFromIDSIdentifier___block_invoke;
  v18 = &unk_278590790;
  v7 = identifierCopy;
  v19 = v7;
  v8 = [v5 _pas_filteredArrayWithTest:&v15];

  if (v6 || (v9 = [v8 count]) == 0)
  {
    v10 = __atxlog_handle_default(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXAppInFocusStream _fetchBMDeviceFromIDSIdentifier:];
    }

    firstObject = 0;
  }

  else
  {
    v12 = [v8 count];
    if (v12 != 1)
    {
      v13 = __atxlog_handle_default(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXAppInFocusStream _fetchBMDeviceFromIDSIdentifier:v8];
      }
    }

    firstObject = [v8 firstObject];
  }

  return firstObject;
}

uint64_t __55__ATXAppInFocusStream__fetchBMDeviceFromIDSIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 idsDeviceIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_getAppLaunchEventFromBMAppInFocus:(id)focus
{
  focusCopy = focus;
  v5 = objc_autoreleasePoolPush();
  eventBody = [focusCopy eventBody];
  v7 = eventBody;
  if (eventBody)
  {
    bundleID = [eventBody bundleID];
    v9 = bundleID;
    if (bundleID)
    {
      bundleID = [bundleID length];
      if (bundleID)
      {
        v20 = -[ATXAppInFocusStream _atxAppInFocusEventTypeForBMAppInFocusType:](self, "_atxAppInFocusEventTypeForBMAppInFocusType:", [v7 type]);
        v10 = -[ATXAppInFocusStream _atxAppInFocusDisplayTypeForBMAppInFocusDisplayType:](self, "_atxAppInFocusDisplayTypeForBMAppInFocusDisplayType:", [v7 displayType]);
        parentBundleID = [v7 parentBundleID];
        extensionHostID = [v7 extensionHostID];
        starting = [v7 starting];
        v14 = objc_alloc(MEMORY[0x277CBEAA8]);
        [focusCopy timestamp];
        v15 = [v14 initWithTimeIntervalSinceReferenceDate:?];
        launchReason = [v7 launchReason];
        v17 = [[ATXAppInFocusEvent alloc] initWithBundleId:v9 type:v20 displayType:v10 parentBundleID:parentBundleID extensionHostID:extensionHostID starting:starting absoluteTimestamp:v15 launchReason:launchReason];

        goto LABEL_11;
      }
    }

    v18 = __atxlog_handle_default(bundleID);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [ATXAppInFocusStream _getAppLaunchEventFromBMAppInFocus:];
    }
  }

  else
  {
    v9 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXAppInFocusStream _getAppLaunchEventFromBMAppInFocus:];
    }
  }

  v17 = 0;
LABEL_11:

  objc_autoreleasePoolPop(v5);

  return v17;
}

- (int)_atxAppInFocusEventTypeForBMAppInFocusType:(int)type
{
  v3 = *&type;
  if (type >= 4)
  {
    v4 = __atxlog_handle_default(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(ATXAppInFocusStream *)v3 _atxAppInFocusEventTypeForBMAppInFocusType:v4, v5, v6, v7, v8, v9, v10];
    }

    LODWORD(v3) = 0;
  }

  return v3;
}

- (int)_atxAppInFocusDisplayTypeForBMAppInFocusDisplayType:(int)type
{
  v3 = *&type;
  if (type >= 2)
  {
    if (type == 4)
    {
      LODWORD(v3) = 2;
    }

    else
    {
      v4 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [(ATXAppInFocusStream *)v3 _atxAppInFocusDisplayTypeForBMAppInFocusDisplayType:v4, v5, v6, v7, v8, v9, v10];
      }

      LODWORD(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)_shouldPairStartEvent:(id)event withEndEvent:(id)endEvent
{
  eventCopy = event;
  endEventCopy = endEvent;
  bundleID = [eventCopy bundleID];
  bundleID2 = [endEventCopy bundleID];
  v9 = [bundleID isEqualToString:bundleID2];

  if (v9 && (([eventCopy parentBundleID], (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (v11 = v10, objc_msgSend(endEventCopy, "parentBundleID"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12) || (objc_msgSend(eventCopy, "parentBundleID"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(endEventCopy, "parentBundleID"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, v13, v15)) && ((objc_msgSend(eventCopy, "extensionHostID"), (v16 = objc_claimAutoreleasedReturnValue()) == 0) || (v17 = v16, objc_msgSend(endEventCopy, "extensionHostID"), v18 = objc_claimAutoreleasedReturnValue(), v18, v17, !v18) || (objc_msgSend(eventCopy, "extensionHostID"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(endEventCopy, "extensionHostID"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isEqualToString:", v20), v20, v19, v21)) && (v22 = objc_msgSend(eventCopy, "type"), v22 == objc_msgSend(endEventCopy, "type")) && (v23 = objc_msgSend(eventCopy, "displayType"), v23 == objc_msgSend(endEventCopy, "displayType")))
  {
    absoluteTimestamp = [eventCopy absoluteTimestamp];
    absoluteTimestamp2 = [endEventCopy absoluteTimestamp];
    v26 = [absoluteTimestamp compare:absoluteTimestamp2] == -1;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)_createAppInFocusSessionFromEvent:(id)event startTime:(id)time endTime:(id)endTime
{
  endTimeCopy = endTime;
  timeCopy = time;
  eventCopy = event;
  v10 = [ATXAppInFocusEventSession alloc];
  bundleID = [eventCopy bundleID];
  type = [eventCopy type];
  displayType = [eventCopy displayType];
  parentBundleID = [eventCopy parentBundleID];
  extensionHostID = [eventCopy extensionHostID];
  launchReason = [eventCopy launchReason];

  v17 = [(ATXAppInFocusEventSession *)v10 initWithBundleId:bundleID type:type displayType:displayType parentBundleID:parentBundleID extensionHostID:extensionHostID appSessionStartTime:timeCopy appSessionEndTime:endTimeCopy launchReason:launchReason];

  return v17;
}

void __62__ATXAppInFocusStream_currentAppInFocusStartEventAtGivenTime___block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_226368000, v2, v3, "Could not obtain current App in Focus from Biome: %@", v4, v5, v6, v7);
}

- (void)_enumerateAppLaunchEventsBetweenStartDate:(uint64_t)a1 endDate:(uint64_t)a2 shouldReverse:type:displayType:bundleIDsFilter:block:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAppInFocusStream.m" lineNumber:258 description:@"Start date must be earlier than the end date."];
}

void __126__ATXAppInFocusStream__enumerateAppLaunchEventsBetweenStartDate_endDate_shouldReverse_type_displayType_bundleIDsFilter_block___block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_226368000, v2, v3, "ATXAppInFocusStream: Can't read App.InFocus stream with error: %@", v4, v5, v6, v7);
}

- (void)_enumerateAppLaunchSessionsBetweenStartDate:(uint64_t)a1 endDate:(uint64_t)a2 shouldReverse:type:displayType:bundleIDsFilter:block:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAppInFocusStream.m" lineNumber:467 description:@"Start date must be earlier than the end date."];
}

- (void)_fetchBMDeviceFromIDSIdentifier:(void *)a1 .cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_226368000, v1, v2, "ATXAppInFocusStream: Got %lu remote oneness devices from BMSyncService, expected 1", v3, v4, v5, v6);
}

- (void)_fetchBMDeviceFromIDSIdentifier:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_226368000, v0, OS_LOG_TYPE_ERROR, "ATXAppInFocusStream: Biome couldn't fetch remote devices with error: %@", v1, 0xCu);
}

- (void)_atxAppInFocusEventTypeForBMAppInFocusType:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2_2(&dword_226368000, a2, a3, "BMAppInFocusType: %lu not handled in switch statement. Returning ATXAppInFocusEventTypeUnknown", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_atxAppInFocusDisplayTypeForBMAppInFocusDisplayType:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2_2(&dword_226368000, a2, a3, "BMAppInFocusDisplayType: %lu not handled in switch statement. Returning ATXAppInFocusDisplayTypeUnknown", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end