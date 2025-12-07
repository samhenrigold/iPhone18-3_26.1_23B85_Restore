@interface HDCloudSyncPipelineStageReset
- (HDCloudSyncResetOperation)_resetOperationForContainer:(int)container primary:;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageReset

- (void)main
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [HDCloudSyncCompoundOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cloudState = [(HDCloudSyncOperation *)self cloudState];
  v6 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:configuration cloudState:cloudState name:@"Reset All Containers" continueOnSubOperationError:1];

  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  primaryCKContainer = [repository primaryCKContainer];
  v10 = [(HDCloudSyncPipelineStageReset *)self _resetOperationForContainer:primaryCKContainer primary:1];

  [(HDCloudSyncCompoundOperation *)v6 addOperation:v10 transitionHandler:0];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  configuration3 = [(HDCloudSyncOperation *)self configuration];
  repository2 = [configuration3 repository];
  secondaryCKContainers = [repository2 secondaryCKContainers];

  v14 = [secondaryCKContainers countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(secondaryCKContainers);
        }

        v18 = [(HDCloudSyncPipelineStageReset *)self _resetOperationForContainer:0 primary:?];
        [(HDCloudSyncCompoundOperation *)v6 addOperation:v18 transitionHandler:0];

        ++v17;
      }

      while (v15 != v17);
      v15 = [secondaryCKContainers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  [(HDCloudSyncOperation *)self delegateToOperation:v6];
}

- (HDCloudSyncResetOperation)_resetOperationForContainer:(int)container primary:
{
  if (self)
  {
    v5 = a2;
    v6 = [HDCloudSyncResetOperation alloc];
    configuration = [self configuration];
    cloudState = [self cloudState];
    v9 = [(HDCloudSyncResetOperation *)v6 initWithConfiguration:configuration cloudState:cloudState container:v5];

    if (container)
    {
      operationIgnoringErrors = v9;
    }

    else
    {
      operationIgnoringErrors = [(HDCloudSyncOperation *)v9 operationIgnoringErrors];
    }

    v11 = operationIgnoringErrors;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end