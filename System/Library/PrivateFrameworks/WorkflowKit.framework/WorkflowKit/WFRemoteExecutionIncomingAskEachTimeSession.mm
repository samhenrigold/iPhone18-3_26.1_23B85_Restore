@interface WFRemoteExecutionIncomingAskEachTimeSession
- (id)missingParameterError;
- (void)finishWithError:(id)error;
- (void)handleIncomingProtobuf:(id)protobuf currentlyActiveSessions:(id)sessions responseDestinations:(id)destinations responseOptions:(id)options;
- (void)handleTimeout;
- (void)sendResponse:(id)response destinations:(id)destinations options:(id)options;
@end

@implementation WFRemoteExecutionIncomingAskEachTimeSession

- (id)missingParameterError
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v8[0] = *MEMORY[0x1E696A588];
  v3 = WFLocalizedString(@"Could Not Run Action");
  v9[0] = v3;
  v8[1] = *MEMORY[0x1E696A578];
  v4 = WFLocalizedString(@"An error occurred while executing an action on your iPhone");
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [v2 errorWithDomain:@"WFRemoteExecutionCoordinatorErrorDomain" code:3 userInfo:v5];

  return v6;
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  [(WFRemoteExecutionSession *)self finish];
  lastKnownDestinations = [(WFRemoteExecutionIncomingAskEachTimeSession *)self lastKnownDestinations];
  if (lastKnownDestinations)
  {
    v5 = lastKnownDestinations;
    request = [(WFRemoteExecutionSession *)self request];

    if (request)
    {
      v7 = [WFRemoteExecutionAskEachTimeRequestResponse alloc];
      request2 = [(WFRemoteExecutionSession *)self request];
      identifier = [request2 identifier];
      v10 = [(WFRemoteExecutionAskEachTimeRequestResponse *)v7 initWithOriginatingRequestIdentifier:identifier inputtedStates:0 error:errorCopy];

      lastKnownDestinations2 = [(WFRemoteExecutionIncomingAskEachTimeSession *)self lastKnownDestinations];
      lastKnownOptions = [(WFRemoteExecutionIncomingAskEachTimeSession *)self lastKnownOptions];
      [(WFRemoteExecutionIncomingAskEachTimeSession *)self sendResponse:v10 destinations:lastKnownDestinations2 options:lastKnownOptions];
    }
  }
}

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:203];

  [(WFRemoteExecutionSession *)self finish];
}

- (void)sendResponse:(id)response destinations:(id)destinations options:(id)options
{
  v36 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  destinationsCopy = destinations;
  optionsCopy = options;
  if (responseCopy)
  {
    if (destinationsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingAskEachTimeSession.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"response"}];

    if (destinationsCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingAskEachTimeSession.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"destinations"}];

LABEL_3:
  [(WFRemoteExecutionIncomingAskEachTimeSession *)self setLastKnownDestinations:destinationsCopy];
  [(WFRemoteExecutionIncomingAskEachTimeSession *)self setLastKnownOptions:optionsCopy];
  v12 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v31 = 0;
  v13 = [responseCopy writeTo:v12 error:&v31];
  v14 = v31;
  v15 = v14;
  if (v13)
  {
    v28 = v14;
    v16 = objc_alloc(MEMORY[0x1E69A5388]);
    immutableData = [v12 immutableData];
    v18 = [v16 initWithProtobufData:immutableData type:6 isResponse:0];

    service = [(WFRemoteExecutionSession *)self service];
    v29 = 0;
    v30 = 0;
    v20 = [service sendProtobuf:v18 toDestinations:destinationsCopy priority:300 options:optionsCopy identifier:&v30 error:&v29];
    v21 = v30;
    v22 = v29;

    if (v20)
    {
      [(WFRemoteExecutionSession *)self setIdsIdentifier:v21];
      v23 = 202;
    }

    else
    {
      v25 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v33 = "[WFRemoteExecutionIncomingAskEachTimeSession sendResponse:destinations:options:]";
        v34 = 2114;
        v35 = v22;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s Failed to send ask each time request response: %{public}@", buf, 0x16u);
      }

      v23 = 1;
    }

    v15 = v28;
    [(WFRemoteExecutionSession *)self setState:v23];
  }

  else
  {
    v24 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v33 = "[WFRemoteExecutionIncomingAskEachTimeSession sendResponse:destinations:options:]";
      v34 = 2114;
      v35 = v15;
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_FAULT, "%s Failed to write response for ask each time request: %{public}@", buf, 0x16u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
  }
}

- (void)handleIncomingProtobuf:(id)protobuf currentlyActiveSessions:(id)sessions responseDestinations:(id)destinations responseOptions:(id)options
{
  v131 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  sessionsCopy = sessions;
  destinationsCopy = destinations;
  optionsCopy = options;
  if (!protobufCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingAskEachTimeSession.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"protobuf"}];

    if (destinationsCopy)
    {
      goto LABEL_3;
    }

LABEL_69:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingAskEachTimeSession.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"destinations"}];

    goto LABEL_3;
  }

  if (!destinationsCopy)
  {
    goto LABEL_69;
  }

LABEL_3:
  [(WFRemoteExecutionIncomingAskEachTimeSession *)self setLastKnownDestinations:destinationsCopy];
  [(WFRemoteExecutionIncomingAskEachTimeSession *)self setLastKnownOptions:optionsCopy];
  [(WFRemoteExecutionSession *)self setState:200];
  v15 = [WFRemoteExecutionAskEachTimeRequest alloc];
  data = [protobufCopy data];
  v119 = 0;
  v17 = [(WFRemoteExecutionAskEachTimeRequest *)v15 initWithData:data error:&v119];
  v18 = v119;

  v100 = v17;
  if (!v17)
  {
    v69 = [WFRemoteExecutionRequest isUnsupportedVersionError:v18];
    v70 = getWFRemoteExecutionLogObject();
    v71 = v70;
    if (v69)
    {
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v124 = "[WFRemoteExecutionIncomingAskEachTimeSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:responseOptions:]";
        _os_log_impl(&dword_1CA256000, v71, OS_LOG_TYPE_ERROR, "%s Encountered unsupported version of ask each time request", buf, 0xCu);
      }

      [(WFRemoteExecutionSession *)self setState:2];
      data2 = [protobufCopy data];
      v118 = 0;
      v73 = [WFRemoteExecutionRequest identifierFromData:data2 error:&v118];
      v74 = v118;

      v75 = getWFRemoteExecutionLogObject();
      v76 = v75;
      if (v73)
      {
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v124 = "[WFRemoteExecutionIncomingAskEachTimeSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:responseOptions:]";
          _os_log_impl(&dword_1CA256000, v76, OS_LOG_TYPE_DEFAULT, "%s Sending unsupported version of ask each time request back", buf, 0xCu);
        }

        v77 = [[WFRemoteExecutionAskEachTimeRequestResponse alloc] initWithOriginatingRequestIdentifier:v73 inputtedStates:0 error:v18];
        [(WFRemoteExecutionIncomingAskEachTimeSession *)self sendResponse:v77 destinations:destinationsCopy options:optionsCopy];
      }

      else
      {
        if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v124 = "[WFRemoteExecutionIncomingAskEachTimeSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:responseOptions:]";
          v125 = 2112;
          v126 = v74;
          _os_log_impl(&dword_1CA256000, v76, OS_LOG_TYPE_FAULT, "%s Unable to read identifier from base request: %@, so unable to send unsupported version error back", buf, 0x16u);
        }

        [(WFRemoteExecutionSession *)self finish];
      }
    }

    else
    {
      if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v124 = "[WFRemoteExecutionIncomingAskEachTimeSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:responseOptions:]";
        v125 = 2114;
        v126 = v18;
        _os_log_impl(&dword_1CA256000, v71, OS_LOG_TYPE_FAULT, "%s Failed to read incoming ask each time protobuf: %{public}@", buf, 0x16u);
      }

      [(WFRemoteExecutionSession *)self setState:1];
    }

    goto LABEL_67;
  }

  v93 = v18;
  v94 = optionsCopy;
  v95 = destinationsCopy;
  v96 = sessionsCopy;
  v97 = protobufCopy;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v19 = sessionsCopy;
  v20 = [v19 countByEnumeratingWithState:&v114 objects:v122 count:16];
  if (!v20)
  {

    goto LABEL_52;
  }

  v21 = v20;
  selfCopy = self;
  v99 = 0;
  v22 = *v115;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v115 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v114 + 1) + 8 * i);
      v25 = objc_opt_class();
      v26 = v24;
      if (v26)
      {
        if (objc_opt_isKindOfClass())
        {
          request = [v26 request];
          identifier = [request identifier];
          associatedRunRequestIdentifier = [v100 associatedRunRequestIdentifier];
          isEqualToString = objc_msgSend_isEqualToString_(identifier);

          if (!isEqualToString)
          {
            goto LABEL_17;
          }

          v31 = v26;
          v26 = v99;
          v99 = v31;
        }

        else
        {
          v32 = getWFGeneralLogObject();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            v33 = objc_opt_class();
            *buf = 136315906;
            v124 = "WFEnforceClass";
            v125 = 2114;
            v126 = v26;
            v127 = 2114;
            v128 = v33;
            v129 = 2114;
            v130 = v25;
            v34 = v33;
            _os_log_impl(&dword_1CA256000, v32, OS_LOG_TYPE_FAULT, "%s Encountered unsupported version of ask each time request", buf, 0x2Au);
          }

          v31 = 0;
        }

        v26 = v31;
      }

LABEL_17:
    }

    v21 = [v19 countByEnumeratingWithState:&v114 objects:v122 count:16];
  }

  while (v21);

  if (!v99)
  {
LABEL_52:
    [(WFRemoteExecutionSession *)self setState:-420];
    [(WFRemoteExecutionSession *)self finish];
    sessionsCopy = v96;
    protobufCopy = v97;
    optionsCopy = v94;
    destinationsCopy = v95;
    goto LABEL_66;
  }

  [(WFRemoteExecutionSession *)self setRequest:v100];
  v35 = +[WFActionRegistry sharedRegistry];
  actionIdentifier = [v100 actionIdentifier];
  actionSerializedParameters = [v100 actionSerializedParameters];
  v38 = [v35 createActionWithIdentifier:actionIdentifier serializedParameters:actionSerializedParameters];

  [v38 initializeParametersIfNecessary];
  [v100 inflateParameterStatesWithAction:v38];
  parameterKeys = [v100 parameterKeys];
  v40 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v41 = parameterKeys;
  v42 = [v41 countByEnumeratingWithState:&v110 objects:v121 count:16];
  obj = v41;
  if (v42)
  {
    v43 = v42;
    v44 = *v111;
    while (2)
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v111 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v110 + 1) + 8 * j);
        v47 = [v38 parameterForKey:v46];
        possibleStatesByParameterKey = [v100 possibleStatesByParameterKey];
        allKeys = [possibleStatesByParameterKey allKeys];
        v50 = [allKeys containsObject:v46];

        if (v50)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v51 = v47;
            possibleStatesByParameterKey2 = [v100 possibleStatesByParameterKey];
            v53 = [possibleStatesByParameterKey2 objectForKey:v46];
            [v51 setPossibleStatesFromRemoteSource:v53];
          }
        }

        if (!v47)
        {
          v78 = getWFRemoteExecutionLogObject();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            parameters = [v38 parameters];
            *buf = 136315650;
            v124 = "[WFRemoteExecutionIncomingAskEachTimeSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:responseOptions:]";
            v125 = 2114;
            v126 = v46;
            v127 = 2114;
            v128 = parameters;
            _os_log_impl(&dword_1CA256000, v78, OS_LOG_TYPE_ERROR, "%s Ask Each Time request needs to resolve parameter (%{public}@) but the parameter is nil. action parameters: %{public}@", buf, 0x20u);
          }

          [(WFRemoteExecutionSession *)selfCopy setState:1];
          v80 = [WFRemoteExecutionAskEachTimeRequestResponse alloc];
          identifier2 = [v100 identifier];
          missingParameterError = [(WFRemoteExecutionIncomingAskEachTimeSession *)selfCopy missingParameterError];
          v83 = [(WFRemoteExecutionAskEachTimeRequestResponse *)v80 initWithOriginatingRequestIdentifier:identifier2 inputtedStates:0 error:missingParameterError];

          optionsCopy = v94;
          destinationsCopy = v95;
          [(WFRemoteExecutionIncomingAskEachTimeSession *)selfCopy sendResponse:v83 destinations:v95 options:v94];

          protobufCopy = v97;
          v84 = obj;
          v56 = obj;
          sessionsCopy = v96;
          v68 = v99;
          goto LABEL_65;
        }

        [v40 addObject:v47];
      }

      v41 = obj;
      v43 = [obj countByEnumeratingWithState:&v110 objects:v121 count:16];
      if (v43)
      {
        continue;
      }

      break;
    }
  }

  [(WFRemoteExecutionSession *)selfCopy setState:201];
  userInterface = [v99 userInterface];
  isRunningWithSiriUI = [userInterface isRunningWithSiriUI];

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v56 = v40;
  v57 = [v56 countByEnumeratingWithState:&v106 objects:v120 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v107;
    while (2)
    {
      for (k = 0; k != v58; ++k)
      {
        if (*v107 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v106 + 1) + 8 * k);
        parameterInputProvider = [v99 parameterInputProvider];
        LOBYTE(v61) = isRunningWithSiriUI | ~[parameterInputProvider action:v38 canProvideInputForParameter:v61];

        if (v61)
        {
          v85 = [WFRemoteExecutionAskEachTimeRequestResponse alloc];
          identifier3 = [v100 identifier];
          userCancelledError = [MEMORY[0x1E696ABC0] userCancelledError];
          v88 = [(WFRemoteExecutionAskEachTimeRequestResponse *)v85 initWithOriginatingRequestIdentifier:identifier3 inputtedStates:0 error:userCancelledError];

          optionsCopy = v94;
          destinationsCopy = v95;
          [(WFRemoteExecutionIncomingAskEachTimeSession *)selfCopy sendResponse:v88 destinations:v95 options:v94];
          wfUnsupportedUserInterfaceError = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
          v68 = v99;
          [v99 finishWithError:wfUnsupportedUserInterfaceError];

          goto LABEL_64;
        }
      }

      v58 = [v56 countByEnumeratingWithState:&v106 objects:v120 count:16];
      if (v58)
      {
        continue;
      }

      break;
    }
  }

  parameterInputProvider2 = [v99 parameterInputProvider];
  parameterKeysAndStates = [v100 parameterKeysAndStates];
  v65 = parameterKeysAndStates;
  v66 = MEMORY[0x1E695E0F8];
  if (parameterKeysAndStates)
  {
    v67 = parameterKeysAndStates;
  }

  else
  {
    v67 = MEMORY[0x1E695E0F8];
  }

  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __131__WFRemoteExecutionIncomingAskEachTimeSession_handleIncomingProtobuf_currentlyActiveSessions_responseDestinations_responseOptions___block_invoke;
  v101[3] = &unk_1E837B800;
  v102 = v100;
  v103 = selfCopy;
  destinationsCopy = v95;
  v104 = v95;
  v105 = v94;
  [parameterInputProvider2 action:v38 provideInputForParameters:v56 withDefaultStates:v67 prompts:v66 completionHandler:v101];

  optionsCopy = v94;
  v68 = v99;

  v56 = v102;
LABEL_64:
  sessionsCopy = v96;
  protobufCopy = v97;
  v84 = obj;
LABEL_65:

LABEL_66:
  v18 = v93;
LABEL_67:
}

void __131__WFRemoteExecutionIncomingAskEachTimeSession_handleIncomingProtobuf_currentlyActiveSessions_responseDestinations_responseOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [WFRemoteExecutionAskEachTimeRequestResponse alloc];
  v8 = [*(a1 + 32) identifier];
  v9 = [(WFRemoteExecutionAskEachTimeRequestResponse *)v7 initWithOriginatingRequestIdentifier:v8 inputtedStates:v6 error:v5];

  [*(a1 + 40) sendResponse:v9 destinations:*(a1 + 48) options:*(a1 + 56)];
}

@end