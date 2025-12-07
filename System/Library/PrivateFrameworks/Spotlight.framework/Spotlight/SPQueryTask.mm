@interface SPQueryTask
+ (void)initialize;
- (SPQueryTask)init;
- (SPQueryTaskDelegate)delegate;
- (unint64_t)queryIdForFeedback;
- (void)disableUpdates;
- (void)enableUpdates;
- (void)postSearchAgentUpdatedResultsToDelegate:(id)delegate;
- (void)pushAndPostUpdates;
- (void)updateResultsThroughDelegate:(BOOL)delegate state:(unint64_t)state unchanged:(BOOL)unchanged sections:(id)sections;
@end

@implementation SPQueryTask

+ (void)initialize
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.searchd"];
  v3 = sUserDefaults;
  sUserDefaults = v2;

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("query queue", v6);
  v5 = sQueryQueue_0;
  sQueryQueue_0 = v4;
}

- (SPQueryTask)init
{
  v12.receiver = self;
  v12.super_class = SPQueryTask;
  v2 = [(SPQueryTask *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("query results", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = _os_feature_enabled_impl();
    v2->_clientRankAndBlend = v6;
    if (v6)
    {
      v7 = sQueryQueue_0;
      queryProcessor = v2->_queryProcessor;
      v2->_queryProcessor = v7;
    }

    else
    {
      queryProcessor = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create("query processor", queryProcessor);
      v10 = v2->_queryProcessor;
      v2->_queryProcessor = v9;
    }
  }

  return v2;
}

- (unint64_t)queryIdForFeedback
{
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  queryIdent = [queryContext queryIdent];

  return queryIdent;
}

- (SPQueryTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pushAndPostUpdates
{
  selfCopy = self;
  v84 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!atomic_load(&selfCopy->_updatesDisabled))
  {
    do
    {
      v11 = atomic_load(&selfCopy->_deferredUpdate);
      v12 = v11;
      atomic_compare_exchange_strong(&selfCopy->_deferredUpdate, &v12, 0);
    }

    while (v12 != v11);
    if (!v11)
    {
      v4 = SPLogForSPLogCategoryDefault();
      v55 = *MEMORY[0x277D4BF50];
      if (!os_log_type_enabled(&v4->super, ((*MEMORY[0x277D4BF50] & 1) == 0)))
      {
        goto LABEL_56;
      }

      *buf = 0;
      v7 = "pushAndPostUpdates - nothing to post";
      v8 = (v55 & 1) == 0;
      p_super = &v4->super;
      v10 = 2;
      goto LABEL_4;
    }

    v4 = [[SPQueryResponse alloc] initWithTask:selfCopy];
    v13 = v11[1];
    if (v13)
    {
      sections = selfCopy->_sections;
      selfCopy->_sections = v13;
    }

    if (*v11)
    {
      sessionEntityString = selfCopy->_sessionEntityString;
      selfCopy->_sessionEntityString = *v11;
    }

    v16 = [(NSArray *)selfCopy->_sections copy];
    [(SPQueryResponse *)v4 setResultSections:v16];

    [(SPQueryResponse *)v4 setSessionEntityString:selfCopy->_sessionEntityString];
    query = [(SPQueryTask *)selfCopy query];
    queryContext = [query queryContext];
    queryUnderstandingOutput = [queryContext queryUnderstandingOutput];

    if (!queryUnderstandingOutput)
    {
LABEL_46:
      v56 = v11[3];
      [(SPQueryResponse *)v4 setState:v56, v63];
      selfCopy->_state = v56;
      v57 = *(v11 + 16);
      v58 = SPLogForSPLogCategoryDefault();
      v59 = *MEMORY[0x277D4BF50];
      v60 = os_log_type_enabled(v58, ((*MEMORY[0x277D4BF50] & 1) == 0));
      if (v57 == 1)
      {
        if (v60)
        {
          *buf = 0;
          _os_log_impl(&dword_26B71B000, v58, ((v59 & 1) == 0), "Post clear", buf, 2u);
        }

        WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
        [WeakRetained resultsDidBecomeInvalid:selfCopy];
        mEMORY[0x277CC3468] = [MEMORY[0x277CC3468] sharedInstance];
        [mEMORY[0x277CC3468] logWithBundleID:@"com.apple.SpotlightUI" indexOperation:4 itemCount:1 reason:@"UserInput"];
      }

      else
      {
        if (v60)
        {
          *buf = 0;
          _os_log_impl(&dword_26B71B000, v58, ((v59 & 1) == 0), "Post updates", buf, 2u);
        }

        [(SPQueryResponse *)v4 setKind:*(v11 + 32)];
        [(SPQueryTask *)selfCopy postSearchAgentUpdatedResultsToDelegate:v4];
        if (selfCopy->_state - 1 > 1)
        {
          goto LABEL_55;
        }

        WeakRetained = [MEMORY[0x277CC3468] sharedInstance];
        [WeakRetained logWithBundleID:@"com.apple.SpotlightUI" indexOperation:5 itemCount:1 reason:@"UserInput"];
      }

LABEL_55:
      free(v11);
      goto LABEL_56;
    }

    query2 = [(SPQueryTask *)selfCopy query];
    queryContext2 = [query2 queryContext];
    queryUnderstandingOutput2 = [queryContext2 queryUnderstandingOutput];
    v23 = [queryUnderstandingOutput2 objectForKey:@"kQPParseResultEcrGroundedOutput"];
    v24 = v23;
    v25 = MEMORY[0x277CBEC10];
    if (v23)
    {
      v25 = v23;
    }

    v26 = v25;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_45:

      goto LABEL_46;
    }

    v64 = selfCopy;
    v65 = v11;
    v63 = v26;
    v27 = v26;
    v66 = v4;
    [(SPQueryResponse *)v4 setEcrGroundedOutput:v27];
    v28 = v27;
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v30 = v28;
    v31 = [v30 countByEnumeratingWithState:&v77 objects:buf count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v78;
      v67 = *v78;
      v68 = v30;
      do
      {
        v34 = 0;
        v69 = v32;
        do
        {
          if (*v78 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v77 + 1) + 8 * v34);
          v36 = [v30 objectForKey:{v35, v63}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = v36;
            v38 = v37;
            if (v37)
            {
              v71 = v36;
              v72 = v34;
              v39 = [v37 objectForKey:@"rawQueryToken"];
              v70 = v38;
              v40 = [v38 objectForKey:@"personRelationMap"];
              v41 = v40;
              if (v40)
              {
                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
                v42 = [v40 countByEnumeratingWithState:&v73 objects:v81 count:16];
                if (v42)
                {
                  v43 = v42;
                  v44 = *v74;
                  do
                  {
                    for (i = 0; i != v43; ++i)
                    {
                      if (*v74 != v44)
                      {
                        objc_enumerationMutation(v41);
                      }

                      v46 = *(*(&v73 + 1) + 8 * i);
                      v47 = [v41 objectForKey:v46];
                      if (v47)
                      {
                        v48 = [objc_alloc(MEMORY[0x277D65858]) initWithName:v46 relationLabel:v47 ecrToken:v35 queryRawToken:v39];
                        [v29 addObject:v48];
                      }
                    }

                    v43 = [v41 countByEnumeratingWithState:&v73 objects:v81 count:16];
                  }

                  while (v43);
                }
              }

              v33 = v67;
              v30 = v68;
              v32 = v69;
              v38 = v70;
              v36 = v71;
              v34 = v72;
            }
          }

          ++v34;
        }

        while (v34 != v32);
        v32 = [v30 countByEnumeratingWithState:&v77 objects:buf count:16];
      }

      while (v32);
    }

    v4 = v66;
    [(SPQueryResponse *)v66 setEcrGroundedPersons:v29];

    ecrGroundedOutput = [(SPQueryResponse *)v66 ecrGroundedOutput];
    v50 = [ecrGroundedOutput count];

    v51 = SPLogForSPLogCategoryDefault();
    v52 = *MEMORY[0x277D4BF50];
    v53 = os_log_type_enabled(v51, ((*MEMORY[0x277D4BF50] & 1) == 0));
    if (v50)
    {
      selfCopy = v64;
      v11 = v65;
      if (v53)
      {
        *buf = 0;
        v54 = "Added non empty ecrGroundedOutput to spqueryrespone";
LABEL_43:
        _os_log_impl(&dword_26B71B000, v51, ((v52 & 1) == 0), v54, buf, 2u);
      }
    }

    else
    {
      selfCopy = v64;
      v11 = v65;
      if (v53)
      {
        *buf = 0;
        v54 = "Added empty ecrGroundedOutput to spqueryrespone";
        goto LABEL_43;
      }
    }

    v26 = v63;
    goto LABEL_45;
  }

  v4 = SPLogForSPLogCategoryDefault();
  v5 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(&v4->super, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    v6 = atomic_load(&selfCopy->_updatesDisabled);
    *buf = 67109120;
    v83 = v6;
    v7 = "Skip posting; updates disabled %d.";
    v8 = (v5 & 1) == 0;
    p_super = &v4->super;
    v10 = 8;
LABEL_4:
    _os_log_impl(&dword_26B71B000, p_super, v8, v7, buf, v10);
  }

LABEL_56:
}

- (void)enableUpdates
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__SPQueryTask_enableUpdates__block_invoke;
  block[3] = &unk_279CFE2D8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __28__SPQueryTask_enableUpdates__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = atomic_load((*(a1 + 32) + 8));
  if (v1 <= 0)
  {
    __28__SPQueryTask_enableUpdates__block_invoke_cold_1();
  }

  atomic_fetch_add((*(a1 + 32) + 8), 0xFFFFFFFF);
  v3 = SPLogForSPLogCategoryDefault();
  v4 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v3, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    v5 = atomic_load((*(a1 + 32) + 8));
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&dword_26B71B000, v3, ((v4 & 1) == 0), "Enable updates %d", v7, 8u);
  }

  return [*(a1 + 32) pushAndPostUpdates];
}

- (void)disableUpdates
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SPQueryTask_disableUpdates__block_invoke;
  block[3] = &unk_279CFE2D8;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

void __29__SPQueryTask_disableUpdates__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  atomic_fetch_add((*(a1 + 32) + 8), 1u);
  v2 = SPLogForSPLogCategoryDefault();
  v3 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v2, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    v4 = atomic_load((*(a1 + 32) + 8));
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&dword_26B71B000, v2, ((v3 & 1) == 0), "Disable updates %d", v5, 8u);
  }
}

- (void)postSearchAgentUpdatedResultsToDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  sessionEntityString = [delegateCopy sessionEntityString];
  v6 = [sessionEntityString length];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D0EDB8]);
    sessionEntityString2 = [delegateCopy sessionEntityString];
    v9 = [v7 initWithSessionEntityString:sessionEntityString2];

    mEMORY[0x277D0EDB0] = [MEMORY[0x277D0EDB0] sharedInstance];
    [mEMORY[0x277D0EDB0] setSharedMapsUserSessionEntity:v9 shareSessionIDWithMaps:1];
  }

  [WeakRetained didReceiveResponse:delegateCopy];
}

- (void)updateResultsThroughDelegate:(BOOL)delegate state:(unint64_t)state unchanged:(BOOL)unchanged sections:(id)sections
{
  unchangedCopy = unchanged;
  queryProcessor = self->_queryProcessor;
  sectionsCopy = sections;
  dispatch_assert_queue_V2(queryProcessor);
  v12 = [(SPQueryTask *)self retainAndMergeSections:sectionsCopy forState:state];

  if ([(SPQueryTask *)self readyToUpdate])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      unsafeSessionEntityString = [(SPQueryTask *)self unsafeSessionEntityString];
      v16 = malloc_type_malloc(0x28uLL, 0x10600402A2A81BBuLL);
      if (unsafeSessionEntityString)
      {
        v17 = unsafeSessionEntityString;
      }

      *v16 = unsafeSessionEntityString;
      if (v12)
      {
        v18 = v12;
      }

      v16[1] = v12;
      *(v16 + 16) = delegate;
      v16[3] = state;
      *(v16 + 32) = unchangedCopy;
      if (unchangedCopy)
      {
        do
        {
          v19 = atomic_load(&self->_deferredUpdate);
          v20 = v19;
          atomic_compare_exchange_strong(&self->_deferredUpdate, &v20, 0);
        }

        while (v20 != v19);
        if (v19)
        {
          *(v16 + 32) = 0;
        }

        atomic_store(v16, &self->_deferredUpdate);
      }

      else
      {
        do
        {
          v19 = atomic_load(&self->_deferredUpdate);
          v21 = v19;
          atomic_compare_exchange_strong(&self->_deferredUpdate, &v21, v16);
        }

        while (v21 != v19);
      }

      if (v19)
      {
        v22 = *(v19 + 8);
        if (v22)
        {
          CFRelease(v22);
        }

        if (*v19)
        {
          CFRelease(*v19);
        }

        free(v19);
      }

      else
      {
        dispatchQueue = self->_dispatchQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __69__SPQueryTask_updateResultsThroughDelegate_state_unchanged_sections___block_invoke;
        block[3] = &unk_279CFE2D8;
        block[4] = self;
        v24 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
        dispatch_async(dispatchQueue, v24);
      }
    }
  }
}

@end