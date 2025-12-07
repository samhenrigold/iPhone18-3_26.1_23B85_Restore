@interface ATXTimelineDonationsPruner
- (void)pruneTimelineRelevanceTableWithXPCActivity:(id)activity;
@end

@implementation ATXTimelineDonationsPruner

- (void)pruneTimelineRelevanceTableWithXPCActivity:(id)activity
{
  activityCopy = activity;
  v4 = __atxlog_handle_timeline(activityCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Pruning timeline donations", buf, 2u);
  }

  mEMORY[0x277CEB5C8] = [MEMORY[0x277CEB5C8] sharedInstance];
  didDefer = [activityCopy didDefer];
  if (didDefer)
  {
    v7 = __atxlog_handle_timeline(didDefer);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 0;
      v8 = "ATXTimelineDonationsPruner: Asked to defer";
      v9 = &v25;
LABEL_20:
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  pruneTimelineEntries = [mEMORY[0x277CEB5C8] pruneTimelineEntries];
  v11 = pruneTimelineEntries;
  v12 = __atxlog_handle_timeline(pruneTimelineEntries);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (!v13)
    {
      goto LABEL_12;
    }

    v24 = 0;
    v14 = "Sucessfully finished pruning the timeline relevance table";
    v15 = &v24;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_12;
    }

    *v23 = 0;
    v14 = "Unable to finish pruning the timeline relevance table";
    v15 = v23;
  }

  _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
LABEL_12:

  didDefer2 = [activityCopy didDefer];
  if (didDefer2)
  {
    v7 = __atxlog_handle_timeline(didDefer2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v8 = "ATXTimelineDonationsPruner: Asked to defer";
      v9 = &v22;
      goto LABEL_20;
    }
  }

  else
  {
    pruneInvalidSuggestions = [mEMORY[0x277CEB5C8] pruneInvalidSuggestions];
    v18 = pruneInvalidSuggestions;
    v7 = __atxlog_handle_timeline(pruneInvalidSuggestions);
    v19 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v19)
      {
        v21 = 0;
        v8 = "Sucessfully finished pruning invalid info suggestions";
        v9 = &v21;
        goto LABEL_20;
      }
    }

    else if (v19)
    {
      v20 = 0;
      v8 = "Unable to finish pruning invalid info suggestions";
      v9 = &v20;
      goto LABEL_20;
    }
  }

LABEL_21:
}

@end