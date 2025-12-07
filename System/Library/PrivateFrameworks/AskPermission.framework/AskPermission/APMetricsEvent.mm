@interface APMetricsEvent
+ (id)metricsEventWithAccount:(id)account request:(id)request;
+ (id)nonIdentifiableMetricsFieldsForAccount:(id)account;
- (APMetricsEvent)initWithAccount:(id)account request:(id)request;
@end

@implementation APMetricsEvent

- (APMetricsEvent)initWithAccount:(id)account request:(id)request
{
  accountCopy = account;
  requestCopy = request;
  metricsTopic = [requestCopy metricsTopic];
  metricsApp = [requestCopy metricsApp];
  v24.receiver = self;
  v24.super_class = APMetricsEvent;
  v10 = [(APMetricsEvent *)&v24 initWithTopic:metricsTopic];
  v11 = v10;
  if (v10)
  {
    [(APMetricsEvent *)v10 setEventVersion:&unk_2852E2360];
    [(APMetricsEvent *)v11 setProperty:metricsApp forBodyKey:@"app"];
    ams_DSID = [accountCopy ams_DSID];
    [(APMetricsEvent *)v11 setProperty:ams_DSID forBodyKey:@"dsId"];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(accountCopy, "isAuthenticated")}];
    stringValue = [v13 stringValue];
    [(APMetricsEvent *)v11 setProperty:stringValue forBodyKey:@"isSignedIn"];

    itemIdentifier = [requestCopy itemIdentifier];
    [(APMetricsEvent *)v11 setProperty:itemIdentifier forBodyKey:@"pageId"];

    operatingSystem = [MEMORY[0x277CEE470] operatingSystem];
    [(APMetricsEvent *)v11 setProperty:operatingSystem forBodyKey:@"os"];

    buildVersion = [MEMORY[0x277CEE470] buildVersion];
    [(APMetricsEvent *)v11 setProperty:buildVersion forBodyKey:@"osBuildNumber"];

    ams_storefront = [accountCopy ams_storefront];
    v19 = ams_storefront;
    if (ams_storefront)
    {
      v20 = ams_storefront;
    }

    else
    {
      v20 = @"Unknown";
    }

    [(APMetricsEvent *)v11 setProperty:v20 forBodyKey:@"storeFrontHeader"];

    metricsID = [requestCopy metricsID];

    if (metricsID)
    {
      metricsID2 = [requestCopy metricsID];
      [(APMetricsEvent *)v11 setProperty:metricsID2 forBodyKey:@"purchaseAuthorizationId"];
    }
  }

  return v11;
}

+ (id)metricsEventWithAccount:(id)account request:(id)request
{
  v54 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  requestCopy = request;
  v9 = +[APLogConfig sharedFrameworkConfig];
  if (!v9)
  {
    v9 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = requestCopy;
    v12 = accountCopy;
    v13 = AMSLogKey();
    v14 = MEMORY[0x277CCACA8];
    selfCopy = self;
    v15 = objc_opt_class();
    v40 = a2;
    if (v13)
    {
      v16 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [v14 stringWithFormat:@"%@: [%@] %@ ", v15, v16, a2];
    }

    else
    {
      v16 = NSStringFromSelector(a2);
      [v14 stringWithFormat:@"%@: %@ ", v15, v16];
    }
    v17 = ;
    v18 = AMSHashIfNeeded();
    v19 = AMSHashIfNeeded();
    *buf = 138543874;
    v49 = v17;
    v50 = 2114;
    v51 = v18;
    v52 = 2114;
    v53 = v19;
    _os_log_impl(&dword_241063000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Creating metrics event. Account: %{public}@ | Request: %{public}@", buf, 0x20u);
    if (v13)
    {

      v17 = a2;
    }

    accountCopy = v12;
    requestCopy = v11;
    a2 = v40;
    self = selfCopy;
  }

  lineOfBusiness = [requestCopy lineOfBusiness];
  v21 = +[APLogConfig sharedFrameworkConfig];
  v22 = v21;
  if (lineOfBusiness == 1)
  {
    if (!v21)
    {
      v22 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v24 = a2;
      v25 = AMSLogKey();
      v26 = MEMORY[0x277CCACA8];
      selfCopy2 = self;
      v27 = objc_opt_class();
      if (v25)
      {
        v28 = AMSLogKey();
        self = NSStringFromSelector(v24);
        [v26 stringWithFormat:@"%@: [%@] %@ ", v27, v28, self];
      }

      else
      {
        v28 = NSStringFromSelector(v24);
        [v26 stringWithFormat:@"%@: %@ ", v27, v28];
      }
      selfCopy3 = ;
      *buf = 138543362;
      v49 = selfCopy3;
      _os_log_impl(&dword_241063000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Request is for App Store LOB.", buf, 0xCu);
      if (v25)
      {

        selfCopy3 = self;
      }

      a2 = v24;
      self = selfCopy2;
    }

    v36 = [self nonIdentifiableMetricsFieldsForAccount:accountCopy];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __50__APMetricsEvent_metricsEventWithAccount_request___block_invoke;
    v43[3] = &unk_278CC1690;
    selfCopy4 = self;
    v47 = a2;
    v44 = accountCopy;
    v45 = requestCopy;
    v37 = [(APMetricsEvent *)v36 continueWithBlock:v43];
  }

  else
  {
    if (!v21)
    {
      v22 = +[APLogConfig sharedConfig];
    }

    oSLogObject3 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v31 = AMSLogKey();
      v32 = MEMORY[0x277CCACA8];
      v33 = objc_opt_class();
      if (v31)
      {
        v34 = AMSLogKey();
        self = NSStringFromSelector(a2);
        [v32 stringWithFormat:@"%@: [%@] %@ ", v33, v34, self];
      }

      else
      {
        v34 = NSStringFromSelector(a2);
        [v32 stringWithFormat:@"%@: %@ ", v33, v34];
      }
      selfCopy5 = ;
      *buf = 138543362;
      v49 = selfCopy5;
      _os_log_impl(&dword_241063000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@LOB is not App Store. Enqueueing standard metrics.", buf, 0xCu);
      if (v31)
      {

        selfCopy5 = self;
      }
    }

    v38 = MEMORY[0x277CEE630];
    v36 = [[APMetricsEvent alloc] initWithAccount:accountCopy request:requestCopy];
    v37 = [v38 promiseWithResult:v36];
  }

  return v37;
}

id __50__APMetricsEvent_metricsEventWithAccount_request___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = +[APLogConfig sharedFrameworkConfig];
  v9 = v8;
  if (!v6 || v7)
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v16 = [v9 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v7;
      v18 = AMSLogKey();
      v19 = MEMORY[0x277CCACA8];
      v20 = objc_opt_class();
      if (v18)
      {
        v21 = AMSLogKey();
        v3 = NSStringFromSelector(*(a1 + 56));
        [v19 stringWithFormat:@"%@: [%@] %@ ", v20, v21, v3];
      }

      else
      {
        v21 = NSStringFromSelector(*(a1 + 56));
        [v19 stringWithFormat:@"%@: %@ ", v20, v21];
      }
      v22 = ;
      v23 = AMSLogableError();
      *buf = 138543618;
      v34 = v22;
      v35 = 2114;
      v36 = v23;
      _os_log_impl(&dword_241063000, v16, OS_LOG_TYPE_ERROR, "%{public}@Error obtaining metrics fields: %{public}@", buf, 0x16u);
      if (v18)
      {

        v22 = v3;
      }

      v7 = v17;
    }

    v24 = MEMORY[0x277CEE630];
    v25 = [[APMetricsEvent alloc] initWithAccount:*(a1 + 32) request:*(a1 + 40)];
    v26 = [v24 promiseWithResult:v25];
  }

  else
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = AMSLogKey();
      v12 = MEMORY[0x277CCACA8];
      v13 = objc_opt_class();
      if (v11)
      {
        v14 = AMSLogKey();
        v3 = NSStringFromSelector(*(a1 + 56));
        [v12 stringWithFormat:@"%@: [%@] %@ ", v13, v14, v3];
      }

      else
      {
        v14 = NSStringFromSelector(*(a1 + 56));
        [v12 stringWithFormat:@"%@: %@ ", v13, v14];
      }
      v15 = ;
      v27 = AMSHashIfNeeded();
      *buf = 138543618;
      v34 = v15;
      v35 = 2114;
      v36 = v27;
      _os_log_impl(&dword_241063000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Obtained metrics fields: %{public}@", buf, 0x16u);
      if (v11)
      {

        v15 = v3;
      }
    }

    v25 = [v6 objectForKeyedSubscript:@"userId"];
    v28 = [v6 objectForKeyedSubscript:@"xpAccountsMatch"];
    v29 = [v6 objectForKeyedSubscript:@"xpUserIdSyncState"];
    v30 = [v6 objectForKeyedSubscript:@"clientId"];
    v31 = [[APMetricsEvent alloc] initWithAccount:*(a1 + 32) request:*(a1 + 40)];
    [(APMetricsEvent *)v31 setProperty:0 forBodyKey:@"dsId"];
    [(APMetricsEvent *)v31 setProperty:v25 forBodyKey:@"userId"];
    [(APMetricsEvent *)v31 setProperty:v30 forBodyKey:@"clientId"];
    [(APMetricsEvent *)v31 setProperty:@"APPSTORE_ENGAGEMENT" forBodyKey:@"userNs"];
    [(APMetricsEvent *)v31 setProperty:v28 forBodyKey:@"xpAccountsMatch"];
    [(APMetricsEvent *)v31 setProperty:v29 forBodyKey:@"xpUserIdSyncState"];
    v26 = [MEMORY[0x277CEE630] promiseWithResult:v31];

    v7 = 0;
  }

  return v26;
}

+ (id)nonIdentifiableMetricsFieldsForAccount:(id)account
{
  v32 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v7 = +[APLogConfig sharedFrameworkConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    if (v9)
    {
      v12 = AMSLogKey();
      v3 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: [%@] %@ ", v11, v12, v3];
    }

    else
    {
      v12 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: %@ ", v11, v12];
    }
    v13 = ;
    v14 = AMSHashIfNeeded();
    *buf = 138543618;
    v29 = v13;
    v30 = 2114;
    v31 = v14;
    _os_log_impl(&dword_241063000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Generating metrics fields for account: %{public}@", buf, 0x16u);
    if (v9)
    {

      v13 = v3;
    }
  }

  v15 = MEMORY[0x277CEE5B8];
  mEMORY[0x277CEE3F8] = [MEMORY[0x277CEE3F8] sharedBag];
  v17 = [v15 identifierStoreWithAccount:accountCopy bagNamespace:@"APPSTORE_ENGAGEMENT" bag:mEMORY[0x277CEE3F8]];

  v18 = MEMORY[0x277CEE5B8];
  mEMORY[0x277CEE3F8]2 = [MEMORY[0x277CEE3F8] sharedBag];
  v20 = [v18 identifierForAccount:accountCopy bag:mEMORY[0x277CEE3F8]2 bagNamespace:@"APPSTORE_ENGAGEMENT_CLIENT" keyName:@"clientId"];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __57__APMetricsEvent_nonIdentifiableMetricsFieldsForAccount___block_invoke;
  v24[3] = &unk_278CC16E0;
  selfCopy = self;
  v27 = a2;
  v25 = v17;
  v21 = v17;
  v22 = [v20 continueWithBlock:v24];

  return v22;
}

id __57__APMetricsEvent_nonIdentifiableMetricsFieldsForAccount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = +[APLogConfig sharedFrameworkConfig];
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = AMSLogKey();
      v12 = MEMORY[0x277CCACA8];
      v13 = objc_opt_class();
      if (v11)
      {
        v14 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 48));
        [v12 stringWithFormat:@"%@: [%@] %@ ", v13, v14, a1];
      }

      else
      {
        v14 = NSStringFromSelector(*(a1 + 48));
        [v12 stringWithFormat:@"%@: %@ ", v13, v14];
      }
      v15 = ;
      v22 = AMSLogableError();
      *buf = 138543618;
      v31 = v15;
      v32 = 2112;
      v33 = v22;
      _os_log_impl(&dword_241063000, v10, OS_LOG_TYPE_ERROR, "%{public}@Error loading Metrics clientID: %@", buf, 0x16u);
      if (v11)
      {

        v15 = a1;
      }
    }

    v23 = [MEMORY[0x277CEE630] promiseWithError:v7];
  }

  else
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v16 = [v9 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = AMSLogKey();
      v18 = MEMORY[0x277CCACA8];
      v19 = objc_opt_class();
      if (v17)
      {
        v20 = AMSLogKey();
        v3 = NSStringFromSelector(*(a1 + 48));
        [v18 stringWithFormat:@"%@: [%@] %@ ", v19, v20, v3];
      }

      else
      {
        v20 = NSStringFromSelector(*(a1 + 48));
        [v18 stringWithFormat:@"%@: %@ ", v19, v20];
      }
      v21 = ;
      v24 = AMSHashIfNeeded();
      *buf = 138543618;
      v31 = v21;
      v32 = 2112;
      v33 = v24;
      _os_log_impl(&dword_241063000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Loaded Metrics clientID: %@", buf, 0x16u);
      if (v17)
      {

        v21 = v3;
      }
    }

    v25 = *(a1 + 32);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __57__APMetricsEvent_nonIdentifiableMetricsFieldsForAccount___block_invoke_61;
    v27[3] = &unk_278CC16B8;
    v29 = *(a1 + 40);
    v28 = v6;
    v23 = [v25 continueWithBlock:v27];
  }

  return v23;
}

id __57__APMetricsEvent_nonIdentifiableMetricsFieldsForAccount___block_invoke_61(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[APLogConfig sharedFrameworkConfig];
    if (!v7)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = AMSLogKey();
      v10 = MEMORY[0x277CCACA8];
      v11 = objc_opt_class();
      if (v9)
      {
        v12 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 48));
        [v10 stringWithFormat:@"%@: [%@] %@ ", v11, v12, a1];
      }

      else
      {
        v12 = NSStringFromSelector(*(a1 + 48));
        [v10 stringWithFormat:@"%@: %@ ", v11, v12];
      }
      v13 = ;
      v25 = AMSLogableError();
      *buf = 138543618;
      v32 = v13;
      v33 = 2112;
      v34 = v25;
      _os_log_impl(&dword_241063000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error loading Metrics Store for userID: %@", buf, 0x16u);
      if (v9)
      {

        v13 = a1;
      }
    }

    v26 = [MEMORY[0x277CEE630] promiseWithError:v6];
  }

  else
  {
    [v5 setIncludeAccountMatchStatus:1];
    v14 = [MEMORY[0x277CEE5B0] keyWithName:@"userId" crossDeviceSync:1];
    v30 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v16 = [v5 generateEventFieldsForKeys:v15];
    v17 = [v16 mutableCopy];

    v18 = +[APLogConfig sharedFrameworkConfig];
    if (!v18)
    {
      v18 = +[APLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = AMSLogKey();
      v21 = MEMORY[0x277CCACA8];
      v22 = objc_opt_class();
      if (v20)
      {
        v23 = AMSLogKey();
        v29 = NSStringFromSelector(*(a1 + 48));
        [v21 stringWithFormat:@"%@: [%@] %@ ", v22, v23, v29];
      }

      else
      {
        v23 = NSStringFromSelector(*(a1 + 48));
        [v21 stringWithFormat:@"%@: %@ ", v22, v23];
      }
      v24 = ;
      v27 = AMSHashIfNeeded();
      *buf = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = v27;
      _os_log_impl(&dword_241063000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Loaded Metrics event fields: %@", buf, 0x16u);
      if (v20)
      {

        v24 = v29;
      }
    }

    [v17 setObject:*(a1 + 32) forKeyedSubscript:@"clientId"];
    v26 = [MEMORY[0x277CEE630] promiseWithResult:v17];
  }

  return v26;
}

@end