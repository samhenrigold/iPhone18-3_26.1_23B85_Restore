@interface SPSearchFeedbackProxy
+ (id)sharedProxy;
- (BOOL)clientID:(id)d supportsFeedbackListener:(id)listener;
- (SPSearchFeedbackProxy)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)sendCustomFeedback:(id)feedback clientID:(id)d;
- (void)sendFeedbackType:(int64_t)type feedback:(id)feedback queryId:(unint64_t)id clientID:(id)d;
- (void)updateParsecEnabled;
@end

@implementation SPSearchFeedbackProxy

void __36__SPSearchFeedbackProxy_sharedProxy__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedProxy_sSharedProxy;
  sharedProxy_sSharedProxy = v0;

  if (initFeedbackTables_onceToken != -1)
  {
    initFeedbackTables_cold_1();
  }
}

- (SPSearchFeedbackProxy)init
{
  v8.receiver = self;
  v8.super_class = SPSearchFeedbackProxy;
  v2 = [(SPSearchFeedbackProxy *)&v8 init];
  if (v2)
  {
    v3 = +[SPSearchFeedbackSender feedbackQueue];
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
    [(NSUserDefaults *)v5 addObserver:v2 forKeyPath:@"SPUISearchFirstTimeShowCount" options:0 context:0];
    [(NSUserDefaults *)v5 addObserver:v2 forKeyPath:@"SBSearchDisabledDomains" options:0 context:0];
    defaultsCenter = v2->_defaultsCenter;
    v2->_defaultsCenter = v5;

    [(SPSearchFeedbackProxy *)v2 updateParsecEnabled];
  }

  return v2;
}

- (void)updateParsecEnabled
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = SPGetDisabledDomainSet();
  isSpotlightInternetResultsAllowed = 0;
  if (([v3 containsObject:@"DOMAIN_PARSEC"] & 1) == 0)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    isSpotlightInternetResultsAllowed = [mEMORY[0x1E69ADFB8] isSpotlightInternetResultsAllowed];
  }

  v6 = [(NSUserDefaults *)self->_defaultsCenter integerForKey:@"SPUISearchFirstTimeShowCount"];
  _permitParsecFeedback = (v6 > 0) & isSpotlightInternetResultsAllowed;
  [(SPSearchFeedbackProxy *)self setIsParsecEnabled:isSpotlightInternetResultsAllowed];
  v7 = +[SPCoreParsecInterface getSharedInstance];
  [v7 setParsecFeedbackAllowed:_permitParsecFeedback];

  v9 = SPLogForSPLogCategoryDefault(v8);
  v10 = v9;
  if (gSPLogDebugAsDefault)
  {
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v11 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v9, v11))
  {
    v20 = 134217984;
    v21 = v6;
    _os_log_impl(&dword_1C81BF000, v10, v11, "[FEEDBACK-DEBUG] (_userPrefsChanged) firstTimeShowCount: %ld", &v20, 0xCu);
  }

  v13 = SPLogForSPLogCategoryDefault(v12);
  v14 = v13;
  if (gSPLogDebugAsDefault)
  {
    v15 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v15 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v13, v15))
  {
    v20 = 67109120;
    LODWORD(v21) = isSpotlightInternetResultsAllowed ^ 1;
    _os_log_impl(&dword_1C81BF000, v14, v15, "[FEEDBACK-DEBUG] (_userPrefsChanged) DOMAIN_PARSEC disabled: %d", &v20, 8u);
  }

  v17 = SPLogForSPLogCategoryDefault(v16);
  v18 = v17;
  if (gSPLogDebugAsDefault)
  {
    v19 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v19 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v17, v19))
  {
    v20 = 67109120;
    LODWORD(v21) = _permitParsecFeedback;
    _os_log_impl(&dword_1C81BF000, v18, v19, "[FEEDBACK-DEBUG] (_userPrefsChanged) _permitParsecFeedback: %d", &v20, 8u);
  }

  [SPSearchFeedbackSender synchronizedBlock:&__block_literal_global_257];
}

+ (id)sharedProxy
{
  if (sharedProxy_onceToken != -1)
  {
    +[SPSearchFeedbackProxy sharedProxy];
  }

  v3 = sharedProxy_sSharedProxy;

  return v3;
}

void __44__SPSearchFeedbackProxy_updateParsecEnabled__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = SPLogForSPLogCategoryDefault(a1);
  v2 = v1;
  if (gSPLogDebugAsDefault)
  {
    v3 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v3 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v1, v3))
  {
    v5[0] = 67109120;
    v5[1] = _permitParsecFeedback;
    _os_log_impl(&dword_1C81BF000, v2, v3, "[FEEDBACK-DEBUG] (_userPrefsChanged) _permitParsecFeedback: %d", v5, 8u);
  }

  v4 = +[SPCoreParsecInterface getSharedInstance];
  [v4 setParsecFeedbackAllowed:_permitParsecFeedback];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([pathCopy isEqualToString:@"SPUISearchFirstTimeShowCount"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"SBSearchDisabledDomains"))
  {
    [(SPSearchFeedbackProxy *)self updateParsecEnabled];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SPSearchFeedbackProxy;
    if ([(SPSearchFeedbackProxy *)&v14 respondsToSelector:sel_observeValueForKeyPath_ofObject_change_context_])
    {
      v13.receiver = self;
      v13.super_class = SPSearchFeedbackProxy;
      [(SPSearchFeedbackProxy *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    }
  }
}

- (void)sendFeedbackType:(int64_t)type feedback:(id)feedback queryId:(unint64_t)id clientID:(id)d
{
  v36 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  dCopy = d;
  v12 = dCopy;
  if ((type - 1) > 0x1A || !feedbackCopy)
  {
    v27 = SPLogForSPLogCategoryFeedback(dCopy);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [SPSearchFeedbackProxy sendFeedbackType:type feedback:feedbackCopy queryId:v27 clientID:?];
    }

    goto LABEL_19;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v27 = SPLogForSPLogCategoryFeedback(isKindOfClass);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [SPSearchFeedbackProxy sendFeedbackType:type feedback:feedbackCopy queryId:? clientID:?];
    }

LABEL_19:

    goto LABEL_20;
  }

  if (sendFeedbackType_feedback_queryId_clientID__onceToken != -1)
  {
    [SPSearchFeedbackProxy sendFeedbackType:feedback:queryId:clientID:];
  }

  if (type == 8 && (sendFeedbackType_feedback_queryId_clientID__isInternal & 1) != 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v14 = feedbackCopy;
      result = [v14 result];
      identifier = [result identifier];
      v17 = [identifier isEqualToString:@"com.apple.other:taptoradar"];

      if (v17)
      {
        v18 = +[SDFeedbackInterceptor sharedInstance];
        [v18 dumpTTRDebugFiles];
      }
    }
  }

  v19 = SPLogForSPLogCategoryDefault(isKindOfClass);
  v20 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v19, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v21 = sSPFeedbackTypeDescriptionTable[type];
    *buf = 136315138;
    v35 = v21;
    _os_log_impl(&dword_1C81BF000, v19, ((v20 & 1) == 0), "send feedback (%s)", buf, 0xCu);
  }

  v22 = os_transaction_create();
  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_266;
  block[3] = &unk_1E82F8D78;
  objc_copyWeak(v33, buf);
  v24 = feedbackCopy;
  v33[1] = type;
  v29 = v24;
  selfCopy = self;
  v25 = v12;
  v33[2] = id;
  v31 = v25;
  v32 = v22;
  v26 = v22;
  dispatch_async(queue, block);

  objc_destroyWeak(v33);
  objc_destroyWeak(buf);
LABEL_20:
}

uint64_t __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  sendFeedbackType_feedback_queryId_clientID__isInternal = result;
  return result;
}

void __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_266(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = (a1 + 72);
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        if (*v4 == 7 && (+[SDFeedbackInterceptor sharedInstance], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_267;
          v27[3] = &unk_1E82F8D50;
          v7 = WeakRetained;
          v8 = *v4;
          v28 = v7;
          v30 = v8;
          v29 = v3;
          [v6 annotateRankingFeedback:v29 completion:v27];
        }

        else
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v11 = +[SPSearchFeedbackSender feedbackListeners];
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v33 count:16];
          if (v12)
          {
            v13 = *v24;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v24 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v23 + 1) + 8 * i);
                v16 = [v15 feedbackListener];
                if ([*(a1 + 40) clientID:*(a1 + 48) supportsFeedbackListener:v16])
                {
                  v17 = [v15 supportsFeedbackType:21];
                  if (*v4 == 11)
                  {
                    v18 = 0;
                  }

                  else
                  {
                    v18 = v17;
                  }

                  if (v18 == 1)
                  {
LABEL_23:
                    [v16 reportFeedback:v3 queryId:*(a1 + 80)];
                  }

                  else
                  {
                    v19 = [v15 supportsFeedbackType:?];
                    if (v19)
                    {
                      switch(*v4)
                      {
                        case 1:
                          [v16 didErrorOccur:v3];
                          break;
                        case 2:
                          [v16 searchViewDidAppear:v3];
                          break;
                        case 3:
                          [v16 searchViewDidDisappear:v3];
                          break;
                        case 4:
                          [v16 cardViewDidDisappear:v3];
                          break;
                        case 5:
                          [v16 didStartSearch:v3];
                          break;
                        case 6:
                          [v16 didEndSearch:v3];
                          break;
                        case 7:
                          [v16 didRankSections:v3];
                          break;
                        case 8:
                          [v16 didEngageResult:v3];
                          break;
                        case 9:
                          [v16 didEngageSuggestion:v3];
                          break;
                        case 10:
                          [v16 didEngageCardSection:v3];
                          break;
                        case 11:
                          [v16 sendCustomFeedback:v3];
                          break;
                        case 12:
                          [v16 resultsDidBecomeVisible:v3];
                          break;
                        case 13:
                          [v16 suggestionsDidBecomeVisible:v3];
                          break;
                        case 14:
                          [v16 didReceiveResultsAfterTimeout:v3];
                          break;
                        case 15:
                          [v16 didAppendLateSections:v3];
                          break;
                        case 16:
                          [v16 didClearInput:v3];
                          break;
                        case 17:
                          [v16 didEngageSection:v3];
                          break;
                        case 18:
                          [v16 sectionHeaderDidBecomeVisible:v3];
                          break;
                        case 19:
                          [v16 didGradeResultRelevancy:v3];
                          break;
                        case 20:
                          [v16 cardViewDidAppear:v3];
                          break;
                        case 21:
                          goto LABEL_23;
                        case 22:
                          [v16 didGoToSite:v3];
                          break;
                        case 23:
                          [v16 didGoToSearch:v3];
                          break;
                        case 24:
                          [v16 didGradeLookupHintRelevancy:v3];
                          break;
                        case 25:
                          [v16 didReportUserResponseFeedback:v3];
                          break;
                        case 26:
                          [v16 didPerformCommand:v3];
                          break;
                        case 27:
                          [v16 sendResultSectionsDidLoadFeedback:v3];
                          break;
                        default:
                          v20 = SPLogForSPLogCategoryFeedback(v19);
                          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                          {
                            v21 = *v4;
                            *buf = 67109120;
                            LODWORD(v32) = v21;
                            _os_log_error_impl(&dword_1C81BF000, v20, OS_LOG_TYPE_ERROR, "*** Error feedback type %d not handled", buf, 8u);
                          }

                          break;
                      }
                    }
                  }
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v23 objects:v33 count:16];
            }

            while (v12);
          }

          v22 = objc_opt_self();
        }
      }

      else
      {
        v10 = SPLogForSPLogCategoryFeedback(isKindOfClass);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_266_cold_1(v4, v3);
        }
      }
    }

    else
    {
      v9 = SPLogForSPLogCategoryFeedback(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_266_cold_2(a1, v9);
      }
    }
  }
}

void __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_267(void *a1)
{
  v1 = *(a1[4] + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_2;
  v3[3] = &unk_1E82F8D28;
  v2 = a1[5];
  v5 = a1[6];
  v4 = v2;
  dispatch_async(v1, v3);
}

void __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = +[SPSearchFeedbackSender feedbackListeners];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 supportsFeedbackType:*(a1 + 40)])
        {
          v8 = [v7 feedbackListener];
          [v8 didRankSections:*(a1 + 32)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (BOOL)clientID:(id)d supportsFeedbackListener:(id)listener
{
  listenerCopy = listener;
  dCopy = d;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  LOBYTE(listenerCopy) = [dCopy isEqualToString:@"com.apple.PeopleViewService"];
  return listenerCopy & 1 | ((isKindOfClass & 1) == 0);
}

- (void)sendCustomFeedback:(id)feedback clientID:(id)d
{
  dCopy = d;
  feedbackCopy = feedback;
  -[SPSearchFeedbackProxy sendFeedbackType:feedback:queryId:clientID:](self, "sendFeedbackType:feedback:queryId:clientID:", 11, feedbackCopy, [feedbackCopy queryId], dCopy);
}

- (void)sendFeedbackType:(os_log_t)log feedback:queryId:clientID:.cold.1(int a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 2048;
  v5 = a2;
  _os_log_error_impl(&dword_1C81BF000, log, OS_LOG_TYPE_ERROR, "invalid information for type %d feedback %p", v3, 0x12u);
}

- (void)sendFeedbackType:(uint64_t)a1 feedback:(void *)a2 queryId:clientID:.cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1C81BF000, v3, v4, "*** invalid feedback class for (%s) %@", v5, v6, v7, v8);
}

void __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_266_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1C81BF000, v3, v4, "*** invalid feedback class for (%s) %@", v5, v6, v7, v8);
}

void __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_266_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = sSPFeedbackTypeDescriptionTable[*(a1 + 72)];
  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&dword_1C81BF000, a2, OS_LOG_TYPE_ERROR, "no feedback (%s)", &v3, 0xCu);
}

@end