@interface SDClient
+ (id)clientForConnection:(id)connection;
+ (void)initialize;
+ (void)registerMessageHandlersWithServer:(id)server;
- (void)_beginCrashHandlingForStore:(id)store andQuery:(id)query;
- (void)_endCrashHandling;
- (void)activateForConnection:(id)connection message:(id)message;
- (void)addAndStartQuery:(id)query;
- (void)cancelQueryWithExternalID:(unsigned int)d;
- (void)clearInputForConnection:(id)connection;
- (void)deactivate;
- (void)dealloc;
- (void)death;
- (void)removeActiveQuery:(id)query;
- (void)setActivation:(id)activation;
@end

@implementation SDClient

- (void)setActivation:(id)activation
{
  activationCopy = activation;
  obj = self;
  objc_sync_enter(obj);
  currentActivation = obj->_currentActivation;
  if (currentActivation)
  {
    [(SPXPCMessage *)currentActivation sendReply:&__NSDictionary0__struct];
  }

  v6 = obj->_currentActivation;
  obj->_currentActivation = activationCopy;

  objc_sync_exit(obj);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.searchd"];
    byte_1000A81F0 = [v2 BOOLForKey:@"enableDebug"];
  }
}

- (void)_beginCrashHandlingForStore:(id)store andQuery:(id)query
{
  queryCopy = query;
  storeCopy = store;
  qword_1000A81F8 = signal(10, sub_1000055BC);
  qword_1000A8200 = signal(6, sub_1000055BC);
  qword_1000A8208 = signal(11, sub_1000055BC);
  v7 = objc_opt_class();

  queryContext = [queryCopy queryContext];

  searchString = [queryContext searchString];
  v11 = [NSString stringWithFormat:@"error: crash using datastore %@ with search string '%@'\n", v7, searchString];

  v10 = v11;
  asprintf(&qword_1000A8210, "%s", [v11 UTF8String]);
}

- (void)_endCrashHandling
{
  signal(10, qword_1000A81F8);
  signal(6, qword_1000A8200);
  signal(11, qword_1000A8208);
  free(qword_1000A8210);
  qword_1000A8210 = 0;
}

- (void)removeActiveQuery:(id)query
{
  queryCopy = query;
  v4 = self->_queriesByExternId;
  objc_sync_enter(v4);
  queriesByExternId = self->_queriesByExternId;
  v6 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [queryCopy externalID]);
  [(NSMutableDictionary *)queriesByExternId removeObjectForKey:v6];

  objc_sync_exit(v4);
}

- (void)addAndStartQuery:(id)query
{
  queryCopy = query;
  v4 = si_tracing_current_span();
  v5 = *(v4 + 16);
  v137 = *v4;
  v138 = v5;
  v139 = *(v4 + 32);
  v106 = v4;
  v6 = *v4;
  spanid = si_tracing_calc_next_spanid();
  v8 = *(v106 + 8);
  *v106 = v6;
  *(v106 + 8) = spanid;
  *(v106 + 16) = v8;
  *(v106 + 28) = 102;
  *(v106 + 32) = "[SDClient addAndStartQuery:]";
  si_tracing_log_span_begin();
  +[SDController readyForQueries];
  if ((byte_1000A8218 & 1) == 0)
  {
    byte_1000A8218 = 1;
    +[SDSearchQuery prepareCacheForSearchContinuation];
  }

  [queryCopy start];
  queryContext = [queryCopy queryContext];
  searchEntities = [queryContext searchEntities];
  if ([searchEntities count])
  {
    searchEntities2 = [queryContext searchEntities];
    lastObject = [searchEntities2 lastObject];
    currentSearchString = [lastObject currentSearchString];
  }

  else
  {
    currentSearchString = [queryContext searchString];
  }

  v12 = SPLogForSPLogCategoryDefault();
  v13 = v12;
  if (gSPLogDebugAsDefault)
  {
    v14 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v14 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v12, v14))
  {
    searchDomains = [queryContext searchDomains];
    *buf = 138412546;
    v145 = currentSearchString;
    v146 = 2112;
    v147 = searchDomains;
    _os_log_impl(&_mh_execute_header, v13, v14, "#query Starting query for %@ on domains %@", buf, 0x16u);
  }

  if (!self->_queriesByExternId)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    queriesByExternId = self->_queriesByExternId;
    self->_queriesByExternId = v16;
  }

  v18 = SPLogForSPLogCategoryDefault();
  v19 = v18;
  if (gSPLogDebugAsDefault)
  {
    v20 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v20 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v18, v20))
  {
    searchDomains2 = [queryContext searchDomains];
    *buf = 138412546;
    v145 = currentSearchString;
    v146 = 2112;
    v147 = searchDomains2;
    _os_log_impl(&_mh_execute_header, v19, v20, "#query Starting query '%@' on domains:%@", buf, 0x16u);
  }

  v22 = self->_queriesByExternId;
  objc_sync_enter(v22);
  v23 = self->_queriesByExternId;
  v24 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [queryCopy externalID]);
  [(NSMutableDictionary *)v23 setObject:queryCopy forKey:v24];

  objc_sync_exit(v22);
  connection = [queryCopy connection];
  bundleID = [connection bundleID];

  v26 = [bundleID isEqual:SPSpotlightAppBundleId];
  v27 = &OBJC_IVAR___SPParsecDatastore__sessionStartTime;
  if (v26)
  {
    if ([currentSearchString length])
    {
      if (-[NSString length](self->_lastQuery, "length") && (([currentSearchString hasPrefix:self->_lastQuery] & 1) != 0 || -[NSString hasPrefix:](self->_lastQuery, "hasPrefix:", currentSearchString)))
      {
        v28 = [currentSearchString length];
        v29 = [(NSString *)self->_lastQuery length];
        v30 = &v28[-v29];
        if (&v28[-v29] < 0)
        {
          v30 = (v29 - v28);
        }

        v126 = _NSConcreteStackBlock;
        v127 = 3221225472;
        v128 = sub_100006804;
        v129 = &unk_100091F30;
        v130 = v30;
        AnalyticsSendEventLazy();
      }

      else
      {
        lastQuery = self->_lastQuery;
        if (lastQuery)
        {
          v32 = [(NSString *)lastQuery commonPrefixWithString:currentSearchString options:2];
        }

        else
        {
          v32 = &stru_100094040;
        }

        v131 = _NSConcreteStackBlock;
        v132 = 3221225472;
        v133 = sub_100006730;
        v134 = &unk_100091F10;
        v135 = currentSearchString;
        v136 = v32;
        AnalyticsSendEventLazy();
      }
    }

    v33 = [currentSearchString copy];
    v34 = self->_lastQuery;
    self->_lastQuery = v33;

    v27 = &OBJC_IVAR___SPParsecDatastore__sessionStartTime;
  }

  datastores = [v27 + 108 datastores];
  v36 = [datastores count] == 0;

  if (!v36)
  {
    v37 = objc_alloc_init(NSMutableOrderedSet);
    if ([currentSearchString length] || (objc_msgSend(queryContext, "searchEntities"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "count") == 0, v38, !v39))
    {
      if ([queryContext isSearchToolClient])
      {
        searchString = [queryContext searchString];
        v41 = [SPSearchQueryContext normalizeSearchString:searchString queryContext:queryContext];
        [queryContext setSearchString:v41];

        v42 = [SDController datastoreForDomain:1];
        if (v42)
        {
          [v37 addObject:v42];
        }
      }

      else
      {
        searchDomains3 = [queryContext searchDomains];
        v46 = [searchDomains3 arrayByAddingObject:&off_100098978];

        v42 = [v46 arrayByAddingObject:&off_100098990];

        v142 = @"ExtendedDeviceLockState";
        v143 = kCFBooleanTrue;
        v103 = [NSDictionary dictionaryWithObjects:&v143 forKeys:&v142 count:1];
        if ([queryContext deviceAuthenticationState])
        {
          v47 = [SDController datastoreForDomain:1];
          v48 = [SDController datastoreForDomain:2];
          v49 = [SDController datastoreForDomain:7];
          v108 = [SDController datastoreForDomain:3];
          v104 = [SDController datastoreForDomain:6];
          v102 = [SDController datastoreForDomain:8];
          v50 = [SDController datastoreForDomain:9];
          v51 = [SDController datastoreForDomain:10];
          v52 = [SDController datastoreForDomain:11];
          v53 = v52;
          v54 = v49;
          if (v48 || v108 || v47 || v104 || v50 || v51 || v52)
          {
            if (v48)
            {
              v55 = SPGetDisabledDomains();
              v56 = [v55 containsObject:&off_1000989A8];

              if ((v56 & 1) == 0)
              {
                [v37 addObject:v48];
              }
            }

            if (v108)
            {
              [v37 addObject:v108];
            }

            if (v47)
            {
              [v37 addObject:v47];
            }

            if (v104)
            {
              [v37 addObject:v104];
            }

            if (v102)
            {
              [v37 addObject:v102];
            }

            if (v54)
            {
              [v37 addObject:v54];
            }

            if (v50)
            {
              [v37 addObject:v50];
            }

            if (v51)
            {
              [v37 addObject:v51];
            }

            if (v53)
            {
              [v37 addObject:v53];
            }
          }
        }

        else
        {
          if ([v42 containsObject:&off_100098978])
          {
            v57 = [SDController datastoreForDomain:10];
            if (v57)
            {
              [v37 addObject:v57];
            }
          }

          if ([v42 containsObject:&off_1000989C0])
          {
            v58 = [SDController datastoreForDomain:1];
            if (v58)
            {
              [v37 addObject:v58];
            }
          }

          if ([v42 containsObject:&off_1000989D8])
          {
            v59 = [SDController datastoreForDomain:2];
            v60 = [SDController datastoreForDomain:7];
            if (v59)
            {
              v61 = SPGetDisabledDomains();
              v62 = [v61 containsObject:&off_1000989A8];

              if ((v62 & 1) == 0)
              {
                [v37 addObject:v59];
              }
            }

            if (v60)
            {
              [v37 addObject:v60];
            }
          }

          if (v42)
          {
            v63 = [v42 arrayByAddingObject:&off_1000989F0];
          }

          else
          {
            v63 = 0;
          }

          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v47 = v63;
          v64 = [v47 countByEnumeratingWithState:&v122 objects:v141 count:16];
          if (v64)
          {
            v65 = *v123;
            do
            {
              for (i = 0; i != v64; i = i + 1)
              {
                if (*v123 != v65)
                {
                  objc_enumerationMutation(v47);
                }

                v67 = *(*(&v122 + 1) + 8 * i);
                intValue = [v67 intValue];
                v69 = [SDController datastoreForDomain:intValue];
                v70 = v69;
                if (intValue == 6)
                {
                  [queryCopy addDelayedStartStore:v69];
                }

                else if (v69)
                {
                  if (([v37 containsObject:v69] & 1) == 0)
                  {
                    [v37 addObject:v70];
                  }
                }

                else
                {
                  v71 = SPLogForSPLogCategoryQuery();
                  v72 = v71;
                  if (gSPLogDebugAsDefault)
                  {
                    v73 = OS_LOG_TYPE_DEFAULT;
                  }

                  else
                  {
                    v73 = OS_LOG_TYPE_DEBUG;
                  }

                  if (os_log_type_enabled(v71, v73))
                  {
                    *buf = 138412290;
                    v145 = v67;
                    _os_log_impl(&_mh_execute_header, v72, v73, "#query Missing datastore for domain %@!", buf, 0xCu);
                  }
                }
              }

              v64 = [v47 countByEnumeratingWithState:&v122 objects:v141 count:16];
            }

            while (v64);
          }

          v42 = v47;
        }
      }
    }

    if (![v37 count])
    {
      v82 = SPLogForSPLogCategoryQuery();
      v83 = gSPLogInfoAsDefault;
      if (os_log_type_enabled(v82, ((gSPLogInfoAsDefault & 1) == 0)))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v82, ((v83 & 1) == 0), "#query No stores for query!", buf, 2u);
      }

      [queryCopy sendQueryCompleted];
      goto LABEL_146;
    }

    v74 = objc_alloc_init(NSMutableSet);
    if ([queryCopy infinitePatience])
    {
      v75 = SPLogForSPLogCategoryDefault();
      v76 = v75;
      if (gSPLogDebugAsDefault)
      {
        v77 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v77 = OS_LOG_TYPE_DEBUG;
      }

      v78 = 0.0;
      if (!os_log_type_enabled(v75, v77))
      {
        goto LABEL_140;
      }

      *buf = 0;
      v79 = "Query with infinite patience";
      v80 = v76;
      v81 = v77;
    }

    else
    {
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v84 = v37;
      v85 = [v84 countByEnumeratingWithState:&v118 objects:v140 count:16];
      if (v85)
      {
        v86 = *v119;
        v78 = 0.0;
        do
        {
          for (j = 0; j != v85; j = j + 1)
          {
            if (*v119 != v86)
            {
              objc_enumerationMutation(v84);
            }

            v88 = *(*(&v118 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v88 timeOut:{objc_msgSend(v88, "domain") == 7}];
              v90 = v89;
              if (v89 > 0.0)
              {
                [v74 addObject:v88];
                if (v90 >= v78)
                {
                  v91 = v78;
                }

                else
                {
                  v91 = v90;
                }

                if (v78 <= 0.0)
                {
                  v78 = v90;
                }

                else
                {
                  v78 = v91;
                }
              }
            }
          }

          v85 = [v84 countByEnumeratingWithState:&v118 objects:v140 count:16];
        }

        while (v85);
      }

      else
      {
        v78 = 0.0;
      }

      v92 = SPLogForSPLogCategoryDefault();
      v76 = v92;
      if (gSPLogDebugAsDefault)
      {
        v93 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v93 = OS_LOG_TYPE_DEBUG;
      }

      if (!os_log_type_enabled(v92, v93))
      {
        goto LABEL_140;
      }

      *buf = 0;
      v79 = "Query with timeout";
      v80 = v76;
      v81 = v93;
    }

    _os_log_impl(&_mh_execute_header, v80, v81, v79, buf, 2u);
LABEL_140:

    v94 = SPLogForSPLogCategoryDefault();
    v95 = v94;
    if (gSPLogDebugAsDefault)
    {
      v96 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v96 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v94, v96))
    {
      v97 = qos_class_self();
      *buf = 67109120;
      LODWORD(v145) = v97;
      _os_log_impl(&_mh_execute_header, v95, v96, "QOS addAndStartQuery: %d", buf, 8u);
    }

    v98 = +[SDController workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000068B8;
    block[3] = &unk_100091F80;
    v112 = queryCopy;
    v113 = bundleID;
    v117 = v78;
    v114 = v37;
    v99 = v74;
    v115 = v99;
    v116 = currentSearchString;
    v100 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    tracing_dispatch_async();

LABEL_146:
    goto LABEL_147;
  }

  v43 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    sub_100062298(v43);
  }

  v44 = [NSError errorWithDomain:@"SearchError" code:1 userInfo:0];
  [queryCopy sendError:v44];

  [queryCopy sendQueryCompleted];
LABEL_147:

  si_tracing_log_span_end();
  v101 = v138;
  *v106 = v137;
  *(v106 + 16) = v101;
  *(v106 + 32) = v139;
}

- (void)clearInputForConnection:(id)connection
{
  v3 = +[SDController workQueue];
  md_tracing_dispatch_async_propagating();
}

- (void)cancelQueryWithExternalID:(unsigned int)d
{
  v3 = +[SDController workQueue];
  md_tracing_dispatch_async_propagating();
}

- (void)activateForConnection:(id)connection message:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v8 = +[SDLockHandler sharedLockHandler];
  [v8 checkMigrationComplete];

  if (messageCopy)
  {
    goto LABEL_2;
  }

  if (!self->_active)
  {
    bundleID = [connectionCopy bundleID];
    v12 = [bundleID isEqualToString:@"com.apple.Spotlight"];

    if (v12)
    {
      v13 = SPLogForSPLogCategoryDefault();
      v14 = gSPLogInfoAsDefault;
      if (os_log_type_enabled(v13, ((gSPLogInfoAsDefault & 1) == 0)))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, ((v14 & 1) == 0), "Activate Spotlight", buf, 2u);
      }

      messageCopy = [[SPXPCMessage alloc] initWithName:@"Activate" connection:connectionCopy];
      if (messageCopy)
      {
LABEL_2:
        [(SDClient *)self setActivation:messageCopy];
        if (self->_active)
        {
          v9 = SPLogForSPLogCategoryDefault();
          v10 = gSPLogInfoAsDefault;
          if (os_log_type_enabled(v9, ((gSPLogInfoAsDefault & 1) == 0)))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, ((v10 & 1) == 0), "already active, ignoring", buf, 2u);
          }
        }

        else
        {
          v9 = +[SDController workQueue];
          self->_active = 1;
          kdebug_trace();
          bundleID2 = [connectionCopy bundleID];
          v15 = SPLogForSPLogCategoryDefault();
          v16 = gSPLogInfoAsDefault;
          if (os_log_type_enabled(v15, ((gSPLogInfoAsDefault & 1) == 0)))
          {
            *buf = 138412290;
            v45 = bundleID2;
            _os_log_impl(&_mh_execute_header, v15, ((v16 & 1) == 0), "Activate from %@", buf, 0xCu);
          }

          if ([bundleID2 isEqualToString:@"com.apple.springboard"])
          {
            v17 = SPLogForSPLogCategoryDefault();
            v18 = gSPLogInfoAsDefault;
            if (os_log_type_enabled(v17, ((gSPLogInfoAsDefault & 1) == 0)))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, ((v18 & 1) == 0), "Activate from SpringBoard", buf, 2u);
            }

            if (qword_1000A8228 != -1)
            {
              sub_1000622DC();
            }

            v19 = [messageCopy rootObjectOfClasses:qword_1000A8220];
            self->_isSpringBoard = 1;
            v20 = SPLogForSPLogCategoryDefault();
            v21 = v20;
            if (gSPLogDebugAsDefault)
            {
              v22 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              v22 = OS_LOG_TYPE_DEBUG;
            }

            if (os_log_type_enabled(v20, v22))
            {
              v38 = [v19 count];
              v23 = [v19 objectForKey:@"apps"];
              v37 = [v23 count];
              v24 = [v19 objectForKey:@"apps"];
              v25 = [v19 objectForKey:@"hiddenApps"];
              *buf = 138413314;
              v45 = messageCopy;
              v46 = 2048;
              v47 = v38;
              v48 = 2048;
              v49 = v37;
              v50 = 2112;
              v51 = v24;
              v52 = 2112;
              v53 = v25;
              _os_log_impl(&_mh_execute_header, v21, v22, "Received apps: %@ %ld %ld %@ %@", buf, 0x34u);
            }

            if (v19)
            {
              v26 = [v19 objectForKey:@"apps"];
              v27 = [v19 objectForKey:@"hiddenApps"];
              SPFastApplicationsSet();
            }

            v28 = +[SDAppUninstallMonitor sharedInstance];
            [v28 ready];

            objc_initWeak(buf, self);
            v29 = dispatch_time(0, 2000000000);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000079DC;
            block[3] = &unk_100092010;
            objc_copyWeak(&v43, buf);
            dispatch_after(v29, v9, block);
            objc_destroyWeak(&v43);
            objc_destroyWeak(buf);
          }

          else
          {
            SSScreenTimeStatusClearCache();
            +[SPCoreSpotlightIndexer preheat];
            byte_1000A8218 = 1;
            v30 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &stru_100092030);
            tracing_dispatch_async();

            self->_didTimerFire = 0;
            v31 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);
            resumeBackgroundActivityTimer = self->_resumeBackgroundActivityTimer;
            self->_resumeBackgroundActivityTimer = v31;

            objc_initWeak(buf, self);
            v33 = self->_resumeBackgroundActivityTimer;
            v34 = dispatch_time(0, 180000000000);
            dispatch_source_set_timer(v33, v34, 0xFFFFFFFFFFFFFFFFLL, 0);
            v35 = self->_resumeBackgroundActivityTimer;
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_100007BAC;
            handler[3] = &unk_100092010;
            objc_copyWeak(&v41, buf);
            dispatch_source_set_event_handler(v35, handler);
            dispatch_resume(self->_resumeBackgroundActivityTimer);
            v36 = SPGetDisabledDomains();
            [v36 containsObject:&off_1000989A8];

            AnalyticsSendEventLazy();
            objc_destroyWeak(&v41);
            objc_destroyWeak(buf);
          }
        }
      }
    }
  }
}

- (void)deactivate
{
  if (!self->_isSpringBoard)
  {
    resumeBackgroundActivityTimer = self->_resumeBackgroundActivityTimer;
    if (resumeBackgroundActivityTimer)
    {
      dispatch_source_cancel(resumeBackgroundActivityTimer);
    }

    if (self->_active)
    {
      if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
      {
        v4 = +[SDController workQueue];
        tracing_dispatch_async();
      }

      if (!self->_didTimerFire)
      {
        v5 = +[SDController workQueue];
        v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, &stru_100092090);
        tracing_dispatch_async();
      }
    }

    v7 = +[SDController backgroundWorkQueue];
    tracing_dispatch_async();

    +[SPCoreSpotlightIndexer deactivate];
    +[SSRankingManager deactivate];
  }

  lastQuery = self->_lastQuery;
  self->_lastQuery = 0;

  self->_active = 0;

  [(SDClient *)self setActivation:0];
}

- (void)death
{
  v3 = +[SDFeedbackInterceptor sharedInstance];
  [v3 cleanup];

  [(SDClient *)self deactivate];
}

+ (id)clientForConnection:(id)connection
{
  connectionCopy = connection;
  context = [connectionCopy context];

  if (!context)
  {
    v5 = objc_alloc_init(SDClient);
    [connectionCopy setContext:v5];
  }

  context2 = [connectionCopy context];

  return context2;
}

+ (void)registerMessageHandlersWithServer:(id)server
{
  serverCopy = server;
  [serverCopy setHandlerForMessageName:@"OpenQuery" handler:&stru_1000920F0];
  [serverCopy setHandlerForMessageName:@"CloseQuery" handler:&stru_100092110];
  [serverCopy setHandlerForMessageName:@"ClearInput" handler:&stru_100092130];
  [serverCopy setHandlerForMessageName:@"RequestFTE" handler:&stru_100092150];
  [serverCopy setHandlerForMessageName:@"Activate" handler:&stru_1000921E8];
  [serverCopy setHandlerForMessageName:@"Deactivate" handler:&stru_100092208];
  [serverCopy setHandlerForMessageName:@"Preheat" handler:&stru_100092228];
}

- (void)dealloc
{
  [(SDClient *)self deactivate];
  v3 = SPLogForSPLogCategoryDefault();
  v4 = v3;
  if (gSPLogDebugAsDefault)
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "SDClient dealloc", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = SDClient;
  [(SDClient *)&v6 dealloc];
}

@end