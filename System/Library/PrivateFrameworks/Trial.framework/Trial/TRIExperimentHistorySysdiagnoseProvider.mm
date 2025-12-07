@interface TRIExperimentHistorySysdiagnoseProvider
+ (id)defaultProvider;
- (id)_allHistoryRecordsWithError:(id *)error;
- (id)_experimentHistoryRecordsForEnvironment:(int)environment error:(id *)error;
- (id)initIncompleteProvider;
- (id)sysdiagnoseLinesWithError:(id *)error;
@end

@implementation TRIExperimentHistorySysdiagnoseProvider

- (id)initIncompleteProvider
{
  v3.receiver = self;
  v3.super_class = TRIExperimentHistorySysdiagnoseProvider;
  return [(TRIExperimentHistorySysdiagnoseProvider *)&v3 init];
}

+ (id)defaultProvider
{
  initIncompleteProvider = [[TRIExperimentHistorySysdiagnoseProvider alloc] initIncompleteProvider];
  objc_initWeak(&location, initIncompleteProvider);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __58__TRIExperimentHistorySysdiagnoseProvider_defaultProvider__block_invoke;
  v9 = &unk_27885EAB0;
  objc_copyWeak(&v10, &location);
  v3 = MEMORY[0x2318F2490](&v6);
  v4 = [TRIAllocationStatus syncProxyWithErrorHandler:v3, v6, v7, v8, v9];
  [initIncompleteProvider setSyncStatusProvider:v4];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return initIncompleteProvider;
}

void __58__TRIExperimentHistorySysdiagnoseProvider_defaultProvider__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setXpcError:v5];
  }
}

- (id)sysdiagnoseLinesWithError:(id *)error
{
  v3 = [(TRIExperimentHistorySysdiagnoseProvider *)self _allHistoryRecordsWithError:error];
  if (v3)
  {
    v4 = [TRISysdiagnoseOutputFormatter formatRecords:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_allHistoryRecordsWithError:(id *)error
{
  v5 = [(TRIExperimentHistorySysdiagnoseProvider *)self _experimentHistoryRecordsForEnvironment:0 error:error];
  if (!v5)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v6 = [(TRIExperimentHistorySysdiagnoseProvider *)self _experimentHistoryRecordsForEnvironment:2 error:error];
  if (v6)
  {
    v7 = [(TRIExperimentHistorySysdiagnoseProvider *)self _experimentHistoryRecordsForEnvironment:3 error:error];
    if (!v7)
    {
      v10 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v8 = [(TRIExperimentHistorySysdiagnoseProvider *)self _experimentHistoryRecordsForEnvironment:4 error:error];
    if (!v8)
    {
      goto LABEL_11;
    }

    xpcError = [(TRIExperimentHistorySysdiagnoseProvider *)self xpcError];

    if (!xpcError)
    {
      v11 = objc_opt_new();
      [v11 addObjectsFromArray:v5];
      [v11 addObjectsFromArray:v6];
      [v11 addObjectsFromArray:v7];
      [v11 addObjectsFromArray:v8];
      v10 = [v11 copy];

      goto LABEL_13;
    }

    if (error)
    {
      [(TRIExperimentHistorySysdiagnoseProvider *)self xpcError];
      *error = v10 = 0;
    }

    else
    {
LABEL_11:
      v10 = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

  v10 = 0;
LABEL_15:

LABEL_16:

  return v10;
}

- (id)_experimentHistoryRecordsForEnvironment:(int)environment error:(id *)error
{
  v5 = *&environment;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = MEMORY[0x277CBEBF8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  syncStatusProvider = [(TRIExperimentHistorySysdiagnoseProvider *)self syncStatusProvider];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__TRIExperimentHistorySysdiagnoseProvider__experimentHistoryRecordsForEnvironment_error___block_invoke;
  v10[3] = &unk_27885EAD8;
  v10[4] = &v11;
  v10[5] = &v17;
  [syncStatusProvider experimentHistoryRecordsWithLimit:0x7FFFFFFFFFFFFFFFLL newerThanDate:distantPast deploymentEnvironment:v5 completion:v10];

  if (error)
  {
    *error = v12[5];
  }

  v8 = v18[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __89__TRIExperimentHistorySysdiagnoseProvider__experimentHistoryRecordsForEnvironment_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v11 = a5;
  if (v11)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a5);
    v8 = 0;
  }

  else
  {
    v8 = [a3 copy];
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

@end