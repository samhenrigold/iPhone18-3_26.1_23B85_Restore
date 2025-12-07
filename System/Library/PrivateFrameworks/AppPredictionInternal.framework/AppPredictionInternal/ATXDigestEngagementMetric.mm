@interface ATXDigestEngagementMetric
- (id)coreAnalyticsDictionary;
- (void)populateMetricsFromDigest:(id)digest;
@end

@implementation ATXDigestEngagementMetric

- (void)populateMetricsFromDigest:(id)digest
{
  digestCopy = digest;
  modeIdString = [digestCopy modeIdString];
  [(ATXDigestEngagementMetric *)self setDigestTimeCategory:modeIdString];

  uuid = [digestCopy uuid];
  uUIDString = [uuid UUIDString];
  [(ATXDigestEngagementMetric *)self setDigestUUID:uUIDString];

  digestEngagementTrackingMetrics = [digestCopy digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumDigestExpansions:](self, "setNumDigestExpansions:", [digestEngagementTrackingMetrics numDigestExpansions]);

  messageGroups = [digestCopy messageGroups];
  -[ATXDigestEngagementMetric setNumMessageGroups:](self, "setNumMessageGroups:", [messageGroups count]);

  highlightedGroups = [digestCopy highlightedGroups];
  -[ATXDigestEngagementMetric setNumHighlightedGroups:](self, "setNumHighlightedGroups:", [highlightedGroups count]);

  rankedGroups = [digestCopy rankedGroups];
  -[ATXDigestEngagementMetric setNumOtherGroups:](self, "setNumOtherGroups:", [rankedGroups count]);

  messageGroups2 = [digestCopy messageGroups];
  v12 = [messageGroups2 _pas_leftFoldWithInitialObject:&unk_283A572D8 accumulate:&__block_literal_global_203];
  -[ATXDigestEngagementMetric setNumMessageNotifications:](self, "setNumMessageNotifications:", [v12 unsignedIntegerValue]);

  highlightedGroups2 = [digestCopy highlightedGroups];
  v14 = [highlightedGroups2 _pas_leftFoldWithInitialObject:&unk_283A572D8 accumulate:&__block_literal_global_22_0];
  -[ATXDigestEngagementMetric setNumHighlightedNotifications:](self, "setNumHighlightedNotifications:", [v14 unsignedIntegerValue]);

  rankedGroups2 = [digestCopy rankedGroups];
  v16 = [rankedGroups2 _pas_leftFoldWithInitialObject:&unk_283A572D8 accumulate:&__block_literal_global_24_3];
  -[ATXDigestEngagementMetric setNumOtherNotifications:](self, "setNumOtherNotifications:", [v16 unsignedIntegerValue]);

  digestEngagementTrackingMetrics2 = [digestCopy digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumEngagementsInUpcoming:](self, "setNumEngagementsInUpcoming:", [digestEngagementTrackingMetrics2 numEngagementsInUpcoming]);

  digestEngagementTrackingMetrics3 = [digestCopy digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumEngagementsInScheduled:](self, "setNumEngagementsInScheduled:", [digestEngagementTrackingMetrics3 numEngagementsInScheduled]);

  digestEngagementTrackingMetrics4 = [digestCopy digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumEngagementsAfterExpiration:](self, "setNumEngagementsAfterExpiration:", [digestEngagementTrackingMetrics4 numEngagementsAfterExpiration]);

  digestEngagementTrackingMetrics5 = [digestCopy digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumNotificationGroupExpansions:](self, "setNumNotificationGroupExpansions:", [digestEngagementTrackingMetrics5 numExpansions]);

  digestTimeline = [digestCopy digestTimeline];
  firstUpcomingViewTimestamp = [digestTimeline firstUpcomingViewTimestamp];
  if (firstUpcomingViewTimestamp)
  {
    digestTimeline2 = [digestCopy digestTimeline];
    firstUpcomingViewTimestamp2 = [digestTimeline2 firstUpcomingViewTimestamp];
    [firstUpcomingViewTimestamp2 timeIntervalSinceReferenceDate];
    [(ATXDigestEngagementMetric *)self setFirstUpcomingViewTimestamp:?];
  }

  else
  {
    [(ATXDigestEngagementMetric *)self setFirstUpcomingViewTimestamp:0.0];
  }

  digestTimeline3 = [digestCopy digestTimeline];
  firstScheduledViewTimestamp = [digestTimeline3 firstScheduledViewTimestamp];
  if (firstScheduledViewTimestamp)
  {
    digestTimeline4 = [digestCopy digestTimeline];
    firstScheduledViewTimestamp2 = [digestTimeline4 firstScheduledViewTimestamp];
    [firstScheduledViewTimestamp2 timeIntervalSinceReferenceDate];
    [(ATXDigestEngagementMetric *)self setFirstScheduledViewTimestamp:?];
  }

  else
  {
    [(ATXDigestEngagementMetric *)self setFirstScheduledViewTimestamp:0.0];
  }

  digestTimeline5 = [digestCopy digestTimeline];
  digestRemovedTimestamp = [digestTimeline5 digestRemovedTimestamp];
  if (digestRemovedTimestamp)
  {
    digestTimeline6 = [digestCopy digestTimeline];
    digestRemovedTimestamp2 = [digestTimeline6 digestRemovedTimestamp];
    [digestRemovedTimestamp2 timeIntervalSinceReferenceDate];
    [(ATXDigestEngagementMetric *)self setDigestExpirationTimestamp:?];
  }

  else
  {
    [(ATXDigestEngagementMetric *)self setDigestExpirationTimestamp:0.0];
  }
}

id __55__ATXDigestEngagementMetric_populateMetricsFromDigest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  v7 = [v5 rankedNotifications];

  v8 = [v4 numberWithUnsignedInteger:{objc_msgSend(v7, "count") + v6}];

  return v8;
}

id __55__ATXDigestEngagementMetric_populateMetricsFromDigest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  v7 = [v5 rankedNotifications];

  v8 = [v4 numberWithUnsignedInteger:{objc_msgSend(v7, "count") + v6}];

  return v8;
}

id __55__ATXDigestEngagementMetric_populateMetricsFromDigest___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  v7 = [v5 rankedNotifications];

  v8 = [v4 numberWithUnsignedInteger:{objc_msgSend(v7, "count") + v6}];

  return v8;
}

- (id)coreAnalyticsDictionary
{
  v30[16] = *MEMORY[0x277D85DE8];
  v29[0] = @"digestTimeCategory";
  digestTimeCategory = [(ATXDigestEngagementMetric *)self digestTimeCategory];
  v4 = digestTimeCategory;
  if (!digestTimeCategory)
  {
    digestTimeCategory = [MEMORY[0x277CBEB68] null];
  }

  v28 = v4;
  v21 = digestTimeCategory;
  v30[0] = digestTimeCategory;
  v29[1] = @"digestUUID";
  digestUUID = [(ATXDigestEngagementMetric *)self digestUUID];
  v27 = digestUUID;
  if (!digestUUID)
  {
    digestUUID = [MEMORY[0x277CBEB68] null];
  }

  v20 = digestUUID;
  v30[1] = digestUUID;
  v29[2] = @"numDigestExpansions";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numDigestExpansions](self, "numDigestExpansions")}];
  v30[2] = v26;
  v29[3] = @"numMessageGroups";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numMessageGroups](self, "numMessageGroups")}];
  v30[3] = v25;
  v29[4] = @"numHighlightedGroups";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numHighlightedGroups](self, "numHighlightedGroups")}];
  v30[4] = v24;
  v29[5] = @"numOtherGroups";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numOtherGroups](self, "numOtherGroups")}];
  v30[5] = v23;
  v29[6] = @"numMessageNotifications";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numMessageNotifications](self, "numMessageNotifications")}];
  v30[6] = v22;
  v29[7] = @"numHighlightedNotifications";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numHighlightedNotifications](self, "numHighlightedNotifications")}];
  v30[7] = v6;
  v29[8] = @"numOtherNotifications";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numOtherNotifications](self, "numOtherNotifications")}];
  v30[8] = v7;
  v29[9] = @"numEngagementsInUpcoming";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numEngagementsInUpcoming](self, "numEngagementsInUpcoming")}];
  v30[9] = v8;
  v29[10] = @"numEngagementsInScheduled";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numEngagementsInScheduled](self, "numEngagementsInScheduled")}];
  v30[10] = v9;
  v29[11] = @"numEngagementsAfterExpiration";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numEngagementsAfterExpiration](self, "numEngagementsAfterExpiration")}];
  v30[11] = v10;
  v29[12] = @"numNotificationGroupExpansions";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numNotificationGroupExpansions](self, "numNotificationGroupExpansions")}];
  v30[12] = v11;
  v29[13] = @"firstUpcomingViewTimestamp";
  v12 = MEMORY[0x277CCABB0];
  [(ATXDigestEngagementMetric *)self firstUpcomingViewTimestamp];
  v13 = [v12 numberWithDouble:?];
  v30[13] = v13;
  v29[14] = @"firstScheduledViewTimestamp";
  v14 = MEMORY[0x277CCABB0];
  [(ATXDigestEngagementMetric *)self firstScheduledViewTimestamp];
  v15 = [v14 numberWithDouble:?];
  v30[14] = v15;
  v29[15] = @"digestExpirationTimestamp";
  v16 = MEMORY[0x277CCABB0];
  [(ATXDigestEngagementMetric *)self digestExpirationTimestamp];
  v17 = [v16 numberWithDouble:?];
  v30[15] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:16];

  if (!v27)
  {
  }

  if (!v28)
  {
  }

  return v18;
}

@end