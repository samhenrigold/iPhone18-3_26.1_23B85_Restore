@interface PurchaseManagerClient
- (BOOL)finishesPurchases;
- (BOOL)useRemoteAuthentication;
- (PurchaseManagerClient)initWithInputConnection:(id)connection;
- (int64_t)URLBagType;
- (int64_t)uniqueIdentifier;
- (void)ackConnection;
- (void)dealloc;
- (void)postNotificationWithResponse:(id)response;
- (void)sendAuthenticateRequestWithContext:(id)context responseHandler:(id)handler;
- (void)sendError:(id)error forPurchases:(id)purchases;
- (void)sendResponse:(id)response;
- (void)sendResponse:(id)response forPurchases:(id)purchases;
- (void)sendResponses:(id)responses;
- (void)setFinishesPurchases:(BOOL)purchases;
- (void)setUniqueIdentifier:(int64_t)identifier;
- (void)setUseRemoteAuthentication:(BOOL)authentication;
@end

@implementation PurchaseManagerClient

- (void)ackConnection
{
  dispatchQueue = self->super._dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004514;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)finishesPurchases
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000459C;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)uniqueIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004670;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (PurchaseManagerClient)initWithInputConnection:(id)connection
{
  v6.receiver = self;
  v6.super_class = PurchaseManagerClient;
  v3 = [(XPCClient *)&v6 initWithInputConnection:connection];
  if (v3)
  {
    v4 = CFUUIDCreate(0);
    v3->_uniqueIdentifier = *&CFUUIDGetUUIDBytes(v4);
    CFRelease(v4);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PurchaseManagerClient;
  [(XPCClient *)&v3 dealloc];
}

- (void)sendAuthenticateRequestWithContext:(id)context responseHandler:(id)handler
{
  dispatchQueue = self->super._dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002134D4;
  block[3] = &unk_10032AF90;
  block[4] = self;
  block[5] = context;
  block[6] = handler;
  dispatch_async(dispatchQueue, block);
}

- (void)sendError:(id)error forPurchases:(id)purchases
{
  v8 = objc_alloc_init(SSPurchaseResponse);
  userInfo = [error userInfo];
  [v8 setCancelsPurchaseBatch:{objc_msgSend(objc_msgSend(userInfo, "objectForKey:", SSPurchaseErrorKeyShouldCancelPurchaseBatch), "BOOLValue")}];
  [v8 setError:error];
  [(PurchaseManagerClient *)self sendResponse:v8 forPurchases:purchases];
  if ([purchases count])
  {
    [(PurchaseManagerClient *)self postNotificationWithResponse:v8];
  }
}

- (void)sendResponse:(id)response
{
  v4 = [[NSArray alloc] initWithObjects:{response, 0}];
  [(PurchaseManagerClient *)self sendResponses:v4];
}

- (void)sendResponse:(id)response forPurchases:(id)purchases
{
  dispatchQueue = self->super._dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100213FCC;
  block[3] = &unk_1003273E0;
  block[4] = self;
  block[5] = purchases;
  block[6] = response;
  dispatch_async(dispatchQueue, block);
}

- (void)sendResponses:(id)responses
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002141FC;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = responses;
  dispatch_async(dispatchQueue, v4);
}

- (void)postNotificationWithResponse:(id)response
{
  error = [response error];
  v5 = +[SSLogConfig sharedDaemonConfig];
  v6 = v5;
  if (error)
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v39 = 138543362;
      v40 = objc_opt_class();
      v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 2, "[%{public}@] Purchase failed, not sending purchase succeeded notification", &v39, 12);
      if (v10)
      {
        v11 = v10;
        [NSString stringWithCString:v10 encoding:4];
        free(v11);
        SSFileLog();
      }
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v13) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog2;
    }

    oSLogObject2 = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v39 = 138543362;
      v40 = objc_opt_class();
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject2, 2, "[%{public}@] Will send purchase succeeded notification", &v39, 12);
      if (v15)
      {
        v16 = v15;
        v17 = [NSString stringWithCString:v15 encoding:4];
        free(v16);
        v34 = v17;
        SSFileLog();
      }
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [NSKeyedArchiver setClassName:v19 forClass:objc_opt_class()];
    v36 = 0;
    v20 = [NSKeyedArchiver archivedDataWithRootObject:response requiringSecureCoding:1 error:&v36];
    if (v36)
    {
      v21 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v21)
      {
        v21 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v21 shouldLog];
      if ([v21 shouldLogToDisk])
      {
        LODWORD(v23) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v23) = shouldLog3;
      }

      oSLogObject3 = [v21 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v23 = v23;
      }

      else
      {
        v23 &= 2u;
      }

      if (v23)
      {
        v25 = objc_opt_class();
        v39 = 138543618;
        v40 = v25;
        v41 = 2114;
        v42 = v36;
        LODWORD(v35) = 22;
        v26 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%{public}@: Failed to archive response. Error = %{public}@", &v39, v35);
        if (v26)
        {
          v27 = v26;
          [NSString stringWithCString:v26 encoding:4];
          free(v27);
          SSFileLog();
        }
      }
    }

    v28 = [NSMutableDictionary alloc];
    v37 = @"response";
    v38 = v20;
    v29 = [v28 initWithDictionary:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v38, &v37, 1)}];
    v30 = +[AMSBuyParams buyParamsWithString:](AMSBuyParams, "buyParamsWithString:", [objc_msgSend(response "purchase")]);
    v31 = [(AMSBuyParams *)v30 propertyForKey:AMSBuyParamPropertyClientCorrelationKey];
    if (v31)
    {
      [v29 setObject:v31 forKeyedSubscript:@"clientCorrelationKey"];
    }

    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterPostNotification(DistributedCenter, kSSPurchaseRequestSucceededNotification, 0, [v29 copy], 1u);
    v33 = +[EventDispatcher eventDispatcher];
    [v33 postEventWithName:SSEventNamePurchaseSucceeded userInfo:v29];
  }
}

- (void)setFinishesPurchases:(BOOL)purchases
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002148A8;
  v4[3] = &unk_100327830;
  v4[4] = self;
  purchasesCopy = purchases;
  dispatch_async(dispatchQueue, v4);
}

- (void)setUniqueIdentifier:(int64_t)identifier
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100214940;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = identifier;
  dispatch_async(dispatchQueue, v4);
}

- (void)setUseRemoteAuthentication:(BOOL)authentication
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002149D8;
  v4[3] = &unk_100327830;
  v4[4] = self;
  authenticationCopy = authentication;
  dispatch_async(dispatchQueue, v4);
}

- (int64_t)URLBagType
{
  if ([(XPCClient *)self hasEntitlements])
  {
    return 0;
  }

  else
  {
    return [(XPCClient *)self isAppleSigned]^ 1;
  }
}

- (BOOL)useRemoteAuthentication
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100214AE4;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end