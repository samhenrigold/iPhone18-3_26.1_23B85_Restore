@interface ATXNotificationDigestFeedbackLogger
- (ATXNotificationDigestFeedbackLogger)init;
- (ATXNotificationDigestFeedbackLogger)initWithDigestFeedback:(id)feedback;
- (id)_getBundleIdAndEngagementsForDigestGroup:(id)group onDigest:(id)digest;
- (void)logFeedbackForAnnotatedDigest:(id)digest;
@end

@implementation ATXNotificationDigestFeedbackLogger

- (ATXNotificationDigestFeedbackLogger)init
{
  v3 = objc_opt_new();
  v4 = [(ATXNotificationDigestFeedbackLogger *)self initWithDigestFeedback:v3];

  return v4;
}

- (ATXNotificationDigestFeedbackLogger)initWithDigestFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v9.receiver = self;
  v9.super_class = ATXNotificationDigestFeedbackLogger;
  v6 = [(ATXNotificationDigestFeedbackLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_digestFeedback, feedback);
  }

  return v7;
}

- (void)logFeedbackForAnnotatedDigest:(id)digest
{
  v66 = *MEMORY[0x277D85DE8];
  digestCopy = digest;
  v5 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  highlightedGroups = [digestCopy highlightedGroups];
  v7 = [highlightedGroups countByEnumeratingWithState:&v54 objects:v65 count:16];
  v47 = v5;
  if (v7)
  {
    v9 = v7;
    v10 = *v55;
    *&v8 = 138412802;
    v43 = v8;
    v48 = *v55;
    v45 = highlightedGroups;
    do
    {
      v11 = 0;
      do
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(highlightedGroups);
        }

        v12 = [(ATXNotificationDigestFeedbackLogger *)self _getBundleIdAndEngagementsForDigestGroup:*(*(&v54 + 1) + 8 * v11) onDigest:digestCopy, v43];
        v13 = v12;
        if (v12)
        {
          first = [v12 first];
          v15 = [v5 containsObject:first];
          if (v15)
          {
            second = __atxlog_handle_notification_management(v15);
            if (os_log_type_enabled(second, OS_LOG_TYPE_INFO))
            {
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              uuid = [digestCopy uuid];
              uUIDString = [uuid UUIDString];
              *buf = v43;
              v60 = v18;
              v61 = 2112;
              v62 = first;
              v63 = 2112;
              v64 = uUIDString;
              _os_log_impl(&dword_2263AA000, second, OS_LOG_TYPE_INFO, "[%@] Found unexpected duplicate bundle ID %@ in marquee spots for digest %@", buf, 0x20u);

              v10 = v48;
              v5 = v47;

              highlightedGroups = v45;
            }
          }

          else
          {
            second = [v13 second];
            [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback logMarqueeAppearanceForBundleId:first];
            numEngagementsInUpcoming = [second numEngagementsInUpcoming];
            v22 = [second numEngagementsInScheduled]+ numEngagementsInUpcoming;
            if (v22 + [second numEngagementsAfterExpiration])
            {
              [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback logMarqueeEngagementForBundleId:first];
            }

            [v5 addObject:first];
            v10 = v48;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [highlightedGroups countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v9);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  messageGroups = [digestCopy messageGroups];
  rankedGroups = [digestCopy rankedGroups];
  v25 = [messageGroups arrayByAddingObjectsFromArray:rankedGroups];

  v26 = v25;
  v27 = [v25 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v27)
  {
    v29 = v27;
    v30 = *v51;
    *&v28 = 138412802;
    v44 = v28;
    v49 = *v51;
    v46 = v25;
    do
    {
      v31 = 0;
      do
      {
        if (*v51 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v32 = [(ATXNotificationDigestFeedbackLogger *)self _getBundleIdAndEngagementsForDigestGroup:*(*(&v50 + 1) + 8 * v31) onDigest:digestCopy, v44];
        v33 = v32;
        if (v32)
        {
          first2 = [v32 first];
          v35 = [v5 containsObject:first2];
          if (v35)
          {
            second2 = __atxlog_handle_notification_management(v35);
            if (os_log_type_enabled(second2, OS_LOG_TYPE_INFO))
            {
              v37 = objc_opt_class();
              v38 = NSStringFromClass(v37);
              uuid2 = [digestCopy uuid];
              uUIDString2 = [uuid2 UUIDString];
              *buf = v44;
              v60 = v38;
              v61 = 2112;
              v62 = first2;
              v63 = 2112;
              v64 = uUIDString2;
              _os_log_impl(&dword_2263AA000, second2, OS_LOG_TYPE_INFO, "[%@] Skipping duplicate bundle ID %@ in digest %@", buf, 0x20u);

              v30 = v49;
              v5 = v47;

              v26 = v46;
            }
          }

          else
          {
            second2 = [v33 second];
            [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback logNonMarqueeAppearanceForBundleId:first2];
            numEngagementsInUpcoming2 = [second2 numEngagementsInUpcoming];
            v42 = [second2 numEngagementsInScheduled]+ numEngagementsInUpcoming2;
            if (v42 + [second2 numEngagementsAfterExpiration])
            {
              [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback logNonMarqueeEngagementForBundleId:first2];
            }

            [v5 addObject:first2];
            v30 = v49;
          }
        }

        ++v31;
      }

      while (v29 != v31);
      v29 = [v26 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v29);
  }
}

- (id)_getBundleIdAndEngagementsForDigestGroup:(id)group onDigest:(id)digest
{
  v24 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  digestCopy = digest;
  bundleId = [groupCopy bundleId];
  if (bundleId)
  {
    digestEngagementTrackingMetrics = [groupCopy digestEngagementTrackingMetrics];
    if (digestEngagementTrackingMetrics)
    {
      v9 = [MEMORY[0x277D42648] tupleWithFirst:bundleId second:digestEngagementTrackingMetrics];
      goto LABEL_9;
    }

    v11 = __atxlog_handle_notification_management(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v16 = objc_opt_class();
    groupId2 = NSStringFromClass(v16);
    groupId = [groupCopy groupId];
    uuid = [digestCopy uuid];
    uUIDString = [uuid UUIDString];
    v18 = 138412802;
    v19 = groupId2;
    v20 = 2112;
    v21 = groupId;
    v22 = 2112;
    v23 = uUIDString;
    _os_log_error_impl(&dword_2263AA000, v11, OS_LOG_TYPE_ERROR, "[%@] Could not get engagement metrics for digest group with group ID %@ on digest %@", &v18, 0x20u);

LABEL_13:
LABEL_7:

    goto LABEL_8;
  }

  digestEngagementTrackingMetrics = __atxlog_handle_notification_management(0);
  if (os_log_type_enabled(digestEngagementTrackingMetrics, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    groupId2 = [groupCopy groupId];
    groupId = [digestCopy uuid];
    uuid = [groupId UUIDString];
    v18 = 138412802;
    v19 = v11;
    v20 = 2112;
    v21 = groupId2;
    v22 = 2112;
    v23 = uuid;
    _os_log_error_impl(&dword_2263AA000, digestEngagementTrackingMetrics, OS_LOG_TYPE_ERROR, "[%@] Could not get bundle ID for digest group with group ID %@ on digest %@", &v18, 0x20u);
    goto LABEL_13;
  }

LABEL_8:
  v9 = 0;
LABEL_9:

  return v9;
}

@end