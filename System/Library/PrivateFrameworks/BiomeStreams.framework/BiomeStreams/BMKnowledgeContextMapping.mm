@interface BMKnowledgeContextMapping
+ (id)contextKeypathForQuery:(id)query;
+ (id)liveEventsForQuery:(id)query context:(id)context;
@end

@implementation BMKnowledgeContextMapping

+ (id)contextKeypathForQuery:(id)query
{
  queryCopy = query;
  eventStreams = [queryCopy eventStreams];
  v5 = [eventStreams count];

  if (v5 != 1)
  {
    v9 = 0;
    goto LABEL_9;
  }

  eventStreams2 = [queryCopy eventStreams];
  v7 = [eventStreams2 objectAtIndexedSubscript:0];

  appInFocusStream = [get_DKSystemEventStreamsClass() appInFocusStream];
  if ([appInFocusStream isEqual:v7])
  {

LABEL_6:
    keyPathForAppUsageDataDictionaries = [get_CDContextQueriesClass() keyPathForAppUsageDataDictionaries];
    goto LABEL_7;
  }

  appUsageStream = [get_DKSystemEventStreamsClass() appUsageStream];
  v11 = [appUsageStream isEqual:v7];

  if (v11)
  {
    goto LABEL_6;
  }

  appWebUsageStream = [get_DKSystemEventStreamsClass() appWebUsageStream];
  v15 = [appWebUsageStream isEqual:v7];

  if (!v15)
  {
    v9 = 0;
    goto LABEL_8;
  }

  keyPathForAppUsageDataDictionaries = [get_CDContextQueriesClass() keyPathForAppWebUsageDataDictionaries];
LABEL_7:
  v9 = keyPathForAppUsageDataDictionaries;
LABEL_8:

LABEL_9:

  return v9;
}

+ (id)liveEventsForQuery:(id)query context:(id)context
{
  v86 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  contextCopy = context;
  v49 = queryCopy;
  v50 = [self contextKeypathForQuery:queryCopy];
  if (!v50 || ([queryCopy eventStreams], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 != 1))
  {
    v51 = MEMORY[0x1E695E0F0];
    goto LABEL_59;
  }

  eventStreams = [queryCopy eventStreams];
  v55 = [eventStreams objectAtIndexedSubscript:0];

  keyPathForAppUsageDataDictionaries = [get_CDContextQueriesClass() keyPathForAppUsageDataDictionaries];
  v11 = [v50 isEqual:keyPathForAppUsageDataDictionaries];

  if (v11)
  {
    v12 = [contextCopy objectForKeyedSubscript:v50];
    v51 = [MEMORY[0x1E695E0F0] mutableCopy];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
    if (v13)
    {
      v14 = *v71;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v71 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v70 + 1) + 8 * i);
          appUsageBundleID = [get_CDContextQueriesClass() appUsageBundleID];
          v18 = [v16 objectForKeyedSubscript:appUsageBundleID];

          appUsageStartDate = [get_CDContextQueriesClass() appUsageStartDate];
          v20 = [v16 objectForKeyedSubscript:appUsageStartDate];

          if (v18 && v20)
          {
            date = [MEMORY[0x1E695DF00] date];
            v22 = [get_DKEventClass() eventWithStream:v55 startDate:v20 endDate:date identifierStringValue:v18 metadata:0];
            if (v22)
            {
              [v51 addObject:v22];
            }

            else
            {
              v24 = __biome_log_for_category();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                [(BMKnowledgeContextMapping *)v74 liveEventsForQuery:v24 context:?];
              }
            }
          }

          else
          {
            v23 = @"startDate";
            if (!v20)
            {
              v23 = @"all";
            }

            if (v18)
            {
              v23 = @"bundleId";
            }

            date = v23;
            v22 = __biome_log_for_category();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = date;
              _os_log_error_impl(&dword_1848EE000, v22, OS_LOG_TYPE_ERROR, "Missing %@ information to construct an event from context data", &buf, 0xCu);
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
      }

      while (v13);
    }
  }

  else
  {
    keyPathForAppWebUsageDataDictionaries = [get_CDContextQueriesClass() keyPathForAppWebUsageDataDictionaries];
    v26 = [v50 isEqual:keyPathForAppWebUsageDataDictionaries];

    if (!v26)
    {
      v51 = MEMORY[0x1E695E0F0];
      goto LABEL_58;
    }

    v27 = [contextCopy objectForKeyedSubscript:v50];
    v51 = [MEMORY[0x1E695E0F0] mutableCopy];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v27;
    v53 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
    if (v53)
    {
      v52 = *v67;
      do
      {
        v28 = 0;
        do
        {
          if (*v67 != v52)
          {
            v29 = v28;
            objc_enumerationMutation(obj);
            v28 = v29;
          }

          v57 = v28;
          v30 = *(*(&v66 + 1) + 8 * v28);
          appWebUsageWebDomain = [get_CDContextQueriesClass() appWebUsageWebDomain];
          appWebUsageStartDate = [get_CDContextQueriesClass() appWebUsageStartDate];
          appWebUsageBundleID = [get_CDContextQueriesClass() appWebUsageBundleID];
          appWebUsageType = [get_CDContextQueriesClass() appWebUsageType];
          appWebUsageWepageURL = [get_CDContextQueriesClass() appWebUsageWepageURL];
          v31 = [v30 objectForKeyedSubscript:appWebUsageWebDomain];
          v32 = [v30 objectForKeyedSubscript:appWebUsageStartDate];
          v58 = [v30 objectForKeyedSubscript:appWebUsageBundleID];
          v33 = [v30 objectForKeyedSubscript:appWebUsageType];
          v34 = [v30 objectForKeyedSubscript:appWebUsageWepageURL];
          v35 = v34;
          if (v34 && v31 && v33 && v32)
          {
            *v74 = 0;
            v75 = v74;
            v76 = 0x2050000000;
            v36 = get_DKBundleIdentifierClass_softClass;
            v77 = get_DKBundleIdentifierClass_softClass;
            if (!get_DKBundleIdentifierClass_softClass)
            {
              *&buf = MEMORY[0x1E69E9820];
              *(&buf + 1) = 3221225472;
              v83 = __get_DKBundleIdentifierClass_block_invoke;
              v84 = &unk_1E6E52EB0;
              v85 = v74;
              __get_DKBundleIdentifierClass_block_invoke(&buf);
              v36 = *(v75 + 3);
            }

            v37 = v36;
            _Block_object_dispose(v74, 8);
            v38 = [v36 withBundle:v58];
            webpageURL = [get_DKDigitalHealthMetadataKeyClass() webpageURL];
            webDomain = [get_DKDigitalHealthMetadataKeyClass() webDomain];
            usageType = [get_DKDigitalHealthMetadataKeyClass() usageType];
            v78[0] = webpageURL;
            v78[1] = webDomain;
            v79[0] = v35;
            v79[1] = v31;
            v78[2] = usageType;
            v79[2] = v33;
            v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:3];
            DKEventClass = get_DKEventClass();
            date2 = [MEMORY[0x1E695DF00] date];
            v44 = [DKEventClass eventWithStream:v55 startDate:v32 endDate:date2 value:v38 metadata:v41];

            if (v44)
            {
              [v51 addObject:v44];
            }

            else
            {
              v46 = __biome_log_for_category();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                [(BMKnowledgeContextMapping *)&v64 liveEventsForQuery:v65 context:v46];
              }
            }
          }

          else
          {
            v45 = @"startDate";
            if (!v32)
            {
              v45 = @"all";
            }

            if (v33)
            {
              v45 = @"usageType";
            }

            if (v31)
            {
              v45 = @"webDomain";
            }

            if (v34)
            {
              v45 = @"url";
            }

            v38 = v45;
            webpageURL = __biome_log_for_category();
            if (os_log_type_enabled(webpageURL, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v38;
              _os_log_error_impl(&dword_1848EE000, webpageURL, OS_LOG_TYPE_ERROR, "Missing %@ information to construct an event from context data", &buf, 0xCu);
            }
          }

          v28 = v57 + 1;
        }

        while (v53 != v57 + 1);
        v53 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
      }

      while (v53);
    }
  }

LABEL_58:
LABEL_59:

  return v51;
}

@end