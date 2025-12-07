@interface SKGKnowledgeFeedback
- (BOOL)generateReportUsingBlock:(id)block;
- (BOOL)hasCurrentFlagWithName:(id)name;
- (BOOL)hasError:(int64_t)error;
- (BOOL)hasEvent:(int64_t)event;
- (BOOL)hasFlag:(int64_t)flag;
- (BOOL)modeWithKey:(id)key;
- (NSDate)documentUnderstandingGenStartTime;
- (NSDate)embeddingGenStartTime;
- (NSDate)keyphraseGenStartTime;
- (NSDate)suggestedEventsGenStartTime;
- (NSDictionary)feedbackData;
- (NSDictionary)feedbackDefaults;
- (SKGKnowledgeFeedback)init;
- (SKGKnowledgeFeedback)initWithVersionName:(id)name;
- (double)elapsedTime;
- (double)timeWithKey:(id)key;
- (id)defaultPropertiesForVersionName:(id)name;
- (id)defaultValueWithKey:(id)key;
- (id)defaultValueWithKey:(id)key versionName:(id)name;
- (id)defaults;
- (id)getCleanupItemCountsForListenerType:(int)type;
- (id)getDefaultWithIdentifier:(id)identifier protectionClass:(id)class key:(id)key;
- (id)getEmbeddingDonationItemCounts;
- (id)getEmbeddingGenCompletenessForBundle:(id)bundle;
- (id)getReindexRequestItemCounts;
- (id)recoveryTimesWithKey:(id)key;
- (id)versionName;
- (int64_t)archiveGeneratedCount;
- (int64_t)archiveItemExtractedCount;
- (int64_t)archiveProcessedCount;
- (int64_t)currentArchiveCount;
- (int64_t)currentArchiveSize;
- (int64_t)currentDeletesCount;
- (int64_t)currentGraphSize;
- (int64_t)currentJournalCount;
- (int64_t)currentJournalSize;
- (int64_t)getCurrentExtractedArchiveItemCount;
- (int64_t)getCurrentExtractedJournalItemCount;
- (int64_t)getCurrentExtractedQueryItemCount;
- (int64_t)getGenCompleteDayString:(id)string forBundle:(id)bundle;
- (int64_t)graphVersion;
- (int64_t)journalItemExtractedCount;
- (int64_t)journalProcessedCount;
- (int64_t)queryItemArchivedCount;
- (int64_t)queryItemExtractedCount;
- (int64_t)queryItemUpdatedCount;
- (unint64_t)getReindexCountForTask:(id)task;
- (unint64_t)getUpdateTaskReindexCount;
- (unint64_t)getUpdateTaskRunCount;
- (unint64_t)indexWithKey:(id)key;
- (unint64_t)itemCountWithKey:(id)key;
- (void)clear;
- (void)clearDefaultWithIdentifier:(id)identifier protectionClass:(id)class key:(id)key;
- (void)clearDocumentUnderstandingGenCompleteDay;
- (void)clearEmbeddingDefaults;
- (void)clearEmbeddingGenCompleteDay;
- (void)clearKeyphraseGenCompleteDay;
- (void)clearSuggestedEventsGenCompleteDay;
- (void)commonInitWithVersionName:(id)name graphVersion:(id)version stats:(id)stats;
- (void)getQueryTimeWithIdentifier:(id)identifier protectionClass:(id)class startTime:(double *)time endTime:(double *)endTime processingEndTime:(double *)processingEndTime;
- (void)logArchiveCount:(unint64_t)count;
- (void)logArchiveSize:(unint64_t)size;
- (void)logArchiveWithIdentifier:(id)identifier protectionClass:(id)class;
- (void)logArchivedQueryItemCount:(unint64_t)count bundleIdentifier:(id)identifier;
- (void)logCleanupItemCounts:(unint64_t)counts bundleId:(id)id listenerType:(int)type;
- (void)logDefaultWithIdentifier:(id)identifier protectionClass:(id)class key:(id)key value:(id)value;
- (void)logDeletesCount:(unint64_t)count;
- (void)logEmbeddingDonationItemCounts:(unint64_t)counts bundleId:(id)id;
- (void)logEnd;
- (void)logError:(int64_t)error message:(id)message;
- (void)logEvent:(int64_t)event message:(id)message;
- (void)logExtractedArchiveItemCount:(unint64_t)count bundleIdentifier:(id)identifier;
- (void)logExtractedJournalItemCount:(unint64_t)count bundleIdentifier:(id)identifier;
- (void)logExtractedQueryItemCount:(unint64_t)count bundleIdentifier:(id)identifier;
- (void)logFlag:(int64_t)flag message:(id)message;
- (void)logGraphSize:(unint64_t)size;
- (void)logGraphVersion:(int64_t)version;
- (void)logJournalCount:(unint64_t)count;
- (void)logJournalSize:(unint64_t)size;
- (void)logMarkedPurgeableAtPath:(id)path;
- (void)logProcessedArchiveWithName:(id)name;
- (void)logProcessedJournalWithName:(id)name;
- (void)logQueryTimeWithIdentifier:(id)identifier protectionClass:(id)class startTime:(double)time doneProcessing:(BOOL)processing;
- (void)logReindexRequestItemCounts:(unint64_t)counts bundleId:(id)id;
- (void)logSignpost:(int64_t)signpost message:(id)message;
- (void)logStart;
- (void)logUpdateTaskReindexCount:(unint64_t)count taskName:(id)name;
- (void)logUpdatedQueryItemCount:(unint64_t)count bundleIdentifier:(id)identifier;
- (void)removeDefaults;
- (void)removeKey:(id)key;
- (void)resetCleanupItemCountsForAllListenerTypes;
- (void)resetCleanupItemCountsForListenerType:(int)type;
- (void)resetEmbeddingDonationItemCounts;
- (void)resetReindexRequestItemCounts;
- (void)setDefaultWithKey:(id)key value:(id)value;
- (void)setEmbeddingGenCompleteness:(id)completeness forBundle:(id)bundle;
- (void)setGenCompleteDayString:(id)string forBundle:(id)bundle day:(int64_t)day;
- (void)setIndexWithKey:(id)key value:(unint64_t)value;
- (void)setModeWithKey:(id)key value:(BOOL)value;
- (void)setTimeWithKey:(id)key value:(double)value;
- (void)updateDefaults;
- (void)updateFeedback;
- (void)updateItemCountWithKey:(id)key;
@end

@implementation SKGKnowledgeFeedback

- (void)commonInitWithVersionName:(id)name graphVersion:(id)version stats:(id)stats
{
  v69 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  versionCopy = version;
  statsCopy = stats;
  objc_storeStrong(&self->_versionName, name);
  v10 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
  v11 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  currentCalendar = self->_currentCalendar;
  self->_currentCalendar = v11;

  v61 = v10;
  [(NSCalendar *)self->_currentCalendar setTimeZone:v10];
  v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v14 = self->_currentCalendar;
  date = [MEMORY[0x277CBEAA8] date];
  [v13 setDay:{-[NSCalendar component:fromDate:](v14, "component:fromDate:", 16, date)}];

  v16 = self->_currentCalendar;
  date2 = [MEMORY[0x277CBEAA8] date];
  [v13 setMonth:{-[NSCalendar component:fromDate:](v16, "component:fromDate:", 8, date2)}];

  v18 = self->_currentCalendar;
  date3 = [MEMORY[0x277CBEAA8] date];
  [v13 setYear:{-[NSCalendar component:fromDate:](v18, "component:fromDate:", 4, date3)}];

  v60 = v13;
  v20 = [(NSCalendar *)self->_currentCalendar dateFromComponents:v13];
  currentDate = self->_currentDate;
  self->_currentDate = v20;

  v22 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v22 setCalendar:self->_currentCalendar];
  [v22 setDateStyle:1];
  v59 = v22;
  v23 = [v22 stringFromDate:self->_currentDate];
  currentDateKey = self->_currentDateKey;
  self->_currentDateKey = v23;

  *&self->_numArchivesGenerated = 0u;
  *&self->_numJournalsProcessed = 0u;
  *&self->_numArchiveItemsExtracted = 0u;
  *&self->_numQueryItemsArchived = 0u;
  *&self->_currentDeletesCount = 0u;
  *&self->_currentArchiveCount = 0u;
  *&self->_currentArchiveSize = 0u;
  *&self->_startTime = 0u;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  feedback = self->_feedback;
  self->_feedback = v25;

  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  defaults = self->_defaults;
  self->_defaults = v27;

  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  bundles = self->_bundles;
  self->_bundles = v29;

  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  sessions = self->_sessions;
  self->_sessions = v31;

  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  signposts = self->_signposts;
  self->_signposts = v33;

  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  stats = self->_stats;
  self->_stats = v35;

  v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
  embeddingGenCompleteness = self->_embeddingGenCompleteness;
  self->_embeddingGenCompleteness = v37;

  self->_embeddingGenCompletenessLock._os_unfair_lock_opaque = 0;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v39 = statsCopy;
  v40 = [v39 countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v65;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v65 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v64 + 1) + 8 * i);
        if ([v44 hasPrefix:self->_currentDateKey])
        {
          v45 = [v44 componentsSeparatedByString:@":"];
          if ([v45 count] == 3)
          {
            v46 = [v45 objectAtIndex:1];
            lastObject = [v45 lastObject];
            intValue = [lastObject intValue];

            v49 = self->_stats;
            v50 = [MEMORY[0x277CCABB0] numberWithInteger:intValue];
            [(NSMutableDictionary *)v49 setObject:v50 forKey:v46];
          }
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v64 objects:v68 count:16];
    }

    while (v41);
  }

  v51 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:@"currentPid"];

  if (!v51)
  {
    [(NSMutableDictionary *)self->_stats setObject:&unk_2846E7E30 forKeyedSubscript:@"currentPid"];
  }

  v52 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:@"currentPid"];
  self->_currentPid = ([v52 intValue] + 1);

  v53 = objc_alloc_init(MEMORY[0x277CBEB58]);
  errors = self->_errors;
  self->_errors = v53;

  v55 = objc_alloc_init(MEMORY[0x277CBEB58]);
  events = self->_events;
  self->_events = v55;

  v57 = objc_alloc_init(MEMORY[0x277CBEB58]);
  flags = self->_flags;
  self->_flags = v57;

  self->_graphVersion = [versionCopy integerValue];
}

- (SKGKnowledgeFeedback)init
{
  v11.receiver = self;
  v11.super_class = SKGKnowledgeFeedback;
  v2 = [(SKGKnowledgeFeedback *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(SKGKnowledgeFeedback *)v2 defaultValueWithKey:@"stats" versionName:@"SpotlightKnowledgeV2"];
    v5 = [(SKGKnowledgeFeedback *)v3 defaultValueWithKey:@"graphVersionV2" versionName:@"SpotlightKnowledgeV2"];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = MEMORY[0x277CCABB0];
      mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
      v7 = [v8 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0], "graphVersion")}];
    }

    [(SKGKnowledgeFeedback *)v3 commonInitWithVersionName:@"SpotlightKnowledgeV2" graphVersion:v7 stats:v4];
    [(SKGKnowledgeFeedback *)v3 updateDefaults];
  }

  return v3;
}

- (SKGKnowledgeFeedback)initWithVersionName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = SKGKnowledgeFeedback;
  v5 = [(SKGKnowledgeFeedback *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SKGKnowledgeFeedback *)v5 defaultValueWithKey:@"stats" versionName:nameCopy];
    v8 = [(SKGKnowledgeFeedback *)v6 defaultValueWithKey:@"graphVersionV2" versionName:nameCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = MEMORY[0x277CCABB0];
      mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
      v10 = [v11 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0], "graphVersion")}];
    }

    [(SKGKnowledgeFeedback *)v6 commonInitWithVersionName:nameCopy graphVersion:v10 stats:v7];
    [(SKGKnowledgeFeedback *)v6 updateDefaults];
  }

  return v6;
}

- (void)clear
{
  v40 = *MEMORY[0x277D85DE8];
  if (clear_onceToken != -1)
  {
    [SKGKnowledgeFeedback clear];
  }

  v3 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"graphVersionV2"];
  v4 = v3;
  if (v3)
  {
    v27 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CCABB0];
    mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
    v27 = [v5 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0], "graphVersion")}];
  }

  [(SKGKnowledgeFeedback *)self versionName];
  v26 = v28 = self;
  v7 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:?];
  v8 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    v13 = &requiredAttributes_onceKeyReqToken;
    v29 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        if ([v13[21] containsObject:v15])
        {
LABEL_22:
          v16 = [v9 objectForKeyedSubscript:v15];
          [v8 setObject:v16 forKeyedSubscript:v15];
        }

        else
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v16 = clear_prefixesToPreserve;
          v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = v8;
            v20 = v13;
            v21 = *v31;
            while (2)
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v31 != v21)
                {
                  objc_enumerationMutation(v16);
                }

                if ([v15 hasPrefix:*(*(&v30 + 1) + 8 * j)])
                {

                  v13 = v20;
                  v8 = v19;
                  v12 = v29;
                  goto LABEL_22;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }

            v13 = v20;
            v8 = v19;
            v12 = v29;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  [(SKGKnowledgeFeedback *)v28 removeDefaults];
  os_unfair_lock_lock(&gFeedbackLock_0);
  [(SKGKnowledgeFeedback *)v28 commonInitWithVersionName:v26 graphVersion:v27 stats:MEMORY[0x277CBEBF8]];
  os_unfair_lock_unlock(&gFeedbackLock_0);
  v23 = [(SKGKnowledgeFeedback *)v28 defaultPropertiesForVersionName:v26];
  v24 = [v23 mutableCopy];

  [v24 addEntriesFromDictionary:v8];
  defaults = [(SKGKnowledgeFeedback *)v28 defaults];
  [defaults setObject:v24 forKey:v26];

  [(SKGKnowledgeFeedback *)v28 updateDefaults];
}

void __29__SKGKnowledgeFeedback_clear__block_invoke()
{
  v0 = clear_keysToPreserve;
  clear_keysToPreserve = &unk_2846E8490;

  v1 = clear_prefixesToPreserve;
  clear_prefixesToPreserve = &unk_2846E84A8;
}

- (int64_t)getGenCompleteDayString:(id)string forBundle:(id)bundle
{
  stringCopy = string;
  bundleCopy = bundle;
  if ([bundleCopy length])
  {
    bundleCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@#%@", stringCopy, bundleCopy];
  }

  else
  {
    bundleCopy = stringCopy;
  }

  v9 = bundleCopy;
  v10 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:bundleCopy];
  v11 = v10;
  if (v10)
  {
    integerValue = [v10 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (void)setGenCompleteDayString:(id)string forBundle:(id)bundle day:(int64_t)day
{
  stringCopy = string;
  bundleCopy = bundle;
  if ([bundleCopy length])
  {
    bundleCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@#%@", stringCopy, bundleCopy];
  }

  else
  {
    bundleCopy = stringCopy;
  }

  v10 = bundleCopy;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:day];
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:v10 value:v11];
}

- (id)getEmbeddingGenCompletenessForBundle:(id)bundle
{
  bundleCopy = bundle;
  if ([bundleCopy length] && (objc_msgSend(bundleCopy, "isEqualToString:", @"Total") & 1) == 0)
  {
    bundleCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"embeddingGenCompleteness#%@", bundleCopy];
  }

  else
  {
    bundleCopy = @"embeddingGenComplete";
  }

  os_unfair_lock_lock(&self->_embeddingGenCompletenessLock);
  v6 = [(NSMutableDictionary *)self->_embeddingGenCompleteness objectForKeyedSubscript:bundleCopy];
  os_unfair_lock_unlock(&self->_embeddingGenCompletenessLock);
  if (!v6)
  {
    v6 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:bundleCopy];
    if (v6)
    {
      os_unfair_lock_lock(&self->_embeddingGenCompletenessLock);
      [(NSMutableDictionary *)self->_embeddingGenCompleteness setObject:v6 forKeyedSubscript:bundleCopy];
      os_unfair_lock_unlock(&self->_embeddingGenCompletenessLock);
    }
  }

  return v6;
}

- (void)setEmbeddingGenCompleteness:(id)completeness forBundle:(id)bundle
{
  bundleCopy = bundle;
  completenessCopy = completeness;
  if ([bundleCopy length] && (objc_msgSend(bundleCopy, "isEqualToString:", @"Total") & 1) == 0)
  {
    bundleCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"embeddingGenCompleteness#%@", bundleCopy];
  }

  else
  {
    bundleCopy = @"embeddingGenComplete";
  }

  os_unfair_lock_lock(&self->_embeddingGenCompletenessLock);
  [(NSMutableDictionary *)self->_embeddingGenCompleteness setObject:completenessCopy forKeyedSubscript:bundleCopy];
  os_unfair_lock_unlock(&self->_embeddingGenCompletenessLock);
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:bundleCopy value:completenessCopy];
}

- (void)clearEmbeddingDefaults
{
  v18 = *MEMORY[0x277D85DE8];
  versionName = [(SKGKnowledgeFeedback *)self versionName];
  v4 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:versionName];
  os_unfair_lock_lock(&gFeedbackLock_0);
  defaults = [(SKGKnowledgeFeedback *)self defaults];
  v6 = [v4 mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (([v12 hasPrefix:{@"embeddingGenCompleteDay", v13}] & 1) != 0 || objc_msgSend(v12, "isEqual:", @"embeddingModelVersion"))
        {
          [v6 removeObjectForKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [defaults setObject:v6 forKey:versionName];
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)clearEmbeddingGenCompleteDay
{
  v18 = *MEMORY[0x277D85DE8];
  versionName = [(SKGKnowledgeFeedback *)self versionName];
  v4 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:versionName];
  os_unfair_lock_lock(&gFeedbackLock_0);
  defaults = [(SKGKnowledgeFeedback *)self defaults];
  v6 = [v4 mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 hasPrefix:{@"embeddingGenCompleteDay", v13}])
        {
          [v6 removeObjectForKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [defaults setObject:v6 forKey:versionName];
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)clearSuggestedEventsGenCompleteDay
{
  v18 = *MEMORY[0x277D85DE8];
  versionName = [(SKGKnowledgeFeedback *)self versionName];
  v4 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:versionName];
  os_unfair_lock_lock(&gFeedbackLock_0);
  defaults = [(SKGKnowledgeFeedback *)self defaults];
  v6 = [v4 mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 hasPrefix:{@"suggestedEventsGenCompleteDay", v13}])
        {
          [v6 removeObjectForKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [defaults setObject:v6 forKey:versionName];
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)clearDocumentUnderstandingGenCompleteDay
{
  v18 = *MEMORY[0x277D85DE8];
  versionName = [(SKGKnowledgeFeedback *)self versionName];
  v4 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:versionName];
  os_unfair_lock_lock(&gFeedbackLock_0);
  defaults = [(SKGKnowledgeFeedback *)self defaults];
  v6 = [v4 mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 hasPrefix:{@"documentUnderstandingGenCompleteDay", v13}])
        {
          [v6 removeObjectForKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [defaults setObject:v6 forKey:versionName];
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)clearKeyphraseGenCompleteDay
{
  v18 = *MEMORY[0x277D85DE8];
  versionName = [(SKGKnowledgeFeedback *)self versionName];
  v4 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:versionName];
  os_unfair_lock_lock(&gFeedbackLock_0);
  defaults = [(SKGKnowledgeFeedback *)self defaults];
  v6 = [v4 mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 hasPrefix:{@"keyphraseGenCompleteDay", v13}])
        {
          [v6 removeObjectForKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [defaults setObject:v6 forKey:versionName];
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)updateDefaults
{
  v130 = *MEMORY[0x277D85DE8];
  versionName = [(SKGKnowledgeFeedback *)self versionName];
  os_unfair_lock_lock(&gFeedbackLock_0);
  feedback = self->_feedback;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - self->_startTime];
  [(NSMutableDictionary *)feedback setObject:v5 forKey:@"timeSinceStart"];

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v6 = self->_events;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v121 objects:v129 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v122;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v122 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v121 + 1) + 8 * i);
        if ([v11 intValue] != 7 && objc_msgSend(v11, "intValue") != 6)
        {
          if (self->_numQueryItemsExtracted)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]queryItemExtractedCount", v11];
            numQueryItemsExtracted = self->_numQueryItemsExtracted;
            v14 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v12];

            if (v14)
            {
              v15 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v12];
              numQueryItemsExtracted += [v15 intValue];
            }

            stats = self->_stats;
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numQueryItemsExtracted];
            [(NSMutableDictionary *)stats setObject:v17 forKey:v12];
          }

          if (self->_numQueryItemsUpdated)
          {
            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]queryItemUpdatedCount", v11];
            numQueryItemsUpdated = self->_numQueryItemsUpdated;
            v20 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v18];

            if (v20)
            {
              v21 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v18];
              numQueryItemsUpdated += [v21 intValue];
            }

            v22 = self->_stats;
            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numQueryItemsUpdated];
            [(NSMutableDictionary *)v22 setObject:v23 forKey:v18];
          }

          if (self->_numQueryItemsArchived)
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]queryItemArchivedCount", v11];
            numQueryItemsArchived = self->_numQueryItemsArchived;
            v26 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v24];

            if (v26)
            {
              v27 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v24];
              numQueryItemsArchived += [v27 intValue];
            }

            v28 = self->_stats;
            v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numQueryItemsArchived];
            [(NSMutableDictionary *)v28 setObject:v29 forKey:v24];
          }

          if (self->_numArchiveItemsExtracted)
          {
            v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]archiveItemExtractedCount", v11];
            numArchiveItemsExtracted = self->_numArchiveItemsExtracted;
            v32 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v30];

            if (v32)
            {
              v33 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v30];
              numArchiveItemsExtracted += [v33 intValue];
            }

            v34 = self->_stats;
            v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numArchiveItemsExtracted];
            [(NSMutableDictionary *)v34 setObject:v35 forKey:v30];
          }

          if (self->_numJournalItemsExtracted)
          {
            v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]journalItemExtractedCount", v11];
            numJournalItemsExtracted = self->_numJournalItemsExtracted;
            v38 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v36];

            if (v38)
            {
              v39 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v36];
              numJournalItemsExtracted += [v39 intValue];
            }

            v40 = self->_stats;
            v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numJournalItemsExtracted];
            [(NSMutableDictionary *)v40 setObject:v41 forKey:v36];
          }

          if (self->_numJournalsProcessed)
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]journalProcessedCount", v11];
            numJournalsProcessed = self->_numJournalsProcessed;
            v44 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v42];

            if (v44)
            {
              v45 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v42];
              numJournalsProcessed += [v45 intValue];
            }

            v46 = self->_stats;
            v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numJournalsProcessed];
            [(NSMutableDictionary *)v46 setObject:v47 forKey:v42];
          }

          if (self->_numArchivesProcessed)
          {
            v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]archiveProcessedCount", v11];
            numArchivesProcessed = self->_numArchivesProcessed;
            v50 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v48];

            if (v50)
            {
              v51 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v48];
              numArchivesProcessed += [v51 intValue];
            }

            v52 = self->_stats;
            v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numArchivesProcessed];
            [(NSMutableDictionary *)v52 setObject:v53 forKey:v48];
          }
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v121 objects:v129 count:16];
    }

    while (v8);
  }

  v54 = self->_stats;
  v55 = [MEMORY[0x277CCABB0] numberWithInteger:self->_currentPid];
  [(NSMutableDictionary *)v54 setObject:v55 forKey:@"currentPid"];

  if ([(NSMutableDictionary *)self->_stats count])
  {
    v111 = versionName;
    v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = self->_stats;
    v57 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v117 objects:v128 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v118;
      do
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v118 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v61 = *(*(&v117 + 1) + 8 * j);
          v62 = MEMORY[0x277CCACA8];
          currentDateKey = self->_currentDateKey;
          v64 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v61];
          v65 = [v62 stringWithFormat:@"%@:%@:%@", currentDateKey, v61, v64];

          [v56 addObject:v65];
        }

        v58 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v117 objects:v128 count:16];
      }

      while (v58);
    }

    versionName = v111;
    v66 = v56;
  }

  else
  {
    v66 = 0;
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  if (_os_feature_enabled_impl() && ([MEMORY[0x277D65768] sharedInstance], v67 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend(v67, "deviceCanGenerateEmbeddings"), v67, v68))
  {
    v69 = objc_opt_new();
    v70 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingModelVersion"];
    v71 = v70;
    if (v70 && (v72 = [v70 unsignedIntValue], objc_msgSend(MEMORY[0x277D65768], "version") == v72))
    {
      v73 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingGenStartTime"];
      v74 = [v69 dateFromString:v73];
      if (!v74)
      {
        v74 = [MEMORY[0x277CBEAA8] now];
        v75 = [v69 stringFromDate:v74];
        [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingGenStartTime" value:v75];

        [(SKGKnowledgeFeedback *)self clearEmbeddingGenCompleteDay];
      }

      v76 = v71;
    }

    else
    {
      v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277D65768], "version")}];

      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingModelVersion" value:v76];
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v77 = SKGLogInit();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v127 = v76;
          _os_log_impl(&dword_231B25000, v77, OS_LOG_TYPE_DEFAULT, "SKG: updated embedding model version to %@", buf, 0xCu);
        }
      }

      v74 = [MEMORY[0x277CBEAA8] now];
      v78 = [v69 stringFromDate:v74];
      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingGenStartTime" value:v78];

      [(SKGKnowledgeFeedback *)self clearEmbeddingGenCompleteDay];
    }

    os_unfair_lock_lock(&gFeedbackLock_0);
    embeddingGenStartTime = self->_embeddingGenStartTime;
    self->_embeddingGenStartTime = v74;

    os_unfair_lock_unlock(&gFeedbackLock_0);
  }

  else
  {
    [(SKGKnowledgeFeedback *)self clearEmbeddingDefaults];
  }

  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  enableSuggestedEvents = [mEMORY[0x277D657A0] enableSuggestedEvents];

  if (enableSuggestedEvents)
  {
    v82 = objc_opt_new();
    v83 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"suggestedEventsGenStartTime"];
    v84 = [v82 dateFromString:v83];
    if (!v84)
    {
      v84 = [MEMORY[0x277CBEAA8] now];
      v85 = [v82 stringFromDate:v84];
      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"suggestedEventsGenStartTime" value:v85];

      [(SKGKnowledgeFeedback *)self clearSuggestedEventsGenCompleteDay];
    }

    os_unfair_lock_lock(&gFeedbackLock_0);
    suggestedEventsGenStartTime = self->_suggestedEventsGenStartTime;
    self->_suggestedEventsGenStartTime = v84;

    os_unfair_lock_unlock(&gFeedbackLock_0);
  }

  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  enableDocumentUnderstanding = [mEMORY[0x277D657A0]2 enableDocumentUnderstanding];

  if (enableDocumentUnderstanding)
  {
    v89 = objc_opt_new();
    v90 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"documentUnderstandingGenStartTime"];
    v91 = [v89 dateFromString:v90];
    if (!v91)
    {
      v91 = [MEMORY[0x277CBEAA8] now];
      v92 = [v89 stringFromDate:v91];
      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"documentUnderstandingGenStartTime" value:v92];

      [(SKGKnowledgeFeedback *)self clearDocumentUnderstandingGenCompleteDay];
    }

    os_unfair_lock_lock(&gFeedbackLock_0);
    documentUnderstandingGenStartTime = self->_documentUnderstandingGenStartTime;
    self->_documentUnderstandingGenStartTime = v91;

    os_unfair_lock_unlock(&gFeedbackLock_0);
  }

  mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
  enableKeyphrases = [mEMORY[0x277D657A0]3 enableKeyphrases];

  if (enableKeyphrases)
  {
    v96 = objc_opt_new();
    v97 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"keyphraseGenStartTime"];
    v98 = [v96 dateFromString:v97];
    if (!v98)
    {
      v98 = [MEMORY[0x277CBEAA8] now];
      v99 = [v96 stringFromDate:v98];
      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"keyphraseGenStartTime" value:v99];

      [(SKGKnowledgeFeedback *)self clearKeyphraseGenCompleteDay];
    }

    os_unfair_lock_lock(&gFeedbackLock_0);
    keyphraseGenStartTime = self->_keyphraseGenStartTime;
    self->_keyphraseGenStartTime = v98;

    os_unfair_lock_unlock(&gFeedbackLock_0);
  }

  if (v66)
  {
    [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"stats" value:v66];
  }

  v101 = [MEMORY[0x277CCABB0] numberWithInteger:self->_graphVersion];
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"graphVersionV2" value:v101];

  v102 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:versionName];
  os_unfair_lock_lock(&gFeedbackLock_0);
  [(NSMutableDictionary *)self->_defaults removeAllObjects];
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v103 = v102;
  v104 = [v103 countByEnumeratingWithState:&v113 objects:v125 count:16];
  if (v104)
  {
    v105 = v104;
    v106 = *v114;
    do
    {
      for (k = 0; k != v105; ++k)
      {
        if (*v114 != v106)
        {
          objc_enumerationMutation(v103);
        }

        v108 = *(*(&v113 + 1) + 8 * k);
        defaults = self->_defaults;
        v110 = [v103 objectForKeyedSubscript:v108];
        [(NSMutableDictionary *)defaults setObject:v110 forKey:v108];
      }

      v105 = [v103 countByEnumeratingWithState:&v113 objects:v125 count:16];
    }

    while (v105);
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)updateFeedback
{
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasEvent:](self, "hasEvent:", 7)}];
  [v28 setObject:v3 forKey:@"shouldReset"];

  v4 = MEMORY[0x277CBEC28];
  [v28 setObject:MEMORY[0x277CBEC28] forKey:@"shouldRefresh"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasFlag:](self, "hasFlag:", 1)}];
  [v28 setObject:v5 forKey:@"shouldIgnore"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasEvent:](self, "hasEvent:", 1)}];
  [v28 setObject:v6 forKey:@"shouldAnalyze"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasFlag:](self, "hasFlag:", 11)}];
  [v28 setObject:v7 forKey:@"didReset"];

  [v28 setObject:v4 forKey:@"didRefresh"];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasFlag:](self, "hasFlag:", 10)}];
  [v28 setObject:v8 forKey:@"didIgnore"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasFlag:](self, "hasFlag:", 0)}];
  [v28 setObject:v9 forKey:@"didComplete"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasFlag:](self, "hasFlag:", 29)}];
  [v28 setObject:v10 forKey:@"didExceedItems"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasFlag:](self, "hasFlag:", 17)}];
  [v28 setObject:v11 forKey:@"didRunTooLong"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKGKnowledgeFeedback hasFlag:](self, "hasFlag:", 18)}];
  [v28 setObject:v12 forKey:@"invalidGraphVersion"];

  v13 = [(SKGKnowledgeFeedback *)self hasFlag:9];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  [v28 setObject:v14 forKey:@"numAnalysisRuns"];

  os_unfair_lock_lock(&gFeedbackLock_0);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numPeopleGenerated];
  [v28 setObject:v15 forKey:@"numPeopleGenerated"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numQueryItemsArchived];
  [v28 setObject:v16 forKey:@"numArchivedItems"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numArchiveItemsExtracted + self->_numQueryItemsExtracted];
  [v28 setObject:v17 forKey:@"numItemsExtracted"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numQueryItemsExtracted + self->_numJournalItemsExtracted];
  [v28 setObject:v18 forKey:@"numJournalItemsExtracted"];

  v19 = [(NSMutableDictionary *)self->_bundles count];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  [v28 setObject:v20 forKey:@"numBundlesExtracted"];

  [v28 setObject:&unk_2846E7E30 forKey:@"timeSinceRefresh"];
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - self->_startTime];
  [v28 setObject:v21 forKey:@"timeSinceStart"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentGraphSize];
  [v28 setObject:v22 forKey:@"graphSize"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentArchiveSize];
  [v28 setObject:v23 forKey:@"archiveSize"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentJournalSize];
  [v28 setObject:v24 forKey:@"journalSize"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentArchiveCount];
  [v28 setObject:v25 forKey:@"archiveCount"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentJournalCount];
  [v28 setObject:v26 forKey:@"journalCount"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentDeletesCount];
  [v28 setObject:v27 forKey:@"deletesCount"];

  [(NSMutableDictionary *)self->_feedback removeAllObjects];
  [(NSMutableDictionary *)self->_feedback addEntriesFromDictionary:v28];
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (NSDictionary)feedbackDefaults
{
  if ([(SKGKnowledgeFeedback *)self hasFlag:12])
  {
    v3 = 0;
  }

  else
  {
    [(SKGKnowledgeFeedback *)self updateDefaults];
    os_unfair_lock_lock(&gFeedbackLock_0);
    v3 = [(NSMutableDictionary *)self->_defaults copy];
    os_unfair_lock_unlock(&gFeedbackLock_0);
  }

  return v3;
}

- (NSDictionary)feedbackData
{
  [(SKGKnowledgeFeedback *)self updateFeedback];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v3 = [(NSMutableDictionary *)self->_feedback copy];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v3;
}

- (id)versionName
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  v3 = [(NSString *)self->_versionName copy];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v3;
}

- (NSDate)embeddingGenStartTime
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  v3 = [(NSDate *)self->_embeddingGenStartTime copy];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v3;
}

- (NSDate)suggestedEventsGenStartTime
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  v3 = [(NSDate *)self->_suggestedEventsGenStartTime copy];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v3;
}

- (NSDate)documentUnderstandingGenStartTime
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  v3 = [(NSDate *)self->_documentUnderstandingGenStartTime copy];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v3;
}

- (NSDate)keyphraseGenStartTime
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  v3 = [(NSDate *)self->_keyphraseGenStartTime copy];
  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v3;
}

- (int64_t)graphVersion
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  graphVersion = self->_graphVersion;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return graphVersion;
}

- (int64_t)currentGraphSize
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  currentGraphSize = self->_currentGraphSize;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return currentGraphSize;
}

- (int64_t)currentArchiveSize
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  currentArchiveSize = self->_currentArchiveSize;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return currentArchiveSize;
}

- (int64_t)currentJournalSize
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  currentJournalSize = self->_currentJournalSize;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return currentJournalSize;
}

- (int64_t)currentArchiveCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  currentArchiveCount = self->_currentArchiveCount;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return currentArchiveCount;
}

- (int64_t)currentJournalCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  currentJournalCount = self->_currentJournalCount;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return currentJournalCount;
}

- (int64_t)currentDeletesCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  currentDeletesCount = self->_currentDeletesCount;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return currentDeletesCount;
}

- (int64_t)queryItemExtractedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numQueryItemsExtracted = self->_numQueryItemsExtracted;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numQueryItemsExtracted;
}

- (int64_t)queryItemUpdatedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numQueryItemsUpdated = self->_numQueryItemsUpdated;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numQueryItemsUpdated;
}

- (int64_t)queryItemArchivedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numQueryItemsArchived = self->_numQueryItemsArchived;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numQueryItemsArchived;
}

- (int64_t)archiveItemExtractedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numArchiveItemsExtracted = self->_numArchiveItemsExtracted;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numArchiveItemsExtracted;
}

- (int64_t)journalItemExtractedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numJournalItemsExtracted = self->_numJournalItemsExtracted;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numJournalItemsExtracted;
}

- (int64_t)journalProcessedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numJournalsProcessed = self->_numJournalsProcessed;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numJournalsProcessed;
}

- (int64_t)archiveProcessedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numArchivesProcessed = self->_numArchivesProcessed;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numArchivesProcessed;
}

- (int64_t)archiveGeneratedCount
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  numArchivesGenerated = self->_numArchivesGenerated;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return numArchivesGenerated;
}

- (double)elapsedTime
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  v3 = CFAbsoluteTimeGetCurrent() - self->_startTime;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  return v3;
}

- (void)logStart
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_startTime = CFAbsoluteTimeGetCurrent();

  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logEnd
{
  v56 = *MEMORY[0x277D85DE8];
  [(SKGKnowledgeFeedback *)self updateDefaults];
  versionName = [(SKGKnowledgeFeedback *)self versionName];
  os_unfair_lock_lock(&gFeedbackLock_0);
  if (self->_sessions)
  {
    v40 = versionName;
    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
    allKeys = [(NSMutableDictionary *)self->_sessions allKeys];
    v5 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v7)
    {
      v8 = v7;
      v45 = *v51;
      v9 = @"start";
      v10 = @"end";
      allocator = *MEMORY[0x277CBECE8];
      do
      {
        v11 = 0;
        v42 = v8;
        do
        {
          if (*v51 != v45)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v50 + 1) + 8 * v11);
          v13 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v12];
          v14 = [v13 objectForKey:v9];

          v15 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v12];
          v16 = [v15 objectForKey:v10];

          [v14 doubleValue];
          v18 = CFDateCreate(allocator, v17);
          v19 = [v12 intValue] - 1;
          if (v19 <= 4 && v18 != 0 && v16 != 0)
          {
            v22 = off_27893EDF8[v19];
            v43 = MEMORY[0x277CCACA8];
            v23 = v10;
            v24 = v9;
            v25 = v6;
            currentDateKey = self->_currentDateKey;
            [v16 doubleValue];
            v39 = v22;
            v8 = v42;
            v38 = currentDateKey;
            v6 = v25;
            v9 = v24;
            v10 = v23;
            v28 = [v43 stringWithFormat:@"%@ - %@ (%@): %5.0f", v38, v39, v18, v27];
            [v41 addObject:v28];
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v8);
    }

    os_unfair_lock_unlock(&gFeedbackLock_0);
    versionName = v40;
    if (v41)
    {
      v29 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"sessions" versionName:v40];
      v30 = v29;
      if (v29)
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v31 = v29;
        v32 = [v31 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = 0;
          v35 = *v47;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v47 != v35)
              {
                objc_enumerationMutation(v31);
              }

              v37 = *(*(&v46 + 1) + 8 * i);
              if ([v37 hasPrefix:self->_currentDateKey])
              {
                [v41 addObject:v37];
              }

              else
              {
                if (v34 > 0x13)
                {
                  goto LABEL_30;
                }

                [v41 addObject:v37];
                ++v34;
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v33);
        }

LABEL_30:
      }

      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"sessions" value:v41];
    }
  }

  else
  {
    os_unfair_lock_unlock(&gFeedbackLock_0);
  }
}

- (void)logGraphVersion:(int64_t)version
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_graphVersion = version;
  os_unfair_lock_unlock(&gFeedbackLock_0);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_graphVersion];
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"graphVersionV2" value:v5];
}

- (void)logFlag:(int64_t)flag message:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (messageCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = 134218242;
      flagCopy = flag;
      v14 = 2112;
      v15 = messageCopy;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "SKG: flag (%lu) %@", &v12, 0x16u);
    }

    os_unfair_lock_lock(&gFeedbackLock_0);
    flags = self->_flags;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:flag];
    [(NSMutableSet *)flags addObject:v8];

    stats = self->_stats;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:flag];
    [(NSMutableDictionary *)stats setObject:v10 forKey:messageCopy];
  }

  else
  {
    os_unfair_lock_lock(&gFeedbackLock_0);
    v11 = self->_flags;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:flag];
    [(NSMutableSet *)v11 addObject:v10];
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logEvent:(int64_t)event message:(id)message
{
  v13 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (messageCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    eventCopy = event;
    v11 = 2112;
    v12 = messageCopy;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: event (%lu) %@", &v9, 0x16u);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  events = self->_events;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:event];
  [(NSMutableSet *)events addObject:v8];

  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logError:(int64_t)error message:(id)message
{
  messageCopy = message;
  if (messageCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [SKGKnowledgeFeedback logError:messageCopy message:error];
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  errors = self->_errors;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:error];
  [(NSMutableSet *)errors addObject:v8];

  os_unfair_lock_unlock(&gFeedbackLock_0);
  [(SKGKnowledgeFeedback *)self updateDefaults];
}

- (void)logSignpost:(int64_t)signpost message:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  os_unfair_lock_lock(&gFeedbackLock_0);
  v7 = SKGLogInit();
  v8 = v7;
  v9 = __ROR8__(signpost - 1, 1);
  if ((v9 - 6) < 9 || v9 == 0)
  {
    unsignedLongLongValue = os_signpost_id_make_with_pointer(v7, self);
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue];
    [(NSMutableDictionary *)self->_signposts setObject:v12 forKeyedSubscript:messageCopy];

    v13 = v8;
    if ((unsignedLongLongValue - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_10;
    }

    v14 = v13;
    if (!os_signpost_enabled(v13))
    {
      goto LABEL_10;
    }

    v22 = 138412290;
    v23 = messageCopy;
    v15 = "SKG start";
    v16 = v14;
    v17 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_9;
  }

  v18 = [(NSMutableDictionary *)self->_signposts objectForKeyedSubscript:messageCopy];

  if (v18)
  {
    v19 = [(NSMutableDictionary *)self->_signposts objectForKeyedSubscript:messageCopy];
    unsignedLongLongValue = [v19 unsignedLongLongValue];

    v20 = v8;
    if ((unsignedLongLongValue - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_10;
    }

    v21 = v20;
    if (!os_signpost_enabled(v20))
    {
      goto LABEL_10;
    }

    v22 = 138412290;
    v23 = messageCopy;
    v15 = "SKG end";
    v16 = v21;
    v17 = OS_SIGNPOST_INTERVAL_END;
LABEL_9:
    _os_signpost_emit_with_name_impl(&dword_231B25000, v16, v17, unsignedLongLongValue, v15, "%@", &v22, 0xCu);
LABEL_10:
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logGraphSize:(unint64_t)size
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    sizeCopy = size;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: graph size %lu", &v5, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_currentGraphSize = size;
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logArchiveSize:(unint64_t)size
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    sizeCopy = size;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: archive size %lu", &v5, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_currentArchiveSize = size;
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logJournalSize:(unint64_t)size
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    sizeCopy = size;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: journal size %lu", &v5, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_currentJournalSize = size;
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logArchiveCount:(unint64_t)count
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    countCopy = count;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: archive count %lu", &v5, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_currentArchiveCount = count;
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logJournalCount:(unint64_t)count
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    countCopy = count;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: journal count %lu", &v5, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_currentJournalCount = count;
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logDeletesCount:(unint64_t)count
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    countCopy = count;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: deletes journal count %lu", &v5, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_currentDeletesCount = count;
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logMarkedPurgeableAtPath:(id)path
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    pathCopy = path;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: purgeable %@", &v4, 0xCu);
  }
}

- (void)logProcessedJournalWithName:(id)name
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    nameCopy = name;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: processed journal %@", &v5, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  ++self->_numJournalsProcessed;
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logProcessedArchiveWithName:(id)name
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    nameCopy = name;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: processed archive %@", &v5, 0xCu);
  }

  os_unfair_lock_lock(&gFeedbackLock_0);
  ++self->_numArchivesProcessed;
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logExtractedQueryItemCount:(unint64_t)count bundleIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock(&gFeedbackLock_0);
  v7 = self->_numQueryItemsExtracted + count;
  self->_numQueryItemsExtracted = v7;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v7, 2) <= 0x28F5C28F5C28F5CuLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    numQueryItemsExtracted = self->_numQueryItemsExtracted;
    v14 = 134217984;
    v15 = numQueryItemsExtracted;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: %lu items extracted", &v14, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:identifierCopy];

  if (!v9)
  {
    [(NSMutableDictionary *)self->_bundles setObject:&unk_2846E7E30 forKey:identifierCopy];
  }

  v10 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:identifierCopy];
  v11 = count + [v10 intValue];

  bundles = self->_bundles;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  [(NSMutableDictionary *)bundles setObject:v13 forKey:identifierCopy];

  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logUpdatedQueryItemCount:(unint64_t)count bundleIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_numQueryItemsUpdated += count;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    numQueryItemsUpdated = self->_numQueryItemsUpdated;
    v13 = 134217984;
    v14 = numQueryItemsUpdated;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: %lu query items updated", &v13, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:identifierCopy];

  if (!v8)
  {
    [(NSMutableDictionary *)self->_bundles setObject:&unk_2846E7E30 forKey:identifierCopy];
  }

  v9 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:identifierCopy];
  v10 = count + [v9 intValue];

  bundles = self->_bundles;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  [(NSMutableDictionary *)bundles setObject:v12 forKey:identifierCopy];

  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logArchivedQueryItemCount:(unint64_t)count bundleIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock(&gFeedbackLock_0);
  self->_numQueryItemsArchived += count;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    numQueryItemsArchived = self->_numQueryItemsArchived;
    v13 = 134217984;
    v14 = numQueryItemsArchived;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: %lu query items archived", &v13, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:identifierCopy];

  if (!v8)
  {
    [(NSMutableDictionary *)self->_bundles setObject:&unk_2846E7E30 forKey:identifierCopy];
  }

  v9 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:identifierCopy];
  v10 = count + [v9 intValue];

  bundles = self->_bundles;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  [(NSMutableDictionary *)bundles setObject:v12 forKey:identifierCopy];

  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logExtractedJournalItemCount:(unint64_t)count bundleIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock(&gFeedbackLock_0);
  v7 = self->_numJournalItemsExtracted + count;
  self->_numJournalItemsExtracted = v7;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v7, 2) <= 0x28F5C28F5C28F5CuLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    numJournalItemsExtracted = self->_numJournalItemsExtracted;
    v14 = 134217984;
    v15 = numJournalItemsExtracted;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: %lu journal items extracted", &v14, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:identifierCopy];

  if (!v9)
  {
    [(NSMutableDictionary *)self->_bundles setObject:&unk_2846E7E30 forKey:identifierCopy];
  }

  v10 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:identifierCopy];
  v11 = count + [v10 intValue];

  bundles = self->_bundles;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  [(NSMutableDictionary *)bundles setObject:v13 forKey:identifierCopy];

  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logExtractedArchiveItemCount:(unint64_t)count bundleIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock(&gFeedbackLock_0);
  v7 = self->_numArchiveItemsExtracted + count;
  self->_numArchiveItemsExtracted = v7;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v7, 2) <= 0x28F5C28F5C28F5CuLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    numArchiveItemsExtracted = self->_numArchiveItemsExtracted;
    v14 = 134217984;
    v15 = numArchiveItemsExtracted;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: %lu archive items extracted", &v14, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:identifierCopy];

  if (!v9)
  {
    [(NSMutableDictionary *)self->_bundles setObject:&unk_2846E7E30 forKey:identifierCopy];
  }

  v10 = [(NSMutableDictionary *)self->_bundles objectForKeyedSubscript:identifierCopy];
  v11 = count + [v10 intValue];

  bundles = self->_bundles;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  [(NSMutableDictionary *)bundles setObject:v13 forKey:identifierCopy];

  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (int64_t)getCurrentExtractedQueryItemCount
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_events;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = -1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 intValue] != 7 && objc_msgSend(v9, "intValue") != 6)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]queryItemExtractedCount", v9];
          v11 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v10];

          if (v11)
          {
            if (v7 == -1)
            {
              v7 = 0;
            }

            v12 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v10];
            v7 += [v12 integerValue];
          }
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = -1;
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  return v7;
}

- (int64_t)getCurrentExtractedJournalItemCount
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_events;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = -1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 intValue] != 7 && objc_msgSend(v9, "intValue") != 6)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]journalItemExtractedCount", v9];
          v11 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v10];

          if (v11)
          {
            if (v7 == -1)
            {
              v7 = 0;
            }

            v12 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v10];
            v7 += [v12 integerValue];
          }
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = -1;
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  return v7;
}

- (int64_t)getCurrentExtractedArchiveItemCount
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_events;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = -1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 intValue] != 7 && objc_msgSend(v9, "intValue") != 6)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]archiveItemExtractedCount", v9];
          v11 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v10];

          if (v11)
          {
            if (v7 == -1)
            {
              v7 = 0;
            }

            v12 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v10];
            v7 += [v12 integerValue];
          }
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = -1;
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  return v7;
}

- (BOOL)hasCurrentFlagWithName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock(&gFeedbackLock_0);
  v5 = [(NSMutableDictionary *)self->_stats objectForKey:nameCopy];

  os_unfair_lock_unlock(&gFeedbackLock_0);
  return v5 != 0;
}

- (void)logQueryTimeWithIdentifier:(id)identifier protectionClass:(id)class startTime:(double)time doneProcessing:(BOOL)processing
{
  processingCopy = processing;
  classCopy = @"None";
  if (class)
  {
    classCopy = class;
  }

  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", classCopy, identifier];
  v18 = identifier;
  if (processingCopy)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"startTime.%@", identifier];
    [(SKGKnowledgeFeedback *)self timeWithKey:v11];
    v13 = v12;

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"processingTime.%@", v18];
    [(SKGKnowledgeFeedback *)self setTimeWithKey:v14 value:v13];

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"finished.%@", v18];
    [(SKGKnowledgeFeedback *)self setModeWithKey:v15 value:1];

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"startTime.%@", v18];
    [(SKGKnowledgeFeedback *)self removeKey:v16];

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"endTime.%@", v18];
    [(SKGKnowledgeFeedback *)self removeKey:v17];
  }

  else
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"endTime.%@", identifier];
    [(SKGKnowledgeFeedback *)self setTimeWithKey:v17 value:time];
  }

  [(SKGKnowledgeFeedback *)self updateDefaults];
}

- (void)getQueryTimeWithIdentifier:(id)identifier protectionClass:(id)class startTime:(double *)time endTime:(double *)endTime processingEndTime:(double *)processingEndTime
{
  classCopy = @"None";
  if (class)
  {
    classCopy = class;
  }

  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", classCopy, identifier];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"finished.%@", identifier];
  v13 = [(SKGKnowledgeFeedback *)self modeWithKey:v12];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"endTime.%@", identifier];
  [(SKGKnowledgeFeedback *)self timeWithKey:v14];
  Current = v15;

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"processingTime.%@", identifier];
  [(SKGKnowledgeFeedback *)self timeWithKey:v17];
  v19 = v18;

  if (v13 || Current == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current + -60.0 >= v19)
    {
      v20 = Current + -60.0;
    }

    else
    {
      v20 = v19;
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"startTime.%@", identifier];
    [(SKGKnowledgeFeedback *)self setTimeWithKey:v21 value:Current];

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"finished.%@", identifier];
    [(SKGKnowledgeFeedback *)self removeKey:v22];
  }

  else
  {
    v20 = Current + -60.0;
  }

  *endTime = Current;
  *time = v20;
  *processingEndTime = v19;
  [(SKGKnowledgeFeedback *)self updateDefaults];
}

- (void)logArchiveWithIdentifier:(id)identifier protectionClass:(id)class
{
  classCopy = @"None";
  if (class)
  {
    classCopy = class;
  }

  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.CurrentFileIndex-%@", classCopy, identifier];
  [(SKGKnowledgeFeedback *)self setIndexWithKey:identifier value:[(SKGKnowledgeFeedback *)self indexWithKey:identifier]+ 1];
  os_unfair_lock_lock(&gFeedbackLock_0);
  ++self->_numArchivesGenerated;
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)logDefaultWithIdentifier:(id)identifier protectionClass:(id)class key:(id)key value:(id)value
{
  v9 = MEMORY[0x277CCACA8];
  if (class)
  {
    classCopy = class;
  }

  else
  {
    classCopy = @"None";
  }

  valueCopy = value;
  keyCopy = key;
  identifier = [v9 stringWithFormat:@"%@.%@", classCopy, identifier];
  keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", identifier, keyCopy];

  [(SKGKnowledgeFeedback *)self setDefaultWithKey:keyCopy value:valueCopy];
  [(SKGKnowledgeFeedback *)self updateDefaults];
}

- (id)getDefaultWithIdentifier:(id)identifier protectionClass:(id)class key:(id)key
{
  v7 = MEMORY[0x277CCACA8];
  if (class)
  {
    classCopy = class;
  }

  else
  {
    classCopy = @"None";
  }

  keyCopy = key;
  identifier = [v7 stringWithFormat:@"%@.%@", classCopy, identifier];
  keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", identifier, keyCopy];

  v12 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:keyCopy];

  return v12;
}

- (void)clearDefaultWithIdentifier:(id)identifier protectionClass:(id)class key:(id)key
{
  v7 = MEMORY[0x277CCACA8];
  if (class)
  {
    classCopy = class;
  }

  else
  {
    classCopy = @"None";
  }

  keyCopy = key;
  identifier = [v7 stringWithFormat:@"%@.%@", classCopy, identifier];
  keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", identifier, keyCopy];

  [(SKGKnowledgeFeedback *)self removeKey:keyCopy];
}

- (BOOL)hasEvent:(int64_t)event
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  events = self->_events;
  if (events)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:event];
    v7 = [(NSMutableSet *)events containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  return v7;
}

- (BOOL)hasError:(int64_t)error
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  errors = self->_errors;
  if (errors)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:error];
    v7 = [(NSMutableSet *)errors containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  return v7;
}

- (BOOL)hasFlag:(int64_t)flag
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  flags = self->_flags;
  if (flags)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:flag];
    v7 = [(NSMutableSet *)flags containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);
  return v7;
}

- (BOOL)generateReportUsingBlock:(id)block
{
  v53 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v49 = 0;
  feedbackData = [(SKGKnowledgeFeedback *)self feedbackData];
  v35 = feedbackData;
  if ([feedbackData count])
  {
    selfCopy = self;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = feedbackData;
    v6 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v46;
      while (2)
      {
        v10 = 0;
        v11 = v8;
        do
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v45 + 1) + 8 * v10);
          v13 = MEMORY[0x277CCACA8];
          v14 = [obj objectForKeyedSubscript:v12];
          v8 = [v13 stringWithFormat:@"%@: %@", v12, v14];

          blockCopy[2](blockCopy, v8, &v49);
          if (v49)
          {
            v15 = 0;
            goto LABEL_38;
          }

          ++v10;
          v11 = v8;
        }

        while (v7 != v10);
        v7 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 0;
    }

    self = selfCopy;
  }

  else
  {
    v8 = 0;
  }

  obj = [(SKGKnowledgeFeedback *)self versionName];
  [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:?];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = v44 = 0u;
  v34 = [v16 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v34)
  {
    v17 = *v42;
    v30 = *v42;
    v31 = v16;
    while (2)
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v16);
        }

        v19 = *(*(&v41 + 1) + 8 * i);
        v20 = [v16 objectForKeyedSubscript:v19];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v32 = v20;
          v21 = v20;
          v22 = [v21 countByEnumeratingWithState:&v37 objects:v50 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v38;
            while (2)
            {
              v25 = 0;
              v26 = v8;
              do
              {
                if (*v38 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", *(*(&v37 + 1) + 8 * v25)];

                blockCopy[2](blockCopy, v8, &v49);
                if (v49)
                {

                  v28 = v8;
                  v16 = v31;
                  v27 = v32;
                  goto LABEL_35;
                }

                ++v25;
                v26 = v8;
              }

              while (v23 != v25);
              v23 = [v21 countByEnumeratingWithState:&v37 objects:v50 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

          v17 = v30;
          v16 = v31;
          v27 = v32;
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v19, v20];
          v28 = v27 = v20;

          blockCopy[2](blockCopy, v28, &v49);
          v8 = v28;
          if (v49 == 1)
          {
LABEL_35:

            v15 = 0;
            v8 = v28;
            goto LABEL_37;
          }
        }
      }

      v15 = 1;
      v34 = [v16 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_37:

LABEL_38:
  return v15;
}

- (void)logUpdateTaskReindexCount:(unint64_t)count taskName:(id)name
{
  v29[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy length])
  {
    v7 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingGenUpdates"];
    v8 = v7;
    if (v7)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "unsignedIntegerValue") + 1}];
      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingGenUpdates" value:v9];

      if (!count)
      {
        goto LABEL_17;
      }
    }

    else
    {
      [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingGenUpdates" value:&unk_2846E7E48];
      if (!count)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    date = [MEMORY[0x277CBEAA8] date];
    v11 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:nameCopy];
    v12 = v11;
    v26 = date;
    if (v11)
    {
      v13 = [v11 mutableCopy];
      v14 = [date dateByAddingTimeInterval:-86400.0];
      v15 = [v13 count];
      if (v15)
      {
        v16 = v15 - 1;
        do
        {
          v17 = [v13 objectAtIndexedSubscript:v16];
          v18 = [v17 objectAtIndexedSubscript:0];
          if ([v18 compare:v14] == -1)
          {
            [v13 removeObjectAtIndex:v16];
          }

          --v16;
        }

        while (v16 != -1);
      }

      v29[0] = v26;
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
      v29[1] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      [v13 addObject:v20];

      [(SKGKnowledgeFeedback *)self setDefaultWithKey:nameCopy value:v13];
    }

    else
    {
      v27[0] = date;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
      v27[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
      v28 = v14;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
      [(SKGKnowledgeFeedback *)self setDefaultWithKey:nameCopy value:v21];
    }

    v22 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingGenUpdateReindexCount"];
    v23 = v22;
    v24 = MEMORY[0x277CCABB0];
    if (v22)
    {
      count = [v22 unsignedIntegerValue] + 1;
    }

    v25 = [v24 numberWithUnsignedInteger:count];
    [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingGenUpdateReindexCount" value:v25];

    goto LABEL_17;
  }

LABEL_18:
}

- (unint64_t)getUpdateTaskReindexCount
{
  v2 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingGenUpdateReindexCount"];
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)getUpdateTaskRunCount
{
  v2 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingGenUpdates"];
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)getReindexCountForTask:(id)task
{
  v22 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  if ([taskCopy length])
  {
    date = [MEMORY[0x277CBEAA8] date];
    v6 = [date dateByAddingTimeInterval:-86400.0];
    v7 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:taskCopy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v13 objectAtIndexedSubscript:0];
          if ([v14 compare:v6] == 1)
          {
            v15 = [v13 objectAtIndexedSubscript:1];
            v10 += [v15 unsignedIntegerValue];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)logEmbeddingDonationItemCounts:(unint64_t)counts bundleId:(id)id
{
  idCopy = id;
  os_unfair_lock_lock(&gEmbeddingDonationCountLock);
  v6 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingDonationCount"];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = [v8 objectForKey:idCopy];
  v10 = v9;
  v11 = MEMORY[0x277CCABB0];
  if (v9)
  {
    counts += [v9 unsignedIntegerValue];
  }

  v12 = [v11 numberWithUnsignedInteger:counts];
  [v8 setObject:v12 forKey:idCopy];

  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingDonationCount" value:v8];
  os_unfair_lock_unlock(&gEmbeddingDonationCountLock);
}

- (id)getEmbeddingDonationItemCounts
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"embeddingDonationCount"];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 mutableCopy];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [v4 allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v8 += [*(*(&v13 + 1) + 8 * i) unsignedIntegerValue];
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v4 setObject:v11 forKeyedSubscript:@"Total"];

  return v4;
}

- (void)resetEmbeddingDonationItemCounts
{
  os_unfair_lock_lock(&gEmbeddingDonationCountLock);
  v3 = objc_opt_new();
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"embeddingDonationCount" value:v3];

  os_unfair_lock_unlock(&gEmbeddingDonationCountLock);
}

- (void)logCleanupItemCounts:(unint64_t)counts bundleId:(id)id listenerType:(int)type
{
  v5 = *&type;
  idCopy = id;
  os_unfair_lock_lock(&gCleanupCountLock);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v5];
  v9 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"cleanupPerBundleCount"];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 mutableCopy];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = [v11 objectForKey:v8];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 mutableCopy];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = [v14 objectForKey:idCopy];
  v16 = v15;
  v17 = MEMORY[0x277CCABB0];
  if (v15)
  {
    counts += [v15 unsignedIntegerValue];
  }

  v18 = [v17 numberWithUnsignedInteger:counts];
  [v14 setObject:v18 forKey:idCopy];

  [v11 setObject:v14 forKey:v8];
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"cleanupPerBundleCount" value:v11];
  os_unfair_lock_unlock(&gCleanupCountLock);
}

- (id)getCleanupItemCountsForListenerType:(int)type
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", *&type];
  v5 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"cleanupPerBundleCount"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  v9 = [v8 objectForKeyedSubscript:v4];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 mutableCopy];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allValues = [v11 allValues];
  v13 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(allValues);
        }

        v15 += [*(*(&v20 + 1) + 8 * i) unsignedIntegerValue];
      }

      v14 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  [v11 setObject:v18 forKeyedSubscript:@"Total"];

  return v11;
}

- (void)resetCleanupItemCountsForListenerType:(int)type
{
  v3 = *&type;
  os_unfair_lock_lock(&gCleanupCountLock);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v3];
  v5 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"cleanupPerBundleCount"];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 mutableCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = objc_opt_new();
  [v7 setObject:v8 forKeyedSubscript:v9];

  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"cleanupPerBundleCount" value:v7];
  os_unfair_lock_unlock(&gCleanupCountLock);
}

- (void)resetCleanupItemCountsForAllListenerTypes
{
  os_unfair_lock_lock(&gCleanupCountLock);
  v3 = objc_opt_new();
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"cleanupPerBundleCount" value:v3];

  os_unfair_lock_unlock(&gCleanupCountLock);
}

- (void)logReindexRequestItemCounts:(unint64_t)counts bundleId:(id)id
{
  idCopy = id;
  os_unfair_lock_lock(&gReindexRequestCountLock);
  v6 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"reindexRequestPerBundleCount"];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = [v8 objectForKey:idCopy];
  v10 = v9;
  v11 = MEMORY[0x277CCABB0];
  if (v9)
  {
    counts += [v9 unsignedIntegerValue];
  }

  v12 = [v11 numberWithUnsignedInteger:counts];
  [v8 setObject:v12 forKey:idCopy];

  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"reindexRequestPerBundleCount" value:v8];
  os_unfair_lock_unlock(&gReindexRequestCountLock);
}

- (id)getReindexRequestItemCounts
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:@"reindexRequestPerBundleCount"];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 mutableCopy];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [v4 allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v8 += [*(*(&v13 + 1) + 8 * i) unsignedIntegerValue];
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v4 setObject:v11 forKeyedSubscript:@"Total"];

  return v4;
}

- (void)resetReindexRequestItemCounts
{
  os_unfair_lock_lock(&gReindexRequestCountLock);
  v3 = objc_opt_new();
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:@"reindexRequestPerBundleCount" value:v3];

  os_unfair_lock_unlock(&gReindexRequestCountLock);
}

- (id)defaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.spotlightknowledge"];

  return v2;
}

- (id)defaultPropertiesForVersionName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock(&gFeedbackLock_0);
  defaults = [(SKGKnowledgeFeedback *)self defaults];
  dictionaryRepresentation = [defaults dictionaryRepresentation];
  v7 = [dictionaryRepresentation objectForKey:nameCopy];

  if (!v7)
  {
    [defaults setObject:&unk_2846E86F0 forKey:nameCopy];
    dictionaryRepresentation2 = [defaults dictionaryRepresentation];
    v7 = [dictionaryRepresentation2 objectForKey:nameCopy];
  }

  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v7;
}

- (void)setDefaultWithKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  versionName = [(SKGKnowledgeFeedback *)self versionName];
  v8 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:?];
  os_unfair_lock_lock(&gFeedbackLock_0);
  defaults = [(SKGKnowledgeFeedback *)self defaults];
  if (v8)
  {
    v10 = [v8 mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v11 = v10;
  [v10 setObject:valueCopy forKey:keyCopy];

  [defaults setObject:v11 forKey:versionName];
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (id)defaultValueWithKey:(id)key versionName:(id)name
{
  keyCopy = key;
  v7 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:name];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v8 = [v7 objectForKey:keyCopy];

  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v8;
}

- (id)defaultValueWithKey:(id)key
{
  keyCopy = key;
  versionName = [(SKGKnowledgeFeedback *)self versionName];
  v6 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:versionName];
  os_unfair_lock_lock(&gFeedbackLock_0);
  v7 = [v6 objectForKey:keyCopy];

  os_unfair_lock_unlock(&gFeedbackLock_0);

  return v7;
}

- (void)removeKey:(id)key
{
  keyCopy = key;
  versionName = [(SKGKnowledgeFeedback *)self versionName];
  v5 = [(SKGKnowledgeFeedback *)self defaultPropertiesForVersionName:versionName];
  os_unfair_lock_lock(&gFeedbackLock_0);
  defaults = [(SKGKnowledgeFeedback *)self defaults];
  v7 = [v5 mutableCopy];
  [v7 removeObjectForKey:keyCopy];

  [defaults setObject:v7 forKey:versionName];
  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)removeDefaults
{
  os_unfair_lock_lock(&gFeedbackLock_0);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removePersistentDomainForName:@"com.apple.spotlightknowledge"];

  [MEMORY[0x277CBEBD0] resetStandardUserDefaults];

  os_unfair_lock_unlock(&gFeedbackLock_0);
}

- (void)setModeWithKey:(id)key value:(BOOL)value
{
  valueCopy = value;
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithBool:valueCopy];
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:keyCopy value:v8];
}

- (BOOL)modeWithKey:(id)key
{
  keyCopy = key;
  v5 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:keyCopy];
  if (v5)
  {
    v6 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:keyCopy];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)recoveryTimesWithKey:(id)key
{
  v3 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:key];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (void)setTimeWithKey:(id)key value:(double)value
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithDouble:value];
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:keyCopy value:v8];
}

- (double)timeWithKey:(id)key
{
  keyCopy = key;
  v5 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:keyCopy];
  if (v5)
  {
    v6 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:keyCopy];
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (void)setIndexWithKey:(id)key value:(unint64_t)value
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithUnsignedInteger:value];
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:keyCopy value:v8];
}

- (unint64_t)indexWithKey:(id)key
{
  keyCopy = key;
  v5 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:keyCopy];
  if (v5)
  {
    v6 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:keyCopy];
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)updateItemCountWithKey:(id)key
{
  keyCopy = key;
  v5 = [(SKGKnowledgeFeedback *)self itemCountWithKey:keyCopy];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 + 1];
  [(SKGKnowledgeFeedback *)self setDefaultWithKey:keyCopy value:v6];
}

- (unint64_t)itemCountWithKey:(id)key
{
  keyCopy = key;
  v5 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:keyCopy];
  if (v5)
  {
    v6 = [(SKGKnowledgeFeedback *)self defaultValueWithKey:keyCopy];
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)logError:(uint64_t)a1 message:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218242;
  v3 = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SKG: error (%lu) %@", &v2, 0x16u);
}

@end