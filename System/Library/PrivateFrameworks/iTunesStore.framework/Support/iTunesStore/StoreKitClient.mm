@interface StoreKitClient
- (BOOL)_isPaymentRestricted;
- (BOOL)addPaymentTransaction:(id)transaction withOptions:(id)options;
- (BOOL)buyMicroPaymentOperation:(id)operation shouldContinueWithNewStorefront:(id)storefront;
- (BOOL)finishPaymentWithMessage:(id)message;
- (BOOL)isEqualToXPCConnection:(id)connection paymentQueueClient:(id)client;
- (BOOL)isSandboxed;
- (BOOL)removePaymentWithObjectID:(id)d;
- (NSArray)openTransactions;
- (NSManagedObjectID)firstReadyPaymentID;
- (NSManagedObjectID)microPaymentClientID;
- (NSString)clientIdentifier;
- (StoreKitClient)initWithMicroPaymentClientID:(id)d;
- (StoreKitClient)initWithXPCClient:(id)client;
- (XPCClient)XPCClient;
- (id)_clientIdentifier;
- (id)_clientIdentity;
- (id)_copyAccountIDsForRefreshReason:(int64_t)reason;
- (id)_copyDownloadsForDownloadIDs:(id)ds properties:(id)properties context:(id)context;
- (id)_initStoreKitClient;
- (id)_lastQueueCheckDate;
- (int64_t)clientState;
- (void)_cancelDownloadsForDownloadIDs:(id)ds;
- (void)_cancelDownloadsForPayments:(id)payments;
- (void)_completeBuyRequest:(id)request forPaymentID:(id)d withBlock:(id)block;
- (void)_completeFinishRequest:(id)request forPaymentID:(id)d withBlock:(id)block;
- (void)_dispatchAsync:(id)async;
- (void)_finishLoadQueueOperation:(id)operation;
- (void)_finishRestoreOperation:(id)operation;
- (void)_mergeBatchResponse:(id)response forRestoreOperation:(id)operation;
- (void)_networkTypeChangedNotification:(id)notification;
- (void)_refreshFromServerWithReason:(int64_t)reason accountIdentifier:(id)identifier;
- (void)_reloadClientProperties;
- (void)_sendBuyRequestForPayment:(id)payment withCompletionBlock:(id)block;
- (void)_sendDownloadChangesets:(id)changesets;
- (void)_sendFinishRequestForPayment:(id)payment withCompletionBlock:(id)block;
- (void)_sendMergeResults:(id)results;
- (void)_sendMessage:(int64_t)message forPayments:(id)payments;
- (void)_sendPaymentsRemoved:(id)removed;
- (void)_sendRestoreCompletedWithError:(id)error;
- (void)_setClientState:(int64_t)state;
- (void)_showPaymentsRestrictedAlert;
- (void)_showPrivacyPromptForPayment:(id)payment withCompletionBlock:(id)block;
- (void)cancelDownloadsWithIDs:(id)ds;
- (void)createMicroPaymentClientIfNecessary;
- (void)dealloc;
- (void)pauseDownloadsWithIDs:(id)ds;
- (void)refreshFromServerWithReason:(int64_t)reason accountIdentifier:(id)identifier;
- (void)restoreCompletedTransactionsWithApplicationUsername:(id)username;
- (void)resumeDownloadsWithIDs:(id)ds;
- (void)sendDownloadChangesets:(id)changesets;
- (void)sendPaymentsUpdatedWithObjectIDs:(id)ds;
- (void)sendPurchaseIntents:(id)intents forApp:(id)app;
- (void)setPaymentQueueClient:(id)client;
- (void)setXPCClient:(id)client;
- (void)startDownloadsWithIDs:(id)ds;
- (void)startPaymentWithObjectID:(id)d withCompletionBlock:(id)block;
- (void)updatePaymentWithObjectID:(id)d purchaseResponse:(id)response;
@end

@implementation StoreKitClient

- (id)_initStoreKitClient
{
  v6.receiver = self;
  v6.super_class = StoreKitClient;
  v2 = [(StoreKitClient *)&v6 init];
  if (v2)
  {
    v3 = [[NSString alloc] initWithFormat:@"com.apple.itunesstored.StoreKitClient.%p", v2];
    v2->_dispatchQueue = dispatch_queue_create([v3 UTF8String], 0);

    v4 = [[NSString alloc] initWithFormat:@"com.apple.itunesstored.StoreKitClient.external.%p", v2];
    v2->_externalQueue = dispatch_queue_create([v4 UTF8String], 0);
  }

  return v2;
}

- (StoreKitClient)initWithMicroPaymentClientID:(id)d
{
  _initStoreKitClient = [(StoreKitClient *)self _initStoreKitClient];
  if (_initStoreKitClient)
  {
    _initStoreKitClient->_databaseClientObjectID = d;
  }

  return _initStoreKitClient;
}

- (StoreKitClient)initWithXPCClient:(id)client
{
  _initStoreKitClient = [(StoreKitClient *)self _initStoreKitClient];
  if (_initStoreKitClient)
  {
    _initStoreKitClient->_client = client;
  }

  return _initStoreKitClient;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:self name:ISNetworkTypeChangedNotification object:0];
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  externalQueue = self->_externalQueue;
  if (externalQueue)
  {
    dispatch_release(externalQueue);
  }

  [(LoadCompletedMicroPaymentsOperation *)self->_restoreOperation setCompletionBlock:0];
  [(LoadCompletedMicroPaymentsOperation *)self->_restoreOperation setPaymentBatchBlock:0];

  [(LoadMicroPaymentQueuesOperation *)self->_loadQueueOperation setCompletionBlock:0];
  v6.receiver = self;
  v6.super_class = StoreKitClient;
  [(StoreKitClient *)&v6 dealloc];
}

- (BOOL)addPaymentTransaction:(id)transaction withOptions:(id)options
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A1EBC;
  v7[3] = &unk_10032AEF0;
  v7[4] = transaction;
  v7[5] = self;
  v7[6] = options;
  v7[7] = &v8;
  dispatch_sync(dispatchQueue, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)cancelDownloadsWithIDs:(id)ds
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001A2730;
  v3[3] = &unk_100327350;
  v3[4] = self;
  v3[5] = ds;
  [(StoreKitClient *)self _dispatchAsync:v3];
}

- (NSString)clientIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1001A2B5C;
  v10 = sub_1001A2B6C;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A2B78;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)clientState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A2C5C;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)createMicroPaymentClientIfNecessary
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A2CE4;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (NSManagedObjectID)firstReadyPaymentID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1001A2B5C;
  v10 = sub_1001A2B6C;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A3024;
  v5[3] = &unk_10032A3C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isEqualToXPCConnection:(id)connection paymentQueueClient:(id)client
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A3300;
  v7[3] = &unk_10032AF18;
  v7[4] = self;
  v7[5] = connection;
  v7[6] = client;
  v7[7] = &v8;
  dispatch_sync(dispatchQueue, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)isSandboxed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A362C;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSManagedObjectID)microPaymentClientID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1001A2B5C;
  v10 = sub_1001A2B6C;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A3754;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSArray)openTransactions
{
  v3 = +[NSMutableArray array];
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A381C;
  v6[3] = &unk_100327350;
  v6[4] = self;
  v6[5] = v3;
  dispatch_sync(dispatchQueue, v6);
  return v3;
}

- (void)pauseDownloadsWithIDs:(id)ds
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001A3A8C;
  v3[3] = &unk_100327350;
  v3[4] = self;
  v3[5] = ds;
  [(StoreKitClient *)self _dispatchAsync:v3];
}

- (void)refreshFromServerWithReason:(int64_t)reason accountIdentifier:(id)identifier
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001A3EAC;
  v4[3] = &unk_10032A398;
  v4[5] = identifier;
  v4[6] = reason;
  v4[4] = self;
  [(StoreKitClient *)self _dispatchAsync:v4];
}

- (BOOL)removePaymentWithObjectID:(id)d
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A3F6C;
  block[3] = &unk_10032AF40;
  block[4] = d;
  block[5] = self;
  block[6] = &v7;
  dispatch_sync(dispatchQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)restoreCompletedTransactionsWithApplicationUsername:(id)username
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001A4094;
  v3[3] = &unk_100327350;
  v3[4] = self;
  v3[5] = username;
  [(StoreKitClient *)self _dispatchAsync:v3];
}

- (void)resumeDownloadsWithIDs:(id)ds
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001A4660;
  v3[3] = &unk_100327350;
  v3[4] = self;
  v3[5] = ds;
  [(StoreKitClient *)self _dispatchAsync:v3];
}

- (void)sendDownloadChangesets:(id)changesets
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001A4A7C;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = changesets;
  dispatch_async(dispatchQueue, v4);
}

- (void)sendPaymentsUpdatedWithObjectIDs:(id)ds
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001A4AFC;
  v4[3] = &unk_100327350;
  v4[4] = ds;
  v4[5] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)setPaymentQueueClient:(id)client
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001A4CC0;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = client;
  dispatch_async(dispatchQueue, v4);
}

- (void)setXPCClient:(id)client
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001A4DEC;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = client;
  dispatch_sync(dispatchQueue, v4);
}

- (void)startDownloadsWithIDs:(id)ds
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001A4F14;
  v3[3] = &unk_100327350;
  v3[4] = self;
  v3[5] = ds;
  [(StoreKitClient *)self _dispatchAsync:v3];
}

- (void)startPaymentWithObjectID:(id)d withCompletionBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001A5638;
  v4[3] = &unk_10032AF90;
  v4[4] = d;
  v4[5] = self;
  v4[6] = block;
  [(StoreKitClient *)self _dispatchAsync:v4];
}

- (void)updatePaymentWithObjectID:(id)d purchaseResponse:(id)response
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001A5A80;
  v4[3] = &unk_1003273E0;
  v4[4] = d;
  v4[5] = response;
  v4[6] = self;
  [(StoreKitClient *)self _dispatchAsync:v4];
}

- (void)sendPurchaseIntents:(id)intents forApp:(id)app
{
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [intents countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(intents);
        }

        [v7 addObject:{objc_msgSend(*(*(&v20 + 1) + 8 * v11), "productIdentifier")}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [intents countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v12 = [[LoadMicroPaymentProductsOperation alloc] initWithProductIdentifiers:v7];

  v13 = objc_alloc_init(StoreKitClientIdentity);
  [(StoreKitClientIdentity *)v13 setBundleIdentifier:app];
  v14 = [LSApplicationProxy applicationProxyForIdentifier:app];
  if (([objc_msgSend(v14 "appState")] & 1) != 0 || (v14 = +[LSPlugInKitProxy pluginKitProxyForIdentifier:](LSPlugInKitProxy, "pluginKitProxyForIdentifier:", app), v15 = objc_msgSend(objc_msgSend(v14, "containingBundle"), "bundleType"), objc_msgSend(v15, "isEqualToString:", LSUserApplicationType)))
  {
    profileValidated = [v14 profileValidated];
  }

  else
  {
    profileValidated = 1;
  }

  [(StoreKitClientIdentity *)v13 setSandboxed:profileValidated];
  [(LoadMicroPaymentProductsOperation *)v12 setClientIdentity:v13];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001A5D64;
  v19[3] = &unk_1003273E0;
  v19[4] = v12;
  v19[5] = self;
  v19[6] = app;
  v17 = [(LoadMicroPaymentProductsOperation *)v12 setCompletionBlock:v19];
  [sub_1000D20B0(v17 v18)];
}

- (XPCClient)XPCClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1001A2B5C;
  v10 = sub_1001A2B6C;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A61E0;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)finishPaymentWithMessage:(id)message
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A62C8;
  block[3] = &unk_10032AF40;
  block[4] = message;
  block[5] = self;
  block[6] = &v7;
  dispatch_sync(dispatchQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_networkTypeChangedNotification:(id)notification
{
  if ([+[ISNetworkObserver networkType:notification]]&& [(StoreKitClient *)self clientState]== 3)
  {

    [(StoreKitClient *)self refreshFromServerWithReason:1];
  }
}

- (void)_cancelDownloadsForDownloadIDs:(id)ds
{
  if ([ds count])
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2048;
      v16 = [ds count];
      v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%{public}@: Canceling %lu downloads", &v13, 22);
      if (v8)
      {
        v9 = v8;
        v10 = [NSString stringWithCString:v8 encoding:4];
        free(v9);
        v11 = v10;
        SSFileLog();
      }
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001A6B34;
    v12[3] = &unk_100329E90;
    v12[4] = ds;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
  }
}

- (void)_cancelDownloadsForPayments:(id)payments
{
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [payments countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(payments);
        }

        downloads = [*(*(&v20 + 1) + 8 * v9) downloads];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = [downloads countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(downloads);
              }

              downloadID = [*(*(&v16 + 1) + 8 * v14) downloadID];
              if (downloadID)
              {
                [v5 addObject:downloadID];
              }

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [downloads countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [payments countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  [(StoreKitClient *)self _cancelDownloadsForDownloadIDs:v5];
}

- (id)_clientIdentifier
{
  _clientIdentity = [(StoreKitClient *)self _clientIdentity];

  return [_clientIdentity bundleIdentifier];
}

- (id)_clientIdentity
{
  result = self->_clientIdentity;
  if (!result)
  {
    [(StoreKitClient *)self _reloadClientProperties];
    return self->_clientIdentity;
  }

  return result;
}

- (id)_copyAccountIDsForRefreshReason:(int64_t)reason
{
  v4 = objc_alloc_init(NSMutableSet);
  if (self->_databaseClientObjectID)
  {
    v5 = [objc_msgSend(+[NSThread beginManagedContextSession](NSThread "beginManagedContextSession")];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          userDSID = [*(*(&v15 + 1) + 8 * i) userDSID];
          if (userDSID)
          {
            [v4 addObject:userDSID];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    +[NSThread endManagedContextSession];
  }

  if (![v4 count])
  {
    if ([+[LSApplicationProxy applicationProxyForIdentifier:](LSApplicationProxy applicationProxyForIdentifier:{objc_msgSend(-[StoreKitClient _clientIdentity](self, "_clientIdentity"), "bundleIdentifier")), "isBetaApp"}])
    {
      v11 = [+[ACAccountStore ams_sharedAccountStoreForMediaType:](ACAccountStore ams_sharedAccountStoreForMediaType:{AMSAccountMediaTypeAppStoreBeta), "ams_activeiTunesAccount"}];
      if (v11)
      {
LABEL_19:
        ams_DSID = [v11 ams_DSID];
        goto LABEL_21;
      }

      v12 = &AMSAccountMediaTypeAppStore;
    }

    else
    {
      if (![-[StoreKitClient _clientIdentity](self "_clientIdentity")])
      {
        ams_DSID = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
LABEL_21:
        if (ams_DSID)
        {
          [v4 addObject:ams_DSID];
        }

        return v4;
      }

      v12 = &AMSAccountMediaTypeAppStoreSandbox;
    }

    v11 = [+[ACAccountStore ams_sharedAccountStoreForMediaType:](ACAccountStore ams_sharedAccountStoreForMediaType:{*v12), "ams_activeiTunesAccount"}];
    if (!v11)
    {
      return v4;
    }

    goto LABEL_19;
  }

  return v4;
}

- (void)_completeBuyRequest:(id)request forPaymentID:(id)d withBlock:(id)block
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A6FB8;
  v5[3] = &unk_10032AFB8;
  v5[4] = d;
  v5[5] = request;
  v5[6] = self;
  v5[7] = block;
  [(StoreKitClient *)self _dispatchAsync:v5];
}

- (void)_completeFinishRequest:(id)request forPaymentID:(id)d withBlock:(id)block
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A7458;
  v5[3] = &unk_10032AFB8;
  v5[4] = d;
  v5[5] = request;
  v5[6] = self;
  v5[7] = block;
  [(StoreKitClient *)self _dispatchAsync:v5];
}

- (id)_copyDownloadsForDownloadIDs:(id)ds properties:(id)properties context:(id)context
{
  v19 = objc_alloc_init(NSMutableArray);
  v9 = [context objectWithID:self->_databaseClientObjectID];
  v10 = [MicroPaymentDownload downloadEntityFromContext:context];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = ds;
  v11 = [ds countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        v16 = objc_alloc_init(NSFetchRequest);
        [v16 setEntity:v10];
        [v16 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"(downloadID=%@) AND (payment.client=%@)", v15, v9)}];
        [v16 setPropertiesToFetch:properties];
        v17 = [context executeFetchRequest:v16 error:0];
        if ([v17 count] == 1)
        {
          [v19 addObject:{objc_msgSend(v17, "objectAtIndex:", 0)}];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  return v19;
}

- (void)_dispatchAsync:(id)async
{
  [+[Daemon daemon](Daemon "daemon")];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A79B0;
  block[3] = &unk_100327FD8;
  block[4] = async;
  dispatch_async(dispatchQueue, block);
}

- (void)_finishLoadQueueOperation:(id)operation
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001A7A64;
  v3[3] = &unk_100327350;
  v3[4] = self;
  v3[5] = operation;
  [(StoreKitClient *)self _dispatchAsync:v3];
}

- (void)_finishRestoreOperation:(id)operation
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001A7F88;
  v3[3] = &unk_100327350;
  v3[4] = self;
  v3[5] = operation;
  [(StoreKitClient *)self _dispatchAsync:v3];
}

- (BOOL)_isPaymentRestricted
{
  if (CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0))
  {
    return 1;
  }

  iSWeakLinkedClassForString() = [ISWeakLinkedClassForString() sharedConnection];
  if ([iSWeakLinkedClassForString() effectiveRestrictedBoolValueForSetting:ISWeakLinkedStringConstantForString()] == 2)
  {
    return [-[StoreKitClient _clientIdentity](self "_clientIdentity")] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)_lastQueueCheckDate
{
  if (!self->_databaseClientObjectID)
  {
    return 0;
  }

  v2 = [objc_msgSend(+[NSThread beginManagedContextSession](NSThread "beginManagedContextSession")];
  +[NSThread endManagedContextSession];
  return v2;
}

- (void)_mergeBatchResponse:(id)response forRestoreOperation:(id)operation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001A83CC;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = response;
  [(StoreKitClient *)self _dispatchAsync:v4, operation];
}

- (void)_refreshFromServerWithReason:(int64_t)reason accountIdentifier:(id)identifier
{
  [ISLoadURLBagOperation incrementNetworkCounterForBagContext:[SSURLBagContext contextWithBagType:0]];
  if ((reason & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(StoreKitClient *)self _setClientState:0];
  }

  if (self->_state == 1)
  {
    if (!reason)
    {
      v7 = +[SSLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        LODWORD(v9) = shouldLog | 2;
      }

      else
      {
        LODWORD(v9) = shouldLog;
      }

      oSLogObject = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v9 = v9;
      }

      else
      {
        v9 &= 2u;
      }

      if (v9)
      {
        v39 = 138543618;
        v40 = objc_opt_class();
        v41 = 2112;
        reasonCopy = [(StoreKitClient *)self _clientIdentifier];
        v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%{public}@: Client checked in mid-refresh: %@", &v39, 22);
        if (v11)
        {
          v12 = v11;
          v13 = [NSString stringWithCString:v11 encoding:4];
          free(v12);
          v36 = v13;
          SSFileLog();
        }
      }

      [(LoadMicroPaymentQueuesOperation *)self->_loadQueueOperation setReason:0, v36];
    }
  }

  else
  {
    v14 = [(StoreKitClient *)self _copyAccountIDsForRefreshReason:reason];
    v15 = v14;
    if (identifier)
    {
      [v14 addObject:identifier];
    }

    if ([v15 count])
    {
      allObjects = [v15 allObjects];
      v16 = +[SSLogConfig sharedDaemonConfig];
      if (!v16)
      {
        v16 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        LODWORD(v18) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v18) = shouldLog2;
      }

      oSLogObject2 = [v16 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v18 = v18;
      }

      else
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v39 = 138544130;
        v40 = objc_opt_class();
        v41 = 2048;
        reasonCopy = reason;
        v43 = 2112;
        _clientIdentifier = [(StoreKitClient *)self _clientIdentifier];
        v45 = 2112;
        v46 = [allObjects componentsJoinedByString:{@", "}];
        v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%{public}@: Refreshing from server (%ld; %@; %@)", &v39, 42);
        if (v20)
        {
          v21 = v20;
          v22 = [NSString stringWithCString:v20 encoding:4];
          free(v21);
          v36 = v22;
          SSFileLog();
        }
      }

      loadQueueOperation = self->_loadQueueOperation;
      if (loadQueueOperation)
      {
        [(LoadMicroPaymentQueuesOperation *)loadQueueOperation setCompletionBlock:0];

        self->_loadQueueOperation = 0;
      }

      v24 = objc_alloc_init(LoadMicroPaymentQueuesOperation);
      self->_loadQueueOperation = v24;
      [(LoadMicroPaymentQueuesOperation *)v24 setClientIdentity:[(StoreKitClient *)self _clientIdentity]];
      [(LoadMicroPaymentQueuesOperation *)self->_loadQueueOperation setLastQueueCheckDate:[(StoreKitClient *)self _lastQueueCheckDate]];
      [(LoadMicroPaymentQueuesOperation *)self->_loadQueueOperation setReason:reason];
      [(LoadMicroPaymentQueuesOperation *)self->_loadQueueOperation setShouldRunWithBackgroundPriority:1];
      [(LoadMicroPaymentQueuesOperation *)self->_loadQueueOperation setUserDSIDs:allObjects];
      v25 = [SSWeakReference weakReferenceWithObject:self];
      v26 = self->_loadQueueOperation;
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1001A8B0C;
      v38[3] = &unk_100327350;
      v38[4] = v25;
      v38[5] = v24;
      [(LoadMicroPaymentQueuesOperation *)v26 setCompletionBlock:v38];
      self->_lastRefreshReason = reason;
      v27 = [(StoreKitClient *)self _setClientState:1];
      [sub_1000D20B0(v27 v28)];
    }

    else
    {
      v29 = +[SSLogConfig sharedDaemonConfig];
      if (!v29)
      {
        v29 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v29 shouldLog];
      if ([v29 shouldLogToDisk])
      {
        LODWORD(v31) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v31) = shouldLog3;
      }

      oSLogObject3 = [v29 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v31 = v31;
      }

      else
      {
        v31 &= 2u;
      }

      if (v31)
      {
        v39 = 138543362;
        v40 = objc_opt_class();
        v33 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%{public}@: Tried to refresh from server, but either had no payments or no usable DSIDs", &v39, 12);
        if (v33)
        {
          v34 = v33;
          v35 = [NSString stringWithCString:v33 encoding:4];
          free(v34);
          v36 = v35;
          SSFileLog();
        }
      }
    }
  }

  [ISLoadURLBagOperation decrementNetworkCounterForBagContext:[SSURLBagContext contextWithBagType:0, v36]];
}

- (void)_reloadClientProperties
{
  clientIdentity = self->_clientIdentity;
  if (!clientIdentity)
  {
    clientIdentity = objc_alloc_init(StoreKitClientIdentity);
    self->_clientIdentity = clientIdentity;
  }

  if (self->_client && ![(StoreKitClientIdentity *)clientIdentity usesIdentityAttributes])
  {
    [(StoreKitClientIdentity *)self->_clientIdentity setBundleIdentifier:[(XPCClient *)self->_client clientIdentifier]];
    v5 = self->_clientIdentity;
    v6 = [(XPCClient *)self->_client isAppleSigned]^ 1;

    [(StoreKitClientIdentity *)v5 setSandboxed:v6];
  }

  else if (self->_databaseClientObjectID)
  {
    v4 = [+[NSThread beginManagedContextSession](NSThread "beginManagedContextSession")];
    -[StoreKitClientIdentity setBundleIdentifier:](self->_clientIdentity, "setBundleIdentifier:", [v4 identifier]);
    -[StoreKitClientIdentity setBundleVersion:](self->_clientIdentity, "setBundleVersion:", [v4 bundleVersion]);
    -[StoreKitClientIdentity setStoreVersion:](self->_clientIdentity, "setStoreVersion:", [v4 storeVersion]);
    -[StoreKitClientIdentity setStoreIdentifier:](self->_clientIdentity, "setStoreIdentifier:", [v4 storeIdentifier]);
    -[StoreKitClientIdentity setVendorIdentifier:](self->_clientIdentity, "setVendorIdentifier:", [v4 vendorIdentifier]);
    -[StoreKitClientIdentity setAllowsBootstrapCellularData:](self->_clientIdentity, "setAllowsBootstrapCellularData:", [objc_msgSend(v4 "allowsBootstrapCellularData")]);
    -[StoreKitClientIdentity setHidesConfirmationDialogs:](self->_clientIdentity, "setHidesConfirmationDialogs:", [objc_msgSend(v4 "hidesConfirmationDialogs")]);
    -[StoreKitClientIdentity setIgnoresInAppPurchaseRestriction:](self->_clientIdentity, "setIgnoresInAppPurchaseRestriction:", [objc_msgSend(v4 "ignoresInAppPurchaseRestriction")]);
    -[StoreKitClientIdentity setReceiptDirectoryPath:](self->_clientIdentity, "setReceiptDirectoryPath:", [v4 receiptDirectoryPath]);
    -[StoreKitClientIdentity setRequiresAuthenticationForPayment:](self->_clientIdentity, "setRequiresAuthenticationForPayment:", [objc_msgSend(v4 "requiresAuthenticationForPayment")]);
    -[StoreKitClientIdentity setSandboxed:](self->_clientIdentity, "setSandboxed:", [objc_msgSend(v4 "sandboxed")]);
    -[StoreKitClientIdentity setUsesIdentityAttributes:](self->_clientIdentity, "setUsesIdentityAttributes:", [objc_msgSend(v4 "usesIdentityAttributes")]);

    +[NSThread endManagedContextSession];
  }
}

- (void)_showPrivacyPromptForPayment:(id)payment withCompletionBlock:(id)block
{
  objectID = [payment objectID];
  v7 = [PrivacyPromptOperation alloc];
  v8 = [(PrivacyPromptOperation *)v7 initWithPrivacyIdentifier:SSPrivacyIdentifierAppStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A8E2C;
  v11[3] = &unk_10032B008;
  v11[4] = [SSWeakReference weakReferenceWithObject:self];
  v11[5] = objectID;
  v11[6] = v8;
  v11[7] = block;
  v9 = [(PrivacyPromptOperation *)v8 setCompletion:v11];
  [sub_1000D20B0(v9 v10)];
}

- (void)_sendBuyRequestForPayment:(id)payment withCompletionBlock:(id)block
{
  v7 = objc_alloc_init(BuyMicroPaymentOperation);
  -[BuyMicroPaymentOperation setApplicationUsername:](v7, "setApplicationUsername:", [payment applicationUsername]);
  -[BuyMicroPaymentOperation setBuyParameters:](v7, "setBuyParameters:", [payment actionParams]);
  [(BuyMicroPaymentOperation *)v7 setClientAuditTokenData:[(XPCClient *)self->_client auditTokenData]];
  [(BuyMicroPaymentOperation *)v7 setClientIdentity:[(StoreKitClient *)self _clientIdentity]];
  -[BuyMicroPaymentOperation setPartnerIdentifier:](v7, "setPartnerIdentifier:", [payment partnerIdentifier]);
  -[BuyMicroPaymentOperation setPartnerTransactionIdentifier:](v7, "setPartnerTransactionIdentifier:", [payment partnerTransactionIdentifier]);
  -[BuyMicroPaymentOperation setProductIdentifier:](v7, "setProductIdentifier:", [payment productIdentifier]);
  -[BuyMicroPaymentOperation setRequestData:](v7, "setRequestData:", [payment requestData]);
  -[BuyMicroPaymentOperation setOriginatingStorefront:](v7, "setOriginatingStorefront:", [payment originatingStorefront]);
  -[BuyMicroPaymentOperation setDiscountIdentifier:](v7, "setDiscountIdentifier:", [payment discountIdentifier]);
  -[BuyMicroPaymentOperation setDiscountKeyIdentifier:](v7, "setDiscountKeyIdentifier:", [payment discountKeyIdentifier]);
  -[BuyMicroPaymentOperation setDiscountNonceString:](v7, "setDiscountNonceString:", [payment discountNonceString]);
  -[BuyMicroPaymentOperation setDiscountSignature:](v7, "setDiscountSignature:", [payment discountSignature]);
  -[BuyMicroPaymentOperation setDiscountTimestamp:](v7, "setDiscountTimestamp:", [payment discountTimestamp]);
  [(BuyMicroPaymentOperation *)v7 setDelegate:self];
  quantity = [payment quantity];
  if (quantity)
  {
    integerValue = [quantity integerValue];
  }

  else
  {
    integerValue = 1;
  }

  [(BuyMicroPaymentOperation *)v7 setQuantity:integerValue];
  -[BuyMicroPaymentOperation setSimulatesAskToBuyInSandbox:](v7, "setSimulatesAskToBuyInSandbox:", [objc_msgSend(payment "simulatesAskToBuyInSandbox")]);
  objectID = [payment objectID];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001A942C;
  v13[3] = &unk_10032AFB8;
  v13[4] = [SSWeakReference weakReferenceWithObject:self];
  v13[5] = v7;
  v13[6] = objectID;
  v13[7] = block;
  v11 = [(BuyMicroPaymentOperation *)v7 setCompletionBlock:v13];
  [sub_1000D20B0(v11 v12)];
}

- (void)_sendDownloadChangesets:(id)changesets
{
  if ([(XPCClient *)self->_client canReceiveMessages])
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v5, "0", 20006);
    sub_1001FA20C(v5, "1", changesets);
    [(SSXPCConnection *)[(XPCClient *)self->_client outputConnection] sendMessage:v5];

    xpc_release(v5);
  }

  else
  {
    client = self->_client;

    [(XPCClient *)client sendCoalescedMessageWithIdentifier:20001];
  }
}

- (void)_sendFinishRequestForPayment:(id)payment withCompletionBlock:(id)block
{
  v7 = objc_alloc_init(FinishMicroPaymentOperation);
  [(FinishMicroPaymentOperation *)v7 setClientIdentity:[(StoreKitClient *)self _clientIdentity]];
  -[FinishMicroPaymentOperation setTransactionIdentifier:](v7, "setTransactionIdentifier:", [payment transactionIdentifier]);
  -[FinishMicroPaymentOperation setUserDSID:](v7, "setUserDSID:", [payment userDSID]);
  objectID = [payment objectID];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A963C;
  v11[3] = &unk_10032AFB8;
  v11[4] = [SSWeakReference weakReferenceWithObject:self];
  v11[5] = v7;
  v11[6] = objectID;
  v11[7] = block;
  v9 = [(FinishMicroPaymentOperation *)v7 setCompletionBlock:v11];
  [sub_1000D20B0(v9 v10)];
}

- (void)_sendMergeResults:(id)results
{
  if (results)
  {
    if ([(XPCClient *)self->_client canReceiveMessages])
    {
      -[StoreKitClient _sendPaymentsAdded:](self, "_sendPaymentsAdded:", [results addedPayments]);
      changedPayments = [results changedPayments];

      [(StoreKitClient *)self _sendPaymentsUpdated:changedPayments];
    }

    else
    {
      client = self->_client;

      [(XPCClient *)client sendCoalescedMessageWithIdentifier:20001];
    }
  }
}

- (void)_sendMessage:(int64_t)message forPayments:(id)payments
{
  if (![(XPCClient *)self->_client canReceiveMessages])
  {
    goto LABEL_15;
  }

  v7 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [payments countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(payments);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([objc_msgSend(v12 "state")] - 5 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          copyPaymentTransaction = [v12 copyPaymentTransaction];
          if (copyPaymentTransaction)
          {
            v14 = copyPaymentTransaction;
            [(__CFString *)v7 addObject:copyPaymentTransaction];
          }
        }
      }

      v9 = [payments countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  if (v7)
  {
    if ([(__CFString *)v7 count])
    {
      v15 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v15, "0", message);
      sub_1001FA20C(v15, "1", v7);
      [(SSXPCConnection *)[(XPCClient *)self->_client outputConnection] sendMessage:v15];
      xpc_release(v15);
    }
  }

  else
  {
LABEL_15:
    [(XPCClient *)self->_client sendCoalescedMessageWithIdentifier:20001];
    v7 = 0;
  }
}

- (void)_sendPaymentsRemoved:(id)removed
{
  if ([(XPCClient *)self->_client canReceiveMessages])
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v4, "0", 20004);
    SSXPCDictionarySetCFObject();
    [(SSXPCConnection *)[(XPCClient *)self->_client outputConnection] sendMessage:v4];

    xpc_release(v4);
  }

  else
  {
    client = self->_client;

    [(XPCClient *)client sendCoalescedMessageWithIdentifier:20001];
  }
}

- (void)_sendRestoreCompletedWithError:(id)error
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, "0", 20005);
  if (error)
  {
    sub_1000D2580(error);
    v6 = sub_1001FA200();
    sub_1001FA20C(v5, "1", v6);
  }

  [(SSXPCConnection *)[(XPCClient *)self->_client outputConnection] sendMessage:v5];

  xpc_release(v5);
}

- (void)_setClientState:(int64_t)state
{
  if (self->_state != state)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = v5;
    if (self->_state == 3)
    {
      [(NSNotificationCenter *)v5 removeObserver:self name:ISNetworkTypeChangedNotification object:0];
    }

    self->_state = state;
    if (state == 3)
    {
      v7 = ISNetworkTypeChangedNotification;

      [(NSNotificationCenter *)v6 addObserver:self selector:"_networkTypeChangedNotification:" name:v7 object:0];
    }
  }
}

- (void)_showPaymentsRestrictedAlert
{
  v2 = objc_alloc_init(ISDialog);
  [v2 setButtons:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", +[ISDialogButton buttonWithTitle:](ISDialogButton, "buttonWithTitle:", -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"OK", &stru_10033CC30, 0)))}];
  [v2 setMessage:{-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MICRO_PAYMENTS_RESTRICTED_BODY", &stru_10033CC30, 0)}];
  [v2 setTitle:{-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MICRO_PAYMENTS_RESTRICTED_TITLE", &stru_10033CC30, 0)}];
  [+[ISOperationQueue mainQueue](ISOperationQueue "mainQueue")];
}

- (BOOL)buyMicroPaymentOperation:(id)operation shouldContinueWithNewStorefront:(id)storefront
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A9D1C;
  v7[3] = &unk_10032AEF0;
  v7[4] = operation;
  v7[5] = storefront;
  v7[6] = self;
  v7[7] = &v8;
  dispatch_sync(dispatchQueue, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

@end