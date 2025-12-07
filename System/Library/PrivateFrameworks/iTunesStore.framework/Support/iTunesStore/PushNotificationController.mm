@interface PushNotificationController
+ (BOOL)_amsHandleNotification:(id)notification urlBag:(id)bag;
+ (id)_newPushHandlerWithURLBag:(id)bag;
+ (id)sharedInstance;
+ (id)soundFilesDirectoryPath;
- (BOOL)_isValidEnvironment:(id)environment;
- (PushNotificationController)init;
- (id)_bag;
- (id)_clientForIdentifier:(id)identifier createIfNeeded:(BOOL)needed inContext:(id)context;
- (id)_enabledTopics;
- (id)_environmentForName:(id)name createIfNeeded:(BOOL)needed inContext:(id)context;
- (id)_environmentNameForConnection:(id)connection;
- (id)_newAPSConnectionWithEnvironment:(id)environment;
- (id)_newPostTokenOperationForEnvironment:(id)environment account:(id)account;
- (id)_portNameForEnvironmentName:(id)name;
- (int64_t)_numberOfClientsInContext:(id)context;
- (void)_accountStoreChangedNotification:(id)notification;
- (void)_addNotificationWithUserInfo:(id)info client:(id)client context:(id)context;
- (void)_closeEnvironment:(id)environment inContext:(id)context;
- (void)_deviceNameChanged;
- (void)_fireRegisterBlocksAfterOperation:(id)operation;
- (void)_handleMessage:(id)message connection:(id)connection usingBlock:(id)block;
- (void)_loadConnectionsInContext:(id)context;
- (void)_networkTypeChanged:(id)changed;
- (void)_openConnectionForEnvironment:(id)environment;
- (void)_postNotificationsAvailableForClient:(id)client inContext:(id)context;
- (void)_postTokenForEnvironment:(id)environment;
- (void)_postTokensInContext:(id)context force:(BOOL)force;
- (void)_reloadActiveEnvironmentInContext:(id)context;
- (void)_reloadDaemonClientInContext:(id)context;
- (void)_reloadPushStateInContext:(id)context;
- (void)_setShouldAggressivelySendToken:(BOOL)token;
- (void)_storeFrontChangedNotification:(id)notification;
- (void)_updateEnvironmentAfterTokenPost:(id)post;
- (void)_updatePushEnabledState;
- (void)_urlBagDidLoadNotification:(id)notification;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)observeXPCServer:(id)server;
- (void)popRemoteNotificationWithMessage:(id)message connection:(id)connection;
- (void)postClientNotificationWithUserInfo:(id)info;
- (void)postPushTokens;
- (void)registerNotificationClientWithMessage:(id)message connection:(id)connection;
- (void)registerTokenForEnvironmentName:(id)name accountIdentifier:(id)identifier completionBlock:(id)block;
- (void)showLocalNotificationWithMessage:(id)message connection:(id)connection;
- (void)unregisterNotificationClientWithMessage:(id)message connection:(id)connection;
@end

@implementation PushNotificationController

- (PushNotificationController)init
{
  v22.receiver = self;
  v22.super_class = PushNotificationController;
  v2 = [(PushNotificationController *)&v22 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    connections = v2->_connections;
    v2->_connections = v3;

    v5 = dispatch_queue_create("com.apple.itunesstored.PushNotificationController", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v7 = dispatch_queue_create("com.apple.itunesstored.PushNotificationController.notify", 0);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v7;

    v9 = v2->_notificationQueue;
    v10 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v9, v10);

    [(PushNotificationController *)v2 _resetLastRegisterAttemptTime];
    v11 = objc_alloc_init(ISOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v11;

    [(ISOperationQueue *)v2->_operationQueue setAdjustsMaxConcurrentOperationCount:0];
    [(ISOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    v13 = +[Daemon daemon];
    [v13 addKeepAliveOperationQueue:v2->_operationQueue];

    v14 = v2->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010E3F4;
    block[3] = &unk_100327110;
    v15 = v2;
    v21 = v15;
    dispatch_async(v14, block);
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v15 selector:"_networkTypeChanged:" name:ISNetworkTypeChangedNotification object:0];
    [v16 addObserver:v15 selector:"_urlBagDidLoadNotification:" name:ISURLBagDidLoadNotification object:0];
    [v16 addObserver:v15 selector:"_accountStoreChangedNotification:" name:SSAccountStoreChangedNotification object:0];
    [v16 addObserver:v15 selector:"_storeFrontChangedNotification:" name:SSDeviceStoreFrontChangedNotification object:0];
    objc_initWeak(&location, v15);
    v23 = @"UserAssignedDeviceName";
    [NSArray arrayWithObjects:&v23 count:1];
    objc_copyWeak(&v18, &location);
    v15->_deviceNameChangedToken = MGRegisterForUpdates();
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:ISNetworkTypeChangedNotification object:0];
  [v3 removeObserver:self name:ISURLBagDidLoadNotification object:0];
  [v3 removeObserver:self name:SSAccountStoreChangedNotification object:0];
  [v3 removeObserver:self name:SSDeviceStoreFrontChangedNotification object:0];
  MGCancelNotifications();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_connections;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [v9 setDelegate:0];
        [v9 removeFromRunLoop];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = +[Daemon daemon];
  [v10 removeKeepAliveOperationQueue:self->_operationQueue];

  [(NSMutableArray *)self->_tokenOperations makeObjectsPerformSelector:"setCompletionBlock:" withObject:0];
  v11.receiver = self;
  v11.super_class = PushNotificationController;
  [(PushNotificationController *)&v11 dealloc];
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010E730;
  block[3] = &unk_100327170;
  block[4] = self;
  if (qword_100383EB0 != -1)
  {
    dispatch_once(&qword_100383EB0, block);
  }

  v2 = qword_100383EA8;

  return v2;
}

+ (id)soundFilesDirectoryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = [[NSArray alloc] initWithObjects:{lastObject, @"com.apple.itunesstored", @"APNS_Sounds", 0}];
  v5 = [NSString pathWithComponents:v4];

  return v5;
}

- (void)postClientNotificationWithUserInfo:(id)info
{
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010E8BC;
  v7[3] = &unk_100327238;
  v8 = infoCopy;
  selfCopy = self;
  v6 = infoCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)postPushTokens
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010EE48;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)registerTokenForEnvironmentName:(id)name accountIdentifier:(id)identifier completionBlock:(id)block
{
  nameCopy = name;
  identifierCopy = identifier;
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10010F0DC;
  v15[3] = &unk_100328E58;
  v15[4] = self;
  v16 = nameCopy;
  v17 = identifierCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = identifierCopy;
  v14 = nameCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)observeXPCServer:(id)server
{
  serverCopy = server;
  [serverCopy addObserver:self selector:"popRemoteNotificationWithMessage:connection:" forMessage:79];
  [serverCopy addObserver:self selector:"registerNotificationClientWithMessage:connection:" forMessage:80];
  [serverCopy addObserver:self selector:"showLocalNotificationWithMessage:connection:" forMessage:78];
  [serverCopy addObserver:self selector:"unregisterNotificationClientWithMessage:connection:" forMessage:81];
}

- (void)popRemoteNotificationWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010F4D4;
  v7[3] = &unk_100328E80;
  selfCopy = self;
  messageCopy = message;
  connectionCopy = connection;
  v5 = connectionCopy;
  v6 = messageCopy;
  [(PushNotificationController *)selfCopy _handleMessage:v6 connection:v5 usingBlock:v7];
}

- (void)registerNotificationClientWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010F7E0;
  v7[3] = &unk_100328E80;
  selfCopy = self;
  messageCopy = message;
  connectionCopy = connection;
  v5 = connectionCopy;
  v6 = messageCopy;
  [(PushNotificationController *)selfCopy _handleMessage:v6 connection:v5 usingBlock:v7];
}

- (void)showLocalNotificationWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  if (SSXPCConnectionHasEntitlement())
  {
    objc_opt_class();
    v5 = SSXPCDictionaryCopyObjectWithClass();
    v6 = [[PushNotificationDisplayOperation alloc] initWithNotificationUserInfo:v5];
    [(ISOperationQueue *)self->_operationQueue addOperation:v6];
  }
}

- (void)unregisterNotificationClientWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010FB9C;
  v7[3] = &unk_100328E80;
  selfCopy = self;
  messageCopy = message;
  connectionCopy = connection;
  v5 = connectionCopy;
  v6 = messageCopy;
  [(PushNotificationController *)selfCopy _handleMessage:v6 connection:v5 usingBlock:v7];
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010FFD4;
  block[3] = &unk_1003281A0;
  block[4] = self;
  v12 = connectionCopy;
  v13 = tokenCopy;
  v9 = tokenCopy;
  v10 = connectionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  topicCopy = topic;
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011030C;
  block[3] = &unk_1003281A0;
  block[4] = self;
  v13 = topicCopy;
  v14 = infoCopy;
  v10 = infoCopy;
  v11 = topicCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_accountStoreChangedNotification:(id)notification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001109EC;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_deviceNameChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110AD4;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_networkTypeChanged:(id)changed
{
  v4 = +[ISNetworkObserver sharedInstance];
  networkType = [v4 networkType];

  if (networkType)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100110D2C;
    block[3] = &unk_100327110;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_storeFrontChangedNotification:(id)notification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110E34;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_urlBagDidLoadNotification:(id)notification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110F58;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  v4 = objc_alloc_init(PushNotificationSoundsSyncOperation);
  v5 = +[ISOperationQueue mainQueue];
  [v5 addOperation:v4];
}

- (void)_addNotificationWithUserInfo:(id)info client:(id)client context:(id)context
{
  contextCopy = context;
  clientCopy = client;
  infoCopy = info;
  v12 = [PushNotification entityFromContext:contextCopy];
  v10 = [[PushNotification alloc] initWithEntity:v12 insertIntoManagedObjectContext:contextCopy];

  [(PushNotification *)v10 setClient:clientCopy];
  v11 = [NSPropertyListSerialization dataWithPropertyList:infoCopy format:200 options:0 error:0];

  [(PushNotification *)v10 setUserInfo:v11];
}

+ (BOOL)_amsHandleNotification:(id)notification urlBag:(id)bag
{
  notificationCopy = notification;
  if (!bag)
  {
    bag = +[SSLogConfig sharedDaemonConfig];
    if (!bag)
    {
      bag = +[SSLogConfig sharedConfig];
    }

    shouldLog = [bag shouldLog];
    if ([bag shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [bag OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v14 = 138412290;
      selfCopy = self;
      v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Notification not handled by AMSPushHandler: Bag is nil", &v14, 12);

      if (!v12)
      {
LABEL_17:

        LOBYTE(bag) = 0;
        goto LABEL_18;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog();
    }

    goto LABEL_17;
  }

  v7 = [self _newPushHandlerWithURLBag:bag];
  LODWORD(bag) = [v7 shouldHandleNotification:notificationCopy];
  if (bag)
  {
    [v7 handleNotification:notificationCopy];
  }

LABEL_18:
  return bag;
}

- (id)_bag
{
  v2 = [ISLoadURLBagOperation alloc];
  v3 = [SSURLBagContext contextWithBagType:0];
  v4 = [v2 initWithBagContext:v3];

  [v4 run];
  uRLBag = [v4 URLBag];

  return uRLBag;
}

- (id)_clientForIdentifier:(id)identifier createIfNeeded:(BOOL)needed inContext:(id)context
{
  neededCopy = needed;
  identifierCopy = identifier;
  contextCopy = context;
  v9 = [PushNotificationClient entityFromContext:contextCopy];
  v10 = objc_alloc_init(NSFetchRequest);
  [v10 setEntity:v9];
  identifierCopy = [NSPredicate predicateWithFormat:@"clientIdentifier=%@", identifierCopy];
  [v10 setPredicate:identifierCopy];

  v37 = 0;
  v12 = [contextCopy executeFetchRequest:v10 error:&v37];
  v13 = v37;
  v14 = v13;
  if (!v12)
  {
    v31 = identifierCopy;
    v16 = v13;
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = shouldLog | 2;
    }

    else
    {
      v19 = shouldLog;
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v19;
    }

    else
    {
      v21 = v19 & 2;
    }

    if (v21)
    {
      v22 = objc_opt_class();
      v39 = 138412546;
      v40 = v22;
      v41 = 2112;
      v42 = v16;
      v23 = v22;
      v24 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not fetch clients: %@", &v39, 22);

      v14 = v16;
      identifierCopy = v31;
      if (!v24)
      {
LABEL_28:

        v15 = 0;
        goto LABEL_29;
      }

      oSLogObject = [NSString stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog();
    }

    else
    {
      v14 = v16;
      identifierCopy = v31;
    }

    goto LABEL_28;
  }

  if ([v12 count] == 1)
  {
    v15 = [v12 objectAtIndex:0];
  }

  else
  {
    v32 = v14;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = v12;
    v26 = [v25 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [contextCopy deleteObject:*(*(&v33 + 1) + 8 * i)];
        }

        v27 = [v25 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v27);
    }

    if (neededCopy)
    {
      v15 = [[PushNotificationClient alloc] initWithEntity:v9 insertIntoManagedObjectContext:contextCopy];
      [(PushNotificationClient *)v15 setClientIdentifier:identifierCopy];
    }

    else
    {
      v15 = 0;
    }

    v14 = v32;
    sub_1000CE00C(contextCopy);
  }

LABEL_29:

  return v15;
}

- (void)_closeEnvironment:(id)environment inContext:(id)context
{
  environmentCopy = environment;
  contextCopy = context;
  environmentName = [environmentCopy environmentName];
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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v11 = v11;
  }

  else
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v25 = 138412546;
    v26 = objc_opt_class();
    v27 = 2112;
    v28 = environmentCopy;
    v13 = v26;
    v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Deleting environment: %@", &v25, 22);

    if (!v14)
    {
      goto LABEL_13;
    }

    oSLogObject = [NSString stringWithCString:v14 encoding:4];
    free(v14);
    v23 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  [contextCopy deleteObject:environmentCopy];

  v15 = [(NSMutableDictionary *)self->_connections objectForKey:environmentName];
  if (v15)
  {
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
      v20 = objc_opt_class();
      v25 = 138412546;
      v26 = v20;
      v27 = 2112;
      v28 = environmentName;
      v21 = v20;
      LODWORD(v24) = 22;
      v22 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Destroying connection for %@", &v25, v24);

      if (!v22)
      {
LABEL_26:

        [v15 setDelegate:0];
        [v15 setEnabledTopics:0];
        [v15 removeFromRunLoop];
        [(NSMutableDictionary *)self->_connections removeObjectForKey:environmentName];
        goto LABEL_27;
      }

      oSLogObject2 = [NSString stringWithCString:v22 encoding:4];
      free(v22);
      SSFileLog();
    }

    goto LABEL_26;
  }

LABEL_27:
}

- (id)_enabledTopics
{
  if ([(PushNotificationController *)self _isPushEnabled])
  {
    v2 = [NSArray arrayWithObject:@"com.apple.itunesstored"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_environmentForName:(id)name createIfNeeded:(BOOL)needed inContext:(id)context
{
  neededCopy = needed;
  nameCopy = name;
  contextCopy = context;
  v9 = [PushNotificationEnvironment entityFromContext:contextCopy];
  v10 = objc_alloc_init(NSFetchRequest);
  [v10 setEntity:v9];
  nameCopy = [NSPredicate predicateWithFormat:@"environmentName = %@", nameCopy];
  [v10 setPredicate:nameCopy];

  v37 = 0;
  v12 = [contextCopy executeFetchRequest:v10 error:&v37];
  v13 = v37;
  v14 = v13;
  if (!v12)
  {
    v31 = v13;
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = shouldLog | 2;
    }

    else
    {
      v18 = shouldLog;
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v39 = 138412546;
      v40 = v21;
      v41 = 2112;
      v42 = v31;
      v22 = v21;
      v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not fetch environments: %@", &v39, 22);

      if (!v23)
      {
LABEL_16:

        v15 = 0;
        v14 = v31;
        goto LABEL_28;
      }

      oSLogObject = [NSString stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog();
    }

    goto LABEL_16;
  }

  if ([v12 count] == 1)
  {
    v15 = [v12 objectAtIndex:0];
  }

  else
  {
    v32 = v14;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = v12;
    v25 = [v24 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v34;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [contextCopy deleteObject:*(*(&v33 + 1) + 8 * i)];
        }

        v26 = [v24 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v26);
    }

    if (neededCopy)
    {
      v15 = [[PushNotificationEnvironment alloc] initWithEntity:v9 insertIntoManagedObjectContext:contextCopy];
      [(PushNotificationEnvironment *)v15 setEnvironmentName:nameCopy];
      v29 = [NSNumber numberWithInteger:0];
      [(PushNotificationEnvironment *)v15 setLastAccountIdentifier:v29];
    }

    else
    {
      v15 = 0;
    }

    v14 = v32;
    sub_1000CE00C(contextCopy);
  }

LABEL_28:

  return v15;
}

- (id)_environmentNameForConnection:(id)connection
{
  connectionCopy = connection;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_connections;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_connections objectForKey:v10, v14];

        if (v11 == connectionCopy)
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)_fireRegisterBlocksAfterOperation:(id)operation
{
  operationCopy = operation;
  v5 = objc_alloc_init(NSMutableArray);
  authenticationContext = [operationCopy authenticationContext];
  requiredUniqueIdentifier = [authenticationContext requiredUniqueIdentifier];

  v25 = operationCopy;
  environmentName = [operationCopy environmentName];
  v9 = [(NSMutableArray *)self->_registerBlocks count];
  if (v9 >= 1)
  {
    v10 = v9 + 1;
    do
    {
      v11 = [(NSMutableArray *)self->_registerBlocks objectAtIndex:v10 - 2];
      accountIdentifier = [v11 accountIdentifier];
      if ([accountIdentifier isEqualToNumber:requiredUniqueIdentifier])
      {
        environmentName2 = [v11 environmentName];
        v14 = [environmentName2 isEqualToString:environmentName];

        if (v14)
        {
          block = [v11 block];
          [v5 insertObject:block atIndex:0];

          [(NSMutableArray *)self->_registerBlocks removeObjectAtIndex:v10 - 2];
        }
      }

      else
      {
      }

      --v10;
    }

    while (v10 > 1);
  }

  if ([v5 count])
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = shouldLog | 2;
    }

    else
    {
      v18 = shouldLog;
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v22 = v21;
      v28 = 138412546;
      v29 = v21;
      v30 = 2048;
      v31 = [v5 count];
      v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Firing %ld register blocks", &v28, 22);

      if (!v23)
      {
LABEL_21:

        notificationQueue = self->_notificationQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10011221C;
        block[3] = &unk_100327110;
        v27 = v5;
        dispatch_async(notificationQueue, block);

        goto LABEL_22;
      }

      oSLogObject = [NSString stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog();
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (void)_handleMessage:(id)message connection:(id)connection usingBlock:(id)block
{
  messageCopy = message;
  connectionCopy = connection;
  blockCopy = block;
  v11 = [[XPCClient alloc] initWithInputConnection:connectionCopy];
  if ([(XPCClient *)v11 hasEntitlements])
  {
    v12 = +[Daemon daemon];
    [v12 takeKeepAliveAssertion:@"com.apple.itunesstore.PushNotificationController"];

    dispatchQueue = self->_dispatchQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100112450;
    v15[3] = &unk_100328EA8;
    v17 = blockCopy;
    v16 = v11;
    dispatch_async(dispatchQueue, v15);
  }

  else
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    xpc_connection_send_message(connectionCopy, reply);
  }
}

- (BOOL)_isValidEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([environmentCopy isEqualToString:APSEnvironmentProduction])
    {
      v4 = 1;
    }

    else
    {
      v4 = [environmentCopy isEqualToString:APSEnvironmentDevelopment];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_loadConnectionsInContext:(id)context
{
  contextCopy = context;
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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    *v54 = 138412290;
    *&v54[4] = objc_opt_class();
    v9 = *&v54[4];
    v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Reloading APS connections", v54, 12);

    if (!v10)
    {
      goto LABEL_13;
    }

    oSLogObject = [NSString stringWithCString:v10 encoding:4];
    free(v10);
    v44 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  v11 = objc_alloc_init(NSFetchRequest);
  v12 = [PushNotificationEnvironment entityFromContext:contextCopy];
  [v11 setEntity:v12];

  v52 = 0;
  v13 = [contextCopy executeFetchRequest:v11 error:&v52];
  v14 = v52;
  v15 = +[SSLogConfig sharedDaemonConfig];
  v16 = v15;
  v47 = v14;
  if (!v13)
  {
    if (!v15)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      LODWORD(v30) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v30) = shouldLog2;
    }

    oSLogObject2 = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v30;
    }

    else
    {
      v30 &= 2u;
    }

    if (v30)
    {
      v32 = objc_opt_class();
      *v54 = 138412546;
      *&v54[4] = v32;
      *&v54[12] = 2112;
      *&v54[14] = v14;
      v33 = v32;
      LODWORD(v46) = 22;
      v34 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not fetch environment entities: %@", v54, v46);

      if (!v34)
      {
LABEL_46:

        goto LABEL_47;
      }

      oSLogObject2 = [NSString stringWithCString:v34 encoding:4];
      free(v34);
      v45 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_46;
  }

  if (!v15)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    LODWORD(v18) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v18) = shouldLog3;
  }

  oSLogObject3 = [v16 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v18 = v18;
  }

  else
  {
    v18 &= 2u;
  }

  if (!v18)
  {
    goto LABEL_25;
  }

  v20 = objc_opt_class();
  v21 = v20;
  v22 = [v13 count];
  *v54 = 138412546;
  *&v54[4] = v20;
  *&v54[12] = 2048;
  *&v54[14] = v22;
  LODWORD(v46) = 22;
  v23 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Reloading APS connections for %lu environments", v54, v46);

  if (v23)
  {
    oSLogObject3 = [NSString stringWithCString:v23 encoding:4];
    free(v23);
    v45 = oSLogObject3;
    SSFileLog();
LABEL_25:
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v24 = v13;
  v25 = [v24 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v49;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(PushNotificationController *)self _openConnectionForEnvironment:*(*(&v48 + 1) + 8 * i), v45];
      }

      v26 = [v24 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v26);
  }

  sub_1000CE00C(contextCopy);
LABEL_47:
  *v54 = APSEnvironmentProduction;
  *&v54[8] = APSEnvironmentDevelopment;
  v35 = v54;
  v36 = 1;
  do
  {
    v37 = v36;
    v38 = *v35;
    v39 = [(NSMutableDictionary *)self->_connections objectForKey:*v35, v45];

    if (!v39)
    {
      v40 = [APSConnection alloc];
      v41 = [(PushNotificationController *)self _portNameForEnvironmentName:v38];
      v42 = [v40 initWithEnvironmentName:v38 namedDelegatePort:v41];

      [v42 setEnabledTopics:0];
    }

    v36 = 0;
    v35 = &v54[8];
  }

  while ((v37 & 1) != 0);
  for (j = 8; j != -8; j -= 8)
  {
  }
}

- (id)_newAPSConnectionWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = [APSConnection alloc];
  v6 = [(PushNotificationController *)self _portNameForEnvironmentName:environmentCopy];
  v7 = [v5 initWithEnvironmentName:environmentCopy namedDelegatePort:v6];

  [v7 setDelegate:self];
  _enabledTopics = [(PushNotificationController *)self _enabledTopics];
  [v7 setEnabledTopics:_enabledTopics];

  v9 = +[NSRunLoop mainRunLoop];
  [v7 scheduleInRunLoop:v9];

  return v7;
}

- (id)_newPostTokenOperationForEnvironment:(id)environment account:(id)account
{
  accountCopy = account;
  environmentCopy = environment;
  v7 = [PostPushNotificationTokenOperation alloc];
  environmentName = [environmentCopy environmentName];
  tokenData = [environmentCopy tokenData];

  v10 = [(PostPushNotificationTokenOperation *)v7 initWithEnvironmentName:environmentName tokenData:tokenData];
  v11 = [[SSAuthenticationContext alloc] initWithAccount:accountCopy];

  [(PostPushNotificationTokenOperation *)v10 setAuthenticationContext:v11];
  return v10;
}

+ (id)_newPushHandlerWithURLBag:(id)bag
{
  v10 = @"4";
  v11 = @"22";
  v12 = @"25";
  bagCopy = bag;
  v4 = [NSArray arrayWithObjects:&v10 count:3];
  v5 = [NSSet setWithArray:v4, v10, v11, v12];

  v6 = [[AMSPushConfiguration alloc] initWithEnabledActionTypes:v5];
  [v6 setUserNotificationExtensionId:@"mst-notification-category"];
  v7 = [[ISAMSBagShim alloc] initWithURLBag:bagCopy];

  v8 = [[AMSPushHandler alloc] initWithConfiguration:v6 bag:v7];
  return v8;
}

- (int64_t)_numberOfClientsInContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc_init(NSFetchRequest);
  v5 = [PushNotificationClient entityFromContext:contextCopy];
  [v4 setEntity:v5];

  v6 = [contextCopy countForFetchRequest:v4 error:0];
  return v6;
}

- (void)_openConnectionForEnvironment:(id)environment
{
  environmentCopy = environment;
  environmentName = [environmentCopy environmentName];
  if (![(PushNotificationController *)self _isValidEnvironment:environmentName])
  {
    goto LABEL_19;
  }

  v6 = [(NSMutableDictionary *)self->_connections objectForKey:environmentName];
  if (!v6)
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
      v19 = 138412546;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = environmentCopy;
      v11 = v20;
      v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Creating connection for environment: %@", &v19, 22);

      if (!v12)
      {
LABEL_15:

        v6 = [(PushNotificationController *)self _newAPSConnectionWithEnvironment:environmentName];
        [(NSMutableDictionary *)self->_connections setObject:v6 forKey:environmentName];
        goto LABEL_16;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4];
      free(v12);
      v18 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
  publicToken = [v6 publicToken];
  tokenData = [environmentCopy tokenData];
  v15 = [publicToken isEqual:tokenData];

  if ((v15 & 1) == 0)
  {
    v16 = [NSNumber numberWithInteger:0];
    [environmentCopy setLastAccountIdentifier:v16];

    publicToken2 = [v6 publicToken];
    [environmentCopy setTokenData:publicToken2];
  }

LABEL_19:
}

- (id)_portNameForEnvironmentName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:APSEnvironmentProduction])
  {
    v4 = @"com.apple.itunesstored.aps";
  }

  else if ([nameCopy isEqualToString:APSEnvironmentDevelopment])
  {
    v4 = @"com.apple.itunesstored.aps.dev";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_postNotificationsAvailableForClient:(id)client inContext:(id)context
{
  clientCopy = client;
  contextCopy = context;
  v7 = objc_alloc_init(NSFetchRequest);
  v8 = [PushNotification entityFromContext:contextCopy];
  [v7 setEntity:v8];

  clientCopy = [NSPredicate predicateWithFormat:@"client=%@", clientCopy];
  [v7 setPredicate:clientCopy];

  v10 = [contextCopy countForFetchRequest:v7 error:0];
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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v13 = v13;
  }

  else
  {
    v13 &= 2u;
  }

  if (v13)
  {
    v15 = objc_opt_class();
    v16 = v15;
    clientIdentifier = [clientCopy clientIdentifier];
    v19 = 138412802;
    v20 = v15;
    v21 = 2048;
    v22 = v10;
    v23 = 2112;
    v24 = clientIdentifier;
    v18 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Client has %ld pending notifications: %@", &v19, 32);

    if (!v18)
    {
      goto LABEL_13;
    }

    oSLogObject = [NSString stringWithCString:v18 encoding:4];
    free(v18);
    SSFileLog();
  }

LABEL_13:
  if (v10 >= 1)
  {
    notify_post(kSSNotificationReceivedPushNotification);
  }
}

- (void)_postTokenForEnvironment:(id)environment
{
  environmentCopy = environment;
  if ([(PushNotificationController *)self _isPushEnabled])
  {
    [(PushNotificationController *)self _setShouldAggressivelySendToken:1];
    environmentName = [environmentCopy environmentName];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = self->_tokenOperations;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v7)
    {
      v8 = *v32;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        environmentName2 = [v10 environmentName];
        v12 = [environmentName2 isEqualToString:environmentName];

        if (v12)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v31 objects:v38 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v21 = v10;

      if (v21)
      {
        goto LABEL_26;
      }
    }

    else
    {
LABEL_10:
    }

    v22 = +[SSAccountStore defaultStore];
    activeAccount = [v22 activeAccount];
    v21 = [(PushNotificationController *)self _newPostTokenOperationForEnvironment:environmentCopy account:activeAccount];

    objc_initWeak(location, v21);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100113794;
    v29[3] = &unk_100328EF8;
    v29[4] = self;
    objc_copyWeak(&v30, location);
    [v21 setCompletionBlock:v29];
    tokenOperations = self->_tokenOperations;
    if (!tokenOperations)
    {
      v25 = objc_alloc_init(NSMutableArray);
      v27 = self->_tokenOperations;
      p_tokenOperations = &self->_tokenOperations;
      *p_tokenOperations = v25;

      tokenOperations = *p_tokenOperations;
    }

    [(NSMutableArray *)tokenOperations addObject:v21];
    v28 = +[ISOperationQueue mainQueue];
    [v28 addOperation:v21];

    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
LABEL_26:
  }

  else
  {
    environmentName = +[SSLogConfig sharedDaemonConfig];
    if (!environmentName)
    {
      environmentName = +[SSLogConfig sharedConfig];
    }

    shouldLog = [environmentName shouldLog];
    if ([environmentName shouldLogToDisk])
    {
      LODWORD(v14) = shouldLog | 2;
    }

    else
    {
      LODWORD(v14) = shouldLog;
    }

    oSLogObject = [environmentName OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      pushEnabledState = self->_pushEnabledState;
      *location = 138543618;
      *&location[4] = v16;
      v36 = 2048;
      v37 = pushEnabledState;
      v18 = v16;
      v19 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Unable to post token because push is not enabled (%ld)", location, 22);

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
  }
}

- (void)_postTokensInContext:(id)context force:(BOOL)force
{
  forceCopy = force;
  contextCopy = context;
  if ([(PushNotificationController *)self _shouldAggressivelySendToken])
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v61 = 138543362;
      v62 = objc_opt_class();
      v12 = v62;
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Forcing the token request due to stored value", &v61, 12);

      if (!v13)
      {
LABEL_14:

        forceCopy = 1;
        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v13 encoding:4];
      free(v13);
      v50 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  if ([(PushNotificationController *)self _isPushEnabled])
  {
    v14 = +[SSAccountStore defaultStore];
    activeAccount = [v14 activeAccount];

    oSLogObject4 = objc_alloc_init(NSFetchRequest);
    v17 = [PushNotificationEnvironment entityFromContext:contextCopy];
    [oSLogObject4 setEntity:v17];

    if (!forceCopy)
    {
      uniqueIdentifier = [activeAccount uniqueIdentifier];
      v19 = [NSPredicate predicateWithFormat:@"(tokenData != nil) AND (lastAccountIdentifier != %@)", uniqueIdentifier];
      [oSLogObject4 setPredicate:v19];
    }

    v59 = 0;
    v20 = [contextCopy executeFetchRequest:oSLogObject4 error:&v59];
    v21 = v59;
    v22 = +[SSLogConfig sharedDaemonConfig];
    v23 = v22;
    if (v20)
    {
      v54 = contextCopy;
      if (!v22)
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
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v27 = v25;
      }

      else
      {
        v27 = v25 & 2;
      }

      if (v27)
      {
        v28 = v21;
        v29 = objc_opt_class();
        v53 = v29;
        v30 = [v20 count];
        v61 = 138543874;
        v62 = v29;
        v21 = v28;
        v63 = 2048;
        v64 = v30;
        v65 = 1024;
        v66 = forceCopy;
        LODWORD(v52) = 28;
        v31 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%{public}@: Posting %lu environment tokens. Forced: %d", &v61, v52);

        contextCopy = v54;
        if (!v31)
        {
          goto LABEL_54;
        }

        oSLogObject2 = [NSString stringWithCString:v31 encoding:4];
        free(v31);
        v51 = oSLogObject2;
        SSFileLog();
      }

      else
      {
        contextCopy = v54;
      }

LABEL_54:
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v23 = v20;
      v45 = [v23 countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = v21;
        v48 = *v56;
        do
        {
          for (i = 0; i != v46; i = i + 1)
          {
            if (*v56 != v48)
            {
              objc_enumerationMutation(v23);
            }

            [(PushNotificationController *)self _postTokenForEnvironment:*(*(&v55 + 1) + 8 * i), v51];
          }

          v46 = [v23 countByEnumeratingWithState:&v55 objects:v60 count:16];
        }

        while (v46);
        v21 = v47;
      }

      goto LABEL_62;
    }

    if (!v22)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v38 = shouldLog3 | 2;
    }

    else
    {
      v38 = shouldLog3;
    }

    oSLogObject3 = [v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v38;
    }

    else
    {
      v40 = v38 & 2;
    }

    if (v40)
    {
      v41 = contextCopy;
      v42 = objc_opt_class();
      v61 = 138412546;
      v62 = v42;
      v63 = 2112;
      v64 = v21;
      v43 = v42;
      LODWORD(v52) = 22;
      v44 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not fetch environments to post: %@", &v61, v52);

      if (!v44)
      {
        contextCopy = v41;
        goto LABEL_62;
      }

      oSLogObject3 = [NSString stringWithCString:v44 encoding:4];
      free(v44);
      SSFileLog();
      contextCopy = v41;
    }

LABEL_62:
    goto LABEL_63;
  }

  activeAccount = +[SSLogConfig sharedDaemonConfig];
  if (!activeAccount)
  {
    activeAccount = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [activeAccount shouldLog];
  if ([activeAccount shouldLogToDisk])
  {
    shouldLog4 |= 2u;
  }

  oSLogObject4 = [activeAccount OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
  {
    v33 = shouldLog4;
  }

  else
  {
    v33 = shouldLog4 & 2;
  }

  if (!v33)
  {
    goto LABEL_63;
  }

  v34 = objc_opt_class();
  v61 = 138543362;
  v62 = v34;
  v35 = v34;
  LODWORD(v52) = 12;
  v36 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &_mh_execute_header, oSLogObject4, 16, "%{public}@: Unable to post tokens in context. Push not enabled.", &v61, v52);

  if (v36)
  {
    oSLogObject4 = [NSString stringWithCString:v36 encoding:4];
    free(v36);
    SSFileLog();
LABEL_63:
  }
}

- (void)_reloadActiveEnvironmentInContext:(id)context
{
  contextCopy = context;
  pushEnabledState = self->_pushEnabledState;
  if (pushEnabledState != -1)
  {
    if (pushEnabledState == 1)
    {
      _bag = [(PushNotificationController *)self _bag];
      v7 = [_bag valueForKey:@"push-notifications"];
      v8 = [v7 objectForKey:@"environment"];
      if (![(PushNotificationController *)self _isValidEnvironment:v8])
      {
        v9 = APSEnvironmentProduction;

        v8 = v9;
      }
    }

    else
    {
      v8 = 0;
    }

    if (![(PushNotificationController *)self _numberOfClientsInContext:contextCopy])
    {

      v8 = 0;
    }

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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = objc_opt_class();
      v49 = 138412546;
      v50 = v14;
      v51 = 2112;
      v52 = v8;
      v15 = v14;
      v16 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Environment is now %@", &v49, 22);

      if (!v16)
      {
        goto LABEL_21;
      }

      oSLogObject = [NSString stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog();
    }

LABEL_21:
    v17 = objc_alloc_init(NSFetchRequest);
    v18 = [PushNotificationEnvironment entityFromContext:contextCopy];
    [v17 setEntity:v18];

    v19 = @"nil";
    if (v8)
    {
      v19 = v8;
    }

    v20 = [NSPredicate predicateWithFormat:@"environmentName != %@", v19];
    [v17 setPredicate:v20];

    v47 = 0;
    v21 = [contextCopy executeFetchRequest:v17 error:&v47];
    v22 = v47;
    if (v21)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v23 = v21;
      v24 = [v23 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v44;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v44 != v26)
            {
              objc_enumerationMutation(v23);
            }

            [(PushNotificationController *)self _closeEnvironment:*(*(&v43 + 1) + 8 * i) inContext:contextCopy];
          }

          v25 = [v23 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v25);
      }

LABEL_44:

      if (v8)
      {
        v34 = [(PushNotificationController *)self _environmentForName:v8 createIfNeeded:1 inContext:contextCopy];
        [(PushNotificationController *)self _openConnectionForEnvironment:v34];
        [(PushNotificationController *)self _postTokensIfNecessaryInContext:contextCopy];
LABEL_58:

        goto LABEL_59;
      }

      v34 = +[SSLogConfig sharedDaemonConfig];
      if (!v34)
      {
        v34 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v34 shouldLog];
      if ([v34 shouldLogToDisk])
      {
        LODWORD(v36) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v36) = shouldLog2;
      }

      oSLogObject2 = [v34 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v36 = v36;
      }

      else
      {
        v36 &= 2u;
      }

      if (v36)
      {
        v38 = objc_opt_class();
        v49 = 138543362;
        v50 = v38;
        v39 = v38;
        LODWORD(v42) = 12;
        v40 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%{public}@: Unable to add environment -- environment is nil", &v49, v42);

        if (!v40)
        {
          goto LABEL_58;
        }

        oSLogObject2 = [NSString stringWithCString:v40 encoding:4];
        free(v40);
        SSFileLog();
      }

      goto LABEL_58;
    }

    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      LODWORD(v29) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v29) = shouldLog3;
    }

    oSLogObject3 = [v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
      v49 = 138412546;
      v50 = v31;
      v51 = 2112;
      v52 = v22;
      v32 = v31;
      LODWORD(v42) = 22;
      v33 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not fetch environments: %@", &v49, v42);

      if (!v33)
      {
        goto LABEL_44;
      }

      oSLogObject3 = [NSString stringWithCString:v33 encoding:4];
      free(v33);
      v41 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_44;
  }

LABEL_59:
}

- (void)_reloadDaemonClientInContext:(id)context
{
  contextCopy = context;
  _bag = [(PushNotificationController *)self _bag];
  v6 = [_bag valueForKey:@"automatic-downloads2"];
  if (!v6)
  {
    v6 = [_bag valueForKey:@"automatic-downloads"];
  }

  v7 = [v6 objectForKey:@"downloads-url"];

  if (!v7)
  {
    v15 = [(PushNotificationController *)self _clientForIdentifier:@"com.apple.itunesstored" createIfNeeded:0 inContext:contextCopy];
    if (!v15)
    {
LABEL_31:

      goto LABEL_32;
    }

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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v22 = 138412290;
      v23 = objc_opt_class();
      v20 = v23;
      v21 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Removing APS client for itunesstored", &v22, 12);

      if (!v21)
      {
LABEL_30:

        [contextCopy deleteObject:v15];
        goto LABEL_31;
      }

      oSLogObject = [NSString stringWithCString:v21 encoding:4];
      free(v21);
      SSFileLog();
    }

    goto LABEL_30;
  }

  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    LODWORD(v10) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v10) = shouldLog2;
  }

  oSLogObject2 = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v22 = 138412290;
  v23 = objc_opt_class();
  v12 = v23;
  v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Adding APS client for itunesstored", &v22, 12);

  if (v13)
  {
    oSLogObject2 = [NSString stringWithCString:v13 encoding:4];
    free(v13);
    SSFileLog();
LABEL_15:
  }

  v14 = [(PushNotificationController *)self _clientForIdentifier:@"com.apple.itunesstored" createIfNeeded:1 inContext:contextCopy];
LABEL_32:
}

- (void)_reloadPushStateInContext:(id)context
{
  contextCopy = context;
  _isPushEnabled = [(PushNotificationController *)self _isPushEnabled];
  [(PushNotificationController *)self _updatePushEnabledState];
  [(PushNotificationController *)self _reloadDaemonClientInContext:contextCopy];
  [(PushNotificationController *)self _reloadActiveEnvironmentInContext:contextCopy];
  _isPushEnabled2 = [(PushNotificationController *)self _isPushEnabled];
  if (_isPushEnabled == _isPushEnabled2)
  {
    goto LABEL_32;
  }

  v7 = _isPushEnabled2;
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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v12 = objc_opt_class();
  pushEnabledState = self->_pushEnabledState;
  v43 = 138412546;
  v44 = v12;
  v45 = 2048;
  v46 = pushEnabledState;
  v14 = v12;
  v15 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Push enabledness changed: %ld", &v43, 22);

  if (v15)
  {
    oSLogObject = [NSString stringWithCString:v15 encoding:4];
    free(v15);
    v32 = oSLogObject;
    SSFileLog();
LABEL_13:
  }

  _enabledTopics = [(PushNotificationController *)self _enabledTopics];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = self->_connections;
  v18 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [(NSMutableDictionary *)self->_connections objectForKey:*(*(&v37 + 1) + 8 * i), v32];
        [v22 setEnabledTopics:_enabledTopics];
      }

      v19 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v19);
  }

  if (v7)
  {
    [(PushNotificationController *)self _postTokensIfNecessaryInContext:contextCopy];
  }

  else
  {
    v23 = objc_alloc_init(NSFetchRequest);
    v24 = [PushNotificationEnvironment entityFromContext:contextCopy];
    [v23 setEntity:v24];

    v25 = [contextCopy executeFetchRequest:v23 error:0];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v33 + 1) + 8 * j);
          v31 = [NSNumber numberWithInteger:0, v32];
          [v30 setLastAccountIdentifier:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v27);
    }
  }

LABEL_32:
}

- (void)_setShouldAggressivelySendToken:(BOOL)token
{
  v3 = &kCFBooleanTrue;
  if (!token)
  {
    v3 = &kCFBooleanFalse;
  }

  v4 = kSSUserDefaultsIdentifier;
  CFPreferencesSetAppValue(@"ShouldForcePushTokenRequest", *v3, kSSUserDefaultsIdentifier);

  CFPreferencesAppSynchronize(v4);
}

- (void)_updateEnvironmentAfterTokenPost:(id)post
{
  postCopy = post;
  v5 = +[NSThread beginPrivateManagedContextSession];
  environmentName = [postCopy environmentName];
  v7 = [(PushNotificationController *)self _environmentForName:environmentName createIfNeeded:0 inContext:v5];

  if (v7)
  {
    authenticationContext = [postCopy authenticationContext];
    requiredUniqueIdentifier = [authenticationContext requiredUniqueIdentifier];

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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = objc_opt_class();
      v15 = v14;
      environmentName2 = [postCopy environmentName];
      v19 = 138412802;
      v20 = v14;
      v21 = 2112;
      v22 = environmentName2;
      v23 = 2112;
      v24 = requiredUniqueIdentifier;
      v17 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Posted token for %@ for account %@", &v19, 32);

      if (!v17)
      {
LABEL_14:

        [v7 setLastAccountIdentifier:requiredUniqueIdentifier];
        sub_1000CE00C(v5);

        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v17 encoding:4];
      free(v17);
      v18 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  +[NSThread endPrivateManagedContextSession];
}

- (void)_updatePushEnabledState
{
  _bag = [(PushNotificationController *)self _bag];
  v4 = +[SSAccountStore defaultStore];
  activeAccount = [v4 activeAccount];

  if (activeAccount)
  {
    if (_bag)
    {
      v6 = [_bag valueForKey:@"push-notifications"];

      if (v6)
      {
        self->_pushEnabledState = 1;
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

        if (!v9)
        {
          goto LABEL_46;
        }
      }

      else
      {
        self->_pushEnabledState = 0;
        v7 = +[SSLogConfig sharedDaemonConfig];
        if (!v7)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v7 shouldLog];
        if ([v7 shouldLogToDisk])
        {
          LODWORD(v9) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v9) = shouldLog2;
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

        if (!v9)
        {
          goto LABEL_46;
        }
      }

      v22 = objc_opt_class();
      pushEnabledState = self->_pushEnabledState;
      *v25 = 138543618;
      *&v25[4] = v22;
      *&v25[12] = 2048;
      *&v25[14] = pushEnabledState;
      v15 = v22;
      v16 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%{public}@: Updated push state to %ld", v25, 22, *v25, *&v25[8]);
    }

    else
    {
      self->_pushEnabledState = -1;
      v7 = +[SSLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        LODWORD(v18) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v18) = shouldLog3;
      }

      oSLogObject = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v18 = v18;
      }

      else
      {
        v18 &= 2u;
      }

      if (!v18)
      {
        goto LABEL_46;
      }

      v19 = objc_opt_class();
      v20 = self->_pushEnabledState;
      *v25 = 138543618;
      *&v25[4] = v19;
      *&v25[12] = 2048;
      *&v25[14] = v20;
      v15 = v19;
      v16 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%{public}@: Updated push state to %ld -- no production bag", v25, 22, *v25, *&v25[8]);
    }
  }

  else
  {
    self->_pushEnabledState = 0;
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v12) = shouldLog4 | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog4;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (!v12)
    {
      goto LABEL_46;
    }

    v13 = objc_opt_class();
    v14 = self->_pushEnabledState;
    *v25 = 138543618;
    *&v25[4] = v13;
    *&v25[12] = 2048;
    *&v25[14] = v14;
    v15 = v13;
    v16 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%{public}@: Updated push state to %ld -- no active account", v25, 22, *v25, *&v25[8]);
  }

  v24 = v16;

  if (v24)
  {
    oSLogObject = [NSString stringWithCString:v24 encoding:4];
    free(v24);
    SSFileLog();
LABEL_46:
  }
}

@end