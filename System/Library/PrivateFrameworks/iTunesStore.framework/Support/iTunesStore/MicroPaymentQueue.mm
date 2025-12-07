@interface MicroPaymentQueue
+ (id)paymentQueue;
- (BOOL)_inAppReviewEnabled;
- (BOOL)_isAppStoreInstallationAllowed;
- (MicroPaymentQueue)init;
- (id)_beginManagedContextSession;
- (id)_clientForConnection:(id)connection paymentQueueClient:(id)client;
- (id)_clientForObjectID:(id)d;
- (id)_clientForPayment:(id)payment;
- (id)_clients;
- (id)_copyDownloadsIDsFromMessage:(id)message key:(const char *)key;
- (id)_firstReadyPaymentInContext:(id)context;
- (id)_inAppReviewRequestConstants;
- (id)_newPaymentQueueClientWithMessage:(id)message connection:(id)connection parameter:(const char *)parameter;
- (void)_clientDisconnectNotification:(id)notification;
- (void)_dispatchAsync:(id)async;
- (void)_enumerateDownloadsForIdentifiers:(id)identifiers context:(id)context usingBlock:(id)block;
- (void)_finishPaymentOperationForPaymentID:(id)d result:(BOOL)result error:(id)error;
- (void)_networkTypeChanged:(id)changed;
- (void)_refreshDidFinishNotification:(id)notification;
- (void)_sendPurchaseIntentsForApp:(id)app storeKitClient:(id)client force:(BOOL)force;
- (void)_setActivePaymentID:(id)d;
- (void)_startFirstReadyPayment;
- (void)addInAppReviewRequestWithMessage:(id)message connection:(id)connection;
- (void)addPaymentWithMessage:(id)message connection:(id)connection;
- (void)addPurchaseIntentWithMessage:(id)message connection:(id)connection;
- (void)addPurchaseIntentWithProductIdentifier:(id)identifier productName:(id)name appBundleId:(id)id appName:(id)appName;
- (void)cancelDownloadsWithMessage:(id)message connection:(id)connection;
- (void)cancelRequestWithMessage:(id)message connection:(id)connection;
- (void)checkQueueForClientWithIdentifier:(id)identifier URLBagContext:(id)context;
- (void)checkQueueForClientWithMessage:(id)message connection:(id)connection;
- (void)connectedAppEnteredForegroundWithMessage:(id)message connection:(id)connection;
- (void)dealloc;
- (void)failDownloadsWithIdentifiers:(id)identifiers;
- (void)finishDownloadsWithIdentifiers:(id)identifiers;
- (void)finishPaymentWithMessage:(id)message connection:(id)connection;
- (void)forceSandboxWithMessage:(id)message connection:(id)connection;
- (void)getTransactionsWithMessage:(id)message connection:(id)connection;
- (void)installSheetStateUpdatedWithMessage:(id)message connection:(id)connection;
- (void)notifyClientsOfExternalPropertyChanges:(id)changes ofDownloadID:(int64_t)d;
- (void)observeXPCServer:(id)server;
- (void)pauseDownloadsWithMessage:(id)message connection:(id)connection;
- (void)productsRequestWithMessage:(id)message connection:(id)connection;
- (void)registerClientWithMessage:(id)message connection:(id)connection;
- (void)resetInAppReviewRequestsWithMessage:(id)message connection:(id)connection;
- (void)restoreCompletedTransactionsWithMessage:(id)message connection:(id)connection;
- (void)resumeDownloadsWithMessage:(id)message connection:(id)connection;
- (void)start;
- (void)startDownloadsWithMessage:(id)message connection:(id)connection;
- (void)startFirstReadyPayment;
- (void)updateDeferredPaymentWithMessage:(id)message connection:(id)connection;
- (void)updateInAppReviewRequestWithMessage:(id)message connection:(id)connection;
- (void)updateWithPurchaseResponse:(id)response;
@end

@implementation MicroPaymentQueue

- (MicroPaymentQueue)init
{
  v8.receiver = self;
  v8.super_class = MicroPaymentQueue;
  v2 = [(MicroPaymentQueue *)&v8 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunestored.MicroPaymentQueue", 0);
    v2->_purchaseActionsDBQueue = dispatch_queue_create("com.apple.itunestored.MicroPaymentQueue.PurchaseActionsDBQueue", 0);
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MicroPaymentQueueAlive", kSSUserDefaultsIdentifier, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v4 = AppIntegerValue;
    }

    else
    {
      v4 = -1;
    }

    v2->_aliveState = v4;
    v5 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v5 addObserver:v2 selector:"_refreshDidFinishNotification:" name:@"StoreKitClientRefreshDidFinishNotification" object:0];
    [(NSNotificationCenter *)v5 addObserver:v2 selector:"_clientDisconnectNotification:" name:@"XPCClientDisconnectNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:self name:ISNetworkTypeChangedNotification object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:@"StoreKitClientRefreshDidFinishNotification" object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:@"XPCClientDisconnectNotification" object:0];
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  purchaseActionsDBQueue = self->_purchaseActionsDBQueue;
  if (purchaseActionsDBQueue)
  {
    dispatch_release(purchaseActionsDBQueue);
  }

  v6.receiver = self;
  v6.super_class = MicroPaymentQueue;
  [(MicroPaymentQueue *)&v6 dealloc];
}

+ (id)paymentQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BBFEC;
  block[3] = &unk_100327378;
  block[4] = self;
  if (qword_100383E50 != -1)
  {
    dispatch_once(&qword_100383E50, block);
  }

  return qword_100383E48;
}

- (void)addPurchaseIntentWithProductIdentifier:(id)identifier productName:(id)name appBundleId:(id)id appName:(id)appName
{
  if (!id)
  {
    v28 = [SSLogConfig sharedDaemonConfig:identifier];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      LODWORD(v30) = shouldLog | 2;
    }

    else
    {
      LODWORD(v30) = shouldLog;
    }

    oSLogObject = [v28 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v30 = v30;
    }

    else
    {
      v30 &= 2u;
    }

    if (!v30)
    {
      return;
    }

    v45 = 138543618;
    v46 = objc_opt_class();
    v47 = 2112;
    idCopy4 = identifier;
    v32 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "[%{public}@]: Purchase intent bundleId nil, aborting (productIdentifier: %@)", &v45, 22);
    if (!v32)
    {
      return;
    }

LABEL_35:
    v33 = v32;
    [NSString stringWithCString:v32 encoding:4];
    free(v33);
LABEL_59:
    SSFileLog();
    return;
  }

  v10 = +[SSLogConfig sharedDaemonConfig];
  v11 = v10;
  if (!identifier)
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      LODWORD(v35) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v35) = shouldLog2;
    }

    oSLogObject2 = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v35 = v35;
    }

    else
    {
      v35 &= 2u;
    }

    if (!v35)
    {
      return;
    }

    v45 = 138543618;
    v46 = objc_opt_class();
    v47 = 2112;
    idCopy4 = id;
    v32 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "[%{public}@]: Purchase intent productIdentifier nil, aborting (appBundleId: %@)", &v45, 22);
    if (!v32)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!v10)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    LODWORD(v13) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v13) = shouldLog3;
  }

  oSLogObject3 = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v13;
  }

  else
  {
    v13 &= 2u;
  }

  if (v13)
  {
    v45 = 138544386;
    v46 = objc_opt_class();
    v47 = 2114;
    idCopy4 = identifier;
    v49 = 2114;
    nameCopy = name;
    v51 = 2114;
    idCopy2 = id;
    v53 = 2114;
    appNameCopy = appName;
    v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "[%{public}@]: Adding purchase intent for productID: %{public}@, productName: %{public}@, bundleID: %{public}@, appName: %{public}@", &v45, 52);
    if (v15)
    {
      v16 = v15;
      v17 = [NSString stringWithCString:v15 encoding:4];
      free(v16);
      v42 = v17;
      SSFileLog();
    }
  }

  v18 = objc_alloc_init(PurchaseIntent);
  [(PurchaseIntent *)v18 setProductIdentifier:identifier];
  [(PurchaseIntent *)v18 setProductName:name];
  [(PurchaseIntent *)v18 setAppBundleId:id];
  [(PurchaseIntent *)v18 setAppName:appName];
  [+[NSDate date](NSDate timeIntervalSince1970];
  [(PurchaseIntent *)v18 setTimestamp:[NSNumber numberWithLongLong:v19]];
  [+[PurchaseActionsManager sharedInstance](PurchaseActionsManager insertPurchaseIntent:"insertPurchaseIntent:", v18];

  v44 = 0;
  [+[SpringBoardUtility sharedInstance](SpringBoardUtility launchApplicationWithIdentifier:"launchApplicationWithIdentifier:options:error:" options:id error:0, &v44];
  v20 = v44;
  v21 = +[SSLogConfig sharedDaemonConfig];
  v22 = v21;
  if (v20)
  {
    if (!v21)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      LODWORD(v24) = shouldLog4 | 2;
    }

    else
    {
      LODWORD(v24) = shouldLog4;
    }

    oSLogObject4 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = objc_opt_class();
      v45 = 138543874;
      v46 = v26;
      v47 = 2114;
      idCopy4 = id;
      v49 = 2114;
      nameCopy = v44;
      LODWORD(v43) = 32;
      v27 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, oSLogObject4, 16, "[%{public}@]: FBSystemService failed to open application %{public}@ with error: %{public}@", &v45, v43);
LABEL_57:
      if (!v27)
      {
        return;
      }

      v41 = v27;
      [NSString stringWithCString:v27 encoding:4];
      free(v41);
      goto LABEL_59;
    }
  }

  else
  {
    if (!v21)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      LODWORD(v38) = shouldLog5 | 2;
    }

    else
    {
      LODWORD(v38) = shouldLog5;
    }

    oSLogObject5 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v38;
    }

    else
    {
      v38 &= 2u;
    }

    if (v38)
    {
      v40 = objc_opt_class();
      v45 = 138543618;
      v46 = v40;
      v47 = 2114;
      idCopy4 = id;
      LODWORD(v43) = 22;
      v27 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "[%{public}@]: Opened app: %{public}@", &v45, v43);
      goto LABEL_57;
    }
  }
}

- (void)checkQueueForClientWithIdentifier:(id)identifier URLBagContext:(id)context
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BC680;
  v4[3] = &unk_1003273E0;
  v4[4] = context;
  v4[5] = self;
  v4[6] = identifier;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)failDownloadsWithIdentifiers:(id)identifiers
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BCA10;
  v3[3] = &unk_100327350;
  v3[4] = self;
  v3[5] = identifiers;
  [(MicroPaymentQueue *)self _dispatchAsync:v3];
}

- (void)finishDownloadsWithIdentifiers:(id)identifiers
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BD0A0;
  v3[3] = &unk_100327350;
  v3[4] = self;
  v3[5] = identifiers;
  [(MicroPaymentQueue *)self _dispatchAsync:v3];
}

- (void)notifyClientsOfExternalPropertyChanges:(id)changes ofDownloadID:(int64_t)d
{
  v7 = [changes objectForKey:SSDownloadExternalPropertyPercentComplete];
  v8 = [changes objectForKey:SSDownloadPropertyDownloadPhase];
  v9 = [changes objectForKey:SSDownloadExternalPropertyEstimatedTimeRemaining];
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10 || v8 != 0)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000BDC1C;
    v12[3] = &unk_100327F60;
    v12[7] = v9;
    v12[8] = d;
    v12[4] = self;
    v12[5] = v8;
    v12[6] = v7;
    [(MicroPaymentQueue *)self _dispatchAsync:v12];
  }
}

- (void)observeXPCServer:(id)server
{
  [server addObserver:self selector:"addPaymentWithMessage:connection:" forMessage:10000];
  [server addObserver:self selector:"cancelDownloadsWithMessage:connection:" forMessage:10007];
  [server addObserver:self selector:"cancelRequestWithMessage:connection:" forMessage:10003];
  [server addObserver:self selector:"checkQueueForClientWithMessage:connection:" forMessage:83];
  [server addObserver:self selector:"connectedAppEnteredForegroundWithMessage:connection:" forMessage:10012];
  [server addObserver:self selector:"finishPaymentWithMessage:connection:" forMessage:10001];
  [server addObserver:self selector:"getTransactionsWithMessage:connection:" forMessage:10006];
  [server addObserver:self selector:"pauseDownloadsWithMessage:connection:" forMessage:10008];
  [server addObserver:self selector:"productsRequestWithMessage:connection:" forMessage:10004];
  [server addObserver:self selector:"registerClientWithMessage:connection:" forMessage:10005];
  [server addObserver:self selector:"restoreCompletedTransactionsWithMessage:connection:" forMessage:10002];
  [server addObserver:self selector:"resumeDownloadsWithMessage:connection:" forMessage:10009];
  [server addObserver:self selector:"startDownloadsWithMessage:connection:" forMessage:10010];
  [server addObserver:self selector:"updateDeferredPaymentWithMessage:connection:" forMessage:143];
  [server addObserver:self selector:"addInAppReviewRequestWithMessage:connection:" forMessage:188];
  [server addObserver:self selector:"updateInAppReviewRequestWithMessage:connection:" forMessage:189];
  [server addObserver:self selector:"resetInAppReviewRequestsWithMessage:connection:" forMessage:190];
  [server addObserver:self selector:"addPurchaseIntentWithMessage:connection:" forMessage:10013];
  [server addObserver:self selector:"installSheetStateUpdatedWithMessage:connection:" forMessage:10014];

  [server addObserver:self selector:"forceSandboxWithMessage:connection:" forMessage:10015];
}

- (void)start
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000BE05C;
  v2[3] = &unk_100327378;
  v2[4] = self;
  [(MicroPaymentQueue *)self _dispatchAsync:v2];
}

- (void)startFirstReadyPayment
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000BE0DC;
  v2[3] = &unk_100327378;
  v2[4] = self;
  [(MicroPaymentQueue *)self _dispatchAsync:v2];
}

- (void)updateWithPurchaseResponse:(id)response
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BE150;
  v3[3] = &unk_100327350;
  v3[4] = response;
  v3[5] = self;
  [(MicroPaymentQueue *)self _dispatchAsync:v3];
}

- (void)addPaymentWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BE498;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = message;
  v4[6] = connection;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)addPurchaseIntentWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BE644;
  v4[3] = &unk_1003273E0;
  v4[4] = message;
  v4[5] = self;
  v4[6] = connection;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)cancelDownloadsWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BE7CC;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = message;
  v4[6] = connection;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)cancelRequestWithMessage:(id)message connection:(id)connection
{
  v5 = +[StoreKitRequestQueue sharedInstance];

  [(RequestQueue *)v5 cancelOperationForConnection:connection];
}

- (void)checkQueueForClientWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement())
  {
    objc_opt_class();
    v7 = SSXPCDictionaryCopyCFObjectWithClass();
    v6 = [[SSURLBagContext alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "2")}];
    [(MicroPaymentQueue *)self checkQueueForClientWithIdentifier:v7 URLBagContext:v6];
  }
}

- (void)connectedAppEnteredForegroundWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BE9E8;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = message;
  v4[6] = connection;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)forceSandboxWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BEC1C;
  v4[3] = &unk_100327350;
  v4[4] = connection;
  v4[5] = message;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)finishPaymentWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BED70;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = message;
  v4[6] = connection;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)getTransactionsWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BEE58;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = message;
  v4[6] = connection;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)installSheetStateUpdatedWithMessage:(id)message connection:(id)connection
{
  if (xpc_dictionary_get_uint64(message, "2"))
  {
    v6 = sub_10018E3C4(message, "1");
  }

  else
  {
    v6 = 0;
  }

  [+[PurchaseActionsManager sharedInstance](PurchaseActionsManager setAppBundleIdForCurrentInstallSheet:"setAppBundleIdForCurrentInstallSheet:", v6];

  reply = xpc_dictionary_create_reply(message);
  xpc_connection_send_message(connection, reply);

  xpc_release(reply);
}

- (void)pauseDownloadsWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BF074;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = message;
  v4[6] = connection;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)productsRequestWithMessage:(id)message connection:(id)connection
{
  v6 = +[StoreKitRequestQueue sharedInstance];

  [(StoreKitRequestQueue *)v6 requestProductsWithMessage:message connection:connection];
}

- (void)registerClientWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BF1BC;
  v4[3] = &unk_1003273E0;
  v4[4] = message;
  v4[5] = self;
  v4[6] = connection;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)restoreCompletedTransactionsWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BF4CC;
  v4[3] = &unk_1003273E0;
  v4[4] = message;
  v4[5] = self;
  v4[6] = connection;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)resumeDownloadsWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BF5D0;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = message;
  v4[6] = connection;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)startDownloadsWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BF6D0;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = message;
  v4[6] = connection;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)updateDeferredPaymentWithMessage:(id)message connection:(id)connection
{
  if ((SSXPCConnectionHasEntitlement() & 1) != 0 || SSXPCConnectionHasEntitlement())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000BF81C;
    v6[3] = &unk_100327350;
    v6[4] = message;
    v6[5] = self;
    [(MicroPaymentQueue *)self _dispatchAsync:v6];
  }
}

- (void)addInAppReviewRequestWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BFFCC;
  v4[3] = &unk_1003273E0;
  v4[4] = connection;
  v4[5] = self;
  v4[6] = message;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (id)_inAppReviewRequestConstants
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setObject:&off_10034BCD0 forKey:@"inAppReviewRequestLimitWindow"];
  [v2 setObject:&off_10034BCE8 forKey:@"inAppReviewRequestsPerWindow"];
  [v2 setObject:&off_10034BCD0 forKey:@"inAppReviewRequiredDaysAfterReview"];
  [v2 setObject:&__kCFBooleanTrue forKey:@"inAppReviewRequireNewVersionAfterReview"];
  v3 = [[ISLoadURLBagOperation alloc] initWithBagContext:{+[SSURLBagContext contextWithBagType:](SSURLBagContext, "contextWithBagType:", 0)}];
  v4 = dispatch_semaphore_create(0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C0B1C;
  v6[3] = &unk_1003273E0;
  v6[4] = v3;
  v6[5] = v2;
  v6[6] = v4;
  [v3 setCompletionBlock:v6];
  [+[ISOperationQueue mainQueue](ISOperationQueue "mainQueue")];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  return v2;
}

- (void)updateInAppReviewRequestWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C0CD8;
  v4[3] = &unk_1003273E0;
  v4[4] = connection;
  v4[5] = message;
  v4[6] = self;
  [(MicroPaymentQueue *)self _dispatchAsync:v4];
}

- (void)resetInAppReviewRequestsWithMessage:(id)message connection:(id)connection
{
  if ((SSXPCConnectionHasEntitlement() & 1) != 0 || SSXPCConnectionHasEntitlement())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000C0FB8;
    v6[3] = &unk_100327350;
    v6[4] = connection;
    v6[5] = self;
    [(MicroPaymentQueue *)self _dispatchAsync:v6];
  }
}

- (BOOL)_inAppReviewEnabled
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(kSSUserDefaultsKeyInAppReviewEnabled, kSSUserDefaultsIdentifier, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 0;
  }

  return !v3;
}

- (BOOL)_isAppStoreInstallationAllowed
{
  v2 = +[MCProfileConnection sharedConnection];

  return [v2 isOnDeviceAppInstallationAllowed];
}

- (void)_clientDisconnectNotification:(id)notification
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C1234;
  v3[3] = &unk_100327350;
  selfCopy = self;
  object = [notification object];
  [(MicroPaymentQueue *)selfCopy _dispatchAsync:v3];
}

- (void)_networkTypeChanged:(id)changed
{
  if ([+[ISNetworkObserver networkType:changed]])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000C14DC;
    v4[3] = &unk_100327378;
    v4[4] = self;
    [(MicroPaymentQueue *)self _dispatchAsync:v4];
  }
}

- (void)_refreshDidFinishNotification:(id)notification
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C15BC;
  v3[3] = &unk_100327378;
  v3[4] = self;
  [(MicroPaymentQueue *)self _dispatchAsync:v3];
}

- (id)_beginManagedContextSession
{
  if (!self->_clients)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000C1658;
    v3[3] = &unk_100327378;
    v3[4] = self;
    [sub_1000CDEFC(0) checkIntegrityWithInitializationBlock:v3];
  }

  return +[NSThread beginManagedContextSession];
}

- (id)_clientForConnection:(id)connection paymentQueueClient:(id)client
{
  _clients = [(MicroPaymentQueue *)self _clients];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [_clients countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(_clients);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      if ([(StoreKitClient *)v12 isEqualToXPCConnection:connection paymentQueueClient:client])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [_clients countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (v12)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  v12 = objc_alloc_init(StoreKitClient);
  [(NSMutableArray *)self->_clients addObject:v12];
  v13 = v12;
LABEL_12:
  if (client)
  {
    [(StoreKitClient *)v12 setPaymentQueueClient:client];
  }

  if (![(StoreKitClient *)v12 XPCClient])
  {
    v14 = [[XPCClient alloc] initWithInputConnection:connection];
    [(StoreKitClient *)v12 setXPCClient:v14];
  }

  return v12;
}

- (id)_clientForObjectID:(id)d
{
  _clients = [(MicroPaymentQueue *)self _clients];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [_clients countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(_clients);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if (([(NSManagedObjectID *)[(StoreKitClient *)v10 microPaymentClientID] isEqual:d]& 1) != 0)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [_clients countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (v10)
    {
      return v10;
    }
  }

LABEL_11:
  v10 = [[StoreKitClient alloc] initWithMicroPaymentClientID:d];
  [(NSMutableArray *)self->_clients addObject:v10];
  v11 = v10;
  return v10;
}

- (id)_clientForPayment:(id)payment
{
  result = [objc_msgSend(payment "client")];
  if (result)
  {

    return [(MicroPaymentQueue *)self _clientForObjectID:result];
  }

  return result;
}

- (id)_clients
{
  result = self->_clients;
  if (!result)
  {
    self->_clients = objc_alloc_init(NSMutableArray);
    _beginManagedContextSession = [(MicroPaymentQueue *)self _beginManagedContextSession];
    v5 = objc_alloc_init(NSFetchRequest);
    [v5 setEntity:{+[MicroPaymentClient entityForContext:](MicroPaymentClient, "entityForContext:", _beginManagedContextSession)}];
    v78 = 0;
    v62 = _beginManagedContextSession;
    obj = [_beginManagedContextSession executeFetchRequest:v5 error:&v78];
    v60 = v5;
    if (obj)
    {
      v6 = kSSUserDefaultsIdentifier;
      v7 = &CFDictionaryGetValue_ptr;
      if (!CFPreferencesGetAppBooleanValue(@"MicroPaymentQueueCleanupClients", kSSUserDefaultsIdentifier, 0))
      {
        applicationID = v6;
        v8 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v64 = [obj countByEnumeratingWithState:&v74 objects:v87 count:16];
        if (v64)
        {
          v63 = *v75;
          v61 = v8;
          do
          {
            for (i = 0; i != v64; i = i + 1)
            {
              if (*v75 != v63)
              {
                objc_enumerationMutation(obj);
              }

              v10 = *(*(&v74 + 1) + 8 * i);
              v11 = [objc_msgSend(v10 "usesIdentityAttributes")];
              v12 = [NSArray alloc];
              identifier = [v10 identifier];
              if (v11)
              {
                v14 = [v12 initWithObjects:{identifier, objc_msgSend(v10, "bundleVersion"), objc_msgSend(v10, "storeIdentifier"), objc_msgSend(v10, "storeVersion"), objc_msgSend(v10, "sandboxed"), 0}];
              }

              else
              {
                v14 = [v12 initWithObjects:{identifier, objc_msgSend(v10, "sandboxed"), 0, v56, v57, v58}];
              }

              v15 = v14;
              v16 = [[ArrayHash alloc] initWithArray:v14];

              v17 = [v8 objectForKey:v16];
              if (v17)
              {
                v18 = v17;
                sharedDaemonConfig = [v7[412] sharedDaemonConfig];
                if (!sharedDaemonConfig)
                {
                  sharedDaemonConfig = [v7[412] sharedConfig];
                }

                v20 = v7;
                LODWORD(v21) = [sharedDaemonConfig shouldLog];
                if ([sharedDaemonConfig shouldLogToDisk])
                {
                  LODWORD(v21) = v21 | 2;
                }

                oSLogObject = [sharedDaemonConfig OSLogObject];
                if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = v21;
                }

                else
                {
                  v21 &= 2u;
                }

                if (v21)
                {
                  v23 = objc_opt_class();
                  v81 = 138412802;
                  v82 = v23;
                  v83 = 2112;
                  v84 = v10;
                  v85 = 2112;
                  v86 = v18;
                  LODWORD(v55) = 32;
                  v24 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Merging duplicate client %@ into client %@", &v81, v55);
                  if (v24)
                  {
                    v25 = v24;
                    v26 = [NSString stringWithCString:v24 encoding:4];
                    free(v25);
                    v54 = v26;
                    SSFileLog();
                  }
                }

                payments = [objc_msgSend(v10 payments];
                v70 = 0u;
                v71 = 0u;
                v72 = 0u;
                v73 = 0u;
                v28 = [payments countByEnumeratingWithState:&v70 objects:v80 count:16];
                if (v28)
                {
                  v29 = v28;
                  v30 = *v71;
                  do
                  {
                    for (j = 0; j != v29; j = j + 1)
                    {
                      if (*v71 != v30)
                      {
                        objc_enumerationMutation(payments);
                      }

                      [*(*(&v70 + 1) + 8 * j) setClient:v18];
                    }

                    v29 = [payments countByEnumeratingWithState:&v70 objects:v80 count:16];
                  }

                  while (v29);
                }

                [v62 deleteObject:v10];

                v7 = v20;
                v8 = v61;
              }

              else
              {
                [v8 setObject:v10 forKey:v16];
              }
            }

            v64 = [obj countByEnumeratingWithState:&v74 objects:v87 count:16];
          }

          while (v64);
        }

        sub_1000CE00C(v62);
        obj = [v8 allValues];

        CFPreferencesSetAppValue(@"MicroPaymentQueueCleanupClients", [NSNumber numberWithBool:1], applicationID);
        CFPreferencesAppSynchronize(kITunesStoreDaemonDefaultsID);
      }

      sharedDaemonConfig2 = [v7[412] sharedDaemonConfig];
      if (!sharedDaemonConfig2)
      {
        sharedDaemonConfig2 = [v7[412] sharedConfig];
      }

      shouldLog = [sharedDaemonConfig2 shouldLog];
      if ([sharedDaemonConfig2 shouldLogToDisk])
      {
        v34 = shouldLog | 2;
      }

      else
      {
        v34 = shouldLog;
      }

      oSLogObject2 = [sharedDaemonConfig2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v36 = v34;
      }

      else
      {
        v36 = v34 & 2;
      }

      if (v36)
      {
        v37 = objc_opt_class();
        v38 = [obj count];
        v81 = 138412546;
        v82 = v37;
        v83 = 2048;
        v84 = v38;
        LODWORD(v55) = 22;
        v39 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Found %lu existing clients", &v81, v55);
        if (v39)
        {
          v40 = v39;
          v41 = [NSString stringWithCString:v39 encoding:4];
          free(v40);
          v54 = v41;
          SSFileLog();
        }
      }

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v42 = [obj countByEnumeratingWithState:&v66 objects:v79 count:{16, v54}];
      if (v42)
      {
        v43 = v42;
        v44 = *v67;
        do
        {
          for (k = 0; k != v43; k = k + 1)
          {
            if (*v67 != v44)
            {
              objc_enumerationMutation(obj);
            }

            v46 = -[StoreKitClient initWithMicroPaymentClientID:]([StoreKitClient alloc], "initWithMicroPaymentClientID:", [*(*(&v66 + 1) + 8 * k) objectID]);
            [(NSMutableArray *)self->_clients addObject:v46];
          }

          v43 = [obj countByEnumeratingWithState:&v66 objects:v79 count:16];
        }

        while (v43);
      }
    }

    else
    {
      v47 = +[SSLogConfig sharedDaemonConfig];
      if (!v47)
      {
        v47 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v47 shouldLog];
      if ([v47 shouldLogToDisk])
      {
        LODWORD(v49) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v49) = shouldLog2;
      }

      oSLogObject3 = [v47 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v49;
      }

      else
      {
        v49 &= 2u;
      }

      if (v49)
      {
        v51 = objc_opt_class();
        v81 = 138412546;
        v82 = v51;
        v83 = 2112;
        v84 = v78;
        v52 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not load clients: %@", &v81, 22);
        if (v52)
        {
          v53 = v52;
          [NSString stringWithCString:v52 encoding:4];
          free(v53);
          SSFileLog();
        }
      }
    }

    +[NSThread endManagedContextSession];
    return self->_clients;
  }

  return result;
}

- (id)_copyDownloadsIDsFromMessage:(id)message key:(const char *)key
{
  v6 = objc_alloc_init(NSMutableArray);
  value = xpc_dictionary_get_value(message, key);
  if (value)
  {
    v8 = value;
    if (xpc_get_type(value) == &_xpc_type_array)
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1000C229C;
      applier[3] = &unk_100327FB0;
      applier[4] = v6;
      xpc_array_apply(v8, applier);
    }
  }

  return v6;
}

- (void)_dispatchAsync:(id)async
{
  [+[Daemon daemon](Daemon "daemon")];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C23B4;
  block[3] = &unk_100327FD8;
  block[4] = async;
  dispatch_async(dispatchQueue, block);
}

- (void)_enumerateDownloadsForIdentifiers:(id)identifiers context:(id)context usingBlock:(id)block
{
  v18 = [MicroPaymentDownload downloadEntityFromContext:context];
  v7 = [[NSArray alloc] initWithObjects:{@"downloadID", @"payment", 0}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [identifiers countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(identifiers);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = objc_alloc_init(NSFetchRequest);
        [v14 setEntity:v18];
        [v14 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"downloadID=%@", v12)}];
        [v14 setPropertiesToFetch:v7];
        v15 = [context executeFetchRequest:v14 error:0];
        v16 = [v15 count];
        v17 = 0;
        if (v16 == 1)
        {
          v17 = [v15 objectAtIndex:0];
        }

        (*(block + 2))(block, v12, v17);

        objc_autoreleasePoolPop(v13);
      }

      v9 = [identifiers countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

- (void)_finishPaymentOperationForPaymentID:(id)d result:(BOOL)result error:(id)error
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C264C;
  v5[3] = &unk_100328000;
  v5[4] = self;
  v5[5] = d;
  resultCopy = result;
  [(MicroPaymentQueue *)self _dispatchAsync:v5, result, error];
}

- (id)_firstReadyPaymentInContext:(id)context
{
  _clients = [(MicroPaymentQueue *)self _clients];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [_clients countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(_clients);
        }

        firstReadyPaymentID = [*(*(&v10 + 1) + 8 * v8) firstReadyPaymentID];
        if (firstReadyPaymentID)
        {
          return [context objectWithID:firstReadyPaymentID];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [_clients countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)_newPaymentQueueClientWithMessage:(id)message connection:(id)connection parameter:(const char *)parameter
{
  if ((SSXPCConnectionHasEntitlement() & 1) == 0 && !SSXPCConnectionHasEntitlement())
  {
    return 0;
  }

  v7 = objc_alloc(sub_1001FA240());
  value = xpc_dictionary_get_value(message, parameter);

  return [v7 initWithXPCEncoding:value];
}

- (void)_sendPurchaseIntentsForApp:(id)app storeKitClient:(id)client force:(BOOL)force
{
  v8 = dispatch_semaphore_create(0);
  dispatch_retain(v8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C2954;
  v10[3] = &unk_100328028;
  v10[4] = self;
  v10[5] = app;
  v10[6] = v8;
  v10[7] = client;
  [+[PurchaseActionsManager sharedInstance](PurchaseActionsManager getPurchaseIntentsForApp:"getPurchaseIntentsForApp:completionHandler:" completionHandler:app, v10];
  v9 = dispatch_time(0, 90000000000);
  dispatch_semaphore_wait(v8, v9);
  dispatch_release(v8);
}

- (void)_setActivePaymentID:(id)d
{
  activePaymentID = self->_activePaymentID;
  if (activePaymentID != d)
  {
    if (!activePaymentID)
    {
      [+[Daemon daemon](Daemon "daemon")];
      activePaymentID = self->_activePaymentID;
    }

    dCopy = d;
    self->_activePaymentID = dCopy;
    if (!dCopy)
    {
      v7 = +[Daemon daemon];

      [v7 releaseKeepAliveAssertion:@"com.apple.itunesstored.MicroPaymentQueue"];
    }
  }
}

- (void)_startFirstReadyPayment
{
  if (self->_activePaymentID)
  {
    v3 = 1;
  }

  else
  {
    v4 = [(MicroPaymentQueue *)self _firstReadyPaymentInContext:[(MicroPaymentQueue *)self _beginManagedContextSession]];
    if (v4)
    {
      v5 = v4;
      v6 = +[SSLogConfig sharedDaemonConfig];
      if (!v6)
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
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v8 = v8;
      }

      else
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v18 = 138412546;
        v19 = objc_opt_class();
        v20 = 2112;
        v21 = v5;
        v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Starting payment: %@", &v18, 22);
        if (v10)
        {
          v11 = v10;
          v12 = [NSString stringWithCString:v10 encoding:4];
          free(v11);
          v16 = v12;
          SSFileLog();
        }
      }

      objectID = [v5 objectID];
      [(MicroPaymentQueue *)self _setActivePaymentID:objectID];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000C3028;
      v17[3] = &unk_100328050;
      v17[4] = [SSWeakReference weakReferenceWithObject:self];
      v17[5] = objectID;
      [-[MicroPaymentQueue _clientForPayment:](self _clientForPayment:{v5), "startPaymentWithObjectID:withCompletionBlock:", objectID, v17}];
    }

    +[NSThread endManagedContextSession];
    v3 = self->_activePaymentID != 0;
  }

  if (self->_aliveState != v3)
  {
    v14 = [[NSNumber alloc] initWithInteger:v3];
    self->_aliveState = v3;
    v15 = kSSUserDefaultsIdentifier;
    CFPreferencesSetAppValue(@"MicroPaymentQueueAlive", v14, kSSUserDefaultsIdentifier);
    CFPreferencesAppSynchronize(v15);
  }
}

@end