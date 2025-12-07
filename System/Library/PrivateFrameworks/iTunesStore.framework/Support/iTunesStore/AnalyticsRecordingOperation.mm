@interface AnalyticsRecordingOperation
- (AnalyticsRecordingOperation)initWithMetricsEvents:(id)events;
- (void)run;
@end

@implementation AnalyticsRecordingOperation

- (AnalyticsRecordingOperation)initWithMetricsEvents:(id)events
{
  eventsCopy = events;
  v9.receiver = self;
  v9.super_class = AnalyticsRecordingOperation;
  v6 = [(AnalyticsRecordingOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_events, events);
  }

  return v7;
}

- (void)run
{
  if (![(NSArray *)self->_events count])
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v6) = shouldLog | 2;
    }

    else
    {
      LODWORD(v6) = shouldLog;
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v107 = 138412290;
      v108 = objc_opt_class();
      v8 = v108;
      v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@ no events to report", &v107, 12);

      if (!v9)
      {
LABEL_16:

        [(AnalyticsRecordingOperation *)self setSuccess:1];
        return;
      }

      oSLogObject = [NSString stringWithCString:v9 encoding:4];
      free(v9);
      SSFileLog();
    }

    goto LABEL_16;
  }

  if ([(NSString *)self->_eventTopicOverride length])
  {
    eventTopicOverride = self->_eventTopicOverride;
  }

  else
  {
    eventTopicOverride = @"xp_its_main";
  }

  v83 = eventTopicOverride;
  v10 = +[SSAccountStore defaultStore];
  activeAccount = [v10 activeAccount];

  v12 = +[SSVCookieStorage sharedStorage];
  v81 = activeAccount;
  v13 = [v12 allCookiesForAccount:activeAccount];

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v14 = v13;
  value = [v14 countByEnumeratingWithState:&v99 objects:v106 count:16];
  if (value)
  {
    v16 = *v100;
    while (2)
    {
      for (i = 0; i != value; i = i + 1)
      {
        if (*v100 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v99 + 1) + 8 * i);
        name = [v18 name];
        v20 = [name isEqualToString:@"xp_ci"];

        if (v20)
        {
          value = [v18 value];
          goto LABEL_28;
        }
      }

      value = [v14 countByEnumeratingWithState:&v99 objects:v106 count:16];
      if (value)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  if ([value length])
  {
    v80 = v14;
  }

  else
  {
    v21 = +[SSVCookieStorage sharedStorage];
    v22 = [v21 allCookiesForUserIdentifier:&off_10034C1F8];

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v95 objects:v105 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v96;
      while (2)
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v96 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v95 + 1) + 8 * j);
          name2 = [v28 name];
          v30 = [name2 isEqualToString:@"xp_ci"];

          if (v30)
          {
            value2 = [v28 value];

            value = value2;
            goto LABEL_40;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v95 objects:v105 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:
    v80 = v23;
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v32 = self->_events;
  v33 = [(NSArray *)v32 countByEnumeratingWithState:&v91 objects:v104 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v92;
    do
    {
      for (k = 0; k != v34; k = k + 1)
      {
        if (*v92 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v91 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v37 setTopic:v83];
          if (value)
          {
            [v37 setProperty:value forBodyKey:@"clientId"];
          }

          if (self->_appBundleId)
          {
            [v37 setApplicationIdentifier:?];
          }
        }
      }

      v34 = [(NSArray *)v32 countByEnumeratingWithState:&v91 objects:v104 count:16];
    }

    while (v34);
  }

  v38 = +[AMSMetrics bagSubProfile];
  v39 = +[AMSMetrics bagSubProfileVersion];
  v40 = [AMSBag bagForProfile:v38 profileVersion:v39];

  if (_os_feature_enabled_impl() && [v40 asd_iTunesStoreMetricsIsEnabled])
  {
    v41 = [[AMSMetrics alloc] initWithContainerID:@"com.apple.AppleMediaServices" bag:v40];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v42 = self->_events;
    v43 = [(NSArray *)v42 countByEnumeratingWithState:&v87 objects:v103 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v88;
      do
      {
        for (m = 0; m != v44; m = m + 1)
        {
          if (*v88 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v87 + 1) + 8 * m);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = [AMSMetricsEvent alloc];
            bodyDictionary = [v47 bodyDictionary];
            v50 = [v48 initWithUnderlyingDictionary:bodyDictionary];

            [v41 enqueueEvent:v50];
          }
        }

        v44 = [(NSArray *)v42 countByEnumeratingWithState:&v87 objects:v103 count:16];
      }

      while (v44);
      v51 = v41;
      v52 = v80;
    }

    else
    {
      v51 = v41;
      v52 = v80;
    }

    goto LABEL_97;
  }

  v53 = objc_alloc_init(ISLoadURLBagOperation);
  v86 = 0;
  [(AnalyticsRecordingOperation *)self runSubOperation:v53 returningError:&v86];
  v42 = v86;
  uRLBag = [v53 URLBag];
  v55 = uRLBag;
  if (!v42 && uRLBag)
  {
    v51 = v53;
    v56 = [uRLBag valueForKey:SSMetricsURLBagKey];
    if ([v56 count])
    {
      v57 = [[SSMetricsConfiguration alloc] initWithGlobalConfiguration:v56];
      v58 = objc_alloc_init(SSMetricsController);
      metricsController = self->_metricsController;
      self->_metricsController = v58;
      v60 = v58;

      [(SSMetricsController *)v60 setGlobalConfiguration:v57];
      events = self->_events;
      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v85[2] = sub_10020C6D4;
      v85[3] = &unk_1003276D0;
      v85[4] = self;
      [(SSMetricsController *)v60 insertEvents:events withCompletionHandler:v85];
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 3221225472;
      v84[2] = sub_10020C870;
      v84[3] = &unk_1003276D0;
      v84[4] = self;
      [(SSMetricsController *)v60 flushUnreportedEventsWithCompletionHandler:v84];
      [(AnalyticsRecordingOperation *)self setSuccess:1];

      v52 = v80;
LABEL_95:

      goto LABEL_96;
    }

    v82 = v56;
    v71 = +[SSLogConfig sharedDaemonConfig];
    if (!v71)
    {
      v71 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v71 shouldLog];
    if ([v71 shouldLogToDisk])
    {
      v73 = shouldLog2 | 2;
    }

    else
    {
      v73 = shouldLog2;
    }

    oSLogObject2 = [v71 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v75 = v73;
    }

    else
    {
      v75 = v73 & 2;
    }

    if (v75)
    {
      v76 = objc_opt_class();
      v107 = 138412290;
      v108 = v76;
      v77 = v55;
      v78 = v76;
      v79 = _os_log_send_and_compose_impl(v75, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@ could not get metrics dict from url bag", &v107, 12);

      v55 = v77;
      if (!v79)
      {
LABEL_94:

        [(AnalyticsRecordingOperation *)self setSuccess:0];
        v52 = v80;
        v56 = v82;
        goto LABEL_95;
      }

      oSLogObject2 = [NSString stringWithCString:v79 encoding:4];
      free(v79);
      SSFileLog();
    }

    goto LABEL_94;
  }

  v51 = v53;
  v62 = +[SSLogConfig sharedDaemonConfig];
  if (!v62)
  {
    v62 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v62 shouldLog];
  if ([v62 shouldLogToDisk])
  {
    v64 = shouldLog3 | 2;
  }

  else
  {
    v64 = shouldLog3;
  }

  oSLogObject3 = [v62 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v66 = v64;
  }

  else
  {
    v66 = v64 & 2;
  }

  if (!v66)
  {
    goto LABEL_80;
  }

  v67 = objc_opt_class();
  v107 = 138412290;
  v108 = v67;
  v68 = v55;
  v69 = v67;
  v70 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@ could not load URL bag", &v107, 12);

  v55 = v68;
  if (v70)
  {
    oSLogObject3 = [NSString stringWithCString:v70 encoding:4];
    free(v70);
    SSFileLog();
LABEL_80:
  }

  [(AnalyticsRecordingOperation *)self setSuccess:0];
  v52 = v80;
LABEL_96:

LABEL_97:
}

@end