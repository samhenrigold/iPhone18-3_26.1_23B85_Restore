@interface WFRemoteExecutionOutgoingRunRequestResponseSession
- (WFRemoteExecutionOutgoingRunRequestResponseSession)initWithService:(id)service responseData:(id)data;
- (void)handleTimeout;
- (void)sendToDestinations:(id)destinations options:(id)options;
@end

@implementation WFRemoteExecutionOutgoingRunRequestResponseSession

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:104];

  [(WFRemoteExecutionSession *)self finish];
}

- (void)sendToDestinations:(id)destinations options:(id)options
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = WFRemoteExecutionOutgoingRunRequestResponseSession;
  optionsCopy = options;
  destinationsCopy = destinations;
  [(WFRemoteExecutionSession *)&v19 sendToDestinations:destinationsCopy options:optionsCopy];
  [(WFRemoteExecutionSession *)self setState:100];
  v8 = objc_alloc(MEMORY[0x1E69A5388]);
  responseData = [(WFRemoteExecutionOutgoingRunRequestResponseSession *)self responseData];
  v10 = [v8 initWithProtobufData:responseData type:2 isResponse:0];

  v11 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[WFRemoteExecutionOutgoingRunRequestResponseSession sendToDestinations:options:]";
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_INFO, "%s sending run request response", buf, 0xCu);
  }

  [(WFRemoteExecutionSession *)self restartTimeout];
  service = [(WFRemoteExecutionSession *)self service];
  v17 = 0;
  v18 = 0;
  v13 = [service sendProtobuf:v10 toDestinations:destinationsCopy priority:300 options:optionsCopy identifier:&v18 error:&v17];

  v14 = v18;
  v15 = v17;

  if (v13)
  {
    [(WFRemoteExecutionSession *)self setIdsIdentifier:v14];
    [(WFRemoteExecutionSession *)self setState:103];
  }

  else
  {
    v16 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[WFRemoteExecutionOutgoingRunRequestResponseSession sendToDestinations:options:]";
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s failed to send run request response with error: %{public}@", buf, 0x16u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionSession *)self finish];
  }
}

- (WFRemoteExecutionOutgoingRunRequestResponseSession)initWithService:(id)service responseData:(id)data
{
  serviceCopy = service;
  dataCopy = data;
  v9 = dataCopy;
  if (serviceCopy)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingRunRequestResponseSession.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"service"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingRunRequestResponseSession.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"responseData"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = WFRemoteExecutionOutgoingRunRequestResponseSession;
  v10 = [(WFRemoteExecutionSession *)&v16 initWithService:serviceCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_responseData, data);
    v12 = v11;
  }

  return v11;
}

@end