@interface ATXProactiveSuggestioniOSUIFeedbackQuery
- (ATXProactiveSuggestioniOSUIFeedbackQuery)initWithClientModelIds:(id)ids consumerSubTypeToConsider:(unsigned __int8)consider startDateForResults:(id)results bookmarkURLPath:(id)path;
- (id)contextPublisherWithStartTime:(double)time;
- (id)uiPublisherForConsumerSubType:(unsigned __int8)type startTime:(double)time;
@end

@implementation ATXProactiveSuggestioniOSUIFeedbackQuery

- (ATXProactiveSuggestioniOSUIFeedbackQuery)initWithClientModelIds:(id)ids consumerSubTypeToConsider:(unsigned __int8)consider startDateForResults:(id)results bookmarkURLPath:(id)path
{
  considerCopy = consider;
  idsCopy = ids;
  resultsCopy = results;
  pathCopy = path;
  [resultsCopy timeIntervalSinceReferenceDate];
  v14 = v13;
  v15 = [(ATXProactiveSuggestioniOSUIFeedbackQuery *)self uiPublisherForConsumerSubType:considerCopy startTime:?];
  v16 = objc_opt_new();
  v17 = [v16 publisherFromStartTime:considerCopy consumerSubType:v14];

  v18 = [(ATXProactiveSuggestioniOSUIFeedbackQuery *)self contextPublisherWithStartTime:v14];
  v19 = v18;
  if (v15)
  {
    mEMORY[0x277D41B98] = [MEMORY[0x277D41B98] sharedInstance];
    self = [(ATXProactiveSuggestionUIFeedbackQuery *)self initWithClientModelIds:idsCopy consumerSubTypeToConsider:considerCopy startDateForResults:resultsCopy bookmarkURLPath:pathCopy uiPublisher:v15 blendingModelPublisher:v17 contextPublisher:v19 hyperParameters:mEMORY[0x277D41B98]];

    selfCopy = self;
  }

  else
  {
    v22 = __atxlog_handle_blending_ecosystem(v18);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [ATXProactiveSuggestioniOSUIFeedbackQuery initWithClientModelIds:considerCopy consumerSubTypeToConsider:v22 startDateForResults:? bookmarkURLPath:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)uiPublisherForConsumerSubType:(unsigned __int8)type startTime:(double)time
{
  v5 = 0;
  if (type > 33)
  {
    if (type == 43 || type == 35)
    {
      typeCopy3 = type;
    }

    else
    {
      typeCopy3 = type;
      if (type != 34)
      {
        goto LABEL_12;
      }
    }

LABEL_11:
    v7 = objc_opt_new();
    v5 = [v7 genericEventPublisherFromStartTime:typeCopy3 consumerSubType:time];

    goto LABEL_12;
  }

  typeCopy3 = 9;
  if (type == 9)
  {
    goto LABEL_11;
  }

  if (type == 21)
  {
    goto LABEL_11;
  }

  typeCopy3 = type;
  if (type == 22)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v5;
}

- (id)contextPublisherWithStartTime:(double)time
{
  v4 = objc_opt_new();
  v5 = [v4 publisherFromStartTime:time];

  return v5;
}

- (void)initWithClientModelIds:(NSObject *)a3 consumerSubTypeToConsider:startDateForResults:bookmarkURLPath:.cold.1(uint64_t a1, unsigned __int8 a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:a2];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_fault_impl(&dword_2263AA000, a3, OS_LOG_TYPE_FAULT, "%@ - could not find iOS ui publisher for consumerSubType: %@", &v8, 0x16u);
}

@end