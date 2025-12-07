@interface DDMain
+ (id)sharedInstance;
- (BOOL)isValidMessage:(id)message;
- (DDMain)init;
- (void)addConnection:(id)connection;
- (void)availableDestinationsWithCompletion:(id)completion;
- (void)receiveMessage:(id)message data:(id)data fromDestination:(id)destination expectsResponse:(BOOL)response response:(id)a7;
- (void)removeConnection:(id)connection;
- (void)sendMessage:(id)message data:(id)data toDestination:(id)destination forceLocalDelivery:(BOOL)delivery expectsResponse:(BOOL)response response:(id)a8;
@end

@implementation DDMain

- (DDMain)init
{
  v10.receiver = self;
  v10.super_class = DDMain;
  v2 = [(DDMain *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    connections = v2->_connections;
    v2->_connections = v3;

    v5 = objc_opt_new();
    pendingTasks = v2->_pendingTasks;
    v2->_pendingTasks = v5;

    v7 = [[DDIDSService alloc] initWithServiceType:0];
    pairedService = v2->_pairedService;
    v2->_pairedService = v7;

    [(DDIDSService *)v2->_pairedService setReceiver:v2];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1000263C8 != -1)
  {
    sub_10000DC84();
  }

  v3 = qword_1000263C0;

  return v3;
}

- (void)addConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(DDMain *)self connections];
  objc_sync_enter(connections);
  connections2 = [(DDMain *)self connections];
  [connections2 addObject:connectionCopy];

  objc_sync_exit(connections);
  pendingTasks = [(DDMain *)self pendingTasks];
  objc_sync_enter(pendingTasks);
  pendingTasks2 = [(DDMain *)self pendingTasks];
  v9 = [pendingTasks2 count];

  if (v9)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      pendingTasks3 = [(DDMain *)self pendingTasks];
      *buf = 134217984;
      v23 = [pendingTasks3 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[DDMain] Executing pending tasks, count: %lu", buf, 0xCu);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    pendingTasks4 = [(DDMain *)self pendingTasks];
    v13 = [pendingTasks4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(pendingTasks4);
          }

          (*(*(*(&v17 + 1) + 8 * v15) + 16))();
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [pendingTasks4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    pendingTasks5 = [(DDMain *)self pendingTasks];
    [pendingTasks5 removeAllObjects];
  }

  objc_sync_exit(pendingTasks);
}

- (void)removeConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(DDMain *)self connections];
  objc_sync_enter(connections);
  connections2 = [(DDMain *)self connections];
  [connections2 removeObject:connectionCopy];

  localReceiver = [(DDMain *)self localReceiver];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(DDMain *)self setLocalReceiver:0];
  }

  objc_sync_exit(connections);
}

- (void)availableDestinationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_new();
  pairedService = [(DDMain *)self pairedService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005660;
  v9[3] = &unk_10001C8A0;
  v10 = v5;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = v5;
  [pairedService availableDestinationsWithCompletion:v9];
}

- (void)sendMessage:(id)message data:(id)data toDestination:(id)destination forceLocalDelivery:(BOOL)delivery expectsResponse:(BOOL)response response:(id)a8
{
  responseCopy = response;
  deliveryCopy = delivery;
  messageCopy = message;
  dataCopy = data;
  destinationCopy = destination;
  v16 = a8;
  pairedService = [(DDMain *)self pairedService];
  v18 = [pairedService hasDestination:destinationCopy];

  if (v18)
  {
    pairedService2 = [(DDMain *)self pairedService];
    [pairedService2 sendMessage:messageCopy data:dataCopy toDestination:destinationCopy forceLocalDelivery:deliveryCopy expectsResponse:responseCopy response:v16];
  }

  else
  {
    (*(v16 + 2))(v16, 0, 0, 0, 0);
  }
}

- (void)receiveMessage:(id)message data:(id)data fromDestination:(id)destination expectsResponse:(BOOL)response response:(id)a7
{
  responseCopy = response;
  messageCopy = message;
  dataCopy = data;
  destinationCopy = destination;
  v15 = a7;
  if ([(DDMain *)self isValidMessage:messageCopy])
  {
    connections = [(DDMain *)self connections];
    objc_sync_enter(connections);
    connections2 = [(DDMain *)self connections];
    objc_sync_exit(connections);

    if ([connections2 count])
    {
      memset(v44, 0, sizeof(v44));
      connections3 = [(DDMain *)self connections];
      if ([connections3 countByEnumeratingWithState:v44 objects:v49 count:16])
      {
        v19 = [**(&v44[0] + 1) remoteObjectProxyWithErrorHandler:&stru_10001C8C0];
        v20 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v46 = messageCopy;
          v47 = 2112;
          v48 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Routing message: %@ to remote object proxy: %@", buf, 0x16u);
        }

        [v19 receiveMessage:messageCopy data:dataCopy fromDestination:destinationCopy expectsResponse:responseCopy response:v15];
LABEL_24:

        goto LABEL_25;
      }
    }

    localReceiver = [(DDMain *)self localReceiver];
    v23 = localReceiver == 0;

    if (v23)
    {
      v24 = MGCopyAnswer();
      if ([v24 isEqualToString:@"Watch"])
      {
        v25 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Creating local receiver for Apple Watch", buf, 2u);
        }

        v26 = [[DDWatchMessageReceiver alloc] initWithDestination:destinationCopy];
        [(DDMain *)self setLocalReceiver:v26];
      }
    }

    localReceiver2 = [(DDMain *)self localReceiver];
    v28 = [localReceiver2 respondsToMessage:messageCopy];

    if (v28)
    {
      v29 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        localReceiver3 = [(DDMain *)self localReceiver];
        *buf = 138412546;
        v46 = messageCopy;
        v47 = 2112;
        v48 = localReceiver3;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Routing message: %@ to local receiver: %@", buf, 0x16u);
      }

      localReceiver4 = [(DDMain *)self localReceiver];
      [localReceiver4 receiveMessage:messageCopy data:dataCopy fromDestination:destinationCopy expectsResponse:responseCopy response:v15];
    }

    else
    {
      objc_initWeak(&location, self);
      v32 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = messageCopy;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[DDMain] Adding a pending task for the %@ message", buf, 0xCu);
      }

      pendingTasks = [(DDMain *)self pendingTasks];
      objc_sync_enter(pendingTasks);
      pendingTasks2 = [(DDMain *)self pendingTasks];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100005D94;
      v36[3] = &unk_10001C7D0;
      objc_copyWeak(&v41, &location);
      v37 = messageCopy;
      v38 = dataCopy;
      v39 = destinationCopy;
      v42 = responseCopy;
      v40 = v15;
      v35 = objc_retainBlock(v36);
      [pendingTasks2 addObject:v35];

      objc_destroyWeak(&v41);
      objc_sync_exit(pendingTasks);

      objc_destroyWeak(&location);
    }

    goto LABEL_24;
  }

  v21 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_10000DC98(messageCopy, v21);
  }

  (*(v15 + 2))(v15, @"unknownMessage", 0);
LABEL_25:
}

- (BOOL)isValidMessage:(id)message
{
  messageCopy = message;
  v4 = [NSSet setWithObjects:@"wakeDevice", @"idleDevice", @"endDevice", @"deviceState", @"requestDeviceState", @"requestAssessmentMode", @"requestSuiteFinish", 0];
  v5 = [v4 containsObject:messageCopy];

  return v5;
}

@end