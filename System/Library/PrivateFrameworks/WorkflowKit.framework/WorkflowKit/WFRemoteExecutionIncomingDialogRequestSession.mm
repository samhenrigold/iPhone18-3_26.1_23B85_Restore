@interface WFRemoteExecutionIncomingDialogRequestSession
- (void)finishWithError:(id)error;
- (void)handleIncomingProtobuf:(id)protobuf currentlyActiveSessions:(id)sessions destinations:(id)destinations options:(id)options;
- (void)handleTimeout;
- (void)sendResponseWithOriginatingRequestIdentifier:(id)identifier dialogResponse:(id)response error:(id)error destinations:(id)destinations options:(id)options;
- (void)sendToDestinations:(id)destinations options:(id)options;
@end

@implementation WFRemoteExecutionIncomingDialogRequestSession

- (void)sendToDestinations:(id)destinations options:(id)options
{
  v37 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  optionsCopy = options;
  v30.receiver = self;
  v30.super_class = WFRemoteExecutionIncomingDialogRequestSession;
  [(WFRemoteExecutionSession *)&v30 sendToDestinations:destinationsCopy options:optionsCopy];
  v8 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  response = [(WFRemoteExecutionIncomingDialogRequestSession *)self response];
  v29 = 0;
  v10 = [response writeTo:v8 error:&v29];
  v11 = v29;

  if (v10)
  {
    v12 = objc_alloc(MEMORY[0x1E69A5388]);
    immutableData = [v8 immutableData];
    v14 = [v12 initWithProtobufData:immutableData type:11 isResponse:0];

    v15 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      response2 = [(WFRemoteExecutionIncomingDialogRequestSession *)self response];
      identifier = [response2 identifier];
      *buf = 136315394;
      v32 = "[WFRemoteExecutionIncomingDialogRequestSession sendToDestinations:options:]";
      v33 = 2114;
      selfCopy = identifier;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s <%{public}@> sending dialog request response", buf, 0x16u);
    }

    service = [(WFRemoteExecutionSession *)self service];
    v27 = 0;
    v28 = 0;
    v19 = [service sendProtobuf:v14 toDestinations:destinationsCopy priority:300 options:optionsCopy identifier:&v28 error:&v27];
    v20 = v28;
    v21 = v27;

    if (v19)
    {
      [(WFRemoteExecutionSession *)self setIdsIdentifier:v20];
      v22 = 202;
    }

    else
    {
      v26 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v32 = "[WFRemoteExecutionIncomingDialogRequestSession sendToDestinations:options:]";
        v33 = 2114;
        selfCopy = self;
        v35 = 2114;
        v36 = v21;
        _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_ERROR, "%s %{public}@ failed to send with error: %{public}@", buf, 0x20u);
      }

      v22 = 1;
    }

    [(WFRemoteExecutionSession *)self setState:v22];
    [(WFRemoteExecutionSession *)self finish];
  }

  else
  {
    v23 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      response3 = [(WFRemoteExecutionIncomingDialogRequestSession *)self response];
      identifier2 = [response3 identifier];
      *buf = 136315650;
      v32 = "[WFRemoteExecutionIncomingDialogRequestSession sendToDestinations:options:]";
      v33 = 2114;
      selfCopy = identifier2;
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
  }
}

- (void)sendResponseWithOriginatingRequestIdentifier:(id)identifier dialogResponse:(id)response error:(id)error destinations:(id)destinations options:(id)options
{
  optionsCopy = options;
  destinationsCopy = destinations;
  errorCopy = error;
  responseCopy = response;
  identifierCopy = identifier;
  v17 = [[WFRemoteExecutionDialogRequestResponse alloc] initWithOriginatingRequestIdentifier:identifierCopy dialogResponse:responseCopy error:errorCopy];

  [(WFRemoteExecutionIncomingDialogRequestSession *)self setResponse:v17];
  [(WFRemoteExecutionIncomingDialogRequestSession *)self sendToDestinations:destinationsCopy options:optionsCopy];
}

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:203];

  [(WFRemoteExecutionSession *)self finish];
}

- (void)finishWithError:(id)error
{
  [(WFRemoteExecutionSession *)self setState:202];

  [(WFRemoteExecutionSession *)self finish];
}

- (void)handleIncomingProtobuf:(id)protobuf currentlyActiveSessions:(id)sessions destinations:(id)destinations options:(id)options
{
  v92 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  sessionsCopy = sessions;
  destinationsCopy = destinations;
  optionsCopy = options;
  if (protobufCopy)
  {
    if (destinationsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingDialogRequestSession.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"protobuf"}];

    if (destinationsCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingDialogRequestSession.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"responseDestinations"}];

LABEL_3:
  [(WFRemoteExecutionSession *)self setState:200];
  v15 = [WFRemoteExecutionDialogRequest alloc];
  data = [protobufCopy data];
  v82 = 0;
  v17 = [(WFRemoteExecutionDialogRequest *)v15 initWithData:data error:&v82];
  v18 = v82;

  if (v17)
  {
    v70 = v18;
    v71 = optionsCopy;
    selfCopy = self;
    [(WFRemoteExecutionSession *)self setRequest:v17];
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v19 = sessionsCopy;
    v20 = [v19 countByEnumeratingWithState:&v77 objects:v83 count:16];
    if (!v20)
    {

      goto LABEL_33;
    }

    v21 = v20;
    v66 = protobufCopy;
    v67 = destinationsCopy;
    v65 = sessionsCopy;
    v72 = 0;
    v22 = *v78;
    v23 = off_1E836F000;
LABEL_6:
    v24 = 0;
    v73 = v21;
    while (1)
    {
      if (*v78 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v25 = *(*(&v77 + 1) + 8 * v24);
      v26 = objc_opt_class();
      v27 = v25;
      if (!v27)
      {
        goto LABEL_18;
      }

      if (objc_opt_isKindOfClass())
      {
        v28 = v23;
        v29 = v19;
        request = [v27 request];
        identifier = [request identifier];
        v32 = v17;
        runRequestIdentifier = [(WFRemoteExecutionDialogRequest *)v17 runRequestIdentifier];
        isEqualToString = objc_msgSend_isEqualToString_(identifier);

        if (!isEqualToString)
        {
          v17 = v32;
          v19 = v29;
          v23 = v28;
          v21 = v73;
          goto LABEL_18;
        }

        v35 = v27;
        v27 = v72;
        v72 = v35;
        v17 = v32;
        v19 = v29;
        v23 = v28;
        v21 = v73;
      }

      else
      {
        v36 = getWFGeneralLogObject();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          v37 = objc_opt_class();
          *buf = 136315906;
          v85 = "WFEnforceClass";
          v86 = 2114;
          v87 = v27;
          v88 = 2114;
          v89 = v37;
          v90 = 2114;
          v91 = v26;
          v38 = v37;
          _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_FAULT, "%s Encountered unsupported version of dialog request", buf, 0x2Au);
        }

        v35 = 0;
      }

      v27 = v35;
LABEL_18:

      if (v21 == ++v24)
      {
        v21 = [v19 countByEnumeratingWithState:&v77 objects:v83 count:16];
        if (!v21)
        {

          sessionsCopy = v65;
          protobufCopy = v66;
          destinationsCopy = v67;
          v39 = v72;
          if (v72)
          {
            v18 = v70;
            if (VCIsDeviceLocked())
            {
              [(WFRemoteExecutionSession *)selfCopy setState:1];
              v40 = getWFRemoteExecutionLogObject();
              optionsCopy = v71;
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v85 = "[WFRemoteExecutionIncomingDialogRequestSession handleIncomingProtobuf:currentlyActiveSessions:destinations:options:]";
                _os_log_impl(&dword_1CA256000, v40, OS_LOG_TYPE_ERROR, "%s Found a outgoing run request session to show the alert in, but the device is locked", buf, 0xCu);
              }

              wfUnsupportedUserInterfaceError = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
              [v72 finishWithError:wfUnsupportedUserInterfaceError];
            }

            else
            {
              userInterface = [v72 userInterface];
              v51 = objc_opt_respondsToSelector();

              optionsCopy = v71;
              if (v51)
              {
                userInterface2 = [v72 userInterface];
                dialogTransformer = [userInterface2 dialogTransformer];

                userInterfacePresenter = [dialogTransformer userInterfacePresenter];

                if (userInterfacePresenter)
                {
                  [dialogTransformer userInterfacePresenter];
                  v56 = v55 = v17;
                  dialogRequest = [(WFRemoteExecutionDialogRequest *)v55 dialogRequest];
                  runningContext = [dialogTransformer runningContext];
                  v74[0] = MEMORY[0x1E69E9820];
                  v74[1] = 3221225472;
                  v74[2] = __117__WFRemoteExecutionIncomingDialogRequestSession_handleIncomingProtobuf_currentlyActiveSessions_destinations_options___block_invoke;
                  v74[3] = &unk_1E83771B0;
                  v74[4] = selfCopy;
                  v75 = v67;
                  v76 = v71;
                  [v56 showDialogRequest:dialogRequest runningContext:runningContext completionHandler:v74];

                  v17 = v55;
                  v39 = v72;
                }

                else
                {
                  v61 = getWFRemoteExecutionLogObject();
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    v85 = "[WFRemoteExecutionIncomingDialogRequestSession handleIncomingProtobuf:currentlyActiveSessions:destinations:options:]";
                    _os_log_impl(&dword_1CA256000, v61, OS_LOG_TYPE_DEFAULT, "%s Unable to handle dialog request locally, need to handoff", buf, 0xCu);
                  }

                  wfUnsupportedUserInterfaceError2 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
                  [v72 finishWithError:wfUnsupportedUserInterfaceError2];

                  [(WFRemoteExecutionSession *)selfCopy finish];
                }
              }

              else
              {
                v59 = getWFRemoteExecutionLogObject();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v85 = "[WFRemoteExecutionIncomingDialogRequestSession handleIncomingProtobuf:currentlyActiveSessions:destinations:options:]";
                  _os_log_impl(&dword_1CA256000, v59, OS_LOG_TYPE_DEFAULT, "%s Unable to handle dialog request locally, need to handoff", buf, 0xCu);
                }

                wfUnsupportedUserInterfaceError3 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
                [v72 finishWithError:wfUnsupportedUserInterfaceError3];

                [(WFRemoteExecutionSession *)selfCopy finish];
              }
            }

            goto LABEL_52;
          }

LABEL_33:
          [(WFRemoteExecutionSession *)selfCopy setState:-420];
          [(WFRemoteExecutionSession *)selfCopy finish];
          v18 = v70;
          optionsCopy = v71;
          goto LABEL_52;
        }

        goto LABEL_6;
      }
    }
  }

  v42 = [WFRemoteExecutionRequest isUnsupportedVersionError:v18];
  v43 = getWFRemoteExecutionLogObject();
  v44 = os_log_type_enabled(v43, OS_LOG_TYPE_FAULT);
  if (v42)
  {
    v68 = destinationsCopy;
    if (v44)
    {
      *buf = 136315138;
      v85 = "[WFRemoteExecutionIncomingDialogRequestSession handleIncomingProtobuf:currentlyActiveSessions:destinations:options:]";
      _os_log_impl(&dword_1CA256000, v43, OS_LOG_TYPE_FAULT, "%s Encountered unsupported version of dialog request", buf, 0xCu);
    }

    [(WFRemoteExecutionSession *)self setState:2];
    data2 = [protobufCopy data];
    v81 = 0;
    v46 = [WFRemoteExecutionRequest identifierFromData:data2 error:&v81];
    v47 = v81;

    v48 = getWFRemoteExecutionLogObject();
    v49 = v48;
    if (v46)
    {
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v85 = "[WFRemoteExecutionIncomingDialogRequestSession handleIncomingProtobuf:currentlyActiveSessions:destinations:options:]";
        _os_log_impl(&dword_1CA256000, v49, OS_LOG_TYPE_DEFAULT, "%s Sending unsupported dialog request error back", buf, 0xCu);
      }

      destinationsCopy = v68;
      [(WFRemoteExecutionIncomingDialogRequestSession *)self sendResponseWithOriginatingRequestIdentifier:v46 dialogResponse:0 error:v18 destinations:v68 options:optionsCopy];
    }

    else
    {
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v85 = "[WFRemoteExecutionIncomingDialogRequestSession handleIncomingProtobuf:currentlyActiveSessions:destinations:options:]";
        v86 = 2112;
        v87 = v47;
        _os_log_impl(&dword_1CA256000, v49, OS_LOG_TYPE_FAULT, "%s Unable to read identifier from base request: %@, so unable to send unsupported version error back", buf, 0x16u);
      }

      [(WFRemoteExecutionSession *)self finish];
      destinationsCopy = v68;
    }

    v17 = 0;
  }

  else
  {
    if (v44)
    {
      *buf = 136315394;
      v85 = "[WFRemoteExecutionIncomingDialogRequestSession handleIncomingProtobuf:currentlyActiveSessions:destinations:options:]";
      v86 = 2114;
      v87 = v18;
      _os_log_impl(&dword_1CA256000, v43, OS_LOG_TYPE_FAULT, "%s failed to read incoming dialog request from data, error: %{public}@", buf, 0x16u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionSession *)self finish];
  }

LABEL_52:
}

void __117__WFRemoteExecutionIncomingDialogRequestSession_handleIncomingProtobuf_currentlyActiveSessions_destinations_options___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  v9 = [v5 request];
  v8 = [v9 identifier];
  [v5 sendResponseWithOriginatingRequestIdentifier:v8 dialogResponse:v7 error:v6 destinations:a1[5] options:a1[6]];
}

@end