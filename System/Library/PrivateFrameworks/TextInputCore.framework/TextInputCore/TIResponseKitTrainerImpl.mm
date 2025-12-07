@interface TIResponseKitTrainerImpl
+ (id)sharedTrainer;
- (BOOL)moveLanguageModelBundlesFromTemporaryDirectory:(id)directory toDestination:(id)destination error:(id *)error;
- (id)_init;
- (void)performTrainingForClient:(id)client withCompletionHandler:(id)handler;
@end

@implementation TIResponseKitTrainerImpl

- (void)performTrainingForClient:(id)client withCompletionHandler:(id)handler
{
  clientCopy = client;
  handlerCopy = handler;
  v6 = clientCopy;
  v7 = handlerCopy;
  TIDispatchAsync();
}

void __75__TIResponseKitTrainerImpl_performTrainingForClient_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSTemporaryDirectory();
  v4 = [v2 stringWithFormat:@"%@/%d", v3, arc4random()];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/ResponseKit"];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2734;
  v36 = __Block_byref_object_dispose__2735;
  v37 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = v33;
  obj = v33[5];
  v9 = [v7 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&obj];
  objc_storeStrong(v8 + 5, obj);

  v29 = v9;
  if (v27[3])
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __75__TIResponseKitTrainerImpl_performTrainingForClient_withCompletionHandler___block_invoke_45;
    v21 = &unk_2787337C0;
    v22 = *(a1 + 32);
    v23 = v5;
    v24 = v30;
    TIDispatchSync();
    v10 = +[TILanguageModelOfflineLearningAgent sharedLearningAgent];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__TIResponseKitTrainerImpl_performTrainingForClient_withCompletionHandler___block_invoke_2;
    v11[3] = &unk_27872F9F0;
    v15 = v30;
    v16 = &v26;
    v11[4] = *(a1 + 40);
    v12 = v23;
    v13 = v6;
    v17 = &v32;
    v14 = *(a1 + 48);
    [v10 performTaskInBackground:v11];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v32, 8);
}

void __75__TIResponseKitTrainerImpl_performTrainingForClient_withCompletionHandler___block_invoke_45(void *a1)
{
  v4 = [[TILanguageModelOfflineLearningStrategyResponseKit alloc] initWithClientIdentifier:a1[4] andDirectory:a1[5]];
  v2 = +[TILanguageModelOfflineLearningAgent sharedLearningAgent];
  [v2 performLearningIfNecessaryWithStrategy:v4 lastAdaptationTime:0.0];

  v3 = [(TILanguageModelOfflineLearningStrategyResponseKit *)v4 learningTask];
  *(*(a1[6] + 8) + 24) = [v3 isCancelled];
}

uint64_t __75__TIResponseKitTrainerImpl_performTrainingForClient_withCompletionHandler___block_invoke_2(void *a1)
{
  if ((*(*(a1[8] + 8) + 24) & 1) == 0)
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[6];
    v5 = *(a1[10] + 8);
    obj = *(v5 + 40);
    v6 = [v2 moveLanguageModelBundlesFromTemporaryDirectory:v3 toDestination:v4 error:&obj];
    objc_storeStrong((v5 + 40), obj);
    *(*(a1[9] + 8) + 24) = v6;
  }

  return (*(a1[7] + 16))();
}

- (BOOL)moveLanguageModelBundlesFromTemporaryDirectory:(id)directory toDestination:(id)destination error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  destinationCopy = destination;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v38 = destinationCopy;
  path = [destinationCopy path];
  v10 = [defaultManager fileExistsAtPath:path];

  if ((v10 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", destinationCopy, 1, 0, error), v11, v12))
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    path2 = [directoryCopy path];
    v15 = [defaultManager2 contentsOfDirectoryAtPath:path2 error:error];

    if (v15)
    {
      v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"pathExtension='lm'"];
      v36 = v15;
      v17 = [v15 filteredArrayUsingPredicate:v16];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v41;
        obj = v18;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v41 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v40 + 1) + 8 * i);
            v24 = [directoryCopy URLByAppendingPathComponent:v23];
            v25 = [v38 URLByAppendingPathComponent:v23];
            defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
            path3 = [v25 path];
            v28 = [defaultManager3 fileExistsAtPath:path3];

            if (v28)
            {
              defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
              v30 = [defaultManager4 removeItemAtURL:v25 error:error];

              if (!v30)
              {

LABEL_18:
                v34 = 0;
                v18 = obj;
                defaultManager6 = obj;
                goto LABEL_19;
              }
            }

            defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
            v32 = [defaultManager5 moveItemAtURL:v24 toURL:v25 error:error];

            if (!v32)
            {
              goto LABEL_18;
            }
          }

          v18 = obj;
          v20 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      defaultManager6 = [MEMORY[0x277CCAA00] defaultManager];
      v34 = [defaultManager6 removeItemAtURL:directoryCopy error:error];
LABEL_19:

      v15 = v36;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = TIResponseKitTrainerImpl;
  v2 = [(TIResponseKitTrainerImpl *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.companionmessagesd.ResponseKitTrainer", v3);
    v5 = _dispatchQueue;
    _dispatchQueue = v4;
  }

  return v2;
}

+ (id)sharedTrainer
{
  if (sharedTrainer_onceToken != -1)
  {
    dispatch_once(&sharedTrainer_onceToken, &__block_literal_global_2780);
  }

  v3 = sharedTrainer_instance;

  return v3;
}

uint64_t __41__TIResponseKitTrainerImpl_sharedTrainer__block_invoke()
{
  v0 = [[TIResponseKitTrainerImpl alloc] _init];
  v1 = sharedTrainer_instance;
  sharedTrainer_instance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end