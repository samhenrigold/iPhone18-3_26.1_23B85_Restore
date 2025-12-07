@interface FBAOSLogViewerDataSource
- (BOOL)hasMoreLogs;
- (BOOL)lastFetchReturnedZeroEvents;
- (BOOL)persistence:(id)persistence results:(id)results error:(id)error;
- (BOOL)shouldContinue;
- (FBAOSLogViewerDataSource)initWithArchive:(id)archive pageSize:(int64_t)size pageCompletion:(id)completion error:(id)error;
- (id)logAtIndex:(int64_t)index;
- (id)loggerLibWithArchive:(id)archive pageSize:(unint64_t)size;
- (int64_t)numberOfLogs;
- (void)dealloc;
- (void)fetchNextBatch;
- (void)nextPage;
- (void)nextPageForReal;
- (void)persistenceDidFinishReadingForStartDate:(id)date endDate:(id)endDate;
- (void)prepareForNextDateRangeFetch;
- (void)prepareForNextPage;
@end

@implementation FBAOSLogViewerDataSource

- (FBAOSLogViewerDataSource)initWithArchive:(id)archive pageSize:(int64_t)size pageCompletion:(id)completion error:(id)error
{
  archiveCopy = archive;
  completionCopy = completion;
  errorCopy = error;
  v37.receiver = self;
  v37.super_class = FBAOSLogViewerDataSource;
  v14 = [(FBAOSLogViewerDataSource *)&v37 init];
  if (!v14)
  {
LABEL_11:
    v34 = v14;
    goto LABEL_15;
  }

  v36 = 0;
  v15 = [archiveCopy checkResourceIsReachableAndReturnError:&v36];
  v16 = v36;
  v17 = sub_10000A588(v16);
  v18 = v17;
  if (v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      path = [archiveCopy path];
      *buf = 138543362;
      v39 = path;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Initializing log viewer with log archive [%{public}@]", buf, 0xCu);
    }

    v20 = objc_retainBlock(completionCopy);
    pageFetchCompletion = v14->_pageFetchCompletion;
    v14->_pageFetchCompletion = v20;

    v22 = objc_retainBlock(errorCopy);
    fetchErrorBlock = v14->_fetchErrorBlock;
    v14->_fetchErrorBlock = v22;

    objc_storeStrong(&v14->_logArchivePath, archive);
    v14->_pageSize = size;
    v24 = [(FBAOSLogViewerDataSource *)v14 loggerLibWithArchive:archiveCopy pageSize:[(FBAOSLogViewerDataSource *)v14 pageSize]];
    loggerLib = v14->_loggerLib;
    v14->_loggerLib = v24;

    [(OSLogPersistence *)v14->_loggerLib setDelegate:v14];
    v26 = objc_opt_new();
    savedEvents = v14->_savedEvents;
    v14->_savedEvents = v26;

    v14->_oldestEventMachTime = 0;
    v14->_gotDelegateCallbackInLastFetch = 0;
    v14->_numberOfEventsInLastFetch = 0;
    v14->_numberOfEmptyFetches = 0;
    v14->_pendingNextPageRequest = 0;
    v14->_fetchWatchdog = 0;
    fetchErrorBlock = [(FBAOSLogViewerDataSource *)v14 fetchErrorBlock];

    if (fetchErrorBlock)
    {
      loggerLib = [(FBAOSLogViewerDataSource *)v14 loggerLib];
      fba_hasValidStartAndEndDates = [loggerLib fba_hasValidStartAndEndDates];

      if ((fba_hasValidStartAndEndDates & 1) == 0)
      {
        v31 = sub_10000A588([(FBAOSLogViewerDataSource *)v14 setFoundCorruptDate:1]);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1000922D8(v14, v31);
        }

        fetchErrorBlock2 = [(FBAOSLogViewerDataSource *)v14 fetchErrorBlock];
        v33 = sub_10002791C(-1008);
        (fetchErrorBlock2)[2](fetchErrorBlock2, v33);
      }
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100092214(v14, v16, v18);
  }

  v34 = 0;
LABEL_15:

  return v34;
}

- (void)dealloc
{
  [(FBAOSLogViewerDataSource *)self setLoggerLib:0];
  v3.receiver = self;
  v3.super_class = FBAOSLogViewerDataSource;
  [(FBAOSLogViewerDataSource *)&v3 dealloc];
}

- (void)nextPage
{
  loggerLib = [(FBAOSLogViewerDataSource *)self loggerLib];
  fba_hasValidStartAndEndDates = [loggerLib fba_hasValidStartAndEndDates];

  if (fba_hasValidStartAndEndDates)
  {
    v6 = sub_10000A588(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Next Page", v7, 2u);
    }

    if ([(FBAOSLogViewerDataSource *)self pendingNextPageRequest]< 1)
    {
      [(FBAOSLogViewerDataSource *)self nextPageForReal];
    }

    else
    {
      [(FBAOSLogViewerDataSource *)self setPendingNextPageRequest:[(FBAOSLogViewerDataSource *)self pendingNextPageRequest]+ 1];
    }
  }
}

- (void)nextPageForReal
{
  [(FBAOSLogViewerDataSource *)self prepareForNextPage];

  [(FBAOSLogViewerDataSource *)self fetchNextBatch];
}

- (int64_t)numberOfLogs
{
  savedEvents = [(FBAOSLogViewerDataSource *)self savedEvents];
  v3 = [savedEvents count];

  return v3;
}

- (id)logAtIndex:(int64_t)index
{
  savedEvents = [(FBAOSLogViewerDataSource *)self savedEvents];
  v5 = [savedEvents objectAtIndexedSubscript:index];
  fba_toString = [v5 fba_toString];

  return fba_toString;
}

- (BOOL)hasMoreLogs
{
  oldestEventTimestamp = [(FBAOSLogViewerDataSource *)self oldestEventTimestamp];

  if (!oldestEventTimestamp)
  {
    return 1;
  }

  loggerLib = [(FBAOSLogViewerDataSource *)self loggerLib];

  if (!loggerLib)
  {
    return 0;
  }

  oldestEventTimestamp2 = [(FBAOSLogViewerDataSource *)self oldestEventTimestamp];
  loggerLib2 = [(FBAOSLogViewerDataSource *)self loggerLib];
  endDate = [loggerLib2 endDate];
  v8 = [oldestEventTimestamp2 compare:endDate] != 0;

  return v8;
}

- (void)prepareForNextPage
{
  [(FBAOSLogViewerDataSource *)self setEventCountForCurrentPage:0];
  [(FBAOSLogViewerDataSource *)self setNumberOfEmptyFetches:0];

  [(FBAOSLogViewerDataSource *)self prepareForNextDateRangeFetch];
}

- (void)prepareForNextDateRangeFetch
{
  [(FBAOSLogViewerDataSource *)self setNumberOfEventsInLastFetch:0];
  [(FBAOSLogViewerDataSource *)self setGotDelegateCallbackInLastFetch:0];

  [(FBAOSLogViewerDataSource *)self setFetchWatchdog:0];
}

- (BOOL)lastFetchReturnedZeroEvents
{
  if ([(FBAOSLogViewerDataSource *)self numberOfEventsInLastFetch])
  {
    return 0;
  }

  return [(FBAOSLogViewerDataSource *)self gotDelegateCallbackInLastFetch];
}

- (void)fetchNextBatch
{
  v3 = sub_10000A588(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100092400(self);
  }

  oldestEventTimestamp = [(FBAOSLogViewerDataSource *)self oldestEventTimestamp];
  v5 = oldestEventTimestamp;
  if (oldestEventTimestamp)
  {
    startDate = oldestEventTimestamp;
  }

  else
  {
    loggerLib = [(FBAOSLogViewerDataSource *)self loggerLib];
    startDate = [loggerLib startDate];
  }

  numberOfEmptyFetches = [(FBAOSLogViewerDataSource *)self numberOfEmptyFetches];
  v9 = 10.0;
  if (numberOfEmptyFetches >= 2)
  {
    v9 = fmin(__exp10([(FBAOSLogViewerDataSource *)self numberOfEmptyFetches]), 1.79769313e308);
  }

  v10 = sub_10000A588(numberOfEmptyFetches);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v16 = 134217984;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Time delta: [%f]", &v16, 0xCu);
  }

  v11 = [startDate dateByAddingTimeInterval:v9];
  v12 = sub_10000A588(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    fba_toString = [startDate fba_toString];
    fba_toString2 = [v11 fba_toString];
    v16 = 138543618;
    v17 = *&fba_toString;
    v18 = 2114;
    v19 = fba_toString2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "start date: [%{public}@]  end date: [%{public}@] ", &v16, 0x16u);
  }

  [(FBAOSLogViewerDataSource *)self prepareForNextDateRangeFetch];
  loggerLib2 = [(FBAOSLogViewerDataSource *)self loggerLib];
  [loggerLib2 fetchFromStartDate:startDate toEndDate:v11];
}

- (id)loggerLibWithArchive:(id)archive pageSize:(unint64_t)size
{
  archiveCopy = archive;
  v6 = objc_alloc_init(OSLogPersistence);
  [v6 setOptions:1];
  [v6 setBatchSize:size];
  [v6 setLogArchive:archiveCopy];

  v8 = sub_10000A588(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    archiveVersion = [v6 archiveVersion];
    startDate = [v6 startDate];
    fba_toString = [startDate fba_toString];
    endDate = [v6 endDate];
    fba_toString2 = [endDate fba_toString];
    v15 = 134218498;
    v16 = archiveVersion;
    v17 = 2114;
    v18 = fba_toString;
    v19 = 2114;
    v20 = fba_toString2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Log archive version is [%lu] start date: [%{public}@] end date [%{public}@]", &v15, 0x20u);
  }

  return v6;
}

- (BOOL)shouldContinue
{
  if ([(FBAOSLogViewerDataSource *)self isCurrentPageComplete])
  {
    return 0;
  }

  return [(FBAOSLogViewerDataSource *)self hasMoreLogs];
}

- (BOOL)persistence:(id)persistence results:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  v9 = sub_10000A588([(FBAOSLogViewerDataSource *)self setGotDelegateCallbackInLastFetch:1]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100092484();
  }

  v10 = [resultsCopy count];
  if (v10)
  {
    if (!errorCopy)
    {
      fetchErrorBlock2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(resultsCopy, "count")}];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v15 = resultsCopy;
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
LABEL_14:
        v19 = 0;
        while (1)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * v19);
          eventCountForCurrentPage = [(FBAOSLogViewerDataSource *)self eventCountForCurrentPage];
          v22 = [fetchErrorBlock2 count]+ eventCountForCurrentPage;
          if (v22 >= [(FBAOSLogViewerDataSource *)self pageSize])
          {
            break;
          }

          machTimestamp = [v20 machTimestamp];
          if (machTimestamp > [(FBAOSLogViewerDataSource *)self oldestEventMachTime])
          {
            [fetchErrorBlock2 addObject:v20];
            -[FBAOSLogViewerDataSource setOldestEventMachTime:](self, "setOldestEventMachTime:", [v20 machTimestamp]);
            timestamp = [v20 timestamp];
            [(FBAOSLogViewerDataSource *)self setOldestEventTimestamp:timestamp];
          }

          if (v17 == ++v19)
          {
            v17 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
            if (v17)
            {
              goto LABEL_14;
            }

            break;
          }
        }
      }

      [(FBAOSLogViewerDataSource *)self setEventCountForCurrentPage:[fetchErrorBlock2 count]+ [(FBAOSLogViewerDataSource *)self eventCountForCurrentPage]];
      v25 = sub_10000A588([(FBAOSLogViewerDataSource *)self setNumberOfEventsInLastFetch:[fetchErrorBlock2 count]]);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_100092530(fetchErrorBlock2);
      }

      savedEvents = [(FBAOSLogViewerDataSource *)self savedEvents];
      v27 = [fetchErrorBlock2 copy];
      [savedEvents addObjectsFromArray:v27];

      shouldContinue = [(FBAOSLogViewerDataSource *)self shouldContinue];
      goto LABEL_25;
    }

    v11 = sub_10000A588(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000924B8(errorCopy, v11);
    }

    fetchErrorBlock = [(FBAOSLogViewerDataSource *)self fetchErrorBlock];

    if (!fetchErrorBlock)
    {
      shouldContinue = 0;
      goto LABEL_26;
    }

    fetchErrorBlock2 = [(FBAOSLogViewerDataSource *)self fetchErrorBlock];
    (fetchErrorBlock2[2].isa)(fetchErrorBlock2, errorCopy);
  }

  else
  {
    fetchErrorBlock2 = sub_10000A588(0);
    if (os_log_type_enabled(fetchErrorBlock2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, fetchErrorBlock2, OS_LOG_TYPE_DEFAULT, "No more results, done", buf, 2u);
    }
  }

  shouldContinue = 0;
LABEL_25:

LABEL_26:
  return shouldContinue;
}

- (void)persistenceDidFinishReadingForStartDate:(id)date endDate:(id)endDate
{
  if ([(FBAOSLogViewerDataSource *)self gotDelegateCallbackInLastFetch:date]&& ![(FBAOSLogViewerDataSource *)self lastFetchReturnedZeroEvents])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(FBAOSLogViewerDataSource *)self numberOfEmptyFetches]+ 1;
  }

  [(FBAOSLogViewerDataSource *)self setNumberOfEmptyFetches:v5];
  fetchWatchdog = [(FBAOSLogViewerDataSource *)self fetchWatchdog];
  [(FBAOSLogViewerDataSource *)self setFetchWatchdog:fetchWatchdog + 1];
  if (fetchWatchdog < 1000)
  {
    shouldContinue = [(FBAOSLogViewerDataSource *)self shouldContinue];
    v11 = shouldContinue;
    v12 = sub_10000A588(shouldContinue);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v13)
      {
        sub_1000926B0();
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000B31C;
      block[3] = &unk_1000DE430;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      if (v13)
      {
        sub_1000925B4();
      }

      pageFetchCompletion = [(FBAOSLogViewerDataSource *)self pageFetchCompletion];

      if (pageFetchCompletion)
      {
        v16 = sub_10000A588(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_1000925E8(self);
        }

        pageFetchCompletion2 = [(FBAOSLogViewerDataSource *)self pageFetchCompletion];
        (pageFetchCompletion2)[2](pageFetchCompletion2, self);
      }

      pendingNextPageRequest = [(FBAOSLogViewerDataSource *)self pendingNextPageRequest];
      if (pendingNextPageRequest >= 1)
      {
        v19 = sub_10000A588(pendingNextPageRequest);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_10009267C();
        }

        [(FBAOSLogViewerDataSource *)self setPendingNextPageRequest:[(FBAOSLogViewerDataSource *)self pendingNextPageRequest]- 1];
        [(FBAOSLogViewerDataSource *)self nextPageForReal];
      }
    }
  }

  else
  {
    v7 = sub_10000A588([(FBAOSLogViewerDataSource *)self setFoundCorruptDate:1]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000926E4();
    }

    fetchErrorBlock = [(FBAOSLogViewerDataSource *)self fetchErrorBlock];
    v9 = sub_10002791C(-1008);
    (fetchErrorBlock)[2](fetchErrorBlock, v9);
  }
}

@end