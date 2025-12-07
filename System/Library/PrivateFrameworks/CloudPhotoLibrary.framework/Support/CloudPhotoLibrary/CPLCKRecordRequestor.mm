@interface CPLCKRecordRequestor
- (BOOL)processedFetchedRequestedRecordsWithError:(id *)error;
- (CPLCKRecordRequestor)initWithFetchCache:(id)cache scopeProvider:(id)provider;
- (NSArray)requestedRecordIDs;
- (void)_fetchRecordsForNextOperationTypeInEnumerator:(id)enumerator task:(id)task completionHandler:(id)handler;
- (void)fetchRequestedRecordsForTransportTask:(id)task completionHandler:(id)handler;
- (void)requestRecordWithRecordID:(id)d operationType:(int64_t)type forRecordWithRecordID:(id)iD completionHandler:(id)handler;
@end

@implementation CPLCKRecordRequestor

- (CPLCKRecordRequestor)initWithFetchCache:(id)cache scopeProvider:(id)provider
{
  cacheCopy = cache;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = CPLCKRecordRequestor;
  v8 = [(CPLCKRecordRequestor *)&v12 init];
  if (v8)
  {
    if (cacheCopy)
    {
      v9 = cacheCopy;
    }

    else
    {
      v9 = objc_alloc_init(CPLCKRecordFetchCache);
    }

    fetchCache = v8->_fetchCache;
    v8->_fetchCache = v9;

    objc_storeStrong(&v8->_scopeProvider, provider);
  }

  return v8;
}

- (void)requestRecordWithRecordID:(id)d operationType:(int64_t)type forRecordWithRecordID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  requestedRecordIDs = self->_requestedRecordIDs;
  if (!requestedRecordIDs)
  {
    v13 = objc_alloc_init(NSMutableSet);
    v14 = self->_requestedRecordIDs;
    self->_requestedRecordIDs = v13;

    v15 = objc_alloc_init(NSMutableArray);
    requests = self->_requests;
    self->_requests = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    requestedRecordIDsPerOperationType = self->_requestedRecordIDsPerOperationType;
    self->_requestedRecordIDsPerOperationType = v17;

    requestedRecordIDs = self->_requestedRecordIDs;
  }

  [(NSMutableSet *)requestedRecordIDs addObject:dCopy];
  v19 = sub_1001AAB10([CPLCKRecordRequest alloc], dCopy, iDCopy, handlerCopy);
  [(NSMutableArray *)self->_requests addObject:v19];
  v20 = self->_requestedRecordIDsPerOperationType;
  v21 = [NSNumber numberWithInteger:type];
  v22 = [(NSMutableDictionary *)v20 objectForKeyedSubscript:v21];

  if (!v22)
  {
    v22 = objc_alloc_init(NSMutableSet);
    v23 = self->_requestedRecordIDsPerOperationType;
    v24 = [NSNumber numberWithInteger:type];
    [(NSMutableDictionary *)v23 setObject:v22 forKeyedSubscript:v24];
  }

  [v22 addObject:dCopy];
}

- (void)_fetchRecordsForNextOperationTypeInEnumerator:(id)enumerator task:(id)task completionHandler:(id)handler
{
  enumeratorCopy = enumerator;
  taskCopy = task;
  handlerCopy = handler;
  nextObject = [enumeratorCopy nextObject];
  if (nextObject)
  {
    v12 = [(NSMutableDictionary *)self->_requestedRecordIDsPerOperationType objectForKeyedSubscript:nextObject];
    allObjects = [v12 allObjects];

    integerValue = [nextObject integerValue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009615C;
    v15[3] = &unk_100276660;
    v19 = handlerCopy;
    v16 = taskCopy;
    selfCopy = self;
    v18 = enumeratorCopy;
    [v16 fetchRecordsWithIDs:allObjects fetchResources:0 wantsAllRecords:0 type:integerValue completionHandler:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)fetchRequestedRecordsForTransportTask:(id)task completionHandler:(id)handler
{
  handlerCopy = handler;
  requestedRecordIDsPerOperationType = self->_requestedRecordIDsPerOperationType;
  taskCopy = task;
  keyEnumerator = [(NSMutableDictionary *)requestedRecordIDsPerOperationType keyEnumerator];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100096330;
  v11[3] = &unk_1002727E8;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(CPLCKRecordRequestor *)self _fetchRecordsForNextOperationTypeInEnumerator:keyEnumerator task:taskCopy completionHandler:v11];
}

- (NSArray)requestedRecordIDs
{
  allObjects = [(NSMutableSet *)self->_requestedRecordIDs allObjects];
  v3 = allObjects;
  if (allObjects)
  {
    v4 = allObjects;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;

  return v4;
}

- (BOOL)processedFetchedRequestedRecordsWithError:(id *)error
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_requests;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    do
    {
      v8 = 0;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 3);
        }

        else
        {
          v10 = 0;
        }

        v11 = v10[2];
        v12 = v10;
        v13 = v11();
        v14 = 0;

        if ((v13 & 1) == 0)
        {
          if (v9)
          {
            v15 = *(v9 + 2);
          }

          else
          {
            v15 = 0;
          }

          scopeProvider = self->_scopeProvider;
          v17 = v15;
          v18 = [(CPLCloudKitScopeProvider *)scopeProvider rejectedScopedIdentifierForRejectedCKRecordID:v17];

          v19 = [v4 objectForKeyedSubscript:v18];

          if (!v19)
          {
            if (!v14)
            {
              v14 = @"processing requested record failed";
            }

            if ((_CPLSilentLogging & 1) == 0)
            {
              v20 = __CPLGenericOSLogDomain();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                if (v9)
                {
                  v21 = *(v9 + 1);
                  v22 = *(v9 + 2);
                  v9 = v21;
                }

                else
                {
                  v21 = 0;
                  v22 = 0;
                }

                *buf = 138413058;
                v38 = v21;
                v39 = 2112;
                v40 = v22;
                v41 = 2112;
                v42 = v18;
                v43 = 2114;
                v44 = v14;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Processing requested record %@ for %@ (on behalf of %@) was rejected: %{public}@", buf, 0x2Au);
              }
            }

            [v4 setObject:v14 forKeyedSubscript:v18];
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v45 count:16];
      v6 = v23;
    }

    while (v23);
  }

  v24 = [v4 count];
  if (v24)
  {
    v35 = CPLErrorRejectedRecordIdentifiersAndReasonsKey;
    v36 = v4;
    v25 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v26 = [CPLErrors cplErrorWithCode:18 underlyingError:0 userInfo:v25 description:@"Rejecting some records because of bad or missing requested records"];

    if (error)
    {
      v27 = v26;
      *error = v26;
    }
  }

  return v24 == 0;
}

@end