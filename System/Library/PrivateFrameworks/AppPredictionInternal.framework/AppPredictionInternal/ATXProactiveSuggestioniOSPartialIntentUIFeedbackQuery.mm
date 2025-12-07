@interface ATXProactiveSuggestioniOSPartialIntentUIFeedbackQuery
- (id)uiFeedbackPublisherChain;
- (void)uiFeedbackPublisherChain;
@end

@implementation ATXProactiveSuggestioniOSPartialIntentUIFeedbackQuery

- (id)uiFeedbackPublisherChain
{
  v20.receiver = self;
  v20.super_class = ATXProactiveSuggestioniOSPartialIntentUIFeedbackQuery;
  uiFeedbackPublisherChain = [(ATXProactiveSuggestionUIFeedbackQuery *)&v20 uiFeedbackPublisherChain];
  v4 = BiomeLibrary();
  v5 = [v4 App];
  inFocus = [v5 InFocus];
  startDateForResults = [(ATXProactiveSuggestionUIFeedbackQuery *)self startDateForResults];
  v8 = [inFocus atx_publisherFromStartDate:startDateForResults];

  v9 = BiomeLibrary();
  v10 = [v9 App];
  intent = [v10 Intent];
  startDateForResults2 = [(ATXProactiveSuggestionUIFeedbackQuery *)self startDateForResults];
  v13 = [intent atx_publisherFromStartDate:startDateForResults2];

  if (!uiFeedbackPublisherChain || !v8 || !v13)
  {
    if (uiFeedbackPublisherChain)
    {
      if (v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v17 = __atxlog_handle_blending_ecosystem(v14);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(ATXProactiveSuggestioniOSPartialIntentUIFeedbackQuery *)self uiFeedbackPublisherChain];
      }

      if (v8)
      {
LABEL_7:
        if (v13)
        {
LABEL_8:
          partialIntentUIFeedbackPublisher = 0;
          goto LABEL_19;
        }

LABEL_15:
        v15 = __atxlog_handle_blending_ecosystem(v14);
        if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_ERROR))
        {
          [(ATXProactiveSuggestioniOSPartialIntentUIFeedbackQuery *)self uiFeedbackPublisherChain];
        }

        partialIntentUIFeedbackPublisher = 0;
        goto LABEL_18;
      }
    }

    v18 = __atxlog_handle_blending_ecosystem(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(ATXProactiveSuggestioniOSPartialIntentUIFeedbackQuery *)self uiFeedbackPublisherChain];
    }

    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v15 = [[ATXProactiveSuggestionPartialIntentHandlingPublisher alloc] initWithUIFeedbackPublisher:uiFeedbackPublisherChain appLaunchPublisher:v8 intentPublisher:v13];
  partialIntentUIFeedbackPublisher = [(ATXProactiveSuggestionPartialIntentHandlingPublisher *)v15 partialIntentUIFeedbackPublisher];
LABEL_18:

LABEL_19:

  return partialIntentUIFeedbackPublisher;
}

- (void)uiFeedbackPublisherChain
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v3, v4, "%@ - could not initialize intentPublisher, returning early", v5, v6, v7, v8, v9, DWORD2(v9));
}

@end