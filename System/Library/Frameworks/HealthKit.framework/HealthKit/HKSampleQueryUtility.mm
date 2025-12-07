@interface HKSampleQueryUtility
@end

@implementation HKSampleQueryUtility

void __57___HKSampleQueryUtility_setupQueryWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v15 = v13;
  if (v13)
  {
    _HKInitializeLogging(v13, v14);
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      __57___HKSampleQueryUtility_setupQueryWithCompletionHandler___block_invoke_cold_1();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained handleAddedObjects:v10 deletedObjects:v11 queryAnchor:v12 error:v15 resultsHandler:*(a1 + 40)];
}

void __42___HKSampleQueryUtility_setUpdateHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    if (v13)
    {
      _HKInitializeLogging(WeakRetained, v15);
      if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
      {
        __42___HKSampleQueryUtility_setUpdateHandler___block_invoke_cold_1();
      }
    }

    [v16 handleAddedObjects:v10 deletedObjects:v11 queryAnchor:v12 error:v13 resultsHandler:v16[8]];
  }
}

uint64_t __92___HKSampleQueryUtility_handleAddedObjects_deletedObjects_queryAnchor_error_resultsHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 UUID];
  v5 = [v3 UUID];

  v6 = [v4 isEqual:v5];
  return v6;
}

@end