@interface ATXActivitySuggestionsFeedbackHistogramHelper
+ (id)histogramBundleIdForModeWithUUID:(id)d modeType:(int)type origin:(int)origin originAnchorType:(id)anchorType;
- (ATXActivitySuggestionsFeedbackHistogramHelper)init;
- (ATXActivitySuggestionsFeedbackHistogramHelper)initWithFeedbackCategoricalHistogram:(id)histogram;
- (double)acceptancesForLockScreenSuggestionWithModeUUID:(id)d modeType:(int)type origin:(int)origin originAnchorType:(id)anchorType;
- (double)rejectionsForLockScreenSuggestionWithModeUUID:(id)d modeType:(int)type origin:(int)origin originAnchorType:(id)anchorType;
- (double)suggestionsGivenForLockScreenSuggestionWithModeUUID:(id)d modeType:(int)type origin:(int)origin originAnchorType:(id)anchorType;
- (void)updateFeedbackHistogramWithEvent:(id)event;
@end

@implementation ATXActivitySuggestionsFeedbackHistogramHelper

- (ATXActivitySuggestionsFeedbackHistogramHelper)init
{
  v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v4 = [v3 categoricalHistogramForLaunchType:96];

  v5 = [(ATXActivitySuggestionsFeedbackHistogramHelper *)self initWithFeedbackCategoricalHistogram:v4];
  return v5;
}

- (ATXActivitySuggestionsFeedbackHistogramHelper)initWithFeedbackCategoricalHistogram:(id)histogram
{
  histogramCopy = histogram;
  v9.receiver = self;
  v9.super_class = ATXActivitySuggestionsFeedbackHistogramHelper;
  v6 = [(ATXActivitySuggestionsFeedbackHistogramHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feedbackCategoricalHistogram, histogram);
  }

  return v7;
}

- (void)updateFeedbackHistogramWithEvent:(id)event
{
  v33 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  location = [eventCopy location];
  if (location == 1)
  {
    selfCopy = self;
    v6 = objc_opt_class();
    activity = [eventCopy activity];
    modeUUID = [activity modeUUID];
    activity2 = [eventCopy activity];
    [activity2 activityType];
    v10 = ATXActivityTypeToBMUserFocusInferredModeType();
    activity3 = [eventCopy activity];
    [activity3 origin];
    v12 = BMUserFocusInferredModeOriginFromLegacy();
    activity4 = [eventCopy activity];
    originAnchorType = [activity4 originAnchorType];
    v15 = [v6 histogramBundleIdForModeWithUUID:modeUUID modeType:v10 origin:v12 originAnchorType:originAnchorType];

    eventType = [eventCopy eventType];
    switch(eventType)
    {
      case 3:
        feedbackCategoricalHistogram = selfCopy->_feedbackCategoricalHistogram;
        eventDate = [eventCopy eventDate];
        [(_ATXAppLaunchCategoricalHistogram *)feedbackCategoricalHistogram addLaunchWithBundleId:v15 date:eventDate category:@"rejected"];

        v20 = __atxlog_handle_modes(v27);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v30 = "[ATXActivitySuggestionsFeedbackHistogramHelper updateFeedbackHistogramWithEvent:]";
          v31 = 2112;
          v32 = v15;
          v21 = "%s: adding rejected count to feedback event of id: %@";
          goto LABEL_13;
        }

        goto LABEL_14;
      case 2:
        v22 = selfCopy->_feedbackCategoricalHistogram;
        eventDate2 = [eventCopy eventDate];
        [(_ATXAppLaunchCategoricalHistogram *)v22 addLaunchWithBundleId:v15 date:eventDate2 category:@"accepted"];

        v20 = __atxlog_handle_modes(v24);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v30 = "[ATXActivitySuggestionsFeedbackHistogramHelper updateFeedbackHistogramWithEvent:]";
          v31 = 2112;
          v32 = v15;
          v21 = "%s: adding accepted count to feedback event of id: %@";
          goto LABEL_13;
        }

LABEL_14:

        break;
      case 0:
        v17 = selfCopy->_feedbackCategoricalHistogram;
        eventDate3 = [eventCopy eventDate];
        [(_ATXAppLaunchCategoricalHistogram *)v17 addLaunchWithBundleId:v15 date:eventDate3 category:@"suggested"];

        v20 = __atxlog_handle_modes(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v30 = "[ATXActivitySuggestionsFeedbackHistogramHelper updateFeedbackHistogramWithEvent:]";
          v31 = 2112;
          v32 = v15;
          v21 = "%s: adding suggested count to feedback event of id: %@";
LABEL_13:
          _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0x16u);
          goto LABEL_14;
        }

        goto LABEL_14;
    }
  }

  else
  {
    v15 = __atxlog_handle_modes(location);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[ATXActivitySuggestionsFeedbackHistogramHelper updateFeedbackHistogramWithEvent:]";
      v31 = 2112;
      v32 = eventCopy;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "%s: skipping feedback event since it does not pertain to lock screen: %@", buf, 0x16u);
    }
  }
}

+ (id)histogramBundleIdForModeWithUUID:(id)d modeType:(int)type origin:(int)origin originAnchorType:(id)anchorType
{
  v7 = MEMORY[0x277CCACA8];
  anchorTypeCopy = anchorType;
  dCopy = d;
  v10 = [v7 alloc];
  v11 = BMUserFocusInferredModeTypeToLegacy();
  anchorTypeCopy = [v10 initWithFormat:@"%@:%lu:%lu:%@", dCopy, v11, BMUserFocusInferredModeOriginToLegacy(), anchorTypeCopy];

  return anchorTypeCopy;
}

- (double)suggestionsGivenForLockScreenSuggestionWithModeUUID:(id)d modeType:(int)type origin:(int)origin originAnchorType:(id)anchorType
{
  v6 = *&origin;
  v7 = *&type;
  anchorTypeCopy = anchorType;
  dCopy = d;
  v12 = [objc_opt_class() histogramBundleIdForModeWithUUID:dCopy modeType:v7 origin:v6 originAnchorType:anchorTypeCopy];

  [(_ATXAppLaunchCategoricalHistogram *)self->_feedbackCategoricalHistogram totalLaunchesForBundleId:v12 category:@"suggested"];
  v14 = v13;

  return v14;
}

- (double)acceptancesForLockScreenSuggestionWithModeUUID:(id)d modeType:(int)type origin:(int)origin originAnchorType:(id)anchorType
{
  v6 = *&origin;
  v7 = *&type;
  anchorTypeCopy = anchorType;
  dCopy = d;
  v12 = [objc_opt_class() histogramBundleIdForModeWithUUID:dCopy modeType:v7 origin:v6 originAnchorType:anchorTypeCopy];

  [(_ATXAppLaunchCategoricalHistogram *)self->_feedbackCategoricalHistogram totalLaunchesForBundleId:v12 category:@"accepted"];
  v14 = v13;

  return v14;
}

- (double)rejectionsForLockScreenSuggestionWithModeUUID:(id)d modeType:(int)type origin:(int)origin originAnchorType:(id)anchorType
{
  v6 = *&origin;
  v7 = *&type;
  anchorTypeCopy = anchorType;
  dCopy = d;
  v12 = [objc_opt_class() histogramBundleIdForModeWithUUID:dCopy modeType:v7 origin:v6 originAnchorType:anchorTypeCopy];

  [(_ATXAppLaunchCategoricalHistogram *)self->_feedbackCategoricalHistogram totalLaunchesForBundleId:v12 category:@"rejected"];
  v14 = v13;

  return v14;
}

@end