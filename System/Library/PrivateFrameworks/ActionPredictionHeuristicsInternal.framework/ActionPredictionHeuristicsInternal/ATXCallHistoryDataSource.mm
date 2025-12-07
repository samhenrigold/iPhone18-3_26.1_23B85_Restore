@interface ATXCallHistoryDataSource
- (ATXCallHistoryDataSource)initWithDevice:(id)device;
- (id)_dictForCall:(id)call;
- (id)_dictForHandle:(id)handle;
- (void)callNewerThan:(double)than showIncoming:(BOOL)incoming showOutgoing:(BOOL)outgoing missedOnly:(BOOL)only callback:(id)callback;
@end

@implementation ATXCallHistoryDataSource

- (ATXCallHistoryDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXCallHistoryDataSource;
  v6 = [(ATXCallHistoryDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)callNewerThan:(double)than showIncoming:(BOOL)incoming showOutgoing:(BOOL)outgoing missedOnly:(BOOL)only callback:(id)callback
{
  onlyCopy = only;
  v44[2] = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA320))
  {
    thanCopy = 7776000.0;
    v33 = callbackCopy;
    if (than <= 7776000.0)
    {
      thanCopy = than;
    }

    else
    {
      v12 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [ATXCallHistoryDataSource callNewerThan:v12 showIncoming:than showOutgoing:? missedOnly:? callback:?];
      }
    }

    v43[0] = *MEMORY[0x277CF7DF8];
    v13 = [(ATXHeuristicDevice *)self->_device now];
    v14 = [v13 dateByAddingTimeInterval:-thanCopy];
    v44[0] = v14;
    v43[1] = *MEMORY[0x277CF7DF0];
    v15 = [(ATXHeuristicDevice *)self->_device now];
    v44[1] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];

    v17 = objc_alloc(MEMORY[0x277CF7D40]);
    v32 = v16;
    v18 = [v17 initWithFetchingLimitsDictionary:v16 andCoalescingStrategy:*MEMORY[0x277CF7DE8] andPostFetchingPredicate:0 withQueue:0];
    v34 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = v18;
    recentCalls = [v18 recentCalls];
    v20 = [recentCalls countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v39;
      v23 = *MEMORY[0x277CF7D98];
      v24 = *MEMORY[0x277CF7DA8];
      v36 = *MEMORY[0x277CF7DA0];
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(recentCalls);
          }

          v26 = *(*(&v38 + 1) + 8 * i);
          callStatus = [v26 callStatus];
          if ((incoming || (v23 & callStatus) == 0) && (outgoing || (v24 & callStatus) == 0) && (!onlyCopy || (v36 & callStatus) != 0))
          {
            date = [v26 date];

            if (date)
            {
              v29 = [(ATXCallHistoryDataSource *)self _dictForCall:v26];
              if (v29)
              {
                [v34 addObject:v29];
              }
            }
          }
        }

        v21 = [recentCalls countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v21);
    }

    v30 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [ATXCallHistoryDataSource callNewerThan:v34 showIncoming:v30 showOutgoing:? missedOnly:? callback:?];
    }

    callbackCopy = v33;
    (*(v33 + 2))(v33, v34, 0);
  }

  else
  {
    (*(callbackCopy + 2))(callbackCopy, MEMORY[0x277CBEBF8], 0);
  }
}

- (id)_dictForCall:(id)call
{
  v36 = *MEMORY[0x277D85DE8];
  callCopy = call;
  v5 = objc_opt_new();
  localParticipantUUID = [callCopy localParticipantUUID];
  uUIDString = [localParticipantUUID UUIDString];
  [v5 setObject:uUIDString forKeyedSubscript:@"localParticipantUUID"];

  uniqueId = [callCopy uniqueId];
  [v5 setObject:uniqueId forKeyedSubscript:@"uniqueId"];

  callStatus = [callCopy callStatus];
  v10 = objc_opt_new();
  v11 = v10;
  if ((*MEMORY[0x277CF7D98] & callStatus) != 0)
  {
    [v10 addObject:@"incoming"];
  }

  if ((*MEMORY[0x277CF7DA8] & callStatus) != 0)
  {
    [v11 addObject:@"outgoing"];
  }

  v12 = *MEMORY[0x277CF7DA0];
  if ((*MEMORY[0x277CF7DA0] & callStatus) != 0)
  {
    [v11 addObject:@"missed"];
  }

  v13 = [v11 copy];

  [v5 setObject:v13 forKeyedSubscript:@"callStatus"];
  v14 = MEMORY[0x277CCABB0];
  date = [callCopy date];
  [date timeIntervalSinceReferenceDate];
  v16 = [v14 numberWithDouble:?];
  [v5 setObject:v16 forKeyedSubscript:@"date"];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:{(objc_msgSend(callCopy, "callStatus") & v12) != 0}];
  [v5 setObject:v17 forKeyedSubscript:@"missed"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(callCopy, "unreadCount")}];
  [v5 setObject:v18 forKeyedSubscript:@"unreadCount"];

  contactIdentifier = [callCopy contactIdentifier];
  [v5 setObject:contactIdentifier forKeyedSubscript:@"contactIdentifier"];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(callCopy, "mediaType")}];
  [v5 setObject:v20 forKeyedSubscript:@"mediaType"];

  callerNameForDisplay = [callCopy callerNameForDisplay];
  [v5 setObject:callerNameForDisplay forKeyedSubscript:@"callerNameForDisplay"];

  serviceProvider = [callCopy serviceProvider];
  [v5 setObject:serviceProvider forKeyedSubscript:@"serviceProvider"];

  [v5 setObject:callCopy forKeyedSubscript:@"CHRecentCall"];
  v23 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  remoteParticipantHandles = [callCopy remoteParticipantHandles];
  v25 = [remoteParticipantHandles countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v32;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(remoteParticipantHandles);
        }

        v29 = [(ATXCallHistoryDataSource *)self _dictForHandle:*(*(&v31 + 1) + 8 * i)];
        if (v29)
        {
          [v23 addObject:v29];
        }
      }

      v26 = [remoteParticipantHandles countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v26);
  }

  [v5 setObject:v23 forKeyedSubscript:@"remoteParticipantHandles"];

  return v5;
}

- (id)_dictForHandle:(id)handle
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (handle)
  {
    v9[0] = @"type";
    handleCopy = handle;
    type = [handleCopy type];
    if ((type - 1) > 2)
    {
      v5 = @"unknown";
    }

    else
    {
      v5 = off_278C3D288[type - 1];
    }

    v10[0] = v5;
    v9[1] = @"value";
    value = [handleCopy value];

    v10[1] = value;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)callNewerThan:(os_log_t)log showIncoming:(double)a2 showOutgoing:missedOnly:callback:.cold.1(os_log_t log, double a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218240;
  v3 = a2;
  v4 = 1024;
  v5 = 7776000;
  _os_log_fault_impl(&dword_23E3EA000, log, OS_LOG_TYPE_FAULT, "maxAge %f too big; maximum is %i", &v2, 0x12u);
}

- (void)callNewerThan:(void *)a1 showIncoming:(NSObject *)a2 showOutgoing:missedOnly:callback:.cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_DEBUG, "Found %lu call(s) for query", &v3, 0xCu);
}

@end