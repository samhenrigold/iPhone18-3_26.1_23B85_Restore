@interface SBHLibraryCategoryMapProvider
+ (NSString)cacheDirectory;
+ (id)baseFilePath;
+ (id)categoryMapCacheFilePathForVersion:(id)version source:(id)source;
+ (id)categoryMapFromURL:(id)l error:(id *)error;
+ (unint64_t)derivedOptionsFromArrayOfRequests:(id)requests;
+ (void)clearCachesForReason:(id)reason;
- (BOOL)_workQueue_updateLibraryCategoryMap:(id)map withSessionId:(unint64_t)id shouldPersist:(BOOL)persist reason:(id)reason;
- (BOOL)forbidApplicationIdentifier:(id)identifier;
- (BOOL)hasCachedLibraryCategoryMapOnFileSystem;
- (BOOL)overrideCategoryMapForTestingAtURL:(id)l error:(id *)error;
- (BOOL)unforbidApplicationIdentifier:(id)identifier;
- (SBHLibraryCategoryMap)libraryCategoryMap;
- (SBHLibraryCategoryMapProvider)initWithSource:(id)source;
- (id)_copyOfObservers;
- (id)requestLibraryCategoryMapRefreshWithOptions:(unint64_t)options reason:(id)reason;
- (unint64_t)_nextSessionIdentifier;
- (void)_callbackQueue_notifyObserverCategoryMapWasRefreshedWithOptions:(unint64_t)options refreshedCategoryMap:(id)map;
- (void)_callbackQueue_notifyObserversBeginningRefreshSession:(int64_t)session requests:(id)requests;
- (void)_callbackQueue_notifyObserversCategoryMapDidntNeedRefresh;
- (void)_callbackQueue_notifyObserversCategoryMapRefreshFailedWithError:(id)error;
- (void)_callbackQueue_notifyObserversFinishedRefreshSession:(int64_t)session requests:(id)requests;
- (void)_callbackQueue_notifyObserversWillReEnqueueFailedRequests:(id)requests;
- (void)_callbackQueue_notifyObserversWillRefresh:(int64_t)refresh options:(unint64_t)options;
- (void)_callbackQueue_notifyObserversWillSunsetFailedRequests:(id)requests;
- (void)_kickoffInitialHydration;
- (void)_setupClearCacheNotification;
- (void)_setupLocaleNotification;
- (void)_workQueue_performNextRequest;
- (void)_workQueue_queueUpNextRequests:(id)requests runNow:(BOOL)now;
- (void)_workQueue_scheduleRefreshIfNotScheduled;
- (void)addObserver:(id)observer;
- (void)overrideCategoryMapForTesting:(id)testing;
- (void)removeObserver:(id)observer;
- (void)requestLibraryCategoryMapUpdateWithRefreshOptions:(unint64_t)options source:(id)source;
- (void)resetForbiddenApplicationIdentifiers;
@end

@implementation SBHLibraryCategoryMapProvider

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_2_161(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = SBLogProactiveAppLibrary([WeakRetained _callbackQueue_notifyObserversBeginningRefreshSession:*(a1 + 48) requests:*(a1 + 32)]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 32);
      v11 = 134218242;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "(%ld) Starting Library Category Map refresh from requests '%@'", &v11, 0x16u);
    }

    v8 = SBLogProactiveAppLibrary(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      v10 = NSDictionaryFromSBHLibraryCategoryMapRefreshOptions(*(a1 + 56));
      v11 = 134218242;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "(%ld) Refresh options: %@", &v11, 0x16u);
    }

    [v3 _callbackQueue_notifyObserversWillRefresh:*(a1 + 48) options:*(a1 + 56)];
  }
}

- (id)_copyOfObservers
{
  v3 = self->_observers;
  objc_sync_enter(v3);
  v4 = [(NSHashTable *)self->_observers copy];
  objc_sync_exit(v3);

  return v4;
}

- (void)_workQueue_performNextRequest
{
  BSDispatchQueueAssert();
  if (!self->_inflightRefreshRequests)
  {
    v4 = [(NSMutableArray *)self->_pendingRefreshRequests copy];
    if ([v4 count])
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      isCategoryMapOverriddenForTesting = selfCopy->_isCategoryMapOverriddenForTesting;
      objc_sync_exit(selfCopy);

      if (isCategoryMapOverriddenForTesting)
      {
        v8 = SBLogProactiveAppLibrary(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [SBHLibraryCategoryMapProvider _workQueue_performNextRequest];
        }
      }

      else
      {
        v37 = NSStringFromSelector(a2);
        Current = CFAbsoluteTimeGetCurrent();
        [(NSMutableArray *)self->_pendingRefreshRequests removeAllObjects];
        objc_storeStrong(&self->_inflightRefreshRequests, v4);
        v10 = [objc_opt_class() derivedOptionsFromArrayOfRequests:v4];
        hasCachedLibraryCategoryMapOnFileSystem = [(SBHLibraryCategoryMapProvider *)selfCopy hasCachedLibraryCategoryMapOnFileSystem];
        v12 = v10 | 0x10;
        if (hasCachedLibraryCategoryMapOnFileSystem)
        {
          v12 = v10;
        }

        v41 = v12;
        _nextSessionIdentifier = [(SBHLibraryCategoryMapProvider *)selfCopy _nextSessionIdentifier];
        libraryCategoryMap = [(SBHLibraryCategoryMapProvider *)selfCopy libraryCategoryMap];
        v14 = self->_workQueue;
        v15 = selfCopy->_callbackQueue;
        objc_initWeak(location, selfCopy);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke;
        aBlock[3] = &unk_1E808C600;
        v16 = v14;
        v65 = v16;
        objc_copyWeak(v68, location);
        v17 = v15;
        v66 = v17;
        v68[1] = _nextSessionIdentifier;
        v18 = v4;
        v67 = v18;
        v68[2] = *&Current;
        v19 = _Block_copy(aBlock);
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141;
        v57[3] = &unk_1E808C650;
        v20 = v16;
        v58 = v20;
        objc_copyWeak(v63, location);
        v36 = v37;
        v59 = v36;
        v63[1] = _nextSessionIdentifier;
        v21 = v18;
        v60 = v21;
        v22 = v17;
        v61 = v22;
        v23 = v19;
        v62 = v23;
        v38 = _Block_copy(v57);
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_3;
        v51[3] = &unk_1E808C678;
        v24 = v20;
        v52 = v24;
        objc_copyWeak(v56, location);
        v56[1] = _nextSessionIdentifier;
        v40 = libraryCategoryMap;
        v53 = v40;
        v25 = v22;
        v54 = v25;
        v34 = v23;
        v55 = v34;
        v56[2] = v41;
        v26 = _Block_copy(v51);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_2_161;
        block[3] = &unk_1E808C6A0;
        objc_copyWeak(v50, location);
        v50[1] = _nextSessionIdentifier;
        v27 = v21;
        v49 = v27;
        v50[2] = v41;
        v35 = v25;
        dispatch_async(v25, block);
        libraryCategoryMapProviderSource = selfCopy->_libraryCategoryMapProviderSource;
        forbiddenApplicationIdentifiers = selfCopy->_forbiddenApplicationIdentifiers;
        workQueue = self->_workQueue;
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_162;
        v42[3] = &unk_1E808C6C8;
        v33 = v24;
        v43 = v33;
        v31 = v38;
        v45 = v31;
        v44 = v27;
        v47 = _nextSessionIdentifier;
        v32 = v26;
        v46 = v32;
        [(SBHLibraryCategoryMapProviderSource *)libraryCategoryMapProviderSource requestLibraryCategoryMapWithOptions:v41 existingLibraryCategoryMap:v40 forbiddenApplicationIdentifiers:forbiddenApplicationIdentifiers sessionId:_nextSessionIdentifier queue:workQueue completion:v42];

        objc_destroyWeak(v50);
        objc_destroyWeak(v56);

        objc_destroyWeak(v63);
        objc_destroyWeak(v68);

        objc_destroyWeak(location);
        v8 = v36;
      }
    }
  }
}

- (BOOL)hasCachedLibraryCategoryMapOnFileSystem
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(self) = [defaultManager fileExistsAtPath:self->_cacheFilePath];

  return self;
}

- (unint64_t)_nextSessionIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_sessionIdentifier + 1;
  selfCopy->_sessionIdentifier = v3;
  objc_sync_exit(selfCopy);

  return v3;
}

- (SBHLibraryCategoryMap)libraryCategoryMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_libraryCategoryMap;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_callbackQueue_notifyObserversCategoryMapDidntNeedRefresh
{
  v14 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _copyOfObservers = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v4 = [_copyOfObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(_copyOfObservers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 libraryCategoryMapProviderRefreshedButFoundNoChanges:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [_copyOfObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_3_164(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (([v7 options] & 0x20) != 0)
        {
          v8 = [MEMORY[0x1E696AD88] defaultCenter];
          v15[0] = @"sbh_categoryMapRefreshSessionIDKey";
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
          v15[1] = @"sbh_categoryMapKey";
          v16[0] = v9;
          v16[1] = *(a1 + 40);
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
          [v8 postNotificationName:@"com.apple.springboardhome.categoryMapProviderRefreshCompleted" object:v7 userInfo:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_162(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  BSDispatchQueueAssert();
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
    v7 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v8 = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_2_163;
    v9 = v6;
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    v7 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v8 = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_3_164;
    v9 = v5;
  }

  v7[2] = v8;
  v7[3] = &unk_1E808A090;
  v7[4] = *(a1 + 40);
  v7[6] = *(a1 + 64);
  v7[5] = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_3(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = SBLogProactiveAppLibrary(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 72);
      *buf = 134217984;
      v34 = v7;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "(%ld) Finished Library Category Map refresh", buf, 0xCu);
    }

    v8 = [v3 isEqualToCategoryMap:*(a1 + 40)];
    if (v8)
    {
      v9 = SBLogProactiveAppLibrary(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 72);
        *buf = 134217984;
        v34 = v10;
        _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map refresh yielded no changes to map; bailing.", buf, 0xCu);
      }

      v11 = *(a1 + 48);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_155;
      block[3] = &unk_1E8088C90;
      block[4] = v5;
      dispatch_async(v11, block);
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v12 = *(a1 + 40);
      v13 = SBLogProactiveAppLibrary(v8);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v3 && v12)
      {
        if (v14)
        {
          v15 = *(a1 + 72);
          v16 = *(a1 + 40);
          *buf = 134218240;
          v34 = v15;
          v35 = 2048;
          v36 = v16;
          _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "(%ld) Existing Library category map: %p", buf, 0x16u);
        }

        v18 = SBLogProactiveAppLibrary(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 72);
          *buf = 134218240;
          v34 = v19;
          v35 = 2048;
          v36 = v3;
          _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_DEFAULT, "(%ld) Refreshed Library category map: %p", buf, 0x16u);
        }

        v13 = SBLogProactiveAppLibrary(v20);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 72);
          v22 = [SBHLibraryCategoryMap diffMap:v3 withMap:*(a1 + 40)];
          *buf = 134218242;
          v34 = v21;
          v35 = 2112;
          v36 = v22;
          _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map changes: %@", buf, 0x16u);
        }
      }

      else if (v14)
      {
        v23 = *(a1 + 72);
        *buf = 134218242;
        v34 = v23;
        v35 = 2112;
        v36 = v3;
        _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map was freshly generated: %@", buf, 0x16u);
      }

      [v5 _workQueue_updateLibraryCategoryMap:v3 withSessionId:*(a1 + 72) shouldPersist:1 reason:@"_performNextRequest"];
      v24 = *(a1 + 48);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_159;
      v29[3] = &unk_1E808A090;
      v25 = *(a1 + 80);
      v29[4] = v5;
      v31 = v25;
      v30 = v3;
      dispatch_async(v24, v29);
      (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v26, v27, v28);
    }
  }
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_2;
    block[3] = &unk_1E808A090;
    v6 = *(a1 + 64);
    block[4] = WeakRetained;
    v17 = v6;
    v7 = *(a1 + 40);
    v16 = *(a1 + 48);
    dispatch_async(v7, block);
    v8 = v5[9];
    v5[9] = 0;

    v10 = SBLogProactiveAppLibrary(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 64);
      if (v3)
      {
        v12 = @"UNSUCCESSFULLY";
      }

      else
      {
        v12 = @"SUCCESSFULLY";
      }

      v13 = CFAbsoluteTimeGetCurrent() - *(a1 + 72);
      v14 = *(a1 + 48);
      *buf = 134218754;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2048;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "(%ld) Session completed '%@'; Request fulfillment time: %f -- Requests fulfilled: %@", buf, 0x2Au);
    }

    [v5 _workQueue_scheduleRefreshIfNotScheduled];
  }
}

- (void)_workQueue_scheduleRefreshIfNotScheduled
{
  if (!self->_refreshIsScheduled)
  {
    objc_initWeak(&location, self);
    [(SBHLibraryCategoryMapProvider *)self workQueueCoalescingInterval];
    v4 = dispatch_time(0, (v3 * 1000000000.0));
    workQueue = self->_workQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__SBHLibraryCategoryMapProvider__workQueue_scheduleRefreshIfNotScheduled__block_invoke;
    v6[3] = &unk_1E808C278;
    objc_copyWeak(&v7, &location);
    dispatch_after(v4, workQueue, v6);
    self->_refreshIsScheduled = 1;
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

uint64_t __73__SBHLibraryCategoryMapProvider__workQueue_scheduleRefreshIfNotScheduled__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 80) == 1)
    {
      *(WeakRetained + 80) = 0;
      v4 = WeakRetained;
      WeakRetained = [WeakRetained[9] count];
      v2 = v4;
      if (!WeakRetained)
      {
        WeakRetained = [v4 _workQueue_performNextRequest];
        v2 = v4;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v2);
}

+ (void)clearCachesForReason:(id)reason
{
  v19 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  os_unfair_lock_lock(&__lock);
  v6 = SBLogProactiveAppLibrary(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = reasonCopy;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Marking SBHLibraryCategoryMapProvider caches are needing to be wiped for reason: %@", buf, 0xCu);
  }

  cacheDirectory = [self cacheDirectory];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v16 = 0;
  [defaultManager removeItemAtPath:cacheDirectory error:&v16];
  v9 = v16;

  v11 = SBLogProactiveAppLibrary(v10);
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[SBHLibraryCategoryMapProvider clearCachesForReason:];
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, "Success in deleting app library cache.", buf, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SBHLibraryCategoryMapProviderCachesWereClearedNotification" object:0];

  v15 = SBLogProactiveAppLibrary(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "SBHLibraryCategoryMapProvider caches have been cleaned.  Hopefully successfully.", buf, 2u);
  }

  os_unfair_lock_unlock(&__lock);
}

+ (unint64_t)derivedOptionsFromArrayOfRequests:(id)requests
{
  v16 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  if ([requestsCopy count] > 1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    firstObject = requestsCopy;
    v6 = [firstObject countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      options = 0;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(firstObject);
          }

          options |= [*(*(&v11 + 1) + 8 * i) options] & 0xF;
        }

        v7 = [firstObject countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    else
    {
      options = 0;
    }
  }

  else
  {
    firstObject = [requestsCopy firstObject];
    options = [firstObject options];
  }

  return options;
}

+ (id)categoryMapFromURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x1E695DFD8];
  lCopy = l;
  v7 = [v5 setWithObjects:{objc_opt_class(), 0}];
  v14 = 0;
  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:lCopy options:1 error:&v14];

  v9 = v14;
  v10 = v9;
  if (v9)
  {
    if (error)
    {
      v11 = v9;
      v12 = 0;
      *error = v10;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v7 fromData:v8 error:error];
  }

  return v12;
}

- (SBHLibraryCategoryMapProvider)initWithSource:(id)source
{
  sourceCopy = source;
  v21.receiver = self;
  v21.super_class = SBHLibraryCategoryMapProvider;
  v6 = [(SBHLibraryCategoryMapProvider *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryCategoryMapProviderSource, source);
    [(SBHLibraryCategoryMapProviderSource *)v7->_libraryCategoryMapProviderSource setDelegate:v7];
    v7->_workQueueCoalescingInterval = 1.0;
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    workQueue = v7->_workQueue;
    v7->_workQueue = SerialWithQoS;

    v10 = BSDispatchQueueCreateSerialWithQoS();
    serializationQueue = v7->_serializationQueue;
    v7->_serializationQueue = v10;

    objc_storeStrong(&v7->_callbackQueue, MEMORY[0x1E69E96A0]);
    v12 = objc_opt_class();
    sourceName = [sourceCopy sourceName];
    v14 = [v12 categoryMapCacheFilePathForVersion:@"6" source:sourceName];
    cacheFilePath = v7->_cacheFilePath;
    v7->_cacheFilePath = v14;

    v16 = objc_opt_new();
    pendingRefreshRequests = v7->_pendingRefreshRequests;
    v7->_pendingRefreshRequests = v16;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

    [(SBHLibraryCategoryMapProvider *)v7 _setupLocaleNotification];
    [(SBHLibraryCategoryMapProvider *)v7 _setupClearCacheNotification];
    [(SBHLibraryCategoryMapProvider *)v7 _kickoffInitialHydration];
  }

  return v7;
}

+ (NSString)cacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v3 = objc_msgSend_objectAtIndex_(v2);

  v4 = [v3 stringByAppendingPathComponent:@"com.apple.springboard.appLibrary"];

  return v4;
}

+ (id)baseFilePath
{
  cacheDirectory = [self cacheDirectory];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.springboardhome.categorymapcache."];
  v4 = [cacheDirectory stringByAppendingPathComponent:v3];

  return v4;
}

+ (id)categoryMapCacheFilePathForVersion:(id)version source:(id)source
{
  sourceCopy = source;
  versionCopy = version;
  baseFilePath = [self baseFilePath];
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  localeIdentifier = [autoupdatingCurrentLocale localeIdentifier];

  versionCopy = [baseFilePath stringByAppendingFormat:@"%@.%@.%@", localeIdentifier, sourceCopy, versionCopy];

  v12 = [versionCopy stringByAppendingPathExtension:@"plist"];

  return v12;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:observerCopy];
  objc_sync_exit(v4);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers removeObject:observerCopy];
  objc_sync_exit(v4);
}

- (void)_callbackQueue_notifyObserverCategoryMapWasRefreshedWithOptions:(unint64_t)options refreshedCategoryMap:(id)map
{
  v18 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  BSDispatchQueueAssert();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _copyOfObservers = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v8 = [_copyOfObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(_copyOfObservers);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 libraryCategoryMapProvider:self categoryMapWasRefreshed:options libraryCategoryMap:{mapCopy, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [_copyOfObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_callbackQueue_notifyObserversCategoryMapRefreshFailedWithError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  BSDispatchQueueAssert();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _copyOfObservers = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v6 = [_copyOfObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_copyOfObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 libraryCategoryMapProvider:self failedToRefreshWithError:{errorCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_copyOfObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_callbackQueue_notifyObserversWillRefresh:(int64_t)refresh options:(unint64_t)options
{
  v17 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _copyOfObservers = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v7 = [_copyOfObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(_copyOfObservers);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 libraryCategoryMapProvider:self willRefreshWithOptions:{options, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [_copyOfObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_callbackQueue_notifyObserversBeginningRefreshSession:(int64_t)session requests:(id)requests
{
  v18 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  BSDispatchQueueAssert();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _copyOfObservers = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v8 = [_copyOfObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(_copyOfObservers);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 libraryCategoryMapProvider:self beginningRefreshWithSessionID:session requests:{requestsCopy, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [_copyOfObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_callbackQueue_notifyObserversFinishedRefreshSession:(int64_t)session requests:(id)requests
{
  v18 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  BSDispatchQueueAssert();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _copyOfObservers = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v8 = [_copyOfObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(_copyOfObservers);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 libraryCategoryMapProvider:self finishedRefreshWithSessionID:session requests:{requestsCopy, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [_copyOfObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_callbackQueue_notifyObserversWillReEnqueueFailedRequests:(id)requests
{
  v16 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  BSDispatchQueueAssert();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _copyOfObservers = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v6 = [_copyOfObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_copyOfObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 libraryCategoryMapProvider:self willReEnqueueFailedRequests:{requestsCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_copyOfObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_callbackQueue_notifyObserversWillSunsetFailedRequests:(id)requests
{
  v16 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  BSDispatchQueueAssert();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _copyOfObservers = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v6 = [_copyOfObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_copyOfObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 libraryCategoryMapProvider:self willSunsetFailedRequests:{requestsCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_copyOfObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)overrideCategoryMapForTestingAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [objc_opt_class() categoryMapFromURL:lCopy error:error];

  if (v7)
  {
    [(SBHLibraryCategoryMapProvider *)self overrideCategoryMapForTesting:v7];
  }

  return v7 != 0;
}

- (void)overrideCategoryMapForTesting:(id)testing
{
  testingCopy = testing;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_isCategoryMapOverriddenForTesting = testingCopy != 0;
  objc_sync_exit(selfCopy);

  if (testingCopy)
  {
    v6 = selfCopy->_callbackQueue;
    workQueue = selfCopy->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__SBHLibraryCategoryMapProvider_overrideCategoryMapForTesting___block_invoke;
    block[3] = &unk_1E8088F88;
    block[4] = selfCopy;
    v11 = testingCopy;
    v12 = v6;
    v8 = v6;
    v9 = workQueue;
    dispatch_async(v9, block);
  }
}

void __63__SBHLibraryCategoryMapProvider_overrideCategoryMapForTesting___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _workQueue_updateLibraryCategoryMap:*(a1 + 40) withSessionId:objc_msgSend(*(a1 + 32) shouldPersist:"_nextSessionIdentifier") reason:{0, @"Category map overidden for testing"}];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__SBHLibraryCategoryMapProvider_overrideCategoryMapForTesting___block_invoke_2;
  v4[3] = &unk_1E8088F18;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 32);
  v5 = v2;
  dispatch_async(v3, v4);
}

- (void)resetForbiddenApplicationIdentifiers
{
  forbiddenApplicationIdentifiers = self->_forbiddenApplicationIdentifiers;
  if (forbiddenApplicationIdentifiers)
  {
    self->_forbiddenApplicationIdentifiers = 0;

    v4 = [(SBHLibraryCategoryMapProvider *)self requestLibraryCategoryMapRefreshWithOptions:7 reason:@"[SBHLibraryCategoryMapProvider resetForbiddenApplicationIdentifiers]"];
  }
}

- (BOOL)forbidApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    goto LABEL_4;
  }

  forbiddenApplicationIdentifiers = self->_forbiddenApplicationIdentifiers;
  if (!forbiddenApplicationIdentifiers)
  {
    v7 = objc_opt_new();
    v8 = self->_forbiddenApplicationIdentifiers;
    self->_forbiddenApplicationIdentifiers = v7;

    goto LABEL_6;
  }

  if (([(NSMutableSet *)forbiddenApplicationIdentifiers containsObject:identifierCopy]& 1) == 0)
  {
LABEL_6:
    [(NSMutableSet *)self->_forbiddenApplicationIdentifiers bs_safeAddObject:identifierCopy];
    v9 = [(SBHLibraryCategoryMapProvider *)self requestLibraryCategoryMapRefreshWithOptions:14 reason:@"[SBHLibraryCategoryMapProvider forbidApplicationIdentifier]"];
    v6 = 1;
    goto LABEL_7;
  }

LABEL_4:
  v6 = 0;
LABEL_7:

  return v6;
}

- (BOOL)unforbidApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableSet *)self->_forbiddenApplicationIdentifiers containsObject:identifierCopy];
  if (v5)
  {
    [(NSMutableSet *)self->_forbiddenApplicationIdentifiers removeObject:identifierCopy];
    if (![(NSMutableSet *)self->_forbiddenApplicationIdentifiers count])
    {
      forbiddenApplicationIdentifiers = self->_forbiddenApplicationIdentifiers;
      self->_forbiddenApplicationIdentifiers = 0;
    }

    v7 = [(SBHLibraryCategoryMapProvider *)self requestLibraryCategoryMapRefreshWithOptions:14 reason:@"[SBHLibraryCategoryMapProvider unforbidApplicationIdentifier]"];
  }

  return v5;
}

- (id)requestLibraryCategoryMapRefreshWithOptions:(unint64_t)options reason:(id)reason
{
  reasonCopy = reason;
  v7 = [[SBHLibraryCategoryMapProviderRefreshRequest alloc] initWithOptions:options reason:reasonCopy];

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__SBHLibraryCategoryMapProvider_requestLibraryCategoryMapRefreshWithOptions_reason___block_invoke;
  block[3] = &unk_1E808A090;
  optionsCopy = options;
  block[4] = self;
  v9 = v7;
  v14 = v9;
  dispatch_async(workQueue, block);
  v10 = v14;
  v11 = v9;

  return v9;
}

void __84__SBHLibraryCategoryMapProvider_requestLibraryCategoryMapRefreshWithOptions_reason___block_invoke(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = (a1[6] >> 3) & 1;
  v2 = a1[4];
  v4[0] = a1[5];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 _workQueue_queueUpNextRequests:v3 runNow:v1];
}

- (void)requestLibraryCategoryMapUpdateWithRefreshOptions:(unint64_t)options source:(id)source
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v10 = NSStringFromClass(v7);
  v8 = [v6 stringWithFormat:@"-[SBHLibraryCategoryMapProvider requestLibraryCategoryMapUpdateWithRefreshOptions:source:%@]", v10];
  v9 = [(SBHLibraryCategoryMapProvider *)self requestLibraryCategoryMapRefreshWithOptions:options reason:v8];
}

- (BOOL)_workQueue_updateLibraryCategoryMap:(id)map withSessionId:(unint64_t)id shouldPersist:(BOOL)persist reason:(id)reason
{
  persistCopy = persist;
  v38 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  reasonCopy = reason;
  BSDispatchQueueAssert();
  v13 = self->_serializationQueue;
  selfCopy = self;
  v15 = objc_sync_enter(selfCopy);
  v16 = SBLogProactiveAppLibrary(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    idCopy7 = id;
    _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "(%ld) Will update library category map", buf, 0xCu);
  }

  objc_storeStrong(&selfCopy->_libraryCategoryMap, map);
  isCategoryMapOverriddenForTesting = selfCopy->_isCategoryMapOverriddenForTesting;
  v19 = SBLogProactiveAppLibrary(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    idCopy7 = id;
    _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_DEFAULT, "(%ld) Did update library category map", buf, 0xCu);
  }

  objc_sync_exit(selfCopy);
  v20 = selfCopy->_cacheFilePath;
  v21 = v20;
  if (persistCopy)
  {
    if (isCategoryMapOverriddenForTesting)
    {
      v22 = SBLogProactiveAppLibrary(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        idCopy7 = id;
        v23 = "(%ld) Skipping library category map persistence; testing is running and so the data there is bupkis";
LABEL_18:
        _os_log_impl(&dword_1BEB18000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    v24 = [(NSString *)v20 length];
    v25 = v24 == 0;
    v22 = SBLogProactiveAppLibrary(v24);
    v26 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v26)
      {
        *buf = 134217984;
        idCopy7 = id;
        v23 = "(%ld) Skipping library category map persistence; no path specified";
        goto LABEL_18;
      }

LABEL_19:
      v27 = 0;
      goto LABEL_20;
    }

    if (v26)
    {
      *buf = 134218242;
      idCopy7 = id;
      v36 = 2112;
      v37 = reasonCopy;
      _os_log_impl(&dword_1BEB18000, v22, OS_LOG_TYPE_DEFAULT, "(%ld) Attempting to persist library category map, updated for reason: %@", buf, 0x16u);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke;
    v29[3] = &unk_1E808B200;
    v30 = mapCopy;
    v31 = v21;
    v32 = selfCopy;
    idCopy6 = id;
    dispatch_async(v13, v29);

    v22 = v30;
  }

  else
  {
    v22 = SBLogProactiveAppLibrary(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      idCopy7 = id;
      v36 = 2112;
      v37 = reasonCopy;
      _os_log_impl(&dword_1BEB18000, v22, OS_LOG_TYPE_DEFAULT, "(%ld) Skipping library category map persistence; reason '%@' didn't want it", buf, 0x16u);
    }
  }

  v27 = 1;
LABEL_20:

  return v27;
}

void __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke(uint64_t a1)
{
  v61[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E695DFF8];
    v3 = [*(a1 + 40) stringByDeletingLastPathComponent];
    v4 = [v2 fileURLWithPath:v3];

    v53 = 0;
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v4 path];
    v7 = [v5 fileExistsAtPath:v6 isDirectory:&v53];

    v8 = [*(a1 + 48) hasCachedLibraryCategoryMapOnFileSystem];
    if (v7 && (v53 & 1) != 0 && (v8 & 1) != 0)
    {
      v9 = SBLogProactiveAppLibrary(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 56);
        v11 = *(a1 + 40);
        *buf = 134218242;
        v55 = v10;
        v56 = 2112;
        v57 = v11;
        _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map caches directory exists @ '%@'; skipping creation...", buf, 0x16u);
      }

LABEL_23:
      v35 = *(a1 + 32);
      v50 = 0;
      v36 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v35 requiringSecureCoding:1 error:&v50];
      v14 = v50;
      v37 = SBLogProactiveAppLibrary(v14);
      v38 = v37;
      if (v14)
      {
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_2();
        }
      }

      else if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(a1 + 56);
        *buf = 134217984;
        v55 = v39;
        _os_log_impl(&dword_1BEB18000, v38, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map update persisted; contacting observers about successful refresh.", buf, 0xCu);
      }

      v40 = *(a1 + 40);
      v49 = 0;
      [v36 writeToFile:v40 options:268435457 error:&v49];
      v41 = v49;
      v42 = SBLogProactiveAppLibrary(v41);
      v43 = v42;
      if (v41)
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_3();
        }
      }

      else if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v44 = *(a1 + 56);
        *buf = 134217984;
        v55 = v44;
        _os_log_impl(&dword_1BEB18000, v43, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map successfully written to file.", buf, 0xCu);
      }

      goto LABEL_34;
    }

    v17 = [MEMORY[0x1E696AC08] defaultManager];
    v18 = MEMORY[0x1E695DFF8];
    v19 = [objc_opt_class() cacheDirectory];
    v20 = [v18 fileURLWithPath:v19];
    [v17 removeItemAtURL:v20 error:0];

    v21 = [MEMORY[0x1E696AC08] defaultManager];
    v60 = *MEMORY[0x1E696A3A0];
    v61[0] = *MEMORY[0x1E696A3A8];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    v52 = 0;
    v23 = [v21 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:v22 error:&v52];
    v24 = v52;

    if (v23)
    {
      v26 = SBLogProactiveAppLibrary(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 56);
        v28 = *(a1 + 40);
        *buf = 134218242;
        v55 = v27;
        v56 = 2112;
        v57 = v28;
        _os_log_impl(&dword_1BEB18000, v26, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map caches directory was created at URL '%@'", buf, 0x16u);
      }

      v14 = 0;
    }

    else
    {
      v14 = v24;
      v26 = SBLogProactiveAppLibrary(v14);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v46 = *(a1 + 56);
        v47 = *(a1 + 40);
        *buf = 134218498;
        v55 = v46;
        v56 = 2112;
        v57 = v47;
        v58 = 2112;
        v59 = v14;
        _os_log_error_impl(&dword_1BEB18000, v26, OS_LOG_TYPE_ERROR, "(%ld) Error creating directory path '%@'  with error: %@", buf, 0x20u);
      }
    }

    v29 = *MEMORY[0x1E695DB80];
    v51 = 0;
    v30 = [v4 setResourceValue:MEMORY[0x1E695E118] forKey:v29 error:&v51];
    v31 = v51;
    v32 = SBLogProactiveAppLibrary(v31);
    v33 = v32;
    if (v30)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a1 + 56);
        *buf = 134217984;
        v55 = v34;
        _os_log_impl(&dword_1BEB18000, v33, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map cache directory path tagged excluded from backup successfully.", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_1();
    }

    if (!v14)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = *(a1 + 40);
    v48 = 0;
    [v12 removeItemAtPath:v13 error:&v48];
    v14 = v48;

    v16 = SBLogProactiveAppLibrary(v15);
    v4 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_4();
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(a1 + 56);
      *buf = 134217984;
      v55 = v45;
      _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map update persisted; requested deletion of internal cache. Contacting observers about successful refresh.", buf, 0xCu);
    }
  }

LABEL_34:
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a2;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v36 = WeakRetained;
    v5 = [v3 userInfo];
    v6 = v5;
    if (!v5)
    {
      v5 = MEMORY[0x1E695E0F8];
    }

    v7 = [v5 mutableCopy];

    if (*(a1 + 40))
    {
      v8 = *(a1 + 40);
    }

    else
    {
      v8 = @"No reason?";
    }

    v37 = v7;
    [v7 setObject:v8 forKeyedSubscript:@"SBHLibraryCategoryMapProviderUpdateReason"];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
    [v7 setObject:v9 forKeyedSubscript:@"SBHLibraryCategoryMapProviderUpdateSessionId"];

    v10 = MEMORY[0x1E696ABC0];
    v11 = [v3 domain];
    v12 = [v10 errorWithDomain:v11 code:objc_msgSend(v3 userInfo:{"code"), v7}];

    v14 = SBLogProactiveAppLibrary(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_1();
    }

    v16 = SBLogProactiveAppLibrary(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_2();
    }

    v17 = objc_opt_new();
    v18 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v19 = *(a1 + 48);
    v20 = [v19 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v20)
    {
      v21 = *v48;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v48 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v47 + 1) + 8 * i);
          [v23 accumulateFailure:v12 forSession:*(a1 + 80)];
          if ([v23 hasFailedSeveralTimes])
          {
            v24 = v18;
          }

          else
          {
            v24 = v17;
          }

          [v24 addObject:v23];
        }

        v20 = [v19 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v20);
    }

    v25 = [v17 count];
    if (v25)
    {
      v26 = SBLogProactiveAppLibrary(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_3();
      }

      [v36[8] addObjectsFromArray:v17];
      v27 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v17 copyItems:1];
      v28 = *(a1 + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_152;
      block[3] = &unk_1E808C628;
      objc_copyWeak(&v46, (a1 + 72));
      v45 = v27;
      v29 = v27;
      dispatch_async(v28, block);

      objc_destroyWeak(&v46);
    }

    v30 = [v18 count];
    if (v30)
    {
      v31 = SBLogProactiveAppLibrary(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_4();
      }

      v32 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v18 copyItems:1];
      v33 = *(a1 + 56);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_153;
      v41[3] = &unk_1E808C628;
      objc_copyWeak(&v43, (a1 + 72));
      v42 = v32;
      v34 = v32;
      dispatch_async(v33, v41);

      objc_destroyWeak(&v43);
    }

    v35 = *(a1 + 56);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_2_154;
    v38[3] = &unk_1E808C628;
    objc_copyWeak(&v40, (a1 + 72));
    v3 = v12;
    v39 = v3;
    dispatch_async(v35, v38);
    (*(*(a1 + 64) + 16))();

    objc_destroyWeak(&v40);
    WeakRetained = v36;
  }
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_152(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _callbackQueue_notifyObserversWillReEnqueueFailedRequests:*(a1 + 32)];
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_153(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _callbackQueue_notifyObserversWillSunsetFailedRequests:*(a1 + 32)];
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_2_154(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _callbackQueue_notifyObserversCategoryMapRefreshFailedWithError:*(a1 + 32)];
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_2_163(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (([v7 options] & 0x20) != 0)
        {
          v8 = [MEMORY[0x1E696AD88] defaultCenter];
          v15[0] = @"sbh_categoryMapRefreshSessionIDKey";
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
          v15[1] = @"sbh_categoryMapRefreshErrorKey";
          v16[0] = v9;
          v16[1] = *(a1 + 40);
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
          [v8 postNotificationName:@"com.apple.springboardhome.categoryMapProviderRefreshCompleted" object:v7 userInfo:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }
}

- (void)_kickoffInitialHydration
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_cacheFilePath];
  v23 = 0;
  v4 = [v3 checkResourceIsReachableAndReturnError:&v23];
  v5 = v23;
  v6 = v5;
  if (v4)
  {
    v22 = v5;
    v7 = [objc_opt_class() categoryMapFromURL:v3 error:&v22];
    v8 = v22;

    libraryCategoryMap = self->_libraryCategoryMap;
    self->_libraryCategoryMap = v7;

    v10 = self->_libraryCategoryMap;
    v12 = SBLogProactiveAppLibrary(v11);
    v13 = v12;
    if (v10 && !v8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_libraryCategoryMap;
        *buf = 138412290;
        v25 = v14;
        v15 = "Initialized app library w/ persisted library category map: %@";
        v16 = v13;
        v17 = 12;
LABEL_18:
        _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }

LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    if (v8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SBHLibraryCategoryMapProvider _kickoffInitialHydration];
      }

      goto LABEL_20;
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v15 = "Unable to open library catalog map; carrying on...";
LABEL_17:
    v16 = v13;
    v17 = 2;
    goto LABEL_18;
  }

  v18 = SBLogProactiveAppLibrary(v5);
  v13 = v18;
  if (!v6)
  {
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v15 = "Initialized app library w/o persisted library category map.";
    goto LABEL_17;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [SBHLibraryCategoryMapProvider _kickoffInitialHydration];
  }

  v8 = v6;
LABEL_20:

  v20 = SBLogProactiveAppLibrary(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_DEFAULT, "Kicking off initial hydration...", buf, 2u);
  }

  v21 = [(SBHLibraryCategoryMapProvider *)self requestLibraryCategoryMapRefreshWithOptions:14 reason:@"initial hydration"];
}

- (void)_setupClearCacheNotification
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SBHLibraryCategoryMapProvider__setupClearCacheNotification__block_invoke;
  v6[3] = &unk_1E808C6F0;
  objc_copyWeak(&v7, &location);
  v4 = [defaultCenter addObserverForName:@"SBHLibraryCategoryMapProviderCachesWereClearedNotification" object:0 queue:0 usingBlock:v6];
  clearCacheNotificationHandle = self->_clearCacheNotificationHandle;
  self->_clearCacheNotificationHandle = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __61__SBHLibraryCategoryMapProvider__setupClearCacheNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__SBHLibraryCategoryMapProvider__setupClearCacheNotification__block_invoke_2;
    block[3] = &unk_1E8088C90;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __61__SBHLibraryCategoryMapProvider__setupClearCacheNotification__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _nextSessionIdentifier];

  return [v1 _workQueue_updateLibraryCategoryMap:0 withSessionId:v2 shouldPersist:0 reason:@"Caches Were Cleared Notification"];
}

- (void)_setupLocaleNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [defaultCenter addObserverForName:*MEMORY[0x1E695D8F0] object:0 queue:0 usingBlock:&__block_literal_global_39];
  localeNotificationHandle = self->_localeNotificationHandle;
  self->_localeNotificationHandle = v3;
}

void __57__SBHLibraryCategoryMapProvider__setupLocaleNotification__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LOCALE WAS CHANGED: %@", a2];
  [SBHLibraryCategoryMapProvider clearCachesForReason:v2];
}

- (void)_workQueue_queueUpNextRequests:(id)requests runNow:(BOOL)now
{
  nowCopy = now;
  v16 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  BSDispatchQueueAssert();
  v7 = [requestsCopy count];
  if (v7)
  {
    v8 = SBLogProactiveAppLibrary(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      pendingRefreshRequests = self->_pendingRefreshRequests;
      v12 = 138412546;
      v13 = requestsCopy;
      v14 = 2112;
      v15 = pendingRefreshRequests;
      _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "Accumulating pending requests: %@ / Current Request Queue: %@", &v12, 0x16u);
    }

    [(NSMutableArray *)self->_pendingRefreshRequests addObjectsFromArray:requestsCopy];
  }

  v10 = [(NSArray *)self->_inflightRefreshRequests count];
  if (v10)
  {
    v11 = SBLogProactiveAppLibrary(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "Requests are inflight; deferring pending requests until after current requests are finished.", &v12, 2u);
    }
  }

  else if (nowCopy)
  {
    [(SBHLibraryCategoryMapProvider *)self _workQueue_cancelAnyScheduledRefresh];
    [(SBHLibraryCategoryMapProvider *)self _workQueue_performNextRequest];
  }

  else
  {
    [(SBHLibraryCategoryMapProvider *)self _workQueue_scheduleRefreshIfNotScheduled];
  }
}

void __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_5(&dword_1BEB18000, v0, v1, "(%ld) Failed to tag library category map cache directory as excluded from backup:%@");
}

void __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_5(&dword_1BEB18000, v0, v1, "(%ld) Error persisting library category map: %@");
}

void __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5_2(*MEMORY[0x1E69E9840]);
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_0_3(&dword_1BEB18000, v1, v2, "(%ld) Error writing library category map to file.", v3, v4, v5, v6, v7, DWORD2(v7));
}

void __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_5_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_5(&dword_1BEB18000, v0, v1, "(%ld) Error deleting category map: %@");
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_1()
{
  OUTLINED_FUNCTION_4_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_5(&dword_1BEB18000, v0, v1, "(%ld) Finished Library Category Map refresh WITH ERROR: %@");
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_2()
{
  OUTLINED_FUNCTION_4_2(*MEMORY[0x1E69E9840]);
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_0_3(&dword_1BEB18000, v1, v2, "(%ld) Updating requests w/ failure...", v3, v4, v5, v6, v7, DWORD2(v7));
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_3()
{
  OUTLINED_FUNCTION_4_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_5(&dword_1BEB18000, v0, v1, "(%ld) Several failed requests are still valid; re-enqueing %@");
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_4()
{
  OUTLINED_FUNCTION_4_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_5(&dword_1BEB18000, v0, v1, "(%ld) Several failed requests are now invalid; letting these sunset: %@");
}

@end