@interface TRIMapsBucketIdChangeProcessor
+ (void)processMapsBucketIdChangeIfNecessaryForBucketId:(id)id withServerContext:(id)context withTaskQueue:(id)queue;
@end

@implementation TRIMapsBucketIdChangeProcessor

+ (void)processMapsBucketIdChangeIfNecessaryForBucketId:(id)id withServerContext:(id)context withTaskQueue:(id)queue
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  contextCopy = context;
  queueCopy = queue;
  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = idCopy;
    _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_INFO, "Maps: bucket id: %@", &v19, 0xCu);
  }

  keyValueStore = [contextCopy keyValueStore];
  v12 = [TRIPersistentUserSettings settingsWithKeyValueStore:keyValueStore];

  persistedMapsBucketId = [v12 persistedMapsBucketId];
  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138412290;
    v20 = persistedMapsBucketId;
    _os_log_debug_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEBUG, "Persisted Maps Bucket Id: %@", &v19, 0xCu);
  }

  [idCopy unsignedIntegerValue];
  unsignedIntValue = [persistedMapsBucketId unsignedIntValue];
  if (unsignedIntValue != [idCopy unsignedIntValue])
  {
    [v12 persistMapsBucketId:idCopy];
    [TRISystemConfiguration updateSystemInfoUsingContext:contextCopy];
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "TRIDServer: Maps Bucket ID changed, queueing retargeting", &v19, 2u);
    }

    v17 = +[TRIRetargetAllTask task];
    v18 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
    [queueCopy addTask:v17 options:v18];
  }
}

@end