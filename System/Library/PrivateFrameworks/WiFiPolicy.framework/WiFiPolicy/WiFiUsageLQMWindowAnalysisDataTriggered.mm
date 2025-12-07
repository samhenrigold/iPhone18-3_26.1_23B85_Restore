@interface WiFiUsageLQMWindowAnalysisDataTriggered
- (WiFiUsageLQMWindowAnalysisDataTriggered)initWithRollingWindow:(id)window andSubReason:(id)reason andContext:(context)context andTimestamp:(id)timestamp onQueue:(id)queue;
- (id)addDimensionsTo:(id)to;
- (void)performAnalysis;
@end

@implementation WiFiUsageLQMWindowAnalysisDataTriggered

- (WiFiUsageLQMWindowAnalysisDataTriggered)initWithRollingWindow:(id)window andSubReason:(id)reason andContext:(context)context andTimestamp:(id)timestamp onQueue:(id)queue
{
  v9 = *&context.var0;
  v56 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  reasonCopy = reason;
  timestampCopy = timestamp;
  queueCopy = queue;
  v16 = [windowCopy evaluateCriteriaWithStopUponFirstMatch:0];
  v54.receiver = self;
  v54.super_class = WiFiUsageLQMWindowAnalysisDataTriggered;
  v17 = [(WiFiUsageLQMWindowAnalysis *)&v54 initWithRollingWindow:windowCopy andReason:@"DataTriggered" andContext:*&v9 & 0xFFFFFFLL andTimestamp:timestampCopy onQueue:queueCopy];
  v18 = v17;
  if (v17)
  {
    v42 = queueCopy;
    v43 = timestampCopy;
    v44 = reasonCopy;
    objc_storeStrong(&v17->_dataTriggerReason, reason);
    getTriggerCriteriaList = [windowCopy getTriggerCriteriaList];
    triggerCriteriaList = v18->_triggerCriteriaList;
    v18->_triggerCriteriaList = getTriggerCriteriaList;

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v45 = windowCopy;
    obj = [windowCopy features];
    v21 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v51;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v51 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v50 + 1) + 8 * i);
          v26 = MEMORY[0x277CCACA8];
          fieldName = [v25 fieldName];
          isPerSecond = [v25 isPerSecond];
          v29 = &stru_28487EF20;
          if (isPerSecond)
          {
            v29 = @"PerSecond";
          }

          v30 = [v26 stringWithFormat:@"median_%@%@", fieldName, v29];

          v31 = objc_opt_new();
          v49.receiver = v18;
          v49.super_class = WiFiUsageLQMWindowAnalysisDataTriggered;
          lqmWindowsFeatures = [(WiFiUsageLQMWindowAnalysis *)&v49 lqmWindowsFeatures];
          [lqmWindowsFeatures setObject:v31 forKeyedSubscript:v30];

          median = [v25 median];
          v48.receiver = v18;
          v48.super_class = WiFiUsageLQMWindowAnalysisDataTriggered;
          lqmWindowsFeatures2 = [(WiFiUsageLQMWindowAnalysis *)&v48 lqmWindowsFeatures];
          v35 = [lqmWindowsFeatures2 objectForKeyedSubscript:v30];
          [v35 setObject:median forKeyedSubscript:@"before"];
        }

        v22 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v22);
    }

    v47.receiver = v18;
    v47.super_class = WiFiUsageLQMWindowAnalysisDataTriggered;
    reason = [(WiFiUsageLQMWindowAnalysis *)&v47 reason];
    dataTriggerReason = v18->_dataTriggerReason;
    v38 = v18->_triggerCriteriaList;
    v39 = [MEMORY[0x277CCAC30] predicateWithFormat:@"matched == YES OR lastTriggered != NIL"];
    v40 = [(NSArray *)v38 filteredArrayUsingPredicate:v39];
    NSLog(&cfstr_SLqmWindowAnal.isa, "[WiFiUsageLQMWindowAnalysisDataTriggered initWithRollingWindow:andSubReason:andContext:andTimestamp:onQueue:]", reason, dataTriggerReason, v40);

    reasonCopy = v44;
    windowCopy = v45;
    queueCopy = v42;
    timestampCopy = v43;
  }

  return v18;
}

- (void)performAnalysis
{
  v9.receiver = self;
  v9.super_class = WiFiUsageLQMWindowAnalysisDataTriggered;
  reason = [(WiFiUsageLQMWindowAnalysis *)&v9 reason];
  dataTriggerReason = self->_dataTriggerReason;
  triggerCriteriaList = self->_triggerCriteriaList;
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"matched == YES OR lastTriggered != NIL"];
  v7 = [(NSArray *)triggerCriteriaList filteredArrayUsingPredicate:v6];
  NSLog(&cfstr_SPerformingLqm.isa, "[WiFiUsageLQMWindowAnalysisDataTriggered performAnalysis]", reason, dataTriggerReason, v7);

  v8.receiver = self;
  v8.super_class = WiFiUsageLQMWindowAnalysisDataTriggered;
  [(WiFiUsageLQMWindowAnalysis *)&v8 performAnalysis];
}

- (id)addDimensionsTo:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v27.receiver = self;
  v27.super_class = WiFiUsageLQMWindowAnalysisDataTriggered;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v27 addDimensionsTo:toCopy];
  v21 = toCopy;
  [toCopy setObject:self->_dataTriggerReason forKeyedSubscript:@"datatriggeredReason"];
  v6 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_triggerCriteriaList;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if (([v11 valid] & 1) != 0 || !-[NSString isEqualToString:](self->_dataTriggerReason, "isEqualToString:", @"Match Start"))
        {
          shortPredicateNoSpaces = [v11 shortPredicateNoSpaces];
          matched = [v11 matched];
          v14 = @"false";
          if (matched)
          {
            v14 = @"true";
          }

          [v6 appendFormat:@"%@:%@&", shortPredicateNoSpaces, v14];

          lastTriggered = [v11 lastTriggered];

          if (lastTriggered)
          {
            lastTriggered2 = [v11 lastTriggered];
            firstTriggered = [v11 firstTriggered];
            [lastTriggered2 timeIntervalSinceDate:firstTriggered];
            v18 = [WiFiUsageLQMTransformations getBinTimeIntervalUpTo12h:1 As:?];
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"datatriggered_criteria%lu_duration", -[NSArray indexOfObject:](self->_triggerCriteriaList, "indexOfObject:", v11)];
            [v21 setObject:v18 forKeyedSubscript:v19];
          }
        }
      }

      v8 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  [v21 setObject:v6 forKeyedSubscript:@"datatriggeredCriteria"];

  return v21;
}

@end