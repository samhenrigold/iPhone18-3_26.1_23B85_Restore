@interface HDCloudSyncPipelineStageContextSyncPull
- (void)main;
@end

@implementation HDCloudSyncPipelineStageContextSyncPull

- (void)main
{
  v62 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  profileType = [repository profileType];

  if (profileType == 1)
  {
    v6 = [HDCloudSyncCompoundOperation alloc];
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    v8 = [(HDCloudSyncCompoundOperation *)v6 initWithConfiguration:configuration2 cloudState:0 name:@"Pull Context Sync" continueOnSubOperationError:0];

    configuration3 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration3 repository];
    primaryCKContainer = [repository2 primaryCKContainer];

    v11 = MEMORY[0x277CBEB98];
    configuration4 = [(HDCloudSyncOperation *)self configuration];
    repository3 = [configuration4 repository];
    secondaryCKContainers = [repository3 secondaryCKContainers];
    v15 = [v11 setWithArray:secondaryCKContainers];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v53;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v53 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v52 + 1) + 8 * i);
          v22 = [HDCloudSyncPullDeviceContextOperation alloc];
          configuration5 = [(HDCloudSyncOperation *)self configuration];
          v24 = [(HDCloudSyncPullDeviceContextOperation *)v22 initWithConfiguration:configuration5 container:v21];

          [(HDCloudSyncCompoundOperation *)v8 addOperation:v24 transitionHandler:0];
        }

        v18 = [v16 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v18);
    }

    if (primaryCKContainer)
    {
      v25 = [HDCloudSyncPullDeviceContextOperation alloc];
      configuration6 = [(HDCloudSyncOperation *)self configuration];
      v27 = [(HDCloudSyncPullDeviceContextOperation *)v25 initWithConfiguration:configuration6 container:primaryCKContainer];

      [(HDCloudSyncCompoundOperation *)v8 addOperation:v27 transitionHandler:0];
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v28 = v16;
    v29 = [v28 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v49;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v49 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v48 + 1) + 8 * j);
          v34 = [HDCloudSyncPullDeviceKeyValueOperation alloc];
          configuration7 = [(HDCloudSyncOperation *)self configuration];
          v36 = [(HDCloudSyncPullDeviceKeyValueOperation *)v34 initWithConfiguration:configuration7 container:v33];

          [(HDCloudSyncCompoundOperation *)v8 addOperation:v36 transitionHandler:0];
        }

        v30 = [v28 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v30);
    }

    if (primaryCKContainer)
    {
      v37 = [HDCloudSyncPullDeviceKeyValueOperation alloc];
      configuration8 = [(HDCloudSyncOperation *)self configuration];
      v39 = [(HDCloudSyncPullDeviceKeyValueOperation *)v37 initWithConfiguration:configuration8 container:primaryCKContainer];

      [(HDCloudSyncCompoundOperation *)v8 addOperation:v39 transitionHandler:0];
    }

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __47__HDCloudSyncPipelineStageContextSyncPull_main__block_invoke;
    v47[3] = &unk_278613088;
    v47[4] = self;
    [(HDCloudSyncOperation *)v8 setOnError:v47];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __47__HDCloudSyncPipelineStageContextSyncPull_main__block_invoke_2;
    v46[3] = &unk_278613060;
    v46[4] = self;
    [(HDCloudSyncOperation *)v8 setOnSuccess:v46];
    [(HDCloudSyncCompoundOperation *)v8 start];
  }

  else
  {
    _HKInitializeLogging();
    v40 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v41 = v40;
      configuration9 = [(HDCloudSyncOperation *)self configuration];
      repository4 = [configuration9 repository];
      profile = [repository4 profile];
      *buf = 138543618;
      selfCopy = self;
      v60 = 2114;
      v61 = profile;
      _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping context sync pull stage for non-primary profile %{public}@", buf, 0x16u);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }
}

@end