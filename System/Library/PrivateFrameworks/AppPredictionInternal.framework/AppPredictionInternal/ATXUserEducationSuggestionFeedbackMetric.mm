@interface ATXUserEducationSuggestionFeedbackMetric
- (ATXUserEducationSuggestionFeedbackMetric)initWithFeedback:(id)feedback;
- (id)coreAnalyticsDictionary;
@end

@implementation ATXUserEducationSuggestionFeedbackMetric

- (ATXUserEducationSuggestionFeedbackMetric)initWithFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v9.receiver = self;
  v9.super_class = ATXUserEducationSuggestionFeedbackMetric;
  v6 = [(_ATXCoreAnalyticsMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feedback, feedback);
  }

  return v7;
}

- (id)coreAnalyticsDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"feedbackType";
  [(ATXUserEducationSuggestionFeedback *)self->_feedback feedbackType];
  v2 = ATXUserEducationSuggestionFeedbackTypeToString();
  null = v2;
  if (!v2)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v7[0] = null;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  if (!v2)
  {
  }

  return v4;
}

@end