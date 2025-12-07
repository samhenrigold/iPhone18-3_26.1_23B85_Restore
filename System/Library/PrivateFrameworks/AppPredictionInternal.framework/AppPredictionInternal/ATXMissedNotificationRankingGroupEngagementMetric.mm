@interface ATXMissedNotificationRankingGroupEngagementMetric
- (id)coreAnalyticsDictionary;
- (void)populateMetricsFromDigestGroup:(id)group mnbUUID:(id)d;
@end

@implementation ATXMissedNotificationRankingGroupEngagementMetric

- (void)populateMetricsFromDigestGroup:(id)group mnbUUID:(id)d
{
  dCopy = d;
  groupCopy = group;
  bundleId = [groupCopy bundleId];
  [(ATXMissedNotificationRankingGroupEngagementMetric *)self setBundleId:bundleId];

  [groupCopy priority];
  [(ATXMissedNotificationRankingGroupEngagementMetric *)self setGroupScore:?];
  uUIDString = [dCopy UUIDString];

  [(ATXMissedNotificationRankingGroupEngagementMetric *)self setMnbUUID:uUIDString];
  digestEngagementTrackingMetrics = [groupCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setNumEngagementsInUpcoming:](self, "setNumEngagementsInUpcoming:", [digestEngagementTrackingMetrics numEngagementsInUpcoming]);

  digestEngagementTrackingMetrics2 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setNumEngagementsAfterShow:](self, "setNumEngagementsAfterShow:", [digestEngagementTrackingMetrics2 numEngagementsInScheduled]);

  digestEngagementTrackingMetrics3 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setNumEngagementsAfterExpiration:](self, "setNumEngagementsAfterExpiration:", [digestEngagementTrackingMetrics3 numEngagementsAfterExpiration]);

  digestEngagementTrackingMetrics4 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setNumExpansions:](self, "setNumExpansions:", [digestEngagementTrackingMetrics4 numExpansions]);

  digestEngagementTrackingMetrics5 = [groupCopy digestEngagementTrackingMetrics];
  sectionIdentifier = [digestEngagementTrackingMetrics5 sectionIdentifier];
  [(ATXMissedNotificationRankingGroupEngagementMetric *)self setSection:sectionIdentifier];

  digestEngagementTrackingMetrics6 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setSectionPosition:](self, "setSectionPosition:", [digestEngagementTrackingMetrics6 sectionPosition]);

  digestEngagementTrackingMetrics7 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setSectionSize:](self, "setSectionSize:", [digestEngagementTrackingMetrics7 sectionSize]);

  rankedNotifications = [groupCopy rankedNotifications];

  -[ATXMissedNotificationRankingGroupEngagementMetric setNumNotifications:](self, "setNumNotifications:", [rankedNotifications count]);
}

- (id)coreAnalyticsDictionary
{
  v27[11] = *MEMORY[0x277D85DE8];
  v26[0] = @"bundleId";
  bundleId = [(ATXMissedNotificationRankingGroupEngagementMetric *)self bundleId];
  v4 = bundleId;
  if (!bundleId)
  {
    bundleId = [MEMORY[0x277CBEB68] null];
  }

  v20 = bundleId;
  v27[0] = bundleId;
  v26[1] = @"secureBundleId";
  bundleId2 = [(ATXMissedNotificationRankingGroupEngagementMetric *)self bundleId];
  v25 = v4;
  if (bundleId2)
  {
    bundleId3 = [(ATXMissedNotificationRankingGroupEngagementMetric *)self bundleId];
    null = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    bundleId3 = null;
  }

  v21 = null;
  v27[1] = null;
  v26[2] = @"groupScore";
  v6 = MEMORY[0x277CCABB0];
  [(ATXMissedNotificationRankingGroupEngagementMetric *)self groupScore];
  v22 = [v6 numberWithDouble:?];
  v27[2] = v22;
  v26[3] = @"mnbUUID";
  mnbUUID = [(ATXMissedNotificationRankingGroupEngagementMetric *)self mnbUUID];
  v8 = mnbUUID;
  if (!mnbUUID)
  {
    mnbUUID = [MEMORY[0x277CBEB68] null];
  }

  v19 = mnbUUID;
  v27[3] = mnbUUID;
  v26[4] = @"numEngagementsAfterExpiration";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingGroupEngagementMetric numEngagementsAfterExpiration](self, "numEngagementsAfterExpiration")}];
  v27[4] = v9;
  v26[5] = @"numEngagementsAfterShow";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingGroupEngagementMetric numEngagementsAfterShow](self, "numEngagementsAfterShow")}];
  v27[5] = v10;
  v26[6] = @"numEngagementsInUpcoming";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingGroupEngagementMetric numEngagementsInUpcoming](self, "numEngagementsInUpcoming")}];
  v27[6] = v11;
  v26[7] = @"numExpansions";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingGroupEngagementMetric numExpansions](self, "numExpansions")}];
  v27[7] = v12;
  v26[8] = @"section";
  section = [(ATXMissedNotificationRankingGroupEngagementMetric *)self section];
  null2 = section;
  if (!section)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v27[8] = null2;
  v26[9] = @"sectionPosition";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingGroupEngagementMetric sectionPosition](self, "sectionPosition")}];
  v27[9] = v15;
  v26[10] = @"sectionSize";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingGroupEngagementMetric sectionSize](self, "sectionSize")}];
  v27[10] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:11];

  if (!section)
  {
  }

  if (!v8)
  {
  }

  if (bundleId2)
  {
  }

  if (!v25)
  {
  }

  return v17;
}

@end