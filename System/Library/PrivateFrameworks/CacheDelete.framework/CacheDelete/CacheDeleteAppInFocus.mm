@interface CacheDeleteAppInFocus
+ (void)subscribeToAppInFocusStreamBeginning:(id)beginning callback:(id)callback;
@end

@implementation CacheDeleteAppInFocus

+ (void)subscribeToAppInFocusStreamBeginning:(id)beginning callback:(id)callback
{
  beginningCopy = beginning;
  callbackCopy = callback;
  if (BiomeLibraryLibraryCore(0))
  {
    if (qword_1ED76A0E8 != -1)
    {
      dispatch_once(&qword_1ED76A0E8, &__block_literal_global_10);
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v7 = off_1ED76A108;
    v28 = off_1ED76A108;
    if (!off_1ED76A108)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __getBiomeLibrarySymbolLoc_block_invoke;
      v24[3] = &unk_1E7F03180;
      v24[4] = &v25;
      __getBiomeLibrarySymbolLoc_block_invoke(v24);
      v7 = v26[3];
    }

    _Block_object_dispose(&v25, 8);
    if (!v7)
    {
      v19 = dlerror();
      v20 = abort_report_np("%s", v19);
      _Block_object_dispose(&v25, 8);
      _Unwind_Resume(v20);
    }

    v8 = v7();
    v9 = [v8 App];
    inFocus = [v9 InFocus];

    v11 = objc_autoreleasePoolPush();
    v12 = objc_opt_new();
    v13 = [_MergedGlobals_8 alloc];
    date = [MEMORY[0x1E695DF00] date];
    v15 = [v13 initWithStartDate:date endDate:beginningCopy maxEvents:0 lastN:0 reversed:1];

    v16 = [inFocus publisherWithOptions:v15];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__CacheDeleteAppInFocus_subscribeToAppInFocusStreamBeginning_callback___block_invoke_3;
    v21[3] = &unk_1E7F03140;
    v22 = v12;
    v23 = callbackCopy;
    v17 = v12;
    v18 = [v16 sinkWithCompletion:&__block_literal_global_36_0 receiveInput:v21];

    objc_autoreleasePoolPop(v11);
  }
}

void __71__CacheDeleteAppInFocus_subscribeToAppInFocusStreamBeginning_callback___block_invoke()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2050000000;
  v0 = qword_1ED76A100;
  v5 = qword_1ED76A100;
  if (!qword_1ED76A100)
  {
    BiomeLibraryLibraryCore(0);
    v3[3] = objc_getClass("BMPublisherOptions");
    qword_1ED76A100 = v3[3];
    v0 = v3[3];
  }

  v1 = v0;
  _Block_object_dispose(&v2, 8);
  _MergedGlobals_8 = v0;
}

void __71__CacheDeleteAppInFocus_subscribeToAppInFocusStreamBeginning_callback___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = [v2 error];

  NSLog(&cfstr_Subscribetoapp.isa, v3, v4);
}

void __71__CacheDeleteAppInFocus_subscribeToAppInFocusStreamBeginning_callback___block_invoke_3(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = [v21 eventBody];
  v4 = [v3 bundleID];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v21 eventBody];
    v7 = [v6 bundleID];
    LOBYTE(v5) = [v5 containsObject:v7];

    if ((v5 & 1) == 0)
    {
      if (*(a1 + 40))
      {
        v8 = [v21 eventBody];
        v9 = [v8 starting];

        if ((v9 & 1) == 0)
        {
          v10 = *(a1 + 32);
          v11 = [v21 eventBody];
          v12 = [v11 bundleID];
          [v10 addObject:v12];

          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        v13 = MEMORY[0x1E695DF00];
        [v21 timestamp];
        v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
        v15 = [v21 eventBody];
        if ([v15 starting])
        {
          v16 = "Entering";
        }

        else
        {
          v16 = " Leaving";
        }

        v17 = [v21 eventBody];
        v18 = [v17 bundleID];
        v19 = [v21 eventBody];
        v20 = [v19 launchReason];
        NSLog(&cfstr_DSubscribetoap.isa, 153, v14, v16, v18, v20);
      }
    }
  }
}

@end