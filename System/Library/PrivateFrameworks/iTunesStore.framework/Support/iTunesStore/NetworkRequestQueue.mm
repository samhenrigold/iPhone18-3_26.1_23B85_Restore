@interface NetworkRequestQueue
+ (id)sharedNetworkRequestQueue;
+ (void)_addSubscriptionOperationWithType:(int64_t)type message:(id)message connection:(id)connection;
+ (void)authenticationRequestWithMessage:(id)message connection:(id)connection;
+ (void)claimAppsWithMessage:(id)message connection:(id)connection;
+ (void)disableAutomaticDownloadKindsWithMessage:(id)message connection:(id)connection;
+ (void)getDownloadQueueWithMessage:(id)message connection:(id)connection;
+ (void)getMatchStatusWithMessage:(id)message connection:(id)connection;
+ (void)getSubscriptionEntitlements:(id)entitlements connection:(id)connection;
+ (void)getSubscriptionStatusWithMessage:(id)message connection:(id)connection;
+ (void)importDownloadToIPodLibraryWithMessage:(id)message connection:(id)connection;
+ (void)installManagedAppWithMessage:(id)message connection:(id)connection provideDetailedResponse:(BOOL)response;
+ (void)keybagSyncWithMessage:(id)message connection:(id)connection;
+ (void)loadURLBagWithMessage:(id)message connection:(id)connection;
+ (void)lookupItemsWithMessage:(id)message connection:(id)connection;
+ (void)lookupWithMessage:(id)message connection:(id)connection;
+ (void)observeXPCServer:(id)server;
+ (void)performMigrationWithMessage:(id)message connection:(id)connection;
+ (void)presentRemoteWebViewWithMessage:(id)message connection:(id)connection;
+ (void)rentalInformationRequestWithMessage:(id)message connection:(id)connection;
+ (void)repairAppWithMessage:(id)message connection:(id)connection;
+ (void)requestURLWithMessage:(id)message connection:(id)connection;
+ (void)restoreDemotedApplicationsWithMessage:(id)message connection:(id)connection;
+ (void)sdk_getCloudServiceCapabilities:(id)capabilities connection:(id)connection;
+ (void)sdk_loadStoreFrontIdentifierWithMessage:(id)message connection:(id)connection;
+ (void)sdk_requestAPITokenWithMessage:(id)message connection:(id)connection;
+ (void)serverAuthenticateWithMessage:(id)message connection:(id)connection;
+ (void)silentEnrollmentVerificationWithMessage:(id)message connection:(id)connection;
+ (void)silentEnrollmentWithMessage:(id)message connection:(id)connection;
+ (void)updateMediaContentTasteWithMessage:(id)message connection:(id)connection;
+ (void)wishlistAddItemsWithMessage:(id)message connection:(id)connection;
- (NetworkRequestQueue)init;
- (id)_copyAuthenticationContextWithContext:(id)context client:(id)client;
- (id)_managedQueue;
- (id)_newClientWithMessage:(id)message connection:(id)connection;
- (void)_dequeueSubscriptionStatusOperation:(id)operation;
- (void)_enqueueOperationsForStoreServicesURL:(id)l;
- (void)_enqueueSubscriptionStatusOperation:(id)operation forClient:(id)client;
- (void)_sendMessageWithError:(id)error toClient:(id)client;
- (void)_sendNotSupportedMessageToClient:(id)client;
- (void)_sendUnentitledMessageToClient:(id)client;
- (void)_sendUnentitledReplyForMessage:(id)message connection:(id)connection;
@end

@implementation NetworkRequestQueue

- (NetworkRequestQueue)init
{
  v7.receiver = self;
  v7.super_class = NetworkRequestQueue;
  v2 = [(RequestQueue *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("NetworkRequestQueueSubscriptionStatusAccessQueue", 0);
    subscriptionStatusOperationAccessQueue = v2->_subscriptionStatusOperationAccessQueue;
    v2->_subscriptionStatusOperationAccessQueue = v3;

    v5 = objc_alloc_init(ISOperationQueue);
    [v5 setAdjustsMaxConcurrentOperationCount:0];
    [v5 setMaxConcurrentOperationCount:24];
    [(RequestQueue *)v2 setOperationQueue:v5];
  }

  return v2;
}

+ (id)sharedNetworkRequestQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100140DB8;
  block[3] = &unk_100327170;
  block[4] = self;
  if (qword_100383F28 != -1)
  {
    dispatch_once(&qword_100383F28, block);
  }

  v2 = qword_100383F20;

  return v2;
}

+ (void)observeXPCServer:(id)server
{
  serverCopy = server;
  [serverCopy addObserver:self selector:"claimAppsWithMessage:connection:" forMessage:138];
  [serverCopy addObserver:self selector:"getMatchStatusWithMessage:connection:" forMessage:130];
  [serverCopy addObserver:self selector:"disableAutomaticDownloadKindsWithMessage:connection:" forMessage:194];
  [serverCopy addObserver:self selector:"keybagSyncWithMessage:connection:" forMessage:144];
  [serverCopy addObserver:self selector:"installManagedAppWithMessage:connection:" forMessage:112];
  [serverCopy addObserver:self selector:"installManagedAppWithMessageAndDetailedResponse:connection:" forMessage:113];
  [serverCopy addObserver:self selector:"getDownloadQueueWithMessage:connection:" forMessage:65];
  [serverCopy addObserver:self selector:"importDownloadToIPodLibraryWithMessage:connection:" forMessage:66];
  [serverCopy addObserver:self selector:"loadURLBagWithMessage:connection:" forMessage:25];
  [serverCopy addObserver:self selector:"lookupItemsWithMessage:connection:" forMessage:54];
  [serverCopy addObserver:self selector:"lookupWithMessage:connection:" forMessage:85];
  [serverCopy addObserver:self selector:"sdk_loadStoreFrontIdentifierWithMessage:connection:" forMessage:174];
  [serverCopy addObserver:self selector:"sdk_getCloudServiceCapabilities:connection:" forMessage:175];
  [serverCopy addObserver:self selector:"performMigrationWithMessage:connection:" forMessage:116];
  [serverCopy addObserver:self selector:"repairAppWithMessage:connection:" forMessage:148];
  [serverCopy addObserver:self selector:"requestURLWithMessage:connection:" forMessage:62];
  [serverCopy addObserver:self selector:"restoreDemotedApplicationsWithMessage:connection:" forMessage:162];
  [serverCopy addObserver:self selector:"serverAuthenticateWithMessage:connection:" forMessage:132];
  [serverCopy addObserver:self selector:"authenticationRequestWithMessage:connection:" forMessage:133];
  [serverCopy addObserver:self selector:"updateMediaContentTasteWithMessage:connection:" forMessage:163];
  [serverCopy addObserver:self selector:"wishlistAddItemsWithMessage:connection:" forMessage:166];
  [serverCopy addObserver:self selector:"presentRemoteWebViewWithMessage:connection:" forMessage:209];
  [serverCopy addObserver:self selector:"disableSubscriptionWithMessage:connection:" forMessage:145];
  [serverCopy addObserver:self selector:"enableSubscriptionWithMessage:connection:" forMessage:146];
  [serverCopy addObserver:self selector:"getSubscriptionStatusWithMessage:connection:" forMessage:149];
  [serverCopy addObserver:self selector:"getSubscriptionEntitlements:connection:" forMessage:150];
  [serverCopy addObserver:self selector:"refreshSubscriptionWithMessage:connection:" forMessage:147];
  [serverCopy addObserver:self selector:"rentalInformationRequestWithMessage:connection:" forMessage:170];
  [serverCopy addObserver:self selector:"sdk_requestAPITokenWithMessage:connection:" forMessage:191];
  [serverCopy addObserver:self selector:"silentEnrollmentWithMessage:connection:" forMessage:211];
  [serverCopy addObserver:self selector:"silentEnrollmentVerificationWithMessage:connection:" forMessage:212];
}

+ (void)claimAppsWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  if ((SSXPCConnectionHasEntitlement() & 1) == 0 && (SSXPCConnectionHasEntitlement() & 1) == 0)
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog;
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v24 = 138412546;
      v25 = objc_opt_class();
      v26 = 2112;
      v27 = v9;
      v18 = v25;
      v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot get match status for unentitled client: %@", &v24, 22);

      if (!v19)
      {
LABEL_19:

        [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
        goto LABEL_20;
      }

      oSLogObject = [NSString stringWithCString:v19 encoding:4];
      free(v19);
      SSFileLog();
    }

    goto LABEL_19;
  }

  v10 = [SSVClaimApplicationsRequest alloc];
  v11 = xpc_dictionary_get_value(messageCopy, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  if ([v12 claimStyle])
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100141520;
    v20[3] = &unk_100329B40;
    v13 = &v21;
    v21 = v9;
    [AppStoreUtility checkClaimsEstablishingActiveAccounts:1 ignoringPreviousClaimAttempts:1 completionBlock:v20];
  }

  else
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100141454;
    v22[3] = &unk_100329B40;
    v13 = &v23;
    v23 = v9;
    [AppStoreUtility checkFirstPartyClaimsWithCompletionBlock:v22];
  }

LABEL_20:
}

+ (void)disableAutomaticDownloadKindsWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  if ((SSXPCConnectionHasEntitlement() & 1) == 0)
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog;
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v22 = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = v9;
      v18 = v23;
      v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Cannot disable automatic download kinds for unentitled client. client = %{public}@", &v22, 22);

      if (!v19)
      {
LABEL_15:

        [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
        goto LABEL_16;
      }

      oSLogObject = [NSString stringWithCString:v19 encoding:4];
      free(v19);
      SSFileLog();
    }

    goto LABEL_15;
  }

  v10 = [[SetAutomaticDownloadKindsOperation alloc] initWithDownloadKinds:0];
  [(SetAutomaticDownloadKindsOperation *)v10 setShouldSuppressServerDialogs:1];
  objc_opt_class();
  v11 = SSXPCDictionaryCopyObjectWithClass();
  v12 = [sharedNetworkRequestQueue _copyAuthenticationContextWithContext:v11 client:v9];

  [(SetAutomaticDownloadKindsOperation *)v10 setAuthenticationContext:v12];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001418CC;
  v20[3] = &unk_100329B68;
  v21 = v10;
  v13 = v10;
  [sharedNetworkRequestQueue addOperation:v13 forMessage:messageCopy connection:connectionCopy replyBlock:v20];

LABEL_16:
}

+ (void)getMatchStatusWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  if ((SSXPCConnectionHasEntitlement() & 1) == 0 && (SSXPCConnectionHasEntitlement() & 1) == 0)
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog;
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v22 = 138412546;
      v23 = objc_opt_class();
      v24 = 2112;
      v25 = v9;
      v18 = v23;
      v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot get match status for unentitled client: %@", &v22, 22);

      if (!v19)
      {
LABEL_16:

        [sharedNetworkRequestQueue _sendUnentitledReplyForMessage:messageCopy connection:connectionCopy];
        goto LABEL_17;
      }

      oSLogObject = [NSString stringWithCString:v19 encoding:4];
      free(v19);
      SSFileLog();
    }

    goto LABEL_16;
  }

  objc_opt_class();
  v10 = SSXPCDictionaryCopyObjectWithClass();
  v11 = [[LoadMatchStatusOperation alloc] initWithAccountIdentifier:v10];
  userAgent = [v9 userAgent];
  [(LoadMatchStatusOperation *)v11 setUserAgent:userAgent];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100141C48;
  v20[3] = &unk_100329B68;
  v21 = v11;
  v13 = v11;
  [sharedNetworkRequestQueue addOperation:v13 forMessage:messageCopy connection:connectionCopy replyBlock:v20];

LABEL_17:
}

+ (void)getSubscriptionStatusWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSIsDaemon())
  {
    v10 = objc_alloc_init(SubscriptionStatusOperation);
    v11 = [SSVSubscriptionStatusRequest alloc];
    v12 = xpc_dictionary_get_value(messageCopy, "1");
    v13 = [v11 initWithXPCEncoding:v12];

    -[SubscriptionStatusOperation setAuthenticatesIfNecessary:](v10, "setAuthenticatesIfNecessary:", [v13 authenticatesIfNecessary]);
    authenticationContext = [v13 authenticationContext];
    [(SubscriptionStatusOperation *)v10 setAuthenticationContext:authenticationContext];

    -[SubscriptionStatusOperation setCarrierBundleProvisioningStyle:](v10, "setCarrierBundleProvisioningStyle:", [v13 carrierBundleProvisioningStyle]);
    localizedAuthenticationReason = [v13 localizedAuthenticationReason];
    [(SubscriptionStatusOperation *)v10 setLocalizedAuthenticationReason:localizedAuthenticationReason];

    reason = [v13 reason];
    [(SubscriptionStatusOperation *)v10 setReason:reason];

    objc_initWeak(location, v10);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001420A8;
    v26[3] = &unk_100329B90;
    v17 = v9;
    v27 = v17;
    objc_copyWeak(&v29, location);
    v18 = sharedNetworkRequestQueue;
    v28 = v18;
    [(SubscriptionStatusOperation *)v10 setStatusBlock:v26];
    [v18 _enqueueSubscriptionStatusOperation:v10 forClient:v17];

    objc_destroyWeak(&v29);
    objc_destroyWeak(location);
  }

  else
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      LODWORD(v21) = shouldLog | 2;
    }

    else
    {
      LODWORD(v21) = shouldLog;
    }

    oSLogObject = [v19 OSLogObject];
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
      *location = 138412546;
      *&location[4] = objc_opt_class();
      v31 = 2112;
      v32 = v9;
      v23 = *&location[4];
      v24 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Deny unentitled client: %@", location, 22);

      if (v24)
      {
        v25 = [NSString stringWithCString:v24 encoding:4];
        free(v24);
        SSFileLog();
      }
    }

    else
    {
    }

    [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
  }
}

+ (void)getDownloadQueueWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  v10 = [SSVDownloadQueueRequest alloc];
  v11 = xpc_dictionary_get_value(messageCopy, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  queueType = [v12 queueType];
  if ([v9 hasEntitlements])
  {
    v14 = @"pendingApps";
    if (queueType == 1)
    {
      v14 = @"pendingRentals";
    }

    if (queueType)
    {
      v15 = v14;
    }

    else
    {
      v15 = @"pendingSongs";
    }

    v16 = objc_alloc_init(SSMutableURLRequestProperties);
    auditTokenData = [v9 auditTokenData];
    [v16 setClientAuditTokenData:auditTokenData];

    [v16 setURLBagKey:v15];
    userAgent = [v9 userAgent];
    [v16 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];

    v19 = [[LoadDownloadQueueOperation alloc] initWithRequestProperties:v16];
    v20 = +[SSAccountStore defaultStore];
    activeAccount = [v20 activeAccount];

    uniqueIdentifier = [activeAccount uniqueIdentifier];
    [(LoadDownloadQueueOperation *)v19 setAccountIdentifier:uniqueIdentifier];

    [(LoadDownloadQueueOperation *)v19 setNeedsAuthentication:0];
    objc_initWeak(location, v19);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1001425B8;
    v31[3] = &unk_100328ED0;
    objc_copyWeak(&v33, location);
    v32 = v9;
    [(LoadDownloadQueueOperation *)v19 setCompletionBlock:v31];
    operationQueue = [sharedNetworkRequestQueue operationQueue];
    [operationQueue addOperation:v19];

    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  else
  {
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      LODWORD(v26) = shouldLog | 2;
    }

    else
    {
      LODWORD(v26) = shouldLog;
    }

    oSLogObject = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v26;
    }

    else
    {
      v26 &= 2u;
    }

    if (v26)
    {
      *location = 138412546;
      *&location[4] = objc_opt_class();
      v35 = 2112;
      v36 = v9;
      v28 = *&location[4];
      v29 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot install items for unentitled client: %@", location, 22);

      if (v29)
      {
        v30 = [NSString stringWithCString:v29 encoding:4];
        free(v29);
        SSFileLog();
      }
    }

    else
    {
    }

    [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
  }
}

+ (void)importDownloadToIPodLibraryWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  v10 = [SSImportDownloadToIPodLibraryRequest alloc];
  v11 = xpc_dictionary_get_value(messageCopy, "1");
  v37 = [v10 initWithXPCEncoding:v11];

  if ([v9 hasEntitlements])
  {
    sharedNetworkRequestQueue2 = [self sharedNetworkRequestQueue];
    downloadMetadata = [v37 downloadMetadata];
    if (downloadMetadata || ([v37 purchaseResponse], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "purchase"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "valueForDownloadProperty:", SSDownloadPropertyStoreItemIdentifier), v15 = objc_claimAutoreleasedReturnValue(), v14, objc_msgSend(v13, "downloadMetadataForItemIdentifier:", objc_msgSend(v15, "unsignedLongLongValue")), downloadMetadata = objc_claimAutoreleasedReturnValue(), v15, v13, downloadMetadata))
    {
      v16 = objc_alloc_init(IPodLibraryItem);
      v17 = [StoreDownload alloc];
      dictionary = [downloadMetadata dictionary];
      v19 = [(StoreDownload *)v17 initWithDictionary:dictionary];

      [(IPodLibraryItem *)v16 setItemMetadata:v19];
      if ([(StoreDownload *)v19 isRental])
      {
        [(IPodLibraryItem *)v16 setUpdateType:2];
        fullSizeImageURL = [(StoreDownload *)v19 fullSizeImageURL];

        if (fullSizeImageURL)
        {
          fullSizeImageURL2 = [(StoreDownload *)v19 fullSizeImageURL];
          v22 = [NSData dataWithContentsOfURL:fullSizeImageURL2];

          [(IPodLibraryItem *)v16 setItemArtworkData:v22];
        }
      }

      v23 = [[AddItemToIPodLibraryOperation alloc] initWithIPodLibraryItem:v16];
      objc_initWeak(location, v23);
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100142D60;
      v38[3] = &unk_100329BB8;
      objc_copyWeak(&v42, location);
      v39 = messageCopy;
      v40 = connectionCopy;
      v24 = sharedNetworkRequestQueue2;
      v41 = v24;
      [(AddItemToIPodLibraryOperation *)v23 setCompletionBlock:v38];
      [v24 setClient:v9 forOperation:v23];
      operationQueue = [v24 operationQueue];
      [operationQueue addOperation:v23];

      objc_destroyWeak(&v42);
      objc_destroyWeak(location);
    }

    else
    {
      reply = xpc_dictionary_create_reply(messageCopy);
      v35 = reply;
      if (reply)
      {
        xpc_dictionary_set_int64(reply, "0", 1011);
        xpc_dictionary_set_BOOL(v35, "1", 0);
        xpc_connection_send_message(connectionCopy, v35);
      }
    }
  }

  else
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = shouldLog | 2;
    }

    else
    {
      v28 = shouldLog;
    }

    oSLogObject = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v28;
    }

    else
    {
      v30 = v28 & 2;
    }

    if (v30)
    {
      *location = 138412546;
      *&location[4] = objc_opt_class();
      v44 = 2112;
      v45 = v9;
      v31 = *&location[4];
      v32 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot import item for unentitled client: %@", location, 22);

      if (v32)
      {
        v33 = [NSString stringWithCString:v32 encoding:4];
        free(v32);
        SSFileLog();
      }
    }

    else
    {
    }

    [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
  }
}

+ (void)sdk_getCloudServiceCapabilities:(id)capabilities connection:(id)connection
{
  capabilitiesCopy = capabilities;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:capabilitiesCopy connection:connectionCopy];
  v25 = 0u;
  v26 = 0u;
  xpc_connection_get_audit_token();
  if ((SSXPCConnectionHasEntitlement() & 1) != 0 || (*location = v25, v28 = v26, TCCAccessCheckAuditToken()))
  {
    v10 = [SSVCloudServiceCapabilitiesRequest alloc];
    v11 = xpc_dictionary_get_value(capabilitiesCopy, "1");
    v12 = [v10 initWithXPCEncoding:v11];

    oSLogObject = objc_alloc_init(CloudServiceCapabilitiesOperation);
    -[CloudServiceCapabilitiesOperation setAllowsPromptingForPrivacyAcknowledgement:](oSLogObject, "setAllowsPromptingForPrivacyAcknowledgement:", [v12 allowsPromptingForPrivacyAcknowledgement]);
    v14 = SSXPCConnectionCopyValueForEntitlement();
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector())
    {
      [(CloudServiceCapabilitiesOperation *)oSLogObject setAllowsBypassOfPrivacyAcknowledgement:1];
    }

    objc_initWeak(location, oSLogObject);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001431FC;
    v21[3] = &unk_100329BE0;
    objc_copyWeak(&v24, location);
    v15 = v9;
    v22 = v15;
    v16 = sharedNetworkRequestQueue;
    v23 = v16;
    [(CloudServiceCapabilitiesOperation *)oSLogObject setResponseBlock:v21];
    [v16 setClient:v15 forOperation:oSLogObject];
    [v16 addOperation:oSLogObject];

    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      LODWORD(v18) = shouldLog | 2;
    }

    else
    {
      LODWORD(v18) = shouldLog;
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = objc_opt_class();
      v19 = *(location + 4);
      v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot load cloud service capabilities for unauthorized client", location, 12);

      if (!v20)
      {
        goto LABEL_8;
      }

      oSLogObject = [NSString stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog();
    }
  }

LABEL_8:
}

+ (void)getSubscriptionEntitlements:(id)entitlements connection:(id)connection
{
  entitlementsCopy = entitlements;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:entitlementsCopy connection:connectionCopy];
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSIsDaemon())
  {
    v10 = xpc_dictionary_get_BOOL(entitlementsCopy, "1");
    v11 = objc_alloc_init(SubscriptionEntitlementsOperation);
    [(SubscriptionEntitlementsOperation *)v11 setIgnoreCaches:v10];
    clientIdentifier = [v9 clientIdentifier];
    [(SubscriptionEntitlementsOperation *)v11 setClientIdentifier:clientIdentifier];

    objc_initWeak(location, v11);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10014362C;
    v21[3] = &unk_100329C08;
    objc_copyWeak(&v25, location);
    v22 = entitlementsCopy;
    v23 = connectionCopy;
    v13 = sharedNetworkRequestQueue;
    v24 = v13;
    [(SubscriptionEntitlementsOperation *)v11 setSubscriptionEntitlementsBlock:v21];
    [v13 setClient:v9 forOperation:v11];
    [v13 addOperation:v11];

    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }

  else
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog;
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      *location = 138412546;
      *&location[4] = objc_opt_class();
      v27 = 2112;
      v28 = v9;
      v18 = *&location[4];
      v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Deny unentitled client: %@", location, 22);

      if (v19)
      {
        v20 = [NSString stringWithCString:v19 encoding:4];
        free(v19);
        SSFileLog();
      }
    }

    else
    {
    }

    [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
  }
}

+ (void)installManagedAppWithMessage:(id)message connection:(id)connection provideDetailedResponse:(BOOL)response
{
  connectionCopy = connection;
  messageCopy = message;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v11 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];

  v12 = [SSVInstallManagedApplicationRequest alloc];
  v13 = xpc_dictionary_get_value(messageCopy, "1");

  v14 = [v12 initWithXPCEncoding:v13];
  if (([v11 hasEntitlements] & 1) == 0)
  {
    v25 = +[SSLogConfig sharedDaemonConfig];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      LODWORD(v27) = shouldLog | 2;
    }

    else
    {
      LODWORD(v27) = shouldLog;
    }

    oSLogObject = [v25 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v27;
    }

    else
    {
      v27 &= 2u;
    }

    if (v27)
    {
      v42 = 138412546;
      v43 = objc_opt_class();
      v44 = 2112;
      v45 = v11;
      v29 = v43;
      v30 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot install items for unentitled client: %@", &v42, 22);

      if (!v30)
      {
LABEL_28:

        [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v11];
        goto LABEL_42;
      }

      oSLogObject = [NSString stringWithCString:v30 encoding:4];
      free(v30);
      SSFileLog();
    }

    goto LABEL_28;
  }

  itemIdentifier = [v14 itemIdentifier];

  v16 = +[SSLogConfig sharedDaemonConfig];
  v17 = v16;
  if (!itemIdentifier)
  {
    if (!v16)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      LODWORD(v32) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v32) = shouldLog2;
    }

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v32;
    }

    else
    {
      v32 &= 2u;
    }

    if (v32)
    {
      v42 = 138412290;
      v43 = objc_opt_class();
      v34 = v43;
      v35 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "[%@] Managed application request requires an itemIdentifier", &v42, 12);

      if (!v35)
      {
LABEL_41:

        v36 = SSError();
        [sharedNetworkRequestQueue _sendMessageWithError:v36 toClient:v11];

        goto LABEL_42;
      }

      oSLogObject2 = [NSString stringWithCString:v35 encoding:4];
      free(v35);
      SSFileLog();
    }

    goto LABEL_41;
  }

  if (!v16)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    LODWORD(v19) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v19) = shouldLog3;
  }

  oSLogObject3 = [v17 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v19;
  }

  else
  {
    v19 &= 2u;
  }

  if (!v19)
  {
    goto LABEL_14;
  }

  v21 = objc_opt_class();
  v22 = v21;
  itemIdentifier2 = [v14 itemIdentifier];
  v42 = 138412802;
  v43 = v21;
  v44 = 2112;
  v45 = v11;
  v46 = 2112;
  v47 = itemIdentifier2;
  v24 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Sending managed application request from client: %@ for itemID: %@", &v42, 32);

  if (v24)
  {
    oSLogObject3 = [NSString stringWithCString:v24 encoding:4];
    free(v24);
    SSFileLog();
LABEL_14:
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100143C74;
  v37[3] = &unk_100329C30;
  v38 = sharedNetworkRequestQueue;
  v39 = v14;
  responseCopy = response;
  v40 = v11;
  [AppStoreUtility installManagedAppWithRequest:v39 completionBlock:v37];

LABEL_42:
}

+ (void)keybagSyncWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  HasEntitlement = SSXPCConnectionHasEntitlement();

  if ((HasEntitlement & 1) == 0)
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      LODWORD(v17) = shouldLog | 2;
    }

    else
    {
      LODWORD(v17) = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = v9;
      v19 = v24;
      v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot kbsync for unentitled client: %@", &v23, 22);

      if (!v20)
      {
LABEL_15:

        [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
        goto LABEL_16;
      }

      oSLogObject = [NSString stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog();
    }

    goto LABEL_15;
  }

  v11 = [SSVKeybagSyncRequest alloc];
  v12 = xpc_dictionary_get_value(messageCopy, "1");
  v13 = [v11 initWithXPCEncoding:v12];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10014421C;
  v21[3] = &unk_100329B68;
  v22 = [[KeybagSyncOperation alloc] initWithKeybagSyncRequest:v13];
  v14 = v22;
  [sharedNetworkRequestQueue addOperation:v14 forClient:v9 withMessageBlock:v21];

LABEL_16:
}

+ (void)loadURLBagWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSXPCConnectionHasEntitlement())
  {
    v9 = [[XPCClient alloc] initWithInputConnection:connectionCopy];
    v10 = [SSURLBagContext alloc];
    v11 = xpc_dictionary_get_value(messageCopy, "1");
    oSLogObject = [v10 initWithXPCEncoding:v11];

    auditTokenData = [(XPCClient *)v9 auditTokenData];
    [oSLogObject setClientAuditTokenData:auditTokenData];

    v14 = SSHTTPHeaderUserAgent;
    v15 = [oSLogObject valueForHTTPHeaderField:SSHTTPHeaderUserAgent];

    if (!v15)
    {
      userAgent = [(XPCClient *)v9 userAgent];
      [oSLogObject setValue:userAgent forHTTPHeaderField:v14];
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001445E4;
    v22[3] = &unk_100329B68;
    v23 = [[ISLoadURLBagOperation alloc] initWithBagContext:oSLogObject];
    v17 = v23;
    [sharedNetworkRequestQueue addOperation:v17 forMessage:messageCopy connection:connectionCopy replyBlock:v22];
  }

  else
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [(XPCClient *)v9 shouldLog];
    if ([(XPCClient *)v9 shouldLogToDisk])
    {
      LODWORD(v19) = shouldLog | 2;
    }

    else
    {
      LODWORD(v19) = shouldLog;
    }

    oSLogObject = [(XPCClient *)v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v24 = 138412290;
      v25 = objc_opt_class();
      v20 = v25;
      v21 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot load URL bag for unentitled client", &v24, 12);

      if (!v21)
      {
        goto LABEL_7;
      }

      oSLogObject = [NSString stringWithCString:v21 encoding:4];
      free(v21);
      SSFileLog();
    }
  }

LABEL_7:
}

+ (void)lookupItemsWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  if ([v9 hasEntitlements])
  {
    v10 = objc_alloc_init(ISStoreURLOperation);
    v11 = +[DaemonProtocolDataProvider provider];
    [v10 setDataProvider:v11];

    v12 = [SSItemLookupRequest alloc];
    v13 = xpc_dictionary_get_value(messageCopy, "1");
    v14 = [v12 initWithXPCEncoding:v13];

    v15 = objc_alloc_init(SSMutableURLRequestProperties);
    clientIdentifierHeader = [v9 clientIdentifierHeader];
    [v15 setClientIdentifier:clientIdentifierHeader];

    [v15 setURLBagKey:@"adkit-product-url"];
    userAgent = [v9 userAgent];
    [v15 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];

    copyQueryStringParameters = [v14 copyQueryStringParameters];
    [v15 setRequestParameters:copyQueryStringParameters];
    [v10 setRequestProperties:v15];
    objc_initWeak(location, v10);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100144A98;
    v25[3] = &unk_100328ED0;
    objc_copyWeak(&v27, location);
    v26 = v9;
    [v10 setCompletionBlock:v25];
    [sharedNetworkRequestQueue addOperation:v10];

    objc_destroyWeak(&v27);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      LODWORD(v20) = shouldLog | 2;
    }

    else
    {
      LODWORD(v20) = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      *location = 138412546;
      *&location[4] = objc_opt_class();
      v29 = 2112;
      v30 = v9;
      v22 = *&location[4];
      v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot lookup items for unentitled client: %@", location, 22);

      if (v23)
      {
        v24 = [NSString stringWithCString:v23 encoding:4];
        free(v23);
        SSFileLog();
      }
    }

    else
    {
    }
  }
}

+ (void)lookupWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  if ((SSXPCConnectionHasEntitlement() & 1) == 0 && (SSXPCConnectionHasEntitlement() & 1) == 0 && (SSIsDaemon() & 1) == 0)
  {
    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      LODWORD(v25) = shouldLog | 2;
    }

    else
    {
      LODWORD(v25) = shouldLog;
    }

    oSLogObject = [v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v25;
    }

    else
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v31 = 138412546;
      v32 = objc_opt_class();
      v33 = 2112;
      v34 = v9;
      v27 = v32;
      v28 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot lookup for unentitled client: %@", &v31, 22);

      if (!v28)
      {
LABEL_23:

        [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
        goto LABEL_10;
      }

      oSLogObject = [NSString stringWithCString:v28 encoding:4];
      free(v28);
      SSFileLog();
    }

    goto LABEL_23;
  }

  v10 = [SSLookupRequest alloc];
  v11 = xpc_dictionary_get_value(messageCopy, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  _lookupProperties = [v12 _lookupProperties];
  v14 = [_lookupProperties valueForRequestParameter:@"caller"];
  if (!v14)
  {
    clientIdentifier = [v9 clientIdentifier];
    [_lookupProperties setValue:clientIdentifier forRequestParameter:@"caller"];
  }

  v16 = [[LookupRequestOperation alloc] initWithLookupProperties:_lookupProperties];
  authenticationContext = [v12 authenticationContext];
  [(LookupRequestOperation *)v16 setAuthenticationContext:authenticationContext];

  clientIdentifierHeader = [v9 clientIdentifierHeader];
  [(LookupRequestOperation *)v16 setClientIdentifierHeader:clientIdentifierHeader];

  -[LookupRequestOperation setPersonalizationStyle:](v16, "setPersonalizationStyle:", [v12 personalizationStyle]);
  userAgent = [v9 userAgent];
  [(LookupRequestOperation *)v16 setUserAgent:userAgent];

  if ([v12 personalizationStyle] == 2)
  {
    clientIdentifier2 = [v9 clientIdentifier];
    v21 = [clientIdentifier2 isEqualToString:@"com.apple.Health"];

    if (v21)
    {
      [(LookupRequestOperation *)v16 setShouldSuppressCookies:1];
    }
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100145024;
  v29[3] = &unk_100329B68;
  v30 = v16;
  v22 = v16;
  [sharedNetworkRequestQueue addOperation:v22 forClient:v9 withMessageBlock:v29];

LABEL_10:
}

+ (void)performMigrationWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  if (SSXPCConnectionHasEntitlement())
  {
    objc_opt_class();
    v32 = SSXPCDictionaryCopyObjectWithClass();
    integerValue = [v32 integerValue];
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 2;
    }

    if (v15)
    {
      *v37 = 138412290;
      *&v37[4] = objc_opt_class();
      v16 = *&v37[4];
      v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "[%@]: Scheduling AppStore Migrator", v37, 12);

      if (v17)
      {
        v18 = [NSString stringWithCString:v17 encoding:4];
        free(v17);
        SSFileLog();
      }
    }

    else
    {
    }

    v26 = [objc_alloc(ISWeakLinkedClassForString()) initWithMigrationType:integerValue];
    v27 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v26];
    v28 = dispatch_semaphore_create(0);
    *v37 = 0;
    *&v37[8] = v37;
    *&v37[16] = 0x2020000000;
    v38 = 0;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100145590;
    v33[3] = &unk_100329C58;
    v35 = v37;
    selfCopy = self;
    v29 = v28;
    v34 = v29;
    [v27 startWithCompletionBlock:v33];
    v30 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v29, v30);
    reply = xpc_dictionary_create_reply(messageCopy);
    xpc_dictionary_set_int64(reply, "0", 1011);
    xpc_dictionary_set_BOOL(reply, "1", *(*&v37[8] + 24));
    xpc_connection_send_message(connectionCopy, reply);

    _Block_object_dispose(v37, 8);
  }

  else
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      LODWORD(v21) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v21) = shouldLog2;
    }

    oSLogObject2 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v21;
    }

    else
    {
      v21 &= 2u;
    }

    if (v21)
    {
      *v37 = 138412546;
      *&v37[4] = objc_opt_class();
      *&v37[12] = 2112;
      *&v37[14] = v9;
      v23 = *&v37[4];
      v24 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Cannot perform migration for unentitled client: %@", v37, 22);

      if (v24)
      {
        v25 = [NSString stringWithCString:v24 encoding:4];
        free(v24);
        SSFileLog();
      }
    }

    else
    {
    }

    [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
  }
}

+ (void)presentRemoteWebViewWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];

  if (([v9 hasEntitlements] & 1) == 0)
  {
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      LODWORD(v19) = shouldLog | 2;
    }

    else
    {
      LODWORD(v19) = shouldLog;
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = v9;
      v21 = v24;
      v22 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot show web view for unentitled client: %@", &v23, 22);

      if (!v22)
      {
LABEL_15:

        [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
        goto LABEL_16;
      }

      oSLogObject = [NSString stringWithCString:v22 encoding:4];
      free(v22);
      SSFileLog();
    }

    goto LABEL_15;
  }

  v10 = [SSRemoteWebViewRequest alloc];
  v11 = xpc_dictionary_get_value(messageCopy, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  v13 = [[RemoteWebViewOperation alloc] initWithWebViewRequest:v12];
  operationQueue = [sharedNetworkRequestQueue operationQueue];
  [operationQueue addOperation:v13];

  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v15, "0", 1011);
  outputConnection = [v9 outputConnection];
  [outputConnection sendMessage:v15];

LABEL_16:
}

+ (void)rentalInformationRequestWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  v10 = [SSRentalInformationRequest alloc];
  v11 = xpc_dictionary_get_value(messageCopy, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  if ([v9 hasEntitlements])
  {
    accountIdentifier = [v12 accountIdentifier];
    rentalKeyIdentifier = [v12 rentalKeyIdentifier];
    v15 = [[LoadRentalInformationOperation alloc] initWithAccountIdentifier:accountIdentifier rentalKeyIdentifier:rentalKeyIdentifier];
    objc_initWeak(location, v15);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100145D5C;
    v24[3] = &unk_100328ED0;
    objc_copyWeak(&v26, location);
    v25 = v9;
    [(LoadRentalInformationOperation *)v15 setCompletionBlock:v24];
    operationQueue = [sharedNetworkRequestQueue operationQueue];
    [operationQueue addOperation:v15];

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }

  else
  {
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      LODWORD(v19) = shouldLog | 2;
    }

    else
    {
      LODWORD(v19) = shouldLog;
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (v19)
    {
      *location = 138412546;
      *&location[4] = objc_opt_class();
      v28 = 2112;
      v29 = v9;
      v21 = *&location[4];
      v22 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot read item for unentitled client: %@", location, 22);

      if (v22)
      {
        v23 = [NSString stringWithCString:v22 encoding:4];
        free(v22);
        SSFileLog();
      }
    }

    else
    {
    }

    [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
  }
}

+ (void)repairAppWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];

  if (([v9 hasEntitlements] & 1) == 0)
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = shouldLog | 2;
    }

    else
    {
      v28 = shouldLog;
    }

    oSLogObject = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v28;
    }

    else
    {
      v30 = v28 & 2;
    }

    if (v30)
    {
      v40 = 138412546;
      v41 = objc_opt_class();
      v42 = 2112;
      v43 = v9;
      v31 = v41;
      v32 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot repair items for unentitled client: %@", &v40, 22);

      if (!v32)
      {
LABEL_25:

        [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
        goto LABEL_28;
      }

      oSLogObject = [NSString stringWithCString:v32 encoding:4];
      free(v32);
      SSFileLog();
    }

    goto LABEL_25;
  }

  v10 = [SSVRepairApplicationRequest alloc];
  v11 = xpc_dictionary_get_value(messageCopy, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v15 = shouldLog2 | 2;
  }

  else
  {
    v15 = shouldLog2;
  }

  oSLogObject2 = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v17 = v15;
  }

  else
  {
    v17 = v15 & 2;
  }

  if (v17)
  {
    v18 = objc_opt_class();
    v34 = v18;
    accountDSID = [v12 accountDSID];
    [v12 bundleID];
    v35 = v9;
    v20 = v12;
    v21 = sharedNetworkRequestQueue;
    v23 = v22 = messageCopy;
    v40 = 138412802;
    v41 = v18;
    v42 = 2112;
    v43 = accountDSID;
    v44 = 2112;
    v45 = v23;
    v24 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "[%@]: Repair request account DSID: %@ and bundleID %@", &v40, 32);

    messageCopy = v22;
    sharedNetworkRequestQueue = v21;
    v12 = v20;
    v9 = v35;

    if (v24)
    {
      v25 = [NSString stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog();
    }
  }

  else
  {
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001462B8;
  v36[3] = &unk_100329C80;
  selfCopy = self;
  v37 = v12;
  v38 = v9;
  v33 = v12;
  [AppStoreUtility repairAppWithRequest:v33 completionBlock:v36];

LABEL_28:
}

+ (void)requestURLWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];

  if (([v9 hasEntitlements] & 1) == 0)
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      LODWORD(v28) = shouldLog | 2;
    }

    else
    {
      LODWORD(v28) = shouldLog;
    }

    oSLogObject = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v28;
    }

    else
    {
      v28 &= 2u;
    }

    if (v28)
    {
      v37 = 138412546;
      v38 = objc_opt_class();
      v39 = 2112;
      v40 = v9;
      v30 = v38;
      v31 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot load URL for unentitled client: %@", &v37, 22);

      if (!v31)
      {
LABEL_20:

        [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
        goto LABEL_23;
      }

      oSLogObject = [NSString stringWithCString:v31 encoding:4];
      free(v31);
      SSFileLog();
    }

    goto LABEL_20;
  }

  v10 = [SSURLConnectionRequest alloc];
  v11 = xpc_dictionary_get_value(messageCopy, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  requestProperties = [v12 requestProperties];
  v14 = [requestProperties mutableCopy];

  auditTokenData = [v9 auditTokenData];
  [v14 setClientAuditTokenData:auditTokenData];

  clientIdentifier = [v14 clientIdentifier];

  if (!clientIdentifier)
  {
    clientIdentifierHeader = [v9 clientIdentifierHeader];
    [v14 setClientIdentifier:clientIdentifierHeader];
  }

  hTTPHeaders = [v14 HTTPHeaders];
  v19 = SSHTTPHeaderUserAgent;
  v20 = [hTTPHeaders objectForKey:SSHTTPHeaderUserAgent];

  if (!v20)
  {
    userAgent = [v9 userAgent];
    [v14 setValue:userAgent forHTTPHeaderField:v19];
  }

  v22 = [v14 URL];
  scheme = [v22 scheme];
  v24 = [scheme isEqualToString:SSActionURLScheme];

  if (v24)
  {
    v25 = [v14 URL];
    [sharedNetworkRequestQueue _enqueueOperationsForStoreServicesURL:v25];
  }

  else
  {
    v32 = [[URLConnectionRequestOperation alloc] initWithRequestProperties:v14];
    authenticationContext = [v12 authenticationContext];
    [(URLConnectionRequestOperation *)v32 setAuthenticationContext:authenticationContext];

    destinationFileURL = [v12 destinationFileURL];
    [(URLConnectionRequestOperation *)v32 setDestinationFileURL:destinationFileURL];

    -[URLConnectionRequestOperation setSendsResponseForHTTPFailures:](v32, "setSendsResponseForHTTPFailures:", [v12 sendsResponseForHTTPFailures]);
    -[URLConnectionRequestOperation setShouldMescalSign:](v32, "setShouldMescalSign:", [v12 shouldMescalSign]);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10014699C;
    v35[3] = &unk_100329B68;
    v36 = v32;
    v25 = v32;
    [sharedNetworkRequestQueue addOperation:v25 forClient:v9 withMessageBlock:v35];
  }

LABEL_23:
}

+ (void)restoreDemotedApplicationsWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  if (([v9 hasEntitlements] & 1) == 0)
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      LODWORD(v17) = shouldLog | 2;
    }

    else
    {
      LODWORD(v17) = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v27 = 138412546;
      v28 = objc_opt_class();
      v29 = 2112;
      v30 = v9;
      v19 = v28;
      v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot demote unentitled client: %@", &v27, 22);

      if (!v20)
      {
LABEL_18:

        [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
        goto LABEL_24;
      }

      oSLogObject = [NSString stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog();
    }

    goto LABEL_18;
  }

  v10 = objc_alloc_init(NSMutableArray);
  objc_opt_class();
  v11 = SSXPCDictionaryCopyObjectWithClass();
  v12 = xpc_dictionary_get_value(messageCopy, "1");
  v13 = v12;
  if (v12)
  {
    type = xpc_get_type(v12);
    if (type == &_xpc_type_string)
    {
      v21 = SSXPCCreateCFObjectFromXPCObject();
      [v10 addObject:v21];
    }

    else if (type == &_xpc_type_array)
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_100146DD8;
      applier[3] = &unk_1003280D0;
      v25 = v13;
      v26 = v10;
      xpc_array_apply(v25, applier);
    }
  }

  if (SSDebugShouldUseAppstored())
  {
    [AppStoreUtility restoreDemotedAppsWithBundleIDs:v10];
  }

  else
  {
    v22 = +[UpdateMigrator sharedInstance];
    [v22 restoreDemotedBundleIdentifiers:v10 options:v11];
  }

  reply = xpc_dictionary_create_reply(messageCopy);
  xpc_dictionary_set_int64(reply, "0", 1011);
  xpc_dictionary_set_BOOL(reply, "1", 1);
  SSXPCDictionarySetObject();
  xpc_connection_send_message(connectionCopy, reply);

LABEL_24:
}

+ (void)sdk_loadStoreFrontIdentifierWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v23 = 0u;
  v24 = 0u;
  xpc_connection_get_audit_token();
  memset(v25, 0, sizeof(v25));
  if (TCCAccessCheckAuditToken())
  {
    v9 = [SSURLBagContext alloc];
    v10 = xpc_dictionary_get_value(messageCopy, "1");
    v11 = [v9 initWithXPCEncoding:v10];

    v12 = SSHTTPHeaderUserAgent;
    v13 = [v11 valueForHTTPHeaderField:SSHTTPHeaderUserAgent];

    if (!v13)
    {
      v14 = [[XPCClient alloc] initWithInputConnection:connectionCopy];
      userAgent = [(XPCClient *)v14 userAgent];
      [v11 setValue:userAgent forHTTPHeaderField:v12];
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100147148;
    v21[3] = &unk_100329B68;
    v22 = [[ISLoadURLBagOperation alloc] initWithBagContext:v11];
    oSLogObject = v22;
    [sharedNetworkRequestQueue addOperation:oSLogObject forMessage:messageCopy connection:connectionCopy replyBlock:v21];
  }

  else
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      LODWORD(v18) = shouldLog | 2;
    }

    else
    {
      LODWORD(v18) = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      LODWORD(v25[0]) = 138412290;
      *(v25 + 4) = objc_opt_class();
      v19 = *(v25 + 4);
      v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot load storefront identifier for unauthorized client", v25, 12);

      if (!v20)
      {
        goto LABEL_6;
      }

      oSLogObject = [NSString stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog();
    }
  }

LABEL_6:
}

+ (void)sdk_requestAPITokenWithMessage:(id)message connection:(id)connection
{
  xdict = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v7 = [sharedNetworkRequestQueue _newClientWithMessage:xdict connection:connectionCopy];
  v31 = 0u;
  v32 = 0u;
  xpc_connection_get_audit_token();
  *location = 0u;
  v34 = 0u;
  if (TCCAccessCheckAuditToken())
  {
    v8 = [SSVCloudServiceAPITokenRequest alloc];
    v9 = xpc_dictionary_get_value(xdict, "1");
    v10 = [v8 initWithXPCEncoding:v9];

    clientIdentifier = [v7 clientIdentifier];
    clientVersion = [v7 clientVersion];
    v12 = +[SSAccountStore defaultStore];
    activeAccount = [v12 activeAccount];

    if (activeAccount)
    {
      v14 = [[SSMutableAuthenticationContext alloc] initWithAccount:activeAccount];
    }

    else
    {
      v14 = objc_alloc_init(SSMutableAuthenticationContext);
    }

    v19 = v14;
    [v14 setPromptStyle:0];
    [v19 setAllowsSilentAuthentication:1];
    v20 = objc_alloc_init(CloudServiceAPITokenOperation);
    [(CloudServiceAPITokenOperation *)v20 setAuthenticationContext:v19];
    clientToken = [v10 clientToken];
    [(CloudServiceAPITokenOperation *)v20 setClientToken:clientToken];

    [(CloudServiceAPITokenOperation *)v20 setRequestingBundleID:clientIdentifier];
    [(CloudServiceAPITokenOperation *)v20 setRequestingBundleVersion:clientVersion];
    objc_initWeak(location, v20);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100147604;
    v27[3] = &unk_100329CA8;
    objc_copyWeak(&v30, location);
    v22 = v7;
    v28 = v22;
    v23 = sharedNetworkRequestQueue;
    v29 = v23;
    [(CloudServiceAPITokenOperation *)v20 setResponseBlock:v27];
    [v23 setClient:v22 forOperation:v20];
    [v23 addOperation:v20];

    objc_destroyWeak(&v30);
    objc_destroyWeak(location);

    goto LABEL_14;
  }

  v10 = +[SSLogConfig sharedConfig];
  shouldLog = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  clientIdentifier = [v10 OSLogObject];
  if (os_log_type_enabled(clientIdentifier, OS_LOG_TYPE_DEFAULT))
  {
    v16 = shouldLog;
  }

  else
  {
    v16 = shouldLog & 2;
  }

  if (!v16)
  {
    goto LABEL_14;
  }

  LODWORD(location[0]) = 138412290;
  *(location + 4) = objc_opt_class();
  v17 = *(location + 4);
  v18 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, clientIdentifier, 0, "%@: Cannot fetch api token for unauthorized client", location, 12);

  if (v18)
  {
    clientIdentifier = [NSString stringWithCString:v18 encoding:4];
    free(v18);
    SSFileLog();
LABEL_14:
  }
}

+ (void)silentEnrollmentWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v40 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  if (SSXPCConnectionHasEntitlement())
  {
    v8 = [SSSilentEnrollment alloc];
    v9 = xpc_dictionary_get_value(messageCopy, "1");
    v10 = [v8 initWithXPCEncoding:v9];

    context = [v10 context];
    accountIdentifier = [context accountIdentifier];

    context2 = [v10 context];
    headerADSID = [context2 headerADSID];

    context3 = [v10 context];
    headerGSToken = [context3 headerGSToken];

    context4 = [v10 context];
    headerGuid = [context4 headerGuid];

    context5 = [v10 context];
    headerMMeClientInfo = [context5 headerMMeClientInfo];

    context6 = [v10 context];
    headerMMeDeviceId = [context6 headerMMeDeviceId];

    context7 = [v10 context];
    uRLString = [context7 URLString];
    v32 = [NSURL URLWithString:uRLString];

    v19 = objc_alloc_init(ISStoreURLOperation);
    v20 = objc_alloc_init(ISJSONDataProvider);
    [v19 setDataProvider:v20];
    v21 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:accountIdentifier];
    [v19 setAuthenticationContext:v21];
    v22 = [[NSMutableURLRequest alloc] initWithURL:v32];
    [v22 setHTTPMethod:@"GET"];
    [v22 setValue:headerADSID forHTTPHeaderField:SSHTTPHeaderXAppleADSID];
    [v22 setValue:headerGSToken forHTTPHeaderField:SSHTTPHeaderXAppleGSToken];
    [v22 setValue:headerGuid forHTTPHeaderField:SSHTTPHeaderGUID];
    [v22 setValue:headerMMeClientInfo forHTTPHeaderField:SSHTTPHeaderXAppleMMeClientInfo];
    [v22 setValue:headerMMeDeviceId forHTTPHeaderField:SSHTTPHeaderXAppleMMeDeviceID];
    v23 = [[SSMutableURLRequestProperties alloc] initWithURLRequest:v22];
    [v19 setRequestProperties:v23];
    objc_initWeak(location, v19);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100147C48;
    v41[3] = &unk_100328ED0;
    objc_copyWeak(&v43, location);
    v24 = v40;
    v42 = v24;
    [v19 setCompletionBlock:v41];
    [sharedNetworkRequestQueue setClient:v24 forOperation:v19];
    [sharedNetworkRequestQueue addOperation:v19];

    objc_destroyWeak(&v43);
    objc_destroyWeak(location);
  }

  else
  {
    v25 = +[SSLogConfig sharedDaemonConfig];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      LODWORD(v27) = shouldLog | 2;
    }

    else
    {
      LODWORD(v27) = shouldLog;
    }

    oSLogObject = [v25 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v27;
    }

    else
    {
      v27 &= 2u;
    }

    if (v27)
    {
      *location = 138543618;
      *&location[4] = objc_opt_class();
      v45 = 2114;
      v46 = v40;
      v29 = *&location[4];
      v30 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Silent enrollment XPC failed for no entitlements: %{public}@", location, 22);

      if (v30)
      {
        v31 = [NSString stringWithCString:v30 encoding:4];
        free(v30);
        SSFileLog();
      }
    }

    else
    {
    }

    [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v40];
  }
}

+ (void)silentEnrollmentVerificationWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v43 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  if (SSXPCConnectionHasEntitlement())
  {
    v7 = [SSSilentEnrollment alloc];
    v8 = xpc_dictionary_get_value(messageCopy, "1");
    v9 = [v7 initWithXPCEncoding:v8];

    context = [v9 context];
    accountIdentifier = [context accountIdentifier];

    context2 = [v9 context];
    headerADSID = [context2 headerADSID];

    context3 = [v9 context];
    headerGSToken = [context3 headerGSToken];

    context4 = [v9 context];
    headerGuid = [context4 headerGuid];

    context5 = [v9 context];
    headerMMeClientInfo = [context5 headerMMeClientInfo];

    context6 = [v9 context];
    headerMMeDeviceId = [context6 headerMMeDeviceId];

    context7 = [v9 context];
    parameters = [context7 parameters];

    context8 = [v9 context];
    uRLString = [context8 URLString];
    v19 = [NSURL URLWithString:uRLString];

    v20 = objc_alloc_init(ISStoreURLOperation);
    v21 = objc_alloc_init(ISJSONDataProvider);
    [v20 setDataProvider:v21];
    v22 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:accountIdentifier];
    [v20 setAuthenticationContext:v22];
    v23 = [[NSMutableURLRequest alloc] initWithURL:v19];
    [v23 setHTTPBody:parameters];
    [v23 setHTTPMethod:@"POST"];
    [v23 setHTTPContentType:@"application/json"];
    [v23 setValue:headerADSID forHTTPHeaderField:SSHTTPHeaderXAppleADSID];
    [v23 setValue:headerGSToken forHTTPHeaderField:SSHTTPHeaderXAppleGSToken];
    [v23 setValue:headerGuid forHTTPHeaderField:SSHTTPHeaderGUID];
    [v23 setValue:headerMMeClientInfo forHTTPHeaderField:SSHTTPHeaderXAppleMMeClientInfo];
    [v23 setValue:headerMMeDeviceId forHTTPHeaderField:SSHTTPHeaderXAppleMMeDeviceID];
    v24 = [[SSMutableURLRequestProperties alloc] initWithURLRequest:v23];
    [v20 setRequestProperties:v24];
    objc_initWeak(location, v20);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100148448;
    v44[3] = &unk_100328ED0;
    objc_copyWeak(&v46, location);
    v25 = v43;
    v45 = v25;
    [v20 setCompletionBlock:v44];
    [sharedNetworkRequestQueue setClient:v25 forOperation:v20];
    [sharedNetworkRequestQueue addOperation:v20];

    objc_destroyWeak(&v46);
    objc_destroyWeak(location);
  }

  else
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = shouldLog | 2;
    }

    else
    {
      v28 = shouldLog;
    }

    oSLogObject = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v28;
    }

    else
    {
      v30 = v28 & 2;
    }

    if (v30)
    {
      *location = 138543618;
      *&location[4] = objc_opt_class();
      v48 = 2114;
      v49 = v43;
      v31 = *&location[4];
      v32 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Silent enrollment XPC failed for no entitlements: %{public}@", location, 22);

      if (v32)
      {
        v33 = [NSString stringWithCString:v32 encoding:4];
        free(v32);
        SSFileLog();
      }
    }

    else
    {
    }

    [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v43];
  }
}

+ (void)authenticationRequestWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];

  if (([v9 hasEntitlements] & 1) == 0)
  {
    v13 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      LODWORD(v15) = shouldLog | 2;
    }

    else
    {
      LODWORD(v15) = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v15 = v15;
    }

    else
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v21 = 138543618;
      v22 = objc_opt_class();
      v23 = 2114;
      v24 = v9;
      v17 = v22;
      v18 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Cannot authenticate for unentitled client: %{public}@", &v21, 22);

      if (!v18)
      {
LABEL_15:

        [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
        goto LABEL_16;
      }

      oSLogObject = [NSString stringWithCString:v18 encoding:4];
      free(v18);
      SSFileLog();
    }

    goto LABEL_15;
  }

  +[SSVSubscriptionStatusCoordinator beginSuspendingSubscriptionStatusChangeNotifications];
  v10 = [SSAuthenticateRequest alloc];
  v11 = xpc_dictionary_get_value(messageCopy, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100148914;
  v19[3] = &unk_100329CD0;
  v20 = v9;
  [v12 startWithAuthenticateResponseBlock:v19];

LABEL_16:
}

+ (void)serverAuthenticateWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];

  if (([v9 hasEntitlements] & 1) == 0)
  {
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      LODWORD(v23) = shouldLog | 2;
    }

    else
    {
      LODWORD(v23) = shouldLog;
    }

    oSLogObject = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v23;
    }

    else
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v30 = 138412546;
      v31 = objc_opt_class();
      v32 = 2112;
      v33 = v9;
      v25 = v31;
      v26 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot authenticate for unentitled client: %@", &v30, 22);

      if (!v26)
      {
LABEL_15:

        [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
        goto LABEL_16;
      }

      oSLogObject = [NSString stringWithCString:v26 encoding:4];
      free(v26);
      SSFileLog();
    }

    goto LABEL_15;
  }

  v10 = [SSVServerAuthenticateRequest alloc];
  v11 = xpc_dictionary_get_value(messageCopy, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  authenticationContext = [v12 authenticationContext];
  v14 = [sharedNetworkRequestQueue _copyAuthenticationContextWithContext:authenticationContext client:v9];

  v15 = [ISDialog alloc];
  encodedDialog = [v12 encodedDialog];
  v17 = [v15 initWithXPCEncoding:encodedDialog];

  v18 = [[ServerAuthenticationOperation alloc] initWithDialog:v17];
  [(ServerAuthenticationOperation *)v18 setAuthenticationContext:v14];
  [(ServerAuthenticationOperation *)v18 setPerformsButtonAction:0];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100148D30;
  v27[3] = &unk_100329CF8;
  v28 = v18;
  v29 = v17;
  v19 = v17;
  v20 = v18;
  [sharedNetworkRequestQueue addOperation:v20 forClient:v9 withMessageBlock:v27];

LABEL_16:
}

+ (void)updateMediaContentTasteWithMessage:(id)message connection:(id)connection
{
  connectionCopy = connection;
  messageCopy = message;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v9 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];

  LOBYTE(messageCopy) = SSXPCConnectionHasEntitlement();
  if ((messageCopy & 1) == 0 && (SSIsDaemon() & 1) == 0)
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      LODWORD(v18) = shouldLog | 2;
    }

    else
    {
      LODWORD(v18) = shouldLog;
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v22 = 138412546;
      v23 = objc_opt_class();
      v24 = 2112;
      v25 = v9;
      v20 = v23;
      v21 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Deny unentitled client: %@", &v22, 22);

      if (!v21)
      {
LABEL_28:

        [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v9];
        goto LABEL_29;
      }

      oSLogObject = [NSString stringWithCString:v21 encoding:4];
      free(v21);
      SSFileLog();
    }

    goto LABEL_28;
  }

  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    LODWORD(v12) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v12) = shouldLog2;
  }

  oSLogObject2 = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
  {
    v12 = v12;
  }

  else
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_14;
  }

  v22 = 138412546;
  v23 = objc_opt_class();
  v24 = 2112;
  v25 = v9;
  v14 = v23;
  v15 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject2, 17, "%@: Deny unsupported call to updateMediaContentTasteWithMessage:connection: from client: %@", &v22, 22);

  if (v15)
  {
    oSLogObject2 = [NSString stringWithCString:v15 encoding:4];
    free(v15);
    SSFileLog();
LABEL_14:
  }

  [sharedNetworkRequestQueue _sendNotSupportedMessageToClient:v9];
LABEL_29:
}

+ (void)wishlistAddItemsWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v8 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];
  if ([v8 hasEntitlements])
  {
    v9 = objc_alloc_init(ISStoreURLOperation);
    v10 = +[DaemonProtocolDataProvider provider];
    [v9 setDataProvider:v10];

    v11 = +[SSAccountStore defaultStore];
    activeAccount = [v11 activeAccount];

    if (!activeAccount || ([activeAccount isAuthenticated] & 1) == 0)
    {
      [v9 setNeedsAuthentication:1];
    }

    clientIdentifier = [v8 clientIdentifier];
    v14 = ISClientIdentifierForBundleIdentifier();

    if ([v14 isEqualToString:ISClientIdentifierMoveToiOS])
    {
      [v9 setNeedsTermsAndConditionsAcceptance:1];
    }

    v15 = [SSWishlistAddItemsRequest alloc];
    v16 = xpc_dictionary_get_value(messageCopy, "1");
    v17 = [v15 initWithXPCEncoding:v16];

    v18 = objc_alloc_init(SSMutableURLRequestProperties);
    clientIdentifier2 = [v8 clientIdentifier];
    [v18 setClientIdentifier:clientIdentifier2];

    [v18 setURLBagKey:@"addItemsToWishlistBaseUrl"];
    userAgent = [v8 userAgent];
    [v18 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];

    copyQueryStringParameters = [v17 copyQueryStringParameters];
    [v18 setRequestParameters:copyQueryStringParameters];
    [v9 setRequestProperties:v18];
    objc_initWeak(location, v9);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100149610;
    v31[3] = &unk_100328ED0;
    objc_copyWeak(&v33, location);
    v32 = v8;
    [v9 setCompletionBlock:v31];
    [sharedNetworkRequestQueue addOperation:v9];

    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  else
  {
    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v24 = shouldLog | 2;
    }

    else
    {
      v24 = shouldLog;
    }

    oSLogObject = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v24;
    }

    else
    {
      v26 = v24 & 2;
    }

    if (v26)
    {
      *location = 138412546;
      *&location[4] = objc_opt_class();
      v35 = 2112;
      v36 = v8;
      v27 = *&location[4];
      v28 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot add wishlist items for unentitled client: %@", location, 22);

      if (v28)
      {
        v29 = [NSString stringWithCString:v28 encoding:4];
        free(v28);
        SSFileLog();
      }
    }

    else
    {
    }

    [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v8];
  }
}

+ (void)_addSubscriptionOperationWithType:(int64_t)type message:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  sharedNetworkRequestQueue = [self sharedNetworkRequestQueue];
  v11 = [sharedNetworkRequestQueue _newClientWithMessage:messageCopy connection:connectionCopy];

  if ([v11 hasEntitlements])
  {
    if (type == 2)
    {
      v25 = [SSVRefreshSubscriptionRequest alloc];
      v26 = xpc_dictionary_get_value(messageCopy, "1");
      v21 = [v25 initWithXPCEncoding:v26];

      authenticationContext = [v21 authenticationContext];
      v23 = [sharedNetworkRequestQueue _copyAuthenticationContextWithContext:authenticationContext client:v11];

      isRequestingOfflineSlot = [v21 isRequestingOfflineSlot];
    }

    else
    {
      if (type == 1)
      {
        v12 = SSVEnableSubscriptionRequest;
      }

      else
      {
        if (type)
        {
          v23 = 0;
          isRequestingOfflineSlot = 0;
          goto LABEL_24;
        }

        v12 = SSVDisableSubscriptionRequest;
      }

      v19 = [v12 alloc];
      v20 = xpc_dictionary_get_value(messageCopy, "1");
      v21 = [v19 initWithXPCEncoding:v20];

      authenticationContext2 = [v21 authenticationContext];
      v23 = [sharedNetworkRequestQueue _copyAuthenticationContextWithContext:authenticationContext2 client:v11];

      isRequestingOfflineSlot = 0;
    }

LABEL_24:
    v28 = objc_alloc_init(SubscriptionOperation);
    [(SubscriptionOperation *)v28 setAuthenticationContext:v23];
    [(SubscriptionOperation *)v28 setOperationType:type];
    [(SubscriptionOperation *)v28 setRequestingOfflineSlot:isRequestingOfflineSlot];
    userAgent = [v11 userAgent];
    [(SubscriptionOperation *)v28 setUserAgent:userAgent];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100149AE8;
    v31[3] = &unk_100329B68;
    v32 = v28;
    v30 = v28;
    [sharedNetworkRequestQueue addOperation:v30 forClient:v11 withMessageBlock:v31];

    goto LABEL_25;
  }

  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    LODWORD(v15) = shouldLog | 2;
  }

  else
  {
    LODWORD(v15) = shouldLog;
  }

  oSLogObject = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v15;
  }

  else
  {
    v15 &= 2u;
  }

  if (!v15)
  {
    goto LABEL_17;
  }

  v33 = 138412546;
  v34 = objc_opt_class();
  v35 = 2112;
  v36 = v11;
  v17 = v34;
  v18 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot change subscription for unentitled client: %@", &v33, 22);

  if (v18)
  {
    oSLogObject = [NSString stringWithCString:v18 encoding:4];
    free(v18);
    SSFileLog();
LABEL_17:
  }

  [sharedNetworkRequestQueue _sendUnentitledMessageToClient:v11];
LABEL_25:
}

- (id)_copyAuthenticationContextWithContext:(id)context client:(id)client
{
  clientCopy = client;
  v6 = [context mutableCopy];
  if (!v6)
  {
    v7 = [SSMutableAuthenticationContext alloc];
    v8 = +[SSAccountStore defaultStore];
    activeAccount = [v8 activeAccount];
    v6 = [v7 initWithAccount:activeAccount];
  }

  clientIdentifierHeader = [v6 clientIdentifierHeader];

  if (!clientIdentifierHeader)
  {
    clientIdentifierHeader2 = [clientCopy clientIdentifierHeader];
    [v6 setClientIdentifierHeader:clientIdentifierHeader2];
  }

  hTTPHeaders = [v6 HTTPHeaders];
  v13 = SSHTTPHeaderUserAgent;
  v14 = [hTTPHeaders objectForKey:SSHTTPHeaderUserAgent];

  if (!v14)
  {
    userAgent = [clientCopy userAgent];
    [v6 setValue:userAgent forHTTPHeaderField:v13];
  }

  return v6;
}

- (void)_enqueueOperationsForStoreServicesURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(NSMutableString);
  v6 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSMutableArray);
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_10014A440;
  v60[3] = &unk_100329D20;
  v8 = v5;
  v61 = v8;
  v9 = v6;
  v62 = v9;
  v10 = v7;
  v63 = v10;
  [lCopy enumerateQueryWithBlock:v60];
  if (![v8 isEqualToString:@"download-manifest"])
  {
    v30 = v10;
    v31 = v9;
    v32 = [v8 isEqualToString:@"redeem-codes"];
    v33 = +[SSLogConfig sharedDaemonConfig];
    v13 = v33;
    if (!v32)
    {
      if (!v33)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [(RedeemCodesOperation *)v13 shouldLog];
      if ([(RedeemCodesOperation *)v13 shouldLogToDisk])
      {
        shouldLog |= 2u;
      }

      oSLogObject = [(RedeemCodesOperation *)v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v49 = shouldLog;
      }

      else
      {
        v49 = shouldLog & 2;
      }

      if (v49)
      {
        v50 = objc_opt_class();
        v65 = 138412546;
        v66 = v50;
        v67 = 2112;
        v68 = v8;
        v51 = v50;
        v52 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Received unknown action: %@", &v65, 22);

        if (!v52)
        {
          v10 = v30;
          goto LABEL_60;
        }

        oSLogObject = [NSString stringWithCString:v52 encoding:4];
        free(v52);
        SSFileLog();
      }

      v10 = v30;
      goto LABEL_59;
    }

    if (!v33)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [(RedeemCodesOperation *)v13 shouldLog];
    if ([(RedeemCodesOperation *)v13 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [(RedeemCodesOperation *)v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v36 = shouldLog2;
    }

    else
    {
      v36 = shouldLog2 & 2;
    }

    if (v36)
    {
      v37 = objc_opt_class();
      v38 = lCopy;
      v39 = v37;
      v40 = [v31 count];
      v65 = 138412546;
      v66 = v37;
      v67 = 2048;
      v68 = v40;
      v41 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Redeeming %lu codes from URL", &v65, 22);

      lCopy = v38;
      v9 = v31;

      v10 = v30;
      if (!v41)
      {
LABEL_57:

        v13 = [[RedeemCodesOperation alloc] initWithRedeemCodes:v9];
        [(RequestQueue *)self addOperation:v13];
        goto LABEL_60;
      }

      oSLogObject2 = [NSString stringWithCString:v41 encoding:4];
      free(v41);
      SSFileLog();
    }

    else
    {
      v10 = v30;
    }

    goto LABEL_57;
  }

  v11 = SSRestrictionsIsOnDeviceAppInstallationAllowed();
  v12 = +[SSLogConfig sharedDaemonConfig];
  v13 = v12;
  if (!v11)
  {
    if (!v12)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [(RedeemCodesOperation *)v13 shouldLog];
    if ([(RedeemCodesOperation *)v13 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject = [(RedeemCodesOperation *)v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v44 = shouldLog3;
    }

    else
    {
      v44 = shouldLog3 & 2;
    }

    if (v44)
    {
      v45 = objc_opt_class();
      v65 = 138412290;
      v66 = v45;
      v46 = v45;
      v47 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Download manifest installation is restricted", &v65, 12);

      if (!v47)
      {
        goto LABEL_60;
      }

      oSLogObject = [NSString stringWithCString:v47 encoding:4];
      free(v47);
      SSFileLog();
    }

LABEL_59:

    goto LABEL_60;
  }

  if (!v12)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  v54 = v9;
  v55 = lCopy;
  shouldLog4 = [(RedeemCodesOperation *)v13 shouldLog];
  if ([(RedeemCodesOperation *)v13 shouldLogToDisk])
  {
    v15 = shouldLog4 | 2;
  }

  else
  {
    v15 = shouldLog4;
  }

  oSLogObject3 = [(RedeemCodesOperation *)v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v17 = v15;
  }

  else
  {
    v17 = v15 & 2;
  }

  if (v17)
  {
    v18 = objc_opt_class();
    v19 = v18;
    v20 = [v10 count];
    v65 = 138412546;
    v66 = v18;
    v67 = 2048;
    v68 = v20;
    v21 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Loading %lu download manifests from URL", &v65, 22);

    if (!v21)
    {
      goto LABEL_15;
    }

    oSLogObject3 = [NSString stringWithCString:v21 encoding:4];
    free(v21);
    SSFileLog();
  }

LABEL_15:
  v22 = ISWeakLinkedClassForString();
  v23 = ISWeakLinkedClassForString();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v13 = v10;
  v24 = [(RedeemCodesOperation *)v13 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v24)
  {
    v25 = v24;
    v53 = v10;
    v26 = *v57;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v57 != v26)
        {
          objc_enumerationMutation(v13);
        }

        v28 = [[v22 alloc] initWithURL:*(*(&v56 + 1) + 8 * i)];
        v29 = [[v23 alloc] initWithOptions:v28];
        [v29 startWithCompletionBlock:&stru_100329D60];
      }

      v25 = [(RedeemCodesOperation *)v13 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v25);
    v9 = v54;
    lCopy = v55;
    v10 = v53;
  }

  else
  {
    lCopy = v55;
  }

LABEL_60:
}

- (id)_managedQueue
{
  managedQueue = self->_managedQueue;
  if (!managedQueue)
  {
    v4 = objc_alloc_init(ISOperationQueue);
    v5 = self->_managedQueue;
    self->_managedQueue = v4;

    [(ISOperationQueue *)self->_managedQueue setAdjustsMaxConcurrentOperationCount:0];
    [(ISOperationQueue *)self->_managedQueue setMaxConcurrentOperationCount:1];
    managedQueue = self->_managedQueue;
  }

  return managedQueue;
}

- (id)_newClientWithMessage:(id)message connection:(id)connection
{
  connectionCopy = connection;
  messageCopy = message;
  v7 = [[XPCClient alloc] initWithInputConnection:connectionCopy];

  v8 = xpc_dictionary_get_value(messageCopy, "2");

  if (v8 && xpc_get_type(v8) == &_xpc_type_endpoint)
  {
    v9 = xpc_connection_create_from_endpoint(v8);
    if (v9)
    {
      [(XPCClient *)v7 setOutputConnectionWithConnection:v9];
    }
  }

  return v7;
}

- (void)_sendMessageWithError:(id)error toClient:(id)client
{
  clientCopy = client;
  errorCopy = error;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v8, "0", 1011);
  SSXPCDictionarySetObject();

  outputConnection = [clientCopy outputConnection];

  [outputConnection sendMessage:v8];
}

- (void)_sendNotSupportedMessageToClient:(id)client
{
  clientCopy = client;
  v5 = SSError();
  [(NetworkRequestQueue *)self _sendMessageWithError:v5 toClient:clientCopy];
}

- (void)_sendUnentitledMessageToClient:(id)client
{
  clientCopy = client;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "0", 1011);
  v4 = SSError();
  SSXPCDictionarySetObject();

  outputConnection = [clientCopy outputConnection];

  [outputConnection sendMessage:v6];
}

- (void)_sendUnentitledReplyForMessage:(id)message connection:(id)connection
{
  connection = connection;
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v6 = SSError();
    SSXPCDictionarySetObject();

    xpc_connection_send_message(connection, reply);
  }
}

- (void)_enqueueSubscriptionStatusOperation:(id)operation forClient:(id)client
{
  operationCopy = operation;
  clientCopy = client;
  subscriptionStatusOperationAccessQueue = self->_subscriptionStatusOperationAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014A9C8;
  block[3] = &unk_1003281A0;
  block[4] = self;
  v12 = clientCopy;
  v13 = operationCopy;
  v9 = operationCopy;
  v10 = clientCopy;
  dispatch_sync(subscriptionStatusOperationAccessQueue, block);
}

- (void)_dequeueSubscriptionStatusOperation:(id)operation
{
  operationCopy = operation;
  subscriptionStatusOperationAccessQueue = self->_subscriptionStatusOperationAccessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014AB20;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  dispatch_sync(subscriptionStatusOperationAccessQueue, v7);
}

@end