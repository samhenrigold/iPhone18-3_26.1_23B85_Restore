@interface ATXStackRotationSession
- (ATXStackRotationSession)initWithCoder:(id)coder;
- (ATXStackRotationSession)initWithStartingStackChangeEvent:(id)event;
- (ATXStackRotationSession)initWithStartingStackChangeEvent:(id)event endingStackChangeEvent:(id)changeEvent engagementStatus:(unint64_t)status engagementStatusHistory:(id)history systemSuggestSuggestionLayout:(id)layout dwellStartDate:(id)date longestDwell:(double)dwell isNPlusOneRotation:(BOOL)self0 isFirstNPlusOneRotation:(BOOL)self1 completed:(BOOL)self2;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXStackRotationSession:(id)session;
- (NSString)blendingCacheId;
- (NSString)widgetBundleId;
- (NSString)widgetKind;
- (NSString)widgetUniqueId;
- (id)description;
- (int)stackLocation;
- (void)blendingCacheId;
- (void)encodeWithCoder:(id)coder;
- (void)finalizeWithEndingStackChangeEvent:(id)event;
- (void)markStackHiddenAtDate:(id)date;
- (void)markStackShownAtDate:(id)date;
- (void)tryUpdateStackRotationEngagementStatus:(unint64_t)status;
- (void)widgetBundleId;
- (void)widgetKind;
- (void)widgetUniqueId;
@end

@implementation ATXStackRotationSession

- (ATXStackRotationSession)initWithStartingStackChangeEvent:(id)event
{
  eventCopy = event;
  widgetUniqueId = [eventCopy widgetUniqueId];
  widgetBundleId = [eventCopy widgetBundleId];
  blendingCacheId = [eventCopy blendingCacheId];
  widgetKind = [eventCopy widgetKind];
  reason = [eventCopy reason];
  v10 = reason;
  if (widgetUniqueId && blendingCacheId && widgetBundleId && widgetKind && reason)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{&unk_283A558C8, 0}];
    BYTE2(v15) = 0;
    LOWORD(v15) = 0;
    self = [ATXStackRotationSession initWithStartingStackChangeEvent:"initWithStartingStackChangeEvent:endingStackChangeEvent:engagementStatus:engagementStatusHistory:systemSuggestSuggestionLayout:dwellStartDate:longestDwell:isNPlusOneRotation:isFirstNPlusOneRotation:completed:" endingStackChangeEvent:eventCopy engagementStatus:0 engagementStatusHistory:0 systemSuggestSuggestionLayout:v11 dwellStartDate:0 longestDwell:0 isNPlusOneRotation:0.0 isFirstNPlusOneRotation:v15 completed:?];

    selfCopy = self;
  }

  else
  {
    v13 = __atxlog_handle_metrics(reason);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXStackRotationSession *)self initWithStartingStackChangeEvent:eventCopy, v13];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXStackRotationSession)initWithStartingStackChangeEvent:(id)event endingStackChangeEvent:(id)changeEvent engagementStatus:(unint64_t)status engagementStatusHistory:(id)history systemSuggestSuggestionLayout:(id)layout dwellStartDate:(id)date longestDwell:(double)dwell isNPlusOneRotation:(BOOL)self0 isFirstNPlusOneRotation:(BOOL)self1 completed:(BOOL)self2
{
  eventCopy = event;
  changeEventCopy = changeEvent;
  historyCopy = history;
  layoutCopy = layout;
  dateCopy = date;
  v28.receiver = self;
  v28.super_class = ATXStackRotationSession;
  v23 = [(ATXStackRotationSession *)&v28 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_startingStackChangeEvent, event);
    objc_storeStrong(&v24->_endingStackChangeEvent, changeEvent);
    v24->_engagementStatus = status;
    objc_storeStrong(&v24->_engagementStatusHistory, history);
    objc_storeStrong(&v24->_systemSuggestSuggestionLayout, layout);
    objc_storeStrong(&v24->_dwellStartDate, date);
    v24->_longestDwell = dwell;
    v24->_isNPlusOneRotation = rotation;
    v24->_isFirstNPlusOneRotation = oneRotation;
    v24->_completed = completed;
  }

  return v24;
}

- (void)markStackShownAtDate:(id)date
{
  objc_storeStrong(&self->_dwellStartDate, date);

  [(ATXStackRotationSession *)self tryUpdateStackRotationEngagementStatus:1];
}

- (void)markStackHiddenAtDate:(id)date
{
  dateCopy = date;
  dwellStartDate = self->_dwellStartDate;
  v8 = dateCopy;
  if (dateCopy && dwellStartDate)
  {
    [dateCopy timeIntervalSinceDate:?];
    v7 = v6;
    if (v6 >= *&kATXMinTimeIntervalToBeConsideredDwell)
    {
      [(ATXStackRotationSession *)self tryUpdateStackRotationEngagementStatus:3];
    }

    if (v7 > self->_longestDwell)
    {
      self->_longestDwell = v7;
    }

    dwellStartDate = self->_dwellStartDate;
  }

  self->_dwellStartDate = 0;
}

- (void)finalizeWithEndingStackChangeEvent:(id)event
{
  eventCopy = event;
  objc_storeStrong(&self->_endingStackChangeEvent, event);
  date = [eventCopy date];
  [(ATXStackRotationSession *)self markStackHiddenAtDate:date];

  reason = [eventCopy reason];
  v7 = NSStringForATXHomeScreenStackChangeReason();
  v8 = [reason isEqualToString:v7];

  if (v8)
  {
    [(ATXStackRotationSession *)self tryUpdateStackRotationEngagementStatus:2];
  }

  self->_completed = 1;
}

- (void)tryUpdateStackRotationEngagementStatus:(unint64_t)status
{
  engagementStatusHistory = self->_engagementStatusHistory;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableArray *)engagementStatusHistory addObject:v6];

  if (self->_engagementStatus < status)
  {
    self->_engagementStatus = status;
  }
}

- (NSString)widgetUniqueId
{
  widgetUniqueId = [(ATXHomeScreenEvent *)self->_startingStackChangeEvent widgetUniqueId];
  v4 = widgetUniqueId;
  if (widgetUniqueId)
  {
    v5 = widgetUniqueId;
  }

  else
  {
    v6 = __atxlog_handle_metrics(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(ATXStackRotationSession *)self widgetUniqueId];
    }

    v5 = &stru_2839A6058;
  }

  return v5;
}

- (NSString)widgetBundleId
{
  widgetBundleId = [(ATXHomeScreenEvent *)self->_startingStackChangeEvent widgetBundleId];
  v4 = widgetBundleId;
  if (widgetBundleId)
  {
    v5 = widgetBundleId;
  }

  else
  {
    v6 = __atxlog_handle_metrics(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(ATXStackRotationSession *)self widgetBundleId];
    }

    v5 = &stru_2839A6058;
  }

  return v5;
}

- (NSString)widgetKind
{
  widgetKind = [(ATXHomeScreenEvent *)self->_startingStackChangeEvent widgetKind];
  v4 = widgetKind;
  if (widgetKind)
  {
    v5 = widgetKind;
  }

  else
  {
    v6 = __atxlog_handle_metrics(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(ATXStackRotationSession *)self widgetKind];
    }

    v5 = &stru_2839A6058;
  }

  return v5;
}

- (int)stackLocation
{
  stackLocation = [(ATXHomeScreenEvent *)self->_startingStackChangeEvent stackLocation];

  return MEMORY[0x28213DF40](stackLocation);
}

- (NSString)blendingCacheId
{
  blendingCacheId = [(ATXHomeScreenEvent *)self->_startingStackChangeEvent blendingCacheId];
  v4 = blendingCacheId;
  if (blendingCacheId)
  {
    v5 = blendingCacheId;
  }

  else
  {
    v6 = __atxlog_handle_metrics(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(ATXStackRotationSession *)self blendingCacheId];
    }

    v5 = &stru_2839A6058;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXStackRotationSession *)self isEqualToATXStackRotationSession:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXStackRotationSession:(id)session
{
  sessionCopy = session;
  v5 = self->_startingStackChangeEvent;
  v6 = v5;
  if (v5 == sessionCopy[2])
  {
  }

  else
  {
    v7 = [(ATXHomeScreenEvent *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v8 = self->_endingStackChangeEvent;
  v9 = v8;
  if (v8 == sessionCopy[3])
  {
  }

  else
  {
    v10 = [(ATXHomeScreenEvent *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (self->_engagementStatus != sessionCopy[4])
  {
LABEL_26:
    v20 = 0;
    goto LABEL_27;
  }

  v11 = self->_engagementStatusHistory;
  v12 = v11;
  if (v11 == sessionCopy[5])
  {
  }

  else
  {
    v13 = [(NSMutableArray *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v14 = self->_systemSuggestSuggestionLayout;
  v15 = v14;
  if (v14 == sessionCopy[6])
  {
  }

  else
  {
    v16 = [(ATXSuggestionLayout *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v17 = self->_dwellStartDate;
  v18 = v17;
  if (v17 == sessionCopy[7])
  {
  }

  else
  {
    v19 = [(NSDate *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (self->_longestDwell != *(sessionCopy + 8) || self->_isNPlusOneRotation != *(sessionCopy + 8) || self->_isFirstNPlusOneRotation != *(sessionCopy + 9))
  {
    goto LABEL_26;
  }

  v20 = self->_completed == *(sessionCopy + 10);
LABEL_27:

  return v20;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  rotationReason = [(ATXStackRotationSession *)self rotationReason];
  widgetUniqueId = [(ATXStackRotationSession *)self widgetUniqueId];
  widgetBundleId = [(ATXStackRotationSession *)self widgetBundleId];
  blendingCacheId = [(ATXStackRotationSession *)self blendingCacheId];
  sessionStartDate = [(ATXStackRotationSession *)self sessionStartDate];
  sessionEndDate = [(ATXStackRotationSession *)self sessionEndDate];
  v12 = sessionEndDate;
  v13 = @"NO";
  if (self->_completed)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if (self->_isNPlusOneRotation)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if (self->_isFirstNPlusOneRotation)
  {
    v13 = @"YES";
  }

  v16 = [v3 initWithFormat:@"%@ - rotationReason: %@, widgetId: %@, widgetBundleId: %@, blendingId: %@, startDate: %@, endDate: %@, dwellStart: %@, dwellSession: %f, engagementStatus: %lu, completed: %@, isNPlusOne: %@, isFirstNPlusOne: %@", v5, rotationReason, widgetUniqueId, widgetBundleId, blendingCacheId, sessionStartDate, sessionEndDate, self->_dwellStartDate, *&self->_longestDwell, self->_engagementStatus, v14, v15, v13];

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  startingStackChangeEvent = self->_startingStackChangeEvent;
  coderCopy = coder;
  [coderCopy encodeObject:startingStackChangeEvent forKey:@"codingKeyForStartingStackChangeEvent"];
  [coderCopy encodeObject:self->_endingStackChangeEvent forKey:@"codingKeyForEndingStackChangeEvent"];
  [coderCopy encodeInteger:self->_engagementStatus forKey:@"codingKeyForEngagementStatus"];
  [coderCopy encodeObject:self->_engagementStatusHistory forKey:@"codingKeyForEngagementStatusHistory"];
  [coderCopy encodeObject:self->_systemSuggestSuggestionLayout forKey:@"codingKeyForSystemSuggestSuggestionLayout"];
  [coderCopy encodeObject:self->_dwellStartDate forKey:@"codingKeyForDwellStartDate"];
  [coderCopy encodeDouble:@"codingKeyForLongestDwell" forKey:self->_longestDwell];
  [coderCopy encodeBool:self->_isNPlusOneRotation forKey:@"codingKeyForNPlusOneRotation"];
  [coderCopy encodeBool:self->_isFirstNPlusOneRotation forKey:@"codingKeyForFirstNPlusOneRotation"];
  [coderCopy encodeBool:self->_completed forKey:@"codingKeyForCompleted"];
}

- (ATXStackRotationSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_metrics(v6);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartingStackChangeEvent" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_metrics(v12);
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndingStackChangeEvent" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v13];

    error = [coderCopy error];

    if (error || (v16 = [coderCopy decodeIntegerForKey:@"codingKeyForEngagementStatus"], objc_msgSend(coderCopy, "error"), v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
    {
      selfCopy = 0;
    }

    else
    {
      v19 = MEMORY[0x277D42620];
      v20 = objc_autoreleasePoolPush();
      v21 = objc_alloc(MEMORY[0x277CBEB98]);
      v22 = objc_opt_class();
      v23 = [v21 initWithObjects:{v22, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v20);
      v25 = __atxlog_handle_metrics(v24);
      v26 = [v19 robustDecodeObjectOfClasses:v23 forKey:@"codingKeyForEngagementStatusHistory" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v25];

      if (v26 && ([coderCopy error], v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
      {
        v28 = MEMORY[0x277D42620];
        v29 = objc_opt_class();
        v30 = __atxlog_handle_metrics(v29);
        v31 = [v28 robustDecodeObjectOfClass:v29 forKey:@"codingKeyForSystemSuggestSuggestionLayout" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v30];

        error2 = [coderCopy error];

        if (error2)
        {
          selfCopy = 0;
        }

        else
        {
          v33 = MEMORY[0x277D42620];
          v34 = objc_opt_class();
          v35 = __atxlog_handle_metrics(v34);
          v36 = [v33 robustDecodeObjectOfClass:v34 forKey:@"codingKeyForDwellStartDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v35];

          error3 = [coderCopy error];

          if (error3 || ([coderCopy decodeDoubleForKey:@"codingKeyForLongestDwell"], v39 = v38, objc_msgSend(coderCopy, "error"), v40 = objc_claimAutoreleasedReturnValue(), v40, v40) || (v41 = objc_msgSend(coderCopy, "decodeBoolForKey:", @"codingKeyForNPlusOneRotation"), objc_msgSend(coderCopy, "error"), v42 = objc_claimAutoreleasedReturnValue(), v42, v42) || (v47 = objc_msgSend(coderCopy, "decodeBoolForKey:", @"codingKeyForFirstNPlusOneRotation"), objc_msgSend(coderCopy, "error"), v43 = objc_claimAutoreleasedReturnValue(), v43, v43) || (v46 = objc_msgSend(coderCopy, "decodeBoolForKey:", @"codingKeyForCompleted"), objc_msgSend(coderCopy, "error"), v44 = objc_claimAutoreleasedReturnValue(), v44, v44))
          {
            selfCopy = 0;
          }

          else
          {
            BYTE2(v45) = v46;
            BYTE1(v45) = v47;
            LOBYTE(v45) = v41;
            self = [ATXStackRotationSession initWithStartingStackChangeEvent:"initWithStartingStackChangeEvent:endingStackChangeEvent:engagementStatus:engagementStatusHistory:systemSuggestSuggestionLayout:dwellStartDate:longestDwell:isNPlusOneRotation:isFirstNPlusOneRotation:completed:" endingStackChangeEvent:v8 engagementStatus:v14 engagementStatusHistory:v16 systemSuggestSuggestionLayout:v26 dwellStartDate:v31 longestDwell:v36 isNPlusOneRotation:v39 isFirstNPlusOneRotation:v45 completed:?];
            selfCopy = self;
          }
        }
      }

      else
      {
        selfCopy = 0;
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initWithStartingStackChangeEvent:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_2();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ - could not create new session from homescreen event: %@", v7, 0x16u);
}

- (void)widgetUniqueId
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v3, v4, "%@ - could not find widgetUniqueId", v5, v6, v7, v8);
}

- (void)widgetBundleId
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v3, v4, "%@ - could not find widgetBundleId", v5, v6, v7, v8);
}

- (void)widgetKind
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v3, v4, "%@ - could not find widgetKind", v5, v6, v7, v8);
}

- (void)blendingCacheId
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v3, v4, "%@ - could not find blendingCacheId", v5, v6, v7, v8);
}

@end