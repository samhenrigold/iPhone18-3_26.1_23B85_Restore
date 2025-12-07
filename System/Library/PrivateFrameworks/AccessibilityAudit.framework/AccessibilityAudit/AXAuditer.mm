@interface AXAuditer
+ (void)initialize;
- (AXAuditer)init;
- (AXAuditerDelegate)delegate;
- (NSString)description;
- (id)_allCategoriesDescription;
- (id)_auditCategoryForClass:(Class)class;
- (id)_currentTime;
- (id)allSupportedAuditTypes;
- (id)detectionResultsFromImageData:(id)data;
- (void)_clearCurrentRunningCategories;
- (void)_initializeAuditCategories;
- (void)_runCategories:(id)categories;
- (void)auditCategory:(id)category didEncounterIssue:(id)issue;
- (void)auditCategoryResult:(id)result didAppendLogWithMessage:(id)message;
- (void)didCompleteCategory:(id)category;
- (void)init;
- (void)runCategories:(id)categories;
- (void)startWithAuditTypes:(id)types;
@end

@implementation AXAuditer

+ (void)initialize
{
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_11);
  v2 = os_log_create("com.apple.AccessibilityAudit", "AccessibilityAudit");
  v3 = log_signpost;
  log_signpost = v2;

  spid = os_signpost_id_generate(log_signpost);
}

- (AXAuditer)init
{
  v7.receiver = self;
  v7.super_class = AXAuditer;
  v2 = [(AXAuditer *)&v7 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    results = v2->__results;
    v2->__results = array;

    [(AXAuditer *)v2 _initializeAuditCategories];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [AXAuditer init];
    }

    v5 = +[AXAuditAssetManager shared];
    [v5 downloadAssetsIfNecessary];

    [(AXAuditer *)v2 setAuditQueue:MEMORY[0x277D85CD0]];
  }

  return v2;
}

- (void)_initializeAuditCategories
{
  v15 = *MEMORY[0x277D85DE8];
  _auditCategories = [(AXAuditer *)self _auditCategories];

  if (!_auditCategories)
  {
    array = [MEMORY[0x277CBEB18] array];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [&unk_284FC3AA8 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(&unk_284FC3AA8);
          }

          if (NSClassFromString(*(*(&v10 + 1) + 8 * v8)))
          {
            v9 = objc_opt_new();
            [v9 setDelegate:self];
            [array addObject:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [&unk_284FC3AA8 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(AXAuditer *)self set_auditCategories:array];
  }
}

- (id)_allCategoriesDescription
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  _auditCategories = [(AXAuditer *)self _auditCategories];
  [v3 appendFormat:@"\nContains %i categories {\n", objc_msgSend(_auditCategories, "count")];
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = _auditCategories;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    LODWORD(v9) = 0;
    v10 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 = (v9 + 1);
        [v5 appendFormat:@"   Test %i: %@", v9, *(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [v5 replaceOccurrencesOfString:@"\n" withString:@"\n   " options:1 range:{0, objc_msgSend(v5, "length")}];
  [v3 appendString:v5];

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_new();
  v7.receiver = self;
  v7.super_class = AXAuditer;
  v4 = [(AXAuditer *)&v7 description];
  [v3 appendString:v4];

  _allCategoriesDescription = [(AXAuditer *)self _allCategoriesDescription];
  [v3 appendString:_allCategoriesDescription];

  return v3;
}

- (id)_auditCategoryForClass:(Class)class
{
  v17 = *MEMORY[0x277D85DE8];
  [(AXAuditer *)self _auditCategories];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([objc_opt_class() isEqual:{class, v12}])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)allSupportedAuditTypes
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  _auditCategories = [(AXAuditer *)self _auditCategories];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [_auditCategories countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(_auditCategories);
        }

        allSupportedAuditTypes = [*(*(&v12 + 1) + 8 * i) allSupportedAuditTypes];
        if ([allSupportedAuditTypes count])
        {
          [v3 unionSet:allSupportedAuditTypes];
        }
      }

      v6 = [_auditCategories countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)_clearCurrentRunningCategories
{
  currentRunningCategories = [(AXAuditer *)self currentRunningCategories];

  if (currentRunningCategories)
  {
    currentRunningCategories2 = [(AXAuditer *)self currentRunningCategories];
    [currentRunningCategories2 removeAllObjects];
  }

  else
  {
    currentRunningCategories2 = [MEMORY[0x277CBEB18] array];
    [(AXAuditer *)self setCurrentRunningCategories:currentRunningCategories2];
  }

  array = [MEMORY[0x277CBEA60] array];
  [(AXAuditer *)self set_currentTypesToAuditFor:array];
}

- (void)startWithAuditTypes:(id)types
{
  v40 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v5 = log_signpost;
  v6 = v5;
  v7 = spid;
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23D6FE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "AXAuditRun", "Starting accessibility audit", buf, 2u);
  }

  [(AXAuditer *)self _clearCurrentRunningCategories];
  v8 = +[AXAuditScreenshotManager sharedManager];
  [v8 clear];

  if (!typesCopy || ![typesCopy count])
  {
    allSupportedAuditTypes = [(AXAuditer *)self allSupportedAuditTypes];
    allObjects = [allSupportedAuditTypes allObjects];

    typesCopy = allObjects;
  }

  v11 = [typesCopy copy];
  [(AXAuditer *)self set_currentTypesToAuditFor:v11];

  v12 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  selfCopy = self;
  obj = [(AXAuditer *)self _auditCategories];
  v28 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v28)
  {
    v27 = *v34;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        array = [MEMORY[0x277CBEB18] array];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v16 = typesCopy;
        v17 = typesCopy;
        v18 = [v17 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v30;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v30 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v29 + 1) + 8 * j);
              if ([v14 supportsAuditTestType:v22])
              {
                [array addObject:v22];
                if (([v12 containsObject:v14] & 1) == 0)
                {
                  [v12 addObject:v14];
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v19);
        }

        if ([array count])
        {
          v23 = [MEMORY[0x277CBEB98] setWithArray:array];
          [v14 setCurrentAuditTypesToTestFor:v23];
        }

        typesCopy = v16;
      }

      v28 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v28);
  }

  allObjects2 = [v12 allObjects];
  [(AXAuditer *)selfCopy runCategories:allObjects2];
}

- (void)runCategories:(id)categories
{
  v31 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  v5 = [categoriesCopy mutableCopy];
  v6 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = categoriesCopy;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        if (([v12 supportAuditGroup:2] & 1) != 0 || objc_msgSend(v12, "supportAuditGroup:", 4))
        {
          [v6 addObject:v12];
          [v5 removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  currentRunningCategories = [(AXAuditer *)self currentRunningCategories];
  [currentRunningCategories addObjectsFromArray:v5];

  currentRunningCategories2 = [(AXAuditer *)self currentRunningCategories];
  [currentRunningCategories2 addObjectsFromArray:v6];

  auditQueue = [(AXAuditer *)self auditQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__AXAuditer_runCategories___block_invoke;
  block[3] = &unk_278BE2CA8;
  block[4] = self;
  v16 = v5;
  v25 = v16;
  dispatch_async(auditQueue, block);

  if ([v6 count])
  {
    delegate = [(AXAuditer *)self delegate];
    fetchScreenshot = [delegate fetchScreenshot];

    v19 = [fetchScreenshot objectForKey:@"imageData"];
    if ([v19 length])
    {
      v20 = +[AXAuditScreenshotManager sharedManager];
      _currentTime = [(AXAuditer *)self _currentTime];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __27__AXAuditer_runCategories___block_invoke_2;
      v22[3] = &unk_278BE2CA8;
      v22[4] = self;
      v23 = v6;
      [v20 addScreenshotWithInfo:fetchScreenshot timestamp:_currentTime completion:v22];
    }
  }
}

void __27__AXAuditer_runCategories___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) auditQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__AXAuditer_runCategories___block_invoke_3;
  v4[3] = &unk_278BE2CA8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

- (void)_runCategories:(id)categories
{
  v30 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  if (![categoriesCopy count])
  {
    [(AXAuditer *)self didCompleteCategory:0];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = categoriesCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    v9 = &OBJC_IVAR___AXAuditDetectionResult__detectionRegion;
    v10 = &OBJC_IVAR___AXAuditDetectionResult__detectionRegion;
    do
    {
      v11 = 0;
      v22 = v7;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v13 = *(v9 + 230);
        v14 = v13;
        v15 = *(v10 + 231);
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
        {
          [v12 title];
          v16 = v8;
          v17 = v10;
          v18 = v9;
          v20 = v19 = v5;
          *buf = 138543362;
          v28 = v20;
          _os_signpost_emit_with_name_impl(&dword_23D6FE000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "AXAuditCategory", "Running audit category: %{public}@", buf, 0xCu);

          v5 = v19;
          v9 = v18;
          v10 = v17;
          v8 = v16;
          v7 = v22;
        }

        [v12 setTargetPid:{-[AXAuditer targetPid](self, "targetPid")}];
        [v12 setCategoryType:{-[AXAuditer categoryType](self, "categoryType")}];
        result = [v12 result];
        [result setDelegate:self];
        [v12 run];

        ++v11;
      }

      while (v7 != v11);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }
}

- (void)didCompleteCategory:(id)category
{
  v23 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  currentRunningCategories = [(AXAuditer *)self currentRunningCategories];
  v6 = [currentRunningCategories count];

  if (v6)
  {
    if (categoryCopy)
    {
      v7 = log_signpost;
      v8 = v7;
      v9 = spid;
      if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
      {
        title = [categoryCopy title];
        v21 = 138543362;
        v22 = title;
        _os_signpost_emit_with_name_impl(&dword_23D6FE000, v8, OS_SIGNPOST_INTERVAL_END, v9, "AXAuditCategory", "Completed audit category: %{public}@", &v21, 0xCu);
      }
    }

    [categoryCopy setCurrentAuditTypesToTestFor:0];
    result = [categoryCopy result];
    if (result)
    {
      _results = [(AXAuditer *)self _results];
      [_results addObject:result];
    }

    currentRunningCategories2 = [(AXAuditer *)self currentRunningCategories];
    [currentRunningCategories2 removeObject:categoryCopy];

    currentRunningCategories3 = [(AXAuditer *)self currentRunningCategories];
    v15 = [currentRunningCategories3 count];

    if (!v15)
    {
      v16 = log_signpost;
      v17 = v16;
      v18 = spid;
      if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        LOWORD(v21) = 0;
        _os_signpost_emit_with_name_impl(&dword_23D6FE000, v17, OS_SIGNPOST_INTERVAL_END, v18, "AXAuditRun", "Completed accessibility audit", &v21, 2u);
      }

      delegate = [(AXAuditer *)self delegate];
      _results2 = [(AXAuditer *)self _results];
      [delegate auditer:self didCompleteWithResults:_results2];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [AXAuditer didCompleteCategory:categoryCopy];
  }
}

- (void)auditCategoryResult:(id)result didAppendLogWithMessage:(id)message
{
  messageCopy = message;
  delegate = [(AXAuditer *)self delegate];
  [delegate auditer:self didAppendLogWithMessage:messageCopy];
}

- (void)auditCategory:(id)category didEncounterIssue:(id)issue
{
  issueCopy = issue;
  delegate = [(AXAuditer *)self delegate];
  [delegate auditer:self didEncounterIssue:issueCopy];
}

- (id)detectionResultsFromImageData:(id)data
{
  dataCopy = data;
  v4 = +[AXAuditImageDetectionManager sharedManager];
  v5 = [v4 detectionResultsFromImageData:dataCopy];

  return v5;
}

- (id)_currentTime
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v2 setTimeZone:systemTimeZone];

  [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v5 = [v2 stringFromDate:v3];

  return v5;
}

- (AXAuditerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136315138;
  v1 = "[AXAuditer init]";
  _os_log_debug_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s: Preparing to download assets", &v0, 0xCu);
}

- (void)didCompleteCategory:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 title];
  v3 = [a1 lastCaseSelectorFinishedName];
  v4 = 136315650;
  v5 = "[AXAuditer didCompleteCategory:]";
  v6 = 2112;
  v7 = v2;
  v8 = 2112;
  v9 = v3;
  _os_log_error_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: currentRunningCategories is empty but %@:%@ is incorrectly finishing up.", &v4, 0x20u);
}

@end