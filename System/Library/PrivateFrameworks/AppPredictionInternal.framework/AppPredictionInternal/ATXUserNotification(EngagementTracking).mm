@interface ATXUserNotification(EngagementTracking)
- (void)populateEngagementFromSource:()EngagementTracking sectionIdentifier:sectionPosition:sectionSize:digestTimeline:;
@end

@implementation ATXUserNotification(EngagementTracking)

- (void)populateEngagementFromSource:()EngagementTracking sectionIdentifier:sectionPosition:sectionSize:digestTimeline:
{
  v37 = a7;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  [self setDigestEngagementTrackingMetrics:v14];

  digestEngagementTrackingMetrics = [self digestEngagementTrackingMetrics];
  [digestEngagementTrackingMetrics setSectionIdentifier:v12];

  digestEngagementTrackingMetrics2 = [self digestEngagementTrackingMetrics];
  [digestEngagementTrackingMetrics2 setSectionPosition:a5];

  digestEngagementTrackingMetrics3 = [self digestEngagementTrackingMetrics];
  [digestEngagementTrackingMetrics3 setSectionSize:a6];

  v18 = MEMORY[0x277CBEB98];
  uuid = [self uuid];
  v20 = [v18 setWithObject:uuid];
  v21 = [v13 resolutionsForNotifications:v20];

  uuid2 = [self uuid];
  v23 = [v21 objectForKeyedSubscript:uuid2];

  if (v23)
  {
    numExpansions = [v23 numExpansions];
    digestEngagementTrackingMetrics4 = [self digestEngagementTrackingMetrics];
    [digestEngagementTrackingMetrics4 setNumExpansions:numExpansions];

    if (![v23 resolutionType])
    {
      digestRemovedTimestamp = [v37 digestRemovedTimestamp];
      if (digestRemovedTimestamp && (v27 = digestRemovedTimestamp, [v37 digestRemovedTimestamp], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "resolutionTimestamp"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "compare:", v29), v29, v28, v27, v30 == -1))
      {
        digestEngagementTrackingMetrics5 = [self digestEngagementTrackingMetrics];
        [digestEngagementTrackingMetrics5 setNumEngagementsAfterExpiration:1];
      }

      else
      {
        firstScheduledViewTimestamp = [v37 firstScheduledViewTimestamp];
        if (firstScheduledViewTimestamp && (v32 = firstScheduledViewTimestamp, [v37 firstScheduledViewTimestamp], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "resolutionTimestamp"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v33, "compare:", v34), v34, v33, v32, v35 == -1))
        {
          digestEngagementTrackingMetrics5 = [self digestEngagementTrackingMetrics];
          [digestEngagementTrackingMetrics5 setNumEngagementsInScheduled:1];
        }

        else
        {
          digestEngagementTrackingMetrics5 = [self digestEngagementTrackingMetrics];
          [digestEngagementTrackingMetrics5 setNumEngagementsInUpcoming:1];
        }
      }
    }
  }
}

@end