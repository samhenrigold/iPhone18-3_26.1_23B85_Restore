@interface StoreServicesRequestQueue
+ (id)sharedInstance;
+ (void)setSharedInstance:(id)instance;
- (id)_newClientWithMessage:(id)message connection:(id)connection;
- (void)_sendMessageWithError:(id)error toClient:(id)client;
- (void)_sendUnentitledMessageToClient:(id)client;
- (void)_sendUnentitledReplyForMessage:(id)message connection:(id)connection;
- (void)addDownloadsUsingManifestWithMessage:(id)message connection:(id)connection;
- (void)addMediaSocialPostWithMessage:(id)message connection:(id)connection;
- (void)addOperation:(id)operation forClient:(id)client withMessageBlock:(id)block;
- (void)addOperation:(id)operation forMessage:(id)message connection:(id)connection replyBlock:(id)block;
- (void)authorizeMachineWithMessage:(id)message connection:(id)connection;
- (void)checkinRentalWithMessage:(id)message connection:(id)connection;
- (void)checkoutRentalWithMessage:(id)message connection:(id)connection;
- (void)collectURLSessionDataWithMessage:(id)message connection:(id)connection;
- (void)demoteApplicationWithMessage:(id)message connection:(id)connection;
- (void)getAccountPurchaseHistoryWithMessage:(id)message connection:(id)connection;
- (void)getApplicationCapabilitiesMessage:(id)message connection:(id)connection;
- (void)getApplicationWithMessage:(id)message connection:(id)connection;
- (void)getAvailableItemKindsWithMessage:(id)message connection:(id)connection;
- (void)getFamilyCircleWithMessage:(id)message connection:(id)connection;
- (void)getKBSyncWithMessage:(id)message connection:(id)connection;
- (void)getMediaSocialShareExtensionVisibilityWithMessage:(id)message connection:(id)connection;
- (void)getPlayInfoWithMessage:(id)message connection:(id)connection;
- (void)getRemovableSytemApplicationsWithMessage:(id)message connection:(id)connection;
- (void)getSoftwareLibraryItemsWithMessage:(id)message connection:(id)connection;
- (void)getUserApplicationsWithMessage:(id)message connection:(id)connection;
- (void)handlePurchaseIntentActionWithMessage:(id)message connection:(id)connection;
- (void)hasDemotedApplicationsWithMessage2:(id)message2 connection:(id)connection;
- (void)hasDemotedApplicationsWithMessage:(id)message connection:(id)connection;
- (void)haveApplicationsOfTypeWithMessage:(id)message connection:(id)connection;
- (void)invalidateURLBagWithMessage:(id)message connection:(id)connection;
- (void)isInstalledAppWithMessage:(id)message connection:(id)connection;
- (void)isRemovedSystemAppWithMessage:(id)message connection:(id)connection;
- (void)keybagRequestWithMessage:(id)message connection:(id)connection;
- (void)observeXPCServer:(id)server;
- (void)personalizeOffersWithMessage:(id)message connection:(id)connection;
- (void)playableApplicationsWithMessage:(id)message connection:(id)connection;
- (void)pushNotificationRequestWithMessage:(id)message connection:(id)connection;
- (void)pushNotificationTokenRequestWithMessage:(id)message connection:(id)connection;
- (void)redeemCodesWithMessage:(id)message connection:(id)connection;
- (void)rentalSyncRequestWithMessage:(id)message connection:(id)connection;
- (void)saveInstallAttributionParamsWithMessage:(id)message connection:(id)connection;
- (void)sdk_getStorefrontCountryCodeWithMessage:(id)message connection:(id)connection;
- (void)sendAskToBuyWithMessage:(id)message connection:(id)connection;
- (void)sendInstallAttributionPingbackWithMessage:(id)message connection:(id)connection;
- (void)showDialogRequestWithMessage:(id)message connection:(id)connection;
- (void)showServerPromptWithMessage:(id)message connection:(id)connection;
- (void)softwareLibraryItemSetValuesWithMessage:(id)message connection:(id)connection;
@end

@implementation StoreServicesRequestQueue

+ (void)setSharedInstance:(id)instance
{
  pthread_mutex_lock(&stru_100382D68);
  if (qword_100383EA0 != instance)
  {

    qword_100383EA0 = instance;
  }

  pthread_mutex_unlock(&stru_100382D68);
}

+ (id)sharedInstance
{
  pthread_mutex_lock(&stru_100382D68);
  v3 = qword_100383EA0;
  if (!qword_100383EA0)
  {
    v3 = objc_alloc_init(self);
    qword_100383EA0 = v3;
  }

  v4 = v3;
  pthread_mutex_unlock(&stru_100382D68);
  return v4;
}

- (void)observeXPCServer:(id)server
{
  [server addObserver:self selector:"addDownloadsUsingManifestWithMessage:connection:" forMessage:56];
  [server addObserver:self selector:"authorizeMachineWithMessage:connection:" forMessage:57];
  [server addObserver:self selector:"checkinRentalWithMessage:connection:" forMessage:59];
  [server addObserver:self selector:"checkoutRentalWithMessage:connection:" forMessage:60];
  [server addObserver:self selector:"demoteApplicationWithMessage:connection:" forMessage:161];
  [server addObserver:self selector:"getAccountPurchaseHistoryWithMessage:connection:" forMessage:67];
  [server addObserver:self selector:"getApplicationWithMessage:connection:" forMessage:136];
  [server addObserver:self selector:"getApplicationCapabilitiesMessage:connection:" forMessage:164];
  [server addObserver:self selector:"getAvailableItemKindsWithMessage:connection:" forMessage:68];
  [server addObserver:self selector:"getFamilyCircleWithMessage:connection:" forMessage:141];
  [server addObserver:self selector:"getKBSyncWithMessage:connection:" forMessage:139];
  [server addObserver:self selector:"getPlayInfoWithMessage:connection:" forMessage:58];
  [server addObserver:self selector:"getSoftwareLibraryItemsWithMessage:connection:" forMessage:89];
  [server addObserver:self selector:"getUserApplicationsWithMessage:connection:" forMessage:137];
  [server addObserver:self selector:"haveApplicationsOfTypeWithMessage:connection:" forMessage:135];
  [server addObserver:self selector:"invalidateURLBagWithMessage:connection:" forMessage:49];
  [server addObserver:self selector:"keybagRequestWithMessage:connection:" forMessage:86];
  [server addObserver:self selector:"personalizeOffersWithMessage:connection:" forMessage:55];
  [server addObserver:self selector:"pushNotificationRequestWithMessage:connection:" forMessage:127];
  [server addObserver:self selector:"pushNotificationTokenRequestWithMessage:connection:" forMessage:210];
  [server addObserver:self selector:"redeemCodesWithMessage:connection:" forMessage:91];
  [server addObserver:self selector:"rentalSyncRequestWithMessage:connection:" forMessage:1016];
  [server addObserver:self selector:"sendAskToBuyWithMessage:connection:" forMessage:140];
  [server addObserver:self selector:"showDialogRequestWithMessage:connection:" forMessage:134];
  [server addObserver:self selector:"showServerPromptWithMessage:connection:" forMessage:69];
  [server addObserver:self selector:"softwareLibraryItemSetValuesWithMessage:connection:" forMessage:90];
  [server addObserver:self selector:"addMediaSocialPostWithMessage:connection:" forMessage:159];
  [server addObserver:self selector:"getMediaSocialShareExtensionVisibilityWithMessage:connection:" forMessage:160];
  [server addObserver:self selector:"isRemovedSystemAppWithMessage:connection:" forMessage:168];
  [server addObserver:self selector:"playableApplicationsWithMessage:connection:" forMessage:186];
  [server addObserver:self selector:"hasDemotedApplicationsWithMessage:connection:" forMessage:169];
  [server addObserver:self selector:"getRemovableSytemApplicationsWithMessage:connection:" forMessage:172];
  [server addObserver:self selector:"isInstalledAppWithMessage:connection:" forMessage:167];
  [server addObserver:self selector:"sdk_getStorefrontCountryCodeWithMessage:connection:" forMessage:173];
  [server addObserver:self selector:"handlePurchaseIntentActionWithMessage:connection:" forMessage:198];
  [server addObserver:self selector:"saveInstallAttributionParamsWithMessage:connection:" forMessage:200];
  [server addObserver:self selector:"sendInstallAttributionPingbackWithMessage:connection:" forMessage:201];
  if (SSIsInternalBuild())
  {
    [server addObserver:self selector:"collectURLSessionDataWithMessage:connection:" forMessage:199];
  }

  v5.receiver = self;
  v5.super_class = StoreServicesRequestQueue;
  [(RequestQueue *)&v5 observeXPCServer:server];
}

- (void)addDownloadsUsingManifestWithMessage:(id)message connection:(id)connection
{
  v6 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v6 hasEntitlements])
  {
    v7 = [[SSDownloadManifestRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    if (v7)
    {
      v8 = v7;
      v9 = [[LoadExternalDownloadManifestOperation alloc] initWithRequest:v7];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000EADDC;
      v18[3] = &unk_100328218;
      v18[4] = v9;
      [(StoreServicesRequestQueue *)self addOperation:v9 forClient:v6 withMessageBlock:v18];
    }
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
      LODWORD(v12) = shouldLog | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v19 = 138412546;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = v6;
      v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot load manifest for unentitled client: %@", &v19, 22);
      if (v14)
      {
        v15 = v14;
        v16 = [NSString stringWithCString:v14 encoding:4];
        free(v15);
        v17 = v16;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v6, v17];
  }
}

- (void)addMediaSocialPostWithMessage:(id)message connection:(id)connection
{
  v10 = [StoreServicesRequestQueue _newClientWithMessage:"_newClientWithMessage:connection:" connection:?];
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSXPCConnectionHasEntitlement())
  {
    v6 = [[SSVMediaSocialPostRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    postDescription = [v6 postDescription];
    if ([postDescription accountIdentifier] || (v8 = objc_msgSend(objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore, "defaultStore"), "activeAccount"), "uniqueIdentifier"), objc_msgSend(postDescription, "setAccountIdentifier:", v8), v8))
    {
      [+[DirectUploadController sharedController](DirectUploadController "sharedController")];
      v9 = 0;
    }

    else
    {
      v9 = SSError();
    }

    [(StoreServicesRequestQueue *)self _sendMessageWithError:v9 toClient:v10];
  }

  else
  {
    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v10];
  }
}

- (void)authorizeMachineWithMessage:(id)message connection:(id)connection
{
  v6 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v6 hasEntitlements])
  {
    v7 = [[SSAuthorizationRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    v8 = [[AuthorizeMachineOperation alloc] initWithAuthorizationRequest:v7];
    if ([objc_msgSend(v7 "clientIdentifierHeader")])
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    -[AuthorizeMachineOperation setClientIdentifierHeader:](v8, "setClientIdentifierHeader:", [v9 clientIdentifierHeader]);
    if ([objc_msgSend(v7 "userAgent")])
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    -[AuthorizeMachineOperation setUserAgent:](v8, "setUserAgent:", [v10 userAgent]);
    -[AuthorizeMachineOperation setShouldPromptForCredentials:](v8, "setShouldPromptForCredentials:", [v7 shouldPromptForCredentials]);
    -[AuthorizeMachineOperation setShouldAddKeysToKeyBag:](v8, "setShouldAddKeysToKeyBag:", [v7 shouldAddKeysToKeyBag]);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000EB238;
    v19[3] = &unk_100328218;
    v19[4] = v8;
    [(StoreServicesRequestQueue *)self addOperation:v8 forClient:v6 withMessageBlock:v19];
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
      LODWORD(v13) = shouldLog | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v20 = 138412546;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = v6;
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot authorize for unentitled client: %@", &v20, 22);
      if (v15)
      {
        v16 = v15;
        v17 = [NSString stringWithCString:v15 encoding:4];
        free(v16);
        v18 = v17;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v6, v18];
  }
}

- (void)checkinRentalWithMessage:(id)message connection:(id)connection
{
  v6 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v6 hasEntitlements])
  {
    v7 = [[SSRentalCheckinRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    v8 = [[CheckinRentalOperation alloc] initWithCheckinRequest:v7];
    -[CheckinRentalOperation setClientIdentifierHeader:](v8, "setClientIdentifierHeader:", [v6 clientIdentifierHeader]);
    -[CheckinRentalOperation setUserAgent:](v8, "setUserAgent:", [v6 userAgent]);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000EB4F4;
    v15[3] = &unk_100328218;
    v15[4] = v8;
    [(StoreServicesRequestQueue *)self addOperation:v8 forClient:v6 withMessageBlock:v15];
  }

  else
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v16 = 138412546;
      v17 = objc_opt_class();
      v18 = 2112;
      v19 = v6;
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot checkin rental for unentitled client: %@", &v16, 22);
      if (v13)
      {
        v14 = v13;
        [NSString stringWithCString:v13 encoding:4];
        free(v14);
        SSFileLog();
      }
    }
  }
}

- (void)checkoutRentalWithMessage:(id)message connection:(id)connection
{
  v6 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v6 hasEntitlements])
  {
    v7 = [[SSRentalCheckoutRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    if ([v7 accountIdentifier] && objc_msgSend(v7, "rentalKeyIdentifier"))
    {
      v8 = -[CheckoutRentalKeysOperation initWithAccountIdentifier:rentalKeyIdentifier:]([CheckoutRentalKeysOperation alloc], "initWithAccountIdentifier:rentalKeyIdentifier:", [v7 accountIdentifier], objc_msgSend(v7, "rentalKeyIdentifier"));
    }

    else
    {
      sinfs = [v7 sinfs];
      if (![sinfs count])
      {
        downloadIdentifier = [v7 downloadIdentifier];
        if (downloadIdentifier)
        {
          v19 = -[StoreDownload initWithContentsOfFile:]([StoreDownload alloc], "initWithContentsOfFile:", [+[ScratchManager directoryPathForDownloadID:kind:createIfNeeded:](ScratchManager directoryPathForDownloadID:downloadIdentifier kind:0 createIfNeeded:{1), "stringByAppendingPathComponent:", @"iTunesMetadata.plist"}]);
          sinfs2 = [(StoreDownload *)v19 sinfs];
          if (sinfs2)
          {
            sinfs2 = [[CheckoutRentalKeysOperation alloc] initWithStoreDownloadSinfs:sinfs2];
          }

          if (sinfs2)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_26;
      }

      v8 = [[CheckoutRentalKeysOperation alloc] initWithSinfs:sinfs];
    }

    sinfs2 = v8;
    if (v8)
    {
LABEL_19:
      [(CheckoutRentalKeysOperation *)sinfs2 setBackgroundCheckout:1];
      -[CheckoutRentalKeysOperation setCheckoutWithPlay:](sinfs2, "setCheckoutWithPlay:", [v7 shouldCheckoutWithPlay]);
      -[CheckoutRentalKeysOperation setClientIdentifierHeader:](sinfs2, "setClientIdentifierHeader:", [v6 clientIdentifierHeader]);
      checkoutType = [v7 checkoutType];
      if ((checkoutType - 1) <= 1)
      {
        [(CheckoutRentalKeysOperation *)sinfs2 setCheckoutType:checkoutType];
      }

      -[CheckoutRentalKeysOperation setShouldValidateRentalInfo:](sinfs2, "setShouldValidateRentalInfo:", [v7 shouldValidateRentalInfo]);
      -[CheckoutRentalKeysOperation setUserAgent:](sinfs2, "setUserAgent:", [v6 userAgent]);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000EB970;
      v20[3] = &unk_100328218;
      v20[4] = sinfs2;
      [(StoreServicesRequestQueue *)self addOperation:sinfs2 forClient:v6 withMessageBlock:v20];

      goto LABEL_27;
    }

LABEL_26:
    [(StoreServicesRequestQueue *)self _sendMessageWithError:SSError() toClient:v6];
LABEL_27:

    goto LABEL_28;
  }

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    LODWORD(v11) = shouldLog | 2;
  }

  else
  {
    LODWORD(v11) = shouldLog;
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v11;
  }

  else
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v21 = 138412546;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = v6;
    v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot checkin rental for unentitled client: %@", &v21, 22);
    if (v13)
    {
      v14 = v13;
      [NSString stringWithCString:v13 encoding:4];
      free(v14);
      SSFileLog();
    }
  }

LABEL_28:
}

- (void)demoteApplicationWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement())
  {
    objc_opt_class();
    v7 = SSXPCDictionaryCopyCFObjectWithClass();
    v8 = [[DemoteApplicationOperation alloc] initWithBundleIdentifier:v7];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000EBB60;
    v9[3] = &unk_100328218;
    v9[4] = v8;
    [(StoreServicesRequestQueue *)self addOperation:v8 forMessage:message connection:connection replyBlock:v9];
  }

  else
  {

    [(StoreServicesRequestQueue *)self _sendUnentitledReplyForMessage:message connection:connection];
  }
}

- (void)getAccountPurchaseHistoryWithMessage:(id)message connection:(id)connection
{
  v7 = [[XPCClient alloc] initWithInputConnection:connection];
  if ([(XPCClient *)v7 hasEntitlements])
  {
    v8 = [[SSMutableAuthenticationContext alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    xpc_dictionary_get_value(message, "2");
    objc_opt_class();
    v9 = SSXPCCreateNSArrayFromXPCEncodedArray();
    if (![v8 clientIdentifierHeader])
    {
      [v8 setClientIdentifierHeader:{-[XPCClient clientIdentifierHeader](v7, "clientIdentifierHeader")}];
    }

    hTTPHeaders = [v8 HTTPHeaders];
    v11 = SSHTTPHeaderUserAgent;
    if (![hTTPHeaders objectForKey:SSHTTPHeaderUserAgent])
    {
      [v8 setValue:-[XPCClient userAgent](v7 forHTTPHeaderField:{"userAgent"), v11}];
    }

    v12 = [[PurchaseHistoryOperation alloc] initWithPurchaseHistoryItems:v9 authenticationContext:v8];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000EBEB0;
    v21[3] = &unk_100328218;
    v21[4] = v12;
    [(StoreServicesRequestQueue *)self addOperation:v12 forMessage:message connection:connection replyBlock:v21];
  }

  else
  {
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

    if (v15)
    {
      v22 = 138412546;
      v23 = objc_opt_class();
      v24 = 2112;
      v25 = v7;
      v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot get purchase history for unentitled client: %@", &v22, 22);
      if (v17)
      {
        v18 = v17;
        v19 = [NSString stringWithCString:v17 encoding:4];
        free(v18);
        v20 = v19;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v7, v20];
  }
}

- (void)getApplicationWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSXPCConnectionHasEntitlement())
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000EC00C;
    v8[3] = &unk_100327350;
    v8[4] = message;
    v8[5] = connection;
    dispatch_async(global_queue, v8);
  }

  else
  {

    [(StoreServicesRequestQueue *)self _sendUnentitledReplyForMessage:message connection:connection];
  }
}

- (void)getApplicationCapabilitiesMessage:(id)message connection:(id)connection
{
  v7 = (SSXPCConnectionHasEntitlement() & 1) != 0 || SSXPCConnectionHasEntitlement();
  global_queue = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000EC1E0;
  v9[3] = &unk_100328A68;
  v9[4] = self;
  v9[5] = message;
  v9[6] = connection;
  v10 = v7;
  dispatch_async(global_queue, v9);
}

- (void)getAvailableItemKindsWithMessage:(id)message connection:(id)connection
{
  v7 = [[XPCClient alloc] initWithInputConnection:connection];
  CFPreferencesSynchronize(kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v8 = +[SSDevice copyCachedAvailableItemKinds];
  if (v8)
  {
    v9 = v8;
    reply = xpc_dictionary_create_reply(message);
    [v9 allObjects];
    SSXPCDictionarySetCFObject();
    xpc_connection_send_message(connection, reply);

    xpc_release(reply);
  }

  else
  {
    v11 = [SSURLBagContext contextWithBagType:0];
    userAgent = [(XPCClient *)v7 userAgent];
    [(SSURLBagContext *)v11 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
    v13 = [[ISLoadURLBagOperation alloc] initWithBagContext:v11];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000EC498;
    v14[3] = &unk_100328218;
    v14[4] = v13;
    [(StoreServicesRequestQueue *)self addOperation:v13 forMessage:message connection:connection replyBlock:v14];
  }
}

- (void)getFamilyCircleWithMessage:(id)message connection:(id)connection
{
  v6 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v6 hasEntitlements])
  {
    v7 = [[SSFamilyCircleRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    v8 = objc_alloc_init(FamilyCircleOperation);
    -[FamilyCircleOperation setAuthenticationPromptStyle:](v8, "setAuthenticationPromptStyle:", [v7 authenticationPromptStyle]);
    -[FamilyCircleOperation setClientAuditTokenData:](v8, "setClientAuditTokenData:", [v6 auditTokenData]);
    -[FamilyCircleOperation setFetchITunesAccountNames:](v8, "setFetchITunesAccountNames:", [v7 fetchITunesAccountNames]);
    -[FamilyCircleOperation setUserAgent:](v8, "setUserAgent:", [v6 userAgent]);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000EC760;
    v15[3] = &unk_100328218;
    v15[4] = v8;
    [(StoreServicesRequestQueue *)self addOperation:v8 forClient:v6 withMessageBlock:v15];
  }

  else
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v16 = 138412290;
      v17 = objc_opt_class();
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could get family circle for unentitled client", &v16, 12);
      if (v13)
      {
        v14 = v13;
        [NSString stringWithCString:v13 encoding:4];
        free(v14);
        SSFileLog();
      }
    }
  }
}

- (void)getKBSyncWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement())
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000EC8A4;
    v8[3] = &unk_100327350;
    v8[4] = message;
    v8[5] = connection;
    dispatch_async(global_queue, v8);
  }

  else
  {

    [(StoreServicesRequestQueue *)self _sendUnentitledReplyForMessage:message connection:connection];
  }
}

- (void)getMediaSocialShareExtensionVisibilityWithMessage:(id)message connection:(id)connection
{
  reply = xpc_dictionary_create_reply(message);
  xpc_dictionary_set_BOOL(reply, "1", [+[SSVMediaSocialAdminPermissionsCoordinator sharedCoordinator](SSVMediaSocialAdminPermissionsCoordinator "sharedCoordinator")]);
  xpc_connection_send_message(connection, reply);

  xpc_release(reply);
}

- (void)getPlayInfoWithMessage:(id)message connection:(id)connection
{
  v6 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v6 hasEntitlements])
  {
    v7 = [[SSPlayInfoRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    v8 = -[GetPlayInfoOperation initWithPlayInfoRequestContext:]([GetPlayInfoOperation alloc], "initWithPlayInfoRequestContext:", [v7 playInfoContext]);
    -[GetPlayInfoOperation setClientIdentifierHeader:](v8, "setClientIdentifierHeader:", [v6 clientIdentifierHeader]);
    -[GetPlayInfoOperation setUserAgent:](v8, "setUserAgent:", [v6 userAgent]);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000ECC80;
    v17[3] = &unk_100328218;
    v17[4] = v8;
    [(StoreServicesRequestQueue *)self addOperation:v8 forClient:v6 withMessageBlock:v17];
  }

  else
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v18 = 138412546;
      v19 = objc_opt_class();
      v20 = 2112;
      v21 = v6;
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot get play info for unentitled client: %@", &v18, 22);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v16 = v15;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v6, v16];
  }
}

- (void)getSoftwareLibraryItemsWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSXPCConnectionHasEntitlement())
  {
    v7 = SSXPCConnectionCopyClientIdentifier();
    v8 = +[SSLogConfig sharedDaemonConfig];
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
      v29 = 138543618;
      v30 = objc_opt_class();
      v31 = 2114;
      v32 = v7;
      v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Performing a software-library lookup operation on behalf of %{public}@…", &v29, 22);
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4];
        free(v13);
        v27 = v14;
        SSFileLog();
      }
    }

    objc_opt_class();
    v15 = SSXPCDictionaryCopyCFObjectWithClass();
    objc_opt_class();
    v16 = SSXPCDictionaryCopyCFObjectWithClass();
    v17 = [SoftwareLibraryLookupOperation alloc];
    if (v16)
    {
      v18 = [(SoftwareLibraryLookupOperation *)v17 initWithItemIdentifiers:v16];
    }

    else
    {
      v18 = [(SoftwareLibraryLookupOperation *)v17 initWithBundleIdentifiers:v15];
    }

    v19 = v18;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000ED080;
    v28[3] = &unk_100328218;
    v28[4] = v18;
    [(StoreServicesRequestQueue *)self addOperation:v18 forMessage:message connection:connection replyBlock:v28, v27];
  }

  else
  {
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      LODWORD(v22) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v22) = shouldLog2;
    }

    oSLogObject2 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v22;
    }

    else
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v29 = 138412290;
      v30 = objc_opt_class();
      v24 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Cannot get software library for unentitled client", &v29, 12);
      if (v24)
      {
        v25 = v24;
        v26 = [NSString stringWithCString:v24 encoding:4];
        free(v25);
        v27 = v26;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledReplyForMessage:message connection:connection, v27];
  }
}

- (void)getRemovableSytemApplicationsWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSXPCConnectionHasEntitlement())
  {
    v7 = objc_alloc_init(RemoveableSoftwareLookupOperation);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000ED300;
    v16[3] = &unk_100328218;
    v16[4] = v7;
    [(StoreServicesRequestQueue *)self addOperation:v7 forMessage:message connection:connection replyBlock:v16];
  }

  else
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
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
      v17 = 138412290;
      v18 = objc_opt_class();
      v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot get software library for unentitled client", &v17, 12);
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4];
        free(v13);
        v15 = v14;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledReplyForMessage:message connection:connection, v15];
  }
}

- (void)getUserApplicationsWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSXPCConnectionHasEntitlement())
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000ED45C;
    v8[3] = &unk_100327350;
    v8[4] = message;
    v8[5] = connection;
    dispatch_async(global_queue, v8);
  }

  else
  {

    [(StoreServicesRequestQueue *)self _sendUnentitledReplyForMessage:message connection:connection];
  }
}

- (void)handlePurchaseIntentActionWithMessage:(id)message connection:(id)connection
{
  v6 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v6 hasEntitlements])
  {
    v7 = [[SSPurchaseIntentActionRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    if (v7)
    {
      v8 = v7;
      v9 = [[PurchaseIntentActionOperation alloc] initWithRequest:v7];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000ED708;
      v18[3] = &unk_100328218;
      v18[4] = v9;
      [(StoreServicesRequestQueue *)self addOperation:v9 forClient:v6 withMessageBlock:v18];
    }
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
      LODWORD(v12) = shouldLog | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v19 = 138412546;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = v6;
      v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Ignoring purchase intent action from unentitled client: %@", &v19, 22);
      if (v14)
      {
        v15 = v14;
        v16 = [NSString stringWithCString:v14 encoding:4];
        free(v15);
        v17 = v16;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v6, v17];
  }
}

- (void)hasDemotedApplicationsWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSXPCConnectionHasEntitlement())
  {
    v7 = objc_alloc_init(CheckForDemotedApplicationsOperation);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000ED968;
    v16[3] = &unk_100328218;
    v16[4] = v7;
    [(StoreServicesRequestQueue *)self addOperation:v7 forMessage:message connection:connection replyBlock:v16];
  }

  else
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
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
      v17 = 138412290;
      v18 = objc_opt_class();
      v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot get software library for unentitled client", &v17, 12);
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4];
        free(v13);
        v15 = v14;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledReplyForMessage:message connection:connection, v15];
  }
}

- (void)hasDemotedApplicationsWithMessage2:(id)message2 connection:(id)connection
{
  v5 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message2 connection:connection];
  if ([v5 hasEntitlements])
  {
    v6 = objc_alloc_init(CheckForDemotedApplicationsOperation);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000EDBB0;
    v13[3] = &unk_100328218;
    v13[4] = v6;
    [(StoreServicesRequestQueue *)self addOperation:v6 forClient:v5 withMessageBlock:v13];
  }

  else
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v14 = 138412290;
      v15 = objc_opt_class();
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could discover if there are demoted applications for unentitled client", &v14, 12);
      if (v11)
      {
        v12 = v11;
        [NSString stringWithCString:v11 encoding:4];
        free(v12);
        SSFileLog();
      }
    }
  }
}

- (void)haveApplicationsOfTypeWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSXPCConnectionHasEntitlement())
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000EDD00;
    v8[3] = &unk_100327350;
    v8[4] = message;
    v8[5] = connection;
    dispatch_async(global_queue, v8);
  }

  else
  {

    [(StoreServicesRequestQueue *)self _sendUnentitledReplyForMessage:message connection:connection];
  }
}

- (void)invalidateURLBagWithMessage:(id)message connection:(id)connection
{
  v5 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v5 hasEntitlements])
  {
    v6 = [[SSURLBagContext alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    v7 = SSHTTPHeaderUserAgent;
    if (![v6 valueForHTTPHeaderField:SSHTTPHeaderUserAgent])
    {
      [v6 setValue:objc_msgSend(v5 forHTTPHeaderField:{"userAgent"), v7}];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [+[ISURLBagCache sharedCache](ISURLBagCache "sharedCache")];
    }
  }

  else
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
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
      v14 = 138412546;
      v15 = objc_opt_class();
      v16 = 2112;
      v17 = v5;
      v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot invalidate URL bag for unentitled client: %@", &v14, 22);
      if (v12)
      {
        v13 = v12;
        [NSString stringWithCString:v12 encoding:4];
        free(v13);
        SSFileLog();
      }
    }
  }
}

- (void)isInstalledAppWithMessage:(id)message connection:(id)connection
{
  v7 = [StoreServicesRequestQueue _newClientWithMessage:"_newClientWithMessage:connection:" connection:?];
  if ([v7 hasEntitlements])
  {
    objc_opt_class();
    v8 = SSXPCDictionaryCopyCFObjectWithClass();
    v9 = v8;
    if (v8 && [v8 length])
    {
      v10 = [+[ApplicationWorkspace defaultWorkspace](ApplicationWorkspace "defaultWorkspace")];
    }

    else
    {
      v10 = 0;
    }

    reply = xpc_dictionary_create_reply(message);
    xpc_dictionary_set_BOOL(reply, "0", v10);
    xpc_connection_send_message(connection, reply);
    xpc_release(reply);
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
      LODWORD(v13) = shouldLog | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v20 = 138412546;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = v7;
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot check if application is installed for unentitled client: %@", &v20, 22);
      if (v15)
      {
        v16 = v15;
        v17 = [NSString stringWithCString:v15 encoding:4];
        free(v16);
        v19 = v17;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v7, v19];
  }
}

- (void)isRemovedSystemAppWithMessage:(id)message connection:(id)connection
{
  v7 = [StoreServicesRequestQueue _newClientWithMessage:"_newClientWithMessage:connection:" connection:?];
  if ([v7 hasEntitlements])
  {
    objc_opt_class();
    v8 = SSXPCDictionaryCopyCFObjectWithClass();
    v9 = v8;
    if (v8 && [v8 length])
    {
      v10 = [+[ApplicationWorkspace defaultWorkspace](ApplicationWorkspace "defaultWorkspace")];
    }

    else
    {
      v10 = 0;
    }

    reply = xpc_dictionary_create_reply(message);
    xpc_dictionary_set_BOOL(reply, "0", v10);
    xpc_connection_send_message(connection, reply);
    xpc_release(reply);
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
      LODWORD(v13) = shouldLog | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v20 = 138412546;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = v7;
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot check if application is hidden for unentitled client: %@", &v20, 22);
      if (v15)
      {
        v16 = v15;
        v17 = [NSString stringWithCString:v15 encoding:4];
        free(v16);
        v19 = v17;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v7, v19];
  }
}

- (void)playableApplicationsWithMessage:(id)message connection:(id)connection
{
  v7 = [StoreServicesRequestQueue _newClientWithMessage:"_newClientWithMessage:connection:" connection:?];
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSXPCConnectionHasEntitlement())
  {
    objc_opt_class();
    v8 = SSXPCDictionaryCopyCFObjectWithClass();
    v9 = objc_alloc_init(NSMutableArray);
    reply = xpc_dictionary_create_reply(message);
    xpc_dictionary_set_int64(reply, "0", 1011);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if (SSVApplicationIsPlayable())
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    SSXPCDictionarySetCFObject();
    xpc_connection_send_message(connection, reply);
    xpc_release(reply);
  }

  else
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
      v29 = 138412546;
      v30 = objc_opt_class();
      v31 = 2112;
      v32 = v7;
      v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%@]: Cannot check if applications are playable for unentitled client: %@", &v29, 22);
      if (v20)
      {
        v21 = v20;
        v22 = [NSString stringWithCString:v20 encoding:4];
        free(v21);
        v23 = v22;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledReplyForMessage:message connection:connection, v23];
  }
}

- (void)keybagRequestWithMessage:(id)message connection:(id)connection
{
  v6 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v6 hasEntitlements])
  {
    v7 = [[SSKeybagRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    v8 = [[KeybagRequestOperation alloc] initWithKeybagRequest:v7 client:v6];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000EEA50;
    v17[3] = &unk_100328218;
    v17[4] = v8;
    [(StoreServicesRequestQueue *)self addOperation:v8 forClient:v6 withMessageBlock:v17];
  }

  else
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v18 = 138412546;
      v19 = objc_opt_class();
      v20 = 2112;
      v21 = v6;
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot request keybag for unentitled client: %@", &v18, 22);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v16 = v15;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v6, v16];
  }
}

- (void)personalizeOffersWithMessage:(id)message connection:(id)connection
{
  v6 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v6 hasEntitlements])
  {
    v7 = [[SSPersonalizeOffersRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    v8 = [[ISPersonalizeOffersRequest alloc] initWithItems:{objc_msgSend(v7, "items")}];
    [v8 setAccountIdentifier:{objc_msgSend(objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore, "defaultStore"), "activeAccount"), "uniqueIdentifier")}];
    v9 = [[ISPersonalizeOffersOperation alloc] initWithPersonalizeOffersRequest:v8];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000EED3C;
    v18[3] = &unk_100328218;
    v18[4] = v9;
    [(StoreServicesRequestQueue *)self addOperation:v9 forClient:v6 withMessageBlock:v18];
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
      LODWORD(v12) = shouldLog | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v19 = 138412546;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = v6;
      v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot personalize for unentitled client: %@", &v19, 22);
      if (v14)
      {
        v15 = v14;
        v16 = [NSString stringWithCString:v14 encoding:4];
        free(v15);
        v17 = v16;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v6, v17];
  }
}

- (void)pushNotificationTokenRequestWithMessage:(id)message connection:(id)connection
{
  v7 = [StoreServicesRequestQueue _newClientWithMessage:"_newClientWithMessage:connection:" connection:?];
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSXPCConnectionHasEntitlement())
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
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
      v25 = 138543362;
      v26 = objc_opt_class();
      v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Received request to post push tokens", &v25, 12);
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4];
        free(v13);
        v24 = v14;
        SSFileLog();
      }
    }

    [+[PushNotificationController postPushTokens:v24]];
    reply = xpc_dictionary_create_reply(message);
    if (reply)
    {
      v16 = reply;
      xpc_dictionary_set_BOOL(reply, "1", 1);
      SSXPCDictionarySetCFObject();
      xpc_connection_send_message(connection, v16);
      xpc_release(v16);
    }
  }

  else
  {
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      LODWORD(v19) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v19) = shouldLog2;
    }

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v25 = 138543618;
      v26 = objc_opt_class();
      v27 = 2114;
      v28 = v7;
      v21 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Rejecting push notification request from unentitled client: %{public}@", &v25, 22);
      if (v21)
      {
        v22 = v21;
        v23 = [NSString stringWithCString:v21 encoding:4];
        free(v22);
        v24 = v23;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v7, v24];
  }
}

- (void)pushNotificationRequestWithMessage:(id)message connection:(id)connection
{
  v6 = [StoreServicesRequestQueue _newClientWithMessage:"_newClientWithMessage:connection:" connection:?];
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSXPCConnectionHasEntitlement())
  {
    v7 = [[SSVPushNotificationRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    v8 = -[PushNotificationRequestOperation initWithPushNotificationParameters:]([PushNotificationRequestOperation alloc], "initWithPushNotificationParameters:", [v7 pushNotificationParameters]);
    -[PushNotificationRequestOperation setUserAgent:](v8, "setUserAgent:", [v6 userAgent]);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000EF338;
    v17[3] = &unk_100328218;
    v17[4] = v8;
    [(StoreServicesRequestQueue *)self addOperation:v8 forClient:v6 withMessageBlock:v17];
  }

  else
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v18 = 138412546;
      v19 = objc_opt_class();
      v20 = 2112;
      v21 = v6;
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Rejecting push notification request from unentitled client: %@", &v18, 22);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v16 = v15;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v6, v16];
  }
}

- (void)redeemCodesWithMessage:(id)message connection:(id)connection
{
  v6 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v6 hasEntitlements])
  {
    v7 = [[SSRedeemCodesRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    v8 = -[RedeemCodesOperation initWithRedeemCodes:]([RedeemCodesOperation alloc], "initWithRedeemCodes:", [v7 redeemCodes]);
    -[RedeemCodesOperation setHeadless:](v8, "setHeadless:", [v7 headless]);
    -[RedeemCodesOperation setCameraRecognized:](v8, "setCameraRecognized:", [v7 cameraRecognized]);
    -[RedeemCodesOperation setAuthenticationContext:](v8, "setAuthenticationContext:", [v7 authenticationContext]);
    -[RedeemCodesOperation setLogCorrelationKey:](v8, "setLogCorrelationKey:", [v7 logCorrelationKey]);
    -[RedeemCodesOperation setParams:](v8, "setParams:", [v7 params]);
    -[RedeemCodesOperation setUserAgent:](v8, "setUserAgent:", [v6 userAgent]);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000EF660;
    v17[3] = &unk_100328218;
    v17[4] = v8;
    [(StoreServicesRequestQueue *)self addOperation:v8 forClient:v6 withMessageBlock:v17];
  }

  else
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v18 = 138412546;
      v19 = objc_opt_class();
      v20 = 2112;
      v21 = v6;
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot redeem codes for unentitled client: %@", &v18, 22);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v16 = v15;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v6, v16];
  }
}

- (void)rentalSyncRequestWithMessage:(id)message connection:(id)connection
{
  v6 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v6 hasEntitlements])
  {
    v7 = [[SSRentalSyncRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    accountIdentifier = [v7 accountIdentifier];
    sinfs = [v7 sinfs];
    if (accountIdentifier)
    {
      v10 = -[SyncRentalOperation initWithAccountIdentifier:]([SyncRentalOperation alloc], "initWithAccountIdentifier:", [v7 accountIdentifier]);
    }

    else
    {
      v18 = sinfs;
      if (![sinfs count])
      {
        goto LABEL_20;
      }

      v10 = [[SyncRentalOperation alloc] initWithSinfs:v18];
    }

    v19 = v10;
    if (v10)
    {
      -[SyncRentalOperation setClientIdentifierHeader:](v10, "setClientIdentifierHeader:", [v6 clientIdentifierHeader]);
      -[SyncRentalOperation setUserAgent:](v19, "setUserAgent:", [v6 userAgent]);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000EF9A4;
      v21[3] = &unk_100328218;
      v21[4] = v19;
      [(StoreServicesRequestQueue *)self addOperation:v19 forClient:v6 withMessageBlock:v21];

LABEL_21:
      goto LABEL_22;
    }

LABEL_20:
    [(StoreServicesRequestQueue *)self _sendMessageWithError:SSError() toClient:v6];
    goto LABEL_21;
  }

  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    LODWORD(v13) = shouldLog | 2;
  }

  else
  {
    LODWORD(v13) = shouldLog;
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v13;
  }

  else
  {
    v13 &= 2u;
  }

  if (v13)
  {
    v22 = 138412546;
    v23 = objc_opt_class();
    v24 = 2112;
    v25 = v6;
    v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot sync for unentitled client: %@", &v22, 22);
    if (v15)
    {
      v16 = v15;
      v17 = [NSString stringWithCString:v15 encoding:4];
      free(v16);
      v20 = v17;
      SSFileLog();
    }
  }

  [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v6, v20];
LABEL_22:
}

- (void)saveInstallAttributionParamsWithMessage:(id)message connection:(id)connection
{
  v6 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v6 hasEntitlements])
  {
    v7 = [[SSInstallAttributionParamsRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    if (v7)
    {
      v8 = v7;
      v9 = [[SaveInstallAttributionParamsOperation alloc] initWithRequest:v7];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000EFCD0;
      v18[3] = &unk_100328218;
      v18[4] = v9;
      [(StoreServicesRequestQueue *)self addOperation:v9 forClient:v6 withMessageBlock:v18];
    }

    else
    {
      [(StoreServicesRequestQueue *)self _sendMessageWithError:SSError() toClient:v6];
    }
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
      LODWORD(v12) = shouldLog | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v19 = 138412546;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = v6;
      v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Ignoring install attribution params from unentitled client: %@", &v19, 22);
      if (v14)
      {
        v15 = v14;
        v16 = [NSString stringWithCString:v14 encoding:4];
        free(v15);
        v17 = v16;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v6, v17];
  }
}

- (void)sdk_getStorefrontCountryCodeWithMessage:(id)message connection:(id)connection
{
  v18 = 0u;
  v19 = 0u;
  xpc_connection_get_audit_token();
  memset(v20, 0, sizeof(v20));
  if (TCCAccessCheckAuditToken())
  {
    v7 = [[XPCClient alloc] initWithInputConnection:connection];
    v8 = [SSURLBagContext contextWithBagType:0];
    userAgent = [(XPCClient *)v7 userAgent];
    [(SSURLBagContext *)v8 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
    v10 = [[ISLoadURLBagOperation alloc] initWithBagContext:v8];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000EFF80;
    v17[3] = &unk_100328218;
    v17[4] = v10;
    [(StoreServicesRequestQueue *)self addOperation:v10 forMessage:message connection:connection replyBlock:v17];
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
      LODWORD(v13) = shouldLog | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      LODWORD(v20[0]) = 138543362;
      *(v20 + 4) = objc_opt_class();
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Cannot load storefront country code for unauthorized client", v20, 12);
      if (v15)
      {
        v16 = v15;
        [NSString stringWithCString:v15 encoding:4];
        free(v16);
        SSFileLog();
      }
    }
  }
}

- (void)sendAskToBuyWithMessage:(id)message connection:(id)connection
{
  v6 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v6 hasEntitlements])
  {
    v7 = [[SSAskPermissionActionRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    v8 = -[AskPermissionActionOperation initWithURL:account:]([AskPermissionActionOperation alloc], "initWithURL:account:", [v7 URL], objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore, "defaultStore"), "activeAccount"));
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000F039C;
    v15[3] = &unk_100328218;
    v15[4] = v8;
    [(StoreServicesRequestQueue *)self addOperation:v8 forClient:v6 withMessageBlock:v15];
  }

  else
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v16 = 138412290;
      v17 = objc_opt_class();
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not do ATB for unentitled client", &v16, 12);
      if (v13)
      {
        v14 = v13;
        [NSString stringWithCString:v13 encoding:4];
        free(v14);
        SSFileLog();
      }
    }
  }
}

- (void)sendInstallAttributionPingbackWithMessage:(id)message connection:(id)connection
{
  v5 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  v6 = +[LSApplicationProxy applicationProxyForIdentifier:placeholder:](LSApplicationProxy, "applicationProxyForIdentifier:placeholder:", [v5 clientIdentifier], 0);
  if (!v6)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v22 = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      clientIdentifier = [v5 clientIdentifier];
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "[%{public}@]: Did not find proxy for bundle id: %{public}@", &v22, 22);
      if (v13)
      {
        v14 = v13;
        [NSString stringWithCString:v13 encoding:4];
        free(v14);
        SSFileLog();
      }
    }

    goto LABEL_27;
  }

  itemID = [v6 itemID];
  if (!itemID)
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      LODWORD(v17) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v17) = shouldLog2;
    }

    oSLogObject2 = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v22 = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      clientIdentifier = [v5 clientIdentifier];
      v19 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "[%{public}@]: Did not find adam id for bundle id: %{public}@", &v22, 22);
      if (v19)
      {
        v20 = v19;
        [NSString stringWithCString:v19 encoding:4];
        free(v20);
        SSFileLog();
      }
    }

LABEL_27:
    [(StoreServicesRequestQueue *)self _sendMessageWithError:SSError() toClient:v5];
    goto LABEL_28;
  }

  v8 = [[SendInstallAttributionPingbackOperation alloc] initWithAdamId:itemID];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000F0754;
  v21[3] = &unk_100328218;
  v21[4] = v8;
  [(StoreServicesRequestQueue *)self addOperation:v8 forClient:v5 withMessageBlock:v21];

LABEL_28:
}

- (void)showDialogRequestWithMessage:(id)message connection:(id)connection
{
  v6 = [(StoreServicesRequestQueue *)self _newClientWithMessage:message connection:connection];
  if ([v6 hasEntitlements])
  {
    v7 = [[SSVShowDialogRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(message, "1")}];
    v8 = [[ISDialog alloc] initWithXPCEncoding:{objc_msgSend(v7, "encodedDialog")}];
    v9 = [[DaemonDialogOperation alloc] initWithDialog:v8];
    -[DaemonDialogOperation setDisplaysOnLockscreen:](v9, "setDisplaysOnLockscreen:", [objc_msgSend(v8 "authenticationContext")]);
    [(DaemonDialogOperation *)v9 setOutputBlock:&stru_100328AD0];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000F0A2C;
    v18[3] = &unk_100328218;
    v18[4] = v9;
    [(StoreServicesRequestQueue *)self addOperation:v9 forClient:v6 withMessageBlock:v18];
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
      LODWORD(v12) = shouldLog | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v19 = 138412546;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = v6;
      v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot show dialog for unentitled client: %@", &v19, 22);
      if (v14)
      {
        v15 = v14;
        v16 = [NSString stringWithCString:v14 encoding:4];
        free(v15);
        v17 = v16;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledMessageToClient:v6, v17];
  }
}

- (void)showServerPromptWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement())
  {
    objc_opt_class();
    v7 = SSXPCDictionaryCopyCFObjectWithClass();
    v8 = [[ShowServerPromptOperation alloc] initWithPromptIdentifier:v7];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000F0CC4;
    v17[3] = &unk_100328218;
    v17[4] = v8;
    [(StoreServicesRequestQueue *)self addOperation:v8 forMessage:message connection:connection replyBlock:v17];
  }

  else
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v18 = 138412290;
      v19 = objc_opt_class();
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot show prompt for unentitled client", &v18, 12);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v16 = v15;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledReplyForMessage:message connection:connection, v16];
  }
}

- (void)softwareLibraryItemSetValuesWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement())
  {
    objc_opt_class();
    v7 = SSXPCDictionaryCopyCFObjectWithClass();
    objc_opt_class();
    v8 = SSXPCDictionaryCopyCFObjectWithClass();
    v9 = [[SoftwareLibraryUpdateOperation alloc] initWithBundleIdentifier:v7 changeset:v8];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000F0F68;
    v18[3] = &unk_100328218;
    v18[4] = v9;
    [(StoreServicesRequestQueue *)self addOperation:v9 forMessage:message connection:connection replyBlock:v18];
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
      LODWORD(v12) = shouldLog | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v19 = 138412290;
      v20 = objc_opt_class();
      v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot set software properties for unentitled client", &v19, 12);
      if (v14)
      {
        v15 = v14;
        v16 = [NSString stringWithCString:v14 encoding:4];
        free(v15);
        v17 = v16;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledReplyForMessage:message connection:connection, v17];
  }
}

- (void)collectURLSessionDataWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement())
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F11B8;
    block[3] = &unk_100327350;
    block[4] = message;
    block[5] = connection;
    dispatch_async(global_queue, block);
  }

  else
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
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
      v17 = 138412290;
      v18 = objc_opt_class();
      v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cannot collect .har file for unentitled client", &v17, 12);
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4];
        free(v13);
        v15 = v14;
        SSFileLog();
      }
    }

    [(StoreServicesRequestQueue *)self _sendUnentitledReplyForMessage:message connection:connection, v15];
  }
}

- (void)addOperation:(id)operation forClient:(id)client withMessageBlock:(id)block
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F12C4;
  v6[3] = &unk_100328240;
  v6[4] = block;
  v5.receiver = self;
  v5.super_class = StoreServicesRequestQueue;
  [(RequestQueue *)&v5 addOperation:operation forClient:client withMessageBlock:v6];
}

- (void)addOperation:(id)operation forMessage:(id)message connection:(id)connection replyBlock:(id)block
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F13B0;
  v7[3] = &unk_100328240;
  v7[4] = block;
  v6.receiver = self;
  v6.super_class = StoreServicesRequestQueue;
  [(RequestQueue *)&v6 addOperation:operation forMessage:message connection:connection replyBlock:v7];
}

- (id)_newClientWithMessage:(id)message connection:(id)connection
{
  v5 = [[XPCClient alloc] initWithInputConnection:connection];
  value = xpc_dictionary_get_value(message, "2");
  if (value)
  {
    v7 = value;
    if (xpc_get_type(value) == &_xpc_type_endpoint)
    {
      v8 = xpc_connection_create_from_endpoint(v7);
      if (v8)
      {
        v9 = v8;
        [(XPCClient *)v5 setOutputConnectionWithConnection:v8];
        xpc_release(v9);
      }
    }
  }

  return v5;
}

- (void)_sendMessageWithError:(id)error toClient:(id)client
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, "0", 1011);
  SSXPCDictionarySetCFObject();
  [objc_msgSend(client "outputConnection")];

  xpc_release(v5);
}

- (void)_sendUnentitledMessageToClient:(id)client
{
  v5 = SSError();

  [(StoreServicesRequestQueue *)self _sendMessageWithError:v5 toClient:client];
}

- (void)_sendUnentitledReplyForMessage:(id)message connection:(id)connection
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v6 = reply;
    SSError();
    SSXPCDictionarySetCFObject();
    xpc_connection_send_message(connection, v6);

    xpc_release(v6);
  }
}

@end