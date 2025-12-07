@interface CADFetchCalendarItemsWithPredicateOperation
+ (BOOL)isJunkEvent:(void *)event;
+ (id)performSynchronouslyWithPredicate:(id)predicate entityType:(int)type connection:(id)connection fetchIdentifier:(unsigned int)identifier cancellationToken:(id)token;
+ (void)queryDatabase:(CalDatabase *)database withID:(int)d predicate:(id)predicate connection:(id)connection serializer:(id)serializer cancellationToken:(id)token;
- (CADFetchCalendarItemsWithPredicateOperation)initWithPredicate:(id)predicate entityType:(int)type connection:(id)connection fetchIdentifier:(unsigned int)identifier completionHandler:(id)handler;
- (void)_callCompletionOnceWithResults:(id)results;
- (void)cancel;
- (void)main;
@end

@implementation CADFetchCalendarItemsWithPredicateOperation

- (void)main
{
  if (([(CADFetchCalendarItemsWithPredicateOperation *)self isCancelled]& 1) == 0)
  {
    startCallback = self->_startCallback;
    if (!startCallback || (startCallback[2](), ([(CADFetchCalendarItemsWithPredicateOperation *)self isCancelled]& 1) == 0))
    {
      v4 = [objc_opt_class() performSynchronouslyWithPredicate:self->_predicate entityType:self->_entityType connection:self->_connection fetchIdentifier:self->_token cancellationToken:self];
      if (([(CADFetchCalendarItemsWithPredicateOperation *)self isCancelled]& 1) == 0)
      {
        [(CADFetchCalendarItemsWithPredicateOperation *)self _callCompletionOnceWithResults:v4];
      }
    }
  }
}

- (CADFetchCalendarItemsWithPredicateOperation)initWithPredicate:(id)predicate entityType:(int)type connection:(id)connection fetchIdentifier:(unsigned int)identifier completionHandler:(id)handler
{
  predicateCopy = predicate;
  connectionCopy = connection;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = CADFetchCalendarItemsWithPredicateOperation;
  v16 = [(CADFetchCalendarItemsWithPredicateOperation *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_predicate, predicate);
    v17->_entityType = type;
    objc_storeStrong(&v17->_connection, connection);
    v17->_token = identifier;
    v18 = MEMORY[0x22AA4DCD0](handlerCopy);
    completion = v17->_completion;
    v17->_completion = v18;
  }

  return v17;
}

+ (id)performSynchronouslyWithPredicate:(id)predicate entityType:(int)type connection:(id)connection fetchIdentifier:(unsigned int)identifier cancellationToken:(id)token
{
  v48 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  connectionCopy = connection;
  tokenCopy = token;
  databasesToQuery = [predicateCopy databasesToQuery];
  v14 = [CADFetchedObjectSerializer alloc];
  defaultPropertiesToLoad = [predicateCopy defaultPropertiesToLoad];
  relatedObjectPropertiesToLoad = [predicateCopy relatedObjectPropertiesToLoad];
  v17 = [(CADFetchedObjectSerializer *)v14 initWithConnection:connectionCopy defaultPropertiesToLoad:defaultPropertiesToLoad relatedObjectPropertiesToLoad:relatedObjectPropertiesToLoad];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __137__CADFetchCalendarItemsWithPredicateOperation_performSynchronouslyWithPredicate_entityType_connection_fetchIdentifier_cancellationToken___block_invoke;
  v41[3] = &unk_27851B938;
  selfCopy = self;
  v18 = predicateCopy;
  v42 = v18;
  v19 = connectionCopy;
  v43 = v19;
  v20 = v17;
  v44 = v20;
  v21 = tokenCopy;
  v45 = v21;
  v22 = MEMORY[0x22AA4DCD0](v41);
  v23 = v22;
  if (databasesToQuery)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = databasesToQuery;
    v25 = [v24 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v25)
    {
      v26 = v25;
      v32 = v21;
      v27 = *v36;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(v24);
          }

          intValue = [*(*(&v35 + 1) + 8 * i) intValue];
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __137__CADFetchCalendarItemsWithPredicateOperation_performSynchronouslyWithPredicate_entityType_connection_fetchIdentifier_cancellationToken___block_invoke_3;
          v33[3] = &unk_27851A480;
          v34 = v23;
          [v19 withDatabaseID:intValue perform:v33];
        }

        v26 = [v24 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v26);
      v21 = v32;
    }
  }

  else
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __137__CADFetchCalendarItemsWithPredicateOperation_performSynchronouslyWithPredicate_entityType_connection_fetchIdentifier_cancellationToken___block_invoke_2;
    v39[3] = &unk_27851A928;
    v40 = v22;
    [v19 withAllDatabasesPerform:v39];
    v24 = v40;
  }

  if ([v21 isCancelled])
  {
    fetchedObjectWrappers = 0;
  }

  else
  {
    fetchedObjectWrappers = [(CADFetchedObjectSerializer *)v20 fetchedObjectWrappers];
  }

  return fetchedObjectWrappers;
}

uint64_t __137__CADFetchCalendarItemsWithPredicateOperation_performSynchronouslyWithPredicate_entityType_connection_fetchIdentifier_cancellationToken___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_class();
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];

  return [v6 queryDatabase:a3 withID:a2 predicate:v7 connection:v8 serializer:v9 cancellationToken:v10];
}

+ (void)queryDatabase:(CalDatabase *)database withID:(int)d predicate:(id)predicate connection:(id)connection serializer:(id)serializer cancellationToken:(id)token
{
  v11 = *&d;
  v55 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  connectionCopy = connection;
  serializerCopy = serializer;
  tokenCopy = token;
  if (([tokenCopy isCancelled] & 1) == 0)
  {
    v17 = os_signpost_id_generate(CADPredicateSignpostsHandle);
    v18 = CADPredicateSignpostsHandle;
    v19 = v18;
    v44 = v17 - 1;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 138412546;
      v52 = objc_opt_class();
      v53 = 1024;
      v54 = v11;
      v20 = v52;
      _os_signpost_emit_with_name_impl(&dword_22430B000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PredicateFetch", "class=%@, dbid=%i", buf, 0x12u);
    }

    if ([connectionCopy eventAccessLevel] == 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [connectionCopy restrictedCalendarRowIDsForAction:0 inDatabase:database];
        [predicateCopy setRestrictedCalendarRowIDs:v21 forDatabaseID:v11];
      }

      v22 = [predicateCopy copyMatchingItemsWithDatabase:database];
    }

    else
    {
      v22 = 0;
    }

    v23 = CADPredicateSignpostsHandle;
    v24 = v23;
    v43 = predicateCopy;
    spid = v17;
    if (v44 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v26 = CADPredicateSignpostsHandle;
    }

    else
    {
      if (os_signpost_enabled(v23))
      {
        v25 = [v22 count];
        *buf = 134217984;
        v52 = v25;
        _os_signpost_emit_with_name_impl(&dword_22430B000, v24, OS_SIGNPOST_INTERVAL_END, v17, "PredicateFetch", "results.count = %lu", buf, 0xCu);
      }

      v26 = CADPredicateSignpostsHandle;
      if (os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22430B000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v17, "WrapResults", &unk_224396CEB, buf, 2u);
      }
    }

    v27 = [CADBlockList alloc];
    v42 = connectionCopy;
    blockList = [connectionCopy blockList];
    v29 = [(CADBlockList *)v27 initWithBlockList:blockList];

    isBlockListEmpty = [(CADBlockList *)v29 isBlockListEmpty];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v31 = v22;
    v32 = [v31 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v47;
      while (2)
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v47 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v46 + 1) + 8 * i);
          v37 = objc_autoreleasePoolPush();
          if ([tokenCopy isCancelled])
          {
            objc_autoreleasePoolPop(v37);
            goto LABEL_30;
          }

          if (([self isJunkEvent:v36] & 1) == 0 && (isBlockListEmpty || !-[CADBlockList isEventBlocked:](v29, "isEventBlocked:", v36)))
          {
            v38 = [serializerCopy addEntity:v36];
          }

          objc_autoreleasePoolPop(v37);
        }

        v33 = [v31 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:

    v39 = CADPredicateSignpostsHandle;
    v40 = v39;
    if (v44 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22430B000, v40, OS_SIGNPOST_INTERVAL_END, spid, "WrapResults", &unk_224396CEB, buf, 2u);
    }

    connectionCopy = v42;
    predicateCopy = v43;
  }
}

+ (BOOL)isJunkEvent:(void *)event
{
  Event = event;
  v4 = CFGetTypeID(event);
  if (v4 == CalEventOccurrenceGetTypeID())
  {
    Event = CalEventOccurrenceGetEvent();
  }

  return Event && CalEventGetJunkStatus() == 1;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = CADFetchCalendarItemsWithPredicateOperation;
  [(CADFetchCalendarItemsWithPredicateOperation *)&v3 cancel];
  [(CADFetchCalendarItemsWithPredicateOperation *)self _callCompletionOnceWithResults:0];
}

- (void)_callCompletionOnceWithResults:(id)results
{
  if ((atomic_exchange(&self->_hasRunCompletion._Value, 1u) & 1) == 0)
  {
    (*(self->_completion + 2))();
  }
}

@end