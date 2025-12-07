@interface UAFAutoAssetProgress
+ (id)getSerialQueue;
- (UAFAutoAssetProgress)initWithAssetSetUsages:(id)usages configurationManager:(id)manager internalProgressWithStatus:(id)status;
- (void)finished:(id)finished withStatus:(unint64_t)status withError:(id)error;
- (void)finishedOutOfSpace:(id)space;
- (void)progress:(id)progress;
- (void)reportStatus:(unint64_t)status;
- (void)started:(id)started;
- (void)summarize;
- (void)updateFinished:(id)finished;
@end

@implementation UAFAutoAssetProgress

+ (id)getSerialQueue
{
  if (_MergedGlobals_8 != -1)
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_8);
  }

  v3 = qword_1ED7D1130;

  return v3;
}

void __38__UAFAutoAssetProgress_getSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFAutoAssetProgress.Serial", v2);
  v1 = qword_1ED7D1130;
  qword_1ED7D1130 = v0;
}

- (UAFAutoAssetProgress)initWithAssetSetUsages:(id)usages configurationManager:(id)manager internalProgressWithStatus:(id)status
{
  v51 = *MEMORY[0x1E69E9840];
  usagesCopy = usages;
  managerCopy = manager;
  statusCopy = status;
  v45.receiver = self;
  v45.super_class = UAFAutoAssetProgress;
  v11 = [(UAFAutoAssetProgress *)&v45 init];
  if (v11)
  {
    v39 = statusCopy;
    v12 = MEMORY[0x1E696AEC0];
    allKeys = [usagesCopy allKeys];
    v14 = [v12 stringWithFormat:@"%@", allKeys];
    v15 = *(v11 + 2);
    *(v11 + 2) = v14;

    v11[8] = 0;
    *(v11 + 24) = 0u;
    *(v11 + 40) = 0u;
    *(v11 + 7) = 0;
    v16 = objc_opt_new();
    v17 = *(v11 + 8);
    *(v11 + 8) = v16;

    v18 = objc_opt_new();
    v19 = *(v11 + 9);
    *(v11 + 9) = v18;

    v20 = objc_opt_new();
    v21 = *(v11 + 10);
    *(v11 + 10) = v20;

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = usagesCopy;
    v22 = usagesCopy;
    v23 = [v22 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (!v23)
    {
      goto LABEL_18;
    }

    v24 = v23;
    v25 = *v42;
    while (1)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v42 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v41 + 1) + 8 * i);
        v28 = [managerCopy getAssetSet:v27];
        v29 = v28;
        if (!v28)
        {
          v33 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v47 = "[UAFAutoAssetProgress initWithAssetSetUsages:configurationManager:internalProgressWithStatus:]";
            v48 = 2114;
            v49 = v27;
            _os_log_error_impl(&dword_1BCF2C000, v33, OS_LOG_TYPE_ERROR, "%s Could get not get configuration for for asset set %{public}@", buf, 0x16u);
          }

          v31 = MEMORY[0x1E696AD98];
          v32 = 0;
          goto LABEL_13;
        }

        autoAssetType = [v28 autoAssetType];

        if (autoAssetType)
        {
          v31 = MEMORY[0x1E696AD98];
          v32 = 1;
LABEL_13:
          v34 = [v31 numberWithUnsignedInteger:v32];
          [*(v11 + 8) setObject:v34 forKeyedSubscript:v27];
          goto LABEL_16;
        }

        v34 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v47 = "[UAFAutoAssetProgress initWithAssetSetUsages:configurationManager:internalProgressWithStatus:]";
          v48 = 2114;
          v49 = v27;
          _os_log_debug_impl(&dword_1BCF2C000, v34, OS_LOG_TYPE_DEBUG, "%s No auto asset type defined for %{public}@", buf, 0x16u);
        }

LABEL_16:
      }

      v24 = [v22 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (!v24)
      {
LABEL_18:

        statusCopy = v39;
        v35 = MEMORY[0x1BFB33950](v39);
        v36 = *(v11 + 11);
        *(v11 + 11) = v35;

        v37 = v11;
        usagesCopy = v40;
        break;
      }
    }
  }

  return v11;
}

- (void)reportStatus:(unint64_t)status
{
  v37 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v5 = [(NSMutableDictionary *)self->_statuses count];
  if (v5 != [(NSMutableDictionary *)self->_autoAssetSets count])
  {
    statuses = self->_statuses;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __37__UAFAutoAssetProgress_reportStatus___block_invoke;
    v18[3] = &unk_1E7FFDE48;
    v18[4] = self;
    v18[5] = &v19;
    [(NSMutableDictionary *)statuses enumerateKeysAndObjectsUsingBlock:v18];
  }

  if (status & 0xFFFFFFFFFFFFFFFELL) == 4 || (v20[3])
  {
    totalWork = self->_totalWork;
    completedWork = self->_completedWork;
  }

  else
  {
    totalWork = 0;
    completedWork = 0;
  }

  if (self->_reportedStatus == status && self->_reportedCompletedWork == completedWork && self->_reportedTotalWork == totalWork)
  {
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      reportedTotalWork = self->_reportedTotalWork;
      reportedCompletedWork = self->_reportedCompletedWork;
      *buf = 136316418;
      v26 = "[UAFAutoAssetProgress reportStatus:]";
      v27 = 2048;
      v28 = reportedCompletedWork;
      v29 = 2048;
      v30 = completedWork;
      v31 = 2048;
      v32 = reportedTotalWork;
      v33 = 2048;
      v34 = totalWork;
      v35 = 1024;
      statusCopy = status;
      _os_log_debug_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEBUG, "%s Progress and status has not changed, suppressing update: %llu/%llu %llu/%llu %u", buf, 0x3Au);
    }

    goto LABEL_16;
  }

  v12 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    name = self->_name;
    v14 = UAFSubscriptionDownloadStatusDescription(status);
    *buf = 136316162;
    v26 = "[UAFAutoAssetProgress reportStatus:]";
    v27 = 2114;
    v28 = name;
    v29 = 2048;
    v30 = completedWork;
    v31 = 2048;
    v32 = totalWork;
    v33 = 2114;
    v34 = v14;
    _os_log_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_DEFAULT, "%s Progress for %{public}@: %llu / %llu. Status: %{public}@", buf, 0x34u);
  }

  self->_reportedTotalWork = totalWork;
  self->_reportedCompletedWork = completedWork;
  self->_reportedStatus = status;
  if (self->_internalProgressCompletion)
  {
    v23[0] = @"statuses";
    v15 = [(NSMutableDictionary *)self->_statuses copy];
    v24[0] = v15;
    v23[1] = @"autoAssetSets";
    v16 = [(NSMutableDictionary *)self->_autoAssetSets copy];
    v24[1] = v16;
    v23[2] = @"errors";
    v17 = [(NSMutableDictionary *)self->_errors copy];
    v24[2] = v17;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

    (*(self->_internalProgressCompletion + 2))(0.0);
LABEL_16:
  }

  _Block_object_dispose(&v19, 8);
}

void __37__UAFAutoAssetProgress_reportStatus___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 unsignedIntegerValue] <= 3)
  {
    v7 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v8];

    if (!v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

- (void)summarize
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [UAFAssetSetManager coalesceDownloadStatus:self->_statuses];
  if (![(NSMutableDictionary *)self->_statuses count]&& self->_updateIsFinished)
  {
    v3 = 4;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_autoAssetSets;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v20 = v3;
    v7 = 0;
    v8 = 0;
    v9 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_autoAssetSets objectForKeyedSubscript:v11];
        downloadProgress = [v12 downloadProgress];

        if (downloadProgress)
        {
          v14 = [(NSMutableDictionary *)self->_autoAssetSets objectForKeyedSubscript:v11];
          downloadProgress2 = [v14 downloadProgress];
          v7 += [downloadProgress2 totalExpectedBytes];

          v16 = [(NSMutableDictionary *)self->_autoAssetSets objectForKeyedSubscript:v11];
          downloadProgress3 = [v16 downloadProgress];
          v8 += [downloadProgress3 totalWrittenBytes];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);

    p_totalWork = &self->_totalWork;
    if (v7 > self->_totalWork)
    {
      *p_totalWork = v7;
    }

    p_completedWork = &self->_completedWork;
    v3 = v20;
    if (v8 > self->_completedWork)
    {
      *p_completedWork = v8;
    }
  }

  else
  {

    p_totalWork = &self->_totalWork;
    p_completedWork = &self->_completedWork;
  }

  if (v3 == 4)
  {
    *p_completedWork = *p_totalWork;
  }

  [(UAFAutoAssetProgress *)self reportStatus:v3];
}

- (void)started:(id)started
{
  startedCopy = started;
  v5 = +[UAFAutoAssetProgress getSerialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__UAFAutoAssetProgress_started___block_invoke;
  v7[3] = &unk_1E7FFD098;
  v7[4] = self;
  v8 = startedCopy;
  v6 = startedCopy;
  dispatch_async(v5, v7);
}

uint64_t __32__UAFAutoAssetProgress_started___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:2];
  v3 = [*(a1 + 32) statuses];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

  v4 = *(a1 + 32);

  return [v4 summarize];
}

- (void)progress:(id)progress
{
  progressCopy = progress;
  v5 = +[UAFAutoAssetProgress getSerialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__UAFAutoAssetProgress_progress___block_invoke;
  v7[3] = &unk_1E7FFD098;
  v7[4] = self;
  v8 = progressCopy;
  v6 = progressCopy;
  dispatch_async(v5, v7);
}

void __33__UAFAutoAssetProgress_progress___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) statuses];
  v3 = [*(a1 + 40) assetSetIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) autoAssetSets];
    v7 = [*(a1 + 40) assetSetIdentifier];
    [v6 setObject:v5 forKeyedSubscript:v7];

    v8 = [*(a1 + 40) downloadProgress];

    if (v8)
    {
      v9 = [*(a1 + 40) downloadProgress];
      LOBYTE(v8) = [v9 isStalled];
    }

    v10 = [*(a1 + 32) statuses];
    v11 = [*(a1 + 40) assetSetIdentifier];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = [v12 unsignedIntegerValue];

    if (v13 == 3)
    {
      if ((v8 & 1) == 0)
      {
        v14 = 2;
        goto LABEL_13;
      }
    }

    else if (v13 == 2 && (v8 & 1) != 0)
    {
      v14 = 3;
LABEL_13:
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
      v17 = [*(a1 + 32) statuses];
      v18 = [*(a1 + 40) assetSetIdentifier];
      [v17 setObject:v16 forKeyedSubscript:v18];
    }

    v19 = *(a1 + 32);

    [v19 summarize];
    return;
  }

  v15 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v20 = [*(a1 + 40) assetSetIdentifier];
    v21 = 136315394;
    v22 = "[UAFAutoAssetProgress progress:]_block_invoke";
    v23 = 2114;
    v24 = v20;
    _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, "%s Received progress for unknown auto asset set %{public}@", &v21, 0x16u);
  }
}

- (void)finished:(id)finished withStatus:(unint64_t)status withError:(id)error
{
  finishedCopy = finished;
  errorCopy = error;
  v10 = +[UAFAutoAssetProgress getSerialQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__UAFAutoAssetProgress_finished_withStatus_withError___block_invoke;
  v13[3] = &unk_1E7FFD968;
  v13[4] = self;
  v14 = finishedCopy;
  v15 = errorCopy;
  statusCopy = status;
  v11 = errorCopy;
  v12 = finishedCopy;
  dispatch_async(v10, v13);
}

void __54__UAFAutoAssetProgress_finished_withStatus_withError___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) statuses];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = [*(a1 + 32) errors];
      [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];
    }

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
    v7 = [*(a1 + 32) statuses];
    [v7 setObject:v6 forKeyedSubscript:*(a1 + 40)];

    v8 = *(a1 + 32);

    [v8 summarize];
  }

  else
  {
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 136315394;
      v12 = "[UAFAutoAssetProgress finished:withStatus:withError:]_block_invoke";
      v13 = 2114;
      v14 = v10;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Received progress for unknown auto asset set %{public}@", &v11, 0x16u);
    }
  }
}

- (void)updateFinished:(id)finished
{
  finishedCopy = finished;
  v5 = +[UAFAutoAssetProgress getSerialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__UAFAutoAssetProgress_updateFinished___block_invoke;
  v7[3] = &unk_1E7FFD5A8;
  v7[4] = self;
  v8 = finishedCopy;
  v6 = finishedCopy;
  dispatch_async(v5, v7);
}

uint64_t __39__UAFAutoAssetProgress_updateFinished___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUpdateIsFinished:1];
  [*(a1 + 32) summarize];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)finishedOutOfSpace:(id)space
{
  spaceCopy = space;
  v5 = +[UAFAutoAssetProgress getSerialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__UAFAutoAssetProgress_finishedOutOfSpace___block_invoke;
  v7[3] = &unk_1E7FFD098;
  v7[4] = self;
  v8 = spaceCopy;
  v6 = spaceCopy;
  dispatch_async(v5, v7);
}

void __43__UAFAutoAssetProgress_finishedOutOfSpace___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) statuses];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:5];
    v5 = [*(a1 + 32) statuses];
    [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];

    v6 = *(a1 + 32);

    [v6 summarize];
  }

  else
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = 136315394;
      v10 = "[UAFAutoAssetProgress finishedOutOfSpace:]_block_invoke";
      v11 = 2114;
      v12 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Received progress for unknown auto asset set %{public}@", &v9, 0x16u);
    }
  }
}

@end