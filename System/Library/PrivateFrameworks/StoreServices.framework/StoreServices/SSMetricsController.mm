@interface SSMetricsController
- (BOOL)isDisabled;
- (SSMetricsController)init;
- (id)_connection;
- (id)_cookieValuesForConfiguration:(id)configuration;
- (id)_userType;
- (id)_valueForField:(id)field withFieldData:(id)data;
- (id)locationWithPosition:(int64_t)position type:(id)type fieldData:(id)data;
- (void)_applicationWillEnterForeground;
- (void)_enumerateFieldValuesWithMap:(id)map fieldData:(id)data block:(id)block;
- (void)_flushUnreportedEventsIfEnabled;
- (void)_handleFlushTimer;
- (void)_serialQueueInsertEvents:(id)events withCompletionHandler:(id)handler;
- (void)_setupFlushTimer;
- (void)dealloc;
- (void)flushUnreportedEventsWithCompletionHandler:(id)handler;
- (void)insertEvent:(id)event withCompletionHandler:(id)handler;
- (void)insertEvents:(id)events withCompletionHandler:(id)handler;
- (void)recordAnalyticsForMetricsDialogEvent:(id)event withTopic:(id)topic;
- (void)setFlushTimerEnabled:(BOOL)enabled;
- (void)setGlobalConfiguration:(id)configuration;
- (void)setPageConfiguration:(id)configuration;
@end

@implementation SSMetricsController

- (SSMetricsController)init
{
  v19.receiver = self;
  v19.super_class = SSMetricsController;
  v2 = [(SSMetricsController *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.storeservices.analytics", 0);
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    v5 = *(v2 + 4);
    v6 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v5, v6);

    v7 = dispatch_queue_create("com.apple.storeservices.analytics.flush", 0);
    v8 = *(v2 + 5);
    *(v2 + 5) = v7;

    dispatch_set_target_queue(*(v2 + 5), v6);
    v9 = [[SSMetricsConfiguration alloc] initWithGlobalConfiguration:&unk_1F507A330];
    v10 = *(v2 + 3);
    *(v2 + 3) = v9;

    v11 = MEMORY[0x1E698C7D8];
    bagSubProfile = [MEMORY[0x1E698CA00] bagSubProfile];
    bagSubProfileVersion = [MEMORY[0x1E698CA00] bagSubProfileVersion];
    v14 = [v11 bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

    v15 = [objc_alloc(MEMORY[0x1E698C8D8]) initWithBag:v14];
    v16 = *(v2 + 1);
    *(v2 + 1) = v15;

    *(v2 + 49) = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__applicationWillEnterForeground name:0x1F50440B8 object:0];
  }

  return v2;
}

- (void)_applicationWillEnterForeground
{
  if (self->_flushOnForeground)
  {
    [(SSMetricsController *)self _flushUnreportedEventsIfEnabled];
    self->_flushOnForeground = 0;
  }
}

- (void)_setupFlushTimer
{
  flushSerialQueue = self->_flushSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SSMetricsController__setupFlushTimer__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(flushSerialQueue, block);
}

void __39__SSMetricsController__setupFlushTimer__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    dispatch_block_cancel(*(v2 + 56));
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 48) == 1 && ([v2 isDisabled] & 1) == 0)
  {
    v5 = [*(a1 + 32) configuration];
    [v5 reportingFrequency];
    v7 = v6;

    if (v7 != 0.0)
    {
      v8 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v8)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      v9 = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        LODWORD(v10) = v9 | 2;
      }

      else
      {
        LODWORD(v10) = v9;
      }

      v11 = [v8 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v10 = v10;
      }

      else
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v12 = objc_opt_class();
        v13 = v7;
        *location = 138412546;
        *&location[4] = v12;
        v29 = 2048;
        v30 = v13;
        v14 = v12;
        v15 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1D48BA000, v11, 1, "[%@] Setting Flush Unreported Events timer: %0.2f", location, 22);

        if (!v15)
        {
LABEL_18:

          objc_initWeak(location, *(a1 + 32));
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __39__SSMetricsController__setupFlushTimer__block_invoke_57;
          block[3] = &unk_1E84AD870;
          objc_copyWeak(&v27, location);
          block[4] = *(a1 + 32);
          v22 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
          v23 = *(a1 + 32);
          v24 = *(v23 + 56);
          *(v23 + 56) = v22;

          v25 = dispatch_time(0, (v7 * 1000000000.0));
          dispatch_after(v25, *(*(a1 + 32) + 40), *(*(a1 + 32) + 56));
          objc_destroyWeak(&v27);
          objc_destroyWeak(location);
          return;
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
        free(v15);
        SSFileLog(v8, @"%@", v16, v17, v18, v19, v20, v21, v11);
      }

      goto LABEL_18;
    }
  }
}

- (BOOL)isDisabled
{
  configuration = [(SSMetricsController *)self configuration];
  isDisabled = [configuration isDisabled];

  return isDisabled;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0x1F50440B8 object:0];

  flushTimerBlock = self->_flushTimerBlock;
  if (flushTimerBlock)
  {
    dispatch_block_cancel(flushTimerBlock);
    v5 = self->_flushTimerBlock;
    self->_flushTimerBlock = 0;
  }

  v6.receiver = self;
  v6.super_class = SSMetricsController;
  [(SSMetricsController *)&v6 dealloc];
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v5 = self->_connection;
    self->_connection = v4;

    connection = self->_connection;
  }

  return connection;
}

- (id)_cookieValuesForConfiguration:(id)configuration
{
  v25 = *MEMORY[0x1E69E9840];
  cookieFields = [configuration cookieFields];
  if ([cookieFields count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = +[SSAccountStore defaultStore];
    activeAccount = [v5 activeAccount];

    v7 = +[SSVCookieStorage sharedStorage];
    v8 = [v7 allCookiesForAccount:activeAccount];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          name = [v14 name];
          v16 = [cookieFields containsObject:name];

          if (v16)
          {
            value = [v14 value];
            name2 = [v14 name];
            [v4 setValue:value forKey:name2];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_serialQueueInsertEvents:(id)events withCompletionHandler:(id)handler
{
  v111 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  handlerCopy = handler;
  selfCopy = self;
  configuration = [(SSMetricsController *)self configuration];
  reportingURLString = [configuration reportingURLString];
  objc_opt_class();
  v92 = reportingURLString;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [reportingURLString length])
  {
    v87 = handlerCopy;
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    _userType = [(SSMetricsController *)self _userType];
    [v10 setObject:? forKey:?];
    v11 = [(SSMetricsController *)self _cookieValuesForConfiguration:configuration];
    if ([v11 count])
    {
      [v10 setObject:v11 forKey:@"cookies"];
    }

    v85 = v11;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v90 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v91 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(eventsCopy, "count")}];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v88 = eventsCopy;
    obj = eventsCopy;
    v12 = [obj countByEnumeratingWithState:&v102 objects:v110 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v103;
      v89 = configuration;
      do
      {
        v15 = 0;
        v93 = v13;
        do
        {
          if (*v103 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v102 + 1) + 8 * v15);
          if ([v16 isBlacklistedByConfiguration:configuration])
          {
            v17 = +[SSLogConfig sharedStoreServicesConfig];
            if (!v17)
            {
              v17 = +[SSLogConfig sharedConfig];
            }

            shouldLog = [v17 shouldLog];
            if ([v17 shouldLogToDisk])
            {
              shouldLog |= 2u;
            }

            oSLogObject = [v17 OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
            {
              v20 = shouldLog;
            }

            else
            {
              v20 = shouldLog & 2;
            }

            if (v20)
            {
              v21 = objc_opt_class();
              v106 = 138412546;
              v107 = v21;
              v108 = 2112;
              v109 = v16;
              v22 = v21;
              LODWORD(v84) = 22;
              v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "[%@] Dropping event of a type which is blacklisted. [%@]", &v106, v84);

              if (v23)
              {
                oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:4];
                free(v23);
                SSFileLog(v17, @"%@", v24, v25, v26, v27, v28, v29, oSLogObject);
                goto LABEL_27;
              }
            }

            else
            {
LABEL_27:
            }

            goto LABEL_43;
          }

          context = objc_autoreleasePoolPush();
          if (([MEMORY[0x1E698C918] suppressEngagement] & 1) == 0)
          {
            v30 = selfCopy->_engagement;
            v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v16 appendPropertiesToBody:v31];
            v32 = [objc_alloc(MEMORY[0x1E698CA08]) initWithUnderlyingDictionary:v31];
            if (([v32 suppressEngagement] & 1) == 0)
            {
              underlyingDictionary = [v32 underlyingDictionary];
              v34 = [(AMSEngagement *)v30 enqueueData:underlyingDictionary];

              configuration = v89;
            }
          }

          v35 = v14;
          v36 = v10;
          v37 = [v16 allTableEntityPropertiesPermittedByConfiguration:configuration externalValues:v10];
          v38 = [v37 objectForKey:@"eventBody"];
          if ([v38 length])
          {
            v39 = [v16 decorateReportingURL:v92];
            oSLogObject2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "shouldSuppressUserInfo")}];
            v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v41 setObject:v90 forKey:@"timestampInserted"];
            [v41 setObject:&unk_1F507A1B0 forKey:@"timestampReported"];
            [v41 setObject:v39 forKey:@"report_url"];
            [v41 setObject:oSLogObject2 forKey:@"supressDsid"];
            [v41 setObject:v38 forKey:@"eventBody"];
            [(__CFString *)v91 addObject:v41];
          }

          else
          {
            v39 = +[SSLogConfig sharedStoreServicesConfig];
            if (!v39)
            {
              v39 = +[SSLogConfig sharedConfig];
            }

            shouldLog2 = [v39 shouldLog];
            if ([v39 shouldLogToDisk])
            {
              v43 = shouldLog2 | 2;
            }

            else
            {
              v43 = shouldLog2;
            }

            oSLogObject2 = [v39 OSLogObject];
            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
            {
              v44 = v43;
            }

            else
            {
              v44 = v43 & 2;
            }

            if (v44)
            {
              v45 = objc_opt_class();
              v106 = 138412546;
              v107 = v45;
              v108 = 2112;
              v109 = v16;
              v46 = v45;
              LODWORD(v84) = 22;
              v47 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 16, "[%@] Dropping event which has no body values after blacklist filtering. [%@]", &v106, v84);

              if (!v47)
              {
                configuration = v89;
                goto LABEL_42;
              }

              oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v47 encoding:4];
              free(v47);
              SSFileLog(v39, @"%@", v48, v49, v50, v51, v52, v53, oSLogObject2);
            }

            configuration = v89;
          }

LABEL_42:
          objc_autoreleasePoolPop(context);
          v10 = v36;
          v14 = v35;
          v13 = v93;
LABEL_43:
          ++v15;
        }

        while (v13 != v15);
        v54 = [obj countByEnumeratingWithState:&v102 objects:v110 count:16];
        v13 = v54;
      }

      while (v54);
    }

    v55 = [(__CFString *)v91 count];
    if (!v55)
    {
      handlerCopy = v87;
      eventsCopy = v88;
      if (!v87)
      {
LABEL_79:

        goto LABEL_80;
      }

      v83 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__SSMetricsController__serialQueueInsertEvents_withCompletionHandler___block_invoke_51;
      block[3] = &unk_1E84AED58;
      v99 = 1;
      v98 = v87;
      dispatch_async(v83, block);

      v69 = v98;
LABEL_78:

      goto LABEL_79;
    }

    handlerCopy = v87;
    if (!SSIsInternalBuild(v55, v56) || !_os_feature_enabled_impl())
    {
LABEL_63:
      v69 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v69, "0", 110);
      SSXPCDictionarySetCFObject(v69, "1", v91);
      _connection = [(SSMetricsController *)selfCopy _connection];
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __70__SSMetricsController__serialQueueInsertEvents_withCompletionHandler___block_invoke;
      v100[3] = &unk_1E84ABEF0;
      v100[4] = selfCopy;
      v101 = v87;
      [_connection sendMessage:v69 withReply:v100];

      eventsCopy = v88;
      goto LABEL_78;
    }

    v57 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v57)
    {
      v57 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v57 shouldLog];
    if ([v57 shouldLogToDisk])
    {
      v59 = shouldLog3 | 2;
    }

    else
    {
      v59 = shouldLog3;
    }

    oSLogObject3 = [v57 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v61 = v59;
    }

    else
    {
      v61 = v59 & 2;
    }

    if (v61)
    {
      v106 = 136446210;
      v107 = "[SSMetricsController _serialQueueInsertEvents:withCompletionHandler:]";
      LODWORD(v84) = 12;

      if (!v62)
      {
LABEL_62:

        goto LABEL_63;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v62 encoding:4];
      free(v62);
      SSFileLog(v57, @"%@", v63, v64, v65, v66, v67, v68, oSLogObject3);
    }

    goto LABEL_62;
  }

  v10 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    LODWORD(v72) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v72) = shouldLog4;
  }

  oSLogObject4 = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
  {
    v72 = v72;
  }

  else
  {
    v72 &= 2u;
  }

  if (!v72)
  {
    goto LABEL_75;
  }

  v74 = objc_opt_class();
  v75 = v74;
  v106 = 138412546;
  v107 = v74;
  v108 = 1024;
  LODWORD(v109) = objc_opt_class();
  v76 = _os_log_send_and_compose_impl(v72, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 16, "[%@] Attempting to insert events with no URL. Dropping [%d] events.", &v106, 18);

  if (v76)
  {
    oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v76 encoding:4];
    free(v76);
    SSFileLog(v10, @"%@", v77, v78, v79, v80, v81, v82, oSLogObject4);
LABEL_75:
  }

LABEL_80:
}

void __70__SSMetricsController__serialQueueInsertEvents_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 40))
  {
    v6 = objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v6);
    v8 = [(__CFDate *)v7 intValue];
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    v10 = v9;
    if (v8)
    {
      if (!v9)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v11 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        LODWORD(v12) = v11 | 2;
      }

      else
      {
        LODWORD(v12) = v11;
      }

      v13 = [v10 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v12 = v12;
      }

      else
      {
        v12 &= 2u;
      }

      if (!v12)
      {
        goto LABEL_32;
      }

      v14 = objc_opt_class();
      v15 = v14;
      v36 = 138412546;
      v37 = v14;
      v38 = 1024;
      v39 = [(__CFDate *)v7 intValue];
      v16 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_1D48BA000, v13, 16, "[%@] Insert Metrics Events returned error code: %d", &v36, 18);
    }

    else
    {
      if (!v9)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v20 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        LODWORD(v21) = v20 | 2;
      }

      else
      {
        LODWORD(v21) = v20;
      }

      v13 = [v10 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v21 = v21;
      }

      else
      {
        v21 &= 2u;
      }

      if (!v21)
      {
        goto LABEL_32;
      }

      v36 = 138412290;
      v37 = objc_opt_class();
      v15 = v37;
      v16 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_1D48BA000, v13, 1, "[%@] Insert Metrics Events succeeded", &v36, 12);
    }

    v22 = v16;

    if (!v22)
    {
      goto LABEL_33;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:4];
    free(v22);
    SSFileLog(v10, @"%@", v23, v24, v25, v26, v27, v28, v13);
LABEL_32:

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
  }

  else
  {
    if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
    {
      v29 = objc_opt_class();
      v30 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v29);
      if ([(__CFDate *)v30 intValue])
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = xpc_dictionary_get_value(v4, "1");
        v17 = [v31 initWithXPCEncoding:v32];
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_19;
    }

    v5 = 111;
  }

  v17 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_19:
  v18 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__SSMetricsController__serialQueueInsertEvents_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E84AC338;
  v19 = *(a1 + 40);
  v34 = v17;
  v35 = v19;
  v7 = v17;
  dispatch_async(v18, block);

  v10 = v35;
LABEL_33:
}

void __70__SSMetricsController__serialQueueInsertEvents_withCompletionHandler___block_invoke_51(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 32);

    v2(v3, 0);
  }

  else
  {
    v4 = SSError(@"SSErrorDomain", 112, 0, 0);
    (*(v1 + 16))(v1, v4);
  }
}

- (void)_handleFlushTimer
{
  location[3] = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  LODWORD(location[0]) = 138412290;
  *(location + 4) = objc_opt_class();
  v7 = *(location + 4);
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "[%@] Flush timer fired", location, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  objc_initWeak(location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSMetricsController__handleFlushTimer__block_invoke;
  block[3] = &unk_1E84AD820;
  objc_copyWeak(&v16, location);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v16);
  objc_destroyWeak(location);
}

void __40__SSMetricsController__handleFlushTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v2 = [objc_alloc(MEMORY[0x1E698D028]) initWithBundleIDs:0 states:0];
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];
    v5 = [v2 applicationStateForApplication:v4];

    if ((v5 & 8) != 0 || (SSUIApplication(), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 applicationState], v6, !v7))
    {
      [v8 _flushUnreportedEventsIfEnabled];
    }

    else
    {
      v8[49] = 1;
    }

    WeakRetained = v8;
  }
}

- (void)_flushUnreportedEventsIfEnabled
{
  location[3] = *MEMORY[0x1E69E9840];
  if (!self->_flushTimerEnabled || [(SSMetricsController *)self isDisabled])
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      LODWORD(v5) = shouldLog | 2;
    }

    else
    {
      LODWORD(v5) = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = objc_opt_class();
      v7 = *(location + 4);
      v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "[%@] Flush Unreported Events timer fired but was subsequently disabled", location, 12);

      if (!v8)
      {
LABEL_15:

        flushSerialQueue = self->_flushSerialQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __54__SSMetricsController__flushUnreportedEventsIfEnabled__block_invoke_56;
        block[3] = &unk_1E84AC050;
        block[4] = self;
        dispatch_async(flushSerialQueue, block);
        return;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
      free(v8);
      SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
    }

    goto LABEL_15;
  }

  objc_initWeak(location, self);
  v16 = self->_flushSerialQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__SSMetricsController__flushUnreportedEventsIfEnabled__block_invoke;
  v18[3] = &unk_1E84AD870;
  objc_copyWeak(&v19, location);
  v18[4] = self;
  dispatch_async(v16, v18);
  objc_destroyWeak(&v19);
  objc_destroyWeak(location);
}

void __54__SSMetricsController__flushUnreportedEventsIfEnabled__block_invoke(uint64_t a1)
{
  v2 = +[SSTransactionStore defaultStore];
  [v2 takeKeepAliveWithTransactionID:@"com.apple.storeservices.metricsFlushTransactionID"];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__SSMetricsController__flushUnreportedEventsIfEnabled__block_invoke_2;
  v4[3] = &unk_1E84AD730;
  v4[4] = *(a1 + 32);
  [WeakRetained flushUnreportedEventsWithCompletionHandler:v4];
}

void __54__SSMetricsController__flushUnreportedEventsIfEnabled__block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v6) = v5 | 2;
    }

    else
    {
      LODWORD(v6) = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (!v6)
    {
      goto LABEL_24;
    }

    *v20 = 138412546;
    *&v20[4] = objc_opt_class();
    *&v20[12] = 2112;
    *&v20[14] = v2;
    v8 = *&v20[4];
    v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, v7, 16, "[%@] Flush Unreported Events timer fired -- %@", v20, 22, *v20, *&v20[8], v21);
  }

  else
  {
    if (!v3)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v10 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v11) = v10 | 2;
    }

    else
    {
      LODWORD(v11) = v10;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (!v11)
    {
      goto LABEL_24;
    }

    *v20 = 138412290;
    *&v20[4] = objc_opt_class();
    v8 = *&v20[4];
    v9 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, v7, 1, "[%@] Flush Unreported Events timer fired & reported success", v20, 12, *v20, *&v20[8], v21);
  }

  v12 = v9;

  if (v12)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog(v4, @"%@", v13, v14, v15, v16, v17, v18, v7);
LABEL_24:
  }

  v19 = +[SSTransactionStore defaultStore];
  [v19 releaseKeepAliveWithTransactionID:@"com.apple.storeservices.metricsFlushTransactionID"];
}

void __54__SSMetricsController__flushUnreportedEventsIfEnabled__block_invoke_56(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    dispatch_block_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;
  }
}

void __39__SSMetricsController__setupFlushTimer__block_invoke_57(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;
    v5 = WeakRetained;

    [v5 _handleFlushTimer];
    [v5 _setupFlushTimer];
    WeakRetained = v5;
  }
}

- (void)setFlushTimerEnabled:(BOOL)enabled
{
  if (self->_flushTimerEnabled != enabled)
  {
    self->_flushTimerEnabled = enabled;
    [(SSMetricsController *)self _setupFlushTimer];
  }
}

- (void)flushUnreportedEventsWithCompletionHandler:(id)handler
{
  location[3] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  configuration = [(SSMetricsController *)self configuration];
  isSendDisabled = [configuration isSendDisabled];

  if (!isSendDisabled)
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = shouldLog | 2;
    }

    else
    {
      LODWORD(v10) = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = objc_opt_class();
      v12 = *(location + 4);
      v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "[%@] Flushing events", location, 12);

      if (v13)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
        free(v13);
        SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, v14);
      }
    }

    else
    {
    }

    if (!SSIsInternalBuild(v21, v22) || !_os_feature_enabled_impl())
    {
      goto LABEL_31;
    }

    v23 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v25 = shouldLog2 | 2;
    }

    else
    {
      v25 = shouldLog2;
    }

    oSLogObject2 = [v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v27 = v25;
    }

    else
    {
      v27 = v25 & 2;
    }

    if (v27)
    {
      LODWORD(location[0]) = 136446210;
      *(location + 4) = "[SSMetricsController flushUnreportedEventsWithCompletionHandler:]";
      LODWORD(v36) = 12;

      if (!v28)
      {
LABEL_30:

LABEL_31:
        objc_initWeak(location, self);
        serialQueue = [(SSMetricsController *)self serialQueue];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __66__SSMetricsController_flushUnreportedEventsWithCompletionHandler___block_invoke_58;
        v37[3] = &unk_1E84AED80;
        objc_copyWeak(&v39, location);
        v37[4] = self;
        v38 = handlerCopy;
        dispatch_async(serialQueue, v37);

        objc_destroyWeak(&v39);
        objc_destroyWeak(location);
        goto LABEL_32;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:4];
      free(v28);
      SSFileLog(v23, @"%@", v29, v30, v31, v32, v33, v34, oSLogObject2);
    }

    goto LABEL_30;
  }

  if (handlerCopy)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__SSMetricsController_flushUnreportedEventsWithCompletionHandler___block_invoke;
    block[3] = &unk_1E84ADED0;
    v41 = handlerCopy;
    dispatch_async(v7, block);
  }

LABEL_32:
}

void __66__SSMetricsController_flushUnreportedEventsWithCompletionHandler___block_invoke_58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "0", 114);
  v4 = [WeakRetained _connection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__SSMetricsController_flushUnreportedEventsWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E84ABEF0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 sendMessage:v3 withReply:v6];
}

void __66__SSMetricsController_flushUnreportedEventsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 40))
  {
    v6 = objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v6);
    v8 = [(__CFDate *)v7 intValue];
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    v10 = v9;
    if (v8)
    {
      if (!v9)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v11 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        LODWORD(v12) = v11 | 2;
      }

      else
      {
        LODWORD(v12) = v11;
      }

      v13 = [v10 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v12 = v12;
      }

      else
      {
        v12 &= 2u;
      }

      if (!v12)
      {
        goto LABEL_32;
      }

      v14 = objc_opt_class();
      v15 = v14;
      v36 = 138412546;
      v37 = v14;
      v38 = 1024;
      v39 = [(__CFDate *)v7 intValue];
      v16 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_1D48BA000, v13, 16, "[%@] Report Metrics Events returned error code: %d", &v36, 18);
    }

    else
    {
      if (!v9)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v20 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        LODWORD(v21) = v20 | 2;
      }

      else
      {
        LODWORD(v21) = v20;
      }

      v13 = [v10 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v21 = v21;
      }

      else
      {
        v21 &= 2u;
      }

      if (!v21)
      {
        goto LABEL_32;
      }

      v36 = 138412290;
      v37 = objc_opt_class();
      v15 = v37;
      v16 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_1D48BA000, v13, 1, "[%@] Report Metrics Events succeeded", &v36, 12);
    }

    v22 = v16;

    if (!v22)
    {
      goto LABEL_33;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:4];
    free(v22);
    SSFileLog(v10, @"%@", v23, v24, v25, v26, v27, v28, v13);
LABEL_32:

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
  }

  else
  {
    if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
    {
      v29 = objc_opt_class();
      v30 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v29);
      if ([(__CFDate *)v30 intValue])
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = xpc_dictionary_get_value(v4, "1");
        v17 = [v31 initWithXPCEncoding:v32];
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_19;
    }

    v5 = 111;
  }

  v17 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_19:
  v18 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SSMetricsController_flushUnreportedEventsWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E84AC338;
  v19 = *(a1 + 40);
  v34 = v17;
  v35 = v19;
  v7 = v17;
  dispatch_async(v18, block);

  v10 = v35;
LABEL_33:
}

- (void)insertEvent:(id)event withCompletionHandler:(id)handler
{
  if (event)
  {
    v6 = MEMORY[0x1E695DEC8];
    handlerCopy = handler;
    handlerCopy2 = [v6 arrayWithObject:event];
    [SSMetricsController insertEvents:"insertEvents:withCompletionHandler:" withCompletionHandler:?];
  }

  else
  {
    handlerCopy2 = handler;
    [(SSMetricsController *)self insertEvents:0 withCompletionHandler:?];
  }
}

- (void)insertEvents:(id)events withCompletionHandler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  serialQueue = [(SSMetricsController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SSMetricsController_insertEvents_withCompletionHandler___block_invoke;
  block[3] = &unk_1E84AEDA8;
  objc_copyWeak(&v15, &location);
  v12 = eventsCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = eventsCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __58__SSMetricsController_insertEvents_withCompletionHandler___block_invoke(uint64_t a1)
{
  v92 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = SSRestrictionsIsOnDeviceDiagnosticsAllowed();
  v4 = [MEMORY[0x1E695DF70] array];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v84;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v84 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v83 + 1) + 8 * i);
        if (v3 & 1 | (([v10 requiresDiagnosticSendingPermission] & 1) == 0))
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v83 objects:v91 count:16];
    }

    while (v7);
  }

  v11 = [*(a1 + 32) count];
  if (v11 != [v4 count])
  {
    v12 = [*(a1 + 32) count];
    v13 = [v4 count];
    v14 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      LODWORD(v16) = v15 | 2;
    }

    else
    {
      LODWORD(v16) = v15;
    }

    v17 = [v14 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v87 = 138412546;
      v88 = v18;
      v89 = 2048;
      v90 = v12 - v13;
      v19 = v18;
      v20 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_1D48BA000, v17, 0, "[%@] User has opted not to send Apple diagnostic information. Dropped %li events that require it.", &v87, 22);

      if (!v20)
      {
LABEL_23:

        goto LABEL_24;
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog(v14, @"%@", v21, v22, v23, v24, v25, v26, v17);
    }

    goto LABEL_23;
  }

LABEL_24:
  if ([v4 count])
  {
    if ([WeakRetained isDisabled])
    {
      v27 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v27)
      {
        v27 = +[SSLogConfig sharedConfig];
      }

      v28 = [v27 shouldLog];
      if ([v27 shouldLogToDisk])
      {
        LODWORD(v29) = v28 | 2;
      }

      else
      {
        LODWORD(v29) = v28;
      }

      v30 = [v27 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v29 = v29;
      }

      else
      {
        v29 &= 2u;
      }

      if (v29)
      {
        v31 = objc_opt_class();
        v32 = v31;
        v33 = [v4 count];
        v87 = 138412546;
        v88 = v31;
        v89 = 2048;
        v90 = v33;
        LODWORD(v76) = 22;
        v34 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_1D48BA000, v30, 1, "[%@] Events dropped by disabled Event Controller: [%lu events]", &v87, v76);

        if (!v34)
        {
          goto LABEL_38;
        }

        v30 = [MEMORY[0x1E696AEC0] stringWithCString:v34 encoding:4];
        free(v34);
        SSFileLog(v27, @"%@", v35, v36, v37, v38, v39, v40, v30);
      }

LABEL_38:
      v41 = *(a1 + 48);
      if (v41)
      {
        v42 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __58__SSMetricsController_insertEvents_withCompletionHandler___block_invoke_61;
        block[3] = &unk_1E84ADED0;
        v80 = v41;
        dispatch_async(v42, block);

        v43 = v80;
LABEL_70:

        goto LABEL_71;
      }

      goto LABEL_71;
    }

    v59 = [WeakRetained configuration];
    v43 = [v59 reportingURLString];

    if ([v43 length])
    {
      [WeakRetained _serialQueueInsertEvents:v4 withCompletionHandler:*(a1 + 48)];
      goto LABEL_70;
    }

    v60 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v60)
    {
      v60 = +[SSLogConfig sharedConfig];
    }

    v61 = [v60 shouldLog];
    if ([v60 shouldLogToDisk])
    {
      LODWORD(v62) = v61 | 2;
    }

    else
    {
      LODWORD(v62) = v61;
    }

    v63 = [v60 OSLogObject];
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v62 = v62;
    }

    else
    {
      v62 &= 2u;
    }

    if (v62)
    {
      v64 = objc_opt_class();
      v65 = v64;
      v66 = [v4 count];
      v87 = 138412546;
      v88 = v64;
      v89 = 2048;
      v90 = v66;
      LODWORD(v76) = 22;
      v67 = _os_log_send_and_compose_impl(v62, 0, 0, 0, &dword_1D48BA000, v63, 0, "[%@] Events dropped by Event Controller with no report URL: [%lu events]", &v87, v76);

      if (!v67)
      {
        goto LABEL_68;
      }

      v63 = [MEMORY[0x1E696AEC0] stringWithCString:v67 encoding:4];
      free(v67);
      SSFileLog(v60, @"%@", v68, v69, v70, v71, v72, v73, v63);
    }

LABEL_68:
    v74 = *(a1 + 48);
    if (v74)
    {
      v75 = dispatch_get_global_queue(0, 0);
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __58__SSMetricsController_insertEvents_withCompletionHandler___block_invoke_60;
      v81[3] = &unk_1E84ADED0;
      v82 = v74;
      dispatch_async(v75, v81);
    }

    goto LABEL_70;
  }

  v44 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v44)
  {
    v44 = +[SSLogConfig sharedConfig];
  }

  v45 = [v44 shouldLog];
  if ([v44 shouldLogToDisk])
  {
    LODWORD(v46) = v45 | 2;
  }

  else
  {
    LODWORD(v46) = v45;
  }

  v47 = [v44 OSLogObject];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v46 = v46;
  }

  else
  {
    v46 &= 2u;
  }

  if (v46)
  {
    v48 = objc_opt_class();
    v87 = 138412290;
    v88 = v48;
    v49 = v48;
    LODWORD(v76) = 12;
    v50 = _os_log_send_and_compose_impl(v46, 0, 0, 0, &dword_1D48BA000, v47, 0, "[%@] Insert Events called with an empty array.", &v87, v76);

    if (!v50)
    {
      goto LABEL_52;
    }

    v47 = [MEMORY[0x1E696AEC0] stringWithCString:v50 encoding:4];
    free(v50);
    SSFileLog(v44, @"%@", v51, v52, v53, v54, v55, v56, v47);
  }

LABEL_52:
  v57 = *(a1 + 48);
  if (v57)
  {
    v58 = dispatch_get_global_queue(0, 0);
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __58__SSMetricsController_insertEvents_withCompletionHandler___block_invoke_62;
    v77[3] = &unk_1E84ADED0;
    v78 = v57;
    dispatch_async(v58, v77);

    v43 = v78;
    goto LABEL_70;
  }

LABEL_71:
}

- (id)locationWithPosition:(int64_t)position type:(id)type fieldData:(id)data
{
  v36 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dataCopy = data;
  v10 = objc_alloc_init(SSMetricsEventLocation);
  [(SSMetricsEventLocation *)v10 setLocationPosition:position];
  [(SSMetricsEventLocation *)v10 setLocationType:typeCopy];
  fieldsMap = [(SSMetricsConfiguration *)self->_configuration fieldsMap];
  v12 = [fieldsMap objectForKey:@"single"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __59__SSMetricsController_locationWithPosition_type_fieldData___block_invoke;
    v33[3] = &unk_1E84AE620;
    v34 = v10;
    [(SSMetricsController *)self _enumerateFieldValuesWithMap:v12 fieldData:dataCopy block:v33];
  }

  v13 = [fieldsMap objectForKey:@"multi"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __59__SSMetricsController_locationWithPosition_type_fieldData___block_invoke_2;
    v31[3] = &unk_1E84AE620;
    v32 = v10;
    [(SSMetricsController *)self _enumerateFieldValuesWithMap:v13 fieldData:dataCopy block:v31];
  }

  v14 = [fieldsMap objectForKey:@"custom"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v13;
    v25 = v12;
    v26 = typeCopy;
    v23 = v14;
    v15 = [v14 objectForKey:@"location"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [(SSMetricsController *)self _valueForField:v20 withFieldData:dataCopy];
            if (v21)
            {
              [(SSMetricsEventLocation *)v10 setValue:v21 forLocationKey:v20];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v17);
    }

    typeCopy = v26;
    v13 = v24;
    v12 = v25;
    v14 = v23;
  }

  return v10;
}

void *__59__SSMetricsController_locationWithPosition_type_fieldData___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) setValue:a3 forLocationKey:a2];
  *a4 = 1;
  return result;
}

- (void)recordAnalyticsForMetricsDialogEvent:(id)event withTopic:(id)topic
{
  v28 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  eventCopy = event;
  v8 = SSIsDaemon();
  if (!v8)
  {
    if (!SSIsInternalBuild(v8, v9) || !_os_feature_enabled_impl())
    {
      goto LABEL_20;
    }

    v10 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = shouldLog | 2;
    }

    else
    {
      v12 = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 2;
    }

    if (v14)
    {
      v26 = 136446210;
      v27 = "[SSMetricsController recordAnalyticsForMetricsDialogEvent:withTopic:]";

      if (!v15)
      {
LABEL_19:

LABEL_20:
        v22 = SSXPCCreateMessageDictionary(197);
        SSXPCDictionarySetObject(v22, "1", eventCopy);

        SSXPCDictionarySetObject(v22, "2", topicCopy);
        _connection = [(SSMetricsController *)self _connection];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __70__SSMetricsController_recordAnalyticsForMetricsDialogEvent_withTopic___block_invoke;
        v25[3] = &unk_1E84AEDD0;
        v25[4] = self;
        [_connection sendMessage:v22 withReply:v25];

        return;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
    }

    goto LABEL_19;
  }

  v24 = objc_alloc_init(NSClassFromString(&cfstr_Metricscontrol.isa));
  [v24 recordAnalyticsWithMetricsDialogEvent:eventCopy forTopic:topicCopy];
}

void __70__SSMetricsController_recordAnalyticsForMetricsDialogEvent_withTopic___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  if (v2 == MEMORY[0x1E69E9E18])
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v10 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v11) = v10 | 2;
    }

    else
    {
      LODWORD(v11) = v10;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (!v11)
    {
      goto LABEL_27;
    }

    *v25 = 138412290;
    *&v25[4] = objc_opt_class();
    v8 = *&v25[4];
    v9 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, v7, 16, "%@: Connection interrupted", v25, 12, *v25, *&v25[8]);
LABEL_24:
    v12 = v9;

    goto LABEL_25;
  }

  if (!v2 || MEMORY[0x1DA6E0380](v2) != MEMORY[0x1E69E9E80])
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v6) = v5 | 2;
    }

    else
    {
      LODWORD(v6) = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (!v6)
    {
      goto LABEL_27;
    }

    *v25 = 138412290;
    *&v25[4] = objc_opt_class();
    v8 = *&v25[4];
    v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, v7, 16, "%@: Invalid response", v25, 12, *v25, *&v25[8]);
    goto LABEL_24;
  }

  v19 = xpc_dictionary_get_BOOL(v3, "0");
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v20 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v21) = v20 | 2;
  }

  else
  {
    LODWORD(v21) = v20;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v21 = v21;
  }

  else
  {
    v21 &= 2u;
  }

  if (!v21)
  {
    goto LABEL_27;
  }

  v22 = objc_opt_class();
  v23 = @"NO";
  if (v19)
  {
    v23 = @"YES";
  }

  *v25 = 138412546;
  *&v25[4] = v22;
  *&v25[12] = 2112;
  *&v25[14] = v23;
  v24 = v22;
  v12 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_1D48BA000, v7, 1, "%@: Record analytics events did succeed: %@", v25, 22);

LABEL_25:
  if (v12)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog(v4, @"%@", v13, v14, v15, v16, v17, v18, v7);
LABEL_27:
  }
}

- (void)setGlobalConfiguration:(id)configuration
{
  configurationCopy = configuration;
  serialQueue = [(SSMetricsController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SSMetricsController_setGlobalConfiguration___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_sync(serialQueue, v7);
}

void __46__SSMetricsController_setGlobalConfiguration___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 24) != v2)
  {
    [v2 reportingFrequency];
    v5 = v4;
    [*(*(a1 + 32) + 24) reportingFrequency];
    if (v5 != v6)
    {
      [*(a1 + 32) setFlushTimerEnabled:0];
    }

    v7 = [*(*(a1 + 32) + 24) childConfiguration];
    objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
    [*(*(a1 + 32) + 24) setChildConfiguration:v7];
  }
}

- (void)setPageConfiguration:(id)configuration
{
  configurationCopy = configuration;
  serialQueue = [(SSMetricsController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SSMetricsController_setPageConfiguration___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_sync(serialQueue, v7);
}

void *__44__SSMetricsController_setPageConfiguration___block_invoke(void *result)
{
  if (*(result[4] + 24))
  {
    return [*(result[4] + 24) setChildConfiguration:result[5]];
  }

  return result;
}

- (void)_enumerateFieldValuesWithMap:(id)map fieldData:(id)data block:(id)block
{
  dataCopy = data;
  blockCopy = block;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__SSMetricsController__enumerateFieldValuesWithMap_fieldData_block___block_invoke;
  v12[3] = &unk_1E84AEDF8;
  v12[4] = self;
  v13 = dataCopy;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = dataCopy;
  [map enumerateKeysAndObjectsUsingBlock:v12];
}

void __68__SSMetricsController__enumerateFieldValuesWithMap_fieldData_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [*(a1 + 32) _valueForField:v12 withFieldData:*(a1 + 40)];
              if (v13)
              {
                (*(*(a1 + 48) + 16))();
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }
}

- (id)_valueForField:(id)field withFieldData:(id)data
{
  fieldCopy = field;
  dataCopy = data;
  v8 = [(SSMetricsConfiguration *)self->_configuration valueForConfigurationKey:fieldCopy];
  if (!v8)
  {
    v8 = [dataCopy valueForMetricsField:fieldCopy];
  }

  return v8;
}

- (id)_userType
{
  v2 = +[SSVSubscriptionStatusCoordinator sharedCoordinator];
  lastKnownStatus = [v2 lastKnownStatus];

  accountStatus = [lastKnownStatus accountStatus];
  if (accountStatus > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E84AEE18[accountStatus];
  }

  return v5;
}

@end