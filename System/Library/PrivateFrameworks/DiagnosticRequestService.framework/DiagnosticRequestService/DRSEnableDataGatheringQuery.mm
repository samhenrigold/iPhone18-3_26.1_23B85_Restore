@interface DRSEnableDataGatheringQuery
+ (id)_ON_MOC_QUEUE_enableDataGatheringQueriesForFilterPredicate:(id)predicate context:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out;
+ (id)_ON_MOC_QUEUE_enableDataGatheringQueryForID:(id)d context:(id)context;
+ (id)cachedQueryResponseForQuery:(id)query inContext:(id)context errorOut:(id *)out;
+ (id)enableDataGatheringQueriesForFilterPredicate:(id)predicate context:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out;
+ (id)enableDataGatheringQueryForID:(id)d context:(id)context;
+ (id)leastRecentDateFirstSortDescriptor;
+ (id)mostRecentDateFirstSortDescriptor;
- (BOOL)doesMatchCachedQuery:(id)query;
- (BOOL)isEqualToDataGatheringQuery:(id)query;
- (BOOL)submitQuery;
- (DRSDecisionServerBatchRequest)pbBatchInstance;
- (DRSEnableDataGatheringQuery)initWithXPCDict:(id)dict;
- (NSString)debugDescription;
- (NSString)responseString;
- (id)_initWithMO_ON_MOC_QUEUE:(id)e;
- (id)jsonCompatibleDictionaryRepresentation;
- (id)protobufRepresentation;
- (void)queryFinishedWithDecision:(id)decision error:(id)error;
- (void)updateContextWithDataGatheringQuery_ON_MOC_QUEUE:(id)e;
@end

@implementation DRSEnableDataGatheringQuery

- (id)protobufRepresentation
{
  response = [(DRSEnableDataGatheringQuery *)self response];
  if (response == 2)
  {
    v4 = objc_alloc_init(DRSProtoEnableDataGatheringRequest);
    v5 = objc_alloc_init(DRSProtoRequestDescription);
    teamID = [(DRSEnableDataGatheringQuery *)self teamID];
    [(DRSProtoRequestDescription *)v5 setTeamId:teamID];

    issueCategory = [(DRSEnableDataGatheringQuery *)self issueCategory];
    [(DRSProtoRequestDescription *)v5 setIssueCategory:issueCategory];

    contextDictionaryData = [(DRSEnableDataGatheringQuery *)self contextDictionaryData];
    [(DRSProtoRequestDescription *)v5 setContextDictionaryData:contextDictionaryData];

    queryDate = [(DRSEnableDataGatheringQuery *)self queryDate];
    [queryDate timeIntervalSince1970];
    [(DRSProtoRequestDescription *)v5 setRequestTime:v10];

    [(DRSProtoEnableDataGatheringRequest *)v4 setRequestDescription:v5];
    logType = [(DRSEnableDataGatheringQuery *)self logType];
    [(DRSProtoEnableDataGatheringRequest *)v4 setLogType:logType];

    [(DRSProtoEnableDataGatheringRequest *)v4 setIsContinue:[(DRSEnableDataGatheringQuery *)self isContinue]];
  }

  else
  {
    v12 = DPLogHandle_CKCodeServerError(response);
    if (os_signpost_enabled(v12))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BadEnableDataGatheringQuery", "Tried to create a protobuf for a query that was not in RETRY state", v14, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (DRSDecisionServerBatchRequest)pbBatchInstance
{
  v2 = objc_alloc_init(DRSProtoEnableDataGatheringRequestBatch);

  return v2;
}

- (NSString)debugDescription
{
  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  build = [(DRSEnableDataGatheringQuery *)self build];
  queryID = [(DRSEnableDataGatheringQuery *)self queryID];
  uUIDString = [queryID UUIDString];
  responseString = [(DRSEnableDataGatheringQuery *)self responseString];
  rejectionReason = [(DRSEnableDataGatheringQuery *)self rejectionReason];
  v5 = rejectionReason;
  if (rejectionReason)
  {
    v6 = rejectionReason;
  }

  else
  {
    v6 = @"-";
  }

  attemptCount = [(DRSEnableDataGatheringQuery *)self attemptCount];
  teamID = [(DRSEnableDataGatheringQuery *)self teamID];
  issueCategory = [(DRSEnableDataGatheringQuery *)self issueCategory];
  logType = [(DRSEnableDataGatheringQuery *)self logType];
  if ([(DRSEnableDataGatheringQuery *)self isContinue])
  {
    v11 = @"Continue";
  }

  else
  {
    v11 = @"Initial";
  }

  contextDictionary = [(DRSEnableDataGatheringQuery *)self contextDictionary];
  v13 = [contextDictionary debugDescription];
  v14 = v13;
  v15 = @"-";
  if (v13)
  {
    v15 = v13;
  }

  v16 = [v20 initWithFormat:@"%@ %@ %@ %@ %u %@/%@ %@ %@ %@", build, uUIDString, responseString, v6, attemptCount, teamID, issueCategory, logType, v11, v15];

  return v16;
}

- (NSString)responseString
{
  response = [(DRSEnableDataGatheringQuery *)self response];
  if (response > 3)
  {
    return @"UNKNOWN";
  }

  else
  {
    return &off_27899F9B8[response]->isa;
  }
}

- (id)_initWithMO_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v31.receiver = self;
  v31.super_class = DRSEnableDataGatheringQuery;
  v5 = [(DRSEnableDataGatheringQuery *)&v31 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  contextDictionaryData = [eCopy contextDictionaryData];
  contextDictionaryData = v5->_contextDictionaryData;
  v5->_contextDictionaryData = contextDictionaryData;

  if (!v5->_contextDictionaryData || ([(DRSEnableDataGatheringQuery *)v5 contextDictionaryData], v8 = objc_claimAutoreleasedReturnValue(), DRSDictionaryForData(v8), v9 = objc_claimAutoreleasedReturnValue(), contextDictionary = v5->_contextDictionary, v5->_contextDictionary = v9, contextDictionary, v8, [(DRSEnableDataGatheringQuery *)v5 contextDictionary], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    teamID = [eCopy teamID];
    teamID = v5->_teamID;
    v5->_teamID = teamID;

    issueCategory = [eCopy issueCategory];
    issueCategory = v5->_issueCategory;
    v5->_issueCategory = issueCategory;

    build = [eCopy build];
    build = v5->_build;
    v5->_build = build;

    queryDate = [eCopy queryDate];
    queryDate = v5->_queryDate;
    v5->_queryDate = queryDate;

    logType = [eCopy logType];
    logType = v5->_logType;
    v5->_logType = logType;

    v5->_response = [eCopy response];
    queryID = [eCopy queryID];
    queryID = v5->_queryID;
    v5->_queryID = queryID;

    v5->_attemptCount = [eCopy attemptCount];
    rejectionReason = [eCopy rejectionReason];
    rejectionReason = v5->_rejectionReason;
    v5->_rejectionReason = rejectionReason;

    v5->_isContinue = [eCopy isContinue];
LABEL_5:
    v27 = v5;
    goto LABEL_6;
  }

  v29 = DPLogHandle_CoreDataError(v12);
  if (os_signpost_enabled(v29))
  {
    *v30 = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MalformedEnableDataGatheringQueryMO", "Could not convert context dict data into dict", v30, 2u);
  }

  v27 = 0;
LABEL_6:

  return v27;
}

- (DRSEnableDataGatheringQuery)initWithXPCDict:(id)dict
{
  v51 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  string = xpc_dictionary_get_string(dictCopy, "TeamID");
  v6 = xpc_dictionary_get_string(dictCopy, "Category");
  v7 = xpc_dictionary_get_string(dictCopy, "LogType");
  length = 0;
  data = xpc_dictionary_get_data(dictCopy, "ContextDict", &length);

  if (data)
  {
    v10 = length == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v14 = 0;
    v11 = 0;
    v13 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:data length:?];
    v12 = DRSDictionaryForData(v11);
    v13 = v12;
    v14 = v12 == 0;
    if (v12)
    {
      v15 = v12;
    }
  }

  if (string)
  {
    v16 = v6 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16 || v7 == 0;
  if (v17 || !v13 && length)
  {
    v18 = DPLogHandle_ServiceXPCError(v9);
    if (os_signpost_enabled(v18))
    {
      if (string)
      {
        v19 = string;
      }

      else
      {
        v19 = "MISSING";
      }

      if (!v6)
      {
        v6 = "MISSING";
      }

      if (v7)
      {
        v20 = v7;
      }

      else
      {
        v20 = "MISSING";
      }

      if (v14)
      {
        v21 = @"MALFORMED";
      }

      else
      {
        v39 = [v13 debugDescription];
        v7 = v39;
        v21 = @"-";
        if (v39)
        {
          v21 = v39;
        }
      }

      *buf = 136446978;
      v44 = v19;
      v45 = 2082;
      v46 = v6;
      v47 = 2082;
      v48 = v20;
      v49 = 2114;
      v50 = v21;
      _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MalformedEnableDataGatheringRequest", "Received invalid log gathering query from %{public, name=teamID}s/%{public, name=issueCategory}s/%{public, name=logType}s %{public, name=contextDictionaryDescription}@", buf, 0x2Au);
      if (!v14)
      {
      }
    }

    selfCopy = 0;
  }

  else
  {
    v41.receiver = self;
    v41.super_class = DRSEnableDataGatheringQuery;
    v22 = [(DRSEnableDataGatheringQuery *)&v41 init];
    v23 = v22;
    if (v22)
    {
      objc_storeStrong(&v22->_contextDictionary, v13);
      objc_storeStrong(&v23->_contextDictionaryData, v11);
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
      teamID = v23->_teamID;
      v23->_teamID = v24;

      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
      issueCategory = v23->_issueCategory;
      v23->_issueCategory = v26;

      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      logType = v23->_logType;
      v23->_logType = v28;

      date = [MEMORY[0x277CBEAA8] date];
      queryDate = v23->_queryDate;
      v23->_queryDate = date;

      uUID = [MEMORY[0x277CCAD78] UUID];
      queryID = v23->_queryID;
      v23->_queryID = uUID;

      v23->_response = 2;
      v23->_attemptCount = 0;
      v34 = +[DRSSystemProfile sharedInstance];
      build = [v34 build];
      build = v23->_build;
      v23->_build = build;

      rejectionReason = v23->_rejectionReason;
      v23->_rejectionReason = 0;

      v23->_isContinue = 0;
    }

    self = v23;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)_ON_MOC_QUEUE_enableDataGatheringQueryForID:(id)d context:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = MEMORY[0x277CCAC30];
  contextCopy = context;
  dCopy = [v7 predicateWithFormat:@"queryID == %@", dCopy];
  v17 = 0;
  v10 = [self _ON_MOC_QUEUE_enableDataGatheringQueriesForFilterPredicate:dCopy context:contextCopy sortDescriptors:0 fetchLimit:0 errorOut:&v17];

  v11 = v17;
  if (v10 && [v10 count])
  {
    v12 = [v10 count];
    if (v12 == 1)
    {
      firstObject = [v10 firstObject];
      goto LABEL_9;
    }

    v14 = DPLogHandle_CoreDataError(v12);
    if (os_signpost_enabled(v14))
    {
      v15 = [v10 count];
      *buf = 138543618;
      v19 = dCopy;
      v20 = 2048;
      v21 = v15;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "QueryMangedObjectFetchUnexpectedMatches", "Query for UUID %{public}@ found %lu objects", buf, 0x16u);
    }
  }

  firstObject = 0;
LABEL_9:

  return firstObject;
}

+ (id)_ON_MOC_QUEUE_enableDataGatheringQueriesForFilterPredicate:(id)predicate context:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out
{
  contextCopy = context;
  v13 = MEMORY[0x277CBE428];
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  entityName = [self entityName];
  v17 = [v13 fetchRequestWithEntityName:entityName];

  [v17 setPredicate:predicateCopy];
  [v17 setSortDescriptors:descriptorsCopy];

  if (limit)
  {
    [v17 setFetchLimit:limit];
  }

  v24 = 0;
  v18 = [contextCopy executeFetchRequest:v17 error:&v24];
  v19 = v24;
  v20 = v19;
  if (v19)
  {
    v21 = v19;
    v22 = 0;
    *out = v20;
  }

  else
  {
    v22 = v18;
  }

  return v22;
}

+ (id)mostRecentDateFirstSortDescriptor
{
  if (mostRecentDateFirstSortDescriptor_onceToken_0 != -1)
  {
    +[DRSEnableDataGatheringQuery mostRecentDateFirstSortDescriptor];
  }

  v3 = mostRecentDateFirstSortDescriptor_mostRecentDateSortDescriptor_0;

  return v3;
}

void __64__DRSEnableDataGatheringQuery_mostRecentDateFirstSortDescriptor__block_invoke()
{
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"queryDate" ascending:0];
  v1 = mostRecentDateFirstSortDescriptor_mostRecentDateSortDescriptor_0;
  mostRecentDateFirstSortDescriptor_mostRecentDateSortDescriptor_0 = v0;
}

+ (id)leastRecentDateFirstSortDescriptor
{
  if (leastRecentDateFirstSortDescriptor_onceToken_0 != -1)
  {
    +[DRSEnableDataGatheringQuery leastRecentDateFirstSortDescriptor];
  }

  v3 = leastRecentDateFirstSortDescriptor_leastRecentDateSortDescriptor_0;

  return v3;
}

void __65__DRSEnableDataGatheringQuery_leastRecentDateFirstSortDescriptor__block_invoke()
{
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"queryDate" ascending:1];
  v1 = leastRecentDateFirstSortDescriptor_leastRecentDateSortDescriptor_0;
  leastRecentDateFirstSortDescriptor_leastRecentDateSortDescriptor_0 = v0;
}

+ (id)enableDataGatheringQueriesForFilterPredicate:(id)predicate context:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out
{
  predicateCopy = predicate;
  contextCopy = context;
  descriptorsCopy = descriptors;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__5;
  v38 = __Block_byref_object_dispose__5;
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__5;
  v32 = __Block_byref_object_dispose__5;
  v33 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __120__DRSEnableDataGatheringQuery_enableDataGatheringQueriesForFilterPredicate_context_sortDescriptors_fetchLimit_errorOut___block_invoke;
  v20[3] = &unk_27899F998;
  selfCopy = self;
  v15 = predicateCopy;
  v21 = v15;
  v16 = contextCopy;
  v22 = v16;
  v17 = descriptorsCopy;
  v23 = v17;
  v24 = &v28;
  limitCopy = limit;
  v25 = &v34;
  [v16 performBlockAndWait:v20];
  if (out)
  {
    *out = v29[5];
  }

  v18 = v35[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v18;
}

void __120__DRSEnableDataGatheringQuery_enableDataGatheringQueriesForFilterPredicate_context_sortDescriptors_fetchLimit_errorOut___block_invoke(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = a1[10];
  v31 = 0;
  v7 = [v5 _ON_MOC_QUEUE_enableDataGatheringQueriesForFilterPredicate:v2 context:v3 sortDescriptors:v4 fetchLimit:v6 errorOut:&v31];
  v8 = v31;
  v9 = v31;
  objc_storeStrong((*(a1[7] + 8) + 40), v8);
  if (!*(*(a1[7] + 8) + 40))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = [DRSEnableDataGatheringQuery alloc];
          v17 = [(DRSEnableDataGatheringQuery *)v16 _initWithMO_ON_MOC_QUEUE:v15, v27];
          if (!v17)
          {
            v19 = MEMORY[0x277CCA9B8];
            v32 = *MEMORY[0x277CCA450];
            v33 = @"Failed to create query for queryMO";
            v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            v21 = [v19 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v20];

            v22 = *(a1[7] + 8);
            v23 = *(v22 + 40);
            *(v22 + 40) = v21;
            v24 = v21;

            v25 = *(a1[8] + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = 0;

            goto LABEL_12;
          }

          v18 = v17;
          [*(*(a1[8] + 8) + 40) addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v34 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

+ (id)cachedQueryResponseForQuery:(id)query inContext:(id)context errorOut:(id *)out
{
  v32[1] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  contextCopy = context;
  v9 = MEMORY[0x277CCAC30];
  teamID = [queryCopy teamID];
  issueCategory = [queryCopy issueCategory];
  logType = [queryCopy logType];
  build = [queryCopy build];
  v14 = [v9 predicateWithFormat:@"teamID == %@ AND issueCategory == %@ AND logType == %@ AND build == %@", teamID, issueCategory, logType, build];

  v15 = +[DRSEnableDataGatheringQuery mostRecentDateFirstSortDescriptor];
  v32[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];

  v30 = 0;
  v17 = [self enableDataGatheringQueriesForFilterPredicate:v14 context:contextCopy sortDescriptors:v16 fetchLimit:1 errorOut:&v30];
  v18 = v30;
  if (v17 && [v17 count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v20)
    {
      v25 = contextCopy;
      v21 = *v27;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v26 + 1) + 8 * i);
          if ([queryCopy doesMatchCachedQuery:v23])
          {
            v20 = v23;
            goto LABEL_14;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

LABEL_14:
      contextCopy = v25;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)enableDataGatheringQueryForID:(id)d context:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = MEMORY[0x277CCAC30];
  contextCopy = context;
  dCopy = [v7 predicateWithFormat:@"queryID == %@", dCopy];
  v25 = 0;
  v10 = [self enableDataGatheringQueriesForFilterPredicate:dCopy context:contextCopy sortDescriptors:0 fetchLimit:1 errorOut:&v25];

  v11 = v25;
  v12 = v11;
  if (v10 && (v11 = [v10 count]) != 0)
  {
    v13 = [v10 count];
    if (v13 == 1)
    {
      firstObject = [v10 firstObject];
      goto LABEL_16;
    }

    v15 = DPLogHandle_EnableDataGatheringQueryError(v13);
    if (os_signpost_enabled(v15))
    {
      v23 = [v10 count];
      *buf = 138543618;
      v27 = dCopy;
      v28 = 2048;
      v29 = v23;
      v19 = "QueryMangedObjectFetchUnexpectedMatches";
      v20 = "Query for UUID %{public}@ found %lu objects";
      v21 = v15;
      v22 = 22;
      goto LABEL_14;
    }
  }

  else
  {
    if (v12)
    {
      v15 = DPLogHandle_CoreDataError(v11);
      if (os_signpost_enabled(v15))
      {
        localizedDescription = [v12 localizedDescription];
        v17 = localizedDescription;
        v18 = @"Unknown";
        if (localizedDescription)
        {
          v18 = localizedDescription;
        }

        *buf = 138543362;
        v27 = v18;
        _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "QueryMangedObjectFetchFailure", "Failed to fetch a query object based on MO ID: %{public}@", buf, 0xCu);
      }

      goto LABEL_15;
    }

    v15 = DPLogHandle_EnableDataGatheringQuery(v11);
    if (os_signpost_enabled(v15))
    {
      *buf = 138543362;
      v27 = dCopy;
      v19 = "QueryMangedObjectFetchMiss";
      v20 = "No cached query with MO ID %{public}@";
      v21 = v15;
      v22 = 12;
LABEL_14:
      _os_signpost_emit_with_name_impl(&dword_232906000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v19, v20, buf, v22);
    }
  }

LABEL_15:

  firstObject = 0;
LABEL_16:

  return firstObject;
}

- (void)updateContextWithDataGatheringQuery_ON_MOC_QUEUE:(id)e
{
  v21 = *MEMORY[0x277D85DE8];
  eCopy = e;
  v5 = objc_opt_class();
  queryID = [(DRSEnableDataGatheringQuery *)self queryID];
  v7 = [v5 _ON_MOC_QUEUE_enableDataGatheringQueryForID:queryID context:eCopy];

  if (!v7)
  {
    v9 = DPLogHandle_EnableDataGatheringQuery(v8);
    if (os_signpost_enabled(v9))
    {
      queryID2 = [(DRSEnableDataGatheringQuery *)self queryID];
      v19 = 138543362;
      v20 = queryID2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "QueryMangedObjectFetchMiss", "No cached query with MO ID %{public}@", &v19, 0xCu);
    }

    v7 = [[DRSEnableDataGatheringQueryMO alloc] initWithContext:eCopy];
    teamID = [(DRSEnableDataGatheringQuery *)self teamID];
    [(DRSEnableDataGatheringQueryMO *)v7 setTeamID:teamID];

    issueCategory = [(DRSEnableDataGatheringQuery *)self issueCategory];
    [(DRSEnableDataGatheringQueryMO *)v7 setIssueCategory:issueCategory];

    logType = [(DRSEnableDataGatheringQuery *)self logType];
    [(DRSEnableDataGatheringQueryMO *)v7 setLogType:logType];

    contextDictionaryData = [(DRSEnableDataGatheringQuery *)self contextDictionaryData];
    [(DRSEnableDataGatheringQueryMO *)v7 setContextDictionaryData:contextDictionaryData];

    build = [(DRSEnableDataGatheringQuery *)self build];
    [(DRSEnableDataGatheringQueryMO *)v7 setBuild:build];

    queryDate = [(DRSEnableDataGatheringQuery *)self queryDate];
    [(DRSEnableDataGatheringQueryMO *)v7 setQueryDate:queryDate];

    queryID3 = [(DRSEnableDataGatheringQuery *)self queryID];
    [(DRSEnableDataGatheringQueryMO *)v7 setQueryID:queryID3];
  }

  [(DRSEnableDataGatheringQueryMO *)v7 setResponse:[(DRSEnableDataGatheringQuery *)self response]];
  [(DRSEnableDataGatheringQueryMO *)v7 setAttemptCount:[(DRSEnableDataGatheringQuery *)self attemptCount]];
  rejectionReason = [(DRSEnableDataGatheringQuery *)self rejectionReason];
  [(DRSEnableDataGatheringQueryMO *)v7 setRejectionReason:rejectionReason];

  [(DRSEnableDataGatheringQueryMO *)v7 setIsContinue:[(DRSEnableDataGatheringQuery *)self isContinue]];
}

- (BOOL)isEqualToDataGatheringQuery:(id)query
{
  queryCopy = query;
  teamID = [(DRSEnableDataGatheringQuery *)self teamID];
  teamID2 = [queryCopy teamID];
  v7 = [teamID isEqualToString:teamID2];

  if (!v7)
  {
    goto LABEL_19;
  }

  issueCategory = [(DRSEnableDataGatheringQuery *)self issueCategory];
  issueCategory2 = [queryCopy issueCategory];
  v10 = [issueCategory isEqualToString:issueCategory2];

  if (!v10)
  {
    goto LABEL_19;
  }

  logType = [(DRSEnableDataGatheringQuery *)self logType];
  logType2 = [queryCopy logType];
  v13 = [logType isEqualToString:logType2];

  if (!v13)
  {
    goto LABEL_19;
  }

  build = [(DRSEnableDataGatheringQuery *)self build];
  build2 = [queryCopy build];
  v16 = [build isEqualToString:build2];

  if (!v16)
  {
    goto LABEL_19;
  }

  queryDate = [(DRSEnableDataGatheringQuery *)self queryDate];
  queryDate2 = [queryCopy queryDate];
  v19 = [queryDate isEqualToDate:queryDate2];

  if (!v19)
  {
    goto LABEL_19;
  }

  queryID = [(DRSEnableDataGatheringQuery *)self queryID];
  queryID2 = [queryCopy queryID];
  v22 = [queryID isEqual:queryID2];

  if (!v22)
  {
    goto LABEL_19;
  }

  contextDictionary = [(DRSEnableDataGatheringQuery *)self contextDictionary];
  if (contextDictionary && (v24 = contextDictionary, [queryCopy contextDictionary], v25 = objc_claimAutoreleasedReturnValue(), v25, v24, v25))
  {
    contextDictionary2 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
    contextDictionary3 = [queryCopy contextDictionary];
    v28 = [contextDictionary2 isEqualToDictionary:contextDictionary3];

    if ((v28 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    contextDictionary4 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
    if (contextDictionary4)
    {
      goto LABEL_18;
    }

    contextDictionary5 = [queryCopy contextDictionary];

    if (contextDictionary5)
    {
      goto LABEL_19;
    }
  }

  rejectionReason = [(DRSEnableDataGatheringQuery *)self rejectionReason];
  if (rejectionReason)
  {
    v32 = rejectionReason;
    rejectionReason2 = [queryCopy rejectionReason];

    if (rejectionReason2)
    {
      rejectionReason3 = [(DRSEnableDataGatheringQuery *)self rejectionReason];
      rejectionReason4 = [queryCopy rejectionReason];
      v36 = [rejectionReason3 isEqualToString:rejectionReason4];

      if ((v36 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  contextDictionary4 = [(DRSEnableDataGatheringQuery *)self rejectionReason];
  if (contextDictionary4)
  {
LABEL_18:

    goto LABEL_19;
  }

  rejectionReason5 = [queryCopy rejectionReason];

  if (rejectionReason5)
  {
    goto LABEL_19;
  }

LABEL_22:
  attemptCount = [(DRSEnableDataGatheringQuery *)self attemptCount];
  if (attemptCount == [queryCopy attemptCount])
  {
    isContinue = [(DRSEnableDataGatheringQuery *)self isContinue];
    if (isContinue == [queryCopy isContinue])
    {
      response = [(DRSEnableDataGatheringQuery *)self response];
      v37 = response == [queryCopy response];
      goto LABEL_20;
    }
  }

LABEL_19:
  v37 = 0;
LABEL_20:

  return v37;
}

- (BOOL)doesMatchCachedQuery:(id)query
{
  queryCopy = query;
  teamID = [(DRSEnableDataGatheringQuery *)self teamID];
  teamID2 = [queryCopy teamID];
  v7 = [teamID isEqualToString:teamID2];

  if (v7)
  {
    issueCategory = [(DRSEnableDataGatheringQuery *)self issueCategory];
    issueCategory2 = [queryCopy issueCategory];
    v10 = [issueCategory isEqualToString:issueCategory2];

    if (v10)
    {
      logType = [(DRSEnableDataGatheringQuery *)self logType];
      logType2 = [queryCopy logType];
      v13 = [logType isEqualToString:logType2];

      if (v13)
      {
        build = [(DRSEnableDataGatheringQuery *)self build];
        build2 = [queryCopy build];
        v16 = [build isEqualToString:build2];

        if (v16)
        {
          contextDictionary = [(DRSEnableDataGatheringQuery *)self contextDictionary];
          if (contextDictionary && (v18 = contextDictionary, [queryCopy contextDictionary], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
          {
            contextDictionary2 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
            contextDictionary3 = [queryCopy contextDictionary];
            v22 = [contextDictionary2 isEqualToDictionary:contextDictionary3];

            if (v22)
            {
              goto LABEL_14;
            }
          }

          else
          {
            contextDictionary4 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
            if (contextDictionary4)
            {
            }

            else
            {
              contextDictionary5 = [queryCopy contextDictionary];

              if (!contextDictionary5)
              {
LABEL_14:
                v25 = 1;
                goto LABEL_13;
              }
            }
          }
        }
      }
    }
  }

  v25 = 0;
LABEL_13:

  return v25;
}

- (BOOL)submitQuery
{
  v30 = *MEMORY[0x277D85DE8];
  ++self->_attemptCount;
  v4 = DPLogHandle_CKCodeServer(self);
  queryID = [(DRSEnableDataGatheringQuery *)self queryID];
  v6 = [queryID hash];

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    queryID2 = [(DRSEnableDataGatheringQuery *)self queryID];
    teamID = [(DRSEnableDataGatheringQuery *)self teamID];
    issueCategory = [(DRSEnableDataGatheringQuery *)self issueCategory];
    logType = [(DRSEnableDataGatheringQuery *)self logType];
    contextDictionary = [(DRSEnableDataGatheringQuery *)self contextDictionary];
    if (contextDictionary)
    {
      contextDictionary2 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
      v12 = [contextDictionary2 debugDescription];
    }

    else
    {
      v12 = @"-";
    }

    v20 = 138544386;
    v21 = queryID2;
    v22 = 2114;
    v23 = teamID;
    v24 = 2114;
    v25 = issueCategory;
    v26 = 2114;
    v27 = logType;
    v28 = 2114;
    v29 = v12;
    _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "EnableDataGatheringQuery", "Began request to decision server to enable data gathering for query ID %{public}@, %{public, name=teamID}@/%{public, name=issueCategory}@/%{public, name=logType}@ %{public, name=contextDictionary}@", &v20, 0x34u);
    if (contextDictionary)
    {
    }
  }

  response = [(DRSEnableDataGatheringQuery *)self response];
  v14 = response;
  if (response != 2)
  {
    v15 = DPLogHandle_CKCodeServer(response);
    queryID3 = [(DRSEnableDataGatheringQuery *)self queryID];
    v17 = [queryID3 hash];

    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      responseString = [(DRSEnableDataGatheringQuery *)self responseString];
      v20 = 138543362;
      v21 = responseString;
      _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_INTERVAL_END, v17, "EnableDataGatheringQuery", "FAILED: Query in unexpected state: %{public}@", &v20, 0xCu);
    }
  }

  return v14 == 2;
}

- (void)queryFinishedWithDecision:(id)decision error:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  decisionCopy = decision;
  errorCopy = error;
  v8 = errorCopy;
  if (errorCopy)
  {
    localizedDescription = [errorCopy localizedDescription];
    v10 = localizedDescription;
    v11 = @"Unknown";
    if (localizedDescription)
    {
      v11 = localizedDescription;
    }

    errorString2 = v11;

    goto LABEL_5;
  }

  errorString = [decisionCopy errorString];

  if (errorString)
  {
    errorString2 = [decisionCopy errorString];
    if (errorString2)
    {
LABEL_5:
      attemptCount = [(DRSEnableDataGatheringQuery *)self attemptCount];
      v14 = attemptCount;
      rejectionReason = DPLogHandle_CKCodeServer(attemptCount);
      queryID = [(DRSEnableDataGatheringQuery *)self queryID];
      v17 = [queryID hash];

      v18 = v17 - 1;
      if (v14 < 3)
      {
        if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(rejectionReason))
        {
          v30 = 138543362;
          v31 = errorString2;
          _os_signpost_emit_with_name_impl(&dword_232906000, rejectionReason, OS_SIGNPOST_INTERVAL_END, v17, "EnableDataGatheringQuery", "Attempt failed due to error: %{public}@", &v30, 0xCu);
        }
      }

      else
      {
        if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(rejectionReason))
        {
          v30 = 138543362;
          v31 = errorString2;
          _os_signpost_emit_with_name_impl(&dword_232906000, rejectionReason, OS_SIGNPOST_INTERVAL_END, v17, "EnableDataGatheringQuery", "Query invalidated due to attempt count. Last error:%{public}@", &v30, 0xCu);
        }

        self->_response = 3;
        rejectionReason = self->_rejectionReason;
        self->_rejectionReason = &errorString2->isa;
        errorString2 = errorString2;
      }

      goto LABEL_14;
    }
  }

  acceptedNum = [decisionCopy acceptedNum];
  bOOLValue = [acceptedNum BOOLValue];

  self->_response = bOOLValue;
  v22 = self->_rejectionReason;
  self->_rejectionReason = 0;

  errorString2 = DPLogHandle_CKCodeServer(v23);
  queryID2 = [(DRSEnableDataGatheringQuery *)self queryID];
  v25 = [queryID2 hash];

  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(errorString2))
  {
    responseString = [(DRSEnableDataGatheringQuery *)self responseString];
    rejectionReason = [(DRSEnableDataGatheringQuery *)self rejectionReason];
    v28 = rejectionReason;
    v29 = @"-";
    if (rejectionReason)
    {
      v29 = rejectionReason;
    }

    v30 = 138543618;
    v31 = responseString;
    v32 = 2114;
    v33 = v29;
    _os_signpost_emit_with_name_impl(&dword_232906000, errorString2, OS_SIGNPOST_INTERVAL_END, v25, "EnableDataGatheringQuery", "Query successful with response: %{public}@, rejection reason: %{public}@", &v30, 0x16u);
  }

LABEL_14:
}

- (id)jsonCompatibleDictionaryRepresentation
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  build = [(DRSEnableDataGatheringQuery *)self build];
  [v5 setObject:build forKeyedSubscript:@"build"];

  queryDate = [(DRSEnableDataGatheringQuery *)self queryDate];
  v8 = [v4 stringFromDate:queryDate];
  [v5 setObject:v8 forKeyedSubscript:@"date"];

  teamID = [(DRSEnableDataGatheringQuery *)self teamID];
  [v5 setObject:teamID forKeyedSubscript:@"teamID"];

  issueCategory = [(DRSEnableDataGatheringQuery *)self issueCategory];
  [v5 setObject:issueCategory forKeyedSubscript:@"issueCategory"];

  responseString = [(DRSEnableDataGatheringQuery *)self responseString];
  [v5 setObject:responseString forKeyedSubscript:@"response"];

  logType = [(DRSEnableDataGatheringQuery *)self logType];
  [v5 setObject:logType forKeyedSubscript:@"logType"];

  queryID = [(DRSEnableDataGatheringQuery *)self queryID];
  uUIDString = [queryID UUIDString];
  [v5 setObject:uUIDString forKeyedSubscript:@"queryID"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[DRSEnableDataGatheringQuery attemptCount](self, "attemptCount")}];
  [v5 setObject:v15 forKeyedSubscript:@"uploadAttemptCount"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSEnableDataGatheringQuery isContinue](self, "isContinue")}];
  [v5 setObject:v16 forKeyedSubscript:@"isContinue"];

  rejectionReason = [(DRSEnableDataGatheringQuery *)self rejectionReason];

  if (rejectionReason)
  {
    rejectionReason2 = [(DRSEnableDataGatheringQuery *)self rejectionReason];
    [v5 setObject:rejectionReason2 forKeyedSubscript:@"rejectionReason"];
  }

  contextDictionary = [(DRSEnableDataGatheringQuery *)self contextDictionary];

  if (contextDictionary)
  {
    v20 = MEMORY[0x277CCAAA0];
    contextDictionary2 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
    LODWORD(v20) = [v20 isValidJSONObject:contextDictionary2];

    if (v20)
    {
      contextDictionary3 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
      [v5 setObject:contextDictionary3 forKeyedSubscript:@"contextDictionary"];
    }

    else
    {
      v24 = DPLogHandle_Request(v22);
      if (os_signpost_enabled(v24))
      {
        v25 = [(DRSEnableDataGatheringQuery *)self debugDescription];
        v27 = 138543362;
        v28 = v25;
        _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SkippedContextDictionaryJSONSerialization", "Context dictionary for %{public}@ cannot be serialized in JSON", &v27, 0xCu);
      }

      [v5 setObject:@"<Could not serialize>" forKeyedSubscript:@"contextDictionary"];
    }
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

@end