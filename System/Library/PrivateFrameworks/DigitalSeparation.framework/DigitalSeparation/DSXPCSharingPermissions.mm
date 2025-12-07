@interface DSXPCSharingPermissions
+ (id)interface;
+ (id)sharedInstance;
- (BOOL)isFetchNeeded;
- (DSXPCSharingPermissions)init;
- (NSArray)allPeople;
- (id)sharingPeopleForContacts:(id)contacts;
- (id)sharingPeopleForIdentities:(id)identities;
- (int64_t)deviceOwnerRoleForSharedResource:(id)resource;
- (void)_fetchSharingWithCompletion:(id)completion;
- (void)addSharingPerson:(id)person participant:(id)participant forSource:(id)source sharedResource:(id)resource deviceOwnerRole:(int64_t)role;
- (void)connectXPC;
- (void)disconnect;
- (void)fetchSharingWithCompletion:(id)completion;
- (void)isFetchNeeded;
- (void)makeSharingPeople;
- (void)makeSharingPeopleWithResources:(id)resources;
- (void)requestImmediateFetch;
- (void)setDSMe:(id)me;
- (void)stopAllSharingWithPerson:(id)person completion:(id)completion;
- (void)stopSharingSources:(id)sources withPerson:(id)person completion:(id)completion;
@end

@implementation DSXPCSharingPermissions

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[DSXPCSharingPermissions sharedInstance];
  }

  v3 = sharedInstance__defaultProvider;

  return v3;
}

uint64_t __41__DSXPCSharingPermissions_sharedInstance__block_invoke()
{
  v0 = os_log_create("com.apple.DigitalSeparation", "SafetyCheckWhenBlocking");
  v1 = DSLog_4;
  DSLog_4 = v0;

  sharedInstance__defaultProvider = objc_alloc_init(DSXPCSharingPermissions);

  return MEMORY[0x2821F96F8]();
}

- (DSXPCSharingPermissions)init
{
  v15.receiver = self;
  v15.super_class = DSXPCSharingPermissions;
  v2 = [(DSXPCSharingPermissions *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_permissionsLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);

    v6 = dispatch_queue_create("com.apple.DigitalSeparation.DSXPCSharingPermissions", v5);
    queue = v3->_queue;
    v3->_queue = v6;

    v8 = dispatch_group_create();
    dispatchGroup = v3->_dispatchGroup;
    v3->_dispatchGroup = v8;

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    [(DSXPCSharingPermissions *)v3 setPeople:orderedSet];

    [(DSXPCSharingPermissions *)v3 connectXPC];
    [(DSXPCSharingPermissions *)v3 requestImmediateFetch];
    v11 = v3->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__DSXPCSharingPermissions_init__block_invoke;
    block[3] = &unk_278F72AC0;
    v14 = v3;
    dispatch_async(v11, block);
  }

  return v3;
}

void __31__DSXPCSharingPermissions_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(DSMe);
  [*(a1 + 32) setMe:v2];
}

- (BOOL)isFetchNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  fetchCompletedTime = [(DSXPCSharingPermissions *)self fetchCompletedTime];
  if (v3 < fetchCompletedTime)
  {
    if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_FAULT))
    {
      [DSXPCSharingPermissions isFetchNeeded];
    }

    fetchCompletedTime = 0;
  }

  v5 = v3 - fetchCompletedTime;
  v6 = DSLog_4;
  if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
  {
    v8 = 134349056;
    v9 = v5 / 1000000000.0;
    _os_log_impl(&dword_248C40000, v6, OS_LOG_TYPE_INFO, "Last fetch was %{public}fs ago", &v8, 0xCu);
  }

  return v5 > 0x6FC23AC00;
}

- (void)requestImmediateFetch
{
  [(DSXPCSharingPermissions *)self setFetchCompletedTime:0];

  [(DSXPCSharingPermissions *)self setCachedFetchError:0];
}

- (void)fetchSharingWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__DSXPCSharingPermissions_fetchSharingWithCompletion___block_invoke;
  block[3] = &unk_278F72E30;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __54__DSXPCSharingPermissions_fetchSharingWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchSharingWithCompletion:*(a1 + 32)];
}

- (void)_fetchSharingWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchGroup = self->_dispatchGroup;
  v6 = dispatch_time(0, 3000000000);
  if (dispatch_group_wait(dispatchGroup, v6))
  {
    if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_ERROR))
    {
      [DSXPCSharingPermissions _fetchSharingWithCompletion:];
    }

    AnalyticsSendEventLazy();
  }

  dispatch_group_enter(self->_dispatchGroup);
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __55__DSXPCSharingPermissions__fetchSharingWithCompletion___block_invoke_22;
  v23[3] = &unk_278F72E78;
  v7 = completionCopy;
  v24 = v7;
  objc_copyWeak(&v25, &location);
  v8 = MEMORY[0x24C1E7EB0](v23);
  if ([(DSXPCSharingPermissions *)self isFetchNeeded])
  {
    xpcConnection = [(DSXPCSharingPermissions *)self xpcConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__DSXPCSharingPermissions__fetchSharingWithCompletion___block_invoke_24;
    v21[3] = &unk_278F72EA0;
    v10 = v8;
    v22 = v10;
    v11 = [xpcConnection remoteObjectProxyWithErrorHandler:v21];

    if (!v11)
    {
      (*(v10 + 2))(v10, 0);
    }

    v12 = DSLog_4;
    if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_248C40000, v12, OS_LOG_TYPE_INFO, "fetchSharingWithProxy: starting sharing fetch over xpc", buf, 2u);
    }

    v13 = os_signpost_id_generate(DSLog_4);
    v14 = DSLog_4;
    v15 = v14;
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "fetch", " enableTelemetry=YES ", buf, 2u);
    }

    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__DSXPCSharingPermissions__fetchSharingWithCompletion___block_invoke_25;
    v17[3] = &unk_278F72EC8;
    v19[1] = v13;
    objc_copyWeak(v19, buf);
    v18 = v10;
    [v11 fetchSharedResourcesWithCompletion:v17];

    objc_destroyWeak(v19);
    objc_destroyWeak(buf);
  }

  else
  {
    v16 = DSLog_4;
    if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_248C40000, v16, OS_LOG_TYPE_INFO, "Skipping because we recently fetched", buf, 2u);
    }

    v8[2](v8, 0);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

id __55__DSXPCSharingPermissions__fetchSharingWithCompletion___block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"entrypoint";
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 processName];
  v4[1] = @"fetchErrorCode";
  v5[0] = v1;
  v5[1] = &unk_285BA2CB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void __55__DSXPCSharingPermissions__fetchSharingWithCompletion___block_invoke_22(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  dispatch_group_leave(WeakRetained[2]);
}

void __55__DSXPCSharingPermissions__fetchSharingWithCompletion___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_ERROR))
  {
    __55__DSXPCSharingPermissions__fetchSharingWithCompletion___block_invoke_24_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __55__DSXPCSharingPermissions__fetchSharingWithCompletion___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DSLog_4;
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_248C40000, v8, OS_SIGNPOST_INTERVAL_END, v9, "fetch", " enableTelemetry=YES ", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  os_unfair_lock_lock(WeakRetained + 6);
  [(os_unfair_lock_s *)WeakRetained setFetchCompletedTime:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
  if (v5 && (-[os_unfair_lock_s sharedResourcesBySource](WeakRetained, "sharedResourcesBySource"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v5 isEqualToDictionary:v11], v11, (v12 & 1) == 0))
  {
    v14 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
    [(os_unfair_lock_s *)WeakRetained setSharedResourcesBySource:v14];

    v15 = [(os_unfair_lock_s *)WeakRetained people];
    [v15 removeAllObjects];
  }

  else
  {
    v13 = DSLog_4;
    if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_248C40000, v13, OS_LOG_TYPE_DEFAULT, "Skipping makeSharingPeopleWithResources: because the fetch completed with the same shared resources", v16, 2u);
    }
  }

  os_unfair_lock_unlock(WeakRetained + 6);
  (*(*(a1 + 32) + 16))();
}

- (NSArray)allPeople
{
  os_unfair_lock_lock(&self->_permissionsLock);
  people = [(DSXPCSharingPermissions *)self people];
  array = [people array];
  v5 = [array copy];

  os_unfair_lock_unlock(&self->_permissionsLock);

  return v5;
}

- (void)makeSharingPeople
{
  sharedResourcesBySource = [(DSXPCSharingPermissions *)self sharedResourcesBySource];
  [(DSXPCSharingPermissions *)self makeSharingPeopleWithResources:sharedResourcesBySource];
}

- (void)makeSharingPeopleWithResources:(id)resources
{
  v106 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  dispatch_group_enter(self->_dispatchGroup);
  people = [(DSXPCSharingPermissions *)self people];
  v6 = [people count];

  if (v6)
  {
    v7 = DSLog_4;
    if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v8 = "Skipping makeSharingPeople because we already have a people model";
LABEL_4:
      _os_log_impl(&dword_248C40000, v7, OS_LOG_TYPE_INFO, v8, buf, 2u);
    }
  }

  else
  {
    if (![resourcesCopy count])
    {
      v7 = DSLog_4;
      if (!os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
      {
        goto LABEL_70;
      }

      *buf = 0;
      v8 = "Skipping makeSharingPeople because sharedResourcesBySource is empty";
      goto LABEL_4;
    }

    selfCopy = self;
    array = [MEMORY[0x277CBEB18] array];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    obj = [resourcesCopy allKeys];
    v58 = resourcesCopy;
    v69 = [obj countByEnumeratingWithState:&v92 objects:v105 count:16];
    if (v69)
    {
      v67 = *v93;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v93 != v67)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [resourcesCopy objectForKeyedSubscript:*(*(&v92 + 1) + 8 * i)];
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v88 objects:v104 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v89;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v89 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v88 + 1) + 8 * j);
                v84 = 0u;
                v85 = 0u;
                v86 = 0u;
                v87 = 0u;
                participants = [v15 participants];
                v17 = [participants countByEnumeratingWithState:&v84 objects:v103 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v85;
                  do
                  {
                    for (k = 0; k != v18; ++k)
                    {
                      if (*v85 != v19)
                      {
                        objc_enumerationMutation(participants);
                      }

                      identity = [*(*(&v84 + 1) + 8 * k) identity];
                      [array addObject:identity];
                    }

                    v18 = [participants countByEnumeratingWithState:&v84 objects:v103 count:16];
                  }

                  while (v18);
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v88 objects:v104 count:16];
            }

            while (v12);
          }

          resourcesCopy = v58;
        }

        v69 = [obj countByEnumeratingWithState:&v92 objects:v105 count:16];
      }

      while (v69);
    }

    v22 = [array count];
    v23 = DSLog_4;
    if (v22)
    {
      v24 = os_signpost_id_generate(DSLog_4);
      v25 = DSLog_4;
      v26 = v25;
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_248C40000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "lookup", " enableTelemetry=YES ", buf, 2u);
      }

      v68 = +[DSContactProvider defaultProvider];
      v27 = DSLog_4;
      v28 = selfCopy;
      if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_248C40000, v27, OS_LOG_TYPE_INFO, "Fetching all contacts related to the sharing model", buf, 2u);
      }

      obja = [v68 unifiedContactsDictionaryForIdentities:array];
      v29 = DSLog_4;
      v30 = v29;
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_248C40000, v30, OS_SIGNPOST_INTERVAL_END, v24, "lookup", " enableTelemetry=YES ", buf, 2u);
      }

      allKeys = [resourcesCopy allKeys];
      v32 = [allKeys copy];

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v54 = v32;
      v56 = [v54 countByEnumeratingWithState:&v80 objects:v102 count:16];
      if (v56)
      {
        v55 = *v81;
        do
        {
          v33 = 0;
          do
          {
            if (*v81 != v55)
            {
              objc_enumerationMutation(v54);
            }

            v57 = v33;
            v34 = *(*(&v80 + 1) + 8 * v33);
            v35 = [resourcesCopy objectForKeyedSubscript:v34];
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v59 = v35;
            v36 = DSSharingType;
            v61 = [v35 countByEnumeratingWithState:&v76 objects:v101 count:16];
            if (v61)
            {
              v60 = *v77;
              do
              {
                v37 = 0;
                do
                {
                  if (*v77 != v60)
                  {
                    objc_enumerationMutation(v59);
                  }

                  v62 = v37;
                  v38 = *(*(&v76 + 1) + 8 * v37);
                  v39 = [(dispatch_group_t *)v28 deviceOwnerRoleForSharedResource:v38];
                  v72 = 0u;
                  v73 = 0u;
                  v74 = 0u;
                  v75 = 0u;
                  participants2 = [v38 participants];
                  v40 = [participants2 countByEnumeratingWithState:&v72 objects:v100 count:16];
                  if (v40)
                  {
                    v41 = v40;
                    v70 = *v73;
                    do
                    {
                      for (m = 0; m != v41; ++m)
                      {
                        if (*v73 != v70)
                        {
                          objc_enumerationMutation(participants2);
                        }

                        v43 = *(*(&v72 + 1) + 8 * m);
                        identity2 = [v43 identity];
                        v45 = [v68 unifiedContactInDictionary:obja forIdentity:identity2];

                        superclass = v36[19].superclass;
                        v47 = os_log_type_enabled(superclass, OS_LOG_TYPE_INFO);
                        if (v45)
                        {
                          if (v47)
                          {
                            *buf = 138412546;
                            v97 = v45;
                            v98 = 2112;
                            v99 = v38;
                            _os_log_impl(&dword_248C40000, superclass, OS_LOG_TYPE_INFO, "Adding contact %@ to sharing model for resource %@", buf, 0x16u);
                          }

                          v48 = [[DSXPCSharingPerson alloc] initWithSource:v34 sharedResource:v38 participant:v43 deviceOwnerRole:v39 contact:v45];
                        }

                        else
                        {
                          if (v47)
                          {
                            v49 = superclass;
                            identity3 = [v43 identity];
                            *buf = 138412546;
                            v97 = identity3;
                            v98 = 2112;
                            v99 = v38;
                            _os_log_impl(&dword_248C40000, v49, OS_LOG_TYPE_INFO, "Adding unknown participant with identity %@ to sharing model for resource %@", buf, 0x16u);
                          }

                          v51 = [DSIdentity alloc];
                          identity4 = [v43 identity];
                          v53 = [(DSIdentity *)v51 initWithIdentity:identity4];

                          v48 = [[DSXPCSharingPerson alloc] initWithSource:v34 sharedResource:v38 participant:v43 deviceOwnerRole:v39 unknownHandle:v53];
                          v28 = selfCopy;
                          v36 = DSSharingType;
                        }

                        [(dispatch_group_t *)v28 addSharingPerson:v48 participant:v43 forSource:v34 sharedResource:v38 deviceOwnerRole:v39];
                      }

                      v41 = [participants2 countByEnumeratingWithState:&v72 objects:v100 count:16];
                    }

                    while (v41);
                  }

                  v37 = v62 + 1;
                }

                while (v62 + 1 != v61);
                v61 = [v59 countByEnumeratingWithState:&v76 objects:v101 count:16];
              }

              while (v61);
            }

            v33 = v57 + 1;
            resourcesCopy = v58;
          }

          while (v57 + 1 != v56);
          v56 = [v54 countByEnumeratingWithState:&v80 objects:v102 count:16];
        }

        while (v56);
      }

      dispatch_group_leave(v28[2]);
    }

    else if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_ERROR))
    {
      [(DSXPCSharingPermissions *)v23 makeSharingPeopleWithResources:resourcesCopy];
    }
  }

LABEL_70:
}

- (id)sharingPeopleForContacts:(id)contacts
{
  v82 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  selfCopy = self;
  dispatch_group_enter(self->_dispatchGroup);
  v5 = +[DSContactProvider defaultProvider];
  v6 = [v5 sanitizeContacts:contactsCopy];

  v54 = v6;
  v7 = [v6 count];
  if (v7 != [contactsCopy count])
  {
    v8 = DSLog_4;
    if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_ERROR))
    {
      [(DSXPCSharingPermissions *)contactsCopy sharingPeopleForContacts:v8, v6];
    }
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sharedResourcesBySource = [(dispatch_group_t *)selfCopy sharedResourcesBySource];
  allKeys = [sharedResourcesBySource allKeys];

  v11 = DSLog_4;
  if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    *buf = 134217984;
    v73 = [allKeys count];
    _os_log_impl(&dword_248C40000, v12, OS_LOG_TYPE_INFO, "sharingPersonForContacts:completion: checking %ld sources for participants", buf, 0xCu);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = allKeys;
  v42 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (v42)
  {
    v41 = *v69;
    do
    {
      v13 = 0;
      do
      {
        if (*v69 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v13;
        v14 = *(*(&v68 + 1) + 8 * v13);
        sharedResourcesBySource2 = [(dispatch_group_t *)selfCopy sharedResourcesBySource];
        v52 = v14;
        v16 = [sharedResourcesBySource2 objectForKeyedSubscript:v14];

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v44 = v16;
        v47 = [v44 countByEnumeratingWithState:&v64 objects:v80 count:16];
        if (v47)
        {
          v45 = *v65;
          do
          {
            v17 = 0;
            do
            {
              if (*v65 != v45)
              {
                objc_enumerationMutation(v44);
              }

              v48 = v17;
              v18 = *(*(&v64 + 1) + 8 * v17);
              v50 = [(dispatch_group_t *)selfCopy deviceOwnerRoleForSharedResource:v18];
              v51 = v18;
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              participants = [v18 participants];
              v19 = [participants countByEnumeratingWithState:&v60 objects:v79 count:16];
              if (v19)
              {
                v20 = v19;
                v55 = *v61;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v61 != v55)
                    {
                      objc_enumerationMutation(participants);
                    }

                    v22 = *(*(&v60 + 1) + 8 * i);
                    v56 = 0u;
                    v57 = 0u;
                    v58 = 0u;
                    v59 = 0u;
                    v23 = v54;
                    v24 = [v23 countByEnumeratingWithState:&v56 objects:v78 count:16];
                    if (v24)
                    {
                      v25 = v24;
                      v26 = *v57;
                      while (2)
                      {
                        for (j = 0; j != v25; ++j)
                        {
                          if (*v57 != v26)
                          {
                            objc_enumerationMutation(v23);
                          }

                          v28 = *(*(&v56 + 1) + 8 * j);
                          identity = [v22 identity];
                          v30 = [v28 isLikeIdentifiable:identity];

                          if (v30)
                          {
                            identifier = [v28 identifier];
                            v32 = [dictionary objectForKeyedSubscript:identifier];

                            v33 = DSLog_4;
                            v34 = os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO);
                            if (v32)
                            {
                              if (v34)
                              {
                                *buf = 138412802;
                                v73 = v52;
                                v74 = 2112;
                                v75 = v28;
                                v76 = 2112;
                                v77 = v32;
                                _os_log_impl(&dword_248C40000, v33, OS_LOG_TYPE_INFO, "Adding a shared resource from %@ for contact %@ to person %@", buf, 0x20u);
                              }

                              [v32 addSource:v52 sharedResource:v51 participant:v22 deviceOwnerRole:v50];
                            }

                            else
                            {
                              if (v34)
                              {
                                *buf = 138412290;
                                v73 = v28;
                                _os_log_impl(&dword_248C40000, v33, OS_LOG_TYPE_INFO, "Creating new sharing person for %@", buf, 0xCu);
                              }

                              v35 = [[DSXPCSharingPerson alloc] initWithSource:v52 sharedResource:v51 participant:v22 deviceOwnerRole:v50 contact:v28];
                              identifier2 = [v28 identifier];
                              [dictionary setObject:v35 forKey:identifier2];
                            }

                            goto LABEL_38;
                          }
                        }

                        v25 = [v23 countByEnumeratingWithState:&v56 objects:v78 count:16];
                        if (v25)
                        {
                          continue;
                        }

                        break;
                      }
                    }

LABEL_38:
                  }

                  v20 = [participants countByEnumeratingWithState:&v60 objects:v79 count:16];
                }

                while (v20);
              }

              v17 = v48 + 1;
            }

            while (v48 + 1 != v47);
            v47 = [v44 countByEnumeratingWithState:&v64 objects:v80 count:16];
          }

          while (v47);
        }

        v13 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
    }

    while (v42);
  }

  allValues = [dictionary allValues];
  dispatch_group_leave(selfCopy[2]);

  return allValues;
}

- (id)sharingPeopleForIdentities:(id)identities
{
  v41 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  dispatch_group_enter(self->_dispatchGroup);
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  allPeople = [(DSXPCSharingPermissions *)self allPeople];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = identitiesCopy;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = allPeople;
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
LABEL_8:
          v15 = 0;
          while (1)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v27 + 1) + 8 * v15);
            if ([v16 isIdentity:v10])
            {
              break;
            }

            if (v13 == ++v15)
            {
              v13 = [v11 countByEnumeratingWithState:&v27 objects:v39 count:16];
              if (v13)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v17 = DSLog_4;
          if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v36 = v16;
            v37 = 2112;
            v38 = v10;
            _os_log_impl(&dword_248C40000, v17, OS_LOG_TYPE_INFO, "Found sharing person %@ matching %@", buf, 0x16u);
          }

          v18 = v16;
          displayName = [v10 displayName];
          v20 = [displayName length];

          if (v20)
          {
            displayName2 = [v10 displayName];
            [v18 addName:displayName2];
          }

          if (v18)
          {
            [array addObject:v18];

            continue;
          }
        }

        else
        {
LABEL_14:
        }

        v22 = DSLog_4;
        if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v36 = v10;
          _os_log_impl(&dword_248C40000, v22, OS_LOG_TYPE_INFO, "No sharing person found in model matching %@", buf, 0xCu);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v7);
  }

  dispatch_group_leave(selfCopy->_dispatchGroup);

  return array;
}

- (int64_t)deviceOwnerRoleForSharedResource:(id)resource
{
  v59 = *MEMORY[0x277D85DE8];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  participants = [resource participants];
  v50 = [participants countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (!v50)
  {

    return 1;
  }

  v48 = 0;
  v47 = 0;
  v49 = *v53;
  *&v4 = 138477827;
  v45 = v4;
  obj = participants;
  do
  {
    for (i = 0; i != v50; ++i)
    {
      if (*v53 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v52 + 1) + 8 * i);
      identity = [v6 identity];
      unifiedContactIdentifier = [identity unifiedContactIdentifier];
      if (![unifiedContactIdentifier length])
      {

LABEL_11:
        v15 = 0;
        goto LABEL_12;
      }

      v9 = [(DSXPCSharingPermissions *)self me];
      meCardIdentifier = [v9 meCardIdentifier];
      identity2 = [v6 identity];
      unifiedContactIdentifier2 = [identity2 unifiedContactIdentifier];
      v13 = [meCardIdentifier isEqualToString:unifiedContactIdentifier2];

      if (!v13)
      {
        goto LABEL_11;
      }

      v14 = DSLog_4;
      v15 = 1;
      if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
      {
        v16 = v14;
        identity3 = [v6 identity];
        unifiedContactIdentifier3 = [identity3 unifiedContactIdentifier];
        *buf = v45;
        v57 = unifiedContactIdentifier3;
        _os_log_impl(&dword_248C40000, v16, OS_LOG_TYPE_INFO, "%{private}@ is the me card", buf, 0xCu);
      }

LABEL_12:
      identity4 = [v6 identity];
      emailAddress = [identity4 emailAddress];
      if ([emailAddress length])
      {
        v21 = [(DSXPCSharingPermissions *)self me];
        emails = [v21 emails];
        identity5 = [v6 identity];
        emailAddress2 = [identity5 emailAddress];
        v25 = [emails containsObject:emailAddress2];

        if (v25)
        {
          v26 = DSLog_4;
          v15 = 1;
          if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
          {
            v27 = v26;
            identity6 = [v6 identity];
            emailAddress3 = [identity6 emailAddress];
            *buf = v45;
            v57 = emailAddress3;
            _os_log_impl(&dword_248C40000, v27, OS_LOG_TYPE_INFO, "%{private}@ is the me card", buf, 0xCu);
          }
        }
      }

      else
      {
      }

      identity7 = [v6 identity];
      phoneNumber = [identity7 phoneNumber];
      if ([phoneNumber length])
      {
        v32 = [(DSXPCSharingPermissions *)self me];
        phoneNumbers = [v32 phoneNumbers];
        identity8 = [v6 identity];
        phoneNumber2 = [identity8 phoneNumber];
        v36 = [phoneNumbers containsObject:phoneNumber2];

        if (v36)
        {
          v37 = DSLog_4;
          if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
          {
            v38 = v37;
            identity9 = [v6 identity];
            phoneNumber3 = [identity9 phoneNumber];
            *buf = v45;
            v57 = phoneNumber3;
            _os_log_impl(&dword_248C40000, v38, OS_LOG_TYPE_INFO, "%{private}@ is the me card", buf, 0xCu);
          }

          goto LABEL_23;
        }
      }

      else
      {
      }

      if (!v15)
      {
        v48 |= [v6 role] == 1;
        continue;
      }

LABEL_23:
      role = [v6 role];
      if (role == 2)
      {
        v42 = 1;
        if (v47 != 1)
        {
          v42 = 2;
        }
      }

      else
      {
        if (role != 1)
        {
          continue;
        }

        v42 = 1;
      }

      v47 = v42;
    }

    v50 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  }

  while (v50);

  v43 = 1;
  if (v48)
  {
    v43 = 2;
  }

  result = v47;
  if (!v47)
  {
    return v43;
  }

  return result;
}

- (void)addSharingPerson:(id)person participant:(id)participant forSource:(id)source sharedResource:(id)resource deviceOwnerRole:(int64_t)role
{
  personCopy = person;
  participantCopy = participant;
  sourceCopy = source;
  resourceCopy = resource;
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __97__DSXPCSharingPermissions_addSharingPerson_participant_forSource_sharedResource_deviceOwnerRole___block_invoke;
  v25[3] = &unk_278F72C40;
  objc_copyWeak(v31, &location);
  v16 = personCopy;
  v26 = v16;
  selfCopy = self;
  v17 = participantCopy;
  v28 = v17;
  v18 = sourceCopy;
  v29 = v18;
  v19 = resourceCopy;
  v30 = v19;
  v31[1] = role;
  v20 = MEMORY[0x24C1E7EB0](v25);
  v21 = [(DSXPCSharingPermissions *)self me];

  if (v21)
  {
    v20[2](v20);
  }

  else
  {
    queue = self->_queue;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __97__DSXPCSharingPermissions_addSharingPerson_participant_forSource_sharedResource_deviceOwnerRole___block_invoke_32;
    v23[3] = &unk_278F726C8;
    v23[4] = self;
    v24 = v20;
    dispatch_async(queue, v23);
  }

  objc_destroyWeak(v31);
  objc_destroyWeak(&location);
}

void __97__DSXPCSharingPermissions_addSharingPerson_participant_forSource_sharedResource_deviceOwnerRole___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) me];
  LODWORD(v3) = [v3 isMe:v4];

  if (v3)
  {
    v5 = DSLog_4;
    if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v21 = 138478083;
      v22 = v6;
      v23 = 2114;
      v24 = v7;
      v8 = "Skipping participant %{private}@ for source %{public}@ because they match the me card";
LABEL_9:
      _os_log_impl(&dword_248C40000, v5, OS_LOG_TYPE_DEFAULT, v8, &v21, 0x16u);
    }
  }

  else
  {
    v9 = [*(a1 + 32) displayName];

    if (v9)
    {
      os_unfair_lock_lock(WeakRetained + 6);
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) people];
      v12 = [v11 indexOfObject:*(a1 + 32)];

      v13 = [*(a1 + 40) people];
      v14 = v13;
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v13 addObject:v10];

        v15 = v10;
      }

      else
      {
        v15 = [v13 objectAtIndexedSubscript:v12];

        [v15 addSource:*(a1 + 56) sharedResource:*(a1 + 64) participant:*(a1 + 48) deviceOwnerRole:*(a1 + 80)];
        v18 = DSLog_4;
        if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
        {
          v19 = *(a1 + 48);
          v20 = *(a1 + 56);
          v21 = 138478339;
          v22 = v19;
          v23 = 2114;
          v24 = v15;
          v25 = 2114;
          v26 = v20;
          _os_log_impl(&dword_248C40000, v18, OS_LOG_TYPE_INFO, "Adding participant %{private}@ to existing person %{public}@ for source %{public}@", &v21, 0x20u);
        }
      }

      os_unfair_lock_unlock(WeakRetained + 6);
    }

    else
    {
      v5 = DSLog_4;
      if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 48);
        v17 = *(a1 + 56);
        v21 = 138478083;
        v22 = v16;
        v23 = 2114;
        v24 = v17;
        v8 = "Skipping participant %{private}@ for source %{public}@ because they do not have a display name";
        goto LABEL_9;
      }
    }
  }
}

void __97__DSXPCSharingPermissions_addSharingPerson_participant_forSource_sharedResource_deviceOwnerRole___block_invoke_32(uint64_t a1)
{
  v2 = [*(a1 + 32) me];

  if (v2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_FAULT))
  {
    __97__DSXPCSharingPermissions_addSharingPerson_participant_forSource_sharedResource_deviceOwnerRole___block_invoke_32_cold_1();
  }
}

- (void)stopAllSharingWithPerson:(id)person completion:(id)completion
{
  completionCopy = completion;
  personCopy = person;
  sourceNames = [personCopy sourceNames];
  [(DSXPCSharingPermissions *)self stopSharingSources:sourceNames withPerson:personCopy completion:completionCopy];
}

- (void)stopSharingSources:(id)sources withPerson:(id)person completion:(id)completion
{
  sourcesCopy = sources;
  personCopy = person;
  completionCopy = completion;
  v11 = DSLog_4;
  if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248C40000, v11, OS_LOG_TYPE_INFO, "stopSharingSources:withPerson:", buf, 2u);
  }

  xpcConnection = [(DSXPCSharingPermissions *)self xpcConnection];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__DSXPCSharingPermissions_stopSharingSources_withPerson_completion___block_invoke;
  v23[3] = &unk_278F72EA0;
  v13 = completionCopy;
  v24 = v13;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v23];

  if (v14)
  {
    v15 = [personCopy participationForSources:sourcesCopy];
    v16 = os_signpost_id_generate(DSLog_4);
    v17 = DSLog_4;
    v18 = v17;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "stop", " enableTelemetry=YES ", buf, 2u);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __68__DSXPCSharingPermissions_stopSharingSources_withPerson_completion___block_invoke_33;
    v20[3] = &unk_278F72EF0;
    v22 = v16;
    v20[4] = self;
    v21 = v13;
    [v14 stopSharingWithParticipants:v15 completion:v20];
  }

  else
  {
    v19 = DSLog_4;
    if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248C40000, v19, OS_LOG_TYPE_INFO, "XPC connection failed, completion should be called in proxy error handler", buf, 2u);
    }
  }
}

void __68__DSXPCSharingPermissions_stopSharingSources_withPerson_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_ERROR))
  {
    __55__DSXPCSharingPermissions__fetchSharingWithCompletion___block_invoke_24_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __68__DSXPCSharingPermissions_stopSharingSources_withPerson_completion___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DSLog_4;
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_248C40000, v5, OS_SIGNPOST_INTERVAL_END, v6, "stop", " enableTelemetry=YES ", v7, 2u);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) requestImmediateFetch];
}

+ (id)interface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285BAD1E8];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 setWithObjects:{v4, v5, v6, objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_fetchSharedResourcesWithCompletion_ argumentIndex:0 ofReply:1];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_stopSharingWithParticipants_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)connectXPC
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.safetycheckd" options:0];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v3;

  interface = [objc_opt_class() interface];
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:interface];

  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&__block_literal_global_91];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __37__DSXPCSharingPermissions_connectXPC__block_invoke_92;
  v9 = &unk_278F72F18;
  objc_copyWeak(&v10, &location);
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:&v6];
  [(NSXPCConnection *)self->_xpcConnection resume:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __37__DSXPCSharingPermissions_connectXPC__block_invoke()
{
  if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_ERROR))
  {
    __37__DSXPCSharingPermissions_connectXPC__block_invoke_cold_1();
  }
}

void __37__DSXPCSharingPermissions_connectXPC__block_invoke_92(uint64_t a1)
{
  if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_ERROR))
  {
    __37__DSXPCSharingPermissions_connectXPC__block_invoke_92_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained disconnect];
}

- (void)disconnect
{
  v3 = DSLog_4;
  if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_248C40000, v3, OS_LOG_TYPE_INFO, "Disconnecting xpc", v5, 2u);
  }

  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

- (void)setDSMe:(id)me
{
  meCopy = me;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__DSXPCSharingPermissions_setDSMe___block_invoke;
  v7[3] = &unk_278F72F40;
  v7[4] = self;
  v8 = meCopy;
  v6 = meCopy;
  dispatch_async(queue, v7);
}

- (void)isFetchNeeded
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  v3 = 2050;
  v4 = v0;
  _os_log_fault_impl(&dword_248C40000, v1, OS_LOG_TYPE_FAULT, "mach_continuous_time walked backwards (now: %{public}llu, then: %{public}llu)", v2, 0x16u);
}

- (void)_fetchSharingWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__DSXPCSharingPermissions__fetchSharingWithCompletion___block_invoke_24_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)makeSharingPeopleWithResources:(void *)a1 .cold.1(void *a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 count];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248C40000, v3, OS_LOG_TYPE_ERROR, "Can't make sharing people-- found %ld sources but no identities", v4, 0xCu);
}

- (void)sharingPeopleForContacts:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = 138412802;
  v7 = a1;
  v8 = 2048;
  v9 = [a1 count];
  v10 = 2048;
  v11 = [a3 count];
  _os_log_error_impl(&dword_248C40000, v5, OS_LOG_TYPE_ERROR, "Error fetching full contacts for %@ -- expected %ld but got back %ld", &v6, 0x20u);
}

void __37__DSXPCSharingPermissions_connectXPC__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __37__DSXPCSharingPermissions_connectXPC__block_invoke_92_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end