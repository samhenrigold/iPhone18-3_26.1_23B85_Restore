@interface CSSearchAgent
+ (id)searchAgent:(BOOL)agent serviceName:(id)name;
- (BOOL)addClientConnectionIfAllowedForConfiguration:(id)configuration;
- (BOOL)addClientConnectionIfAllowedForConnection:(id)connection;
- (BOOL)handleCommand:(const char *)command info:(id)info connection:(id)connection;
- (BOOL)lostClientConnection:(id)connection error:(id)error;
- (id)searchConnection:(id)connection;
- (void)_prepareQueryContext:(id)context searchConnection:(id)connection;
- (void)addHiddenAppFiltersToQueryContext:(id)context;
- (void)cancelQuery:(id)query;
- (void)cancelSimpleQuery:(id)query;
- (void)handleEngagement:(id)engagement forConnection:(id)connection;
- (void)pollResults:(id)results;
- (void)preheat:(id)preheat;
- (void)startQuery:(id)query;
- (void)startSimpleQuery:(id)query;
@end

@implementation CSSearchAgent

+ (id)searchAgent:(BOOL)agent serviceName:(id)name
{
  nameCopy = name;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__CSSearchAgent_searchAgent_serviceName___block_invoke;
  v11[3] = &unk_278934400;
  agentCopy = agent;
  v12 = nameCopy;
  v6 = searchAgent_serviceName__onceToken;
  v7 = nameCopy;
  if (v6 != -1)
  {
    dispatch_once(&searchAgent_serviceName__onceToken, v11);
  }

  v8 = sSearchAgent;
  v9 = sSearchAgent;

  return v8;
}

uint64_t __41__CSSearchAgent_searchAgent_serviceName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [CSSearchAgent alloc];
  if (*(a1 + 32))
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = *MEMORY[0x277CC2378];
  }

  if (v2 == 1)
  {
    v5 = [(CSXPCConnection *)v3 initWithServiceName:v4];
    v6 = sSearchAgent;
    sSearchAgent = v5;

    sSearchAgentIsPrivate = 1;
  }

  else
  {
    v7 = [(CSXPCConnection *)v3 initMachServiceListenerWithName:v4];
    v8 = sSearchAgent;
    sSearchAgent = v7;
  }

  v9 = objc_opt_new();
  [sSearchAgent setSearchConnections:v9];

  return MEMORY[0x282187210](CSSearchAgentFieldNameCallback);
}

- (BOOL)addClientConnectionIfAllowedForConfiguration:(id)configuration
{
  v23 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = [[CSSearchClientConnection alloc] initWithConnectionConfiguration:configurationCopy];
  bundleID = [(CSSearchClientConnection *)v5 bundleID];
  if (bundleID)
  {

LABEL_4:
    connection = [configurationCopy connection];
    v9 = [CSSearchClientConnectionKey keyWithConnection:connection];

    searchConnections = [(CSSearchAgent *)self searchConnections];
    v11 = [searchConnections objectForKeyedSubscript:v9];

    if (v11)
    {
      v13 = logForCSLogCategoryQuery(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        searchConnections2 = [(CSSearchAgent *)self searchConnections];
        v15 = [searchConnections2 objectForKeyedSubscript:v9];
        v19 = 138412546;
        v20 = v15;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEFAULT, "Attempted to recreate search connection for existing connection:%@ key:%@", &v19, 0x16u);
      }
    }

    else
    {
      searchConnections3 = [(CSSearchAgent *)self searchConnections];
      [searchConnections3 setObject:v5 forKeyedSubscript:v9];
    }

    v17 = 1;
    goto LABEL_10;
  }

  searchInternal = [(CSSearchClientConnection *)v5 searchInternal];
  if (searchInternal)
  {
    goto LABEL_4;
  }

  v9 = logForCSLogCategoryQuery(searchInternal);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [CSSearchAgent addClientConnectionIfAllowedForConfiguration:configurationCopy];
  }

  v17 = 0;
LABEL_10:

  return v17;
}

- (BOOL)addClientConnectionIfAllowedForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [SDConnectionConfiguration alloc];
  v6 = [(SDConnectionConfiguration *)v5 initWithConnection:connectionCopy isPrivate:sSearchAgentIsPrivate];

  LOBYTE(self) = [(CSSearchAgent *)self addClientConnectionIfAllowedForConfiguration:v6];
  return self;
}

- (BOOL)lostClientConnection:(id)connection error:(id)error
{
  error = [CSSearchClientConnectionKey keyWithConnection:connection, error];
  v6 = [(NSMutableDictionary *)self->_searchConnections objectForKeyedSubscript:error];
  searchConnections = [(CSSearchAgent *)self searchConnections];
  [searchConnections setObject:0 forKeyedSubscript:error];

  [v6 cancelQueryTasks];
  return 0;
}

- (id)searchConnection:(id)connection
{
  v4 = [CSSearchClientConnectionKey keyWithConnection:connection];
  v5 = [(NSMutableDictionary *)self->_searchConnections objectForKeyedSubscript:v4];

  return v5;
}

- (void)cancelQuery:(id)query
{
  original = query;
  v4 = xpc_dictionary_get_remote_connection(original);
  reply = xpc_dictionary_create_reply(original);
  v6 = reply;
  if (v4 && reply)
  {
    v7 = [(CSSearchAgent *)self searchConnection:v4];
    if (v7)
    {
      uint64 = xpc_dictionary_get_uint64(original, "qid");
      [v7 cancelQueryTask:uint64];
    }

    else
    {
      uint64 = 0;
    }

    xpc_dictionary_set_uint64(v6, "qid", uint64);
    csquery_xpc_dictionary_encode_status();
    xpc_connection_send_message(v4, v6);
  }
}

- (void)pollResults:(id)results
{
  original = results;
  v4 = xpc_dictionary_get_remote_connection(original);
  reply = xpc_dictionary_create_reply(original);
  v6 = reply;
  if (v4 && reply)
  {
    v7 = [(CSSearchAgent *)self searchConnection:v4];
    if (v7)
    {
      uint64 = xpc_dictionary_get_uint64(original, "qid");
      [v7 pollResultsForQueryTask:uint64];
    }

    else
    {
      uint64 = 0;
    }

    xpc_dictionary_set_uint64(v6, "qid", uint64);
    csquery_xpc_dictionary_encode_status();
    xpc_connection_send_message(v4, v6);
  }
}

- (void)preheat:(id)preheat
{
  v20 = *MEMORY[0x277D85DE8];
  preheatCopy = preheat;
  v5 = MEMORY[0x277CC3510];
  v6 = xpc_dictionary_get_value(preheatCopy, "pcs");
  v7 = [v5 copyNSStringArrayFromXPCArray:v6];

  v8 = [v7 count];
  v9 = logForCSLogCategoryQuery(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    v18 = 138412290;
    v19 = v7;
    v11 = "query preheat %@";
    v12 = v9;
    v13 = 12;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    LOWORD(v18) = 0;
    v11 = "query preheat";
    v12 = v9;
    v13 = 2;
  }

  _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_INFO, v11, &v18, v13);
LABEL_7:

  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer queryPreheat:v7];
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  v15 = xpc_dictionary_get_remote_connection(preheatCopy);
  if (v15)
  {
    reply = xpc_dictionary_create_reply(preheatCopy);
    v17 = reply;
    if (reply)
    {
      xpc_dictionary_set_int64(reply, "status", v14);
      xpc_connection_send_message(v15, v17);
    }
  }
}

- (void)_prepareQueryContext:(id)context searchConnection:(id)connection
{
  v103 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  connectionCopy = connection;
  bundleID = [connectionCopy bundleID];
  internal = [contextCopy internal];
  bundleIDs = [contextCopy bundleIDs];
  v10 = bundleIDs;
  v11 = MEMORY[0x277CBEBF8];
  if (bundleIDs)
  {
    v12 = bundleIDs;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = v12;

  additionalBundleIDs = [contextCopy additionalBundleIDs];
  v15 = additionalBundleIDs;
  if (additionalBundleIDs)
  {
    v16 = additionalBundleIDs;
  }

  else
  {
    v16 = v11;
  }

  bundleIDs8 = v16;

  instantAnswersBundleIDs = [contextCopy instantAnswersBundleIDs];
  v19 = instantAnswersBundleIDs;
  if (instantAnswersBundleIDs)
  {
    v20 = instantAnswersBundleIDs;
  }

  else
  {
    v20 = v11;
  }

  v21 = v20;

  v87 = bundleIDs8;
  v88 = connectionCopy;
  v85 = v13;
  v86 = v21;
  if (internal)
  {
    if (([contextCopy includeUserActivities] & 1) == 0)
    {
      [bundleID hasPrefix:@"com.apple.search"];
    }

    goto LABEL_44;
  }

  if (![v13 count])
  {
    if ([contextCopy sourceOptions] & 1) != 0 && (objc_msgSend(connectionCopy, "configuration"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "allowMail"), v31, (v32))
    {
      v33 = &unk_2846C9458;
    }

    else
    {
      v99 = bundleID;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
    }

    [contextCopy setBundleIDs:v33];

LABEL_44:
    v26 = 0;
    goto LABEL_49;
  }

  allowedBundleIDs = [connectionCopy allowedBundleIDs];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v23 = v13;
  v24 = [v23 countByEnumeratingWithState:&v93 objects:v102 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = *v94;
    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v94 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v93 + 1) + 8 * i);
        if (([bundleID isEqualToString:v29] & 1) == 0)
        {
          v30 = [allowedBundleIDs containsObject:v29];
          if ((v30 & 1) == 0)
          {
            v34 = logForCSLogCategoryDefault(v30);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [CSSearchAgent _prepareQueryContext:searchConnection:];
            }

            if (v26)
            {
              v35 = objc_opt_new();
              v89 = 0u;
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              v36 = v23;
              v37 = [v36 countByEnumeratingWithState:&v89 objects:v101 count:16];
              if (v37)
              {
                v38 = v37;
                v39 = *v90;
                do
                {
                  for (j = 0; j != v38; ++j)
                  {
                    if (*v90 != v39)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v41 = *(*(&v89 + 1) + 8 * j);
                    if (([allowedBundleIDs containsObject:v41] & 1) != 0 || objc_msgSend(bundleID, "isEqualToString:", v41))
                    {
                      [v35 addObject:bundleID];
                    }
                  }

                  v38 = [v36 countByEnumeratingWithState:&v89 objects:v101 count:16];
                }

                while (v38);
              }

              v26 = 1;
            }

            else
            {
              v100 = bundleID;
              v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
              v26 = 0;
            }

            [contextCopy setBundleIDs:v35];
            v23 = v35;
            goto LABEL_48;
          }

          v26 = 1;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v93 objects:v102 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v26 = 0;
  }

LABEL_48:

  bundleIDs8 = v87;
  connectionCopy = v88;
  v21 = v86;
LABEL_49:
  if ([contextCopy generateSuggestions])
  {
    if ([bundleIDs8 count])
    {
      bundleIDs2 = [contextCopy bundleIDs];
      v43 = [bundleIDs2 count];

      if (v43)
      {
        bundleIDs3 = [contextCopy bundleIDs];
        v45 = [bundleIDs3 arrayByAddingObjectsFromArray:bundleIDs8];
        [contextCopy setBundleIDs:v45];
      }
    }
  }

  if ([contextCopy enableInstantAnswers] && objc_msgSend(v21, "count"))
  {
    bundleIDs4 = [contextCopy bundleIDs];
    if (![bundleIDs4 count])
    {
LABEL_61:

      goto LABEL_62;
    }

    v47 = bundleID;
    if (([v47 hasPrefix:@"com.apple.omniSearch"] & 1) != 0 || (objc_msgSend(v47, "hasPrefix:", @"com.apple.intelligenceflow") & 1) != 0 || objc_msgSend(v47, "hasPrefix:", @"com.apple.ondeviceeval"))
    {

LABEL_60:
      bundleIDs4 = [contextCopy bundleIDs];
      v48 = [bundleIDs4 arrayByAddingObjectsFromArray:v21];
      [contextCopy setBundleIDs:v48];

      goto LABEL_61;
    }

    v79 = [v47 isEqualToString:@"com.apple.mobilemail"];

    if (v79)
    {
      goto LABEL_60;
    }
  }

LABEL_62:
  configuration = [connectionCopy configuration];
  [contextCopy setEntitledAttributes:{objc_msgSend(configuration, "entitledAttributes")}];

  configuration2 = [connectionCopy configuration];
  allowNotifications = [configuration2 allowNotifications];

  if (allowNotifications)
  {
    v53 = logForCSLogCategoryQuery(v52);
    selfCopy2 = self;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      [CSSearchAgent _prepareQueryContext:contextCopy searchConnection:v53];
    }
  }

  else
  {
    disableBundles = [contextCopy disableBundles];
    selfCopy2 = self;
    if (disableBundles)
    {
      disableBundles2 = [contextCopy disableBundles];
      v53 = [disableBundles2 arrayByAddingObject:@"com.apple.usernotificationsd"];
    }

    else
    {
      v53 = &unk_2846C9470;
    }

    [contextCopy setDisableBundles:v53];
  }

  if (([contextCopy filterOutHiddenApps] & 1) != 0 || objc_msgSend(bundleID, "isEqualToString:", @"com.apple.Preferences"))
  {
    [contextCopy setFilterOutHiddenApps:1];
    [(CSSearchAgent *)selfCopy2 addHiddenAppFiltersToQueryContext:contextCopy];
  }

  bundleIDs5 = [contextCopy bundleIDs];
  if ([bundleIDs5 count])
  {
    bundleIDs6 = [contextCopy bundleIDs];
    v59 = [bundleIDs6 containsObject:@"com.apple.mobileslideshow"];

    if (v59)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  array = [MEMORY[0x277CBEB18] array];
  v61 = array;
  if ((internal & 1) == 0)
  {
    [array addObject:@"_kMDItemUserActivityType != *"];
  }

  if (v26)
  {
    [v61 addObject:@"kMDItemHashtags==*"];
  }

  if (objc_opt_respondsToSelector())
  {
    fileProviderDomainFilterQueries = [(MDIndexer *)selfCopy2->_indexer fileProviderDomainFilterQueries];
    v63 = fileProviderDomainFilterQueries;
    if (fileProviderDomainFilterQueries && [fileProviderDomainFilterQueries count])
    {
      [v61 addObjectsFromArray:v63];
    }
  }

  if ([v61 count])
  {
    filterQueries = [contextCopy filterQueries];
    if (filterQueries)
    {
      filterQueries2 = [contextCopy filterQueries];
      v66 = [filterQueries2 arrayByAddingObjectsFromArray:v61];
      [contextCopy setFilterQueries:v66];
    }

    else
    {
      [contextCopy setFilterQueries:v61];
    }
  }

LABEL_91:
  protectionClasses = [contextCopy protectionClasses];
  bundleIDs7 = [contextCopy bundleIDs];
  v69 = [bundleIDs7 containsObject:@"com.apple.spotlight.events"];
  if ((v69 & 1) == 0)
  {
    bundleIDs8 = [contextCopy bundleIDs];
    if (![bundleIDs8 containsObject:@"com.apple.spotlight.contacts"])
    {
      goto LABEL_99;
    }
  }

  protectionClasses2 = [contextCopy protectionClasses];
  v71 = *MEMORY[0x277CCA1A0];
  if ([protectionClasses2 containsObject:*MEMORY[0x277CCA1A0]])
  {
LABEL_98:

    if (v69)
    {
LABEL_100:
      v75 = v87;
      v74 = v88;
      v76 = v86;
      goto LABEL_101;
    }

LABEL_99:

    goto LABEL_100;
  }

  clientBundleID = [contextCopy clientBundleID];
  if ([clientBundleID hasPrefix:@"com.apple.omniSearch"])
  {
LABEL_97:

    goto LABEL_98;
  }

  clientBundleID2 = [contextCopy clientBundleID];
  if ([clientBundleID2 hasPrefix:@"com.apple.ondeviceeval"])
  {

    goto LABEL_97;
  }

  clientBundleID3 = [contextCopy clientBundleID];
  if ([clientBundleID3 hasPrefix:@"com.apple.intelligenceflow"])
  {
    v84 = 0;
  }

  else
  {
    clientBundleID4 = [contextCopy clientBundleID];
    v84 = [clientBundleID4 hasPrefix:@"com.apple.SpotlightUITests"] ^ 1;
  }

  if (v69)
  {

    v75 = v87;
    v74 = v88;
    if (!v84)
    {
      goto LABEL_110;
    }

LABEL_113:
    v76 = v86;
    if ([protectionClasses count])
    {
      [protectionClasses arrayByAddingObject:v71];
    }

    else
    {
      v98 = v71;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
    }
    v80 = ;
    [contextCopy setProtectionClasses:v80];

    [contextCopy protectionClasses];
    protectionClasses = bundleIDs7 = protectionClasses;
LABEL_101:

    if (!protectionClasses)
    {
      goto LABEL_104;
    }

    goto LABEL_102;
  }

  v75 = v87;
  v74 = v88;
  if (v84)
  {
    goto LABEL_113;
  }

LABEL_110:
  v76 = v86;
  if (!protectionClasses)
  {
    goto LABEL_104;
  }

LABEL_102:
  if (![protectionClasses count])
  {
    protectionClass = [v74 protectionClass];
    v97 = protectionClass;
    v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
    [contextCopy setProtectionClasses:v78];
  }

LABEL_104:
}

- (void)startQuery:(id)query
{
  v150[3] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v4 = xpc_dictionary_get_remote_connection(queryCopy);
  reply = xpc_dictionary_create_reply(queryCopy);
  v6 = reply;
  if (v4 && reply)
  {
    uint64 = [(CSSearchAgent *)self searchConnection:v4];
    val = uint64;
    if (uint64)
    {
      uint64 = xpc_dictionary_get_uint64(queryCopy, "qid");
      v8 = uint64;
    }

    else
    {
      v8 = 0;
    }

    v11 = logForCSLogCategoryQuery(uint64);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v8;
      _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "os_signpost_interval_begin qid=%ld", buf, 0xCu);
    }

    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v145 = *v12;
    v146 = v13;
    v147 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = v8;
    *(v12 + 28) = 102;
    *(v12 + 32) = "csquery_command_start_query";
    v16 = si_tracing_log_span_begin();
    v17 = logForCSLogCategoryQuery(v16);
    v18 = v17;
    if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      if (!v8)
      {
        v10 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      if (os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_231A35000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CSSearchLatency", &unk_231AF625D, buf, 2u);
      }
    }

    string = xpc_dictionary_get_string(queryCopy, "query");
    v20 = string;
    if (!string || !strcmp(string, "false"))
    {
      v10 = 0;
    }

    else
    {
      v21 = xpc_dictionary_get_value(queryCopy, "context");
      v10 = [objc_alloc(MEMORY[0x277CC34A0]) initWithXPCDictionary:v21];

      if (v10)
      {
        bundleID = [val bundleID];
        searchInternal = [val searchInternal];
        playback = [v10 playback];
        v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:v20];
        if (playback)
        {
          if (!searchInternal)
          {
            searchInternal = 0;
            goto LABEL_54;
          }

          clientBundleID = [v10 clientBundleID];
          v24 = clientBundleID;
          if (clientBundleID)
          {
            v25 = clientBundleID;

            bundleID = v25;
          }

          searchInternal = [v10 internal];
LABEL_53:

LABEL_54:
          [v10 setClientBundleID:bundleID];
          [v10 setInternal:searchInternal];
          v32 = v75;
          v33 = [(__CFString *)v32 length];
          v34 = v32;
          if (!v33)
          {

            v34 = @"(true)";
          }

          v67 = v34;

          [(CSSearchAgent *)self _prepareQueryContext:v10 searchConnection:val];
          clientBundleID2 = [v10 clientBundleID];
          v36 = [clientBundleID2 hasPrefix:@"com.apple.omniSearch"];

          if (v36)
          {
            indexer = self->_indexer;
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:v20];
            v144 = 0;
            v143 = 0;
            [(MDIndexer *)indexer processSearchString:v38 intoTrimmedString:&v144 andTokens:&v143];
            v61 = v144;
            v65 = v143;

            if (objc_opt_respondsToSelector())
            {
              [(MDIndexer *)self->_indexer rewriteFirstPassQueryWithQueryString:v67 context:v10 trimmedSearchStringTokens:v65 populateDateSynonyms:1];
            }
          }

          else
          {
            v61 = 0;
            v65 = 0;
          }

          live = [v10 live];
          lowPriority = [v10 lowPriority];
          v63 = [v10 qos];
          v62 = [v10 copy];
          v141[0] = 0;
          v141[1] = v141;
          v141[2] = 0x2020000000;
          v142 = 0;
          v139[0] = 0;
          v139[1] = v139;
          v139[2] = 0x2020000000;
          v140 = 0;
          if ([v10 pommes])
          {
            bundleIDs = [v10 bundleIDs];
            userQuery = [v10 userQuery];
            v40 = objc_opt_respondsToSelector();
            counting = [v10 counting];
            queryEmbedding = [v10 queryEmbedding];
            v69 = [SDPommesFeature usingRewritesForContextBundleIDs:bundleIDs clientBundleID:bundleID userQuery:userQuery indexSupportsRewrites:v40 & 1 isCounting:counting embeddingsEnabled:queryEmbedding != 0];

            v44 = logForCSLogCategoryQuery(v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              rankingType = [v10 rankingType];
              v46 = @"NO";
              if (v69)
              {
                v47 = @"YES";
              }

              else
              {
                v47 = @"NO";
              }

              *buf = 134218754;
              *&buf[4] = v8;
              if (rankingType == 1)
              {
                v48 = @"YES";
              }

              else
              {
                v48 = @"NO";
              }

              *&buf[14] = v47;
              *&buf[12] = 2112;
              *&buf[22] = 2112;
              if (live)
              {
                v46 = @"YES";
              }

              *&buf[24] = v48;
              LOWORD(v150[0]) = 2112;
              *(v150 + 2) = v46;
              _os_log_impl(&dword_231A35000, v44, OS_LOG_TYPE_INFO, "[qid=%ld][rewrite] rewriteAllowed:%@ topHit:%@ live:%@", buf, 0x2Au);
            }
          }

          else
          {
            LOBYTE(v69) = 0;
          }

          v137[0] = 0;
          v137[1] = v137;
          v137[2] = 0x2020000000;
          v138 = 0;
          v135[0] = 0;
          v135[1] = v135;
          v135[2] = 0x2020000000;
          v136 = 0;
          v133[0] = 0;
          v133[1] = v133;
          v133[2] = 0x2020000000;
          v134 = 0;
          v131[0] = 0;
          v131[1] = v131;
          v131[2] = 0x2020000000;
          v132 = 0;
          v129[0] = 0;
          v129[1] = v129;
          v129[2] = 0x2020000000;
          v130 = 0;
          objc_initWeak(&location, val);
          v49 = *(v12 + 16);
          *buf = *v12;
          *&buf[16] = v49;
          v150[0] = *(v12 + 32);
          v106[0] = MEMORY[0x277D85DD0];
          v106[1] = 3221225472;
          v106[2] = __28__CSSearchAgent_startQuery___block_invoke;
          v106[3] = &unk_278937528;
          v119 = *buf;
          v120 = v49;
          v121 = v150[0];
          v124 = searchInternal;
          objc_copyWeak(&v118, &location);
          v10 = v10;
          v125 = v69;
          v107 = v10;
          v111 = v141;
          v112 = v137;
          v113 = v133;
          v126 = live;
          v114 = v135;
          v115 = v129;
          v122 = v8;
          v116 = v131;
          v60 = bundleID;
          v108 = v60;
          v50 = v4;
          v109 = v50;
          selfCopy = self;
          v127 = lowPriority;
          v123 = v63;
          v117 = v139;
          v51 = [v106 copy];
          objc_initWeak(&from, val);
          v95[0] = MEMORY[0x277D85DD0];
          v95[1] = 3221225472;
          v95[2] = __28__CSSearchAgent_startQuery___block_invoke_172;
          v95[3] = &unk_278937550;
          v100 = *buf;
          v101 = *&buf[16];
          v102 = v150[0];
          v104 = live;
          v52 = v51;
          v98 = v52;
          v96 = v6;
          v103 = v8;
          v97 = v50;
          objc_copyWeak(&v99, &from);
          v53 = MEMORY[0x2383760E0](v95);
          v74 = self->_indexer;
          v80[0] = MEMORY[0x277D85DD0];
          v80[1] = 3221225472;
          v80[2] = __28__CSSearchAgent_startQuery___block_invoke_2_175;
          v80[3] = &unk_2789375F0;
          objc_copyWeak(&v88, &from);
          v89 = *buf;
          v90 = *&buf[16];
          v91 = v150[0];
          v92 = v8;
          v86 = v137;
          v93 = v69;
          v72 = v53;
          v84 = v72;
          v87 = v141;
          v85 = v52;
          v80[4] = self;
          v81 = v67;
          v70 = v62;
          v82 = v70;
          v94 = live;
          v54 = queryCopy;
          v83 = v54;
          v77 = v81;
          v55 = v85;
          v56 = [(MDIndexer *)v74 taskForQueryWithQueryString:v81 queryContext:v10 eventHandler:0 resultsHandler:v85 completionHandler:v80];
          if (v56)
          {
            [val setQueryTask:v56 forQueryID:{v8, v60, v61}];
            [(MDIndexer *)self->_indexer startQueryTask:v56];
          }

          else
          {
            v57 = logForCSLogCategoryDefault(0);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v58 = xpc_dictionary_get_uint64(v54, "qid");
              [(CSSearchAgent *)v54 startQuery:v148, v58, v57];
            }
          }

          objc_destroyWeak(&v88);
          objc_destroyWeak(&v99);

          objc_destroyWeak(&from);
          objc_destroyWeak(&v118);
          objc_destroyWeak(&location);
          _Block_object_dispose(v129, 8);
          _Block_object_dispose(v131, 8);
          _Block_object_dispose(v133, 8);
          _Block_object_dispose(v135, 8);
          _Block_object_dispose(v137, 8);
          _Block_object_dispose(v139, 8);
          _Block_object_dispose(v141, 8);

          if (v56)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        [val overrideMailHitCounts:v10];
        if (![MEMORY[0x277CC3510] journalEnabled])
        {
          goto LABEL_54;
        }

        v24 = [MEMORY[0x277CC3510] copyPlistFromXPCObject:queryCopy];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_53;
        }

        if (bundleID)
        {
          v27 = 1;
        }

        else
        {
          v27 = searchInternal;
        }

        if (v27 != 1)
        {
LABEL_52:
          v30 = MEMORY[0x277CC3510];
          pid = xpc_connection_get_pid(v4);
          [v30 journalDictionary:v24 toFolderPath:"/private/tmp" forPID:pid withLabel:"query" andID:{xpc_dictionary_get_uint64(queryCopy, "qid")}];
          goto LABEL_53;
        }

        v68 = [v24 objectForKeyedSubscript:@"context"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_51;
        }

        if (bundleID)
        {
          [v68 setObject:bundleID forKeyedSubscript:@"cbi"];
        }

        if (!searchInternal)
        {
LABEL_51:

          goto LABEL_52;
        }

        v66 = [v68 objectForKeyedSubscript:@"f"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unsignedIntValue = [v66 unsignedIntValue];
          if (unsignedIntValue)
          {
            goto LABEL_50;
          }
        }

        else
        {
          unsignedIntValue = 0;
        }

        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:unsignedIntValue | 1u];
        [v68 setObject:v29 forKeyedSubscript:@"f"];

LABEL_50:
        goto LABEL_51;
      }
    }

LABEL_30:
    xpc_dictionary_set_uint64(v6, "qid", v8);
    csquery_xpc_dictionary_encode_status();
    xpc_connection_send_message(v4, v6);
LABEL_31:
    si_tracing_log_span_end();
    v26 = v146;
    *v12 = v145;
    *(v12 + 16) = v26;
    *(v12 + 32) = v147;

LABEL_32:
    goto LABEL_33;
  }

  if (!v4)
  {
    v9 = logForCSLogCategoryDefault(reply);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CSSearchAgent startQuery:queryCopy];
    }
  }

  if (!v6)
  {
    v10 = logForCSLogCategoryDefault(reply);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CSSearchAgent startQuery:queryCopy];
    }

    goto LABEL_32;
  }

LABEL_33:
}

void __28__CSSearchAgent_startQuery___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v89 = *MEMORY[0x277D85DE8];
  v70 = a6;
  v10 = (*MEMORY[0x277D286C8])();
  v11 = *(v10 + 16);
  v85 = *v10;
  v86 = v11;
  v87 = *(v10 + 32);
  v12 = *(a1 + 144);
  *v10 = *(a1 + 128);
  *(v10 + 16) = v12;
  *(v10 + 32) = *(a1 + 160);
  v13 = *(a1 + 144);
  v82 = *(a1 + 128);
  v83 = v13;
  v84 = *(a1 + 160);
  v14 = *v10;
  spanid = si_tracing_calc_next_spanid();
  v16 = *(v10 + 8);
  *v10 = v14;
  *(v10 + 8) = spanid;
  *(v10 + 16) = v16;
  *(v10 + 28) = 102;
  *(v10 + 32) = "resultsHandler";
  si_tracing_log_span_begin();
  v17 = v70;
  if (!*(a1 + 180))
  {
    v17 = 0;
  }

  v68 = v17;
  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v69 = WeakRetained;
  v19 = 0;
  if (a2 > 6)
  {
    if (a2 > 8)
    {
      if (a2 == 9)
      {
        if ((*(*(*(a1 + 104) + 8) + 24) & 1) == 0)
        {
          v28 = [WeakRetained queryTask:*(a1 + 168)];
          [v28 addMatchInfo:a5];
        }

        goto LABEL_38;
      }

      if (a2 == 10)
      {
        v27 = 0;
        v26 = 0;
        v20 = 0;
        goto LABEL_72;
      }

      v20 = 0;
      if (a2 != 11)
      {
        goto LABEL_107;
      }

      v20 = 0;
      v19 = 0;
LABEL_52:
      v27 = 0;
      goto LABEL_53;
    }

    if (a2 == 7)
    {
      v20 = 0;
      v19 = 0;
      v26 = 0;
      v27 = 1;
      goto LABEL_72;
    }

    if (a5)
    {
      v22 = _MDPlistBytesCopyPlistAtIndex();
      v19 = v22;
      if (v22)
      {
        v23 = [v22 count] != 0;
        goto LABEL_45;
      }
    }

    else
    {
      v19 = 0;
    }

    v23 = 0;
LABEL_45:
    *(*(*(a1 + 88) + 8) + 24) = v23;
    v29 = *(*(a1 + 72) + 8);
    if (*(v29 + 24))
    {
      v30 = 1;
    }

    else
    {
      v30 = *(*(*(a1 + 88) + 8) + 24);
    }

    *(v29 + 24) = v30 & 1;
    if (*(a1 + 181) == 1)
    {
      v20 = 0;
      if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_52;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      goto LABEL_25;
    }

    v20 = 0;
    if (a2 != 1)
    {
      goto LABEL_107;
    }

    if (*(a1 + 181) != 1 || (*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || *(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v21 = 1;
      *(*(*(a1 + 96) + 8) + 24) = 1;
      if ((*(a1 + 181) & 1) == 0)
      {
        v20 = 0;
LABEL_40:
        v19 = 0;
        v27 = 0;
        v26 = 0;
        goto LABEL_72;
      }
    }

    else
    {
      v21 = 0;
    }

    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v31 = logForCSLogCategoryQuery(WeakRetained);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        __28__CSSearchAgent_startQuery___block_invoke_cold_1();
      }

LABEL_67:

      v20 = 0;
      if ((v21 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_70;
    }

LABEL_69:
    v20 = 0;
    if (!v21)
    {
      goto LABEL_68;
    }

    goto LABEL_70;
  }

  if (a2 == 2)
  {
    if (v70)
    {
      if ([*(a1 + 32) priorityIndexQuery])
      {
        v20 = 0;
        if (([v70 isEqual:@"Priority"] & 1) == 0)
        {
          goto LABEL_68;
        }

LABEL_70:
        v27 = 0;
        v26 = 0;
        goto LABEL_71;
      }

LABEL_38:
      v19 = 0;
      v20 = 0;
      goto LABEL_107;
    }

    if (*(a1 + 181) != 1 || (*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || *(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v21 = 1;
      *(*(*(a1 + 80) + 8) + 24) = 1;
    }

    else
    {
      v63 = [WeakRetained queryTask:*(a1 + 168)];
      [v63 cancel];

      v21 = 0;
    }

    if (*(a1 + 181) == 1 && *(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v31 = logForCSLogCategoryQuery(WeakRetained);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        __28__CSSearchAgent_startQuery___block_invoke_cold_2();
      }

      goto LABEL_67;
    }

    goto LABEL_69;
  }

  if (a2 == 5)
  {
    *v88 = a3;
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:v88 length:8];
    goto LABEL_40;
  }

  v20 = 0;
  if (a2 != 6)
  {
    goto LABEL_107;
  }

LABEL_25:
  v24 = *(*(a1 + 72) + 8);
  if (*(v24 + 24))
  {
    v25 = 1;
  }

  else
  {
    v25 = _MDStoreOIDArrayGetVectorCount() != 0;
    v24 = *(*(a1 + 72) + 8);
  }

  *(v24 + 24) = v25;
  v27 = *(a1 + 182);
  if (*(a1 + 181) != 1)
  {
    v20 = 0;
    v19 = 0;
LABEL_53:
    v26 = 1;
    goto LABEL_72;
  }

  v20 = 0;
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
LABEL_68:
    v19 = 0;
    goto LABEL_107;
  }

  v26 = 1;
LABEL_71:
  v19 = 0;
LABEL_72:
  if ((*(*(*(a1 + 104) + 8) + 24) & 1) != 0 || ([v69 queryTask:*(a1 + 168)], (v32 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 104) + 8) + 24) = 1;
      goto LABEL_107;
    }

    v32 = 0;
  }

  v33 = xpc_dictionary_create(0, 0, 0);
  v67 = (a1 + 168);
  xpc_dictionary_set_uint64(v33, "qid", *(a1 + 168));
  xpc_dictionary_set_uint64(v33, "t", a2);
  if (*(*(*(a1 + 96) + 8) + 24))
  {
    v35 = logForCSLogCategoryQuery(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      __28__CSSearchAgent_startQuery___block_invoke_cold_3();
    }
  }

  else
  {
    if (v20)
    {
      v36 = v20;
      xpc_dictionary_set_data(v33, "rd", [v20 bytes], objc_msgSend(v20, "length"));
    }

    else if (v26)
    {
      v37 = logForCSLogCategoryQuery([MEMORY[0x277CC3510] dictionary:v33 setPlistBytes:a5 forKey:"rd" sizeKey:"rdl"]);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v64 = [v69 outBatchCount];
        v65 = *(a1 + 40);
        v66 = *(a1 + 168);
        *v88 = 67110146;
        *&v88[4] = a2;
        *&v88[8] = 1024;
        *&v88[10] = v64;
        *&v88[14] = 2112;
        *&v88[16] = v65;
        *&v88[24] = 2112;
        *&v88[26] = v70;
        *&v88[34] = 2048;
        *&v88[36] = v66;
        _os_log_debug_impl(&dword_231A35000, v37, OS_LOG_TYPE_DEBUG, "Found query results, type:%d outBatchCount:%u, clientBundleID:%@, dataclass:%@ qid:%ld", v88, 0x2Cu);
      }
    }

    if (v27)
    {
      VectorCount = _MDStoreOIDArrayGetVectorCount();
      Vector = _MDStoreOIDArrayGetVector();
      xpc_dictionary_set_data(v33, "od", Vector, 8 * VectorCount);
      v41 = logForCSLogCategoryQuery(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v60 = [v69 outBatchCount];
        v61 = *(a1 + 40);
        v62 = *(a1 + 168);
        *v88 = 67110146;
        *&v88[4] = v60;
        *&v88[8] = 2048;
        *&v88[10] = 8 * VectorCount;
        *&v88[18] = 2112;
        *&v88[20] = v61;
        *&v88[28] = 2112;
        *&v88[30] = v70;
        *&v88[38] = 2048;
        *&v88[40] = v62;
        _os_log_debug_impl(&dword_231A35000, v41, OS_LOG_TYPE_DEBUG, "Remove query results, outBatchCount:%u, size:%ld, clientBundleID:%@, dataclass:%@ qid: %ld", v88, 0x30u);
      }
    }

    if (v68)
    {
      v42 = v68;
      v43 = xpc_string_create([v68 UTF8String]);
      xpc_dictionary_set_value(v33, "pc", v43);
    }

    v35 = logForCSLogCategoryQuery(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v58 = *(a1 + 40);
      v59 = *(a1 + 168);
      *v88 = 138412802;
      *&v88[4] = v58;
      *&v88[12] = 2112;
      *&v88[14] = v70;
      *&v88[22] = 2048;
      *&v88[24] = v59;
      _os_log_debug_impl(&dword_231A35000, v35, OS_LOG_TYPE_DEBUG, "Found query results clientBundleID:%@, dataclass:%@ qid:%ld", v88, 0x20u);
    }
  }

  v44 = *(v10 + 16);
  *v88 = *v10;
  *&v88[16] = v44;
  *&v88[32] = *(v10 + 32);
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __28__CSSearchAgent_startQuery___block_invoke_168;
  v72[3] = &unk_278937500;
  v73 = v69;
  v45 = v32;
  v46 = *(a1 + 168);
  v74 = v45;
  v78 = v46;
  v75 = *(a1 + 48);
  v47 = v33;
  v48 = *(a1 + 56);
  v76 = v47;
  v77 = v48;
  v79 = *v88;
  v80 = *&v88[16];
  v81 = *&v88[32];
  v49 = MEMORY[0x2383760E0](v72);
  if (*(a1 + 182) == 1 && *(*(*(a1 + 80) + 8) + 24) == 1)
  {
    if (*(a1 + 183))
    {
      v50 = QOS_CLASS_BACKGROUND;
    }

    else
    {
      v50 = *(a1 + 176);
    }

    v51 = [*(a1 + 56) queue];
    v52 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v50, 0, v49);
    tracing_dispatch_async();
  }

  else
  {
    v51 = [*(a1 + 56) queue];
    v52 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, *(a1 + 176), 0, v49);
    tracing_dispatch_async();
  }

  if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
  {
    v54 = logForCSLogCategoryQuery(v53);
    v55 = v54;
    v56 = *v67;
    if (*v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v55, OS_SIGNPOST_INTERVAL_END, v56, "CSSearchLatency", &unk_231AF625D, buf, 2u);
    }

    *(*(*(a1 + 112) + 8) + 24) = 1;
  }

LABEL_107:
  si_tracing_log_span_end();
  v57 = v86;
  *v10 = v85;
  *(v10 + 16) = v57;
  *(v10 + 32) = v87;
}

void __28__CSSearchAgent_startQuery___block_invoke_168(uint64_t a1)
{
  [*(a1 + 32) _willSendResultsBatch:*(a1 + 40) qid:*(a1 + 72)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = [*(a1 + 64) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v5 = *(a1 + 96);
  v8 = *(a1 + 80);
  v6[2] = __28__CSSearchAgent_startQuery___block_invoke_2;
  v6[3] = &unk_2789374D8;
  v9 = v5;
  v10 = *(a1 + 112);
  v7 = *(a1 + 32);
  xpc_connection_send_message_with_reply(v2, v3, v4, v6);
}

void __28__CSSearchAgent_startQuery___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 56);
  *v3 = *(a1 + 40);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 72);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "received XPC reply";
  si_tracing_log_span_begin();
  [*(a1 + 32) _didReceiveResultsBatchCompletion];
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

void __28__CSSearchAgent_startQuery___block_invoke_172(uint64_t a1, int a2, void *a3)
{
  v11 = a3;
  v5 = (*MEMORY[0x277D286C8])();
  v12 = *v5;
  v13 = *(v5 + 16);
  v14 = *(v5 + 32);
  v6 = *(a1 + 80);
  *v5 = *(a1 + 64);
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a1 + 96);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "completionHandler";
  si_tracing_log_span_begin();
  if (a2)
  {
    if (*(a1 + 112) == 1)
    {
      (*(*(a1 + 48) + 16))();
    }

    (*(*(a1 + 48) + 16))();
  }

  xpc_dictionary_set_uint64(*(a1 + 32), "qid", *(a1 + 104));
  csquery_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setQueryTask:0 forQueryID:*(a1 + 104)];

  si_tracing_log_span_end();
  *v5 = v12;
  *(v5 + 16) = v13;
  *(v5 + 32) = v14;
}

void __28__CSSearchAgent_startQuery___block_invoke_2_175(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v5 = (*MEMORY[0x277D286C8])();
  v6 = *(v5 + 16);
  v63 = *v5;
  v64 = v6;
  v65 = *(v5 + 32);
  v7 = *(a1 + 120);
  *v5 = *(a1 + 104);
  *(v5 + 16) = v7;
  *(v5 + 32) = *(a1 + 136);
  v8 = *(a1 + 120);
  v60 = *(a1 + 104);
  v61 = v8;
  v62 = *(a1 + 136);
  v9 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v11 = *(v5 + 8);
  *v5 = v9;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v11;
  *(v5 + 28) = 102;
  *(v5 + 32) = "query task completion handler";
  si_tracing_log_span_begin();
  v12 = [WeakRetained queryTask:*(a1 + 144)];
  v13 = v12;
  if (v12 && !((v3 != 0) | [v12 wasCanceledByClient] & 1 | *(*(*(a1 + 80) + 8) + 24) & 1) && (*(a1 + 152) & 1) != 0)
  {
    v14 = (*(*(a1 + 72) + 16))();
    v15 = logForCSLogCategoryQuery(v14);
    v37 = v13;
    v34 = WeakRetained;
    v35 = v3;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 144);
      *buf = 134217984;
      v67 = v16;
      _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_INFO, "[qid=%ld][rewrite] Requesting rewrite candidates", buf, 0xCu);
    }

    v36 = a1;

    *(*(*(a1 + 88) + 8) + 24) = 1;
    v17 = [MEMORY[0x277CBEB38] dictionary];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v18 = [v13 matchInfo];
    v19 = [v18 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v19)
    {
      v20 = *v57;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v57 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v56 + 1) + 8 * i);
          _MDPlistGetRootPlistObjectFromPlist();
          v51 = MEMORY[0x277D85DD0];
          v52 = 3221225472;
          v53 = __28__CSSearchAgent_startQuery___block_invoke_177;
          v54 = &unk_278937578;
          v55 = v17;
          _MDPlistDictionaryIterate();
          CFRelease(v22);
        }

        v19 = [v18 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v19);
    }

    v23 = *(v36 + 40);
    v24 = *(*(v36 + 32) + 56);
    v25 = *(v36 + 48);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v26 = *(v5 + 16);
    v46 = *v5;
    v47 = v26;
    v38[2] = __28__CSSearchAgent_startQuery___block_invoke_2_179;
    v38[3] = &unk_2789375C8;
    v48 = *(v5 + 32);
    v39 = v37;
    v43 = *(v36 + 64);
    v40 = 0;
    v50 = *(v36 + 153);
    v27 = *(v36 + 40);
    v28 = *(v36 + 48);
    v49 = *(v36 + 144);
    v33 = *(v36 + 32);
    v44 = *(v36 + 72);
    v29 = *(v36 + 56);
    *&v30 = v33;
    *(&v30 + 1) = v29;
    *&v31 = v27;
    *(&v31 + 1) = v28;
    v41 = v31;
    v42 = v30;
    objc_copyWeak(&v45, (v36 + 96));
    [v24 rewriteQueryWithQueryString:v23 context:v25 matchInfo:v17 rewriteHandler:v38];
    objc_destroyWeak(&v45);

    WeakRetained = v34;
    v3 = v35;
    v13 = v37;
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  si_tracing_log_span_end();
  v32 = v64;
  *v5 = v63;
  *(v5 + 16) = v32;
  *(v5 + 32) = v65;
}

void __28__CSSearchAgent_startQuery___block_invoke_177(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v14 = *a4;
  v15 = *(a4 + 2);
  IntValue = _MDPlistNumberGetIntValue();
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{a2, v14, v15}];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 longLongValue];

  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v10 + IntValue];
  v12 = *(a1 + 32);
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  [v12 setObject:v11 forKeyedSubscript:v13];
}

void __28__CSSearchAgent_startQuery___block_invoke_2_179(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = (*MEMORY[0x277D286C8])();
  v8 = *(v7 + 16);
  v42 = *v7;
  v43 = v8;
  v44 = *(v7 + 32);
  v9 = *(a1 + 120);
  *v7 = *(a1 + 104);
  *(v7 + 16) = v9;
  *(v7 + 32) = *(a1 + 136);
  v10 = *(a1 + 120);
  v39 = *(a1 + 104);
  v40 = v10;
  v41 = *(a1 + 136);
  v11 = *v7;
  spanid = si_tracing_calc_next_spanid();
  v13 = *(v7 + 8);
  *v7 = v11;
  *(v7 + 8) = spanid;
  *(v7 + 16) = v13;
  *(v7 + 28) = 102;
  *(v7 + 32) = "rewriteHandler";
  si_tracing_log_span_begin();
  if (![*(a1 + 32) wasCanceledByClient])
  {
    v14 = [v5 firstObject];
    v15 = v14;
    if (v6 || !v14)
    {
      if ((*(a1 + 152) & 1) == 0)
      {
        (*(*(a1 + 80) + 16))();
LABEL_16:

        goto LABEL_17;
      }

      v16 = [objc_alloc(MEMORY[0x277D286A8]) initWithSearchQueryString:*(a1 + 48) searchQueryContext:*(a1 + 56) score:0.0];

      v15 = v16;
    }

    v17 = logForCSLogCategoryQuery(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 144);
      *buf = 134218240;
      *&buf[4] = v18;
      *&buf[12] = 2048;
      *&buf[14] = [v5 count];
      _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_INFO, "[qid=%ld][rewrite] Found %lu rewrite candidate", buf, 0x16u);
    }

    v19 = *(v7 + 16);
    *buf = *v7;
    *&buf[16] = v19;
    v47 = *(v7 + 32);
    v20 = *(*(a1 + 64) + 56);
    v21 = [v15 queryString];
    v22 = [v15 searchQueryContext];
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v36 = *buf;
    v33 = __28__CSSearchAgent_startQuery___block_invoke_182;
    v34 = &unk_2789375A0;
    v37 = *&buf[16];
    v38 = v47;
    v23 = *(a1 + 88);
    v35 = *(a1 + 80);
    v24 = [v20 taskForQueryWithQueryString:v21 queryContext:v22 eventHandler:0 resultsHandler:v23 completionHandler:&v31];

    if (v24)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 96));
      [WeakRetained setQueryTask:v24 forQueryID:{*(a1 + 144), v31, v32, v33, v34}];

      [*(*(a1 + 64) + 56) startQueryTask:v24];
    }

    else
    {
      v27 = logForCSLogCategoryDefault(v25);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        uint64 = xpc_dictionary_get_uint64(*(a1 + 72), "qid");
        __28__CSSearchAgent_startQuery___block_invoke_2_179_cold_1((a1 + 72), v45, uint64, v27);
      }

      (*(*(a1 + 80) + 16))(*(a1 + 80), 1, 0, v29);
    }

    goto LABEL_16;
  }

  (*(*(a1 + 80) + 16))();
LABEL_17:
  si_tracing_log_span_end();
  v30 = v43;
  *v7 = v42;
  *(v7 + 16) = v30;
  *(v7 + 32) = v44;
}

void __28__CSSearchAgent_startQuery___block_invoke_182(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *(a1 + 56);
  *v3 = *(a1 + 40);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 72);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "rewrite query completion handler";
  si_tracing_log_span_begin();
  (*(*(a1 + 32) + 16))();
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (void)cancelSimpleQuery:(id)query
{
  original = query;
  v4 = xpc_dictionary_get_remote_connection(original);
  reply = xpc_dictionary_create_reply(original);
  v6 = reply;
  if (v4 && reply)
  {
    v7 = [(CSSearchAgent *)self searchConnection:v4];
    if (v7)
    {
      uint64 = xpc_dictionary_get_uint64(original, "qid");
      [v7 cancelQueryTask:uint64];
    }

    else
    {
      uint64 = 0;
    }

    xpc_dictionary_set_uint64(v6, "qid", uint64);
    csquery_xpc_dictionary_encode_status();
    xpc_connection_send_message(v4, v6);
  }
}

- (void)startSimpleQuery:(id)query
{
  queryCopy = query;
  v5 = xpc_dictionary_get_remote_connection(queryCopy);
  reply = xpc_dictionary_create_reply(queryCopy);
  v7 = reply;
  if (v5 && reply)
  {
    v8 = [(CSSearchAgent *)self searchConnection:v5];
    if (v8)
    {
      uint64 = xpc_dictionary_get_uint64(queryCopy, "qid");
    }

    else
    {
      uint64 = 0;
    }

    v10 = (*MEMORY[0x277D286C8])();
    v11 = *(v10 + 16);
    v50 = *v10;
    v51 = v11;
    v52 = *(v10 + 32);
    v12 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v10 = v12;
    *(v10 + 8) = spanid;
    *(v10 + 16) = 0;
    *(v10 + 24) = uint64;
    *(v10 + 28) = 102;
    *(v10 + 32) = "CSSearchAgent::startSimpleQuery";
    si_tracing_log_span_begin();
    if (uint64)
    {
      string = xpc_dictionary_get_string(queryCopy, "query");
      v15 = string;
      if (!string || !strcmp(string, "false"))
      {
        v17 = 0;
      }

      else
      {
        v16 = xpc_dictionary_get_value(queryCopy, "context");
        v17 = [objc_alloc(MEMORY[0x277CC34A0]) initWithXPCDictionary:v16];

        if (v17)
        {
          bundleID = [v8 bundleID];
          searchInternal = [v8 searchInternal];
          [v17 setMaxCount:1];
          [v17 setClientBundleID:bundleID];
          [v17 setInternal:searchInternal];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
          if (![(__CFString *)v19 length])
          {

            v19 = @"true";
          }

          [(CSSearchAgent *)self _prepareQueryContext:v17 searchConnection:v8];
          v48[0] = 0;
          v48[1] = v48;
          v48[2] = 0x2020000000;
          v49 = 0;
          objc_initWeak(&location, v8);
          v20 = *(v10 + 16);
          v44 = *v10;
          v45 = v20;
          v46 = *(v10 + 32);
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __34__CSSearchAgent_startSimpleQuery___block_invoke;
          v38[3] = &unk_278937618;
          v40 = v44;
          v41 = v20;
          v42 = v46;
          v38[4] = v48;
          objc_copyWeak(&v39, &location);
          v43 = uint64;
          v21 = [v38 copy];
          objc_initWeak(&from, v8);
          indexer = self->_indexer;
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __34__CSSearchAgent_startSimpleQuery___block_invoke_2;
          v28[3] = &unk_278937640;
          v33 = v44;
          v34 = v45;
          v35 = v46;
          v36 = uint64;
          v29 = v7;
          v31 = v48;
          v30 = v5;
          objc_copyWeak(&v32, &from);
          v22 = indexer;
          v26 = v21;
          v23 = [(MDIndexer *)v22 taskForQueryWithQueryString:v19 queryContext:v17 eventHandler:0 resultsHandler:v21 completionHandler:v28];
          if (v23)
          {
            [v8 setQueryTask:v23 forQueryID:uint64];
            [(MDIndexer *)self->_indexer startQueryTask:v23];
          }

          objc_destroyWeak(&v32);
          objc_destroyWeak(&from);

          objc_destroyWeak(&v39);
          objc_destroyWeak(&location);
          _Block_object_dispose(v48, 8);

          if (v23)
          {
            goto LABEL_17;
          }
        }
      }
    }

    else
    {
      v17 = 0;
    }

    xpc_dictionary_set_uint64(v7, "qid", uint64);
    csquery_xpc_dictionary_encode_status();
    xpc_connection_send_message(v5, v7);
LABEL_17:
    si_tracing_log_span_end();
    v24 = v51;
    *v10 = v50;
    *(v10 + 16) = v24;
    *(v10 + 32) = v52;
  }
}

void __34__CSSearchAgent_startSimpleQuery___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v15 = a6;
  v8 = (*MEMORY[0x277D286C8])();
  v16 = *v8;
  v17 = *(v8 + 16);
  v18 = *(v8 + 32);
  v9 = *(a1 + 64);
  *v8 = *(a1 + 48);
  *(v8 + 16) = v9;
  *(v8 + 32) = *(a1 + 80);
  v10 = *v8;
  spanid = si_tracing_calc_next_spanid();
  v12 = *(v8 + 8);
  *v8 = v10;
  *(v8 + 8) = spanid;
  *(v8 + 16) = v12;
  *(v8 + 28) = 102;
  *(v8 + 32) = "resultsHandler";
  si_tracing_log_span_begin();
  if ((!a2 || a2 == 6) && _MDStoreOIDArrayGetVectorCount() >= 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v14 = [WeakRetained queryTask:*(a1 + 88)];

    [v14 cancel];
  }

  si_tracing_log_span_end();
  *v8 = v16;
  *(v8 + 16) = v17;
  *(v8 + 32) = v18;
}

void __34__CSSearchAgent_startSimpleQuery___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v10 = *v3;
  v11 = *(v3 + 16);
  v12 = *(v3 + 32);
  v4 = *(a1 + 80);
  *v3 = *(a1 + 64);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 96);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completionHandler";
  si_tracing_log_span_begin();
  csquery_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "qid", *(a1 + 104));
  xpc_dictionary_set_uint64(*(a1 + 32), "t", 1uLL);
  xpc_dictionary_set_BOOL(*(a1 + 32), "exists", *(*(*(a1 + 48) + 8) + 24));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setQueryTask:0 forQueryID:*(a1 + 104)];

  si_tracing_log_span_end();
  *v3 = v10;
  *(v3 + 16) = v11;
  *(v3 + 32) = v12;
}

- (void)handleEngagement:(id)engagement forConnection:(id)connection
{
  engagementCopy = engagement;
  v6 = [(CSSearchAgent *)self searchConnection:connection];
  searchInternal = [v6 searchInternal];
  bundleID = [v6 bundleID];
  v9 = [MEMORY[0x277CC3510] copyNSStringForKey:"qenb" fromXPCDictionary:engagementCopy];
  v10 = v9;
  if (searchInternal)
  {
    goto LABEL_5;
  }

  if (!v9 || [bundleID isEqual:v9])
  {
    v11 = bundleID;

    v10 = v11;
LABEL_5:
    v12 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:engagementCopy];
    v13 = [MEMORY[0x277CC3510] copyNSStringForKey:"userquery" fromXPCDictionary:engagementCopy];
    v14 = [MEMORY[0x277CC3510] copyNSStringForKey:"qenr" fromXPCDictionary:engagementCopy];
    indexer = self->_indexer;
    date = [MEMORY[0x277CBEAA8] date];
    [(MDIndexer *)indexer recordEngagementForBundleID:v10 uniqueIdentifier:v14 protectionClass:v12 userQuery:v13 date:date];
  }
}

- (BOOL)handleCommand:(const char *)command info:(id)info connection:(id)connection
{
  v35 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  connectionCopy = connection;
  v10 = logForCSLogCategoryDefault(connectionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v33 = 136315394;
    *&v33[4] = command;
    *&v33[12] = 1024;
    *&v33[14] = xpc_connection_get_pid(connectionCopy);
    _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "search %s pid: %d", v33, 0x12u);
  }

  if (!strcmp(command, "startQuery"))
  {
    [(CSSearchAgent *)self startQuery:infoCopy];
LABEL_19:
    v11 = 1;
    goto LABEL_20;
  }

  if (!strcmp(command, "cancelQuery"))
  {
    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    *v33 = *v12;
    *&v33[16] = v13;
    v34 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = -1;
    *(v12 + 28) = 102;
    *(v12 + 32) = "csquery_command_cancel_query";
    si_tracing_log_span_begin();
    [(CSSearchAgent *)self cancelQuery:infoCopy];
    si_tracing_log_span_end();
LABEL_18:
    v31 = *&v33[16];
    *v12 = *v33;
    *(v12 + 16) = v31;
    *(v12 + 32) = v34;
    goto LABEL_19;
  }

  if (!strcmp(command, "pollResults"))
  {
    v12 = (*MEMORY[0x277D286C8])();
    v16 = *(v12 + 16);
    *v33 = *v12;
    *&v33[16] = v16;
    v34 = *(v12 + 32);
    v17 = si_tracing_calc_traceid();
    v18 = si_tracing_calc_next_spanid();
    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = 0;
    *(v12 + 24) = -1;
    *(v12 + 28) = 102;
    *(v12 + 32) = "csquery_command_poll_results";
    si_tracing_log_span_begin();
    [(CSSearchAgent *)self pollResults:infoCopy];
    si_tracing_log_span_end();
    goto LABEL_18;
  }

  if (!strcmp(command, "simpleQuery"))
  {
    v12 = (*MEMORY[0x277D286C8])();
    v19 = *(v12 + 16);
    *v33 = *v12;
    *&v33[16] = v19;
    v34 = *(v12 + 32);
    v20 = si_tracing_calc_traceid();
    v21 = si_tracing_calc_next_spanid();
    *v12 = v20;
    *(v12 + 8) = v21;
    *(v12 + 16) = 0;
    *(v12 + 24) = -1;
    *(v12 + 28) = 102;
    *(v12 + 32) = "csquery_command_start_simple_query";
    si_tracing_log_span_begin();
    [(CSSearchAgent *)self startSimpleQuery:infoCopy];
    si_tracing_log_span_end();
    goto LABEL_18;
  }

  if (!strcmp(command, "simpleCancel"))
  {
    v12 = (*MEMORY[0x277D286C8])();
    v22 = *(v12 + 16);
    *v33 = *v12;
    *&v33[16] = v22;
    v34 = *(v12 + 32);
    v23 = si_tracing_calc_traceid();
    v24 = si_tracing_calc_next_spanid();
    *v12 = v23;
    *(v12 + 8) = v24;
    *(v12 + 16) = 0;
    *(v12 + 24) = -1;
    *(v12 + 28) = 102;
    *(v12 + 32) = "csquery_command_cancel_simple_query";
    si_tracing_log_span_begin();
    [(CSSearchAgent *)self cancelSimpleQuery:infoCopy];
    si_tracing_log_span_end();
    goto LABEL_18;
  }

  if (!strcmp(command, "userEngaged"))
  {
    v12 = (*MEMORY[0x277D286C8])();
    v25 = *(v12 + 16);
    *v33 = *v12;
    *&v33[16] = v25;
    v34 = *(v12 + 32);
    v26 = si_tracing_calc_traceid();
    v27 = si_tracing_calc_next_spanid();
    *v12 = v26;
    *(v12 + 8) = v27;
    *(v12 + 16) = 0;
    *(v12 + 24) = -1;
    *(v12 + 28) = 102;
    *(v12 + 32) = "csquery_command_user_engaged";
    si_tracing_log_span_begin();
    [(CSSearchAgent *)self handleEngagement:infoCopy forConnection:connectionCopy];
    si_tracing_log_span_end();
    goto LABEL_18;
  }

  if (!strcmp(command, "preheat"))
  {
    v12 = (*MEMORY[0x277D286C8])();
    v28 = *(v12 + 16);
    *v33 = *v12;
    *&v33[16] = v28;
    v34 = *(v12 + 32);
    v29 = si_tracing_calc_traceid();
    v30 = si_tracing_calc_next_spanid();
    *v12 = v29;
    *(v12 + 8) = v30;
    *(v12 + 16) = 0;
    *(v12 + 24) = -1;
    *(v12 + 28) = 102;
    *(v12 + 32) = "csquery_command_preheat";
    si_tracing_log_span_begin();
    [(CSSearchAgent *)self preheat:infoCopy];
    si_tracing_log_span_end();
    goto LABEL_18;
  }

  v11 = 0;
LABEL_20:

  return v11;
}

- (void)addHiddenAppFiltersToQueryContext:(id)context
{
  v91 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v68 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v65 = contextCopy;
  disableBundles = [contextCopy disableBundles];
  v6 = [disableBundles countByEnumeratingWithState:&v77 objects:v87 count:16];
  v7 = v6;
  if (v6)
  {
    v8 = *v78;
    do
    {
      v9 = 0;
      do
      {
        if (*v78 != v8)
        {
          objc_enumerationMutation(disableBundles);
        }

        v10 = *(*(&v77 + 1) + 8 * v9);
        v11 = logForCSLogCategoryDefault(v6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          queryID = [v65 queryID];
          clientBundleID = [v65 clientBundleID];
          v14 = clientBundleID;
          uTF8String = [clientBundleID UTF8String];
          v16 = v10;
          uTF8String2 = [v10 UTF8String];
          *buf = 134218498;
          *&buf[4] = queryID;
          *&buf[12] = 2080;
          *&buf[14] = uTF8String;
          *&buf[22] = 2080;
          v89 = uTF8String2;
          _os_log_debug_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEBUG, "(qid=%ld, bid=%s, context) Filtering out disabled bundle %s", buf, 0x20u);
        }

        v6 = [v68 addObject:v10];
        ++v9;
      }

      while (v7 != v9);
      v6 = [disableBundles countByEnumeratingWithState:&v77 objects:v87 count:16];
      v7 = v6;
    }

    while (v6);
  }

  [MEMORY[0x277CEBE80] hiddenApplications];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  obj = v74 = 0u;
  v18 = [obj countByEnumeratingWithState:&v73 objects:v86 count:16];
  v19 = v18;
  if (v18)
  {
    v20 = *v74;
    do
    {
      v21 = 0;
      do
      {
        if (*v74 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v73 + 1) + 8 * v21);
        v23 = logForCSLogCategoryDefault(v18);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          queryID2 = [v65 queryID];
          clientBundleID2 = [v65 clientBundleID];
          v27 = clientBundleID2;
          uTF8String3 = [clientBundleID2 UTF8String];
          bundleIdentifier = [v22 bundleIdentifier];
          v30 = bundleIdentifier;
          uTF8String4 = [bundleIdentifier UTF8String];
          *buf = 134218498;
          *&buf[4] = queryID2;
          *&buf[12] = 2080;
          *&buf[14] = uTF8String3;
          *&buf[22] = 2080;
          v89 = uTF8String4;
          _os_log_debug_impl(&dword_231A35000, v23, OS_LOG_TYPE_DEBUG, "(qid=%ld, bid=%s, AP) Filtering out hidden app %s", buf, 0x20u);
        }

        bundleIdentifier2 = [v22 bundleIdentifier];
        [v4 addObject:bundleIdentifier2];

        ++v21;
      }

      while (v19 != v21);
      v18 = [obj countByEnumeratingWithState:&v73 objects:v86 count:16];
      v19 = v18;
    }

    while (v18);
  }

  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v32 = getSPFastHiddenAppsGetNoBuildSymbolLoc_ptr;
  v84 = getSPFastHiddenAppsGetNoBuildSymbolLoc_ptr;
  if (!getSPFastHiddenAppsGetNoBuildSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getSPFastHiddenAppsGetNoBuildSymbolLoc_block_invoke;
    v89 = &unk_2789363E0;
    v90 = &v81;
    v33 = SearchLibrary();
    v34 = dlsym(v33, "SPFastHiddenAppsGetNoBuild");
    *(v90[1] + 24) = v34;
    getSPFastHiddenAppsGetNoBuildSymbolLoc_ptr = *(v90[1] + 24);
    v32 = v82[3];
  }

  _Block_object_dispose(&v81, 8);
  if (!v32)
  {
    [CSSearchAgent addHiddenAppFiltersToQueryContext:];
    __break(1u);
  }

  v35 = v32();
  v36 = [v35 copy];

  v81 = 0;
  v82 = &v81;
  v83 = 0x2050000000;
  v37 = getSDAppUninstallMonitorClass_softClass;
  v84 = getSDAppUninstallMonitorClass_softClass;
  if (!getSDAppUninstallMonitorClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getSDAppUninstallMonitorClass_block_invoke;
    v89 = &unk_2789363E0;
    v90 = &v81;
    __getSDAppUninstallMonitorClass_block_invoke(buf);
    v37 = v82[3];
  }

  v38 = v37;
  _Block_object_dispose(&v81, 8);
  if (v37 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    applicationsExcludedFromUninstall = [v37 applicationsExcludedFromUninstall];
  }

  else
  {
    applicationsExcludedFromUninstall = 0;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v66 = v36;
  v40 = [v66 countByEnumeratingWithState:&v69 objects:v85 count:16];
  if (v40)
  {
    v42 = *v70;
    *&v41 = 134218498;
    v64 = v41;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v70 != v42)
        {
          objc_enumerationMutation(v66);
        }

        v44 = *(*(&v69 + 1) + 8 * i);
        v45 = [applicationsExcludedFromUninstall containsObject:{v44, v64}];
        v46 = v45;
        v47 = logForCSLogCategoryDefault(v45);
        v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG);
        if (v46)
        {
          v49 = v4;
          if (v48)
          {
            queryID3 = [v65 queryID];
            clientBundleID3 = [v65 clientBundleID];
            v52 = clientBundleID3;
            uTF8String5 = [clientBundleID3 UTF8String];
            v54 = v44;
            uTF8String6 = [v44 UTF8String];
            *buf = v64;
            *&buf[4] = queryID3;
            *&buf[12] = 2080;
            *&buf[14] = uTF8String5;
            *&buf[22] = 2080;
            v89 = uTF8String6;
            _os_log_debug_impl(&dword_231A35000, v47, OS_LOG_TYPE_DEBUG, "(qid=%ld, bid=%s, SP/E) Filtering out hidden app %s", buf, 0x20u);

            v49 = v4;
          }
        }

        else
        {
          v49 = v68;
          if (v48)
          {
            queryID4 = [v65 queryID];
            clientBundleID4 = [v65 clientBundleID];
            v58 = clientBundleID4;
            uTF8String7 = [clientBundleID4 UTF8String];
            v60 = v44;
            uTF8String8 = [v44 UTF8String];
            *buf = v64;
            *&buf[4] = queryID4;
            *&buf[12] = 2080;
            *&buf[14] = uTF8String7;
            *&buf[22] = 2080;
            v89 = uTF8String8;
            _os_log_debug_impl(&dword_231A35000, v47, OS_LOG_TYPE_DEBUG, "(qid=%ld, bid=%s, SP) Filtering out hidden app %s", buf, 0x20u);

            v49 = v68;
          }
        }

        [v49 addObject:v44];
      }

      v40 = [v66 countByEnumeratingWithState:&v69 objects:v85 count:16];
    }

    while (v40);
  }

  allObjects = [v68 allObjects];
  [v65 setDisableBundles:allObjects];

  allObjects2 = [v4 allObjects];
  [v65 setPrefsDisabledBundles:allObjects2];
}

- (void)addClientConnectionIfAllowedForConfiguration:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 connection];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_prepareQueryContext:searchConnection:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  v4 = 2112;
  v5 = v0;
  v6 = 2112;
  v7 = v1;
  _os_log_error_impl(&dword_231A35000, v2, OS_LOG_TYPE_ERROR, "Client %@ trying to search other bundles (%@) without having entitlement %@", v3, 0x20u);
}

- (void)_prepareQueryContext:(void *)a1 searchConnection:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 clientBundleID];
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_231A35000, a2, OS_LOG_TYPE_DEBUG, "Notifications allowed for bid: %@", v4, 0xCu);
}

- (void)startQuery:(void *)a1 .cold.1(void *a1)
{
  xpc_dictionary_get_uint64(a1, "qid");
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)startQuery:(void *)a1 .cold.2(void *a1)
{
  xpc_dictionary_get_uint64(a1, "qid");
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)startQuery:(uint64_t)a3 .cold.3(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_231A35000, log, OS_LOG_TYPE_ERROR, "startQuery: Failed to create query task for query id %lld, xpc object %@", buf, 0x16u);
}

void __28__CSSearchAgent_startQuery___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __28__CSSearchAgent_startQuery___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __28__CSSearchAgent_startQuery___block_invoke_2_179_cold_1(uint64_t *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *a1;
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_231A35000, log, OS_LOG_TYPE_ERROR, "[rewrite] qid=%lld startQuery: Failed to create rewrite query task, xpc object %@", buf, 0x16u);
}

- (void)addHiddenAppFiltersToQueryContext:.cold.1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  __getSDAppUninstallMonitorClass_block_invoke_cold_1();
}

@end