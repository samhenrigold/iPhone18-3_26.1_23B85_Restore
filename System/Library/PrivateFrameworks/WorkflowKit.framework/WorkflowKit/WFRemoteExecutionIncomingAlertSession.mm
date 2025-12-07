@interface WFRemoteExecutionIncomingAlertSession
- (void)finishWithError:(id)error;
- (void)handleIncomingProtobuf:(id)protobuf currentlyActiveSessions:(id)sessions responseDestinations:(id)destinations options:(id)options;
- (void)handleTimeout;
- (void)sendSelectedButton:(id)button forAlertWithIdentifier:(id)identifier error:(id)error destinations:(id)destinations options:(id)options;
@end

@implementation WFRemoteExecutionIncomingAlertSession

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:203];

  [(WFRemoteExecutionSession *)self finish];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  [(WFRemoteExecutionSession *)self finish];
  lastKnownDestinations = [(WFRemoteExecutionIncomingAlertSession *)self lastKnownDestinations];

  if (lastKnownDestinations)
  {
    request = [(WFRemoteExecutionSession *)self request];
    identifier = [request identifier];
    lastKnownDestinations2 = [(WFRemoteExecutionIncomingAlertSession *)self lastKnownDestinations];
    lastKnownOptions = [(WFRemoteExecutionIncomingAlertSession *)self lastKnownOptions];
    [(WFRemoteExecutionIncomingAlertSession *)self sendSelectedButton:0 forAlertWithIdentifier:identifier error:errorCopy destinations:lastKnownDestinations2 options:lastKnownOptions];
  }
}

- (void)sendSelectedButton:(id)button forAlertWithIdentifier:(id)identifier error:(id)error destinations:(id)destinations options:(id)options
{
  v50 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  identifierCopy = identifier;
  errorCopy = error;
  destinationsCopy = destinations;
  optionsCopy = options;
  if (identifierCopy)
  {
    if (destinationsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingAlertSession.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (destinationsCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingAlertSession.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"destinations"}];

LABEL_3:
  [(WFRemoteExecutionSession *)self setState:201];
  v17 = [[WFRemoteExecutionAlertRequestResponse alloc] initWithSelectedButton:buttonCopy requestIdentifier:identifierCopy error:errorCopy];
  v18 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v41 = 0;
  v19 = [(WFRemoteExecutionRequest *)v17 writeTo:v18 error:&v41];
  v20 = v41;
  if (v19)
  {
    v36 = errorCopy;
    v21 = objc_alloc(MEMORY[0x1E69A5388]);
    immutableData = [v18 immutableData];
    v23 = [v21 initWithProtobufData:immutableData type:4 isResponse:0];

    v24 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      identifier = [(WFRemoteExecutionRequest *)v17 identifier];
      *buf = 136315906;
      v43 = "[WFRemoteExecutionIncomingAlertSession sendSelectedButton:forAlertWithIdentifier:error:destinations:options:]";
      v44 = 2114;
      v45 = identifier;
      v46 = 2114;
      v47 = identifierCopy;
      v48 = 2114;
      v49 = buttonCopy;
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_INFO, "%s <%{public}@> sending response for alert (%{public}@) with selected button: %{public}@", buf, 0x2Au);
    }

    v37 = buttonCopy;

    [(WFRemoteExecutionSession *)self restartTimeout];
    service = [(WFRemoteExecutionSession *)self service];
    v39 = 0;
    v40 = 0;
    v35 = v23;
    v27 = [service sendProtobuf:v23 toDestinations:destinationsCopy priority:300 options:optionsCopy identifier:&v40 error:&v39];
    v28 = v40;
    v29 = v39;

    if (v27)
    {
      [(WFRemoteExecutionSession *)self setIdsIdentifier:v28];
      [(WFRemoteExecutionSession *)self setState:202];
      [(WFRemoteExecutionSession *)self finish];
    }

    else
    {
      v31 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        identifier2 = [(WFRemoteExecutionRequest *)v17 identifier];
        *buf = 136315650;
        v43 = "[WFRemoteExecutionIncomingAlertSession sendSelectedButton:forAlertWithIdentifier:error:destinations:options:]";
        v44 = 2114;
        v45 = identifier2;
        v46 = 2114;
        v47 = v29;
        _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_FAULT, "%s <%{public}@> Failed to send alert response: %{public}@", buf, 0x20u);
      }

      [(WFRemoteExecutionSession *)self setState:1];
    }

    errorCopy = v36;
    buttonCopy = v37;
  }

  else
  {
    v30 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v43 = "[WFRemoteExecutionIncomingAlertSession sendSelectedButton:forAlertWithIdentifier:error:destinations:options:]";
      v44 = 2114;
      v45 = v20;
      _os_log_impl(&dword_1CA256000, v30, OS_LOG_TYPE_FAULT, "%s failed to write alert response protobuf: %{public}@", buf, 0x16u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
  }
}

- (void)handleIncomingProtobuf:(id)protobuf currentlyActiveSessions:(id)sessions responseDestinations:(id)destinations options:(id)options
{
  v75 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  sessionsCopy = sessions;
  destinationsCopy = destinations;
  optionsCopy = options;
  [(WFRemoteExecutionIncomingAlertSession *)self setLastKnownDestinations:destinationsCopy];
  [(WFRemoteExecutionIncomingAlertSession *)self setLastKnownOptions:optionsCopy];
  selfCopy = self;
  [(WFRemoteExecutionSession *)self setState:200];
  v14 = objc_alloc(MEMORY[0x1E69C65B8]);
  data = [protobufCopy data];
  v16 = [v14 initWithData:data];

  v65 = 0;
  v56 = objc_alloc_init(WFRemoteExecutionAlertRequest);
  LOBYTE(v14) = [(WFRemoteExecutionRequest *)v56 readFrom:v16 error:&v65];
  v17 = v65;
  if (v14)
  {
    goto LABEL_6;
  }

  v18 = [WFRemoteExecutionRequest isUnsupportedVersionError:v17];
  v19 = getWFRemoteExecutionLogObject();
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v68 = "[WFRemoteExecutionIncomingAlertSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:options:]";
      _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s Encountered unsupported version of an alert request", buf, 0xCu);
    }

    [(WFRemoteExecutionSession *)selfCopy setState:2];
LABEL_6:
    v53 = v17;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v21 = sessionsCopy;
    v22 = [v21 countByEnumeratingWithState:&v61 objects:v66 count:16];
    if (!v22)
    {

      goto LABEL_25;
    }

    v23 = v22;
    v52 = v16;
    v49 = optionsCopy;
    v50 = destinationsCopy;
    v51 = sessionsCopy;
    v55 = 0;
    v24 = *v62;
LABEL_8:
    v25 = 0;
    while (1)
    {
      if (*v62 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v61 + 1) + 8 * v25);
      v27 = objc_opt_class();
      v28 = v26;
      if (!v28)
      {
        goto LABEL_19;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      request = [v28 request];
      identifier = [request identifier];
      associatedRunRequestIdentifier = [(WFRemoteExecutionAlertRequest *)v56 associatedRunRequestIdentifier];
      isEqualToString = objc_msgSend_isEqualToString_(identifier);

      if (isEqualToString)
      {
        v33 = v28;
        v28 = v55;
        v55 = v33;
LABEL_18:

        v28 = v33;
      }

LABEL_19:

      if (v23 == ++v25)
      {
        v23 = [v21 countByEnumeratingWithState:&v61 objects:v66 count:16];
        if (!v23)
        {

          sessionsCopy = v51;
          optionsCopy = v49;
          destinationsCopy = v50;
          v16 = v52;
          v37 = v55;
          if (v55)
          {
            v17 = v53;
            if ([(WFRemoteExecutionSession *)selfCopy state]== 2)
            {
              [v55 finishWithError:v53];
            }

            else if (VCIsDeviceLocked())
            {
              [(WFRemoteExecutionSession *)selfCopy setState:1];
              v38 = getWFRemoteExecutionLogObject();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v68 = "[WFRemoteExecutionIncomingAlertSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:options:]";
                _os_log_impl(&dword_1CA256000, v38, OS_LOG_TYPE_ERROR, "%s Found a outgoing run request session to show the alert in, but the device is locked", buf, 0xCu);
              }

              wfUnsupportedUserInterfaceError = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
              [v55 finishWithError:wfUnsupportedUserInterfaceError];
            }

            else
            {
              v57[0] = MEMORY[0x1E69E9820];
              v57[1] = 3221225472;
              v57[2] = __117__WFRemoteExecutionIncomingAlertSession_handleIncomingProtobuf_currentlyActiveSessions_responseDestinations_options___block_invoke;
              v57[3] = &unk_1E8377D48;
              v57[4] = selfCopy;
              v40 = v56;
              v58 = v40;
              v41 = v50;
              v59 = v41;
              v42 = v49;
              v60 = v42;
              [(WFRemoteExecutionAlertRequest *)v40 inflateAlertWithBlock:v57];
              [(WFRemoteExecutionSession *)selfCopy setRequest:v40];
              userInterface = [v55 userInterface];
              isRunningWithSiriUI = [userInterface isRunningWithSiriUI];

              if (isRunningWithSiriUI)
              {
                identifier2 = [(WFRemoteExecutionRequest *)v40 identifier];
                userCancelledError = [MEMORY[0x1E696ABC0] userCancelledError];
                [(WFRemoteExecutionIncomingAlertSession *)selfCopy sendSelectedButton:0 forAlertWithIdentifier:identifier2 error:userCancelledError destinations:v41 options:v42];

                wfUnsupportedUserInterfaceError2 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
                v37 = v55;
                [v55 finishWithError:wfUnsupportedUserInterfaceError2];
              }

              else
              {
                v37 = v55;
                wfUnsupportedUserInterfaceError2 = [v55 userInterface];
                alert = [(WFRemoteExecutionAlertRequest *)v40 alert];
                [wfUnsupportedUserInterfaceError2 presentAlert:alert];
              }

              v16 = v52;
            }

            goto LABEL_38;
          }

LABEL_25:
          [(WFRemoteExecutionSession *)selfCopy setState:-420];
          v17 = v53;
          goto LABEL_38;
        }

        goto LABEL_8;
      }
    }

    v34 = getWFGeneralLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      v35 = objc_opt_class();
      *buf = 136315906;
      v68 = "WFEnforceClass";
      v69 = 2114;
      v70 = v28;
      v71 = 2114;
      v72 = v35;
      v73 = 2114;
      v74 = v27;
      v36 = v35;
      _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_FAULT, "%s Encountered unsupported version of an alert request", buf, 0x2Au);
    }

    v33 = 0;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v68 = "[WFRemoteExecutionIncomingAlertSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:options:]";
    v69 = 2114;
    v70 = v17;
    _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, "%s failed to read alert request: %{public}@", buf, 0x16u);
  }

LABEL_38:
}

id __117__WFRemoteExecutionIncomingAlertSession_handleIncomingProtobuf_currentlyActiveSessions_responseDestinations_options___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:{objc_msgSend(v3, "preferredStyle")}];
  v5 = [v3 title];
  [v4 setTitle:v5];

  v6 = [v3 message];
  v19 = v4;
  [v4 setMessage:v6];

  v22 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = v3;
  obj = [v3 buttons];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = MEMORY[0x1E6996C78];
        v13 = [v11 title];
        v14 = [v11 style];
        v15 = [v11 preferred];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __117__WFRemoteExecutionIncomingAlertSession_handleIncomingProtobuf_currentlyActiveSessions_responseDestinations_options___block_invoke_2;
        v23[3] = &unk_1E837C910;
        v16 = *(a1 + 40);
        v23[4] = *(a1 + 32);
        v23[5] = v11;
        v24 = v16;
        v25 = *(a1 + 48);
        v26 = *(a1 + 56);
        v17 = [v12 buttonWithTitle:v13 style:v14 preferred:v15 handler:v23];

        [v22 addObject:v17];
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  [v19 setButtons:v22];

  return v19;
}

void __117__WFRemoteExecutionIncomingAlertSession_handleIncomingProtobuf_currentlyActiveSessions_responseDestinations_options___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) title];
  v3 = [*(a1 + 48) identifier];
  [v2 sendSelectedButton:v4 forAlertWithIdentifier:v3 error:0 destinations:*(a1 + 56) options:*(a1 + 64)];
}

@end