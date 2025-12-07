@interface PCWWANUsabilityMonitor
- (BOOL)_isCurrentDataSimContextOnIvarQueue:(id)queue;
- (BOOL)isBadLinkQuality;
- (BOOL)isInterfaceHistoricallyUsable;
- (BOOL)isInterfaceUsable;
- (BOOL)isInternetReachable;
- (BOOL)isLTEWithCDRX;
- (BOOL)isPoorLinkQuality;
- (BOOL)isRadioHot;
- (NSString)linkQualityString;
- (NSString)networkCode;
- (PCInterfaceUsabilityMonitorDelegate)delegate;
- (PCWWANUsabilityMonitor)initWithDelegateQueue:(id)queue;
- (__CFString)wwanInterfaceName;
- (id)_currentDataSimContext;
- (int)currentRAT;
- (int)linkQuality;
- (int64_t)interfaceConstraint;
- (unint64_t)interface5GMode;
- (void)_adjustInterfaceNameForWWANContextID:(int)d interfaceName:(id)name forContext:(id)context;
- (void)_callDelegateOnIvarQueueWithBlock:(id)block;
- (void)_forwardConfigurationOnIvarQueue;
- (void)_processCallStatusChanged:(id)changed;
- (void)_processDataConnectionStatus:(id)status forContext:(id)context;
- (void)_processDataStatus:(id)status forContext:(id)context;
- (void)_setupWWANMonitor;
- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info;
- (void)currentDataSimChanged:(id)changed;
- (void)dataStatus:(id)status dataStatusInfo:(id)info;
- (void)dealloc;
- (void)interfaceConstraintChanged:(id)changed;
- (void)interfaceLinkQualityChanged:(id)changed previousLinkQuality:(int)quality;
- (void)interfaceReachabilityChanged:(id)changed;
- (void)setDelegate:(id)delegate;
- (void)setThresholdOffTransitionCount:(unint64_t)count;
- (void)setTrackUsability:(BOOL)usability;
- (void)setTrackedTimeInterval:(double)interval;
@end

@implementation PCWWANUsabilityMonitor

void *__43__PCWWANUsabilityMonitor_isInterfaceUsable__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    result = [result isInterfaceUsable];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)isInterfaceUsable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PCWWANUsabilityMonitor_isInterfaceUsable__block_invoke;
  v5[3] = &unk_279A1A068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)linkQualityString
{
  linkQuality = [(PCWWANUsabilityMonitor *)self linkQuality];

  return [PCInterfaceUsabilityMonitor stringForLinkQuality:linkQuality];
}

- (int)linkQuality
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__PCWWANUsabilityMonitor_linkQuality__block_invoke;
  v5[3] = &unk_279A1A068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__PCWWANUsabilityMonitor_linkQuality__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    result = [v2 linkQuality];
  }

  else
  {
    result = 4294967294;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)interfaceConstraint
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__PCWWANUsabilityMonitor_interfaceConstraint__block_invoke;
  v5[3] = &unk_279A1A068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__45__PCWWANUsabilityMonitor_interfaceConstraint__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    result = [result interfaceConstraint];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)currentRAT
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PCWWANUsabilityMonitor_currentRAT__block_invoke;
  v5[3] = &unk_279A1A180;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isLTEWithCDRX
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__PCWWANUsabilityMonitor_isLTEWithCDRX__block_invoke;
  v5[3] = &unk_279A1A068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __39__PCWWANUsabilityMonitor_isLTEWithCDRX__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  _CTServerConnectionGetCDRXWithLTEState();
  if (!*MEMORY[0x277CC3A68])
  {
    v7 = +[PCLog usabilityMonitor];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_25E3EF000, v7, OS_LOG_TYPE_DEFAULT, "%@ isLTEWithCDRX? On", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (v13 != *MEMORY[0x277CC3A70])
  {
    v2 = *MEMORY[0x277CC3A60];
    v3 = +[PCLog usabilityMonitor];
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        v5 = *(a1 + 32);
        *buf = 138412290;
        v15 = v5;
        v6 = "%@ isLTEWithCDRX? Got invalid value from CT";
LABEL_15:
        _os_log_impl(&dword_25E3EF000, v3, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
      }
    }

    else if (v4)
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v15 = v11;
      v6 = "%@ isLTEWithCDRX? Off";
      goto LABEL_15;
    }

    return;
  }

  v12 = 0;
  notify_get_state(*(*(a1 + 32) + 80), &v12);
  v9 = +[PCLog usabilityMonitor];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 138412546;
    v15 = v10;
    v16 = 2048;
    v17 = v12;
    _os_log_impl(&dword_25E3EF000, v9, OS_LOG_TYPE_DEFAULT, "%@ isLTEWithCDRX? Unknown  --  powerlog value %llu", buf, 0x16u);
  }

  if (v12)
  {
LABEL_12:
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)isBadLinkQuality
{
  linkQuality = [(PCWWANUsabilityMonitor *)self linkQuality];

  return [PCInterfaceUsabilityMonitor isBadLinkQuality:linkQuality];
}

- (PCWWANUsabilityMonitor)initWithDelegateQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = PCWWANUsabilityMonitor;
  v6 = [(PCWWANUsabilityMonitor *)&v12 init];
  if (v6)
  {
    v7 = dispatch_queue_create("PCWWANUsabilityMonitor-ivarqueue", 0);
    ivarQueue = v6->_ivarQueue;
    v6->_ivarQueue = v7;

    v9 = dispatch_queue_create("PCWWANUsabilityMonitor-monitordelegatequeue", 0);
    monitorDelegateQueue = v6->_monitorDelegateQueue;
    v6->_monitorDelegateQueue = v9;

    objc_storeStrong(&v6->_delegateQueue, queue);
    v6->_currentRAT = -1;
    notify_register_dispatch("com.apple.powerlog.BasebandHasCDRXCapability", &v6->_powerlogCDRXToken, MEMORY[0x277D85CD0], &__block_literal_global_6);
    [(PCWWANUsabilityMonitor *)v6 _setupWWANMonitor];
  }

  return v6;
}

void __48__PCWWANUsabilityMonitor_initWithDelegateQueue___block_invoke(int a1, int token)
{
  v6 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  v2 = +[PCLog usabilityMonitor];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v5 = state64;
    _os_log_impl(&dword_25E3EF000, v2, OS_LOG_TYPE_DEFAULT, "kPCWWANPowerlogCDRXNotification - state = %llu", buf, 0xCu);
  }
}

- (void)dealloc
{
  notify_cancel(self->_powerlogCDRXToken);
  [(PCInterfaceUsabilityMonitor *)self->_interfaceMonitor setDelegate:0];
  interfaceMonitor = self->_interfaceMonitor;
  self->_interfaceMonitor = 0;

  if (self->_ctServerConnection)
  {
    _CTServerConnectionUnregisterForNotification();
    CFRelease(self->_ctServerConnection);
    self->_ctServerConnection = 0;
  }

  v4.receiver = self;
  v4.super_class = PCWWANUsabilityMonitor;
  [(PCWWANUsabilityMonitor *)&v4 dealloc];
}

- (void)_setupWWANMonitor
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_25E3EF000, a2, OS_LOG_TYPE_ERROR, "Unable to setup WWAN monitor. {dataSimContextError: %@}.", &v2, 0xCu);
}

uint64_t __43__PCWWANUsabilityMonitor__setupWWANMonitor__block_invoke(uint64_t a1)
{
  v2 = [[PCInterfaceUsabilityMonitor alloc] initWithInterfaceIdentifier:1 delegateQueue:*(*(a1 + 32) + 24)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  [*(*(a1 + 32) + 64) setDelegate:?];
  v5 = *(a1 + 32);

  return [v5 _forwardConfigurationOnIvarQueue];
}

- (void)_adjustInterfaceNameForWWANContextID:(int)d interfaceName:(id)name forContext:(id)context
{
  nameCopy = name;
  contextCopy = context;
  ivarQueue = self->_ivarQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__PCWWANUsabilityMonitor__adjustInterfaceNameForWWANContextID_interfaceName_forContext___block_invoke;
  v13[3] = &unk_279A1A238;
  v13[4] = self;
  v14 = contextCopy;
  dCopy = d;
  v15 = nameCopy;
  v11 = nameCopy;
  v12 = contextCopy;
  dispatch_async(ivarQueue, v13);
}

void __88__PCWWANUsabilityMonitor__adjustInterfaceNameForWWANContextID_interfaceName_forContext___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isCurrentDataSimContextOnIvarQueue:*(a1 + 40)])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    if (v3 != *(v4 + 104))
    {
      *(v4 + 104) = v3;
      [*(*(a1 + 32) + 64) setDelegate:0];
      v5 = *(a1 + 32);
      v6 = *(v5 + 64);
      *(v5 + 64) = 0;

      v7 = +[PCLog usabilityMonitor];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 56);
        v10 = *(a1 + 48);
        v14 = 138543874;
        v15 = v8;
        v16 = 2048;
        v17 = v9;
        v18 = 2114;
        v19 = v10;
        _os_log_impl(&dword_25E3EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ _adjustInterfaceNameForWWANContextID contextID %ld  interfaceName %{public}@", &v14, 0x20u);
      }

      if (*(*(a1 + 32) + 104) != -1)
      {
        v11 = [[PCInterfaceUsabilityMonitor alloc] initWithInterfaceIdentifier:1 delegateQueue:*(*(a1 + 32) + 24)];
        v12 = *(a1 + 32);
        v13 = *(v12 + 64);
        *(v12 + 64) = v11;

        [*(*(a1 + 32) + 64) setDelegate:?];
        [*(a1 + 32) _forwardConfigurationOnIvarQueue];
      }
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (BOOL)_isCurrentDataSimContextOnIvarQueue:(id)queue
{
  result = 0;
  if (queue)
  {
    currentDataSimContext = self->_currentDataSimContext;
    if (currentDataSimContext)
    {
      queueCopy = queue;
      slotID = [(CTXPCServiceSubscriptionContext *)currentDataSimContext slotID];
      slotID2 = [queueCopy slotID];

      return slotID == slotID2;
    }
  }

  return result;
}

- (void)_processDataConnectionStatus:(id)status forContext:(id)context
{
  statusCopy = status;
  contextCopy = context;
  v7 = [statusCopy pdp];
  if (v7)
  {
    v8 = [statusCopy pdp];
    intValue = [v8 intValue];
  }

  else
  {
    intValue = -1;
  }

  if (intValue < 0)
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = intValue;
  }

  interfaceName = [statusCopy interfaceName];
  [(PCWWANUsabilityMonitor *)self _adjustInterfaceNameForWWANContextID:v10 interfaceName:interfaceName forContext:contextCopy];
}

- (void)_processDataStatus:(id)status forContext:(id)context
{
  contextCopy = context;
  statusCopy = status;
  v8 = [statusCopy indicator] < 6;
  radioTechnology = [statusCopy radioTechnology];
  dataBearerSoMask = [statusCopy dataBearerSoMask];

  ivarQueue = self->_ivarQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__PCWWANUsabilityMonitor__processDataStatus_forContext___block_invoke;
  v13[3] = &unk_279A1A260;
  v13[4] = self;
  v14 = contextCopy;
  v17 = v8;
  v15 = radioTechnology;
  v16 = dataBearerSoMask;
  v12 = contextCopy;
  dispatch_async(ivarQueue, v13);
}

void *__56__PCWWANUsabilityMonitor__processDataStatus_forContext___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isCurrentDataSimContextOnIvarQueue:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    if (*(v3 + 41) != v4)
    {
      *(v3 + 41) = v4;
      v5 = *(a1 + 32);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __56__PCWWANUsabilityMonitor__processDataStatus_forContext___block_invoke_2;
      v8[3] = &unk_279A1A0E0;
      v8[4] = v5;
      result = [v5 _callDelegateOnIvarQueueWithBlock:v8];
      v3 = *(a1 + 32);
    }

    v6 = *(a1 + 48);
    if (*(v3 + 72) != v6)
    {
      *(v3 + 72) = v6;
      v3 = *(a1 + 32);
    }

    v7 = *(a1 + 52);
    if (*(v3 + 76) != v7)
    {
      *(v3 + 76) = v7;
    }
  }

  return result;
}

void __56__PCWWANUsabilityMonitor__processDataStatus_forContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 interfaceRadioHotnessChanged:*(a1 + 32)];
  }
}

- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info
{
  v13 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  infoCopy = info;
  v10 = +[PCLog usabilityMonitor];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = changedCopy;
    _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "connectionStateChanged - %@", &v11, 0xCu);
  }

  if (!connection)
  {
    [(PCWWANUsabilityMonitor *)self _processDataConnectionStatus:infoCopy forContext:changedCopy];
  }
}

- (void)dataStatus:(id)status dataStatusInfo:(id)info
{
  v11 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  infoCopy = info;
  v8 = +[PCLog usabilityMonitor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = statusCopy;
    _os_log_impl(&dword_25E3EF000, v8, OS_LOG_TYPE_DEFAULT, "dataStatus changed - %@", &v9, 0xCu);
  }

  [(PCWWANUsabilityMonitor *)self _processDataStatus:infoCopy forContext:statusCopy];
}

- (void)currentDataSimChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = +[PCLog usabilityMonitor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = changedCopy;
    _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "currentDataSimChanged - %@", buf, 0xCu);
  }

  ivarQueue = self->_ivarQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__PCWWANUsabilityMonitor_currentDataSimChanged___block_invoke;
  v8[3] = &unk_279A19D48;
  v8[4] = self;
  v9 = changedCopy;
  v7 = changedCopy;
  dispatch_async(ivarQueue, v8);
}

- (void)_processCallStatusChanged:(id)changed
{
  changedCopy = changed;
  v5 = [changedCopy objectForKey:*MEMORY[0x277CC37E0]];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue] - 6 < 0xFFFFFFFE;
  }

  else
  {
    v7 = 0;
  }

  [changedCopy objectForKey:*MEMORY[0x277CC37C8]];
  v8 = CTCallGetCallSubType();
  v9 = CFEqual(v8, *MEMORY[0x277CC37F0]) == 0;
  ivarQueue = self->_ivarQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__PCWWANUsabilityMonitor__processCallStatusChanged___block_invoke;
  v12[3] = &unk_279A1A130;
  v11 = !v9 && v7;
  v13 = v11;
  v12[4] = self;
  dispatch_async(ivarQueue, v12);
}

void __52__PCWWANUsabilityMonitor__processCallStatusChanged___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) != *(*(a1 + 32) + 40))
  {
    v2 = +[PCLog usabilityMonitor];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = @"NO";
      if (*(a1 + 40))
      {
        v4 = @"YES";
      }

      v5 = 138412546;
      v6 = v3;
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&dword_25E3EF000, v2, OS_LOG_TYPE_DEFAULT, "%@ call status changed. isInCall = %@", &v5, 0x16u);
    }

    *(*(a1 + 32) + 40) = *(a1 + 40);
  }
}

- (unint64_t)interface5GMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PCWWANUsabilityMonitor_interface5GMode__block_invoke;
  v5[3] = &unk_279A1A068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __41__PCWWANUsabilityMonitor_interface5GMode__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 10)
  {
    v3 = *(v2 + 96);
    v22 = 0;
    v4 = [v3 isSmartDataModeSupported:&v22];
    v5 = v22;
    if (v4 && ([MEMORY[0x277CC3718] descriptorWithSubscriptionContext:*(*(a1 + 32) + 120)], v6 = objc_claimAutoreleasedReturnValue(), v7 = *(*(a1 + 32) + 96), v21 = 0, v8 = objc_msgSend(v7, "smartDataMode:error:", v6, &v21), v6, v8))
    {
      v9 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v12 = *(*(a1 + 32) + 76);
      if ((v12 & 8) != 0)
      {
        v9 = 0;
        v13 = *(*(a1 + 40) + 8);
        v14 = 2;
      }

      else
      {
        v13 = *(*(a1 + 40) + 8);
        v9 = 0;
        if ((v12 & 4) != 0)
        {
          v14 = 3;
        }

        else
        {
          v14 = 4;
        }
      }

      *(v13 + 24) = v14;
    }

    v15 = +[PCLog usabilityMonitor];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(*(*(a1 + 40) + 8) + 24);
      v18 = @"NO";
      if (v9)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (v4)
      {
        v18 = @"YES";
      }

      v20 = *(v16 + 76);
      *buf = 138413314;
      v24 = v16;
      v25 = 1024;
      v26 = v17;
      v27 = 2112;
      v28 = v19;
      v29 = 2112;
      v30 = v18;
      v31 = 2048;
      v32 = v20;
      _os_log_impl(&dword_25E3EF000, v15, OS_LOG_TYPE_DEFAULT, "%@ interface5GMode? 5G mode is %d {isSmartDataModeEnabled: %@, isSmartDataModeSupported: %@, currentDataBearerSoMask: %llu}", buf, 0x30u);
    }
  }

  else
  {
    v5 = +[PCLog usabilityMonitor];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 72);
      *buf = 138412546;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "%@ interface5GMode? Current RAT is not 5G %d", buf, 0x12u);
    }
  }
}

- (NSString)networkCode
{
  _currentDataSimContext = [(PCWWANUsabilityMonitor *)self _currentDataSimContext];
  v4 = [_currentDataSimContext copy];

  if (v4)
  {
    ctClient = self->_ctClient;
    v15 = 0;
    v6 = [(CoreTelephonyClient *)ctClient copyMobileCountryCode:v4 error:&v15];
    v7 = v15;
    v8 = self->_ctClient;
    v14 = 0;
    v9 = [(CoreTelephonyClient *)v8 copyMobileNetworkCode:v4 error:&v14];
    v10 = v14;
    if (v7 | v10)
    {
      v11 = +[PCLog usabilityMonitor];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PCWWANUsabilityMonitor networkCode];
      }

      v12 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v6, v9];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_currentDataSimContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__PCWWANUsabilityMonitor__currentDataSimContext__block_invoke;
  v5[3] = &unk_279A1A180;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (__CFString)wwanInterfaceName
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  ivarQueue = self->_ivarQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__PCWWANUsabilityMonitor_wwanInterfaceName__block_invoke;
  v6[3] = &unk_279A1A180;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(ivarQueue, v6);
  v3 = v8[5];
  if (v3)
  {
    v4 = CFAutorelease(v3);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __43__PCWWANUsabilityMonitor_wwanInterfaceName__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 64) currentInterfaceName];

  return MEMORY[0x2821F96F8]();
}

- (void)_forwardConfigurationOnIvarQueue
{
  [(PCInterfaceUsabilityMonitor *)self->_interfaceMonitor setTrackUsability:self->_trackUsability];
  [(PCInterfaceUsabilityMonitor *)self->_interfaceMonitor setTrackedTimeInterval:self->_trackedTimeInterval];
  interfaceMonitor = self->_interfaceMonitor;
  thresholdOffTransitionCount = self->_thresholdOffTransitionCount;

  [(PCInterfaceUsabilityMonitor *)interfaceMonitor setThresholdOffTransitionCount:thresholdOffTransitionCount];
}

- (void)setTrackUsability:(BOOL)usability
{
  ivarQueue = self->_ivarQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__PCWWANUsabilityMonitor_setTrackUsability___block_invoke;
  v4[3] = &unk_279A1A130;
  v4[4] = self;
  usabilityCopy = usability;
  dispatch_async(ivarQueue, v4);
}

void *__44__PCWWANUsabilityMonitor_setTrackUsability___block_invoke(void *result)
{
  v1 = result[4];
  v2 = *(result + 40);
  if (*(v1 + 42) != v2)
  {
    *(v1 + 42) = v2;
    v3 = result[4];
    if (*(v3 + 42) == 1)
    {
      if (!*(v3 + 48))
      {
        *(v3 + 48) = 2;
        v3 = result[4];
      }

      if (*(v3 + 56) == 0.0)
      {
        *(v3 + 56) = 0x4082C00000000000;
        v3 = result[4];
      }
    }

    return [v3 _forwardConfigurationOnIvarQueue];
  }

  return result;
}

- (void)setThresholdOffTransitionCount:(unint64_t)count
{
  ivarQueue = self->_ivarQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__PCWWANUsabilityMonitor_setThresholdOffTransitionCount___block_invoke;
  v4[3] = &unk_279A1A158;
  v4[4] = self;
  v4[5] = count;
  dispatch_async(ivarQueue, v4);
}

void *__57__PCWWANUsabilityMonitor_setThresholdOffTransitionCount___block_invoke(void *result)
{
  v2 = *(result + 4);
  v1 = *(result + 5);
  if (v1 != *(v2 + 48))
  {
    *(v2 + 48) = v1;
    return [*(result + 4) _forwardConfigurationOnIvarQueue];
  }

  return result;
}

- (void)setTrackedTimeInterval:(double)interval
{
  ivarQueue = self->_ivarQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__PCWWANUsabilityMonitor_setTrackedTimeInterval___block_invoke;
  v4[3] = &unk_279A1A158;
  *&v4[5] = interval;
  v4[4] = self;
  dispatch_async(ivarQueue, v4);
}

void *__49__PCWWANUsabilityMonitor_setTrackedTimeInterval___block_invoke(void *result)
{
  v1 = *(result + 5);
  v2 = *(result + 4);
  if (v1 != *(v2 + 56))
  {
    *(v2 + 56) = v1;
    return [*(result + 4) _forwardConfigurationOnIvarQueue];
  }

  return result;
}

- (BOOL)isInterfaceHistoricallyUsable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__PCWWANUsabilityMonitor_isInterfaceHistoricallyUsable__block_invoke;
  v5[3] = &unk_279A1A068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__55__PCWWANUsabilityMonitor_isInterfaceHistoricallyUsable__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    result = [result isInterfaceHistoricallyUsable];
    if (result)
    {
      v3 = *(*(a1 + 32) + 40) ^ 1;
    }

    else
    {
      v3 = 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = v3 & 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)isInternetReachable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__PCWWANUsabilityMonitor_isInternetReachable__block_invoke;
  v5[3] = &unk_279A1A068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__45__PCWWANUsabilityMonitor_isInternetReachable__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    result = [result isInternetReachable];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)isPoorLinkQuality
{
  linkQuality = [(PCWWANUsabilityMonitor *)self linkQuality];

  return [PCInterfaceUsabilityMonitor isPoorLinkQuality:linkQuality];
}

- (BOOL)isRadioHot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PCWWANUsabilityMonitor_isRadioHot__block_invoke;
  v5[3] = &unk_279A1A180;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (PCInterfaceUsabilityMonitorDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__PCWWANUsabilityMonitor_delegate__block_invoke;
  v5[3] = &unk_279A1A180;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __34__PCWWANUsabilityMonitor_delegate__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 32) object];

  return MEMORY[0x2821F96F8]();
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  ivarQueue = self->_ivarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PCWWANUsabilityMonitor_setDelegate___block_invoke;
  v7[3] = &unk_279A19D48;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(ivarQueue, v7);
}

void __38__PCWWANUsabilityMonitor_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  if (*(a1 + 40))
  {
    *(*(a1 + 32) + 32) = [MEMORY[0x277CFB990] weakRefWithObject:?];

    MEMORY[0x2821F96F8]();
  }
}

- (void)_callDelegateOnIvarQueueWithBlock:(id)block
{
  blockCopy = block;
  delegateReference = self->_delegateReference;
  if (delegateReference && self->_delegateQueue)
  {
    v6 = delegateReference;
    delegateQueue = self->_delegateQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__PCWWANUsabilityMonitor__callDelegateOnIvarQueueWithBlock___block_invoke;
    v9[3] = &unk_279A1A090;
    v10 = v6;
    v11 = blockCopy;
    v8 = v6;
    dispatch_async(delegateQueue, v9);
  }
}

void __60__PCWWANUsabilityMonitor__callDelegateOnIvarQueueWithBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) object];
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (void)interfaceLinkQualityChanged:(id)changed previousLinkQuality:(int)quality
{
  changedCopy = changed;
  ivarQueue = self->_ivarQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__PCWWANUsabilityMonitor_interfaceLinkQualityChanged_previousLinkQuality___block_invoke;
  block[3] = &unk_279A1A288;
  v10 = changedCopy;
  selfCopy = self;
  qualityCopy = quality;
  v8 = changedCopy;
  dispatch_async(ivarQueue, block);
}

void *__74__PCWWANUsabilityMonitor_interfaceLinkQualityChanged_previousLinkQuality___block_invoke(uint64_t a1)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (v5 == result[8])
  {
    v8 = v1;
    v9 = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__PCWWANUsabilityMonitor_interfaceLinkQualityChanged_previousLinkQuality___block_invoke_2;
    v6[3] = &unk_279A1A108;
    v6[4] = result;
    v7 = *(a1 + 48);
    return [result _callDelegateOnIvarQueueWithBlock:v6];
  }

  return result;
}

void __74__PCWWANUsabilityMonitor_interfaceLinkQualityChanged_previousLinkQuality___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 interfaceLinkQualityChanged:*(a1 + 32) previousLinkQuality:*(a1 + 40)];
  }
}

- (void)interfaceReachabilityChanged:(id)changed
{
  changedCopy = changed;
  ivarQueue = self->_ivarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PCWWANUsabilityMonitor_interfaceReachabilityChanged___block_invoke;
  v7[3] = &unk_279A19D48;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(ivarQueue, v7);
}

void *__55__PCWWANUsabilityMonitor_interfaceReachabilityChanged___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[8])
  {
    v5[5] = v1;
    v5[6] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__PCWWANUsabilityMonitor_interfaceReachabilityChanged___block_invoke_2;
    v5[3] = &unk_279A1A0E0;
    v5[4] = result;
    return [result _callDelegateOnIvarQueueWithBlock:v5];
  }

  return result;
}

void __55__PCWWANUsabilityMonitor_interfaceReachabilityChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 interfaceReachabilityChanged:*(a1 + 32)];
  }
}

- (void)interfaceConstraintChanged:(id)changed
{
  changedCopy = changed;
  ivarQueue = self->_ivarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__PCWWANUsabilityMonitor_interfaceConstraintChanged___block_invoke;
  v7[3] = &unk_279A19D48;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(ivarQueue, v7);
}

void *__53__PCWWANUsabilityMonitor_interfaceConstraintChanged___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[8])
  {
    v5[5] = v1;
    v5[6] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__PCWWANUsabilityMonitor_interfaceConstraintChanged___block_invoke_2;
    v5[3] = &unk_279A1A0E0;
    v5[4] = result;
    return [result _callDelegateOnIvarQueueWithBlock:v5];
  }

  return result;
}

void __53__PCWWANUsabilityMonitor_interfaceConstraintChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 interfaceConstraintChanged:*(a1 + 32)];
  }
}

@end