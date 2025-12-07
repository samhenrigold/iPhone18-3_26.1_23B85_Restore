@interface ATXProactiveSuggestionSingleSuggestionFeedbackResult
- (ATXProactiveSuggestionSingleSuggestionFeedbackResult)initWithEngagementType:(int64_t)type suggestion:(id)suggestion consumerSubType:(unsigned __int8)subType clientCacheUpdate:(id)update uiCacheUpdate:(id)cacheUpdate context:(id)context;
@end

@implementation ATXProactiveSuggestionSingleSuggestionFeedbackResult

- (ATXProactiveSuggestionSingleSuggestionFeedbackResult)initWithEngagementType:(int64_t)type suggestion:(id)suggestion consumerSubType:(unsigned __int8)subType clientCacheUpdate:(id)update uiCacheUpdate:(id)cacheUpdate context:(id)context
{
  subTypeCopy = subType;
  suggestionCopy = suggestion;
  v19.receiver = self;
  v19.super_class = ATXProactiveSuggestionSingleSuggestionFeedbackResult;
  v16 = [(ATXProactiveSuggestionFeedbackResult *)&v19 initWithConsumerSubType:subTypeCopy sessionType:1 clientCacheUpdate:update uiCacheUpdate:cacheUpdate context:context];
  v17 = v16;
  if (v16)
  {
    v16->_engagementType = type;
    objc_storeStrong(&v16->_suggestion, suggestion);
  }

  return v17;
}

@end