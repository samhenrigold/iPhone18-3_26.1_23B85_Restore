@interface _CDFTCPInteractionDataCollectionTask
- (_CDFTCPInteractionDataCollectionTask)initWithStore:(id)store activity:(id)activity;
- (_CDFTCPInteractionDataCollectionTask)initWithStore:(id)store activity:(id)activity sessionPath:(id)path collectionDate:(id)date samplingRate:(double)rate maxBatches:(unint64_t)batches daysPerBatch:(unint64_t)batch twoWeekPeriodsInLookback:(unint64_t)self0;
- (void)_execute;
- (void)cleanup;
- (void)execute;
@end

@implementation _CDFTCPInteractionDataCollectionTask

- (_CDFTCPInteractionDataCollectionTask)initWithStore:(id)store activity:(id)activity
{
  v6 = MEMORY[0x1E695DF00];
  activityCopy = activity;
  storeCopy = store;
  date = [v6 date];
  v10 = CRIsAppleInternal();
  v11 = 1.0;
  if (!v10)
  {
    v11 = 0.0;
  }

  v12 = [(_CDFTCPInteractionDataCollectionTask *)self initWithStore:storeCopy activity:activityCopy sessionPath:@"/var/mobile/Library/CoreDuet/DataCollection/FTCPInteractions/session.archive" collectionDate:date samplingRate:1 maxBatches:7 daysPerBatch:v11 twoWeekPeriodsInLookback:2];

  return v12;
}

- (_CDFTCPInteractionDataCollectionTask)initWithStore:(id)store activity:(id)activity sessionPath:(id)path collectionDate:(id)date samplingRate:(double)rate maxBatches:(unint64_t)batches daysPerBatch:(unint64_t)batch twoWeekPeriodsInLookback:(unint64_t)self0
{
  storeCopy = store;
  activityCopy = activity;
  pathCopy = path;
  dateCopy = date;
  v37.receiver = self;
  v37.super_class = _CDFTCPInteractionDataCollectionTask;
  v22 = [(_CDFTCPInteractionDataCollectionTask *)&v37 init];
  v23 = v22;
  if (v22)
  {
    batchCopy = batch;
    objc_storeStrong(&v22->_interactionStore, store);
    objc_storeStrong(&v23->_activity, activity);
    v24 = [pathCopy copy];
    sessionPath = v23->_sessionPath;
    v23->_sessionPath = v24;

    v26 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v23->_sessionPath options:0 error:0];
    if (v26)
    {
      v36 = 0;
      v27 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v26 error:&v36];
      v28 = v36;
      if (v28)
      {
        v29 = +[_CDLogging dataCollectionChannel];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [_CDFTCPInteractionDataCollectionTask initWithStore:activity:sessionPath:collectionDate:samplingRate:maxBatches:daysPerBatch:twoWeekPeriodsInLookback:];
        }
      }
    }

    else
    {
      v27 = 0;
    }

    session = v23->_session;
    v23->_session = v27;
    v31 = v27;

    v32 = [dateCopy copy];
    collectionDate = v23->_collectionDate;
    v23->_collectionDate = v32;

    v23->_samplingRate = rate;
    v23->_maxBatches = batches;
    v23->_daysPerBatch = batchCopy;
    v23->_twoWeekPeriodsInLookback = lookback;
    v23->_deleteSessionOnCleanup = 1;
  }

  return v23;
}

- (void)execute
{
  [(_CDFTCPInteractionDataCollectionTask *)self _execute];

  [(_CDFTCPInteractionDataCollectionTask *)self cleanup];
}

- (void)_execute
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_191750000, v0, OS_LOG_TYPE_DEBUG, "Data collection for _CDFTCPInteraction task will execute %td queries against the interaction store", v1, 0xCu);
}

- (void)cleanup
{
  if ([(_CDFTCPInteractionDataCollectionTask *)self deleteSessionOnCleanup])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    sessionPath = [(_CDFTCPInteractionDataCollectionTask *)self sessionPath];
    v11 = 0;
    [defaultManager removeItemAtPath:sessionPath error:&v11];
    v5 = v11;

    if (!v5)
    {
LABEL_12:

      return;
    }

    userInfo = [v5 userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (v7)
    {
      domain = [v7 domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A798]])
      {
        code = [v7 code];

        if (code == 2)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      v10 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_CDFTCPInteractionDataCollectionTask cleanup];
      }
    }

LABEL_11:

    goto LABEL_12;
  }
}

@end