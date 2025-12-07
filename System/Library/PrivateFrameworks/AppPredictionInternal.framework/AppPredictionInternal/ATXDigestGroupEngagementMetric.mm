@interface ATXDigestGroupEngagementMetric
- (id)coreAnalyticsDictionary;
- (void)populateMetricsFromDigestGroup:(id)group digestUUID:(id)d;
@end

@implementation ATXDigestGroupEngagementMetric

- (void)populateMetricsFromDigestGroup:(id)group digestUUID:(id)d
{
  groupCopy = group;
  uUIDString = [d UUIDString];
  [(ATXDigestGroupEngagementMetric *)self setDigestUUID:uUIDString];

  bundleId = [groupCopy bundleId];
  [(ATXDigestGroupEngagementMetric *)self setBundleId:bundleId];

  digestEngagementTrackingMetrics = [groupCopy digestEngagementTrackingMetrics];
  sectionIdentifier = [digestEngagementTrackingMetrics sectionIdentifier];
  [(ATXDigestGroupEngagementMetric *)self setSection:sectionIdentifier];

  digestEngagementTrackingMetrics2 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setSectionPosition:](self, "setSectionPosition:", [digestEngagementTrackingMetrics2 sectionPosition]);

  digestEngagementTrackingMetrics3 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setSectionSize:](self, "setSectionSize:", [digestEngagementTrackingMetrics3 sectionSize]);

  rankedNotifications = [groupCopy rankedNotifications];
  -[ATXDigestGroupEngagementMetric setNumNotifications:](self, "setNumNotifications:", [rankedNotifications count]);

  -[ATXDigestGroupEngagementMetric setHasImage:](self, "setHasImage:", [groupCopy hasPreviewableAttachment]);
  [groupCopy priority];
  [(ATXDigestGroupEngagementMetric *)self setGroupScore:?];
  digestEngagementTrackingMetrics4 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setNumEngagementsInUpcoming:](self, "setNumEngagementsInUpcoming:", [digestEngagementTrackingMetrics4 numEngagementsInUpcoming]);

  digestEngagementTrackingMetrics5 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setNumEngagementsInScheduled:](self, "setNumEngagementsInScheduled:", [digestEngagementTrackingMetrics5 numEngagementsInScheduled]);

  digestEngagementTrackingMetrics6 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setNumEngagementsAfterExpiration:](self, "setNumEngagementsAfterExpiration:", [digestEngagementTrackingMetrics6 numEngagementsAfterExpiration]);

  digestEngagementTrackingMetrics7 = [groupCopy digestEngagementTrackingMetrics];

  -[ATXDigestGroupEngagementMetric setNumExpansions:](self, "setNumExpansions:", [digestEngagementTrackingMetrics7 numExpansions]);
}

- (id)coreAnalyticsDictionary
{
  v32[13] = *MEMORY[0x277D85DE8];
  v31[0] = @"digestUUID";
  digestUUID = [(ATXDigestGroupEngagementMetric *)self digestUUID];
  v4 = digestUUID;
  if (!digestUUID)
  {
    digestUUID = [MEMORY[0x277CBEB68] null];
  }

  v24 = digestUUID;
  v32[0] = digestUUID;
  v31[1] = @"bundleId";
  bundleId = [(ATXDigestGroupEngagementMetric *)self bundleId];
  v6 = bundleId;
  if (!bundleId)
  {
    bundleId = [MEMORY[0x277CBEB68] null];
  }

  v30 = v4;
  v23 = bundleId;
  v32[1] = bundleId;
  v31[2] = @"secureBundleId";
  bundleId2 = [(ATXDigestGroupEngagementMetric *)self bundleId];
  if (bundleId2)
  {
    bundleId3 = [(ATXDigestGroupEngagementMetric *)self bundleId];
    null = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    bundleId3 = null;
  }

  v28 = bundleId2;
  v29 = v6;
  v25 = null;
  v32[2] = null;
  v31[3] = @"section";
  section = [(ATXDigestGroupEngagementMetric *)self section];
  v10 = section;
  if (!section)
  {
    section = [MEMORY[0x277CBEB68] null];
  }

  v22 = section;
  v32[3] = section;
  v31[4] = @"sectionPosition";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestGroupEngagementMetric sectionPosition](self, "sectionPosition")}];
  v32[4] = v26;
  v31[5] = @"sectionSize";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestGroupEngagementMetric sectionSize](self, "sectionSize")}];
  v32[5] = v11;
  v31[6] = @"numNotifications";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestGroupEngagementMetric numNotifications](self, "numNotifications")}];
  v32[6] = v12;
  v31[7] = @"hasImage";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXDigestGroupEngagementMetric hasImage](self, "hasImage")}];
  v32[7] = v13;
  v31[8] = @"groupScore";
  v14 = MEMORY[0x277CCABB0];
  [(ATXDigestGroupEngagementMetric *)self groupScore];
  v15 = [v14 numberWithDouble:?];
  v32[8] = v15;
  v31[9] = @"numEngagementsInUpcoming";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestGroupEngagementMetric numEngagementsInUpcoming](self, "numEngagementsInUpcoming")}];
  v32[9] = v16;
  v31[10] = @"numEngagementsInScheduled";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestGroupEngagementMetric numEngagementsInScheduled](self, "numEngagementsInScheduled")}];
  v32[10] = v17;
  v31[11] = @"numEngagementsAfterExpiration";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestGroupEngagementMetric numEngagementsAfterExpiration](self, "numEngagementsAfterExpiration")}];
  v32[11] = v18;
  v31[12] = @"numExpansions";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestGroupEngagementMetric numExpansions](self, "numExpansions")}];
  v32[12] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:13];

  if (!v10)
  {
  }

  if (v28)
  {
  }

  if (!v29)
  {
  }

  if (!v30)
  {
  }

  return v20;
}

@end