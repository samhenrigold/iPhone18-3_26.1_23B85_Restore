@interface SubscriptionEntitlementsOperation
- (id)_fetchSubscriptionEntitlements:(id *)entitlements;
- (void)run;
@end

@implementation SubscriptionEntitlementsOperation

- (void)run
{
  subscriptionEntitlementsBlock = [(SubscriptionEntitlementsOperation *)self subscriptionEntitlementsBlock];
  v16 = 0;
  if ([(SubscriptionEntitlementsOperation *)self ignoreCaches])
  {
    v4 = 0;
  }

  else
  {
    v4 = [SSVSubscriptionEntitlementsCoordinator cachedSubscriptionEntitlementsExpired:&v16];
    if (v4 && v16 != 1)
    {
      v13 = 0;
      goto LABEL_20;
    }
  }

  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  v9 = objc_opt_class();
  v17 = 138412290;
  v18 = v9;
  v10 = v9;
  v11 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Fetching subscription entitlements from the server.", &v17, 12);

  if (v11)
  {
    oSLogObject = [NSString stringWithCString:v11 encoding:4];
    free(v11);
    SSFileLog();
LABEL_16:
  }

  v15 = 0;
  v12 = [(SubscriptionEntitlementsOperation *)self _fetchSubscriptionEntitlements:&v15];
  v13 = v15;
  if (!v13)
  {
    v14 = v12;

    v4 = v14;
  }

LABEL_20:
  (subscriptionEntitlementsBlock)[2](subscriptionEntitlementsBlock, v4, v13);
  [(SubscriptionEntitlementsOperation *)self setError:v13];
  [(SubscriptionEntitlementsOperation *)self setSubscriptionEntitlementsBlock:0];
  [(SubscriptionEntitlementsOperation *)self setSuccess:1];
}

- (id)_fetchSubscriptionEntitlements:(id *)entitlements
{
  v5 = objc_alloc_init(ISStoreURLOperation);
  [v5 setCanSendGUIDParameter:0];
  v6 = +[DaemonProtocolDataProvider provider];
  [v5 setDataProvider:v6];

  v7 = objc_alloc_init(SSMutableURLRequestProperties);
  [v7 setURLBagKey:@"fsEntitlementsSrv"];
  [v5 setRequestProperties:v7];
  v25 = 0;
  v8 = [(SubscriptionEntitlementsOperation *)self runSubOperation:v5 returningError:&v25];
  v9 = v25;
  response = [v5 response];
  objc_opt_class();
  objc_opt_class();
  response2 = 0;
  if (objc_opt_isKindOfClass())
  {
    response2 = [v5 response];
  }

  statusCode = [response2 statusCode];
  if (statusCode == 200)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == 1)
  {
    dataProvider = [v5 dataProvider];
    output = [dataProvider output];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = 0;
      goto LABEL_22;
    }

    v16 = [output objectForKey:@"status"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 integerValue])
    {
      v17 = [output objectForKey:@"errorNumber"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      [v18 integerValue];
      v19 = [output objectForKey:@"errorMessage"];
      v24 = SSError();

      v20 = 0;
      v9 = v24;
    }

    else
    {
      v17 = [output objectForKeyedSubscript:@"entitlements"];
      v20 = [SSVSubscriptionEntitlements _parseJSONDictionary:v17];
      [SSVSubscriptionEntitlementsCoordinator setCachedSubscriptionEntitlements:v17];
    }
  }

  else
  {
    if (v9)
    {
      v20 = 0;
      if (!entitlements)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v21 = statusCode;
    v16 = SSError();
    output = [NSNumber numberWithInteger:v21];
    v9 = SSErrorBySettingUserInfoValue();
    v20 = 0;
  }

LABEL_22:
  if (!entitlements)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (!v20)
  {
    v22 = v9;
    *entitlements = v9;
  }

LABEL_25:

  return v20;
}

@end