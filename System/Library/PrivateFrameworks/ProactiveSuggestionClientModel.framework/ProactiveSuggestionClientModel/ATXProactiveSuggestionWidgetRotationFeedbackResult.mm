@interface ATXProactiveSuggestionWidgetRotationFeedbackResult
- (ATXProactiveSuggestionWidgetRotationFeedbackResult)initWithEngagementType:(int64_t)type rotationSuggestion:(id)suggestion consumerSubType:(unsigned __int8)subType clientCacheUpdate:(id)update uiCacheUpdate:(id)cacheUpdate context:(id)context;
@end

@implementation ATXProactiveSuggestionWidgetRotationFeedbackResult

- (ATXProactiveSuggestionWidgetRotationFeedbackResult)initWithEngagementType:(int64_t)type rotationSuggestion:(id)suggestion consumerSubType:(unsigned __int8)subType clientCacheUpdate:(id)update uiCacheUpdate:(id)cacheUpdate context:(id)context
{
  subTypeCopy = subType;
  suggestionCopy = suggestion;
  v19.receiver = self;
  v19.super_class = ATXProactiveSuggestionWidgetRotationFeedbackResult;
  v16 = [(ATXProactiveSuggestionFeedbackResult *)&v19 initWithConsumerSubType:subTypeCopy sessionType:2 clientCacheUpdate:update uiCacheUpdate:cacheUpdate context:context];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_rotationSuggestion, suggestion);
    v17->_engagementType = type;
  }

  return v17;
}

@end