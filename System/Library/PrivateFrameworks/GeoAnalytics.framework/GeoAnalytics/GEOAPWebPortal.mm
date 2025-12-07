@interface GEOAPWebPortal
+ (void)captureWebPlaceCardAnalyticEvent:(id)event analyticSessionType:(int)type;
+ (void)captureWebPlaceCardFeatureUseCount:(int)count usageString:(id)string usageBool:(id)bool;
@end

@implementation GEOAPWebPortal

+ (void)captureWebPlaceCardFeatureUseCount:(int)count usageString:(id)string usageBool:(id)bool
{
  v6 = *&count;
  boolCopy = bool;
  stringCopy = string;
  v10 = +[GEOAPServiceManager sharedManager];
  v9 = GEOApplicationIdentifierOrProcessName();
  [v10 reportDailyUsageCountType:v6 usageString:stringCopy usageBool:boolCopy appId:v9];
}

+ (void)captureWebPlaceCardAnalyticEvent:(id)event analyticSessionType:(int)type
{
  v4 = *&type;
  v28 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (v4 < 0x15 && ((0x1BFFFFu >> v4) & 1) != 0)
  {
    v6 = off_1E7957F38[v4];
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
  }

  v7 = GEOGetWebPortalAnalyticsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *v25 = [eventCopy length];
    *&v25[8] = 1024;
    *&v25[10] = v4;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_1AB634000, v7, OS_LOG_TYPE_DEBUG, "received %lu bytes of event data with session type (%d : %@)", buf, 0x1Cu);
  }

  v8 = [objc_alloc(MEMORY[0x1E69A1E90]) initWithData:eventCopy];
  if (v8)
  {
    if ((v4 - 5) < 4)
    {
      v9 = GEOConfigGetArray();
      v10 = GEOConfigGetString();
      if (([v10 isEqualToString:@"UNSPECIFIED"]& 1) != 0)
      {
LABEL_10:

        v11 = GEOGetWebPortalAnalyticsLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v25 = v10;
          _os_log_impl(&dword_1AB634000, v11, OS_LOG_TYPE_ERROR, "'WebPlaceCardUploadPolicy' value '%@' is invalid ; using GEOAPUploadPolicyType_UP_POLICY_00", buf, 0xCu);
        }

        v12 = 6;
        goto LABEL_45;
      }

      if (([v10 isEqualToString:@"LOW_COST_7D"]& 1) != 0)
      {
        v12 = 1;
      }

      else if (([v10 isEqualToString:@"MED_COST_7D"]& 1) != 0)
      {
        v12 = 2;
      }

      else if (([v10 isEqualToString:@"HIGH_COST_7D"]& 1) != 0)
      {
        v12 = 3;
      }

      else if (([v10 isEqualToString:@"HIGHEST_COST_7D"]& 1) != 0)
      {
        v12 = 4;
      }

      else if (([v10 isEqualToString:@"MED_COST_90D"]& 1) != 0)
      {
        v12 = 5;
      }

      else if (([v10 isEqualToString:@"UP_POLICY_00"]& 1) != 0)
      {
        v12 = 6;
      }

      else if (([v10 isEqualToString:@"UP_POLICY_01"]& 1) != 0)
      {
        v12 = 7;
      }

      else if (([v10 isEqualToString:@"UP_POLICY_02"]& 1) != 0)
      {
        v12 = 8;
      }

      else if (([v10 isEqualToString:@"UP_POLICY_03"]& 1) != 0)
      {
        v12 = 9;
      }

      else if (([v10 isEqualToString:@"POI_BUSYNESS_POLICY"]& 1) != 0)
      {
        v12 = 10;
      }

      else if (([v10 isEqualToString:@"RAND_DELAY"]& 1) != 0)
      {
        v12 = 11;
      }

      else if (([v10 isEqualToString:@"TEST"]& 1) != 0)
      {
        v12 = 12;
      }

      else
      {
        if (([v10 isEqualToString:@"END_SENTINEL"]& 1) == 0)
        {
          goto LABEL_10;
        }

        v12 = 13;
      }

      v11 = v10;
LABEL_45:

      v17 = +[GEOAPStateFactory sharedFactory];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __71__GEOAPWebPortal_captureWebPlaceCardAnalyticEvent_analyticSessionType___block_invoke;
      v18[3] = &unk_1E7957F18;
      v19 = v9;
      v20 = v8;
      v22 = v4;
      v23 = v12;
      v21 = v6;
      v13 = v9;
      [v17 sessionStateForType:v4 callback:v18];

      goto LABEL_46;
    }

    v13 = GEOGetWebPortalAnalyticsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v25 = v4;
      *&v25[4] = 2112;
      *&v25[6] = v6;
      v14 = "session type '%d : %@' is not supported";
      v15 = v13;
      v16 = 18;
      goto LABEL_17;
    }
  }

  else
  {
    v13 = GEOGetWebPortalAnalyticsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v25 = eventCopy;
      v14 = "event data from placecard could not be parsed : (%@)";
      v15 = v13;
      v16 = 12;
LABEL_17:
      _os_log_impl(&dword_1AB634000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    }
  }

LABEL_46:
}

void __71__GEOAPWebPortal_captureWebPlaceCardAnalyticEvent_analyticSessionType___block_invoke(uint64_t a1, void *a2, unsigned int a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v24 = v4;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = a1;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (!v7)
    {
      goto LABEL_21;
    }

    v8 = v7;
    v9 = *v27;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = GEOGetWebPortalAnalyticsLog();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          *buf = 0;
          v16 = v15;
          v17 = "'WebPlaceCardStates' has unexpected entry; must drop it";
          v18 = 2;
LABEL_15:
          _os_log_impl(&dword_1AB634000, v16, OS_LOG_TYPE_ERROR, v17, buf, v18);
          goto LABEL_19;
        }

        v12 = [GEOAPStateFactory pipelineStateTypeForPipelineStateName:v11];
        if (!v12)
        {
          v15 = GEOGetWebPortalAnalyticsLog();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          *buf = 138412290;
          v31[0] = v11;
          v16 = v15;
          v17 = "'WebPlaceCardStates' has unexpected add-on state name (%@); must drop it";
          v18 = 12;
          goto LABEL_15;
        }

        v13 = v12;
        v14 = +[GEOAPStateFactory sharedFactory];
        v15 = [v14 stateForType:v13];

        if (v15)
        {
          [*(v25 + 40) addLogMsgState:v15];
        }

        else
        {
          v19 = GEOGetWebPortalAnalyticsLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31[0] = v11;
            _os_log_impl(&dword_1AB634000, v19, OS_LOG_TYPE_ERROR, "state (%@) could not be constructed", buf, 0xCu);
          }

          v15 = 0;
        }

LABEL_19:
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (!v8)
      {
LABEL_21:

        v5 = v24;
        [*(v25 + 40) addLogMsgState:v24];
        v20 = GEOMakeGEOAPBatchID();
        [GEOAPPortal populateCommonEventValues:*(v25 + 40)];
        [GEOAPPortal reportLogMsgEvent:*(v25 + 40) uploadBatchId:v20 completion:0 completionQueue:0];
        goto LABEL_25;
      }
    }
  }

  v21 = GEOGetWebPortalAnalyticsLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 56);
    v23 = *(a1 + 48);
    *buf = 67109378;
    LODWORD(v31[0]) = v22;
    WORD2(v31[0]) = 2112;
    *(v31 + 6) = v23;
    _os_log_impl(&dword_1AB634000, v21, OS_LOG_TYPE_ERROR, "session state (%d : %@) could not be constructed", buf, 0x12u);
  }

LABEL_25:
}

@end