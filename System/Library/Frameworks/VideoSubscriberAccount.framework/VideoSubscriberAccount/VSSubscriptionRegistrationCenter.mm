@interface VSSubscriptionRegistrationCenter
+ (VSSubscriptionRegistrationCenter)defaultSubscriptionRegistrationCenter;
- (BOOL)_shouldAllowAccessToSubscription:(id)subscription;
- (BOOL)_shouldRaiseExceptionsForMisuse;
- (VSLinkedOnOrAfterChecker)linkedOnOrAfterChecker;
- (VSSecurityTask)currentTask;
- (VSSubscriptionFetchOptionsValidator)fetchOptionsValidator;
- (VSSubscriptionPredicateFactory)predicateFactory;
- (VSSubscriptionRegistrationCenter)init;
- (VSSubscriptionServiceConnection)connection;
- (id)_serviceWithErrorHandler:(id)handler;
- (void)_refreshCachedSubscriptions;
- (void)_resetExpirationOperation;
- (void)_sendLocalNotificationWithUserInfo:(id)info;
- (void)dealloc;
- (void)fetchActiveSubscriptionsWithOptions:(id)options completionHandler:(id)handler;
- (void)registerSubscription:(id)subscription;
- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info;
- (void)removeSubscriptions:(id)subscriptions;
- (void)setCurrentSubscription:(VSSubscription *)currentSubscription;
- (void)setFetchOptionsValidator:(id)validator;
- (void)setPredicateFactory:(id)factory;
@end

@implementation VSSubscriptionRegistrationCenter

- (VSSubscriptionRegistrationCenter)init
{
  v10.receiver = self;
  v10.super_class = VSSubscriptionRegistrationCenter;
  v2 = [(VSSubscriptionRegistrationCenter *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    subscriptionsByOptions = v2->_subscriptionsByOptions;
    v2->_subscriptionsByOptions = v3;

    v5 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSActiveSubscriptionsDidChangeNotification"];
    remoteNotifier = v2->_remoteNotifier;
    v2->_remoteNotifier = v5;

    [(VSRemoteNotifier *)v2->_remoteNotifier setDelegate:v2];
    v7 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v7;

    [(NSOperationQueue *)v2->_privateQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_privateQueue setName:@"com.apple.VideoSubscriberAccount.SubscriptionRegistrationCenter"];
  }

  return v2;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[VSSubscriptionRegistrationCenter dealloc]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  [(VSDelayOperation *)self->_expirationOperation cancel];
  v4.receiver = self;
  v4.super_class = VSSubscriptionRegistrationCenter;
  [(VSSubscriptionRegistrationCenter *)&v4 dealloc];
}

+ (VSSubscriptionRegistrationCenter)defaultSubscriptionRegistrationCenter
{
  if (defaultSubscriptionRegistrationCenter___vs_lazy_init_predicate != -1)
  {
    +[VSSubscriptionRegistrationCenter defaultSubscriptionRegistrationCenter];
  }

  v3 = defaultSubscriptionRegistrationCenter___vs_lazy_init_variable;

  return v3;
}

uint64_t __73__VSSubscriptionRegistrationCenter_defaultSubscriptionRegistrationCenter__block_invoke()
{
  v0 = objc_alloc_init(VSSubscriptionRegistrationCenter);
  v1 = defaultSubscriptionRegistrationCenter___vs_lazy_init_variable;
  defaultSubscriptionRegistrationCenter___vs_lazy_init_variable = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)setCurrentSubscription:(VSSubscription *)currentSubscription
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = currentSubscription;
  v6 = objc_autoreleasePoolPush();
  v7 = VSDefaultLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[VSSubscriptionRegistrationCenter setCurrentSubscription:]";
    _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  currentTask = [(VSSubscriptionRegistrationCenter *)self currentTask];
  v9 = @"com.apple.developer.video-subscription-registration";
  v10 = [currentTask shouldAllowAccessForBooleanEntitlement:v9];
  v11 = @"com.apple.smoot.subscriptionservice";
  if ((v10 & 1) != 0 || [currentTask shouldAllowAccessForBooleanEntitlement:v11])
  {
    if (v5)
    {
      v12 = v5;
      if ([(VSSubscription *)v12 accessLevel]== VSSubscriptionAccessLevelUnknown)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The subscription's access level must not be Unknown."];
      }

      [(VSSubscriptionRegistrationCenter *)self registerSubscription:v12];
    }

    else
    {
      predicateFactory = [(VSSubscriptionRegistrationCenter *)self predicateFactory];
      currentTask2 = [(VSSubscriptionRegistrationCenter *)self currentTask];
      v15 = [predicateFactory allowedSubscriptionsPredicateForTask:currentTask2];

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __59__VSSubscriptionRegistrationCenter_setCurrentSubscription___block_invoke;
      v22[3] = &unk_278B74BD8;
      v23 = v15;
      selfCopy = self;
      v12 = v15;
      [(VSSubscriptionRegistrationCenter *)self fetchActiveSubscriptionsWithOptions:MEMORY[0x277CBEC10] completionHandler:v22];
    }
  }

  else if ([(VSSubscriptionRegistrationCenter *)self _shouldRaiseExceptionsForMisuse])
  {
    v16 = MEMORY[0x277CBEAD8];
    v17 = *MEMORY[0x277CBE660];
    v18 = objc_opt_class();
    v12 = NSStringFromClass(v18);
    v19 = NSStringFromSelector(a2);
    [v16 raise:v17 format:{@"The -[%@ %@] method requires an entitlement.", v12, v19}];
  }

  else
  {
    v20 = objc_opt_class();
    v12 = NSStringFromClass(v20);
    v21 = NSStringFromSelector(a2);
    NSLog(@"The [%@ %@] method requires an entitlement.", v12, v21);
  }

  objc_autoreleasePoolPop(v6);
}

void __59__VSSubscriptionRegistrationCenter_setCurrentSubscription___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if ([v5 count])
    {
      v8 = [v5 filteredArrayUsingPredicate:*(a1 + 32)];

      if ([v8 count])
      {
        [*(a1 + 40) removeSubscriptions:v8];
      }

      else
      {
        v10 = VSDefaultLogObject(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23AB8E000, v10, OS_LOG_TYPE_DEFAULT, "No app subscriptions to remove.", buf, 2u);
        }
      }
    }

    else
    {
      v9 = VSDefaultLogObject(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "No active subscriptions to remove.", v11, 2u);
      }

      v8 = v5;
    }
  }

  else
  {
    v8 = VSErrorLogObject(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __59__VSSubscriptionRegistrationCenter_setCurrentSubscription___block_invoke_cold_1();
    }
  }
}

- (id)_serviceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(VSSubscriptionRegistrationCenter *)self connection];
  v6 = [connection serviceWithErrorHandler:handlerCopy];

  return v6;
}

- (BOOL)_shouldAllowAccessToSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  predicateFactory = [(VSSubscriptionRegistrationCenter *)self predicateFactory];
  currentTask = [(VSSubscriptionRegistrationCenter *)self currentTask];
  v7 = [predicateFactory allowedSubscriptionsPredicateForRequestKind:1 fromTask:currentTask];

  LOBYTE(currentTask) = [v7 evaluateWithObject:subscriptionCopy];
  return currentTask;
}

- (BOOL)_shouldRaiseExceptionsForMisuse
{
  linkedOnOrAfterChecker = [(VSSubscriptionRegistrationCenter *)self linkedOnOrAfterChecker];
  v3 = [linkedOnOrAfterChecker shouldPerformBehavior:0];

  return v3;
}

- (void)_sendLocalNotificationWithUserInfo:(id)info
{
  infoCopy = info;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__VSSubscriptionRegistrationCenter__sendLocalNotificationWithUserInfo___block_invoke;
  v6[3] = &unk_278B73708;
  v6[4] = self;
  v7 = infoCopy;
  v5 = infoCopy;
  VSPerformCompletionHandler(v6);
}

void __71__VSSubscriptionRegistrationCenter__sendLocalNotificationWithUserInfo___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"VSActiveSubscriptionsDidChangeNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (void)_refreshCachedSubscriptions
{
  v3 = objc_autoreleasePoolPush();
  subscriptionsByOptions = [(VSSubscriptionRegistrationCenter *)self subscriptionsByOptions];
  v5 = [subscriptionsByOptions copy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__VSSubscriptionRegistrationCenter__refreshCachedSubscriptions__block_invoke;
  v7[3] = &unk_278B74C28;
  v8 = subscriptionsByOptions;
  selfCopy = self;
  v6 = subscriptionsByOptions;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];

  objc_autoreleasePoolPop(v3);
}

void __63__VSSubscriptionRegistrationCenter__refreshCachedSubscriptions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  [*(a1 + 32) removeObjectForKey:v5];
  v8 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__VSSubscriptionRegistrationCenter__refreshCachedSubscriptions__block_invoke_2;
  v12[3] = &unk_278B74C00;
  v9 = v6;
  v13 = v9;
  v10 = v5;
  v11 = *(a1 + 40);
  v14 = v10;
  v15 = v11;
  [v8 fetchActiveSubscriptionsWithOptions:v10 completionHandler:v12];

  objc_autoreleasePoolPop(v7);
}

void __63__VSSubscriptionRegistrationCenter__refreshCachedSubscriptions__block_invoke_2(id *a1, void *a2, void *a3)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (([a1[4] isEqual:v5] & 1) == 0)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = [a1[5] copy];
    [v8 setObject:v9 forKey:@"VSFetchOptionsKey"];

    if (v5)
    {
      v10 = [a1[4] valueForKeyPath:@"source"];
      v11 = [v5 valueForKeyPath:@"source"];
      v12 = v11;
      if (v10 && v11)
      {
        v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT %K IN %@", @"source", v11];
        v21 = [a1[4] filteredArrayUsingPredicate:v22];
        [v8 setObject:v21 forKey:@"VSRemovedSubscriptionsKey"];
        v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT %K IN %@", @"source", v10];
        v19 = [v5 filteredArrayUsingPredicate:v20];
        [v8 setObject:v19 forKey:@"VSAddedSubscriptionsKey"];
        v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"source", v10];
        v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT self IN %@", a1[4]];
        v14 = MEMORY[0x277CCA920];
        v23[0] = v18;
        v23[1] = v13;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
        v16 = [v14 andPredicateWithSubpredicates:v15];

        v17 = [v5 filteredArrayUsingPredicate:v16];
        [v8 setObject:v17 forKey:@"VSUpdatedSubscriptionsKey"];
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to obtain latest and cached subscription sources."];
      }
    }

    [a1[6] _sendLocalNotificationWithUserInfo:v8];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)_resetExpirationOperation
{
  v55 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  selfCopy = self;
  subscriptionsByOptions = [(VSSubscriptionRegistrationCenter *)self subscriptionsByOptions];
  allValues = [subscriptionsByOptions allValues];

  v6 = [allValues countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v6)
  {
    v7 = *v49;
    do
    {
      v8 = 0;
      do
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v48 + 1) + 8 * v8);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v44 objects:v53 count:{16, context}];
        if (v11)
        {
          v12 = *v45;
          do
          {
            v13 = 0;
            do
            {
              if (*v45 != v12)
              {
                objc_enumerationMutation(v10);
              }

              [v3 addObject:*(*(&v44 + 1) + 8 * v13++)];
            }

            while (v11 != v13);
            v11 = [v10 countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v11);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [allValues countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v6);
  }

  expirationOperation = [(VSSubscriptionRegistrationCenter *)selfCopy expirationOperation];
  [expirationOperation cancel];

  if ([v3 count])
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__11;
    v42 = __Block_byref_object_dispose__11;
    v43 = objc_alloc_init(VSOptional);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v3;
    v15 = [obj countByEnumeratingWithState:&v34 objects:v52 count:16];
    if (v15)
    {
      v16 = *v35;
      do
      {
        v17 = 0;
        do
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v34 + 1) + 8 * v17);
          v19 = objc_autoreleasePoolPush();
          expirationDate = [v18 expirationDate];
          v21 = v39[5];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __61__VSSubscriptionRegistrationCenter__resetExpirationOperation__block_invoke;
          v31[3] = &unk_278B74C50;
          v33 = &v38;
          v32 = expirationDate;
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __61__VSSubscriptionRegistrationCenter__resetExpirationOperation__block_invoke_2;
          v28[3] = &unk_278B74C78;
          v30 = &v38;
          v22 = v32;
          v29 = v22;
          [v21 conditionallyUnwrapObject:v31 otherwise:v28];

          objc_autoreleasePoolPop(v19);
          ++v17;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v34 objects:v52 count:16];
      }

      while (v15);
    }

    v23 = v39[5];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__VSSubscriptionRegistrationCenter__resetExpirationOperation__block_invoke_3;
    v27[3] = &unk_278B74CA0;
    v27[4] = selfCopy;
    [v23 conditionallyUnwrapObject:v27 otherwise:&__block_literal_global_47];
    _Block_object_dispose(&v38, 8);
  }

  objc_autoreleasePoolPop(context);
}

void __61__VSSubscriptionRegistrationCenter__resetExpirationOperation__block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) earlierDate:a2];
  v3 = [VSOptional optionalWithObject:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __61__VSSubscriptionRegistrationCenter__resetExpirationOperation__block_invoke_2(uint64_t a1)
{
  v2 = [VSOptional optionalWithObject:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __61__VSSubscriptionRegistrationCenter__resetExpirationOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  v5 = [v3 vs_isBefore:v4];

  if (v5)
  {
    v7 = VSDefaultLogObject(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Creating delay operation with fireDate: %@", buf, 0xCu);
    }

    v8 = [VSDelayOperation delayOperationWithFireDate:v3];
    [*(a1 + 32) setExpirationOperation:v8];
    objc_initWeak(buf, *(a1 + 32));
    objc_initWeak(&location, v8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__VSSubscriptionRegistrationCenter__resetExpirationOperation__block_invoke_43;
    v9[3] = &unk_278B732B0;
    objc_copyWeak(&v10, buf);
    objc_copyWeak(&v11, &location);
    [v8 setCompletionBlock:v9];
    [v8 start];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

void __61__VSSubscriptionRegistrationCenter__resetExpirationOperation__block_invoke_43(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = [WeakRetained privateQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__VSSubscriptionRegistrationCenter__resetExpirationOperation__block_invoke_2_44;
    v6[3] = &unk_278B73708;
    v7 = v4;
    v8 = WeakRetained;
    [v5 addOperationWithBlock:v6];
  }
}

uint64_t __61__VSSubscriptionRegistrationCenter__resetExpirationOperation__block_invoke_2_44(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = VSDefaultLogObject(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Operation is not canceled, refreshing subscriptions.", v4, 2u);
    }

    return [*(a1 + 40) _refreshCachedSubscriptions];
  }

  return result;
}

void __61__VSSubscriptionRegistrationCenter__resetExpirationOperation__block_invoke_45(uint64_t a1)
{
  v1 = VSDefaultLogObject(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_23AB8E000, v1, OS_LOG_TYPE_DEFAULT, "No Subscriptions Expired that have not been recently modified", v2, 2u);
  }
}

- (VSSubscriptionServiceConnection)connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_connection;
  if (!v3)
  {
    v3 = objc_alloc_init(VSSubscriptionServiceConnection);
    objc_storeStrong(&selfCopy->_connection, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (VSSecurityTask)currentTask
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentTask;
  if (!v3)
  {
    v3 = +[VSSecurityTask currentSecurityTask];
    objc_storeStrong(&selfCopy->_currentTask, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (VSLinkedOnOrAfterChecker)linkedOnOrAfterChecker
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_linkedOnOrAfterChecker;
  if (!v3)
  {
    v3 = objc_alloc_init(VSLinkedOnOrAfterChecker);
    objc_storeStrong(&selfCopy->_linkedOnOrAfterChecker, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (VSSubscriptionPredicateFactory)predicateFactory
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_predicateFactory;
  if (!v3)
  {
    v3 = objc_alloc_init(VSSubscriptionPredicateFactory);
    objc_storeStrong(&selfCopy->_predicateFactory, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (void)setPredicateFactory:(id)factory
{
  factoryCopy = factory;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_predicateFactory != factoryCopy)
  {
    objc_storeStrong(&selfCopy->_predicateFactory, factory);
    fetchOptionsValidator = [(VSSubscriptionRegistrationCenter *)selfCopy fetchOptionsValidator];
    [fetchOptionsValidator setPredicateFactory:factoryCopy];
  }

  objc_sync_exit(selfCopy);
}

- (VSSubscriptionFetchOptionsValidator)fetchOptionsValidator
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_fetchOptionsValidator;
  if (!v3)
  {
    v3 = objc_alloc_init(VSSubscriptionFetchOptionsValidator);
    predicateFactory = [(VSSubscriptionRegistrationCenter *)selfCopy predicateFactory];
    [(VSSubscriptionFetchOptionsValidator *)v3 setPredicateFactory:predicateFactory];

    objc_storeStrong(&selfCopy->_fetchOptionsValidator, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The fetchOptionsValidatorOrNil parameter must not be nil."];
  }

  return v3;
}

- (void)setFetchOptionsValidator:(id)validator
{
  validatorCopy = validator;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_fetchOptionsValidator != validatorCopy)
  {
    objc_storeStrong(&selfCopy->_fetchOptionsValidator, validator);
    predicateFactory = [(VSSubscriptionFetchOptionsValidator *)validatorCopy predicateFactory];
    [(VSSubscriptionRegistrationCenter *)selfCopy setPredicateFactory:predicateFactory];
  }

  objc_sync_exit(selfCopy);
}

- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info
{
  v5 = [(VSSubscriptionRegistrationCenter *)self privateQueue:notifier];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__VSSubscriptionRegistrationCenter_remoteNotifier_didReceiveRemoteNotificationWithUserInfo___block_invoke;
  v6[3] = &unk_278B733D8;
  v6[4] = self;
  [v5 addOperationWithBlock:v6];
}

- (void)fetchActiveSubscriptionsWithOptions:(id)options completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  v9 = VSDefaultLogObject(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[VSSubscriptionRegistrationCenter fetchActiveSubscriptionsWithOptions:completionHandler:]";
    _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  if (!optionsCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The options parameter must not be nil."];
    if (handlerCopy)
    {
      goto LABEL_5;
    }

LABEL_13:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
    goto LABEL_5;
  }

  if (!handlerCopy)
  {
    goto LABEL_13;
  }

LABEL_5:
  currentTask = [(VSSubscriptionRegistrationCenter *)self currentTask];
  if ([currentTask shouldAllowAccessForBooleanEntitlement:@"com.apple.developer.video-subscription-registration"] & 1) != 0 || (objc_msgSend(currentTask, "shouldAllowAccessForBooleanEntitlement:", @"com.apple.smoot.subscriptionservice") & 1) != 0 || (objc_msgSend(currentTask, "shouldAllowAccessForBooleanEntitlement:", @"com.apple.private.subscriptionservice.internal") & 1) != 0 || (objc_msgSend(currentTask, "shouldAllowAccessForBooleanEntitlement:", @"com.apple.private.subscriptionservice.all-sources.read-only") & 1) != 0 || (objc_msgSend(currentTask, "shouldAllowAccessForBooleanEntitlement:", @"com.apple.private.subscriptionservice.web-sources.read-write"))
  {
    fetchOptionsValidator = [(VSSubscriptionRegistrationCenter *)self fetchOptionsValidator];
    v12 = [fetchOptionsValidator standardizedFetchOptionsFromOptions:optionsCopy withSecurityTask:currentTask];

    privateQueue = [(VSSubscriptionRegistrationCenter *)self privateQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __90__VSSubscriptionRegistrationCenter_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke;
    v16[3] = &unk_278B74D68;
    v16[4] = self;
    optionsCopy = v12;
    v17 = optionsCopy;
    v18 = privateQueue;
    v19 = handlerCopy;
    v14 = privateQueue;
    [v14 addOperationWithBlock:v16];
  }

  else
  {
    if ([(VSSubscriptionRegistrationCenter *)self _shouldRaiseExceptionsForMisuse])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Calling this method requires an entitlement."];
    }

    v14 = VSPrivateError(-5, 0);
    v15 = VSErrorLogObject(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [VSSubscriptionRegistrationCenter fetchActiveSubscriptionsWithOptions:v15 completionHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }

  objc_autoreleasePoolPop(v8);
}

void __90__VSSubscriptionRegistrationCenter_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [a1[4] subscriptionsByOptions];
  v4 = [v3 objectForKey:a1[5]];
  v5 = VSDefaultLogObject(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 138412290;
      v28 = v4;
      _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Will return cached subscriptions: %@", buf, 0xCu);
    }

    (*(a1[7] + 2))();
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Will fetch fresh subscriptions.", buf, 2u);
    }

    v7 = a1[4];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __90__VSSubscriptionRegistrationCenter_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_68;
    v21[3] = &unk_278B74CF0;
    v22 = a1[6];
    v8 = v3;
    v23 = v8;
    v9 = a1[5];
    v10 = a1[4];
    v24 = v9;
    v25 = v10;
    v26 = a1[7];
    v11 = [v7 _serviceWithErrorHandler:v21];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __90__VSSubscriptionRegistrationCenter_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2;
    v15[3] = &unk_278B74D40;
    v12 = a1[5];
    v16 = a1[6];
    v17 = v8;
    v13 = a1[5];
    v14 = a1[4];
    v18 = v13;
    v19 = v14;
    v20 = a1[7];
    [v11 fetchActiveSubscriptionsWithOptions:v12 completionHandler:v15];
  }

  objc_autoreleasePoolPop(v2);
}

void __90__VSSubscriptionRegistrationCenter_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __90__VSSubscriptionRegistrationCenter_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_68_cold_1();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__VSSubscriptionRegistrationCenter_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_69;
  v10[3] = &unk_278B74CC8;
  v5 = *(a1 + 32);
  v11 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v6;
  v13 = v7;
  v14 = v3;
  v15 = v8;
  v9 = v3;
  [v5 addOperationWithBlock:v10];
}

uint64_t __90__VSSubscriptionRegistrationCenter_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_69(uint64_t a1)
{
  [*(a1 + 32) removeObjectForKey:*(a1 + 40)];
  [*(a1 + 48) _resetExpirationOperation];
  v2 = *(*(a1 + 64) + 16);

  return v2();
}

void __90__VSSubscriptionRegistrationCenter_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = VSDefaultLogObject(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Fetched subscriptions: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = VSErrorLogObject(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __90__VSSubscriptionRegistrationCenter_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2_cold_1();
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__VSSubscriptionRegistrationCenter_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_71;
  v15[3] = &unk_278B74D18;
  v16 = v5;
  v9 = *(a1 + 32);
  v17 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v18 = v10;
  v19 = v11;
  v20 = v7;
  v21 = v12;
  v13 = v7;
  v14 = v5;
  [v9 addOperationWithBlock:v15];
}

void __90__VSSubscriptionRegistrationCenter_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_71(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = v2;
    v5 = [v4 copy];
    [v3 setObject:v5 forKey:*(a1 + 48)];
  }

  else
  {
    [*(a1 + 40) removeObjectForKey:*(a1 + 48)];
  }

  v6 = VSDefaultLogObject([*(a1 + 56) _resetExpirationOperation]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 64);
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Will call registration center fetch completion handler with subscriptions %@ or error %@.", &v13, 0x16u);
  }

  v9 = (*(*(a1 + 72) + 16))();
  v10 = VSDefaultLogObject(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 64);
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_23AB8E000, v10, OS_LOG_TYPE_DEFAULT, "Did call registration center fetch completion handler with subscriptions %@ or error %@.", &v13, 0x16u);
  }
}

- (void)registerSubscription:(id)subscription
{
  v34 = *MEMORY[0x277D85DE8];
  subscriptionCopy = subscription;
  v5 = VSDefaultLogObject(subscriptionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v33 = "[VSSubscriptionRegistrationCenter registerSubscription:]";
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  if (!subscriptionCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The subscription parameter must not be nil."];
  }

  _shouldRaiseExceptionsForMisuse = [(VSSubscriptionRegistrationCenter *)self _shouldRaiseExceptionsForMisuse];
  if (![(VSSubscriptionRegistrationCenter *)self _shouldAllowAccessToSubscription:subscriptionCopy])
  {
    if (_shouldRaiseExceptionsForMisuse)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Registering this subscription (%@) requires an entitlement.", subscriptionCopy}];
    }

    else
    {
      NSLog(@"Registering this subscription (%@) requires an entitlement.", subscriptionCopy);
    }

    goto LABEL_30;
  }

  subscriptionInfo = [subscriptionCopy subscriptionInfo];
  v8 = [subscriptionInfo length];

  accessLevel = [subscriptionCopy accessLevel];
  if (v8)
  {
    if (accessLevel)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Only subscriptions with an unknown access level may be registered with an info string."];
    }

    tierIdentifiers = [subscriptionCopy tierIdentifiers];
    v11 = [tierIdentifiers count];

    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE660];
    v14 = @"Only subscriptions without any tier identifiers may be registered with an info string.";
  }

  else
  {
    if ((accessLevel - 1) < 2)
    {
      goto LABEL_16;
    }

    if (accessLevel)
    {
      if (!_shouldRaiseExceptionsForMisuse)
      {
        goto LABEL_16;
      }

      v25 = *MEMORY[0x277CBE660];
    }

    else
    {
      if (!_shouldRaiseExceptionsForMisuse)
      {
        goto LABEL_16;
      }

      v25 = *MEMORY[0x277CBE660];
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Only subscriptions with an info string may be registered with an unknown access level."];
    }

    v12 = MEMORY[0x277CBEAD8];
    v14 = @"Attempt to register a subscription with an unexpected access level.";
    v13 = v25;
  }

  [v12 raise:v13 format:v14];
LABEL_16:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = subscriptionCopy;
  tierIdentifiers2 = [subscriptionCopy tierIdentifiers];
  v16 = [tierIdentifiers2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    v19 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(tierIdentifiers2);
        }

        v21 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:v19 format:@"Attempt to register subscription with a non-string object as a tier identifier."];
        }

        if (![v21 length])
        {
          [MEMORY[0x277CBEAD8] raise:v19 format:@"Attempt to register subscription with an empty string as a tier identifier."];
        }
      }

      v17 = [tierIdentifiers2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  v23 = VSDefaultLogObject(v22);
  subscriptionCopy = v26;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v26;
    _os_log_impl(&dword_23AB8E000, v23, OS_LOG_TYPE_DEFAULT, "Will register subscription: %@", buf, 0xCu);
  }

  v24 = [(VSSubscriptionRegistrationCenter *)self _serviceWithErrorHandler:&__block_literal_global_98];
  [v24 registerSubscription:v26];

LABEL_30:
}

void __57__VSSubscriptionRegistrationCenter_registerSubscription___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __57__VSSubscriptionRegistrationCenter_registerSubscription___block_invoke_cold_1();
  }
}

- (void)removeSubscriptions:(id)subscriptions
{
  v22 = *MEMORY[0x277D85DE8];
  subscriptionsCopy = subscriptions;
  v5 = VSDefaultLogObject(subscriptionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[VSSubscriptionRegistrationCenter removeSubscriptions:]";
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  if (!subscriptionsCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The subscriptions parameter must not be nil."];
  }

  if (![subscriptionsCopy count])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The subscriptions array must not be empty."];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = subscriptionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v10 = v10 && [(VSSubscriptionRegistrationCenter *)self _shouldAllowAccessToSubscription:*(*(&v15 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);

    if (!v10)
    {
      if ([(VSSubscriptionRegistrationCenter *)self _shouldRaiseExceptionsForMisuse])
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Removing thess subscriptions (%@) requires an entitlement.", v6}];
      }

      else
      {
        NSLog(@"Removing these subscriptions (%@) requires an entitlement.", v6);
      }

      goto LABEL_24;
    }
  }

  else
  {
  }

  v13 = VSDefaultLogObject(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, "Will remove subscriptions: %@", buf, 0xCu);
  }

  v14 = [(VSSubscriptionRegistrationCenter *)self _serviceWithErrorHandler:&__block_literal_global_109];
  [v14 removeSubscriptions:v6];

LABEL_24:
}

void __56__VSSubscriptionRegistrationCenter_removeSubscriptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__VSSubscriptionRegistrationCenter_removeSubscriptions___block_invoke_cold_1();
  }
}

@end