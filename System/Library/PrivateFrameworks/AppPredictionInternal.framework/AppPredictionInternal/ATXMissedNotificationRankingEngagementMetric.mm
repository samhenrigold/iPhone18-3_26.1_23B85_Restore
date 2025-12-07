@interface ATXMissedNotificationRankingEngagementMetric
- (id)coreAnalyticsDictionary;
- (void)populateMetricsFromRanking:(id)ranking;
@end

@implementation ATXMissedNotificationRankingEngagementMetric

- (void)populateMetricsFromRanking:(id)ranking
{
  v41 = *MEMORY[0x277D85DE8];
  rankingCopy = ranking;
  digestTimeline = [rankingCopy digestTimeline];
  firstUpcomingViewTimestamp = [digestTimeline firstUpcomingViewTimestamp];
  if (firstUpcomingViewTimestamp)
  {
    digestTimeline2 = [rankingCopy digestTimeline];
    firstUpcomingViewTimestamp2 = [digestTimeline2 firstUpcomingViewTimestamp];
    [firstUpcomingViewTimestamp2 timeIntervalSinceReferenceDate];
    [(ATXMissedNotificationRankingEngagementMetric *)self setCreatedTimestamp:?];
  }

  else
  {
    [(ATXMissedNotificationRankingEngagementMetric *)self setCreatedTimestamp:0.0];
  }

  digestTimeline3 = [rankingCopy digestTimeline];
  firstScheduledViewTimestamp = [digestTimeline3 firstScheduledViewTimestamp];
  if (firstScheduledViewTimestamp)
  {
    digestTimeline4 = [rankingCopy digestTimeline];
    firstScheduledViewTimestamp2 = [digestTimeline4 firstScheduledViewTimestamp];
    [firstScheduledViewTimestamp2 timeIntervalSinceReferenceDate];
    [(ATXMissedNotificationRankingEngagementMetric *)self setShowTimestamp:?];
  }

  else
  {
    [(ATXMissedNotificationRankingEngagementMetric *)self setShowTimestamp:0.0];
  }

  digestTimeline5 = [rankingCopy digestTimeline];
  digestRemovedTimestamp = [digestTimeline5 digestRemovedTimestamp];
  if (digestRemovedTimestamp)
  {
    digestTimeline6 = [rankingCopy digestTimeline];
    digestRemovedTimestamp2 = [digestTimeline6 digestRemovedTimestamp];
    [digestRemovedTimestamp2 timeIntervalSinceReferenceDate];
    [(ATXMissedNotificationRankingEngagementMetric *)self setExpireTimestamp:?];
  }

  else
  {
    [(ATXMissedNotificationRankingEngagementMetric *)self setExpireTimestamp:0.0];
  }

  uuid = [rankingCopy uuid];
  uUIDString = [uuid UUIDString];
  [(ATXMissedNotificationRankingEngagementMetric *)self setMnbUUID:uUIDString];

  modeIdString = [rankingCopy modeIdString];
  [(ATXMissedNotificationRankingEngagementMetric *)self setPreviousModeSemanticType:modeIdString];

  [(ATXMissedNotificationRankingEngagementMetric *)self setNextModeSemanticType:0];
  [(ATXMissedNotificationRankingEngagementMetric *)self setNumMessageGroups:0];
  [(ATXMissedNotificationRankingEngagementMetric *)self setNumOtherGroups:0];
  [(ATXMissedNotificationRankingEngagementMetric *)self setNumMessageNotifications:0];
  [(ATXMissedNotificationRankingEngagementMetric *)self setNumOtherNotifications:0];
  [(ATXMissedNotificationRankingEngagementMetric *)self setNumMessageEngagements:0];
  [(ATXMissedNotificationRankingEngagementMetric *)self setNumOtherEngagements:0];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  rankedGroups = [rankingCopy rankedGroups];
  v21 = [rankedGroups countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(rankedGroups);
        }

        v25 = *(*(&v36 + 1) + 8 * i);
        digestEngagementTrackingMetrics = [v25 digestEngagementTrackingMetrics];
        numEngagementsAfterExpiration = [digestEngagementTrackingMetrics numEngagementsAfterExpiration];
        v28 = [digestEngagementTrackingMetrics numEngagementsInScheduled] + numEngagementsAfterExpiration;
        v29 = v28 + [digestEngagementTrackingMetrics numEngagementsInUpcoming];
        if ([v25 isCommunicationGroup])
        {
          [(ATXMissedNotificationRankingEngagementMetric *)self setNumMessageGroups:[(ATXMissedNotificationRankingEngagementMetric *)self numMessageGroups]+ 1];
          rankedNotifications = [v25 rankedNotifications];
          -[ATXMissedNotificationRankingEngagementMetric setNumMessageNotifications:](self, "setNumMessageNotifications:", -[ATXMissedNotificationRankingEngagementMetric numMessageNotifications](self, "numMessageNotifications") + [rankedNotifications count]);

          [(ATXMissedNotificationRankingEngagementMetric *)self setNumMessageEngagements:[(ATXMissedNotificationRankingEngagementMetric *)self numMessageEngagements]+ v29];
        }

        else
        {
          [(ATXMissedNotificationRankingEngagementMetric *)self setNumOtherGroups:[(ATXMissedNotificationRankingEngagementMetric *)self numOtherGroups]+ 1];
          rankedNotifications2 = [v25 rankedNotifications];
          -[ATXMissedNotificationRankingEngagementMetric setNumOtherNotifications:](self, "setNumOtherNotifications:", -[ATXMissedNotificationRankingEngagementMetric numOtherNotifications](self, "numOtherNotifications") + [rankedNotifications2 count]);

          [(ATXMissedNotificationRankingEngagementMetric *)self setNumOtherEngagements:[(ATXMissedNotificationRankingEngagementMetric *)self numOtherEngagements]+ v29];
        }
      }

      v22 = [rankedGroups countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v22);
  }

  digestEngagementTrackingMetrics2 = [rankingCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingEngagementMetric setNumEngagementsInUpcoming:](self, "setNumEngagementsInUpcoming:", [digestEngagementTrackingMetrics2 numEngagementsInUpcoming]);

  digestEngagementTrackingMetrics3 = [rankingCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingEngagementMetric setNumEngagementsAfterShow:](self, "setNumEngagementsAfterShow:", [digestEngagementTrackingMetrics3 numEngagementsInScheduled]);

  digestEngagementTrackingMetrics4 = [rankingCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingEngagementMetric setNumEngagementsAfterExpiration:](self, "setNumEngagementsAfterExpiration:", [digestEngagementTrackingMetrics4 numEngagementsAfterExpiration]);

  digestEngagementTrackingMetrics5 = [rankingCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingEngagementMetric setNumExpansions:](self, "setNumExpansions:", [digestEngagementTrackingMetrics5 numExpansions]);
}

- (id)coreAnalyticsDictionary
{
  v33[16] = *MEMORY[0x277D85DE8];
  v32[0] = @"createdTimestamp";
  v3 = MEMORY[0x277CCABB0];
  [(ATXMissedNotificationRankingEngagementMetric *)self createdTimestamp];
  v31 = [v3 numberWithDouble:?];
  v33[0] = v31;
  v32[1] = @"showTimestamp";
  v4 = MEMORY[0x277CCABB0];
  [(ATXMissedNotificationRankingEngagementMetric *)self expireTimestamp];
  v30 = [v4 numberWithDouble:?];
  v33[1] = v30;
  v32[2] = @"expireTimestamp";
  v5 = MEMORY[0x277CCABB0];
  [(ATXMissedNotificationRankingEngagementMetric *)self expireTimestamp];
  v29 = [v5 numberWithDouble:?];
  v33[2] = v29;
  v32[3] = @"mnbUUID";
  mnbUUID = [(ATXMissedNotificationRankingEngagementMetric *)self mnbUUID];
  v7 = mnbUUID;
  if (!mnbUUID)
  {
    mnbUUID = [MEMORY[0x277CBEB68] null];
  }

  v24 = mnbUUID;
  v33[3] = mnbUUID;
  v32[4] = @"previousModeSemanticType";
  previousModeSemanticType = [(ATXMissedNotificationRankingEngagementMetric *)self previousModeSemanticType];
  v9 = previousModeSemanticType;
  if (!previousModeSemanticType)
  {
    previousModeSemanticType = [MEMORY[0x277CBEB68] null];
  }

  v27 = v9;
  v28 = v7;
  v23 = previousModeSemanticType;
  v33[4] = previousModeSemanticType;
  v32[5] = @"nextModeSemanticType";
  nextModeSemanticType = [(ATXMissedNotificationRankingEngagementMetric *)self nextModeSemanticType];
  v11 = nextModeSemanticType;
  if (!nextModeSemanticType)
  {
    nextModeSemanticType = [MEMORY[0x277CBEB68] null];
  }

  v33[5] = nextModeSemanticType;
  v32[6] = @"numMessageGroups";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numMessageGroups](self, "numMessageGroups", nextModeSemanticType)}];
  v33[6] = v26;
  v32[7] = @"numOtherGroups";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numOtherGroups](self, "numOtherGroups")}];
  v33[7] = v25;
  v32[8] = @"numMessageNotifications";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numMessageNotifications](self, "numMessageNotifications")}];
  v33[8] = v12;
  v32[9] = @"numOtherNotifications";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numOtherNotifications](self, "numOtherNotifications")}];
  v33[9] = v13;
  v32[10] = @"numMessageEngagements";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numMessageEngagements](self, "numMessageEngagements")}];
  v33[10] = v14;
  v32[11] = @"numOtherEngagements";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numOtherEngagements](self, "numOtherEngagements")}];
  v33[11] = v15;
  v32[12] = @"numEngagementsInUpcoming";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numEngagementsInUpcoming](self, "numEngagementsInUpcoming")}];
  v33[12] = v16;
  v32[13] = @"numEngagementsAfterShow";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numEngagementsAfterShow](self, "numEngagementsAfterShow")}];
  v33[13] = v17;
  v32[14] = @"numEngagementsAfterExpiration";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numEngagementsAfterExpiration](self, "numEngagementsAfterExpiration")}];
  v33[14] = v18;
  v32[15] = @"numExpansions";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numExpansions](self, "numExpansions")}];
  v33[15] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:16];

  if (!v11)
  {
  }

  if (!v27)
  {
  }

  if (!v28)
  {
  }

  return v20;
}

@end