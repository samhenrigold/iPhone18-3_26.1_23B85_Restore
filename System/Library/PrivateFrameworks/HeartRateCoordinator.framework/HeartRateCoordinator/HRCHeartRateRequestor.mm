@interface HRCHeartRateRequestor
- (BOOL)opportunisticUpdatesEnabled;
- (BOOL)requestStreamingMode:(unint64_t)mode withError:(id *)error;
- (HRCHeartRateOutputDelegate)delegate;
- (HRCHeartRateRequestor)initWithDelegate:(id)delegate onQueue:(id)queue;
- (HRCHeartRateRequestor)initWithDelegate:(id)delegate onQueue:(id)queue connectionHelper:(id)helper;
- (void)dealloc;
- (void)handleHeartRateData:(id)data;
- (void)reassessServerConnection;
- (void)refreshRequiredWithCompletionHandler:(id)handler;
- (void)setOpportunisticUpdatesEnabled:(BOOL)enabled;
- (void)setUserWorkoutActivitySession:(unint64_t)session isIndoor:(int64_t)indoor;
@end

@implementation HRCHeartRateRequestor

- (HRCHeartRateRequestor)initWithDelegate:(id)delegate onQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = objc_opt_new();
  v9 = [(HRCHeartRateRequestor *)self initWithDelegate:delegateCopy onQueue:queueCopy connectionHelper:v8];

  return v9;
}

- (HRCHeartRateRequestor)initWithDelegate:(id)delegate onQueue:(id)queue connectionHelper:(id)helper
{
  delegateCopy = delegate;
  queueCopy = queue;
  helperCopy = helper;
  v11 = hws_get_framework_log(helperCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2521DF000, v11, OS_LOG_TYPE_DEFAULT, "HRCHeartRateRequestor init", buf, 2u);
  }

  v17.receiver = self;
  v17.super_class = HRCHeartRateRequestor;
  v12 = [(HRCHeartRateRequestor *)&v17 init];
  objc_storeWeak(&v12->_delegate, delegateCopy);
  objc_storeStrong(&v12->_clientQueue, queue);
  objc_storeStrong(&v12->_connectionHelper, helper);
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create("com.apple.heartratecoordinator.heartraterequestor", v13);
  primaryQueue = v12->_primaryQueue;
  v12->_primaryQueue = v14;

  *&v12->_activityType = xmmword_2521E46D0;
  [(HRCHeartRateRequestorXPCHelper *)v12->_connectionHelper setupWithDelegate:v12 onQueue:v12->_primaryQueue];

  return v12;
}

- (void)dealloc
{
  primaryQueue = self->_primaryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HRCHeartRateRequestor_dealloc__block_invoke;
  block[3] = &unk_2796FA750;
  block[4] = self;
  dispatch_sync(primaryQueue, block);
  v4.receiver = self;
  v4.super_class = HRCHeartRateRequestor;
  [(HRCHeartRateRequestor *)&v4 dealloc];
}

- (BOOL)requestStreamingMode:(unint64_t)mode withError:(id *)error
{
  if (mode == 1)
  {
    v8 = hws_get_framework_log(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HRCHeartRateRequestor requestStreamingMode:v8 withError:?];
    }

    if (error)
    {
      *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.heartratecoordinator" code:200 userInfo:&unk_2864678D0];
    }
  }

  else
  {
    v6 = [(HRCHeartRateRequestor *)self primaryQueue:mode];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__HRCHeartRateRequestor_requestStreamingMode_withError___block_invoke;
    v10[3] = &unk_2796FA778;
    v10[4] = self;
    v10[5] = mode;
    dispatch_sync(v6, v10);
  }

  return mode != 1;
}

void __56__HRCHeartRateRequestor_requestStreamingMode_withError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) requestedStreamingMode];
  if (v2 != *(a1 + 40))
  {
    v3 = hws_get_framework_log(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) requestedStreamingMode];
      v5 = *(a1 + 40);
      v9 = 134218240;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_2521DF000, v3, OS_LOG_TYPE_DEFAULT, "streaming mode request updated from %ld to %ld", &v9, 0x16u);
    }

    v7 = *(a1 + 40);
    v6 = (a1 + 40);
    [*(v6 - 1) setRequestedStreamingMode:v7];
    [*(v6 - 1) reassessServerConnection];
    v8 = [*(v6 - 1) connectionHelper];
    [v8 requestStreamingMode:*v6];
  }
}

- (void)reassessServerConnection
{
  primaryQueue = [(HRCHeartRateRequestor *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  if ([(HRCHeartRateRequestor *)self requestedStreamingMode]|| self->_opportunisticUpdatesEnabled || [(HRCHeartRateRequestor *)self activityType])
  {
    connectionHelper = [(HRCHeartRateRequestor *)self connectionHelper];
    connected = [connectionHelper connected];

    if (connected)
    {
      return;
    }

    connectionHelper2 = [(HRCHeartRateRequestor *)self connectionHelper];
    [connectionHelper2 connect];

    connectionHelper3 = [(HRCHeartRateRequestor *)self connectionHelper];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    [connectionHelper3 updateProcessName:processName];
  }

  else
  {
    connectionHelper4 = [(HRCHeartRateRequestor *)self connectionHelper];
    connected2 = [connectionHelper4 connected];

    if (!connected2)
    {
      return;
    }

    connectionHelper3 = [(HRCHeartRateRequestor *)self connectionHelper];
    [connectionHelper3 invalidateConnection];
  }
}

- (void)setUserWorkoutActivitySession:(unint64_t)session isIndoor:(int64_t)indoor
{
  primaryQueue = [(HRCHeartRateRequestor *)self primaryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HRCHeartRateRequestor_setUserWorkoutActivitySession_isIndoor___block_invoke;
  block[3] = &unk_2796FA7A0;
  block[4] = self;
  block[5] = session;
  block[6] = indoor;
  dispatch_sync(primaryQueue, block);
}

void __64__HRCHeartRateRequestor_setUserWorkoutActivitySession_isIndoor___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activityType];
  if (v2 != *(a1 + 40) || (v2 = [*(a1 + 32) locationType], v2 != *(a1 + 48)))
  {
    v3 = hws_get_framework_log(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = 134283777;
      v8 = v4;
      v9 = 2049;
      v10 = v5;
      _os_log_impl(&dword_2521DF000, v3, OS_LOG_TYPE_DEFAULT, "client updated HKWorkoutActivityType : %{private}lu , HKWorkoutSessionLocationType : %{private}lu", &v7, 0x16u);
    }

    [*(a1 + 32) setActivityType:*(a1 + 40)];
    [*(a1 + 32) setLocationType:*(a1 + 48)];
    [*(a1 + 32) reassessServerConnection];
    v6 = [*(a1 + 32) connectionHelper];
    [v6 setUserWorkoutActivityType:objc_msgSend(*(a1 + 32) locationType:{"activityType"), objc_msgSend(*(a1 + 32), "locationType")}];
  }
}

- (void)setOpportunisticUpdatesEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = hws_get_framework_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [HRCHeartRateRequestor setOpportunisticUpdatesEnabled:v3];
    }
  }

  else
  {
    primaryQueue = [(HRCHeartRateRequestor *)self primaryQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__HRCHeartRateRequestor_setOpportunisticUpdatesEnabled___block_invoke;
    v6[3] = &unk_2796FA7C8;
    v6[4] = self;
    v7 = 0;
    dispatch_sync(primaryQueue, v6);
  }
}

void __56__HRCHeartRateRequestor_setOpportunisticUpdatesEnabled___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 16) != v2)
  {
    *(v1 + 16) = v2;
    v4 = hws_get_framework_log(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&dword_2521DF000, v4, OS_LOG_TYPE_DEFAULT, "opportunisticUpdatesEnabled : %{BOOL}u", v7, 8u);
    }

    [*(a1 + 32) reassessServerConnection];
    v6 = [*(a1 + 32) connectionHelper];
    [v6 requestOpportunisticUpdates:*(a1 + 40)];
  }
}

- (BOOL)opportunisticUpdatesEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  primaryQueue = [(HRCHeartRateRequestor *)self primaryQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HRCHeartRateRequestor_opportunisticUpdatesEnabled__block_invoke;
  v5[3] = &unk_2796FA7F0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(primaryQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)refreshRequiredWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  primaryQueue = [(HRCHeartRateRequestor *)self primaryQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HRCHeartRateRequestor_refreshRequiredWithCompletionHandler___block_invoke;
  v7[3] = &unk_2796FA818;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(primaryQueue, v7);
}

void __62__HRCHeartRateRequestor_refreshRequiredWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v4 processName];
  (*(v2 + 16))(v2, v3, [*(a1 + 32) requestedStreamingMode], *(*(a1 + 32) + 16), objc_msgSend(*(a1 + 32), "activityType"), objc_msgSend(*(a1 + 32), "locationType"));
}

- (void)handleHeartRateData:(id)data
{
  dataCopy = data;
  v5 = hws_get_framework_log(dataCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2521DF000, v5, OS_LOG_TYPE_INFO, "received heart rate sample in client process", buf, 2u);
  }

  clientQueue = self->_clientQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HRCHeartRateRequestor_handleHeartRateData___block_invoke;
  v8[3] = &unk_2796FA840;
  v9 = dataCopy;
  selfCopy = self;
  v7 = dataCopy;
  dispatch_async(clientQueue, v8);
}

void __45__HRCHeartRateRequestor_handleHeartRateData___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hrContext];
  v3 = *(a1 + 40);
  if (v2 == 2)
  {
    v4 = [v3 delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [*(a1 + 32) streamingThrottleStatus];

      if (v5 == 3)
      {
        v7 = hws_get_framework_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [*(a1 + 32) uuid];
          [*(a1 + 32) heartRate];
          v10 = v9;
          v11 = [*(a1 + 32) confidence];
          [v11 doubleValue];
          v13 = v12;
          v14 = [*(a1 + 32) hrContext];
          v15 = [*(a1 + 32) timestamp];
          v42 = 138478851;
          v43 = v8;
          v44 = 2053;
          v45 = v10;
          v46 = 2048;
          v47 = v13;
          v48 = 2048;
          v49 = v14;
          v50 = 2113;
          v51 = v15;
          _os_log_impl(&dword_2521DF000, v7, OS_LOG_TYPE_INFO, "sending filtered HR with uuid : %{private}@, bpm : %{sensitive}f, confidence : %f, context : %ld, date : %{private}@", &v42, 0x34u);
        }

        v16 = [*(a1 + 40) delegate];
        [v16 handleFilteredHeartRate:*(a1 + 32)];
      }
    }

    else
    {
    }

    v30 = [*(a1 + 40) delegate];
    v31 = objc_opt_respondsToSelector();

    if (v31)
    {
      v33 = hws_get_framework_log(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = [*(a1 + 32) uuid];
        [*(a1 + 32) heartRate];
        v36 = v35;
        v37 = [*(a1 + 32) confidence];
        [v37 doubleValue];
        v39 = v38;
        v40 = [*(a1 + 32) hrContext];
        v41 = [*(a1 + 32) timestamp];
        v42 = 138478851;
        v43 = v34;
        v44 = 2053;
        v45 = v36;
        v46 = 2048;
        v47 = v39;
        v48 = 2048;
        v49 = v40;
        v50 = 2113;
        v51 = v41;
        _os_log_impl(&dword_2521DF000, v33, OS_LOG_TYPE_INFO, "sending one second streaming hr with uuid : %{private}@, bpm : %{sensitive}f, confidence : %f, context : %ld, date : %{private}@", &v42, 0x34u);
      }

      v29 = [*(a1 + 40) delegate];
      [v29 handleOneSecondStreamingHeartRate:*(a1 + 32)];
LABEL_18:
    }
  }

  else if (([v3 opportunisticUpdatesEnabled] & 1) != 0 || objc_msgSend(*(a1 + 32), "sourceType") == 3)
  {
    v17 = [*(a1 + 40) delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v20 = hws_get_framework_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [*(a1 + 32) uuid];
        [*(a1 + 32) heartRate];
        v23 = v22;
        v24 = [*(a1 + 32) confidence];
        [v24 doubleValue];
        v26 = v25;
        v27 = [*(a1 + 32) hrContext];
        v28 = [*(a1 + 32) timestamp];
        v42 = 138478851;
        v43 = v21;
        v44 = 2053;
        v45 = v23;
        v46 = 2048;
        v47 = v26;
        v48 = 2048;
        v49 = v27;
        v50 = 2113;
        v51 = v28;
        _os_log_impl(&dword_2521DF000, v20, OS_LOG_TYPE_INFO, "sending filtered HR with uuid : %{private}@, bpm : %{sensitive}f, confidence : %f, context : %ld, date : %{private}@", &v42, 0x34u);
      }

      v29 = [*(a1 + 40) delegate];
      [v29 handleFilteredHeartRate:*(a1 + 32)];
      goto LABEL_18;
    }
  }
}

- (HRCHeartRateOutputDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end