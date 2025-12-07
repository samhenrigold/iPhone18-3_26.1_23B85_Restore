@interface _MSPSharedTripSingleCapabilityLevelFetcher
- (_MSPSharedTripSingleCapabilityLevelFetcher)initWithContact:(id)contact timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)_finishWithType:(unint64_t)type;
- (void)_timeout;
- (void)capabilityLevelFetcher:(id)fetcher didUpdateCapabilityLevelsForHandles:(id)handles;
- (void)start;
@end

@implementation _MSPSharedTripSingleCapabilityLevelFetcher

- (_MSPSharedTripSingleCapabilityLevelFetcher)initWithContact:(id)contact timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  contactCopy = contact;
  queueCopy = queue;
  completionCopy = completion;
  v20.receiver = self;
  v20.super_class = _MSPSharedTripSingleCapabilityLevelFetcher;
  v14 = [(_MSPSharedTripSingleCapabilityLevelFetcher *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_contact, contact);
    v16 = [completionCopy copy];
    completion = v15->_completion;
    v15->_completion = v16;

    objc_storeStrong(&v15->_keepAliveReference, v15);
    objc_storeStrong(&v15->_callbackQueue, queue);
    timeoutCopy = 10.0;
    if (timeout > 0.0)
    {
      timeoutCopy = timeout;
    }

    v15->_timeoutInterval = timeoutCopy;
  }

  return v15;
}

- (void)start
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
  v4 = [v3 capabilityLevelForContact:self->_contact];

  if (v4)
  {
    v6 = MSPGetSharedTripCapabilityFetchingLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      contact = self->_contact;
      *buf = 138477827;
      v24 = contact;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "fetchCapabilityLevelForContact found existing capability for single destination %{private}@", buf, 0xCu);
    }

    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51___MSPSharedTripSingleCapabilityLevelFetcher_start__block_invoke;
    block[3] = &unk_279867DF0;
    block[4] = self;
    block[5] = v4;
    dispatch_async(callbackQueue, block);
  }

  else
  {
    timeoutInterval = self->_timeoutInterval;
    v10 = self->_callbackQueue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __51___MSPSharedTripSingleCapabilityLevelFetcher_start__block_invoke_2;
    v20[3] = &unk_279867680;
    v20[4] = self;
    v11 = [GCDTimer scheduledTimerWithTimeInterval:v10 queue:v20 block:timeoutInterval];
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = v11;

    v14 = MSPGetSharedTripCapabilityFetchingLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = self->_contact;
      v16 = self->_timeoutInterval;
      *buf = 138478083;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "fetchCapabilityLevelForContact enqueuing single destination %{private}@, timeout: %#.1lfs", buf, 0x16u);
    }

    v17 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    [v17 registerObserver:self];

    v18 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    v22 = self->_contact;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [v18 requestCapabilityLevelsForContacts:v19];
  }
}

- (void)capabilityLevelFetcher:(id)fetcher didUpdateCapabilityLevelsForHandles:(id)handles
{
  v21 = *MEMORY[0x277D85DE8];
  contact = self->_contact;
  handlesCopy = handles;
  stringValue = [(MSPSharedTripContact *)contact stringValue];
  v8 = [handlesCopy containsObject:stringValue];

  if (v8)
  {
    v9 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    v10 = [v9 capabilityLevelForContact:self->_contact];

    if (v10)
    {
      v12 = MSPGetSharedTripCapabilityFetchingLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = self->_contact;
        *buf = 138478083;
        v18 = v13;
        v19 = 2048;
        v20 = v10;
        _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_INFO, "fetchCapabilityLevelForContact response for contact %{private}@: %lu", buf, 0x16u);
      }

      v14 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
      [v14 unregisterObserver:self];

      callbackQueue = self->_callbackQueue;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __105___MSPSharedTripSingleCapabilityLevelFetcher_capabilityLevelFetcher_didUpdateCapabilityLevelsForHandles___block_invoke;
      v16[3] = &unk_279867DF0;
      v16[4] = self;
      v16[5] = v10;
      dispatch_async(callbackQueue, v16);
    }
  }
}

- (void)_timeout
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripCapabilityFetchingLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    contact = self->_contact;
    v7 = 138477827;
    v8 = contact;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "fetchCapabilityLevelForContact timed out waiting for contact %{private}@", &v7, 0xCu);
  }

  v5 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
  [v5 unregisterObserver:self];

  v6 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
  -[_MSPSharedTripSingleCapabilityLevelFetcher _finishWithType:](self, "_finishWithType:", [v6 capabilityLevelForContact:self->_contact]);
}

- (void)_finishWithType:(unint64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  completion = self->_completion;
  v6 = MSPGetSharedTripCapabilityFetchingLog(self);
  v7 = v6;
  if (completion)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (type > 4)
      {
        v8 = @"Unknown";
      }

      else
      {
        v8 = *(&off_279867E10 + type);
      }

      contact = self->_contact;
      v15 = 138543619;
      v16 = v8;
      v17 = 2113;
      v18 = contact;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "fetchCapabilityLevelForContact cleaning up and calling completion handler with type %{public}@ for contact %{private}@", &v15, 0x16u);
    }

    [(GCDTimer *)self->_timeoutTimer invalidate];
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = 0;

    v12 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    [v12 unregisterObserver:self];

    v7 = MEMORY[0x259C7AD60](self->_completion);
    v13 = self->_completion;
    self->_completion = 0;

    (*(v7 + 16))(v7, type);
    keepAliveReference = self->_keepAliveReference;
    self->_keepAliveReference = 0;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v9 = self->_contact;
    v15 = 138477827;
    v16 = v9;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_FAULT, "fetchCapabilityLevelForContact single-fetcher finish was called multiple times for contact %{private}@", &v15, 0xCu);
  }
}

@end