@interface ATXStackStateTrackerInternalState
- (ATXStackStateTrackerInternalState)init;
- (ATXStackStateTrackerInternalState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)updateLastThreeUserVisitDatesIfNecessaryForPage:(id)page date:(id)date;
@end

@implementation ATXStackStateTrackerInternalState

- (ATXStackStateTrackerInternalState)init
{
  v13.receiver = self;
  v13.super_class = ATXStackStateTrackerInternalState;
  v2 = [(ATXStackStateTrackerInternalState *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_new();
    lastThreeUserVisitDatesOfPages = v2->_lastThreeUserVisitDatesOfPages;
    v2->_lastThreeUserVisitDatesOfPages = v3;

    v5 = objc_opt_new();
    stackStateByStackId = v2->_stackStateByStackId;
    v2->_stackStateByStackId = v5;

    v7 = objc_opt_new();
    cachedStackLayoutsByBlendingUpdateUUID = v2->_cachedStackLayoutsByBlendingUpdateUUID;
    v2->_cachedStackLayoutsByBlendingUpdateUUID = v7;

    v9 = objc_opt_new();
    blendingCacheUpdateUUIDs = v2->_blendingCacheUpdateUUIDs;
    v2->_blendingCacheUpdateUUIDs = v9;

    bookmark = v2->_bookmark;
    v2->_bookmark = 0;
  }

  return v2;
}

- (void)updateLastThreeUserVisitDatesIfNecessaryForPage:(id)page date:(id)date
{
  pageCopy = page;
  dateCopy = date;
  if (pageCopy && dateCopy)
  {
    v7 = [(NSMutableDictionary *)self->_lastThreeUserVisitDatesOfPages objectForKeyedSubscript:pageCopy];
    if (v7)
    {
      v8 = v7;
      if (([v7 containsObject:dateCopy] & 1) == 0)
      {
        [v8 addObject:dateCopy];
        [v8 sortUsingComparator:&__block_literal_global_120];
        if ([v8 count] >= 4)
        {
          do
          {
            [v8 removeLastObject];
          }

          while ([v8 count] > 3);
        }
      }
    }

    else
    {
      v8 = objc_opt_new();
      [v8 addObject:dateCopy];
      [(NSMutableDictionary *)self->_lastThreeUserVisitDatesOfPages setObject:v8 forKeyedSubscript:pageCopy];
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  v23 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  lastThreeUserVisitDatesOfPages = [(ATXStackStateTrackerInternalState *)self lastThreeUserVisitDatesOfPages];
  [coderCopy encodeObject:lastThreeUserVisitDatesOfPages forKey:@"codingKeyForLastThreeUserVisitDatesOfPages"];

  stackStateByStackId = [(ATXStackStateTrackerInternalState *)self stackStateByStackId];
  [coderCopy encodeObject:stackStateByStackId forKey:@"codingKeyForStackStateByStackId"];

  cachedStackLayoutsByBlendingUpdateUUID = [(ATXStackStateTrackerInternalState *)self cachedStackLayoutsByBlendingUpdateUUID];
  [coderCopy encodeObject:cachedStackLayoutsByBlendingUpdateUUID forKey:@"codingKeyForBlendingCacheUpdateByBlendingUpdateUUID"];

  blendingCacheUpdateUUIDs = [(ATXStackStateTrackerInternalState *)self blendingCacheUpdateUUIDs];
  [coderCopy encodeObject:blendingCacheUpdateUUIDs forKey:@"codingKeyForBlendingCacheUpdateUUIDs"];

  bookmark = [(ATXStackStateTrackerInternalState *)self bookmark];
  v16 = 0;
  v10 = [bookmark serializeBookmark:&v16];
  v11 = v16;

  if (v11)
  {
    v13 = __atxlog_handle_blending(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138412802;
      v18 = v15;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v10;
      _os_log_error_impl(&dword_2263AA000, v13, OS_LOG_TYPE_ERROR, "%@ - bookmark serialization failed with err: %@, data: %@", buf, 0x20u);
    }
  }

  else
  {
    [coderCopy encodeObject:v10 forKey:@"codingKeyForBookmark"];
  }
}

- (ATXStackStateTrackerInternalState)initWithCoder:(id)coder
{
  v63 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v7 initWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v13 = __atxlog_handle_blending(v12);
  v14 = [v5 robustDecodeObjectOfClasses:v11 forKey:@"codingKeyForLastThreeUserVisitDatesOfPages" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXStackStateTracker" errorCode:-1 logHandle:v13];

  error = [coderCopy error];

  if (!error)
  {
    v17 = MEMORY[0x277D42620];
    v18 = objc_autoreleasePoolPush();
    v19 = objc_alloc(MEMORY[0x277CBEB98]);
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v19 initWithObjects:{v20, v21, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v18);
    v24 = __atxlog_handle_blending(v23);
    v25 = [v17 robustDecodeObjectOfClasses:v22 forKey:@"codingKeyForStackStateByStackId" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXStackStateTracker" errorCode:-1 logHandle:v24];

    error2 = [coderCopy error];

    if (error2)
    {
      v16 = [(ATXStackStateTrackerInternalState *)self init];
LABEL_24:

      goto LABEL_25;
    }

    v27 = MEMORY[0x277D42620];
    v28 = objc_autoreleasePoolPush();
    v29 = objc_alloc(MEMORY[0x277CBEB98]);
    v30 = objc_opt_class();
    v31 = [v29 initWithObjects:{v30, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v28);
    v33 = __atxlog_handle_blending(v32);
    v34 = [v27 robustDecodeObjectOfClasses:v31 forKey:@"codingKeyForBlendingCacheUpdateByBlendingUpdateUUID" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXStackStateTracker" errorCode:-1 logHandle:v33];

    error3 = [coderCopy error];

    if (error3)
    {
      v16 = [(ATXStackStateTrackerInternalState *)self init];
LABEL_23:

      goto LABEL_24;
    }

    v36 = MEMORY[0x277D42620];
    v37 = objc_autoreleasePoolPush();
    v38 = objc_alloc(MEMORY[0x277CBEB98]);
    v39 = objc_opt_class();
    v40 = [v38 initWithObjects:{v39, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v37);
    v42 = __atxlog_handle_blending(v41);
    v43 = [v36 robustDecodeObjectOfClasses:v40 forKey:@"codingKeyForBlendingCacheUpdateUUIDs" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXStackStateTracker" errorCode:-1 logHandle:v42];

    error4 = [coderCopy error];

    if (error4)
    {
      v16 = [(ATXStackStateTrackerInternalState *)self init];
LABEL_22:

      goto LABEL_23;
    }

    v45 = MEMORY[0x277D42620];
    v46 = objc_opt_class();
    v47 = __atxlog_handle_blending(v46);
    v48 = [v45 robustDecodeObjectOfClass:v46 forKey:@"codingKeyForBookmark" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXStackStateTracker" errorCode:-1 logHandle:v47];

    error5 = [coderCopy error];

    if (error5)
    {
      v50 = [(ATXStackStateTrackerInternalState *)self init];
LABEL_11:
      v16 = v50;
LABEL_21:

      goto LABEL_22;
    }

    if (v48)
    {
      v51 = [MEMORY[0x277CEBBF8] bookmarkFromData:v48 bookmarkLocation:0 versionNumber:&unk_283A56A08];
      if (!v51)
      {
        v52 = __atxlog_handle_blending(0);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          [ATXStackStateTrackerInternalState initWithCoder:];
        }

        v50 = [(ATXStackStateTrackerInternalState *)self init];
        goto LABEL_11;
      }
    }

    else
    {
      v51 = 0;
    }

    v53 = [(ATXStackStateTrackerInternalState *)self init];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __51__ATXStackStateTrackerInternalState_initWithCoder___block_invoke;
    v59[3] = &unk_27859D5C0;
    v16 = v53;
    v60 = v16;
    [v14 enumerateKeysAndObjectsUsingBlock:v59];
    v54 = [v25 mutableCopy];
    [(ATXStackStateTrackerInternalState *)v16 setStackStateByStackId:v54];

    v55 = [v34 mutableCopy];
    [(ATXStackStateTrackerInternalState *)v16 setCachedStackLayoutsByBlendingUpdateUUID:v55];

    v56 = [v43 mutableCopy];
    [(ATXStackStateTrackerInternalState *)v16 setBlendingCacheUpdateUUIDs:v56];

    v57 = __atxlog_handle_blending([(ATXStackStateTrackerInternalState *)v16 setBookmark:v51]);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v62 = "[ATXStackStateTrackerInternalState initWithCoder:]";
      _os_log_impl(&dword_2263AA000, v57, OS_LOG_TYPE_DEFAULT, "%s: Successfully deserialized ATXStackStateTrackerInternalState from disk", buf, 0xCu);
    }

    goto LABEL_21;
  }

  v16 = [(ATXStackStateTrackerInternalState *)self init];
LABEL_25:

  return v16;
}

void __51__ATXStackStateTrackerInternalState_initWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = [a3 mutableCopy];
  v6 = [*(a1 + 32) lastThreeUserVisitDatesOfPages];
  [v6 setObject:v7 forKeyedSubscript:v5];
}

@end