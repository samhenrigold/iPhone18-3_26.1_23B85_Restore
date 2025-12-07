@interface SPFeedbackManager
+ (id)sharedManager;
+ (void)bumpPriorityOnQueue:(id)queue withCompletion:(id)completion;
+ (void)flushFeedbackWithCompletion:(id)completion;
- (BOOL)isParsecFeedbackEnabled;
- (SPFeedbackManager)init;
- (void)_sendFeedback:(id)feedback type:(int64_t)type;
- (void)_sendFeedback:(id)feedback type:(int64_t)type queryId:(unint64_t)id;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateNeedsToDisplayFirstTimeView;
- (void)updateParsecEnabled;
@end

@implementation SPFeedbackManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SPFeedbackManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __34__SPFeedbackManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)updateNeedsToDisplayFirstTimeView
{
  feedbackQueue = self->_feedbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SPFeedbackManager_updateNeedsToDisplayFirstTimeView__block_invoke;
  block[3] = &unk_1E82F8F28;
  block[4] = self;
  dispatch_async(feedbackQueue, block);
}

- (void)updateParsecEnabled
{
  feedbackQueue = self->_feedbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SPFeedbackManager_updateParsecEnabled__block_invoke;
  block[3] = &unk_1E82F8F28;
  block[4] = self;
  dispatch_async(feedbackQueue, block);
}

void __54__SPFeedbackManager_updateNeedsToDisplayFirstTimeView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultsCenter];
  [*(a1 + 32) setNeedsToDisplayFirstTimeView:{objc_msgSend(v2, "integerForKey:", @"SPUISearchFirstTimeShowCount"}];

  v3 = [*(a1 + 32) isParsecFeedbackEnabled];
  v5 = [*(a1 + 32) parsecFeedbackListener];
  v4 = [v5 configuration];
  [v4 setParsecEnabled:v3];
}

- (SPFeedbackManager)init
{
  v12.receiver = self;
  v12.super_class = SPFeedbackManager;
  v2 = [(SPFeedbackManager *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
    v5 = dispatch_queue_create("com.apple.spotlight.feedback", v4);
    feedbackQueue = v2->_feedbackQueue;
    v2->_feedbackQueue = v5;

    v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
    [v7 addObserver:v2 forKeyPath:@"SPUISearchFirstTimeShowCount" options:0 context:0];
    [v7 addObserver:v2 forKeyPath:@"SBSearchDisabledDomains" options:0 context:0];
    [(SPFeedbackManager *)v2 setDefaultsCenter:v7];
    [(SPFeedbackManager *)v2 updateNeedsToDisplayFirstTimeView];
    [(SPFeedbackManager *)v2 updateParsecEnabled];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    clientBundleID = v2->_clientBundleID;
    v2->_clientBundleID = bundleIdentifier;

    v2->_clientRankAndBlend = _os_feature_enabled_impl();
    if ([(NSString *)v2->_clientBundleID hasPrefix:@"com.apple.omniSearch"]|| [(NSString *)v2->_clientBundleID hasPrefix:@"com.apple.intelligenceflow"])
    {
      v2->_clientRankAndBlend = 0;
    }
  }

  return v2;
}

- (BOOL)isParsecFeedbackEnabled
{
  if ([(SPFeedbackManager *)self needsToDisplayFirstTimeView])
  {
    return 0;
  }

  return [(SPFeedbackManager *)self isParsecEnabled];
}

void __40__SPFeedbackManager_updateParsecEnabled__block_invoke(uint64_t a1)
{
  v2 = SPGetDisabledDomainSet();
  if ([v2 containsObject:@"DOMAIN_PARSEC"])
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    [v4 setIsParsecEnabled:0];
  }

  else
  {
    v5 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v6 = [v5 isSpotlightInternetResultsAllowed];
    v7 = *(a1 + 32);
    v3 = (a1 + 32);
    [v7 setIsParsecEnabled:v6];
  }

  v8 = [*v3 isParsecFeedbackEnabled];
  v10 = [*v3 parsecFeedbackListener];
  v9 = [v10 configuration];
  [v9 setParsecEnabled:v8];
}

+ (void)flushFeedbackWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[SPFeedbackManager sharedManager];
  feedbackQueue = [v5 feedbackQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__SPFeedbackManager_flushFeedbackWithCompletion___block_invoke;
  v8[3] = &unk_1E82F9420;
  v9 = completionCopy;
  selfCopy = self;
  v7 = completionCopy;
  [self bumpPriorityOnQueue:feedbackQueue withCompletion:v8];
}

void __49__SPFeedbackManager_flushFeedbackWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[SPDaemonConnection sharedBackgroundConnection];
  v4 = [v3 connectionQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__SPFeedbackManager_flushFeedbackWithCompletion___block_invoke_2;
  v5[3] = &unk_1E82F93F8;
  v6 = *(a1 + 32);
  [v2 bumpPriorityOnQueue:v4 withCompletion:v5];
}

void __49__SPFeedbackManager_flushFeedbackWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = +[SPDaemonConnection sharedBackgroundConnection];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__SPFeedbackManager_flushFeedbackWithCompletion___block_invoke_3;
  v3[3] = &unk_1E82F93F8;
  v4 = *(a1 + 32);
  [v2 barrierOnXPC:v3];
}

+ (void)bumpPriorityOnQueue:(id)queue withCompletion:(id)completion
{
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SPFeedbackManager_bumpPriorityOnQueue_withCompletion___block_invoke;
  block[3] = &unk_1E82F93F8;
  v10 = completionCopy;
  v6 = completionCopy;
  queueCopy = queue;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(queueCopy, v8);
}

- (void)_sendFeedback:(id)feedback type:(int64_t)type queryId:(unint64_t)id
{
  feedbackCopy = feedback;
  feedbackQueue = self->_feedbackQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__SPFeedbackManager__sendFeedback_type_queryId___block_invoke;
  v11[3] = &unk_1E82F8FC8;
  v11[4] = self;
  v12 = feedbackCopy;
  idCopy = id;
  typeCopy = type;
  v10 = feedbackCopy;
  dispatch_async(feedbackQueue, v11);
}

void __48__SPFeedbackManager__sendFeedback_type_queryId___block_invoke(uint64_t a1)
{
  v1 = a1;
  v67 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isParsecFeedbackEnabled])
  {
    [*(*(v1 + 32) + 32) reportFeedback:*(v1 + 40) queryId:*(v1 + 48)];
  }

  if (*(v1 + 56) == 26)
  {
    v2 = v1;
    v3 = *(v1 + 40);
    v4 = [v3 result];
    v5 = [v3 cardSection];
    v6 = [v5 spotlightBackingResult];

    v7 = [v6 resultBundleId];
    v8 = [v7 isEqualToString:*MEMORY[0x1E69D3F78]];

    if (v8)
    {
      v9 = v6;

      v4 = v9;
    }

    v10 = [v3 triggerEvent];
    v1 = v2;
    if (v4 && (v10 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 query], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v12 = [v4 userInput];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [v4 completion];
        }

        v11 = v14;

        v1 = v2;
      }

      [MEMORY[0x1E69D3E98] cacheResult:v4 searchString:v11];
    }
  }

  v15 = *(v1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = *(v1 + 40);
    v17 = [v16 copy];
    [v17 setQueryId:{objc_msgSend(v16, "queryId")}];
    v18 = [v16 cardSection];
    v19 = [v18 spotlightBackingResult];
    if (v19)
    {
      v20 = v17;
      [v17 setResult:v19];
    }

    else
    {
      [v16 result];
      v22 = v21 = v1;
      v20 = v17;
      [v17 setResult:v22];

      v1 = v21;
    }

    v15 = v20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = v15;
    v50 = v1;
    v23 = *(v1 + 40);
    v24 = [v23 copy];
    v25 = [v23 uniqueIdsOfVisibleButtons];
    [v24 setUniqueIdsOfVisibleButtons:v25];

    v26 = [v23 uniqueIdentifiersOfVisibleCardSections];
    [v24 setUniqueIdentifiersOfVisibleCardSections:v26];

    v48 = v23;
    v27 = [v23 goTakeoverResult];
    [v24 setGoTakeoverResult:v27];

    v28 = [v24 results];
    v29 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v28;
    v30 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    if (!v30)
    {
      goto LABEL_47;
    }

    v31 = v30;
    v32 = *v62;
    v51 = *v62;
    while (1)
    {
      v33 = 0;
      v52 = v31;
      do
      {
        if (*v62 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v61 + 1) + 8 * v33);
        if ([v34 usesCompactDisplay])
        {
          [v34 compactCard];
        }

        else
        {
          [v34 inlineCard];
        }
        v35 = ;
        v36 = [v35 cardSections];
        v37 = [v36 firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v55 = v35;
          v56 = v33;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v54 = v37;
          v38 = [v37 cardSections];
          v39 = [v38 countByEnumeratingWithState:&v57 objects:v65 count:16];
          if (!v39)
          {
            goto LABEL_43;
          }

          v40 = v39;
          v41 = *v58;
          while (1)
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v58 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v57 + 1) + 8 * i);
              v44 = [v24 uniqueIdentifiersOfVisibleCardSections];
              v45 = [v43 cardSectionId];
              if ([v44 containsObject:v45])
              {
                v46 = [v43 spotlightBackingResult];

                if (!v46)
                {
                  continue;
                }

                v44 = [v43 spotlightBackingResult];
                [v29 addObject:v44];
              }

              else
              {
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v57 objects:v65 count:16];
            if (!v40)
            {
LABEL_43:

              v32 = v51;
              v31 = v52;
              v35 = v55;
              v33 = v56;
              v37 = v54;
              goto LABEL_45;
            }
          }
        }

        [v29 addObject:v34];
LABEL_45:

        ++v33;
      }

      while (v33 != v31);
      v31 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (!v31)
      {
LABEL_47:

        [v24 setResults:v29];
        v1 = v50;
        goto LABEL_49;
      }
    }
  }

  v24 = v15;
LABEL_49:
  if (*(*(v1 + 32) + 8) == 1)
  {
    v47 = +[SPSearchFeedbackProxy sharedProxy];
    [v47 sendFeedbackType:*(v1 + 56) feedback:v24 queryId:*(v1 + 48) clientID:*(*(v1 + 32) + 16)];
  }

  else
  {
    v47 = +[SPDaemonConnection sharedBackgroundConnection];
    [v47 sendSFFeedback:v24 type:*(v1 + 56) queryId:*(v1 + 48)];
  }
}

- (void)_sendFeedback:(id)feedback type:(int64_t)type
{
  feedbackCopy = feedback;
  -[SPFeedbackManager _sendFeedback:type:queryId:](self, "_sendFeedback:type:queryId:", feedbackCopy, type, [feedbackCopy queryId]);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"SPUISearchFirstTimeShowCount"])
  {
    [(SPFeedbackManager *)self updateNeedsToDisplayFirstTimeView];
  }

  else if ([pathCopy isEqualToString:@"SBSearchDisabledDomains"])
  {
    [(SPFeedbackManager *)self updateParsecEnabled];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SPFeedbackManager;
    if ([(SPFeedbackManager *)&v14 respondsToSelector:sel_observeValueForKeyPath_ofObject_change_context_])
    {
      v13.receiver = self;
      v13.super_class = SPFeedbackManager;
      [(SPFeedbackManager *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    }
  }
}

@end