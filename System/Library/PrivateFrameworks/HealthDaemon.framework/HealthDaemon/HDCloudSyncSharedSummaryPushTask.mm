@interface HDCloudSyncSharedSummaryPushTask
- (BOOL)combineWithTask:(id)task;
- (id)pipelineForRepository:(id)repository;
- (void)didFailWithErrors:(id)errors;
- (void)didFinishWithSuccess;
@end

@implementation HDCloudSyncSharedSummaryPushTask

- (id)pipelineForRepository:(id)repository
{
  repositoryCopy = repository;
  v5 = [HDCloudSyncPipeline alloc];
  context = [(HDCloudSyncManagerRepositoryTask *)self context];
  accessibilityAssertion = [(HDCloudSyncManagerPipelineTask *)self accessibilityAssertion];
  manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
  queue = [manager queue];
  v10 = [(HDCloudSyncPipeline *)v5 initForContext:context repository:repositoryCopy accessibilityAssertion:accessibilityAssertion queue:queue];

  v11 = [HDCloudSyncPipelineStageFetchAndUpdateCache alloc];
  operationConfiguration = [v10 operationConfiguration];
  v13 = [(HDCloudSyncPipelineStage *)v11 initWithConfiguration:operationConfiguration cloudState:0];
  [v10 addStage:v13];

  v14 = [HDCloudSyncPipelineStageSynchronize alloc];
  operationConfiguration2 = [v10 operationConfiguration];
  v16 = [(HDCloudSyncPipelineStage *)v14 initWithConfiguration:operationConfiguration2 cloudState:0];
  [v10 addStage:v16];

  v17 = [HDCloudSyncPipelineStageSharedSummarySynchronizeSharingEntryState alloc];
  operationConfiguration3 = [v10 operationConfiguration];
  v19 = [(HDCloudSyncPipelineStage *)v17 initWithConfiguration:operationConfiguration3 cloudState:0];
  [v10 addStage:v19];

  v20 = [HDCloudSyncPipelineStageSharedSummaryPush alloc];
  operationConfiguration4 = [v10 operationConfiguration];
  v22 = [(HDCloudSyncPipelineStage *)v20 initWithConfiguration:operationConfiguration4 cloudState:0];
  [v10 addStage:v22];

  return v10;
}

- (void)didFinishWithSuccess
{
  v14 = *MEMORY[0x277D85DE8];
  manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
  [manager updateErrorRequiringUserAction:0];

  [(HDCloudSyncManagerPipelineTask *)self callCompletionWithSuccess:1 error:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  mirroringTasks = [(HDCloudSyncManagerTask *)self mirroringTasks];
  v5 = [mirroringTasks countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(mirroringTasks);
        }

        [*(*(&v9 + 1) + 8 * v8++) didFinishWithSuccess];
      }

      while (v6 != v8);
      v6 = [mirroringTasks countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)didFailWithErrors:(id)errors
{
  v18 = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
  firstObject = [errorsCopy firstObject];
  [manager updateErrorRequiringUserAction:firstObject];

  firstObject2 = [errorsCopy firstObject];
  [(HDCloudSyncManagerPipelineTask *)self callCompletionWithSuccess:0 error:firstObject2];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  mirroringTasks = [(HDCloudSyncManagerTask *)self mirroringTasks];
  v9 = [mirroringTasks countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(mirroringTasks);
        }

        [*(*(&v13 + 1) + 8 * v12++) didFailWithErrors:errorsCopy];
      }

      while (v10 != v12);
      v10 = [mirroringTasks countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (BOOL)combineWithTask:(id)task
{
  taskCopy = task;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HDCloudSyncManagerRepositoryTask context](self, "context"), v5 = objc_claimAutoreleasedReturnValue(), [taskCopy context], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEquivalent:", v6), v6, v5, v7))
  {
    [taskCopy mirrorTask:self];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end