@interface VSSubscriptionRegistry
- (BOOL)_saveChangesToContext:(id)context;
- (VSRemoteNotifier)remoteNotifier;
- (VSSubscriptionPersistentContainer)persistentContainer;
- (VSSubscriptionPredicateFactory)predicateFactory;
- (VSSubscriptionRegistry)init;
- (id)_fetchRequest;
- (id)_predicateForCurrentConnectionWithRequestKind:(int64_t)kind;
- (id)_predicateForPersistentAttributesOfSubscriptions:(id)subscriptions withEntity:(id)entity forFiltering:(BOOL)filtering;
- (int64_t)_saveChangesToContext:(id)context withDate:(id)date;
- (void)_installedAppsDidChange:(id)change;
- (void)_performBlock:(id)block;
- (void)_sendRemoteNotification;
- (void)dealloc;
- (void)fetchActiveSubscriptionsWithOptions:(id)options completionHandler:(id)handler;
- (void)registerSubscription:(id)subscription withCompletionHandler:(id)handler;
- (void)removeSubscriptions:(id)subscriptions withCompletionHandler:(id)handler;
@end

@implementation VSSubscriptionRegistry

- (VSSubscriptionRegistry)init
{
  v5.receiver = self;
  v5.super_class = VSSubscriptionRegistry;
  v2 = [(VSSubscriptionRegistry *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__installedAppsDidChange_ name:@"VSInstalledApplicationsDidChange" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"VSInstalledApplicationsDidChange" object:0];

  v4.receiver = self;
  v4.super_class = VSSubscriptionRegistry;
  [(VSSubscriptionRegistry *)&v4 dealloc];
}

- (VSSubscriptionPersistentContainer)persistentContainer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_persistentContainer;
  if (!v3)
  {
    v3 = objc_alloc_init(VSSubscriptionPersistentContainer);
    objc_storeStrong(&selfCopy->_persistentContainer, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The result parameter must not be nil."];
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
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The result parameter must not be nil."];
  }

  return v3;
}

- (VSRemoteNotifier)remoteNotifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_remoteNotifier;
  if (!v3)
  {
    v3 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSActiveSubscriptionsDidChangeNotification"];
    objc_storeStrong(&selfCopy->_remoteNotifier, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The result parameter must not be nil."];
  }

  return v3;
}

- (void)_sendRemoteNotification
{
  remoteNotifier = [(VSSubscriptionRegistry *)self remoteNotifier];
  [remoteNotifier postNotification];
}

- (void)_installedAppsDidChange:(id)change
{
  changeCopy = change;
  v5 = objc_autoreleasePoolPush();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__VSSubscriptionRegistry__installedAppsDidChange___block_invoke;
  v6[3] = &unk_278B73308;
  v6[4] = self;
  [(VSSubscriptionRegistry *)self _performBlock:v6];
  objc_autoreleasePoolPop(v5);
}

- (void)_performBlock:(id)block
{
  blockCopy = block;
  v5 = objc_autoreleasePoolPush();
  persistentContainer = [(VSSubscriptionRegistry *)self persistentContainer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__VSSubscriptionRegistry__performBlock___block_invoke;
  v8[3] = &unk_278B73BF8;
  v7 = blockCopy;
  v9 = v7;
  [persistentContainer performBlockAndWait:v8];

  objc_autoreleasePoolPop(v5);
}

void __40__VSSubscriptionRegistry__performBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__VSSubscriptionRegistry__performBlock___block_invoke_2;
  v9[3] = &unk_278B74740;
  v10 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__VSSubscriptionRegistry__performBlock___block_invoke_4;
  v6[3] = &unk_278B74768;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v5 unwrapObject:v9 error:v6];
}

void __40__VSSubscriptionRegistry__performBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__VSSubscriptionRegistry__performBlock___block_invoke_3;
  v7[3] = &unk_278B73848;
  v8 = v4;
  v9 = v3;
  v10 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  [v6 performBlock:v7];
}

void __40__VSSubscriptionRegistry__performBlock___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setParentContext:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [VSFailable failableWithObject:*(a1 + 32)];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)_saveChangesToContext:(id)context
{
  contextCopy = context;
  v17 = objc_autoreleasePoolPush();
  vs_currentDate = [MEMORY[0x277CBEAA8] vs_currentDate];
  parentContext = contextCopy;
  v19 = 0;
  v7 = 0;
  v20 = *MEMORY[0x277CBE660];
  v8 = *MEMORY[0x277CBE658];
  v16 = parentContext;
  do
  {
    context = objc_autoreleasePoolPush();
    v9 = 0;
    do
    {
      v10 = objc_autoreleasePoolPush();
      if (!parentContext)
      {
        [MEMORY[0x277CBEAD8] raise:v20 format:@"The currentContextOrNil parameter must not be nil."];
      }

      v11 = parentContext;
      v12 = [(VSSubscriptionRegistry *)self _saveChangesToContext:v11 withDate:vs_currentDate];
      v13 = v12;
      if (v12 == 2)
      {

        parentContext = 0;
        v7 = 0;
      }

      else
      {
        if (v12 == 1)
        {
          v14 = VSDefaultLogObject(1);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23AB8E000, v14, OS_LOG_TYPE_DEFAULT, "Resolved constraint violation.  Will attempt to save again.", buf, 2u);
          }

          ++v9;

LABEL_13:
          parentContext = v11;
          goto LABEL_17;
        }

        if (v12)
        {
          goto LABEL_13;
        }

        parentContext = [v11 parentContext];

        if (parentContext)
        {
          ++v19;
        }

        else
        {
          [(VSSubscriptionRegistry *)self _sendRemoteNotification];
        }

        v7 = 1;
      }

LABEL_17:
      if (v9 >= 11)
      {
        [MEMORY[0x277CBEAD8] raise:v8 format:@"Too many constraints resolved."];
      }

      objc_autoreleasePoolPop(v10);
    }

    while (v13 == 1);
    if (v19 >= 2)
    {
      [MEMORY[0x277CBEAD8] raise:v8 format:@"Too many ancestor contexts."];
    }

    objc_autoreleasePoolPop(context);
  }

  while (parentContext);

  objc_autoreleasePoolPop(v17);
  return v7 & 1;
}

- (int64_t)_saveChangesToContext:(id)context withDate:(id)date
{
  contextCopy = context;
  dateCopy = date;
  v7 = objc_autoreleasePoolPush();
  if (!contextCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The context parameter must not be nil."];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__VSSubscriptionRegistry__saveChangesToContext_withDate___block_invoke;
  v12[3] = &unk_278B747B0;
  v8 = contextCopy;
  v13 = v8;
  v9 = dateCopy;
  v14 = v9;
  v15 = &v16;
  [v8 performBlockAndWait:v12];
  v10 = v17[3];

  _Block_object_dispose(&v16, 8);
  objc_autoreleasePoolPop(v7);

  return v10;
}

void __57__VSSubscriptionRegistry__saveChangesToContext_withDate___block_invoke(uint64_t a1)
{
  v102 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = [*(a1 + 32) insertedObjects];
  [v2 unionSet:v3];

  v75 = a1;
  v4 = [*(a1 + 32) updatedObjects];
  [v2 unionSet:v4];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v90 objects:v101 count:16];
  v73 = v5;
  if (v6)
  {
    v7 = v6;
    v8 = *v91;
    v9 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v91 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v90 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = MEMORY[0x277CBEAD8];
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            v16 = v13;
            v5 = v73;
            [v16 raise:v9 format:{@"Unexpectedly, object was %@, instead of VSPersistentSubscription.", v15}];
          }

          [v11 setMostRecentSaveDate:*(a1 + 40)];
        }

        objc_autoreleasePoolPop(v12);
      }

      v7 = [v5 countByEnumeratingWithState:&v90 objects:v101 count:16];
    }

    while (v7);
  }

  v17 = a1;
  v18 = *(a1 + 32);
  v89 = 0;
  v19 = [v18 save:&v89];
  v20 = v89;
  v21 = VSDefaultLogObject(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v98 = v19;
    v99 = 2112;
    v100 = v20;
    _os_log_impl(&dword_23AB8E000, v21, OS_LOG_TYPE_DEFAULT, "_saveChangesToContext didSave %d,localError %@", buf, 0x12u);
  }

  if (v19)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_62;
  }

  v22 = [v20 domain];
  if ([v22 isEqual:*MEMORY[0x277CCA050]])
  {
    v23 = [v20 code];

    if (v23 == 133021)
    {
      *(*(*(a1 + 48) + 8) + 24) = 2;
      v25 = [v20 userInfo];
      v26 = [v25 objectForKey:*MEMORY[0x277CBE278]];

      v27 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_31];
      v63 = v26;
      v28 = [v26 filteredArrayUsingPredicate:v27];

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      obj = v28;
      v67 = [obj countByEnumeratingWithState:&v85 objects:v96 count:16];
      if (!v67)
      {
        goto LABEL_57;
      }

      v66 = *v86;
      v74 = *MEMORY[0x277CBE660];
      v65 = v20;
      while (1)
      {
        for (j = 0; j != v67; ++j)
        {
          if (*v86 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v85 + 1) + 8 * j);
          v31 = objc_autoreleasePoolPush();
          v32 = [v30 conflictingObjects];
          v33 = [v32 mutableCopy];

          v34 = [v30 databaseObject];
          if (v34)
          {
            [v33 addObject:v34];
          }

          v72 = v34;
          v35 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_44];
          [v33 filterUsingPredicate:v35];

          v36 = v33;
          v37 = [v36 count];
          v38 = v37;
          if (!v37)
          {
            *(*(*(v17 + 48) + 8) + 24) = 2;
            goto LABEL_54;
          }

          v69 = v37;
          v70 = v31;
          v71 = j;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v68 = v36;
          v39 = v36;
          v40 = [v39 countByEnumeratingWithState:&v81 objects:v95 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = 0;
            v43 = 0;
            v44 = *v82;
            v76 = v39;
            do
            {
              v45 = 0;
              v46 = v43;
              do
              {
                if (*v82 != v44)
                {
                  objc_enumerationMutation(v76);
                }

                v47 = *(*(&v81 + 1) + 8 * v45);
                if (!v46 || ([*(*(&v81 + 1) + 8 * v45) creationDate], v48 = objc_claimAutoreleasedReturnValue(), v43 = v46, objc_msgSend(v43, "creationDate"), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v48, "vs_isBefore:", v49), v49, v43, v48, v50))
                {
                  v43 = v47;
                }

                if (!v42)
                {
                  goto LABEL_38;
                }

                v51 = [v47 mostRecentSaveDate];
                v52 = [v42 mostRecentSaveDate];

                if (!v52)
                {
                  [MEMORY[0x277CBEAD8] raise:v74 format:@"The [mostRecentlyUpdatedSubscription mostRecentSaveDate] parameter must not be nil."];
                }

                v53 = [v42 mostRecentSaveDate];
                v54 = [v51 vs_isAfter:v53];

                if (v54)
                {
LABEL_38:
                  v55 = v47;

                  v42 = v55;
                }

                ++v45;
                v46 = v43;
              }

              while (v41 != v45);
              v39 = v76;
              v41 = [v76 countByEnumeratingWithState:&v81 objects:v95 count:16];
            }

            while (v41);

            v17 = v75;
            if (v42)
            {
              goto LABEL_46;
            }
          }

          else
          {

            v43 = 0;
          }

          [MEMORY[0x277CBEAD8] raise:v74 format:@"The mostRecentlyUpdatedSubscription parameter must not be nil."];
          v42 = 0;
LABEL_46:
          [v39 removeObject:v42];
          v56 = [v43 creationDate];
          [v42 setCreationDate:v56];

          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v57 = v39;
          v58 = [v57 countByEnumeratingWithState:&v77 objects:v94 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = *v78;
            do
            {
              for (k = 0; k != v59; ++k)
              {
                if (*v78 != v60)
                {
                  objc_enumerationMutation(v57);
                }

                [*(v17 + 32) deleteObject:*(*(&v77 + 1) + 8 * k)];
              }

              v59 = [v57 countByEnumeratingWithState:&v77 objects:v94 count:16];
            }

            while (v59);
          }

          *(*(*(v17 + 48) + 8) + 24) = 1;
          v5 = v73;
          v20 = v65;
          v31 = v70;
          j = v71;
          v36 = v68;
          v38 = v69;
LABEL_54:

          objc_autoreleasePoolPop(v31);
          if (!v38)
          {
            goto LABEL_57;
          }
        }

        v67 = [obj countByEnumeratingWithState:&v85 objects:v96 count:16];
        if (!v67)
        {
LABEL_57:

          goto LABEL_62;
        }
      }
    }
  }

  else
  {
  }

  *(*(*(a1 + 48) + 8) + 24) = 2;
  v62 = VSErrorLogObject(v24);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    __57__VSSubscriptionRegistry__saveChangesToContext_withDate___block_invoke_cold_1();
  }

LABEL_62:
}

uint64_t __57__VSSubscriptionRegistry__saveChangesToContext_withDate___block_invoke_37(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __57__VSSubscriptionRegistry__saveChangesToContext_withDate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_fetchRequest
{
  v2 = +[VSPersistentSubscription fetchRequest];
  [v2 setIncludesPendingChanges:0];

  return v2;
}

- (id)_predicateForCurrentConnectionWithRequestKind:(int64_t)kind
{
  v5 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  _securityTaskForCurrentConnection = [(VSSubscriptionRegistry *)self _securityTaskForCurrentConnection];
  if (_securityTaskForCurrentConnection)
  {
    predicateFactory = [(VSSubscriptionRegistry *)self predicateFactory];
    v8 = [predicateFactory allowedSubscriptionsPredicateForRequestKind:kind fromTask:_securityTaskForCurrentConnection];

    v5 = v8;
  }

  return v5;
}

- (void)fetchActiveSubscriptionsWithOptions:(id)options completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (optionsCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    handlerCopy = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The options parameter must not be nil."];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  handlerCopy = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
LABEL_3:
  v9 = VSDefaultLogObject(handlerCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[VSSubscriptionRegistry fetchActiveSubscriptionsWithOptions:completionHandler:]";
    _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  _securityTaskForCurrentConnection = [(VSSubscriptionRegistry *)self _securityTaskForCurrentConnection];
  v11 = [optionsCopy objectForKey:@"VSSubscriptionFetchOptionSubscriberIdentifierHashModifier"];
  if (v11 && ([_securityTaskForCurrentConnection shouldAllowAccessToSubscriberIdentifierHashModifier:v11] & 1) == 0)
  {

    v11 = 0;
  }

  predicateFactory = [(VSSubscriptionRegistry *)self predicateFactory];
  v13 = [predicateFactory subscriptionFetchPredicateForTask:_securityTaskForCurrentConnection withOptions:optionsCopy];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke;
  v18[3] = &unk_278B74828;
  v18[4] = self;
  v19 = predicateFactory;
  v20 = v13;
  v21 = v11;
  v22 = v8;
  v14 = v8;
  v15 = v11;
  v16 = v13;
  v17 = predicateFactory;
  [(VSSubscriptionRegistry *)self _performBlock:v18];
}

void __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2;
  v11[3] = &unk_278B74800;
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v8;
  v13 = v7;
  v14 = *(a1 + 64);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2_84;
  v9[3] = &unk_278B73910;
  v10 = *(a1 + 64);
  [a2 unwrapObject:v11 error:v9];
}

void __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v36 = a2;
  v2 = VSDefaultLogObject(v36);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Successfully obtained context.", &buf, 2u);
  }

  v42 = [*(a1 + 32) _subscriptionEntity];
  v37 = [*(a1 + 40) predicateByConvertingSubscriptionKeyPathsInPredicate:*(a1 + 48) toAttributeKeysInEntity:v42];
  v39 = [*(a1 + 32) _fetchRequest];
  v3 = VSDefaultLogObject([v39 setPredicate:v37]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Will execute fetch request", &buf, 2u);
  }

  v61 = 0;
  v38 = [v36 executeFetchRequest:v39 error:&v61];
  v4 = v61;
  v35 = v4;
  if (v38)
  {
    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v38;
    v46 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v46)
    {
      v44 = 0;
      v45 = *v58;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v58 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v57 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v7 = VSDefaultLogObject(context);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = [v6 committedValuesForKeys:0];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v8;
            _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Result: %@", &buf, 0xCu);
          }

          v10 = VSDefaultLogObject(v9);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v6 objectID];
            v12 = [v11 isTemporaryID];
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v12;
            _os_log_impl(&dword_23AB8E000, v10, OS_LOG_TYPE_DEFAULT, "Subscription isTemporary=%lu", &buf, 0xCu);
          }

          v13 = [v6 sourceKind];
          v14 = v13 == 0;

          if (v14)
          {
            v28 = VSErrorLogObject(v15);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2_cold_1(&v55, v56, v28);
            }

            ++v44;
          }

          else
          {
            *&buf = 0;
            *(&buf + 1) = &buf;
            v63 = 0x3032000000;
            v64 = __Block_byref_object_copy__9;
            v65 = __Block_byref_object_dispose__9;
            v66 = objc_alloc_init(VSSubscription);
            [v41 addObject:*(*(&buf + 1) + 40)];
            v16 = [v42 attributesByName];
            v54[0] = MEMORY[0x277D85DD0];
            v54[1] = 3221225472;
            v54[2] = __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_66;
            v54[3] = &unk_278B747D8;
            v54[4] = v6;
            v54[5] = &buf;
            [v16 enumerateKeysAndObjectsUsingBlock:v54];

            v17 = [*(*(&buf + 1) + 40) subscriberIdentifierHash];
            if ([v17 length] && objc_msgSend(*(a1 + 56), "length"))
            {
              v18 = objc_alloc_init(VSHash);
              [(VSHash *)v18 updateWithString:v17];
              [(VSHash *)v18 updateWithString:*(a1 + 56)];
              v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"3AE626BD-CE1D-4C64-94CB-ED0095DE91EC"];
              v20 = [VSOptional optionalWithObject:v19];

              v21 = [v20 forceUnwrapObject];
              [(VSHash *)v18 updateWithUUID:v21];

              v22 = [(VSHash *)v18 finalData];
              v23 = [MEMORY[0x277CCAE68] valueTransformerForName:@"VSBase64DataValueTransformer"];
              v24 = [v23 transformedValue:v22];
              v25 = [VSOptional optionalWithObject:v24];
              v26 = *(*(&buf + 1) + 40);
              v27 = [v25 forceUnwrapObject];
              [v26 setSubscriberIdentifierHash:v27];
            }

            _Block_object_dispose(&buf, 8);
          }

          objc_autoreleasePoolPop(context);
        }

        v46 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v46);

      if (!v44)
      {
        goto LABEL_30;
      }

      obj = [MEMORY[0x277CCACA8] stringWithFormat:@"Skipped %lu empty objects.", v44];
      v30 = VSErrorLogObject(obj);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2_cold_2();
      }
    }

LABEL_30:
    v31 = VSDefaultLogObject(v29);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v41;
      _os_log_impl(&dword_23AB8E000, v31, OS_LOG_TYPE_DEFAULT, "Will return matching subscriptions: %@", &buf, 0xCu);
    }

    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_82;
    v51[3] = &unk_278B737F8;
    v32 = *(a1 + 64);
    v52 = v41;
    v53 = v32;
    v33 = v41;
    VSPerformCompletionHandler(v51);

    goto LABEL_36;
  }

  v34 = VSErrorLogObject(v4);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2_cold_3();
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_83;
  v48[3] = &unk_278B737F8;
  v50 = *(a1 + 64);
  v49 = v35;
  VSPerformCompletionHandler(v48);

  v33 = v50;
LABEL_36:
}

void __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_66(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if ([v6 vs_isSuitableForPurpose:4])
  {
    v8 = [v6 vs_subscriptionKeyPath];
    if (v8)
    {
      v9 = [*(a1 + 32) valueForKey:v5];
      v10 = VSDefaultLogObject(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412546;
        v12 = v9;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_23AB8E000, v10, OS_LOG_TYPE_DEFAULT, "Will set value %@ for key path %@", &v11, 0x16u);
      }

      [*(*(*(a1 + 40) + 8) + 40) setValue:v9 forKeyPath:v8];
    }
  }

  objc_autoreleasePoolPop(v7);
}

void __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_83(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) vs_secureCodingSafeError];
  (*(v1 + 16))(v1, 0, v2);
}

void __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2_84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2_84_cold_1();
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_85;
  v7[3] = &unk_278B737F8;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  VSPerformCompletionHandler(v7);
}

void __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_85(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) vs_secureCodingSafeError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)registerSubscription:(id)subscription withCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  subscriptionCopy = subscription;
  v9 = VSDefaultLogObject(subscriptionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[VSSubscriptionRegistry registerSubscription:withCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v10 = [subscriptionCopy copy];
  v12 = VSDefaultLogObject(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v10;
    _os_log_impl(&dword_23AB8E000, v12, OS_LOG_TYPE_DEFAULT, "Provided subscription: %@", buf, 0xCu);
  }

  v13 = [(VSSubscriptionRegistry *)self _predicateForCurrentConnectionWithRequestKind:1];
  v14 = [v13 evaluateWithObject:v10];
  if (v14)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke;
    v19[3] = &unk_278B74850;
    v19[4] = self;
    v20 = v10;
    v21 = handlerCopy;
    [(VSSubscriptionRegistry *)self _performBlock:v19];

    v15 = v20;
LABEL_11:

    goto LABEL_12;
  }

  v16 = VSErrorLogObject(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [VSSubscriptionRegistry registerSubscription:withCompletionHandler:];
  }

  if (handlerCopy)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke_90;
    v17[3] = &unk_278B73938;
    v18 = handlerCopy;
    VSPerformCompletionHandler(v17);
    v15 = v18;
    goto LABEL_11;
  }

LABEL_12:

  objc_autoreleasePoolPop(v7);
}

void __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_278B746A0;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke_2_88;
  v6[3] = &unk_278B73910;
  v7 = *(a1 + 48);
  [v3 unwrapObject:v8 error:v6];

  objc_autoreleasePoolPop(v4);
}

void __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) _subscriptionEntity];
  v6 = [[VSPersistentSubscription alloc] initWithEntity:v5 insertIntoManagedObjectContext:v3];
  v7 = [v5 attributesByName];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke_3;
  v22[3] = &unk_278B73898;
  v23 = *(a1 + 40);
  v8 = v6;
  v24 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v22];

  v10 = VSDefaultLogObject(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v10, OS_LOG_TYPE_DEFAULT, "Will attempt to persist registration", buf, 2u);
  }

  v11 = [*(a1 + 32) _saveChangesToContext:v3];
  if (v11)
  {
    v12 = VSDefaultLogObject(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23AB8E000, v12, OS_LOG_TYPE_DEFAULT, "Will send registration notification", buf, 2u);
    }

    v13 = notify_post("com.apple.VideoSubscriberAccount.DidRegisterSubscription");
    if (v13)
    {
      v14 = VSErrorLogObject(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke_2_cold_2();
      }
    }

    else
    {
      v14 = VSDefaultLogObject(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23AB8E000, v14, OS_LOG_TYPE_DEFAULT, "Did send registration notification", buf, 2u);
      }
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = v20;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v18 = __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke_86;
      goto LABEL_17;
    }
  }

  else
  {
    v15 = VSErrorLogObject(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke_2_cold_1();
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = v19;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v18 = __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke_87;
LABEL_17:
      v17[2] = v18;
      v17[3] = &unk_278B73938;
      v17[4] = v16;
      VSPerformCompletionHandler(v17);
    }
  }

  objc_autoreleasePoolPop(v4);
}

void __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 vs_isSuitableForPurpose:2])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [v6 vs_subscriptionKeyPath];
    if (v8)
    {
      v9 = [*(a1 + 32) valueForKeyPath:v8];
      v10 = VSDefaultLogObject(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412802;
        v12 = v9;
        v13 = 2112;
        v14 = v8;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&dword_23AB8E000, v10, OS_LOG_TYPE_DEFAULT, "Using subscription value %@ for key %@ as value for persistent name %@.", &v11, 0x20u);
      }

      [*(a1 + 40) setValue:v9 forKey:v5];
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke_2_88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2_84_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke_89;
    v6[3] = &unk_278B73938;
    v7 = v5;
    VSPerformCompletionHandler(v6);
  }
}

- (id)_predicateForPersistentAttributesOfSubscriptions:(id)subscriptions withEntity:(id)entity forFiltering:(BOOL)filtering
{
  v31 = *MEMORY[0x277D85DE8];
  subscriptionsCopy = subscriptions;
  entityCopy = entity;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = subscriptionsCopy;
  v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
        attributesByName = [entityCopy attributesByName];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __99__VSSubscriptionRegistry__predicateForPersistentAttributesOfSubscriptions_withEntity_forFiltering___block_invoke;
        v23[3] = &unk_278B74878;
        filteringCopy = filtering;
        v23[4] = v13;
        v24 = v15;
        v17 = v15;
        [attributesByName enumerateKeysAndObjectsUsingBlock:v23];

        v18 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v17];
        [v8 addObject:v18];

        objc_autoreleasePoolPop(v14);
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v19 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v8];

  return v19;
}

void __99__VSSubscriptionRegistry__predicateForPersistentAttributesOfSubscriptions_withEntity_forFiltering___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 vs_isSuitableForPurpose:1];
  if (*(a1 + 48))
  {
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else if (!v6 || [v5 attributeType] == 1800)
  {
    goto LABEL_9;
  }

  v7 = [v5 vs_subscriptionKeyPath];
  if (v7)
  {
    v8 = [*(a1 + 32) valueForKeyPath:v7];
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", v10, v8];
    [*(a1 + 40) addObject:v9];
  }

LABEL_9:
}

- (void)removeSubscriptions:(id)subscriptions withCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  subscriptionsCopy = subscriptions;
  v8 = VSDefaultLogObject(subscriptionsCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[VSSubscriptionRegistry removeSubscriptions:withCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v9 = [(VSSubscriptionRegistry *)self _predicateForCurrentConnectionWithRequestKind:1];
  v10 = [subscriptionsCopy filteredArrayUsingPredicate:v9];

  if ([v10 count])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke;
    v15[3] = &unk_278B74850;
    v15[4] = self;
    v16 = v10;
    v17 = handlerCopy;
    [(VSSubscriptionRegistry *)self _performBlock:v15];

    v11 = v16;
LABEL_9:

    goto LABEL_10;
  }

  v12 = VSErrorLogObject(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [VSSubscriptionRegistry removeSubscriptions:withCompletionHandler:];
  }

  if (handlerCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_102;
    v13[3] = &unk_278B73938;
    v14 = handlerCopy;
    VSPerformCompletionHandler(v13);
    v11 = v14;
    goto LABEL_9;
  }

LABEL_10:
}

void __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_2;
  v7[3] = &unk_278B746A0;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v9 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_2_100;
  v5[3] = &unk_278B73910;
  v6 = *(a1 + 48);
  [a2 unwrapObject:v7 error:v5];
}

void __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v39 = a2;
  v3 = [*(a1 + 32) _fetchRequest];
  v4 = [v3 entity];
  v5 = [*(a1 + 32) _predicateForPersistentAttributesOfSubscriptions:*(a1 + 40) withEntity:v4 forFiltering:0];
  v6 = VSDefaultLogObject([v3 setPredicate:v5]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Will execute fetch request", buf, 2u);
  }

  v51 = 0;
  v7 = [v39 executeFetchRequest:v3 error:&v51];
  v8 = v51;
  v9 = v8;
  if (v7)
  {
    if ([v7 count])
    {
      v37 = a1;
      v38 = v9;
      v10 = [*(a1 + 32) _predicateForPersistentAttributesOfSubscriptions:*(a1 + 40) withEntity:v4 forFiltering:1];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v12)
      {
        v13 = v12;
        v33 = v7;
        v34 = v5;
        v35 = v4;
        v36 = v3;
        v14 = 0;
        v15 = *v48;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v48 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v47 + 1) + 8 * i);
            v18 = [v10 evaluateWithObject:{v17, v33, v34, v35, v36}];
            if (v18)
            {
              [v39 deleteObject:v17];
              v14 = 1;
            }

            else
            {
              v19 = VSDefaultLogObject(v18);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v53 = v17;
                _os_log_impl(&dword_23AB8E000, v19, OS_LOG_TYPE_DEFAULT, "Fetched object %@ does not match in-memory filter.", buf, 0xCu);
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v47 objects:v54 count:16];
        }

        while (v13);

        v4 = v35;
        v3 = v36;
        v7 = v33;
        v5 = v34;
        if (v14)
        {
          v21 = VSDefaultLogObject(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23AB8E000, v21, OS_LOG_TYPE_DEFAULT, "Will attempt to persist removal of subscriptions.", buf, 2u);
          }

          v22 = [*(v37 + 32) _saveChangesToContext:v39];
          if (v22)
          {
            v23 = VSDefaultLogObject(v22);
            v9 = v38;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23AB8E000, v23, OS_LOG_TYPE_DEFAULT, "Did remove subscriptions.", buf, 2u);
            }

            v24 = *(v37 + 48);
            if (!v24)
            {
              goto LABEL_39;
            }

            v25 = v46;
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v26 = __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_95;
          }

          else
          {
            v32 = VSErrorLogObject(v22);
            v9 = v38;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_2_cold_1();
            }

            v24 = *(v37 + 48);
            if (!v24)
            {
              goto LABEL_39;
            }

            v25 = v45;
            v45[0] = MEMORY[0x277D85DD0];
            v45[1] = 3221225472;
            v26 = __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_96;
          }

          goto LABEL_38;
        }
      }

      else
      {
      }

      v31 = VSErrorLogObject(v20);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_2_cold_2();
      }

      v24 = *(v37 + 48);
      v9 = v38;
      if (!v24)
      {
        goto LABEL_39;
      }

      v25 = v44;
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v26 = __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_97;
LABEL_38:
      v25[2] = v26;
      v25[3] = &unk_278B73938;
      v25[4] = v24;
      VSPerformCompletionHandler(v25);

      goto LABEL_39;
    }

    v29 = VSDefaultLogObject(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23AB8E000, v29, OS_LOG_TYPE_DEFAULT, "No matching subscriptions to remove.", buf, 2u);
    }

    v30 = *(a1 + 48);
    if (v30)
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_98;
      v42[3] = &unk_278B73938;
      v43 = v30;
      VSPerformCompletionHandler(v42);
      v10 = v43;
      goto LABEL_39;
    }
  }

  else
  {
    v27 = VSErrorLogObject(v8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_2_cold_3();
    }

    v28 = *(a1 + 48);
    if (v28)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_99;
      v40[3] = &unk_278B73938;
      v41 = v28;
      VSPerformCompletionHandler(v40);
      v10 = v41;
LABEL_39:
    }
  }
}

void __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_2_100(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2_84_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_101;
    v6[3] = &unk_278B73938;
    v7 = v5;
    VSPerformCompletionHandler(v6);
  }
}

void __57__VSSubscriptionRegistry__saveChangesToContext_withDate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23AB8E000, log, OS_LOG_TYPE_ERROR, "Skipping empty object.", buf, 2u);
}

void __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_23AB8E000, v0, OS_LOG_TYPE_FAULT, "%@", v1, 0xCu);
}

void __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __80__VSSubscriptionRegistry_fetchActiveSubscriptionsWithOptions_completionHandler___block_invoke_2_84_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)registerSubscription:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__VSSubscriptionRegistry_registerSubscription_withCompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeSubscriptions:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__VSSubscriptionRegistry_removeSubscriptions_withCompletionHandler___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end