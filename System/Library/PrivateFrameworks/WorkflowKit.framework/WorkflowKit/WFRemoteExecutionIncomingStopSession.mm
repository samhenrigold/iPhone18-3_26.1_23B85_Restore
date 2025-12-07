@interface WFRemoteExecutionIncomingStopSession
- (void)handleIncomingProtobuf:(id)protobuf currentlyActiveSessions:(id)sessions;
@end

@implementation WFRemoteExecutionIncomingStopSession

- (void)handleIncomingProtobuf:(id)protobuf currentlyActiveSessions:(id)sessions
{
  v42 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  sessionsCopy = sessions;
  [(WFRemoteExecutionSession *)self setState:200];
  v8 = objc_alloc(MEMORY[0x1E69C65B8]);
  data = [protobufCopy data];
  v10 = [v8 initWithData:data];

  v11 = objc_alloc_init(WFRemoteExecutionStopRequest);
  v36 = 0;
  LOBYTE(v8) = [(WFRemoteExecutionRequest *)v11 readFrom:v10 error:&v36];
  v12 = v36;
  if (v8)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = sessionsCopy;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v27 = v12;
      v28 = v10;
      selfCopy = self;
      v30 = sessionsCopy;
      v31 = protobufCopy;
      v16 = *v33;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          request = [v18 request];
          identifier = [request identifier];
          requestIdentifier = [(WFRemoteExecutionStopRequest *)v11 requestIdentifier];
          isEqualToString = objc_msgSend_isEqualToString_(identifier);

          if (isEqualToString)
          {
            v23 = getWFRemoteExecutionLogObject();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v39 = "[WFRemoteExecutionIncomingStopSession handleIncomingProtobuf:currentlyActiveSessions:]";
              v40 = 2112;
              v41 = v18;
              _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_DEFAULT, "%s Found a match for the stop request; stopping session: %@", buf, 0x16u);
            }

            [v18 finish];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v15);
      sessionsCopy = v30;
      protobufCopy = v31;
      v10 = v28;
      self = selfCopy;
      v12 = v27;
    }

    v24 = 202;
  }

  else
  {
    v25 = [WFRemoteExecutionRequest isUnsupportedVersionError:v12];
    v26 = getWFRemoteExecutionLogObject();
    v13 = v26;
    if (v25)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v39 = "[WFRemoteExecutionIncomingStopSession handleIncomingProtobuf:currentlyActiveSessions:]";
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Encountered unsupported version of stop request response", buf, 0xCu);
      }

      v24 = 2;
    }

    else
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v39 = "[WFRemoteExecutionIncomingStopSession handleIncomingProtobuf:currentlyActiveSessions:]";
        v40 = 2114;
        v41 = v12;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_FAULT, "%s failed to read stop request: %{public}@", buf, 0x16u);
      }

      v24 = 1;
    }
  }

  [(WFRemoteExecutionSession *)self setState:v24];
}

@end