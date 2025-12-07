@interface _IMDBatchFetchingMessageIndexingJob
- (BOOL)runWithCompletion:(id)completion;
- (_IMDBatchFetchingMessageIndexingJob)initWithAggregateIndexingJob:(id)job batchFetcher:(id)fetcher;
@end

@implementation _IMDBatchFetchingMessageIndexingJob

- (_IMDBatchFetchingMessageIndexingJob)initWithAggregateIndexingJob:(id)job batchFetcher:(id)fetcher
{
  jobCopy = job;
  fetcherCopy = fetcher;
  v20.receiver = self;
  v20.super_class = _IMDBatchFetchingMessageIndexingJob;
  v9 = [(_IMDBatchFetchingMessageIndexingJob *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_job, job);
    v11 = [IMDThreadSafeMessageDictionaryMapper alloc];
    v15 = objc_msgSend_timing(v10->_job, v12, v13, v14);
    v17 = objc_msgSend_initWithBatchFetcher_timingCollection_(v11, v16, fetcherCopy, v15);
    mapper = v10->_mapper;
    v10->_mapper = v17;
  }

  return v10;
}

- (BOOL)runWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = objc_msgSend_job(self, v5, v6, v7);
  v12 = objc_msgSend_timing(v8, v9, v10, v11);
  objc_msgSend_startTimingForKey_(v12, v13, @"total time for indexing messages", v14);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7BC8A94;
  aBlock[3] = &unk_1E7CBB8A8;
  aBlock[4] = self;
  v15 = _Block_copy(aBlock);
  v19 = objc_msgSend_runsOneBatch(self, v16, v17, v18);
  v23 = objc_msgSend_mapper(self, v20, v21, v22);
  v26 = v23;
  if (v19)
  {
    objc_msgSend_processOnceWithBlock_(v23, v24, v15, v25);
  }

  else
  {
    objc_msgSend_processWithBlock_(v23, v24, v15, v25);
  }

  v33 = objc_msgSend_processedAnything(self, v27, v28, v29);
  if (v33)
  {
    v34 = objc_msgSend_job(self, v30, v31, v32);
    objc_msgSend_finishWithCompletion_(v34, v35, completionCopy, v36);
  }

  return v33;
}

@end