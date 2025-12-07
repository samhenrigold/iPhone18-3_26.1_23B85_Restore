@interface TCSIDSIDStatusController
+ (id)stringForDestinationToStatus:(id)status;
- (NSNumber)status;
- (NSString)tinCanHandle;
- (TCSIDSIDStatusController)initWithItem:(id)item delegate:(id)delegate timeout:(double)timeout;
- (TCSIDSIDStatusControllerDelegate)delegate;
- (void)_statusQueryTimedOut;
- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error;
- (void)dealloc;
- (void)execute;
@end

@implementation TCSIDSIDStatusController

- (TCSIDSIDStatusController)initWithItem:(id)item delegate:(id)delegate timeout:(double)timeout
{
  v29 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = TCSIDSIDStatusController;
  v11 = [(TCSIDSIDStatusController *)&v27 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_item, item);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    destinationToStatus = v12->_destinationToStatus;
    v12->_destinationToStatus = dictionary;

    idsCanonicalDestinations = [itemCopy idsCanonicalDestinations];
    destinations = v12->_destinations;
    v12->_destinations = idsCanonicalDestinations;

    v12->_timeout = timeout;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = v12->_destinations;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        v21 = 0;
        do
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [(NSMutableDictionary *)v12->_destinationToStatus setObject:&unk_287F26668 forKeyedSubscript:*(*(&v23 + 1) + 8 * v21++), v23];
        }

        while (v19 != v21);
        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v19);
    }
  }

  return v12;
}

- (void)execute
{
  v20 = *MEMORY[0x277D85DE8];
  _TCSInitializeLogging(self, a2);
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    destinations = self->_destinations;
    v5 = v3;
    v6 = [(NSArray *)destinations componentsJoinedByString:@", "];
    v7 = TCSLogSafeDescription(v6);
    *buf = 138412290;
    v19 = v7;
    _os_log_impl(&dword_26F110000, v5, OS_LOG_TYPE_DEFAULT, "IDS status query initiated for destinations: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  timer = self->_timer;
  self->_timer = v8;

  v10 = self->_timer;
  v11 = dispatch_time(0, (self->_timeout * 1000000000.0));
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v12 = self->_timer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __35__TCSIDSIDStatusController_execute__block_invoke;
  handler[3] = &unk_279DC1990;
  objc_copyWeak(&v17, buf);
  dispatch_source_set_event_handler(v12, handler);
  dispatch_resume(self->_timer);
  v13 = objc_alloc(MEMORY[0x277D186D8]);
  v14 = [v13 initWithService:@"com.apple.private.alloy.tincan.audio" delegate:self queue:MEMORY[0x277D85CD0]];
  queryController = self->_queryController;
  self->_queryController = v14;

  [(IDSBatchIDQueryController *)self->_queryController setDestinations:self->_destinations];
  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __35__TCSIDSIDStatusController_execute__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _statusQueryTimedOut];
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  [(IDSBatchIDQueryController *)self->_queryController invalidate];
  v4.receiver = self;
  v4.super_class = TCSIDSIDStatusController;
  [(TCSIDSIDStatusController *)&v4 dealloc];
}

- (void)_statusQueryTimedOut
{
  [(IDSBatchIDQueryController *)self->_queryController invalidate];
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  delegate = [(TCSIDSIDStatusController *)self delegate];
  [delegate tinCanIDSIDSStatusControllerTimedOut:self];

  _TCSInitializeLogging(v6, v7);
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
  {
    [TCSIDSIDStatusController _statusQueryTimedOut];
  }
}

- (NSNumber)status
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  destinationToStatus = [(TCSIDSIDStatusController *)self destinationToStatus];
  v4 = [destinationToStatus countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v4)
  {

    return &unk_287F266B0;
  }

  v5 = v4;
  v6 = 0;
  v14 = 0;
  v15 = 0;
  v7 = *v17;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(destinationToStatus);
      }

      v9 = *(*(&v16 + 1) + 8 * i);
      destinationToStatus2 = [(TCSIDSIDStatusController *)self destinationToStatus];
      v11 = [destinationToStatus2 objectForKeyedSubscript:v9];
      integerValue = [v11 integerValue];

      switch(integerValue)
      {
        case 17486201:
          ++v15;
          break;
        case 1:
          ++v6;
          break;
        case 0:
          ++v14;
          break;
      }
    }

    v5 = [destinationToStatus countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v5);

  if (v6)
  {
    return &unk_287F26680;
  }

  if (v15)
  {
    return &unk_287F26668;
  }

  if (!v14)
  {
    return &unk_287F266B0;
  }

  return &unk_287F26698;
}

- (NSString)tinCanHandle
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  status = [(TCSIDSIDStatusController *)self status];
  integerValue = [status integerValue];

  if (integerValue == 1)
  {
    destinationToStatus = [(TCSIDSIDStatusController *)self destinationToStatus];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__TCSIDSIDStatusController_tinCanHandle__block_invoke;
    v8[3] = &unk_279DC1FA0;
    v8[4] = &v9;
    [destinationToStatus enumerateKeysAndObjectsUsingBlock:v8];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __40__TCSIDSIDStatusController_tinCanHandle__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 integerValue] == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error
{
  v41 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  serviceCopy = service;
  errorCopy = error;
  if ([statusCopy count])
  {
    v13 = [@"com.apple.private.alloy.tincan.audio" isEqualToString:serviceCopy];
    if (v13)
    {
      _TCSInitializeLogging(v13, v14);
      v15 = TCSLogDefault;
      if (errorCopy)
      {
        if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
        {
          [TCSIDSIDStatusController batchQueryController:updatedDestinationsStatus:onService:error:];
        }
      }

      else
      {
        if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = [objc_opt_class() stringForDestinationToStatus:statusCopy];
          v18 = TCSLogSafeDescription(v17);
          *buf = 138412290;
          v40 = v18;
          _os_log_impl(&dword_26F110000, v16, OS_LOG_TYPE_DEFAULT, "IDS status query returned status update: %@", buf, 0xCu);
        }

        status = [(TCSIDSIDStatusController *)self status];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v19 = statusCopy;
        v20 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v35;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v35 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v34 + 1) + 8 * i);
              destinationToStatus = [(TCSIDSIDStatusController *)self destinationToStatus];
              v26 = [destinationToStatus objectForKeyedSubscript:v24];

              if (v26)
              {
                v27 = [v19 objectForKeyedSubscript:v24];
                destinationToStatus2 = [(TCSIDSIDStatusController *)self destinationToStatus];
                [destinationToStatus2 setObject:v27 forKeyedSubscript:v24];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
          }

          while (v21);
        }

        status2 = [(TCSIDSIDStatusController *)self status];
        if (status != status2 && ([status isEqualToNumber:status2] & 1) == 0)
        {
          delegate = [(TCSIDSIDStatusController *)self delegate];
          [delegate tinCanIDSIDStatusControllerStatusDidChange:self];
        }

        timer = self->_timer;
        errorCopy = 0;
        if (timer)
        {
          dispatch_source_cancel(timer);
          v32 = self->_timer;
          self->_timer = 0;
        }
      }
    }

    else
    {
      _TCSInitializeLogging(v13, v14);
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
      {
        [TCSIDSIDStatusController batchQueryController:updatedDestinationsStatus:onService:error:];
      }
    }
  }

  else
  {
    _TCSInitializeLogging(0, v12);
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSIDSIDStatusController batchQueryController:updatedDestinationsStatus:onService:error:];
    }
  }
}

+ (id)stringForDestinationToStatus:(id)status
{
  v3 = MEMORY[0x277CBEB18];
  statusCopy = status;
  array = [v3 array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__TCSIDSIDStatusController_stringForDestinationToStatus___block_invoke;
  v9[3] = &unk_279DC1FC8;
  v10 = array;
  v6 = array;
  [statusCopy enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 componentsJoinedByString:{@", "}];

  return v7;
}

void __57__TCSIDSIDStatusController_stringForDestinationToStatus___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10 = IDSCopyRawAddressForDestination();
  v5 = [v4 integerValue];

  v6 = @"valid";
  v7 = @"unknown";
  if (v5 == 2)
  {
    v7 = @"invalid";
  }

  if (v5 == 17486201)
  {
    v8 = @"loading";
  }

  else
  {
    v8 = v7;
  }

  if (v5 != 1)
  {
    v6 = v8;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = %@", v10, v6];
  [*(a1 + 32) addObject:v9];
}

- (TCSIDSIDStatusControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end