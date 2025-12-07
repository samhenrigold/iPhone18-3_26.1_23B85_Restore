@interface TPSTelephonyController
- (BOOL)isSubscriptionOrderedSet:(id)set equivalentToSubscriptionOrderedSet:(id)orderedSet;
- (BOOL)supportsCellularNetworkSelectionForSubscriptionContext:(id)context;
- (BOOL)supportsSystemCapabilityWithName:(id)name subscriptionContext:(id)context;
- (NSDictionary)systemCapabilities;
- (NSOrderedSet)activeSubscriptions;
- (NSOrderedSet)subscriptions;
- (TPSTelephonyController)init;
- (id)fetchNonHiddenSubscriptions;
- (id)fetchSubscriptions;
- (id)fetchSubscriptionsInUse;
- (id)fetchSystemCapabilitiesForSubscriptions:(id)subscriptions;
- (id)systemCapabilitiesForSubscriptionContext:(id)context;
- (id)systemCapabilitiesForSubscriptionContext:(id)context error:(id *)error;
- (void)context:(id)context capabilitiesChanged:(id)changed;
- (void)performAtomicAccessorBlock:(id)block;
- (void)setActiveSubscriptions:(id)subscriptions;
- (void)setSubscriptions:(id)subscriptions;
- (void)setSystemCapabilities:(id)capabilities;
@end

@implementation TPSTelephonyController

- (TPSTelephonyController)init
{
  v14.receiver = self;
  v14.super_class = TPSTelephonyController;
  v2 = [(TPSController *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x277CCACA8];
    tps_classIdentifier = [objc_opt_class() tps_classIdentifier];
    v6 = NSStringFromSelector(sel_serialDispatchQueue);
    v7 = [v4 stringWithFormat:@"%@.%@", tps_classIdentifier, v6];

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create([v7 UTF8String], v8);
    serialDispatchQueue = v3->_serialDispatchQueue;
    v3->_serialDispatchQueue = v9;

    v11 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v3->_serialDispatchQueue];
    telephonyClient = v3->_telephonyClient;
    v3->_telephonyClient = v11;

    [(CoreTelephonyClient *)v3->_telephonyClient setDelegate:v3];
  }

  return v3;
}

- (BOOL)isSubscriptionOrderedSet:(id)set equivalentToSubscriptionOrderedSet:(id)orderedSet
{
  setCopy = set;
  orderedSetCopy = orderedSet;
  if ([setCopy count] || objc_msgSend(orderedSetCopy, "count"))
  {
    v7 = [setCopy count];
    if (v7 == [orderedSetCopy count])
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 1;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __86__TPSTelephonyController_isSubscriptionOrderedSet_equivalentToSubscriptionOrderedSet___block_invoke;
      v10[3] = &unk_2782E3F78;
      v11 = orderedSetCopy;
      v12 = &v13;
      [setCopy enumerateObjectsUsingBlock:v10];
      v8 = *(v14 + 24);

      _Block_object_dispose(&v13, 8);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

void __86__TPSTelephonyController_isSubscriptionOrderedSet_equivalentToSubscriptionOrderedSet___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  if (!v7 || ([v8 tps_isEquivalentToSubscriptionContext:v7] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (NSOrderedSet)activeSubscriptions
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__TPSTelephonyController_activeSubscriptions__block_invoke;
  v4[3] = &unk_2782E3AA0;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __45__TPSTelephonyController_activeSubscriptions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4];
  if (!v3)
  {
    v4 = [v2 fetchSubscriptionsInUse];
    v5 = [v4 copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;

    v3 = *(*(a1 + 32) + 32);
  }

  v8 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v8, v3);
}

- (void)setActiveSubscriptions:(id)subscriptions
{
  subscriptionsCopy = subscriptions;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__TPSTelephonyController_setActiveSubscriptions___block_invoke;
  v6[3] = &unk_2782E39D0;
  v6[4] = self;
  v7 = subscriptionsCopy;
  v5 = subscriptionsCopy;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v6];
}

void __49__TPSTelephonyController_setActiveSubscriptions___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  if (v1 != *(a1 + 40))
  {
    v3 = v1;
    v4 = [*(a1 + 40) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    if (([*(a1 + 32) isSubscriptionOrderedSet:v3 equivalentToSubscriptionOrderedSet:*(*(a1 + 32) + 32)] & 1) == 0)
    {
      v7 = *(a1 + 32);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __49__TPSTelephonyController_setActiveSubscriptions___block_invoke_2;
      v8[3] = &unk_2782E3960;
      v8[4] = v7;
      [v7 performAtomicDelegateBlock:v8];
    }
  }
}

void __49__TPSTelephonyController_setActiveSubscriptions___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __49__TPSTelephonyController_setActiveSubscriptions___block_invoke_3;
          v11[3] = &unk_2782E39D0;
          v10 = *(a1 + 32);
          v11[4] = v7;
          v11[5] = v10;
          dispatch_async(v9, v11);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (NSOrderedSet)subscriptions
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__TPSTelephonyController_subscriptions__block_invoke;
  v4[3] = &unk_2782E3AA0;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __39__TPSTelephonyController_subscriptions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[5];
  if (!v3)
  {
    v4 = [v2 fetchSubscriptions];
    v5 = [v4 copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = *(*(a1 + 32) + 40);
  }

  v8 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v8, v3);
}

- (void)setSubscriptions:(id)subscriptions
{
  subscriptionsCopy = subscriptions;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__TPSTelephonyController_setSubscriptions___block_invoke;
  v6[3] = &unk_2782E39D0;
  v6[4] = self;
  v7 = subscriptionsCopy;
  v5 = subscriptionsCopy;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v6];
}

void __43__TPSTelephonyController_setSubscriptions___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (v1 != *(a1 + 40))
  {
    v3 = v1;
    v4 = [*(a1 + 40) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (([*(a1 + 32) isSubscriptionOrderedSet:v3 equivalentToSubscriptionOrderedSet:*(*(a1 + 32) + 40)] & 1) == 0)
    {
      v7 = *(a1 + 32);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __43__TPSTelephonyController_setSubscriptions___block_invoke_2;
      v8[3] = &unk_2782E3960;
      v8[4] = v7;
      [v7 performAtomicDelegateBlock:v8];
    }
  }
}

void __43__TPSTelephonyController_setSubscriptions___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __43__TPSTelephonyController_setSubscriptions___block_invoke_3;
          v11[3] = &unk_2782E39D0;
          v10 = *(a1 + 32);
          v11[4] = v7;
          v11[5] = v10;
          dispatch_async(v9, v11);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (NSDictionary)systemCapabilities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__TPSTelephonyController_systemCapabilities__block_invoke;
  v4[3] = &unk_2782E3AA0;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __44__TPSTelephonyController_systemCapabilities__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[6];
  if (!v3)
  {
    v4 = [v2 fetchSystemCapabilitiesForSubscriptions:v2[5]];
    v5 = [v4 copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    *(v6 + 48) = v5;

    v3 = *(*(a1 + 32) + 48);
  }

  v8 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v8, v3);
}

- (void)setSystemCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__TPSTelephonyController_setSystemCapabilities___block_invoke;
  v6[3] = &unk_2782E39D0;
  v6[4] = self;
  v7 = capabilitiesCopy;
  v5 = capabilitiesCopy;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v6];
}

void *__48__TPSTelephonyController_setSystemCapabilities___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 48) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;

    return MEMORY[0x2821F96F8](v4, v6);
  }

  return result;
}

- (void)performAtomicAccessorBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    os_unfair_lock_lock(&self->_accessorLock);
    blockCopy[2](blockCopy);

    os_unfair_lock_unlock(&self->_accessorLock);
  }
}

- (BOOL)supportsCellularNetworkSelectionForSubscriptionContext:(id)context
{
  contextCopy = context;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  v14 = 0;
  v6 = [telephonyClient isNetworkSelectionMenuAvailable:contextCopy error:&v14];
  v7 = v14;

  if (!v6)
  {
    domain = [v7 domain];

    if (domain)
    {
      v11 = TPSLog(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [TPSTelephonyController supportsCellularNetworkSelectionForSubscriptionContext:];
      }
    }
  }

  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (id)fetchNonHiddenSubscriptions
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = TPSLog(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = objc_opt_class();
    v3 = *(&buf + 4);
    _os_log_impl(&dword_21B8E9000, v2, OS_LOG_TYPE_DEFAULT, "%@ fetching current CTXPCServiceSubscriptions in use", &buf, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v5 = getPSSimStatusCacheClass_softClass_0;
  v28 = getPSSimStatusCacheClass_softClass_0;
  if (!getPSSimStatusCacheClass_softClass_0)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v31 = __getPSSimStatusCacheClass_block_invoke_0;
    v32 = &unk_2782E3900;
    v33 = &v25;
    __getPSSimStatusCacheClass_block_invoke_0(&buf);
    v5 = v26[3];
  }

  v6 = v5;
  _Block_object_dispose(&v25, 8);
  sharedInstance = [v5 sharedInstance];
  subscriptionsInUse = [sharedInstance subscriptionsInUse];

  v9 = [subscriptionsInUse countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v9)
  {
    v11 = *v22;
    *&v10 = 138412290;
    v20 = v10;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(subscriptionsInUse);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        isSimHidden = [v13 isSimHidden];
        if (isSimHidden)
        {
          v16 = TPSLog(isSimHidden, v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            uuid = [v13 uuid];
            LODWORD(buf) = v20;
            *(&buf + 4) = uuid;
            _os_log_impl(&dword_21B8E9000, v16, OS_LOG_TYPE_DEFAULT, "Subscription: %@ is hidden", &buf, 0xCu);
          }
        }

        else
        {
          [v4 addObject:v13];
        }
      }

      v9 = [subscriptionsInUse countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }

  v18 = [v4 copy];

  return v18;
}

- (id)fetchSubscriptions
{
  fetchNonHiddenSubscriptions = [(TPSTelephonyController *)self fetchNonHiddenSubscriptions];
  if (fetchNonHiddenSubscriptions)
  {
    v3 = [MEMORY[0x277CBEB70] orderedSetWithArray:fetchNonHiddenSubscriptions];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fetchSubscriptionsInUse
{
  fetchNonHiddenSubscriptions = [(TPSTelephonyController *)self fetchNonHiddenSubscriptions];
  if (fetchNonHiddenSubscriptions)
  {
    v3 = [MEMORY[0x277CBEB70] orderedSetWithArray:fetchNonHiddenSubscriptions];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fetchSystemCapabilitiesForSubscriptions:(id)subscriptions
{
  v21 = *MEMORY[0x277D85DE8];
  subscriptionsCopy = subscriptions;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = subscriptionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(TPSTelephonyController *)self systemCapabilitiesForSubscriptionContext:v11, v16];
        if (v12)
        {
          uuid = [v11 uuid];
          [v5 setObject:v12 forKeyedSubscript:uuid];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (BOOL)supportsSystemCapabilityWithName:(id)name subscriptionContext:(id)context
{
  nameCopy = name;
  contextCopy = context;
  systemCapabilities = [(TPSTelephonyController *)self systemCapabilities];
  uuid = [contextCopy uuid];
  v10 = [systemCapabilities objectForKeyedSubscript:uuid];

  if (!v10)
  {
    v11 = [(TPSTelephonyController *)self systemCapabilitiesForSubscriptionContext:contextCopy];
    if (!v11)
    {
      bOOLValue = 0;
      goto LABEL_8;
    }

    v10 = v11;
  }

  v12 = [v10 objectForKeyedSubscript:nameCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v12 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

LABEL_8:
  return bOOLValue;
}

- (id)systemCapabilitiesForSubscriptionContext:(id)context
{
  contextCopy = context;
  v13 = 0;
  v5 = [(TPSTelephonyController *)self systemCapabilitiesForSubscriptionContext:contextCopy error:&v13];
  v6 = v13;
  v7 = v6;
  if (!v5)
  {
    domain = [v6 domain];

    if (domain)
    {
      v11 = TPSLog(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [TPSTelephonyController systemCapabilitiesForSubscriptionContext:];
      }
    }
  }

  return v5;
}

- (id)systemCapabilitiesForSubscriptionContext:(id)context error:(id *)error
{
  contextCopy = context;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  v8 = [telephonyClient context:contextCopy getSystemCapabilities:error];

  return v8;
}

- (void)context:(id)context capabilitiesChanged:(id)changed
{
  v5 = TPSLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "System capabilities have changed; updating the cached system capabilities.", v8, 2u);
  }

  subscriptions = [(TPSTelephonyController *)self subscriptions];
  v7 = [(TPSTelephonyController *)self fetchSystemCapabilitiesForSubscriptions:subscriptions];
  [(TPSTelephonyController *)self setSystemCapabilities:v7];
}

@end