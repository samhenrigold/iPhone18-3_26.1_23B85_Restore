@interface WFRemoteExecutionCoordinator
+ (id)sharedCoordinator;
- (BOOL)hasPairedDevice;
- (BOOL)messageCameFromPairedDevice:(id)device;
- (BOOL)sendStopRequest:(id)request error:(id *)error;
- (BOOL)shouldDropMessageDueToStaleness:(id)staleness;
- (IDSService)service;
- (NSString)pairedDeviceModelIdentifier;
- (id)defaultIDSOptions;
- (id)initAndAllowRunRequests:(BOOL)requests;
- (id)pairedDevice;
- (id)sessionFromRequestIdentifier:(id)identifier;
- (id)sessionsOfClass:(Class)class;
- (id)unknownRequestError;
- (id)unknownRequestMessageWithIdentifier:(id)identifier;
- (void)cancelAllSessions;
- (void)cancelPendingFileTransfers;
- (void)cancelRequest:(id)request;
- (void)cancelSessions:(id)sessions;
- (void)finishSessionWithRequest:(id)request;
- (void)handleAceCommandResponse:(id)response service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleAlertRequest:(id)request service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleAlertRequestResponse:(id)response service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleAskWhenRunRequest:(id)request service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleAskWhenRunRequestResponse:(id)response service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleDialogRequest:(id)request service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleDialogRequestResponse:(id)response service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleIncomingAceCommand:(id)command service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleRunRequest:(id)request service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleRunRequestResponse:(id)response service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleStopRequest:(id)request service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleUnknownRequestMessage:(id)message;
- (void)mapSelectorsForIncomingProtobuf;
- (void)sendAceCommandDictionary:(id)dictionary completion:(id)completion;
- (void)sendAlertRequest:(id)request completion:(id)completion;
- (void)sendAskWhenRunRequest:(id)request completion:(id)completion;
- (void)sendDialogRequest:(id)request completion:(id)completion;
- (void)sendFileAtURL:(id)l transferIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier error:(id *)error;
- (void)sendRunRequest:(id)request userInterface:(id)interface parameterInputProvider:(id)provider completionHandler:(id)handler;
- (void)sendRunRequestResponse:(id)response completion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)sessionDidFinish:(id)finish;
@end

@implementation WFRemoteExecutionCoordinator

- (IDSService)service
{
  service = self->_service;
  if (service)
  {
    goto LABEL_4;
  }

  v4 = [objc_alloc(MEMORY[0x1E69A48A8]) initWithService:@"com.apple.private.alloy.shortcuts"];
  v5 = self->_service;
  self->_service = v4;

  if (self->_service)
  {
    [(WFRemoteExecutionCoordinator *)self mapSelectorsForIncomingProtobuf];
    v6 = self->_service;
    queue = [(WFRemoteExecutionCoordinator *)self queue];
    [(IDSService *)v6 addDelegate:self queue:queue];

    service = self->_service;
LABEL_4:
    v8 = service;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (void)mapSelectorsForIncomingProtobuf
{
  v17 = *MEMORY[0x1E69E9840];
  service = [(WFRemoteExecutionCoordinator *)self service];
  [service setProtobufAction:sel_handleRunRequestResponse_service_account_fromID_context_ forIncomingRequestsOfType:2];

  service2 = [(WFRemoteExecutionCoordinator *)self service];
  [service2 setProtobufAction:sel_handleAlertRequest_service_account_fromID_context_ forIncomingRequestsOfType:3];

  service3 = [(WFRemoteExecutionCoordinator *)self service];
  [service3 setProtobufAction:sel_handleAlertRequestResponse_service_account_fromID_context_ forIncomingRequestsOfType:4];

  service4 = [(WFRemoteExecutionCoordinator *)self service];
  [service4 setProtobufAction:sel_handleAskWhenRunRequest_service_account_fromID_context_ forIncomingRequestsOfType:5];

  service5 = [(WFRemoteExecutionCoordinator *)self service];
  [service5 setProtobufAction:sel_handleAskWhenRunRequestResponse_service_account_fromID_context_ forIncomingRequestsOfType:6];

  service6 = [(WFRemoteExecutionCoordinator *)self service];
  [service6 setProtobufAction:sel_handleAceCommandResponse_service_account_fromID_context_ forIncomingRequestsOfType:9];

  service7 = [(WFRemoteExecutionCoordinator *)self service];
  [service7 setProtobufAction:sel_handleStopRequest_service_account_fromID_context_ forIncomingRequestsOfType:7];

  service8 = [(WFRemoteExecutionCoordinator *)self service];
  [service8 setProtobufAction:sel_handleDialogRequest_service_account_fromID_context_ forIncomingRequestsOfType:10];

  service9 = [(WFRemoteExecutionCoordinator *)self service];
  [service9 setProtobufAction:sel_handleDialogRequestResponse_service_account_fromID_context_ forIncomingRequestsOfType:11];

  if ([(WFRemoteExecutionCoordinator *)self allowRunRequests])
  {
    v12 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "[WFRemoteExecutionCoordinator mapSelectorsForIncomingProtobuf]";
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s Started listening for run requests", &v15, 0xCu);
    }

    service10 = [(WFRemoteExecutionCoordinator *)self service];
    [service10 setProtobufAction:sel_handleRunRequest_service_account_fromID_context_ forIncomingRequestsOfType:1];

    service11 = [(WFRemoteExecutionCoordinator *)self service];
    [service11 setProtobufAction:sel_handleIncomingAceCommand_service_account_fromID_context_ forIncomingRequestsOfType:8];
  }
}

- (id)defaultIDSOptions
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A47D8];
  v5[0] = *MEMORY[0x1E69A4B58];
  v5[1] = v2;
  v6[0] = MEMORY[0x1E695E118];
  v6[1] = &unk_1F4A9A210;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v48 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  errorCopy = error;
  v12 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v41 = "[WFRemoteExecutionCoordinator service:account:identifier:didSendWithSuccess:error:]";
    v42 = 2114;
    v43 = identifierCopy;
    v44 = 1024;
    v45 = successCopy;
    v46 = 2114;
    v47 = errorCopy;
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s <%{public}@> Sent with success: %i, %{public}@", buf, 0x26u);
  }

  if (successCopy)
  {
    v13 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          idsIdentifier = [v18 idsIdentifier];
          isEqualToString = objc_msgSend_isEqualToString_(identifierCopy);

          if (isEqualToString)
          {
            [v18 fileSentWithSuccess:1 error:errorCopy];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v15);
    }
  }

  else
  {
    activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
    v22 = [activeSessions copy];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = v22;
    v23 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v13);
          }

          v27 = *(*(&v34 + 1) + 8 * j);
          idsIdentifier2 = [v27 idsIdentifier];
          v29 = objc_msgSend_isEqualToString_(idsIdentifier2);

          if (v29)
          {
            [v27 finishWithError:errorCopy];
          }
        }

        v24 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v24);
    }
  }
}

- (NSString)pairedDeviceModelIdentifier
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  service = [(WFRemoteExecutionCoordinator *)self service];
  devices = [service devices];
  reverseObjectEnumerator = [devices reverseObjectEnumerator];

  modelIdentifier = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (modelIdentifier)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != modelIdentifier; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isLocallyPaired] && (objc_msgSend(v8, "isActive") & 1) != 0)
        {
          modelIdentifier = [v8 modelIdentifier];
          goto LABEL_12;
        }
      }

      modelIdentifier = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (modelIdentifier)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return modelIdentifier;
}

- (id)pairedDevice
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  service = [(WFRemoteExecutionCoordinator *)self service];
  devices = [service devices];

  v4 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isLocallyPaired] && objc_msgSend(v9, "isActive"))
        {
          v10 = MEMORY[0x1E695DFD8];
          v11 = IDSCopyIDForDevice();
          v12 = [v10 setWithObject:v11];

          v6 = v12;
        }
      }

      v5 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasPairedDevice
{
  pairedDevice = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  v3 = [pairedDevice count] != 0;

  return v3;
}

- (BOOL)shouldDropMessageDueToStaleness:(id)staleness
{
  v15 = *MEMORY[0x1E69E9840];
  stalenessCopy = staleness;
  if (shouldDropMessageDueToStaleness__onceToken != -1)
  {
    dispatch_once(&shouldDropMessageDueToStaleness__onceToken, &__block_literal_global_223);
  }

  date = [MEMORY[0x1E695DF00] date];
  v5 = [shouldDropMessageDueToStaleness__calendar components:64 fromDate:stalenessCopy toDate:date options:0];
  minute = [v5 minute];
  if (minute >= 2)
  {
    v7 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 136315650;
      v10 = "[WFRemoteExecutionCoordinator shouldDropMessageDueToStaleness:]";
      v11 = 2114;
      v12 = stalenessCopy;
      v13 = 2114;
      v14 = date;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s Dropping message because it was sent more than one minute ago. server received message at %{public}@, it is currently: %{public}@", &v9, 0x20u);
    }
  }

  return minute > 1;
}

void __64__WFRemoteExecutionCoordinator_shouldDropMessageDueToStaleness___block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] currentCalendar];
  v1 = shouldDropMessageDueToStaleness__calendar;
  shouldDropMessageDueToStaleness__calendar = v0;
}

- (BOOL)messageCameFromPairedDevice:(id)device
{
  v12 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  service = [(WFRemoteExecutionCoordinator *)self service];
  v6 = [service deviceForFromID:deviceCopy];

  if ([v6 isLocallyPaired] && (objc_msgSend(v6, "isActive") & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[WFRemoteExecutionCoordinator messageCameFromPairedDevice:]";
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Dropping message as it did not come from a paired device", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (void)finishSessionWithRequest:(id)request
{
  v23 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
  v6 = [activeSessions copy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        request = [v12 request];
        identifier = [request identifier];
        identifier2 = [requestCopy identifier];
        isEqualToString = objc_msgSend_isEqualToString_(identifier);

        if (isEqualToString)
        {
          v17 = v12;
          if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [v17 finishWithError:0];
          }

          else
          {

            [v17 finish];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

- (void)sessionDidFinish:(id)finish
{
  v14 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  v5 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[WFRemoteExecutionCoordinator sessionDidFinish:]";
    v12 = 2114;
    v13 = finishCopy;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s %{public}@", &v10, 0x16u);
  }

  activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [activeSessions removeObject:finishCopy];

  completionsForSessions = [(WFRemoteExecutionCoordinator *)self completionsForSessions];
  v8 = [completionsForSessions objectForKey:finishCopy];

  completionsForSessions2 = [(WFRemoteExecutionCoordinator *)self completionsForSessions];
  [completionsForSessions2 removeObjectForKey:finishCopy];

  if (v8)
  {
    v8[2](v8);
  }
}

- (id)sessionsOfClass:(Class)class
{
  activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
  v5 = [activeSessions objectsMatchingClass:class];

  return v5;
}

- (void)handleUnknownRequestMessage:(id)message
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [message objectForKey:@"identifier"];
  v5 = [(WFRemoteExecutionCoordinator *)self sessionFromRequestIdentifier:v4];
  v6 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    request = [v5 request];
    v10 = 136315394;
    v11 = "[WFRemoteExecutionCoordinator handleUnknownRequestMessage:]";
    v12 = 2112;
    v13 = objc_opt_class();
    v8 = v13;
    _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Remote device did not understand request of class: %@", &v10, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    unknownRequestError = [(WFRemoteExecutionCoordinator *)self unknownRequestError];
    [v5 finishWithError:unknownRequestError];
  }
}

- (id)unknownRequestError
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v3 = WFLocalizedString(@"While running your shortcut remotely, we encountered an unknown request. Please update your device.");
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:@"WFRemoteExecutionCoordinatorErrorDomain" code:1 userInfo:v4];

  return v5;
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  messageCopy = message;
  v8 = [messageCopy objectForKey:@"messageType"];
  if (objc_msgSend_isEqualToString_(v8))
  {
    [(WFRemoteExecutionCoordinator *)self handleUnknownRequestMessage:messageCopy];
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  v31 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  dCopy = d;
  if ([protobufCopy type] != 1 && objc_msgSend(protobufCopy, "type") != 8)
  {
    data = [protobufCopy data];
    v24 = 0;
    v12 = [WFRemoteExecutionRequest identifierFromData:data error:&v24];
    v13 = v24;

    v14 = getWFRemoteExecutionLogObject();
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        data2 = [protobufCopy data];
        type = [protobufCopy type];
        *buf = 136315650;
        v26 = "[WFRemoteExecutionCoordinator service:account:incomingUnhandledProtobuf:fromID:context:]";
        v27 = 2114;
        v28 = data2;
        v29 = 1024;
        v30 = type;
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s Received unknown request with data: %{public}@, message type: %i", buf, 0x1Cu);
      }

      v15 = [(WFRemoteExecutionCoordinator *)self unknownRequestMessageWithIdentifier:v12];
      v18 = [MEMORY[0x1E695DFD8] setWithObject:dCopy];
      service = [(WFRemoteExecutionCoordinator *)self service];
      defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
      v23 = 0;
      v21 = [service sendMessage:v15 toDestinations:v18 priority:300 options:defaultIDSOptions identifier:0 error:&v23];

      if ((v21 & 1) == 0)
      {
        v22 = getWFRemoteExecutionLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v26 = "[WFRemoteExecutionCoordinator service:account:incomingUnhandledProtobuf:fromID:context:]";
          _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s Received unknown request but failed to send the unknown identifier back to the originating device", buf, 0xCu);
        }
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v26 = "[WFRemoteExecutionCoordinator service:account:incomingUnhandledProtobuf:fromID:context:]";
      v27 = 2114;
      v28 = v13;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_FAULT, "%s Received unknown request but failed to read the identifier from it. %{public}@", buf, 0x16u);
    }
  }
}

- (id)unknownRequestMessageWithIdentifier:(id)identifier
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"messageType";
  v7[1] = @"identifier";
  v8[0] = @"unknownRequest";
  v8[1] = identifier;
  v3 = MEMORY[0x1E695DF20];
  identifierCopy = identifier;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v64 = *MEMORY[0x1E69E9840];
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  v14 = [metadataCopy objectForKey:@"transferIdentifier"];
  v15 = [metadataCopy objectForKey:@"requestIdentifier"];
  v16 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v59 = "[WFRemoteExecutionCoordinator service:account:incomingResourceAtURL:metadata:fromID:context:]";
    v60 = 2114;
    v61 = v15;
    v62 = 2114;
    v63 = v14;
    _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_INFO, "%s <%{public}@> Received file with id: %{public}@", buf, 0x20u);
  }

  if ([(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:dCopy])
  {
    v44 = v15;
    lastPathComponent = [lCopy lastPathComponent];
    v17 = [MEMORY[0x1E6996F68] proposedSharedTemporaryFileURLForFilename:?];
    uRLByDeletingLastPathComponent = [v17 URLByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v55 = 0;
    v42 = uRLByDeletingLastPathComponent;
    [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v55];
    v20 = v55;

    if (v20)
    {
      v21 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        v59 = "[WFRemoteExecutionCoordinator service:account:incomingResourceAtURL:metadata:fromID:context:]";
        v60 = 2114;
        v22 = v42;
        v61 = v42;
        v62 = 2114;
        v63 = v20;
        _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_FAULT, "%s Unable to create directory at URL: %{public}@ for incoming file. error: %{public}@", buf, 0x20u);
        v23 = lastPathComponent;
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v54 = 0;
      [defaultManager2 copyItemAtURL:lCopy toURL:v17 error:&v54];
      v20 = v54;

      if (v20)
      {
        v21 = getWFRemoteExecutionLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v59 = "[WFRemoteExecutionCoordinator service:account:incomingResourceAtURL:metadata:fromID:context:]";
          v60 = 2114;
          v61 = v20;
          _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_FAULT, "%s Unable to move incoming file from ids URL to temporary URL with error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v45 = v17;
        v25 = v14;
        v26 = metadataCopy;
        v40 = dCopy;
        v41 = lCopy;
        v21 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v27 = [v21 countByEnumeratingWithState:&v50 objects:v57 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v51;
          do
          {
            v30 = v21;
            for (i = 0; i != v28; ++i)
            {
              if (*v51 != v29)
              {
                objc_enumerationMutation(v30);
              }

              v32 = *(*(&v50 + 1) + 8 * i);
              v33 = [(WFRemoteExecutionCoordinator *)self pairedDevice:v40];
              defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
              [v32 handleIncomingFileForRemoteExecutionWithURL:v45 withIdentifier:v25 metadata:v26 destinations:v33 options:defaultIDSOptions];
            }

            v21 = v30;
            v28 = [v30 countByEnumeratingWithState:&v50 objects:v57 count:16];
          }

          while (v28);
        }

        v35 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v36 = [v35 countByEnumeratingWithState:&v46 objects:v56 count:16];
        dCopy = v40;
        lCopy = v41;
        metadataCopy = v26;
        v14 = v25;
        v17 = v45;
        if (v36)
        {
          v37 = v36;
          v38 = *v47;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v47 != v38)
              {
                objc_enumerationMutation(v35);
              }

              [*(*(&v46 + 1) + 8 * j) handleIncomingFileForRemoteExecutionWithURL:v45 withIdentifier:v14 metadata:{metadataCopy, v40, v41}];
            }

            v37 = [v35 countByEnumeratingWithState:&v46 objects:v56 count:16];
          }

          while (v37);
        }

        v20 = 0;
      }
    }

    v23 = lastPathComponent;
    v15 = v44;
    v22 = v42;
    goto LABEL_26;
  }

LABEL_27:
}

- (void)sendFileAtURL:(id)l transferIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier error:(id *)error
{
  requestIdentifierCopy = requestIdentifier;
  identifierCopy = identifier;
  lCopy = l;
  v13 = [WFRemoteExecutionOutgoingFileSession alloc];
  service = [(WFRemoteExecutionCoordinator *)self service];
  v17 = [(WFRemoteExecutionOutgoingFileSession *)v13 initWithService:service fileURL:lCopy transferIdentifier:identifierCopy requestIdentifier:requestIdentifierCopy];

  [(WFRemoteExecutionSession *)v17 setDelegate:self];
  pairedDevice = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  [(WFRemoteExecutionOutgoingFileSession *)v17 sendToDestinations:pairedDevice options:defaultIDSOptions error:error];
}

- (void)handleDialogRequest:(id)request service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contextCopy = context;
  dCopy = d;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v24 = 136315138;
    v25 = "[WFRemoteExecutionCoordinator handleDialogRequest:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming dialog request", &v24, 0xCu);
  }

  v14 = [(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:dCopy];
  if (v14)
  {
    serverReceivedTime = [contextCopy serverReceivedTime];
    v16 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:serverReceivedTime];

    if (!v16)
    {
      v17 = [WFRemoteExecutionIncomingDialogRequestSession alloc];
      service = [(WFRemoteExecutionCoordinator *)self service];
      v19 = [(WFRemoteExecutionSession *)v17 initWithService:service];

      [(WFRemoteExecutionSession *)v19 setDelegate:self];
      v20 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      pairedDevice = [(WFRemoteExecutionCoordinator *)self pairedDevice];
      defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
      [(WFRemoteExecutionIncomingDialogRequestSession *)v19 handleIncomingProtobuf:requestCopy currentlyActiveSessions:v20 destinations:pairedDevice options:defaultIDSOptions];

      activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
      [activeSessions addObject:v19];
    }
  }
}

- (void)handleIncomingAceCommand:(id)command service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  contextCopy = context;
  dCopy = d;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v23 = 136315138;
    v24 = "[WFRemoteExecutionCoordinator handleIncomingAceCommand:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming ace command", &v23, 0xCu);
  }

  v14 = [(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:dCopy];
  if (v14)
  {
    serverReceivedTime = [contextCopy serverReceivedTime];
    v16 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:serverReceivedTime];

    if (!v16)
    {
      v17 = [WFRemoteExecutionIncomingAceCommandSession alloc];
      service = [(WFRemoteExecutionCoordinator *)self service];
      v19 = [(WFRemoteExecutionSession *)v17 initWithService:service];

      [(WFRemoteExecutionSession *)v19 setDelegate:self];
      pairedDevice = [(WFRemoteExecutionCoordinator *)self pairedDevice];
      defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
      [(WFRemoteExecutionIncomingAceCommandSession *)v19 handleIncomingProtobuf:commandCopy destinations:pairedDevice options:defaultIDSOptions];

      activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
      [activeSessions addObject:v19];
    }
  }
}

- (void)handleAskWhenRunRequestResponse:(id)response service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dCopy = d;
  contextCopy = context;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v29 = "[WFRemoteExecutionCoordinator handleAskWhenRunRequestResponse:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming ask each time response", buf, 0xCu);
  }

  if ([(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:dCopy])
  {
    serverReceivedTime = [contextCopy serverReceivedTime];
    v15 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:serverReceivedTime];

    if (!v15)
    {
      v16 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      v17 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v29 = "[WFRemoteExecutionCoordinator handleAskWhenRunRequestResponse:service:account:fromID:context:]";
        v30 = 2114;
        v31 = v16;
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Has active sessions: %{public}@", buf, 0x16u);
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v24;
        do
        {
          v22 = 0;
          do
          {
            if (*v24 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v23 + 1) + 8 * v22++) handleIncomingProtobuf:{responseCopy, v23}];
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v20);
      }
    }
  }
}

- (void)sendAskWhenRunRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = [WFRemoteExecutionOutgoingAskEachTimeSession alloc];
  service = [(WFRemoteExecutionCoordinator *)self service];
  v13 = [(WFRemoteExecutionOutgoingAskEachTimeSession *)v8 initWithService:service request:requestCopy completion:completionCopy];

  [(WFRemoteExecutionSession *)v13 setDelegate:self];
  pairedDevice = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  [(WFRemoteExecutionOutgoingAskEachTimeSession *)v13 sendToDestinations:pairedDevice options:defaultIDSOptions];

  activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [activeSessions addObject:v13];
}

- (void)handleStopRequest:(id)request service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contextCopy = context;
  dCopy = d;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v21 = 136315138;
    v22 = "[WFRemoteExecutionCoordinator handleStopRequest:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming stop request", &v21, 0xCu);
  }

  v14 = [(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:dCopy];
  if (v14)
  {
    serverReceivedTime = [contextCopy serverReceivedTime];
    v16 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:serverReceivedTime];

    if (!v16)
    {
      v17 = [WFRemoteExecutionIncomingStopSession alloc];
      service = [(WFRemoteExecutionCoordinator *)self service];
      v19 = [(WFRemoteExecutionSession *)v17 initWithService:service];

      activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
      [(WFRemoteExecutionIncomingStopSession *)v19 handleIncomingProtobuf:requestCopy currentlyActiveSessions:activeSessions];
    }
  }
}

- (void)handleAlertRequestResponse:(id)response service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dCopy = d;
  contextCopy = context;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v29 = "[WFRemoteExecutionCoordinator handleAlertRequestResponse:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming alert response", buf, 0xCu);
  }

  if ([(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:dCopy])
  {
    serverReceivedTime = [contextCopy serverReceivedTime];
    v15 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:serverReceivedTime];

    if (!v15)
    {
      v16 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      v17 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v29 = "[WFRemoteExecutionCoordinator handleAlertRequestResponse:service:account:fromID:context:]";
        v30 = 2114;
        v31 = v16;
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Has active sessions: %{public}@", buf, 0x16u);
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v24;
        do
        {
          v22 = 0;
          do
          {
            if (*v24 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v23 + 1) + 8 * v22++) handleIncomingProtobuf:{responseCopy, v23}];
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v20);
      }
    }
  }
}

- (void)sendAlertRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = [WFRemoteExecutionOutgoingAlertSession alloc];
  service = [(WFRemoteExecutionCoordinator *)self service];
  v13 = [(WFRemoteExecutionOutgoingAlertSession *)v8 initWithService:service request:requestCopy completion:completionCopy];

  [(WFRemoteExecutionSession *)v13 setDelegate:self];
  pairedDevice = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  [(WFRemoteExecutionOutgoingAlertSession *)v13 sendToDestinations:pairedDevice options:defaultIDSOptions];

  activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [activeSessions addObject:v13];
}

- (void)sendRunRequestResponse:(id)response completion:(id)completion
{
  aBlock = completion;
  responseCopy = response;
  v7 = [WFRemoteExecutionOutgoingRunRequestResponseSession alloc];
  service = [(WFRemoteExecutionCoordinator *)self service];
  v9 = [(WFRemoteExecutionOutgoingRunRequestResponseSession *)v7 initWithService:service responseData:responseCopy];

  [(WFRemoteExecutionSession *)v9 setDelegate:self];
  pairedDevice = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  [(WFRemoteExecutionOutgoingRunRequestResponseSession *)v9 sendToDestinations:pairedDevice options:defaultIDSOptions];

  activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [activeSessions addObject:v9];

  if (aBlock)
  {
    completionsForSessions = [(WFRemoteExecutionCoordinator *)self completionsForSessions];
    v14 = _Block_copy(aBlock);
    [completionsForSessions setObject:v14 forKey:v9];
  }
}

- (void)handleRunRequest:(id)request service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v49 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dCopy = d;
  contextCopy = context;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v45 = "[WFRemoteExecutionCoordinator handleRunRequest:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming run request", buf, 0xCu);
  }

  if ([(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:dCopy])
  {
    serverReceivedTime = [contextCopy serverReceivedTime];
    v15 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:serverReceivedTime];

    if (!v15)
    {
      v38 = contextCopy;
      v16 = [WFRemoteExecutionRunRequest alloc];
      data = [requestCopy data];
      v18 = [(WFRemoteExecutionRunRequest *)v16 initWithData:data error:0];

      v39 = v18;
      if (v18)
      {
        identifier = [(WFRemoteExecutionRequest *)v18 identifier];

        if (identifier)
        {
          v36 = dCopy;
          v37 = requestCopy;
          [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          activeSessions = v43 = 0u;
          v21 = [(WFRemoteExecutionIncomingRunRequestSession *)activeSessions countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v41;
            while (2)
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v41 != v23)
                {
                  objc_enumerationMutation(activeSessions);
                }

                v25 = *(*(&v40 + 1) + 8 * i);
                request = [v25 request];
                identifier2 = [request identifier];
                identifier3 = [(WFRemoteExecutionRequest *)v39 identifier];
                isEqualToString = objc_msgSend_isEqualToString_(identifier2);

                if (isEqualToString)
                {
                  v35 = getWFRemoteExecutionLogObject();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v45 = "[WFRemoteExecutionCoordinator handleRunRequest:service:account:fromID:context:]";
                    v46 = 2112;
                    v47 = v25;
                    _os_log_impl(&dword_1CA256000, v35, OS_LOG_TYPE_DEFAULT, "%s Received an incoming run request, however, there is an existing session with the same identifier (%@). Dropping this request.", buf, 0x16u);
                  }

                  v32 = activeSessions;
                  dCopy = v36;
                  requestCopy = v37;
                  goto LABEL_20;
                }
              }

              v22 = [(WFRemoteExecutionIncomingRunRequestSession *)activeSessions countByEnumeratingWithState:&v40 objects:v48 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          dCopy = v36;
          requestCopy = v37;
        }
      }

      v30 = [WFRemoteExecutionIncomingRunRequestSession alloc];
      service = [(WFRemoteExecutionCoordinator *)self service];
      v32 = [(WFRemoteExecutionSession *)v30 initWithService:service];

      [(WFRemoteExecutionSession *)v32 setDelegate:self];
      pairedDevice = [(WFRemoteExecutionCoordinator *)self pairedDevice];
      defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
      [(WFRemoteExecutionIncomingRunRequestSession *)v32 handleIncomingProtobuf:requestCopy destinations:pairedDevice options:defaultIDSOptions];

      activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
      [(WFRemoteExecutionIncomingRunRequestSession *)activeSessions addObject:v32];
LABEL_20:
      contextCopy = v38;
    }
  }
}

- (void)handleDialogRequestResponse:(id)response service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v33 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dCopy = d;
  contextCopy = context;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[WFRemoteExecutionCoordinator handleDialogRequestResponse:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming dialog request response", buf, 0xCu);
  }

  if ([(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:dCopy])
  {
    serverReceivedTime = [contextCopy serverReceivedTime];
    v15 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:serverReceivedTime];

    if (!v15)
    {
      v16 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      v17 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v30 = "[WFRemoteExecutionCoordinator handleDialogRequestResponse:service:account:fromID:context:]";
        v31 = 2114;
        v32 = v16;
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Has active sessions: %{public}@", buf, 0x16u);
      }

      if (![v16 count])
      {
        v18 = getWFRemoteExecutionLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v30 = "[WFRemoteExecutionCoordinator handleDialogRequestResponse:service:account:fromID:context:]";
          _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_INFO, "%s No matching session, dropping message", buf, 0xCu);
        }
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v25;
        do
        {
          v23 = 0;
          do
          {
            if (*v25 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v24 + 1) + 8 * v23++) handleIncomingProtobuf:{responseCopy, v24}];
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v21);
      }
    }
  }
}

- (void)sendDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = [WFRemoteExecutionOutgoingDialogRequestSession alloc];
  service = [(WFRemoteExecutionCoordinator *)self service];
  v13 = [(WFRemoteExecutionOutgoingDialogRequestSession *)v8 initWithService:service request:requestCopy completion:completionCopy];

  [(WFRemoteExecutionSession *)v13 setDelegate:self];
  pairedDevice = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  [(WFRemoteExecutionOutgoingDialogRequestSession *)v13 sendToDestinations:pairedDevice options:defaultIDSOptions];

  activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [activeSessions addObject:v13];
}

- (void)handleAceCommandResponse:(id)response service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v33 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dCopy = d;
  contextCopy = context;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[WFRemoteExecutionCoordinator handleAceCommandResponse:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming ace command response", buf, 0xCu);
  }

  if ([(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:dCopy])
  {
    serverReceivedTime = [contextCopy serverReceivedTime];
    v15 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:serverReceivedTime];

    if (!v15)
    {
      v16 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      v17 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v30 = "[WFRemoteExecutionCoordinator handleAceCommandResponse:service:account:fromID:context:]";
        v31 = 2114;
        v32 = v16;
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Has active sessions: %{public}@", buf, 0x16u);
      }

      if (![v16 count])
      {
        v18 = getWFRemoteExecutionLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v30 = "[WFRemoteExecutionCoordinator handleAceCommandResponse:service:account:fromID:context:]";
          _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_INFO, "%s No matching session, dropping message", buf, 0xCu);
        }
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v25;
        do
        {
          v23 = 0;
          do
          {
            if (*v25 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v24 + 1) + 8 * v23++) handleIncomingProtobuf:{responseCopy, v24}];
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v21);
      }
    }
  }
}

- (void)sendAceCommandDictionary:(id)dictionary completion:(id)completion
{
  completionCopy = completion;
  dictionaryCopy = dictionary;
  v14 = [[WFRemoteExecutionAceCommandRequest alloc] initWithAceCommandDictionary:dictionaryCopy];

  v8 = [WFRemoteExecutionOutgoingAceCommandSession alloc];
  service = [(WFRemoteExecutionCoordinator *)self service];
  v10 = [(WFRemoteExecutionOutgoingAceCommandSession *)v8 initWithService:service request:v14 completion:completionCopy];

  [(WFRemoteExecutionSession *)v10 setDelegate:self];
  pairedDevice = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  [(WFRemoteExecutionOutgoingAceCommandSession *)v10 sendToDestinations:pairedDevice options:defaultIDSOptions];

  activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [activeSessions addObject:v10];
}

- (void)handleAskWhenRunRequest:(id)request service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contextCopy = context;
  dCopy = d;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v24 = 136315138;
    v25 = "[WFRemoteExecutionCoordinator handleAskWhenRunRequest:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming ask each time to display", &v24, 0xCu);
  }

  v14 = [(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:dCopy];
  if (v14)
  {
    serverReceivedTime = [contextCopy serverReceivedTime];
    v16 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:serverReceivedTime];

    if (!v16)
    {
      v17 = [WFRemoteExecutionIncomingAskEachTimeSession alloc];
      service = [(WFRemoteExecutionCoordinator *)self service];
      v19 = [(WFRemoteExecutionSession *)v17 initWithService:service];

      [(WFRemoteExecutionSession *)v19 setDelegate:self];
      v20 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      pairedDevice = [(WFRemoteExecutionCoordinator *)self pairedDevice];
      defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
      [(WFRemoteExecutionIncomingAskEachTimeSession *)v19 handleIncomingProtobuf:requestCopy currentlyActiveSessions:v20 responseDestinations:pairedDevice responseOptions:defaultIDSOptions];

      activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
      [activeSessions addObject:v19];
    }
  }
}

- (BOOL)sendStopRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = [WFRemoteExecutionOutgoingStopSession alloc];
  service = [(WFRemoteExecutionCoordinator *)self service];
  v9 = [(WFRemoteExecutionOutgoingStopSession *)v7 initWithService:service request:requestCopy];

  [(WFRemoteExecutionSession *)v9 setDelegate:self];
  pairedDevice = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  LOBYTE(error) = [(WFRemoteExecutionOutgoingStopSession *)v9 sendToDestinations:pairedDevice options:defaultIDSOptions error:error];

  activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [activeSessions addObject:v9];

  return error;
}

- (void)handleAlertRequest:(id)request service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contextCopy = context;
  dCopy = d;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v24 = 136315138;
    v25 = "[WFRemoteExecutionCoordinator handleAlertRequest:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming alert to display", &v24, 0xCu);
  }

  v14 = [(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:dCopy];
  if (v14)
  {
    serverReceivedTime = [contextCopy serverReceivedTime];
    v16 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:serverReceivedTime];

    if (!v16)
    {
      v17 = [WFRemoteExecutionIncomingAlertSession alloc];
      service = [(WFRemoteExecutionCoordinator *)self service];
      v19 = [(WFRemoteExecutionSession *)v17 initWithService:service];

      [(WFRemoteExecutionSession *)v19 setDelegate:self];
      v20 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      pairedDevice = [(WFRemoteExecutionCoordinator *)self pairedDevice];
      defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
      [(WFRemoteExecutionIncomingAlertSession *)v19 handleIncomingProtobuf:requestCopy currentlyActiveSessions:v20 responseDestinations:pairedDevice options:defaultIDSOptions];

      activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
      [activeSessions addObject:v19];
    }
  }
}

- (void)handleRunRequestResponse:(id)response service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v33 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dCopy = d;
  contextCopy = context;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[WFRemoteExecutionCoordinator handleRunRequestResponse:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming run request response", buf, 0xCu);
  }

  if ([(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:dCopy])
  {
    serverReceivedTime = [contextCopy serverReceivedTime];
    v15 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:serverReceivedTime];

    if (!v15)
    {
      v16 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      v17 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v30 = "[WFRemoteExecutionCoordinator handleRunRequestResponse:service:account:fromID:context:]";
        v31 = 2114;
        v32 = v16;
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Has active sessions: %{public}@", buf, 0x16u);
      }

      if (![v16 count])
      {
        v18 = getWFRemoteExecutionLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v30 = "[WFRemoteExecutionCoordinator handleRunRequestResponse:service:account:fromID:context:]";
          _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_INFO, "%s No matching session, dropping message", buf, 0xCu);
        }
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v25;
        do
        {
          v23 = 0;
          do
          {
            if (*v25 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v24 + 1) + 8 * v23++) handleIncomingProtobuf:{responseCopy, v24}];
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v21);
      }
    }
  }
}

- (void)sendRunRequest:(id)request userInterface:(id)interface parameterInputProvider:(id)provider completionHandler:(id)handler
{
  handlerCopy = handler;
  providerCopy = provider;
  interfaceCopy = interface;
  requestCopy = request;
  v14 = [WFRemoteExecutionOutgoingRunRequestSession alloc];
  service = [(WFRemoteExecutionCoordinator *)self service];
  v19 = [(WFRemoteExecutionOutgoingRunRequestSession *)v14 initWithService:service request:requestCopy userInterface:interfaceCopy parameterInputProvider:providerCopy coordinator:self completion:handlerCopy];

  [(WFRemoteExecutionSession *)v19 setDelegate:self];
  pairedDevice = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  defaultIDSOptions = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  [(WFRemoteExecutionOutgoingRunRequestSession *)v19 sendToDestinations:pairedDevice options:defaultIDSOptions];

  activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [activeSessions addObject:v19];
}

- (id)sessionFromRequestIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
  v6 = [activeSessions copy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        request = [v13 request];
        identifier = [request identifier];
        isEqualToString = objc_msgSend_isEqualToString_(identifier);

        if (isEqualToString)
        {
          v17 = v13;

          v10 = v17;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)cancelRequest:(id)request
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (request)
  {
    identifier = [request identifier];
    v5 = [(WFRemoteExecutionCoordinator *)self sessionFromRequestIdentifier:identifier];

    if (v5)
    {
      v7[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
      [(WFRemoteExecutionCoordinator *)self cancelSessions:v6];
    }
  }
}

- (void)cancelSessions:(id)sessions
{
  v30 = *MEMORY[0x1E69E9840];
  sessionsCopy = sessions;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [sessionsCopy countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 136315650;
    v17 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(sessionsCopy);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        completionsForSessions = [(WFRemoteExecutionCoordinator *)self completionsForSessions];
        [completionsForSessions removeObjectForKey:v10];

        service = [(WFRemoteExecutionCoordinator *)self service];
        idsIdentifier = [v10 idsIdentifier];
        v18 = 0;
        v14 = [service cancelIdentifier:idsIdentifier error:&v18];
        v15 = v18;

        if ((v14 & 1) == 0)
        {
          v16 = getWFRemoteExecutionLogObject();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = v17;
            v24 = "[WFRemoteExecutionCoordinator cancelSessions:]";
            v25 = 2114;
            v26 = v10;
            v27 = 2114;
            v28 = v15;
            _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_INFO, "%s Cancelling session: %{public}@ failed with error: %{public}@", buf, 0x20u);
          }
        }

        [v10 finish];

        ++v9;
      }

      while (v7 != v9);
      v7 = [sessionsCopy countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v7);
  }
}

- (void)cancelPendingFileTransfers
{
  v3 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
  [(WFRemoteExecutionCoordinator *)self cancelSessions:v3];
}

- (void)cancelAllSessions
{
  activeSessions = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [(WFRemoteExecutionCoordinator *)self cancelSessions:activeSessions];
}

- (id)initAndAllowRunRequests:(BOOL)requests
{
  v17.receiver = self;
  v17.super_class = WFRemoteExecutionCoordinator;
  v4 = [(WFRemoteExecutionCoordinator *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_allowRunRequests = requests;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);

    v8 = dispatch_queue_create("com.apple.shortcuts.remote-execution", v7);
    queue = v5->_queue;
    v5->_queue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeSessions = v5->_activeSessions;
    v5->_activeSessions = v10;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    completionsForSessions = v5->_completionsForSessions;
    v5->_completionsForSessions = strongToStrongObjectsMapTable;

    service = [(WFRemoteExecutionCoordinator *)v5 service];
    v15 = v5;
  }

  return v5;
}

+ (id)sharedCoordinator
{
  if (sharedCoordinator_onceToken != -1)
  {
    dispatch_once(&sharedCoordinator_onceToken, &__block_literal_global_14470);
  }

  v3 = sharedCoordinator_sharedCoordinator;

  return v3;
}

void __49__WFRemoteExecutionCoordinator_sharedCoordinator__block_invoke()
{
  v0 = [[WFRemoteExecutionCoordinator alloc] initAndAllowRunRequests:0];
  v1 = sharedCoordinator_sharedCoordinator;
  sharedCoordinator_sharedCoordinator = v0;
}

@end