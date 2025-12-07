@interface INUpcomingMediaManager
+ (INUpcomingMediaManager)sharedManager;
+ (id)mediaQueue;
- (INUpcomingMediaManager)initWithSearchableIndex:(id)index;
- (id)keyWithMediaItemTypeName:(id)name bundleId:(id)id;
- (int64_t)_predictionModeForBundleId:(id)id type:(int64_t)type error:(id *)error;
- (void)_replaceMediaIntents:(id)intents forBundleIdentifier:(id)identifier;
- (void)_setSuggestedMediaIntents:(id)intents forBundleIdentifier:(id)identifier;
- (void)setPredictionMode:(INUpcomingMediaPredictionMode)mode forType:(INMediaItemType)type;
@end

@implementation INUpcomingMediaManager

- (id)keyWithMediaItemTypeName:(id)name bundleId:(id)id
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = id;
  v11[1] = name;
  v5 = MEMORY[0x1E695DEC8];
  idCopy = id;
  nameCopy = name;
  v8 = [v5 arrayWithObjects:v11 count:2];

  v9 = [v8 componentsJoinedByString:@"-"];

  return v9;
}

- (int64_t)_predictionModeForBundleId:(id)id type:(int64_t)type error:(id *)error
{
  idCopy = id;
  if ((type - 1) > 0x13)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = *(&off_1E7285F00 + type - 1);
  }

  v9 = v8;
  v10 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Intents.UpcomingMediaManager"];
  v11 = [(INUpcomingMediaManager *)self keyWithMediaItemTypeName:v9 bundleId:idCopy];

  v12 = [v10 integerForKey:v11];
  return v12;
}

- (void)setPredictionMode:(INUpcomingMediaPredictionMode)mode forType:(INMediaItemType)type
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = _INVCVoiceShortcutClient();
  if (v6)
  {
    if ((type - 1) > 0x13)
    {
      v7 = @"unknown";
    }

    else
    {
      v7 = *(&off_1E7285F00 + type - 1);
    }

    v9 = v7;
    [v6 setInteger:mode forKey:v9 inDomain:@"com.apple.Intents.UpcomingMediaManager" completionHandler:&__block_literal_global_21_59686];
  }

  else
  {
    v8 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[INUpcomingMediaManager setPredictionMode:forType:]";
      _os_log_error_impl(&dword_18E991000, v8, OS_LOG_TYPE_ERROR, "%s Failed to set prediction mode: VoiceShortcutClient framework not found", &v10, 0xCu);
    }
  }
}

void __52__INUpcomingMediaManager_setPredictionMode_forType___block_invoke(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[INUpcomingMediaManager setPredictionMode:forType:]_block_invoke";
      v8 = 2114;
      v9 = v4;
      _os_log_error_impl(&dword_18E991000, v5, OS_LOG_TYPE_ERROR, "%s Failed to set prediction mode: %{public}@", &v6, 0x16u);
    }
  }
}

- (void)_replaceMediaIntents:(id)intents forBundleIdentifier:(id)identifier
{
  v34[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  intentsCopy = intents;
  v8 = +[INUpcomingMediaManager mediaQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [intentsCopy count];
  strongObjectsPointerArray = [MEMORY[0x1E696AE08] strongObjectsPointerArray];
  [strongObjectsPointerArray setCount:v9];
  v11 = objc_opt_new();
  v12 = dispatch_group_create();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __67__INUpcomingMediaManager__replaceMediaIntents_forBundleIdentifier___block_invoke;
  v28[3] = &unk_1E7281AD0;
  v13 = v12;
  v29 = v13;
  selfCopy = self;
  v33 = v9;
  v31 = v11;
  v14 = strongObjectsPointerArray;
  v32 = v14;
  v15 = v11;
  [intentsCopy enumerateObjectsUsingBlock:v28];

  dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  [v14 compact];
  index = [(INUpcomingMediaManager *)self index];
  dispatch_group_enter(v13);
  v34[0] = @"com.apple.siri.upcomingmedia";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v18 = *MEMORY[0x1E696A388];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__INUpcomingMediaManager__replaceMediaIntents_forBundleIdentifier___block_invoke_16;
  v23[3] = &unk_1E7281B20;
  v24 = v14;
  v25 = v13;
  v26 = index;
  v27 = identifierCopy;
  v19 = identifierCopy;
  v20 = index;
  v21 = v13;
  v22 = v14;
  [v20 deleteSearchableItemsWithDomainIdentifiers:v17 protectionClass:v18 forBundleID:v19 options:0 completionHandler:v23];

  dispatch_group_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
}

void __67__INUpcomingMediaManager__replaceMediaIntents_forBundleIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  dispatch_group_enter(v5);
  [v6 _intents_preferredScaledImageSize];
  v8 = v7;
  v10 = v9;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__INUpcomingMediaManager__replaceMediaIntents_forBundleIdentifier___block_invoke_2;
  v16[3] = &unk_1E7281AA8;
  v19 = *(a1 + 64);
  v20 = a3;
  v15 = *(a1 + 40);
  v11 = *(&v15 + 1);
  v12 = *(a1 + 56);
  v13 = *(a1 + 32);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  v17 = v15;
  v18 = v14;
  INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler(v6, 0x15u, 0, 1, 0, v16, v8, v10);
}

void __67__INUpcomingMediaManager__replaceMediaIntents_forBundleIdentifier___block_invoke_16(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[INUpcomingMediaManager _replaceMediaIntents:forBundleIdentifier:]_block_invoke";
      v13 = 2114;
      v14 = v3;
      _os_log_error_impl(&dword_18E991000, v4, OS_LOG_TYPE_ERROR, "%s Error when trying to delete existing upcoming media items: %{public}@", buf, 0x16u);
    }
  }

  if ([*(a1 + 32) count])
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) allObjects];
    v7 = *MEMORY[0x1E696A388];
    v8 = *(a1 + 56);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__INUpcomingMediaManager__replaceMediaIntents_forBundleIdentifier___block_invoke_17;
    v9[3] = &unk_1E7281AF8;
    v10 = *(a1 + 40);
    [v5 indexSearchableItems:v6 deleteSearchableItemsWithIdentifiers:MEMORY[0x1E695E0F0] clientState:0 protectionClass:v7 forBundleID:v8 options:0 completionHandler:v9];
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

void __67__INUpcomingMediaManager__replaceMediaIntents_forBundleIdentifier___block_invoke_17(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[INUpcomingMediaManager _replaceMediaIntents:forBundleIdentifier:]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_error_impl(&dword_18E991000, v4, OS_LOG_TYPE_ERROR, "%s Error when trying to index new upcoming media items: %{public}@", &v5, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __67__INUpcomingMediaManager__replaceMediaIntents_forBundleIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 && (v7 = INSiriLogContextIntents, os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR)))
  {
    v13 = *(a1 + 32);
    v14 = 136315650;
    v15 = "[INUpcomingMediaManager _replaceMediaIntents:forBundleIdentifier:]_block_invoke_2";
    v16 = 2112;
    v17 = v13;
    v18 = 2114;
    v19 = v6;
    _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Error injecting image proxies into %{publc}@: %{public}@", &v14, 0x20u);
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else if (!v5)
  {
    goto LABEL_7;
  }

  v8 = [[INInteraction alloc] initWithIntent:v5 response:0];
  v9 = [(INInteraction *)v8 _searchableItemIncludingData:1];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 attributeSet];
    [v11 setDomainIdentifier:@"com.apple.siri.upcomingmedia"];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64) + ~*(a1 + 72)];
    [v11 setRankingHint:v12];

    [*(a1 + 40) lock];
    [*(a1 + 48) replacePointerAtIndex:*(a1 + 72) withPointer:v10];
    [*(a1 + 40) unlock];
  }

LABEL_7:
  dispatch_group_leave(*(a1 + 56));
}

- (void)_setSuggestedMediaIntents:(id)intents forBundleIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  intentsCopy = intents;
  identifierCopy = identifier;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = intentsCopy;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (([*(*(&v24 + 1) + 8 * i) isMemberOfClass:objc_opt_class()] & 1) == 0)
        {
          v16 = MEMORY[0x1E696AEC0];
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = [v16 stringWithFormat:@"Expecting INPlayMediaIntent, not %@", v18];

          v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0];
          objc_exception_throw(v20);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v13 = +[INUpcomingMediaManager mediaQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__INUpcomingMediaManager__setSuggestedMediaIntents_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E7281A78;
  block[4] = self;
  v22 = v8;
  v23 = identifierCopy;
  v14 = identifierCopy;
  v15 = v8;
  dispatch_async(v13, block);
}

- (INUpcomingMediaManager)initWithSearchableIndex:(id)index
{
  indexCopy = index;
  v10.receiver = self;
  v10.super_class = INUpcomingMediaManager;
  v6 = [(INUpcomingMediaManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_index, index);
    v8 = v7;
  }

  return v7;
}

+ (INUpcomingMediaManager)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__INUpcomingMediaManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_59716 != -1)
  {
    dispatch_once(&sharedManager_onceToken_59716, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

void __39__INUpcomingMediaManager_sharedManager__block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = getCSSearchableIndexClass_softClass_59717;
  v13 = getCSSearchableIndexClass_softClass_59717;
  if (!getCSSearchableIndexClass_softClass_59717)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getCSSearchableIndexClass_block_invoke_59718;
    v9[3] = &unk_1E72888B8;
    v9[4] = &v10;
    __getCSSearchableIndexClass_block_invoke_59718(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = [v2 alloc];
  v5 = NSStringFromClass(*(a1 + 32));
  v6 = [v4 initWithName:v5 protectionClass:*MEMORY[0x1E696A388]];

  v7 = [[INUpcomingMediaManager alloc] initWithSearchableIndex:v6];
  v8 = sharedManager_sharedManager;
  sharedManager_sharedManager = v7;
}

+ (id)mediaQueue
{
  if (mediaQueue_onceToken != -1)
  {
    dispatch_once(&mediaQueue_onceToken, &__block_literal_global_59726);
  }

  v3 = mediaQueue_mediaQueue;

  return v3;
}

void __36__INUpcomingMediaManager_mediaQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("INUpcomingMediaManagerQueue", v2);
  v1 = mediaQueue_mediaQueue;
  mediaQueue_mediaQueue = v0;
}

@end