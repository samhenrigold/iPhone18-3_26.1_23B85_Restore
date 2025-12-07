@interface ATProvisioningHandler
- (id)initAsEndpointType:(int)type;
- (void)_processProvisioningResponse:(id)response toCommand:(id)command onMessageLink:(id)link;
- (void)_sendProvisioningRequest:(id)request OnMessageLink:(id)link;
- (void)messageLink:(id)link didReceiveRequest:(id)request;
- (void)messageLinkWasOpened:(id)opened;
@end

@implementation ATProvisioningHandler

- (void)_processProvisioningResponse:(id)response toCommand:(id)command onMessageLink:(id)link
{
  commandCopy = command;
  linkCopy = link;
  parameters = [response parameters];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__ATProvisioningHandler__processProvisioningResponse_toCommand_onMessageLink___block_invoke;
  v13[3] = &unk_2784E8DF8;
  v14 = commandCopy;
  selfCopy = self;
  v16 = linkCopy;
  v11 = linkCopy;
  v12 = commandCopy;
  [(ATProvisioningHandler *)self _processProvisioningResponse:v12 withParams:parameters onMessageLink:v11 withCompletion:v13];
}

void __78__ATProvisioningHandler__processProvisioningResponse_toCommand_onMessageLink___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      v10 = 138543874;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_ERROR, "failed to process provisioning response to command %{public}@ on %{public}@ - closing. err=%{public}@", &v10, 0x20u);
    }

    [*(a1 + 48) close];
  }

  else
  {
    if ([*(a1 + 32) isEqualToString:@"ProvisioningRegisterEndpoint"])
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = @"ProvisioningCreateSession";
    }

    else
    {
      if (![*(a1 + 32) isEqualToString:@"ProvisioningCreateSession"])
      {
        [*(a1 + 48) setInitialized:1];
        goto LABEL_11;
      }

      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = @"ProvisioningBeginSession";
    }

    [v7 _sendProvisioningRequest:v9 OnMessageLink:v8];
  }

LABEL_11:
}

- (void)_sendProvisioningRequest:(id)request OnMessageLink:(id)link
{
  requestCopy = request;
  linkCopy = link;
  v8 = objc_alloc(MEMORY[0x277CEA458]);
  v9 = [(ATProvisioningHandler *)self _paramsForRequest:requestCopy];
  v10 = [v8 initWithCommand:requestCopy dataClass:@"Provisioning" parameters:v9];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__ATProvisioningHandler__sendProvisioningRequest_OnMessageLink___block_invoke;
  v13[3] = &unk_2784E8DD0;
  v13[4] = self;
  v14 = requestCopy;
  v15 = linkCopy;
  v11 = linkCopy;
  v12 = requestCopy;
  [v11 sendRequest:v10 withCompletion:v13];
}

void __64__ATProvisioningHandler__sendProvisioningRequest_OnMessageLink___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([v5 isPartial] & 1) == 0)
  {
    if (v6)
    {
      v7 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 48);
        v9 = 138543618;
        v10 = v8;
        v11 = 2114;
        v12 = v6;
        _os_log_impl(&dword_22392A000, v7, OS_LOG_TYPE_ERROR, "failed to send provisioning request on %{public}@ - closing. err=%{public}@", &v9, 0x16u);
      }

      [*(a1 + 48) close];
    }

    else
    {
      [*(a1 + 32) _processProvisioningResponse:v5 toCommand:*(a1 + 40) onMessageLink:*(a1 + 48)];
    }
  }
}

- (void)messageLink:(id)link didReceiveRequest:(id)request
{
  v27 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  requestCopy = request;
  if (([linkCopy isInitialized] & 1) != 0 || (objc_msgSend(requestCopy, "command"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", self->_expectedRequestCommand), v8, (v9 & 1) == 0))
  {
    v10 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      command = [requestCopy command];
      expectedRequestCommand = self->_expectedRequestCommand;
      *buf = 138543874;
      v22 = command;
      v23 = 2114;
      v24 = expectedRequestCommand;
      v25 = 1024;
      isInitialized = [linkCopy isInitialized];
      _os_log_impl(&dword_22392A000, v10, OS_LOG_TYPE_DEFAULT, "received unexpected provisioning request %{public}@. expected %{public}@, isInitialized=%d", buf, 0x1Cu);
    }

    [linkCopy close];
  }

  command2 = [requestCopy command];
  parameters = [requestCopy parameters];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__ATProvisioningHandler_messageLink_didReceiveRequest___block_invoke;
  v17[3] = &unk_2784E8DA8;
  v18 = linkCopy;
  v19 = requestCopy;
  selfCopy = self;
  v15 = requestCopy;
  v16 = linkCopy;
  [(ATProvisioningHandler *)self _processProvisioningRequest:command2 withParams:parameters onMessageLink:v16 withCompletion:v17];
}

void __55__ATProvisioningHandler_messageLink_didReceiveRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_22392A000, v7, OS_LOG_TYPE_DEFAULT, "messageLink -> %{public}@", buf, 0xCu);
  }

  if (!v5)
  {
    v10 = [*(a1 + 40) command];
    v11 = [v10 isEqualToString:@"ProvisioningRegisterEndpoint"];

    if (v11)
    {
      v12 = @"ProvisioningCreateSession";
    }

    else
    {
      v13 = [*(a1 + 40) command];
      v14 = [v13 isEqualToString:@"ProvisioningCreateSession"];

      if (!v14)
      {
LABEL_12:
        v17 = *(a1 + 32);
        v18 = [*(a1 + 40) responseWithError:0 parameters:v6];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __55__ATProvisioningHandler_messageLink_didReceiveRequest___block_invoke_7;
        v21[3] = &unk_2784E8D80;
        v22 = *(a1 + 32);
        v23 = *(a1 + 40);
        [v17 sendResponse:v18 withCompletion:v21];

        goto LABEL_13;
      }

      v12 = @"ProvisioningBeginSession";
    }

    v15 = *(a1 + 48);
    v16 = *(v15 + 16);
    *(v15 + 16) = v12;

    goto LABEL_12;
  }

  v9 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v25 = v5;
    _os_log_impl(&dword_22392A000, v9, OS_LOG_TYPE_ERROR, "failed to provision link - closing. err=%{public}@", buf, 0xCu);
  }

  [*(a1 + 32) close];
LABEL_13:
  v19 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    *buf = 138543362;
    v25 = v20;
    _os_log_impl(&dword_22392A000, v19, OS_LOG_TYPE_DEFAULT, "messageLink -> %{public}@", buf, 0xCu);
  }
}

void __55__ATProvisioningHandler_messageLink_didReceiveRequest___block_invoke_7(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v3;
      _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_ERROR, "error sending response to provision message link. err=%{public}@", &v9, 0xCu);
    }

    [*(a1 + 32) close];
  }

  else
  {
    v5 = [*(a1 + 40) command];
    v6 = [v5 isEqualToString:@"ProvisioningRegisterEndpoint"];

    if ((v6 & 1) == 0)
    {
      v7 = [*(a1 + 40) command];
      v8 = [v7 isEqualToString:@"ProvisioningBeginSession"];

      if (v8)
      {
        [*(a1 + 32) setInitialized:1];
      }
    }
  }
}

- (void)messageLinkWasOpened:(id)opened
{
  v10 = *MEMORY[0x277D85DE8];
  openedCopy = opened;
  endpointType = self->_endpointType;
  v6 = _ATLogCategoryFramework();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (endpointType == 1)
  {
    if (v7)
    {
      v8 = 138543362;
      v9 = openedCopy;
      _os_log_impl(&dword_22392A000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ opened - starting provisioning", &v8, 0xCu);
    }

    [(ATProvisioningHandler *)self _sendProvisioningRequest:@"ProvisioningRegisterEndpoint" OnMessageLink:openedCopy];
  }

  else
  {
    if (v7)
    {
      v8 = 138543362;
      v9 = openedCopy;
      _os_log_impl(&dword_22392A000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ opened - waiting for provisioning message from server", &v8, 0xCu);
    }
  }
}

- (id)initAsEndpointType:(int)type
{
  v8.receiver = self;
  v8.super_class = ATProvisioningHandler;
  v4 = [(ATProvisioningHandler *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_endpointType = type;
    expectedRequestCommand = v4->_expectedRequestCommand;
    v4->_expectedRequestCommand = @"ProvisioningRegisterEndpoint";
  }

  return v5;
}

@end