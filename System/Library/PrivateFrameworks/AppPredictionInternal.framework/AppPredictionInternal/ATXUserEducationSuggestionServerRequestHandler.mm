@interface ATXUserEducationSuggestionServerRequestHandler
- (void)logUserEducationSuggestionFeedback:(id)feedback;
@end

@implementation ATXUserEducationSuggestionServerRequestHandler

- (void)logUserEducationSuggestionFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v4 = __atxlog_handle_context_user_education_suggestions(feedbackCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ATXUserEducationSuggestionServerRequestHandler *)feedbackCopy logUserEducationSuggestionFeedback:v4];
  }

  suggestion = [feedbackCopy suggestion];
  [suggestion logFeedback:feedbackCopy];
}

- (void)logUserEducationSuggestionFeedback:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[ATXUserEducationSuggestionServerRequestHandler logUserEducationSuggestionFeedback:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s: Received feedback: %@", &v2, 0x16u);
}

@end