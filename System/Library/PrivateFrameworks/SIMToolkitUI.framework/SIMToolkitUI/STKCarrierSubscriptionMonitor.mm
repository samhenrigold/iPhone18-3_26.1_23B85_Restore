@interface STKCarrierSubscriptionMonitor
- (STKCarrierSubscriptionMonitor)init;
- (id)subscriptionContextForSlot:(int64_t)slot;
- (id)subscriptionInfoForSlot:(int64_t)slot;
- (void)carrierBundleChange:(id)change;
- (void)subscriptionInfoDidChange;
@end

@implementation STKCarrierSubscriptionMonitor

- (STKCarrierSubscriptionMonitor)init
{
  v15.receiver = self;
  v15.super_class = STKCarrierSubscriptionMonitor;
  v2 = [(STKCarrierSubscriptionMonitor *)&v15 init];
  if (v2)
  {
    v3 = BSDispatchQueueCreateWithQualityOfService();
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    subscriptionInfo = v2->_subscriptionInfo;
    v2->_subscriptionInfo = v5;

    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    subscriptionContext = v2->_subscriptionContext;
    v2->_subscriptionContext = v7;

    v9 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v2->_queue];
    telephonyClient = v2->_telephonyClient;
    v2->_telephonyClient = v9;

    [(CoreTelephonyClient *)v2->_telephonyClient setDelegate:v2];
    v11 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__STKCarrierSubscriptionMonitor_init__block_invoke;
    block[3] = &unk_279B4C428;
    v14 = v2;
    dispatch_sync(v11, block);
  }

  return v2;
}

- (id)subscriptionInfoForSlot:(int64_t)slot
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__STKCarrierSubscriptionMonitor_subscriptionInfoForSlot___block_invoke;
  block[3] = &unk_279B4C6C0;
  block[4] = self;
  block[5] = &v7;
  block[6] = slot;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __57__STKCarrierSubscriptionMonitor_subscriptionInfoForSlot___block_invoke(void *a1)
{
  v2 = *(a1[4] + 16);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)subscriptionContextForSlot:(int64_t)slot
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__STKCarrierSubscriptionMonitor_subscriptionContextForSlot___block_invoke;
  block[3] = &unk_279B4C6C0;
  block[4] = self;
  block[5] = &v7;
  block[6] = slot;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __60__STKCarrierSubscriptionMonitor_subscriptionContextForSlot___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)subscriptionInfoDidChange
{
  v37 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssert();
  [(NSMutableDictionary *)self->_subscriptionInfo removeAllObjects];
  [(NSMutableDictionary *)self->_subscriptionContext removeAllObjects];
  telephonyClient = self->_telephonyClient;
  v34 = 0;
  v4 = [(CoreTelephonyClient *)telephonyClient getSubscriptionInfoWithError:&v34];
  v5 = v34;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v23 = v5;
    subscriptionsInUse = [v4 subscriptionsInUse];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = [subscriptionsInUse countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(subscriptionsInUse);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          queue = self->_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __58__STKCarrierSubscriptionMonitor_subscriptionInfoDidChange__block_invoke;
          block[3] = &unk_279B4C4C8;
          block[4] = self;
          block[5] = v13;
          dispatch_async(queue, block);
        }

        v10 = [subscriptionsInUse countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v10);
    }

    v24 = v4;
    subscriptions = [v4 subscriptions];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = [subscriptions countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(subscriptions);
          }

          v20 = *(*(&v25 + 1) + 8 * j);
          subscriptionContext = self->_subscriptionContext;
          v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "slotID")}];
          [(NSMutableDictionary *)subscriptionContext setObject:v20 forKeyedSubscript:v22];
        }

        v17 = [subscriptions countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v17);
    }

    v6 = v23;
    v4 = v24;
  }

  else
  {
    subscriptionsInUse = STKCommonLog(v5);
    if (os_log_type_enabled(subscriptionsInUse, OS_LOG_TYPE_ERROR))
    {
      [STKCarrierSubscriptionMonitor subscriptionInfoDidChange];
    }
  }
}

- (void)carrierBundleChange:(id)change
{
  v45 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = BSDispatchQueueAssert();
  v6 = STKCommonLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = changeCopy;
    _os_log_impl(&dword_262BB4000, v6, OS_LOG_TYPE_DEFAULT, "Carrier bundle did change: %@", buf, 0xCu);
  }

  v7 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
  telephonyClient = self->_telephonyClient;
  v42 = 0;
  v9 = [(CoreTelephonyClient *)telephonyClient copyCarrierBundleValueWithDefault:changeCopy keyHierarchy:&unk_28758C0F8 bundleType:v7 error:&v42];
  v10 = v42;
  if (v10)
  {
    v11 = v10;
    v12 = STKCommonLog(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [STKCarrierSubscriptionMonitor carrierBundleChange:];
    }
  }

  bOOLValue = objc_opt_respondsToSelector();
  if (bOOLValue)
  {
    bOOLValue = [v9 BOOLValue];
    v14 = bOOLValue;
  }

  else
  {
    v14 = 0;
  }

  v15 = STKClass0SMSLog(bOOLValue);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v44) = v14;
    _os_log_impl(&dword_262BB4000, v15, OS_LOG_TYPE_DEFAULT, "Carrier bundle value changed: showClass0SMSOverInCallAlerts = %d", buf, 8u);
  }

  v16 = self->_telephonyClient;
  v41 = 0;
  v17 = [(CoreTelephonyClient *)v16 copyCarrierBundleValueWithDefault:changeCopy key:@"ShowClass0SMSFromField" bundleType:v7 error:&v41];
  v18 = v41;
  if (v18)
  {
    v19 = v18;
    v20 = STKCommonLog(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [STKCarrierSubscriptionMonitor carrierBundleChange:];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    bOOLValue2 = [v17 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  v22 = self->_telephonyClient;
  v40 = 0;
  v23 = [(CoreTelephonyClient *)v22 copyCarrierBundleValueWithDefault:changeCopy key:@"USSDFilterPatterns" bundleType:v7 error:&v40];
  v24 = v40;
  if (v24)
  {
    v25 = v24;
    v26 = STKCommonLog(v24);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [STKCarrierSubscriptionMonitor carrierBundleChange:];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v23;
    if ([v27 bs_containsObjectPassingTest:&__block_literal_global_2])
    {
      v28 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v28 = v27;
    }
  }

  else
  {
    v28 = MEMORY[0x277CBEBF8];
  }

  v29 = self->_telephonyClient;
  v39 = 0;
  v30 = [(CoreTelephonyClient *)v29 copyCarrierBundleValueWithDefault:changeCopy key:@"USSDFilterSometimesPatterns" bundleType:v7 error:&v39];
  v31 = v39;
  if (v31)
  {
    v32 = v31;
    v33 = STKCommonLog(v31);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [STKCarrierSubscriptionMonitor carrierBundleChange:];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v30;
    if ([v34 bs_containsObjectPassingTest:&__block_literal_global_25])
    {
      v35 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v35 = v34;
    }
  }

  else
  {
    v35 = MEMORY[0x277CBEBF8];
  }

  v36 = [[STKCarrierSubscriptionInfo alloc] initWithShowClass0SMSFromField:bOOLValue2 canShowClass0SMSOverInCallAlerts:v14 ussdAlwaysFilteredPatterns:v28 ussdSometimesFilteredPatterns:v35];
  subscriptionInfo = self->_subscriptionInfo;
  v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(changeCopy, "slotID")}];
  [(NSMutableDictionary *)subscriptionInfo setObject:v36 forKeyedSubscript:v38];
}

BOOL __53__STKCarrierSubscriptionMonitor_carrierBundleChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

BOOL __53__STKCarrierSubscriptionMonitor_carrierBundleChange___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end