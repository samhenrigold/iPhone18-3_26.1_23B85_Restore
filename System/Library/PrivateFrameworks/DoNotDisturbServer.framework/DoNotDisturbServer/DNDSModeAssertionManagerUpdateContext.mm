@interface DNDSModeAssertionManagerUpdateContext
- (DNDSModeAssertionManagerUpdateContext)initWithStore:(id)store clientDetailsProvider:(id)provider;
- (id)_calculateUpdateResultForStore:(id)store previousStore:(id)previousStore;
- (id)invalidateAssertionsForRequest:(id)request;
- (id)modeAssertionInvalidationsMatchingPredicate:(id)predicate;
- (id)modeAssertionsMatchingPredicate:(id)predicate;
- (id)takeAssertionWithDetails:(id)details source:(id)source startDate:(id)date;
- (id)takeAssertionWithUUID:(id)d details:(id)details source:(id)source startDate:(id)date;
- (void)_cleanupStore:(id)store;
- (void)_resolveStore:(id)store;
@end

@implementation DNDSModeAssertionManagerUpdateContext

- (DNDSModeAssertionManagerUpdateContext)initWithStore:(id)store clientDetailsProvider:(id)provider
{
  storeCopy = store;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = DNDSModeAssertionManagerUpdateContext;
  v8 = [(DNDSModeAssertionManagerUpdateContext *)&v14 init];
  if (v8)
  {
    v9 = [storeCopy copy];
    store = v8->_store;
    v8->_store = v9;

    objc_storeStrong(&v8->_clientDetailsProvider, provider);
    v11 = +[DNDSModeAssertionUpdateResult emptyResult];
    updateResult = v8->_updateResult;
    v8->_updateResult = v11;
  }

  return v8;
}

- (id)takeAssertionWithUUID:(id)d details:(id)details source:(id)source startDate:(id)date
{
  v52 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  dateCopy = date;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  detailsCopy = details;
  dCopy = d;
  v14 = _os_activity_create(&dword_24912E000, "com.apple.donotdisturb.ModeAssertionManagerUpdateContext.takeAssertion", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v14, &state);
  v15 = [(DNDSModeAssertionStore *)self->_store mutableCopy];
  clientDetailsProvider = self->_clientDetailsProvider;
  clientIdentifier = [sourceCopy clientIdentifier];
  v46 = [(DNDSClientDetailsProvider *)clientDetailsProvider clientDetailsForIdentifier:clientIdentifier];

  v18 = [objc_alloc(MEMORY[0x277D05938]) initWithUUID:dCopy startDate:dateCopy details:detailsCopy source:sourceCopy];
  assertions = [v15 assertions];
  invalidations = [v15 invalidations];
  v21 = [assertions containsObject:v18];
  if (v21)
  {
    v22 = DNDSLogAssertionManager;
    if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v18;
      _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "Assertion already exists in store; assertion=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __88__DNDSModeAssertionManagerUpdateContext_takeAssertionWithUUID_details_source_startDate___block_invoke;
    v47[3] = &unk_278F8A950;
    v45 = &v48;
    v23 = v18;
    v48 = v23;
    if (([invalidations bs_containsObjectPassingTest:v47] & 1) == 0)
    {
      v27 = [assertions arrayByAddingObject:v23];

      v44 = v27;
      [v15 setAssertions:v27];
      v28 = DNDSLogAssertionManager;
      if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v23;
        _os_log_impl(&dword_24912E000, v28, OS_LOG_TYPE_DEFAULT, "Inserted new assertion into store; assertion=%{public}@", buf, 0xCu);
      }

      if ([v46 isUserInteractionClient])
      {
        v29 = +[DNDSModeAssertionInvalidationPredicate predicateForAnyAssertion];
        v30 = 2;
      }

      else
      {
        identifiers = [v46 identifiers];
        v29 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionClientIdentifiers:identifiers];

        v30 = 4;
      }

      v43 = v29;
      v32 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v29 requestDate:dateCopy source:sourceCopy reason:v30];
      invalidationRequests = [v15 invalidationRequests];
      v34 = [invalidationRequests arrayByAddingObject:v32];

      [v15 setInvalidationRequests:v34];
      v35 = DNDSLogAssertionManager;
      if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v32;
        _os_log_impl(&dword_24912E000, v35, OS_LOG_TYPE_DEFAULT, "Inserted new invalidation request into store; invalidationRequest=%{public}@", buf, 0xCu);
      }

      date = [MEMORY[0x277CBEAA8] date];
      [v15 sanitizeDatesForThreshold:date];

      [(DNDSModeAssertionManagerUpdateContext *)self _resolveStore:v15];
      [(DNDSModeAssertionManagerUpdateContext *)self _cleanupStore:v15];
      v37 = [(DNDSModeAssertionManagerUpdateContext *)self _calculateUpdateResultForStore:v15 previousStore:self->_store];
      v38 = [(DNDSModeAssertionUpdateResult *)self->_updateResult resultCombiningWithResult:v37];
      updateResult = self->_updateResult;
      self->_updateResult = v38;

      v40 = [v15 copy];
      store = self->_store;
      self->_store = v40;

      os_activity_scope_leave(&state);
      v26 = v37;
      assertions = v44;
      goto LABEL_17;
    }

    v24 = DNDSLogAssertionManager;
    if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v23;
      _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Assertion was already invalidated; assertion=%{public}@", buf, 0xCu);
    }
  }

  v25 = +[DNDSModeAssertionUpdateResult emptyResult];
  os_activity_scope_leave(&state);
  v26 = v25;
  if ((v21 & 1) == 0)
  {
LABEL_17:
  }

  return v26;
}

uint64_t __88__DNDSModeAssertionManagerUpdateContext_takeAssertionWithUUID_details_source_startDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 assertion];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)modeAssertionsMatchingPredicate:(id)predicate
{
  v14 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  assertions = [(DNDSModeAssertionStore *)self->_store assertions];
  v6 = [assertions filteredArrayUsingPredicate:predicateCopy];

  v7 = DNDSLogAssertionManager;
  if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v10 = 134218242;
    v11 = [v6 count];
    v12 = 2114;
    v13 = predicateCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Found %lu assertion(s) for predicate: predicate=%{public}@", &v10, 0x16u);
  }

  return v6;
}

- (id)modeAssertionInvalidationsMatchingPredicate:(id)predicate
{
  v14 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  invalidations = [(DNDSModeAssertionStore *)self->_store invalidations];
  v6 = [invalidations filteredArrayUsingPredicate:predicateCopy];

  v7 = DNDSLogAssertionManager;
  if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v10 = 134218242;
    v11 = [v6 count];
    v12 = 2114;
    v13 = predicateCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Found %lu assertion invalidation(s) for predicate: predicate=%{public}@", &v10, 0x16u);
  }

  return v6;
}

- (id)takeAssertionWithDetails:(id)details source:(id)source startDate:(id)date
{
  v8 = MEMORY[0x277CCAD78];
  dateCopy = date;
  sourceCopy = source;
  detailsCopy = details;
  uUID = [v8 UUID];
  v13 = [(DNDSModeAssertionManagerUpdateContext *)self takeAssertionWithUUID:uUID details:detailsCopy source:sourceCopy startDate:dateCopy];

  return v13;
}

- (id)invalidateAssertionsForRequest:(id)request
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  v5 = _os_activity_create(&dword_24912E000, "com.apple.donotdisturb.ModeAssertionManagerUpdateContext.invalidateAssertions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &v17);
  v6 = [(DNDSModeAssertionStore *)self->_store mutableCopy:v17.opaque[0]];
  invalidationRequests = [v6 invalidationRequests];
  v8 = [invalidationRequests arrayByAddingObject:requestCopy];

  [v6 setInvalidationRequests:v8];
  v9 = DNDSLogAssertionManager;
  if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = requestCopy;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Inserted new invalidation request into store; request=%{public}@", buf, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [v6 sanitizeDatesForThreshold:date];

  [(DNDSModeAssertionManagerUpdateContext *)self _resolveStore:v6];
  [(DNDSModeAssertionManagerUpdateContext *)self _cleanupStore:v6];
  v11 = [(DNDSModeAssertionManagerUpdateContext *)self _calculateUpdateResultForStore:v6 previousStore:self->_store];
  v12 = [(DNDSModeAssertionUpdateResult *)self->_updateResult resultCombiningWithResult:v11];
  updateResult = self->_updateResult;
  self->_updateResult = v12;

  v14 = [v6 copy];
  store = self->_store;
  self->_store = v14;

  os_activity_scope_leave(&v17);

  return v11;
}

- (void)_resolveStore:(id)store
{
  v40 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  assertions = [storeCopy assertions];
  invalidations = [storeCopy invalidations];
  v25 = storeCopy;
  invalidationRequests = [storeCopy invalidationRequests];
  v7 = [assertions sortedArrayUsingComparator:&__block_literal_global_8];

  v29 = [invalidationRequests sortedArrayUsingComparator:&__block_literal_global_9];

  array = [MEMORY[0x277CBEB18] array];
  v24 = invalidations;
  v8 = [invalidations mutableCopy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v28 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __55__DNDSModeAssertionManagerUpdateContext__resolveStore___block_invoke_3;
        v30[3] = &unk_278F8A9B8;
        v30[4] = v12;
        v13 = [v29 bs_firstObjectPassingTest:v30];
        if (v13)
        {
          v14 = objc_alloc(MEMORY[0x277D05968]);
          requestDate = [v13 requestDate];
          details = [v13 details];
          source = [v13 source];
          v18 = [v14 initWithAssertion:v12 invalidationDate:requestDate details:details source:source reason:objc_msgSend(v13 reasonOverride:{"reason"), objc_msgSend(v13, "reasonOverride")}];

          if ([v8 containsObject:v18])
          {
            v19 = DNDSLogAssertionManager;
            if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v36 = v18;
              v37 = 2114;
              v38 = v13;
              v20 = v19;
              v21 = "Assertion already invalidated, skipping work; invalidation=%{public}@, invalidationRequest=%{public}@";
              goto LABEL_14;
            }
          }

          else
          {
            [v8 addObject:v18];
            v23 = DNDSLogAssertionManager;
            if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v36 = v18;
              v37 = 2114;
              v38 = v13;
              v20 = v23;
              v21 = "Assertion invalidated; invalidation=%{public}@, invalidationRequest=%{public}@";
LABEL_14:
              _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0x16u);
            }
          }

          goto LABEL_16;
        }

        [array addObject:v12];
        v22 = DNDSLogAssertionManager;
        if (os_log_type_enabled(DNDSLogAssertionManager, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v36 = v12;
          _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_INFO, "Assertion preserved; assertion=%{public}@", buf, 0xCu);
        }

LABEL_16:
      }

      v10 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v10);
  }

  [v8 sortUsingComparator:&__block_literal_global_18];
  [v25 setAssertions:array];
  [v25 setInvalidations:v8];
  [v25 setInvalidationRequests:v29];
}

uint64_t __55__DNDSModeAssertionManagerUpdateContext__resolveStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __55__DNDSModeAssertionManagerUpdateContext__resolveStore___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 requestDate];
  v6 = [v4 requestDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __55__DNDSModeAssertionManagerUpdateContext__resolveStore___block_invoke_3(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 requestDate];
  v5 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionsTakenBeforeDate:v4];

  v6 = MEMORY[0x277CCA920];
  v12[0] = v5;
  v7 = [v3 predicate];

  v12[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v6 andPredicateWithSubpredicates:v8];

  v10 = [v9 evaluateWithObject:*(a1 + 32)];
  return v10;
}

uint64_t __55__DNDSModeAssertionManagerUpdateContext__resolveStore___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 invalidationDate];
  v6 = [v4 invalidationDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_cleanupStore:(id)store
{
  v136 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v4 = MEMORY[0x277CBEB70];
  assertions = [storeCopy assertions];
  v6 = [v4 orderedSetWithArray:assertions];

  v86 = v6;
  array = [v6 array];
  [storeCopy setAssertions:array];

  v97 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v87 = storeCopy;
  invalidations = [storeCopy invalidations];
  v9 = [invalidations countByEnumeratingWithState:&v125 objects:v135 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v126;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v126 != v11)
        {
          objc_enumerationMutation(invalidations);
        }

        v13 = *(*(&v125 + 1) + 8 * i);
        assertion = [v13 assertion];
        source = [assertion source];
        clientIdentifier = [source clientIdentifier];

        assertion2 = [v13 assertion];
        source2 = [assertion2 source];
        deviceIdentifier = [source2 deviceIdentifier];
        v20 = deviceIdentifier;
        v21 = @"default.device";
        if (deviceIdentifier)
        {
          v21 = deviceIdentifier;
        }

        v22 = v21;

        v23 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider clientDetailsForIdentifier:clientIdentifier];
        v24 = [v97 objectForKey:v23];
        if (!v24)
        {
          v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        [v24 setObject:v13 forKey:v22];
        if ([v24 count] >= 3)
        {
          v25 = [v24 keysSortedByValueUsingComparator:&__block_literal_global_23];
          firstObject = [v25 firstObject];
          [v24 removeObjectForKey:firstObject];
        }

        [v97 setObject:v24 forKey:clientIdentifier];
      }

      v10 = [invalidations countByEnumeratingWithState:&v125 objects:v135 count:16];
    }

    while (v10);
  }

  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  allValues = [v97 allValues];
  v29 = [allValues countByEnumeratingWithState:&v121 objects:v134 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v122;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v122 != v31)
        {
          objc_enumerationMutation(allValues);
        }

        allValues2 = [*(*(&v121 + 1) + 8 * j) allValues];
        [v27 addObjectsFromArray:allValues2];
      }

      v30 = [allValues countByEnumeratingWithState:&v121 objects:v134 count:16];
    }

    while (v30);
  }

  [v27 sortUsingComparator:&__block_literal_global_25_0];
  [v87 setInvalidations:v27];
  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = [v87 invalidationRequests];
  v36 = [obj countByEnumeratingWithState:&v117 objects:v133 count:16];
  v98 = v34;
  if (v36)
  {
    v37 = v36;
    v38 = 0;
    v39 = *v118;
    v88 = v35;
    v89 = v27;
    v91 = *v118;
    do
    {
      v40 = 0;
      v94 = v37;
      do
      {
        if (*v118 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v96 = v40;
        v41 = *(*(&v117 + 1) + 8 * v40);
        predicate = [v41 predicate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v44 = v41;

          [v34 removeAllObjects];
          [v35 removeAllObjects];
          v38 = v44;
        }

        else
        {
          predicate2 = [v41 predicate];
          objc_opt_class();
          v46 = objc_opt_isKindOfClass();

          predicate3 = [v41 predicate];
          v48 = predicate3;
          if (v46)
          {
            v92 = v38;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v90 = predicate3;
            clientIdentifiers = [predicate3 clientIdentifiers];
            v49 = [clientIdentifiers countByEnumeratingWithState:&v113 objects:v132 count:16];
            if (v49)
            {
              v50 = v49;
              v51 = *v114;
              do
              {
                for (k = 0; k != v50; ++k)
                {
                  if (*v114 != v51)
                  {
                    objc_enumerationMutation(clientIdentifiers);
                  }

                  v53 = *(*(&v113 + 1) + 8 * k);
                  v54 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider clientDetailsForIdentifier:v53];
                  source3 = [v41 source];
                  deviceIdentifier2 = [source3 deviceIdentifier];
                  v57 = deviceIdentifier2;
                  v58 = @"default.device";
                  if (deviceIdentifier2)
                  {
                    v58 = deviceIdentifier2;
                  }

                  v59 = v58;

                  v60 = [v34 objectForKey:v54];
                  if (!v60)
                  {
                    v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  }

                  [v60 setObject:v41 forKey:v59];
                  if ([v60 count] >= 3)
                  {
                    v61 = [v60 keysSortedByValueUsingComparator:&__block_literal_global_29];
                    firstObject2 = [v61 firstObject];
                    [v60 removeObjectForKey:firstObject2];

                    v34 = v98;
                  }

                  [v34 setObject:v60 forKey:v53];
                }

                v50 = [clientIdentifiers countByEnumeratingWithState:&v113 objects:v132 count:16];
              }

              while (v50);
            }

            v35 = v88;
            v27 = v89;
            v38 = v92;
          }

          else
          {
            objc_opt_class();
            objc_opt_isKindOfClass();

            predicate4 = [v41 predicate];
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v112 = 0u;
            uUIDs = [predicate4 UUIDs];
            v65 = [uUIDs countByEnumeratingWithState:&v109 objects:v131 count:16];
            if (v65)
            {
              v66 = v65;
              v67 = *v110;
              do
              {
                for (m = 0; m != v66; ++m)
                {
                  if (*v110 != v67)
                  {
                    objc_enumerationMutation(uUIDs);
                  }

                  [v35 setObject:v41 forKey:*(*(&v109 + 1) + 8 * m)];
                }

                v66 = [uUIDs countByEnumeratingWithState:&v109 objects:v131 count:16];
              }

              while (v66);
            }
          }

          v39 = v91;
          v37 = v94;
        }

        v40 = v96 + 1;
      }

      while (v96 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v117 objects:v133 count:16];
    }

    while (v37);
  }

  else
  {
    v38 = 0;
  }

  v69 = [MEMORY[0x277CBEB58] set];
  [v69 bs_safeAddObject:v38];
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  allValues3 = [v34 allValues];
  v71 = [allValues3 countByEnumeratingWithState:&v105 objects:v130 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v106;
    do
    {
      for (n = 0; n != v72; ++n)
      {
        if (*v106 != v73)
        {
          objc_enumerationMutation(allValues3);
        }

        allValues4 = [*(*(&v105 + 1) + 8 * n) allValues];
        [v69 addObjectsFromArray:allValues4];
      }

      v72 = [allValues3 countByEnumeratingWithState:&v105 objects:v130 count:16];
    }

    while (v72);
  }

  v93 = v38;

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  invalidations2 = [v87 invalidations];
  v77 = [invalidations2 countByEnumeratingWithState:&v101 objects:v129 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v102;
    do
    {
      for (ii = 0; ii != v78; ++ii)
      {
        if (*v102 != v79)
        {
          objc_enumerationMutation(invalidations2);
        }

        assertion3 = [*(*(&v101 + 1) + 8 * ii) assertion];
        uUID = [assertion3 UUID];
        v83 = [v35 objectForKey:uUID];

        [v69 bs_safeAddObject:v83];
      }

      v78 = [invalidations2 countByEnumeratingWithState:&v101 objects:v129 count:16];
    }

    while (v78);
  }

  allObjects = [v69 allObjects];
  v85 = [allObjects sortedArrayUsingComparator:&__block_literal_global_33_0];

  [v87 setInvalidationRequests:v85];
}

uint64_t __55__DNDSModeAssertionManagerUpdateContext__cleanupStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 invalidationDate];
  v6 = [v4 invalidationDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __55__DNDSModeAssertionManagerUpdateContext__cleanupStore___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 invalidationDate];
  v6 = [v4 invalidationDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __55__DNDSModeAssertionManagerUpdateContext__cleanupStore___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 requestDate];
  v6 = [v4 requestDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __55__DNDSModeAssertionManagerUpdateContext__cleanupStore___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 requestDate];
  v6 = [v4 requestDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_calculateUpdateResultForStore:(id)store previousStore:(id)previousStore
{
  previousStoreCopy = previousStore;
  storeCopy = store;
  assertions = [storeCopy assertions];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__DNDSModeAssertionManagerUpdateContext__calculateUpdateResultForStore_previousStore___block_invoke;
  v21[3] = &unk_278F8A0B0;
  v8 = previousStoreCopy;
  v22 = v8;
  v9 = [assertions bs_filter:v21];

  invalidations = [storeCopy invalidations];

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __86__DNDSModeAssertionManagerUpdateContext__calculateUpdateResultForStore_previousStore___block_invoke_2;
  v19 = &unk_278F8A950;
  v20 = v8;
  v11 = v8;
  v12 = [invalidations bs_filter:&v16];

  v13 = [DNDSModeAssertionUpdateResult alloc];
  v14 = [(DNDSModeAssertionUpdateResult *)v13 initWithAssertions:v9 invalidations:v12, v16, v17, v18, v19];

  return v14;
}

uint64_t __86__DNDSModeAssertionManagerUpdateContext__calculateUpdateResultForStore_previousStore___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 assertions];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

uint64_t __86__DNDSModeAssertionManagerUpdateContext__calculateUpdateResultForStore_previousStore___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 invalidations];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

@end