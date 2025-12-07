@interface SPUISearchModel
+ (id)sharedFullZWKInstance;
+ (id)sharedGeneralInstance;
- (BOOL)wantsCompletions;
- (NSArray)sections;
- (SPSearchAgentDelegate)delegate;
- (unint64_t)currentQueryId;
- (void)didReceiveResponse:(id)response;
- (void)disableUpdates;
- (void)enableUpdates;
- (void)invalidate;
- (void)invalidateQuery:(id)query;
- (void)purgeMemory;
- (void)updateWithResponse:(id)response;
@end

@implementation SPUISearchModel

uint64_t __40__SPUISearchModel_sharedGeneralInstance__block_invoke()
{
  sGeneralQueryModel = objc_alloc_init(SPUISearchModelGeneral);

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedGeneralInstance
{
  if (sharedGeneralInstance_onceToken != -1)
  {
    +[SPUISearchModel sharedGeneralInstance];
  }

  v3 = sGeneralQueryModel;

  return v3;
}

+ (id)sharedFullZWKInstance
{
  if (sharedFullZWKInstance_onceToken != -1)
  {
    +[SPUISearchModel sharedFullZWKInstance];
  }

  v3 = sFullZKWQueryModel;

  return v3;
}

uint64_t __40__SPUISearchModel_sharedFullZWKInstance__block_invoke()
{
  sFullZKWQueryModel = objc_alloc_init(SPUISearchModelZKW);

  return MEMORY[0x2821F96F8]();
}

- (SPSearchAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)sections
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = SPLogForSPLogCategoryDefault();
  v4 = v3;
  if (*MEMORY[0x277D4BF48])
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    resultSections = [(SPQueryResponse *)self->_lastResponse resultSections];
    v9 = 138412290;
    v10 = resultSections;
    _os_log_impl(&dword_26B837000, v4, v5, "Sections: %@", &v9, 0xCu);
  }

  resultSections2 = [(SPQueryResponse *)self->_lastResponse resultSections];

  return resultSections2;
}

- (BOOL)wantsCompletions
{
  queryTask = [(SPUISearchModel *)self queryTask];
  queryKind = [queryTask queryKind];

  return (queryKind - 1) < 2;
}

- (unint64_t)currentQueryId
{
  queryTask = [(SPUISearchModel *)self queryTask];
  query = [queryTask query];
  queryContext = [query queryContext];

  if (queryContext)
  {
    queryIdent = [queryContext queryIdent];
  }

  else
  {
    queryIdent = [(SPUISearchModel *)self lastStoredQueryId];
  }

  v7 = queryIdent;

  return v7;
}

- (void)enableUpdates
{
  updatesDisabled = self->_updatesDisabled;
  if (!updatesDisabled)
  {
    [SPUISearchModel enableUpdates];
  }

  v4 = updatesDisabled - 1;
  self->_updatesDisabled = v4;
  if (!v4)
  {

    [(SPUISearchModel *)self updatesEnabled];
  }
}

- (void)disableUpdates
{
  updatesDisabled = self->_updatesDisabled;
  self->_updatesDisabled = updatesDisabled + 1;
  if (!updatesDisabled)
  {
    [(SPUISearchModel *)self updatesDisabled];
  }
}

- (void)purgeMemory
{
  queryTask = [(SPUISearchModel *)self queryTask];
  query = [queryTask query];
  queryContext = [query queryContext];
  -[SPUISearchModel setLastStoredQueryId:](self, "setLastStoredQueryId:", [queryContext queryIdent]);

  [(SPUISearchModel *)self setLastResponse:0];

  [(SPUISearchModel *)self setQueryTask:0];
}

- (void)updateWithResponse:(id)response
{
  v49 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  task = [responseCopy task];
  queryTask = [(SPUISearchModel *)self queryTask];

  if (task == queryTask)
  {
    v7 = SPLogForSPLogCategoryDefault();
    v8 = v7;
    if (*MEMORY[0x277D4BF48])
    {
      v9 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v9 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v7, v9))
    {
      *buf = 138412290;
      v48 = responseCopy;
      _os_log_impl(&dword_26B837000, v8, v9, "updateWithResponse: %@", buf, 0xCu);
    }

    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    resultSections = [responseCopy resultSections];
    v35 = [v10 initWithCapacity:{objc_msgSend(resultSections, "count")}];

    v12 = objc_opt_new();
    selfCopy = self;
    queryTask2 = [(SPUISearchModel *)self queryTask];
    query = [queryTask2 query];
    queryContext = [query queryContext];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v31 = responseCopy;
    obj = [responseCopy resultSections];
    v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v34)
    {
      v33 = *v42;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v42 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v41 + 1) + 8 * i);
          results = [v16 results];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v18 = results;
          v19 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v38;
            while (2)
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v38 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                if (!v12 || (v23 = *(*(&v37 + 1) + 8 * j), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || ([v23 resultBundleId], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqualToString:", @"com.apple.searchd.suggestion"), v24, !v25))
                {
                  [v35 addObject:v16];
                  goto LABEL_24;
                }

                v26 = [MEMORY[0x277D65D58] buildResultWithResult:v23 queryContext:queryContext];
                [v12 addObject:v26];
              }

              v20 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:

          if ([v12 count])
          {
            [v16 setResults:v12];
            [v35 addObject:v16];

            v12 = 0;
          }
        }

        v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v34);
    }

    responseCopy = v31;
    [v31 setResultSections:v35];
    [(SPUISearchModel *)selfCopy setLastResponse:v31];
    state = [v31 state];
    [(SPUISearchModel *)selfCopy setQueryPartiallyComplete:(state & 0xFFFFFFFFFFFFFFFELL) == 2];
    [(SPUISearchModel *)selfCopy setQueryJustHasTopHits:state == 1];
    -[SPUISearchModel setQueryComplete:](selfCopy, "setQueryComplete:", [v31 state] == 4);
    kind = [v31 kind];
    if (kind == 1)
    {
      delegate = [(SPUISearchModel *)selfCopy delegate];
      [delegate searchAgentFinishedQueryWithoutAdditionalResults:selfCopy];
    }

    else
    {
      if (kind)
      {
LABEL_33:

        goto LABEL_34;
      }

      delegate = [(SPUISearchModel *)selfCopy delegate];
      [delegate searchAgentUpdatedResults:selfCopy];
    }

    goto LABEL_33;
  }

LABEL_34:
}

- (void)didReceiveResponse:(id)response
{
  v10 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = SPLogForSPLogCategoryDefault();
  v6 = v5;
  if (*MEMORY[0x277D4BF48])
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v5, v7))
  {
    v8 = 138412290;
    v9 = responseCopy;
    _os_log_impl(&dword_26B837000, v6, v7, "Got response %@", &v8, 0xCu);
  }

  [(SPUISearchModel *)self performSelectorOnMainThread:sel_updateWithResponse_ withObject:responseCopy waitUntilDone:0];
}

- (void)invalidateQuery:(id)query
{
  queryCopy = query;
  queryTask = [(SPUISearchModel *)self queryTask];

  if (queryTask == queryCopy)
  {
    [(SPUISearchModel *)self setLastResponse:0];
    delegate = [(SPUISearchModel *)self delegate];
    [delegate searchAgentUpdatedResults:self];
  }
}

- (void)invalidate
{
  queryTask = self->_queryTask;
  self->_queryTask = 0;

  lastResponse = self->_lastResponse;
  self->_lastResponse = 0;

  self->_queryComplete = 0;
  *&self->_queryJustHasTopHits = 0;
}

@end