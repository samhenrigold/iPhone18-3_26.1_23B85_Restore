@interface QCAction
- (BOOL)shouldCancelAction:(id)action;
- (FMDServerInteractionController)serverInteractionController;
- (QCAction)initWithAccount:(id)account shutdownActivityPending:(BOOL)pending serverInteractionController:(id)controller;
- (id)_commandHandlers;
- (id)_copyHandlerForCommand:(id)command params:(id)params;
- (void)_didCompleteQueueCheckRequest:(id)request completion:(id)completion;
- (void)_handleQueueCheckResponseWithStatus:(int64_t)status andBody:(id)body completion:(id)completion;
- (void)runWithCompletion:(id)completion;
- (void)willCancelAction;
@end

@implementation QCAction

- (id)_commandHandlers
{
  v2 = qword_100314788;
  if (qword_100314788)
  {
    goto LABEL_10;
  }

  v13[0] = @"register";
  v14[0] = objc_opt_class();
  v13[1] = @"message";
  v14[1] = objc_opt_class();
  v13[2] = @"locate";
  v14[2] = objc_opt_class();
  v13[3] = @"dataUpdate";
  v14[3] = objc_opt_class();
  v13[4] = @"wipe";
  v14[4] = objc_opt_class();
  v13[5] = @"notify";
  v14[5] = objc_opt_class();
  v13[6] = @"lock";
  v14[6] = objc_opt_class();
  v13[7] = @"identityV5";
  v14[7] = objc_opt_class();
  v13[8] = @"lost";
  v14[8] = objc_opt_class();
  v3 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:9];
  v4 = [v3 mutableCopy];
  v5 = qword_100314788;
  qword_100314788 = v4;

  v6 = +[FMSystemInfo sharedInstance];
  if ([v6 isInternalBuild])
  {
    v7 = [FMPreferencesUtil BOOLForKey:@"DisableRemoteAccessoryConfig" inDomain:kFMDNotBackedUpPrefDomain];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = [qword_100314788 fm_safeSetObject:objc_opt_class() forKey:@"accessory_config"];
LABEL_7:
  v9 = sub_100002880(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = qword_100314788;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Command handlers : %@", &v11, 0xCu);
  }

  v2 = qword_100314788;
LABEL_10:

  return v2;
}

- (QCAction)initWithAccount:(id)account shutdownActivityPending:(BOOL)pending serverInteractionController:(id)controller
{
  pendingCopy = pending;
  accountCopy = account;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = QCAction;
  v10 = [(QCAction *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(QCAction *)v10 setAccount:accountCopy];
    [(QCAction *)v11 setShutdownActivityPending:pendingCopy];
    [(QCAction *)v11 setServerInteractionController:controllerCopy];
  }

  return v11;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  account = [(QCAction *)self account];
  unregisterState = [account unregisterState];

  if (!unregisterState)
  {
    commandContext = [(QCAction *)self commandContext];
    pendingActionUUID = [commandContext pendingActionUUID];
    [(QCAction *)self setCommandContextUUID:pendingActionUUID];

    v9 = [FMDRequestQueueCheck alloc];
    account2 = [(QCAction *)self account];
    v11 = [(FMDRequestQueueCheck *)v9 initWithAccount:account2 shutdownActivityPending:[(QCAction *)self shutdownActivityPending]];

    objc_initWeak(&location, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10017EDC8;
    v20[3] = &unk_1002CE000;
    objc_copyWeak(&v22, &location);
    v21 = completionCopy;
    [(FMDRequest *)v11 setCompletionHandler:v20];
    requestDecorator = [(QCAction *)self requestDecorator];
    [(FMDRequest *)v11 setDecorator:requestDecorator];

    serverInteractionController = [(QCAction *)self serverInteractionController];
    commandContext2 = [(QCAction *)self commandContext];
    accessory = [commandContext2 accessory];

    if (accessory)
    {
      v16 = [[FMDNetworkAction alloc] initWithRequest:v11 andServerInteractionController:serverInteractionController];
      [(QCAction *)self setNetworkAction:v16];
      v17 = +[FMDOperationManager sharedManager];
      accessoryIdentifier = [accessory accessoryIdentifier];
      stringValue = [accessoryIdentifier stringValue];
      [v17 addAction:v16 forIdentifier:stringValue];
    }

    else
    {
      [(QCAction *)self setRequest:v11];
      [serverInteractionController enqueueRequest:v11];
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

- (void)willCancelAction
{
  commandContext = [(QCAction *)self commandContext];
  accessory = [commandContext accessory];

  v6 = sub_100002880(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    request = [(QCAction *)self request];
    v12 = 138412802;
    selfCopy = self;
    v14 = 2112;
    v15 = request;
    v16 = 2112;
    v17 = accessory;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "QCAction(%@) will cancel request(%@) with command context accessory(%@)", &v12, 0x20u);
  }

  if (accessory)
  {
    serverInteractionController = +[FMDOperationManager sharedManager];
    networkAction = [(QCAction *)self networkAction];
    accessoryIdentifier = [accessory accessoryIdentifier];
    stringValue = [accessoryIdentifier stringValue];
    [serverInteractionController cancelAction:networkAction forIdentifier:stringValue];
  }

  else
  {
    serverInteractionController = [(QCAction *)self serverInteractionController];
    networkAction = [(QCAction *)self request];
    [serverInteractionController cancelRequest:networkAction];
  }
}

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    serverInteractionController = [actionCopy serverInteractionController];
    serverInteractionController2 = [(QCAction *)self serverInteractionController];
    v7 = serverInteractionController == serverInteractionController2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_didCompleteQueueCheckRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (([requestCopy willRetry] & 1) == 0)
  {
    httpResponseError = [requestCopy httpResponseError];
    if (httpResponseError || [requestCopy httpResponseStatus] < 200 || objc_msgSend(requestCopy, "httpResponseStatus") > 399)
    {
    }

    else
    {
      cancelled = [requestCopy cancelled];
      if ((cancelled & 1) == 0)
      {
        v17 = sub_100002880(cancelled);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          fm_logID = [requestCopy fm_logID];
          v20 = 138412546;
          v21 = fm_logID;
          v22 = 2048;
          httpResponseStatus = [requestCopy httpResponseStatus];
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld.", &v20, 0x16u);
        }

        httpResponseStatus2 = [requestCopy httpResponseStatus];
        httpResponseBody = [requestCopy httpResponseBody];
        [(QCAction *)self _handleQueueCheckResponseWithStatus:httpResponseStatus2 andBody:httpResponseBody completion:completionCopy];
        goto LABEL_12;
      }
    }

    cancelled2 = [requestCopy cancelled];
    v10 = cancelled2;
    httpResponseBody = sub_100002880(cancelled2);
    v12 = os_log_type_enabled(httpResponseBody, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        fm_logID2 = [requestCopy fm_logID];
        v20 = 138412290;
        v21 = fm_logID2;
        _os_log_impl(&_mh_execute_header, httpResponseBody, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v20, 0xCu);
LABEL_11:
      }
    }

    else if (v12)
    {
      fm_logID2 = [requestCopy fm_logID];
      httpResponseStatus3 = [requestCopy httpResponseStatus];
      httpResponseError2 = [requestCopy httpResponseError];
      v20 = 138412802;
      v21 = fm_logID2;
      v22 = 2048;
      httpResponseStatus = httpResponseStatus3;
      v24 = 2112;
      v25 = httpResponseError2;
      _os_log_impl(&_mh_execute_header, httpResponseBody, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v20, 0x20u);

      goto LABEL_11;
    }

LABEL_12:
  }
}

- (void)_handleQueueCheckResponseWithStatus:(int64_t)status andBody:(id)body completion:(id)completion
{
  bodyCopy = body;
  completionCopy = completion;
  switch(status)
  {
    case 200:
      v10 = 5;
LABEL_7:
      v11 = +[FMDStartupRegisterManager sharedInstance];
      [v11 eventDidOccur:v10];

      break;
    case 204:
      v10 = 6;
      goto LABEL_7;
    case 210:
      v10 = 7;
      goto LABEL_7;
  }

  if (!bodyCopy || ![bodyCopy count])
  {
    v16 = 0;
    goto LABEL_20;
  }

  v12 = [bodyCopy objectForKeyedSubscript:@"cmd"];
  v13 = sub_100002880(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v38 = 138412290;
    *&v38[4] = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Command Received: %@", v38, 0xCu);
  }

  v14 = [(QCAction *)self _copyHandlerForCommand:v12 params:bodyCopy];
  v15 = v14;
  v16 = v14 != 0;
  if (v14)
  {
    v17 = sub_100002880([v14 executeCommand]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 138412290;
      *&v38[4] = v12;
      v18 = "Successfully finished command %@";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, v38, 0xCu);
    }
  }

  else
  {
    v17 = sub_100002880(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 138412290;
      *&v38[4] = v12;
      v18 = "No handler found for command %@";
      goto LABEL_18;
    }
  }

LABEL_20:
  v19 = [FMDStartupRegisterManager sharedInstance:*v38];
  [v19 eventDidOccur:8];

  if (completionCopy)
  {
    v20 = completionCopy[2](completionCopy);
  }

  switch(status)
  {
    case 200:
      accessory = sub_100002880(v20);
      v22 = os_log_type_enabled(accessory, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (v22)
        {
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, accessory, OS_LOG_TYPE_DEFAULT, "More messages pending - checking now...", v38, 2u);
        }

        v23 = [QCAction alloc];
        account = [(QCAction *)self account];
        shutdownActivityPending = [(QCAction *)self shutdownActivityPending];
        serverInteractionController = [(QCAction *)self serverInteractionController];
        accessory = [(QCAction *)v23 initWithAccount:account shutdownActivityPending:shutdownActivityPending serverInteractionController:serverInteractionController];

        requestDecorator = [(QCAction *)self requestDecorator];
        [accessory setRequestDecorator:requestDecorator];

        commandContext = [(QCAction *)self commandContext];
        [accessory setCommandContext:commandContext];

        v29 = +[ActionManager sharedManager];
        v30 = [v29 enqueueAction:accessory];

        goto LABEL_40;
      }

      if (v22)
      {
        *v38 = 0;
        v31 = "Not checking for new messages - previous command was not successful or duplicate";
        goto LABEL_33;
      }

      goto LABEL_40;
    case 204:
      v32 = sub_100002880(v20);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No more pending messages on the server 204...", v38, 2u);
      }

      commandContext2 = [(QCAction *)self commandContext];
      accessory = [commandContext2 accessory];

      if ([accessory connectionState]== 1)
      {
        v34 = sub_100002880(1);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          commandContextUUID = [(QCAction *)self commandContextUUID];
          *v38 = 138412290;
          *&v38[4] = commandContextUUID;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "QCAction marking command complete %@", v38, 0xCu);
        }

        commandContext3 = [(QCAction *)self commandContext];
        commandContextUUID2 = [(QCAction *)self commandContextUUID];
        [commandContext3 setActionCompleted:commandContextUUID2];
      }

      goto LABEL_40;
    case 210:
      accessory = sub_100002880(v20);
      if (os_log_type_enabled(accessory, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 0;
        v31 = "No more pending messages on the server 210...";
LABEL_33:
        _os_log_impl(&_mh_execute_header, accessory, OS_LOG_TYPE_DEFAULT, v31, v38, 2u);
      }

LABEL_40:

      break;
  }
}

- (id)_copyHandlerForCommand:(id)command params:(id)params
{
  commandCopy = command;
  paramsCopy = params;
  _commandHandlers = [(QCAction *)self _commandHandlers];
  v9 = [_commandHandlers objectForKeyedSubscript:commandCopy];
  v10 = sub_100002880(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = commandCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using handler %@ for command type %@", &v16, 0x16u);
  }

  if (v9)
  {
    v12 = +[FMDServiceProvider activeServiceProvider];
    v13 = [[v9 alloc] initWithParams:paramsCopy provider:v12];
    commandContext = [(QCAction *)self commandContext];
    [v13 setCommandContext:commandContext];
  }

  else
  {
    v12 = sub_100002880(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10022B20C(commandCopy, v12);
    }

    v13 = 0;
  }

  return v13;
}

- (FMDServerInteractionController)serverInteractionController
{
  WeakRetained = objc_loadWeakRetained(&self->_serverInteractionController);

  return WeakRetained;
}

@end