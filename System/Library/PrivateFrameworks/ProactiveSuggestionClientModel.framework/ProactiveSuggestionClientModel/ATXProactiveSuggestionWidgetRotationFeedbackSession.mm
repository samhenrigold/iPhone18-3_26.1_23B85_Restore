@interface ATXProactiveSuggestionWidgetRotationFeedbackSession
- (ATXProactiveSuggestionWidgetRotationFeedbackSession)init;
- (ATXProactiveSuggestionWidgetRotationFeedbackSession)initWithCoder:(id)coder;
- (ATXProactiveSuggestionWidgetRotationFeedbackSession)initWithEngagementType:(int64_t)type metadata:(id)metadata engagementHistory:(id)history systemSuggestSuggestionLayout:(id)layout sessionStartDate:(id)date sessionEndDate:(id)endDate dwellStartDate:(id)startDate longestDwell:(double)self0;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXProactiveSuggestionWidgetRotationFeedbackSession:(id)session;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)markRotationSessionEndedAtDate:(id)date wasUserScroll:(BOOL)scroll;
- (void)markStackHiddenAtDate:(id)date;
- (void)markStackShownAtDate:(id)date;
- (void)tryUpdateStackRotationEngagementType:(int64_t)type;
@end

@implementation ATXProactiveSuggestionWidgetRotationFeedbackSession

- (ATXProactiveSuggestionWidgetRotationFeedbackSession)init
{
  v3 = objc_opt_new();
  v4 = [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self initWithEngagementType:0 metadata:0 engagementHistory:v3 systemSuggestSuggestionLayout:0 sessionStartDate:0 sessionEndDate:0 dwellStartDate:0.0 longestDwell:0];

  return v4;
}

- (ATXProactiveSuggestionWidgetRotationFeedbackSession)initWithEngagementType:(int64_t)type metadata:(id)metadata engagementHistory:(id)history systemSuggestSuggestionLayout:(id)layout sessionStartDate:(id)date sessionEndDate:(id)endDate dwellStartDate:(id)startDate longestDwell:(double)self0
{
  metadataCopy = metadata;
  historyCopy = history;
  layoutCopy = layout;
  dateCopy = date;
  endDateCopy = endDate;
  startDateCopy = startDate;
  v27.receiver = self;
  v27.super_class = ATXProactiveSuggestionWidgetRotationFeedbackSession;
  v20 = [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)&v27 init];
  v21 = v20;
  if (v20)
  {
    v20->_engagementType = type;
    objc_storeStrong(&v20->_metadata, metadata);
    objc_storeStrong(&v21->_engagementHistory, history);
    objc_storeStrong(&v21->_systemSuggestSuggestionLayout, layout);
    objc_storeStrong(&v21->_sessionStartDate, date);
    objc_storeStrong(&v21->_sessionEndDate, endDate);
    objc_storeStrong(&v21->_dwellStartDate, startDate);
    v21->_longestDwell = dwell;
  }

  return v21;
}

- (void)markStackShownAtDate:(id)date
{
  objc_storeStrong(&self->_dwellStartDate, date);

  [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self tryUpdateStackRotationEngagementType:1];
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
    if (v6 >= *&kATXWidgetRotationFeedbackMinTimeIntervalToBeConsideredDwell)
    {
      [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self tryUpdateStackRotationEngagementType:3];
    }

    if (v7 > self->_longestDwell)
    {
      self->_longestDwell = v7;
    }

    dwellStartDate = self->_dwellStartDate;
  }

  self->_dwellStartDate = 0;
}

- (void)tryUpdateStackRotationEngagementType:(int64_t)type
{
  engagementHistory = self->_engagementHistory;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [(NSMutableArray *)engagementHistory addObject:v6];

  if (self->_engagementType < type)
  {
    self->_engagementType = type;
  }
}

- (void)markRotationSessionEndedAtDate:(id)date wasUserScroll:(BOOL)scroll
{
  scrollCopy = scroll;
  dateCopy = date;
  objc_storeStrong(&self->_sessionEndDate, date);
  [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self markStackHiddenAtDate:dateCopy];
  if (scrollCopy)
  {
    [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self tryUpdateStackRotationEngagementType:2];
  }
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self isEqualToATXProactiveSuggestionWidgetRotationFeedbackSession:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXProactiveSuggestionWidgetRotationFeedbackSession:(id)session
{
  sessionCopy = session;
  if (self->_engagementType != *(sessionCopy + 1))
  {
    goto LABEL_24;
  }

  v5 = self->_metadata;
  v6 = v5;
  if (v5 == *(sessionCopy + 2))
  {
  }

  else
  {
    v7 = [(ATXProactiveSuggestionWidgetRotationFeedbackSessionMetadata *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v8 = self->_engagementHistory;
  v9 = v8;
  if (v8 == *(sessionCopy + 3))
  {
  }

  else
  {
    v10 = [(NSMutableArray *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v11 = self->_systemSuggestSuggestionLayout;
  v12 = v11;
  if (v11 == *(sessionCopy + 4))
  {
  }

  else
  {
    v13 = [(ATXSuggestionLayout *)v11 isEqual:?];

    if (!v13)
    {
      goto LABEL_24;
    }
  }

  v14 = self->_sessionStartDate;
  v15 = v14;
  if (v14 == *(sessionCopy + 5))
  {
  }

  else
  {
    v16 = [(NSDate *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v17 = self->_sessionEndDate;
  v18 = v17;
  if (v17 == *(sessionCopy + 6))
  {
  }

  else
  {
    v19 = [(NSDate *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v20 = self->_dwellStartDate;
  v21 = v20;
  if (v20 == *(sessionCopy + 7))
  {

    goto LABEL_27;
  }

  v22 = [(NSDate *)v20 isEqual:?];

  if (v22)
  {
LABEL_27:
    v23 = self->_longestDwell == sessionCopy[8];
    goto LABEL_25;
  }

LABEL_24:
  v23 = 0;
LABEL_25:

  return v23;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"YES";
  if (!self->_systemSuggestSuggestionLayout)
  {
    v7 = @"NO";
  }

  v8 = [v3 initWithFormat:@"%@ - engagementType: %lu, metadata: %@, engagementHistory: %@, suggestionLayout: %@, sessionStartDate: %@, sessionEndDate: %@, dwellStartDate: %@, longestDwell: %f", v5, *&self->_engagementType, self->_engagementHistory, v7, self->_sessionStartDate, self->_sessionEndDate, self->_dwellStartDate, *&self->_longestDwell];

  return v8;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!integer)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (fordouble == 0.0)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  engagementType = self->_engagementType;
  coderCopy = coder;
  [coderCopy encodeInteger:engagementType forKey:@"engagementType"];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
  [coderCopy encodeObject:self->_engagementHistory forKey:@"engagementHistory"];
  [coderCopy encodeObject:self->_systemSuggestSuggestionLayout forKey:@"suggestionLayout"];
  [coderCopy encodeObject:self->_sessionStartDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_sessionEndDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_dwellStartDate forKey:@"dwellStartDate"];
  [coderCopy encodeDouble:@"longestDwell" forKey:self->_longestDwell];
}

- (ATXProactiveSuggestionWidgetRotationFeedbackSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"engagementType"];
  if ([(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self checkAndReportDecodingFailureIfNeededForNSInteger:v5 key:@"engagementType" coder:coderCopy errorDomain:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorCode:-1])
  {
    selfCopy = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69C5D78];
    v8 = objc_opt_class();
    v9 = __atxlog_handle_blending_ecosystem(v8);
    v10 = [v7 robustDecodeObjectOfClass:v8 forKey:@"metadata" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorCode:-1 logHandle:v9];

    error = [coderCopy error];

    if (error)
    {
      selfCopy = 0;
    }

    else
    {
      v12 = MEMORY[0x1E69C5D78];
      v13 = objc_autoreleasePoolPush();
      v14 = objc_alloc(MEMORY[0x1E695DFD8]);
      v15 = objc_opt_class();
      v16 = [v14 initWithObjects:{v15, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v13);
      v18 = __atxlog_handle_blending_ecosystem(v17);
      v19 = [v12 robustDecodeObjectOfClasses:v16 forKey:@"engagementHistory" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorCode:-1 logHandle:v18];

      if (v19 && ([coderCopy error], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
      {
        v21 = MEMORY[0x1E69C5D78];
        v22 = objc_opt_class();
        v23 = __atxlog_handle_blending_ecosystem(v22);
        v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"suggestionLayout" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorCode:-1 logHandle:v23];

        error2 = [coderCopy error];

        if (error2)
        {
          selfCopy = 0;
        }

        else
        {
          v26 = MEMORY[0x1E69C5D78];
          v27 = objc_opt_class();
          v28 = __atxlog_handle_blending_ecosystem(v27);
          v29 = [v26 robustDecodeObjectOfClass:v27 forKey:@"startDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorCode:-1 logHandle:v28];

          error3 = [coderCopy error];

          if (error3)
          {
            selfCopy = 0;
          }

          else
          {
            v45 = v29;
            v31 = MEMORY[0x1E69C5D78];
            v32 = objc_opt_class();
            v33 = __atxlog_handle_blending_ecosystem(v32);
            v34 = [v31 robustDecodeObjectOfClass:v32 forKey:@"endDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorCode:-1 logHandle:v33];

            error4 = [coderCopy error];

            if (error4)
            {
              selfCopy = 0;
              v29 = v45;
            }

            else
            {
              v44 = v34;
              v36 = MEMORY[0x1E69C5D78];
              v37 = objc_opt_class();
              v38 = __atxlog_handle_blending_ecosystem(v37);
              v39 = [v36 robustDecodeObjectOfClass:v37 forKey:@"dwellStartDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorCode:-1 logHandle:v38];

              error5 = [coderCopy error];

              if (error5)
              {
                selfCopy = 0;
                v34 = v44;
                v29 = v45;
              }

              else
              {
                [coderCopy decodeDoubleForKey:@"longestDwell"];
                v42 = v41;
                v29 = v45;
                if ([(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self checkAndReportDecodingFailureIfNeededFordouble:@"longestDwell" key:coderCopy coder:@"com.apple.proactive.ATXProactiveSuggestionWidgetRotationFeedbackSession" errorDomain:-1 errorCode:?])
                {
                  selfCopy = 0;
                  v34 = v44;
                }

                else
                {
                  v34 = v44;
                  self = [(ATXProactiveSuggestionWidgetRotationFeedbackSession *)self initWithEngagementType:v5 metadata:v10 engagementHistory:v19 systemSuggestSuggestionLayout:v24 sessionStartDate:v45 sessionEndDate:v44 dwellStartDate:v42 longestDwell:v39];
                  selfCopy = self;
                }
              }
            }
          }
        }
      }

      else
      {
        selfCopy = 0;
      }
    }
  }

  return selfCopy;
}

@end