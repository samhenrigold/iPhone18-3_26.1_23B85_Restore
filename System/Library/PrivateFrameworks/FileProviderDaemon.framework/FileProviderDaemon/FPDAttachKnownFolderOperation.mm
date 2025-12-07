@interface FPDAttachKnownFolderOperation
- (FPDAttachKnownFolderOperation)initWithKnownFolderURLs:(id)ls onlyForDomain:(id)domain server:(id)server options:(unint64_t)options request:(id)request;
- (FPDAttachKnownFolderOperation)initWithKnownFolders:(unint64_t)folders onlyForDomain:(id)domain server:(id)server options:(unint64_t)options request:(id)request;
- (id)resolveKnownFolderURLsWithError:(id *)error;
- (void)main;
- (void)notifyUserForDomain:(id)domain withCompletionHandler:(id)handler;
@end

@implementation FPDAttachKnownFolderOperation

- (FPDAttachKnownFolderOperation)initWithKnownFolderURLs:(id)ls onlyForDomain:(id)domain server:(id)server options:(unint64_t)options request:(id)request
{
  lsCopy = ls;
  domainCopy = domain;
  serverCopy = server;
  requestCopy = request;
  v20.receiver = self;
  v20.super_class = FPDAttachKnownFolderOperation;
  v17 = [(FPOperation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_knownFolders = 0;
    objc_storeStrong(&v17->_knownFolderPhysicalURLs, ls);
    objc_storeStrong(&v18->_onlyForDomain, domain);
    objc_storeStrong(&v18->_server, server);
    v18->_options = options;
    objc_storeStrong(&v18->_request, request);
  }

  return v18;
}

- (FPDAttachKnownFolderOperation)initWithKnownFolders:(unint64_t)folders onlyForDomain:(id)domain server:(id)server options:(unint64_t)options request:(id)request
{
  domainCopy = domain;
  serverCopy = server;
  requestCopy = request;
  v20.receiver = self;
  v20.super_class = FPDAttachKnownFolderOperation;
  v16 = [(FPOperation *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_knownFolders = folders;
    knownFolderPhysicalURLs = v16->_knownFolderPhysicalURLs;
    v16->_knownFolderPhysicalURLs = 0;

    objc_storeStrong(&v17->_onlyForDomain, domain);
    objc_storeStrong(&v17->_server, server);
    v17->_options = options;
    objc_storeStrong(&v17->_request, request);
  }

  return v17;
}

- (void)notifyUserForDomain:(id)domain withCompletionHandler:(id)handler
{
  domainCopy = domain;
  handlerCopy = handler;
  options = self->_options;
  v9 = fp_current_or_default_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if ((options & 2) != 0)
  {
    if (v10)
    {
      [FPDAttachKnownFolderOperation notifyUserForDomain:withCompletionHandler:];
    }

    if (os_variant_has_internal_content())
    {
      v11 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
      v12 = [v11 stringForKey:@"forceAttachPromptResult"];
      if ([v12 isEqualToString:@"approve"])
      {
        v13 = fp_current_or_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [FPDAttachKnownFolderOperation notifyUserForDomain:withCompletionHandler:];
        }

        v14 = [MEMORY[0x1E695DF00] now];
        [v14 timeIntervalSince1970];
        [v11 setDouble:@"forceAttachPromptLastInterception" forKey:?];

        handlerCopy[2](handlerCopy, 0);
        goto LABEL_21;
      }

      if ([v12 isEqualToString:@"decline"])
      {
        v15 = fp_current_or_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [FPDAttachKnownFolderOperation notifyUserForDomain:withCompletionHandler:];
        }

        v16 = [MEMORY[0x1E695DF00] now];
        [v16 timeIntervalSince1970];
        [v11 setDouble:@"forceAttachPromptLastInterception" forKey:?];

        v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
        (handlerCopy)[2](handlerCopy, v17);
        goto LABEL_20;
      }
    }

    provider = [domainCopy provider];
    v11 = [provider providerDomainForDomain:domainCopy];

    provider2 = [domainCopy provider];
    [v11 setShouldHideDomainDisplayName:{objc_msgSend(provider2, "shouldHideDomainDisplayName")}];

    v12 = [objc_opt_new() initWithProviderDomain:v11];
    if ([v12 presentAlertWithUserAprovalToContinue])
    {
      handlerCopy[2](handlerCopy, 0);
LABEL_21:

      goto LABEL_22;
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    (handlerCopy)[2](handlerCopy, v17);
LABEL_20:

    goto LABEL_21;
  }

  if (v10)
  {
    [FPDAttachKnownFolderOperation notifyUserForDomain:withCompletionHandler:];
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_22:
}

- (id)resolveKnownFolderURLsWithError:(id *)error
{
  knownFolderPhysicalURLs = self->_knownFolderPhysicalURLs;
  if (knownFolderPhysicalURLs)
  {
    v4 = knownFolderPhysicalURLs;
    goto LABEL_14;
  }

  v7 = objc_opt_new();
  knownFolders = self->_knownFolders;
  if (knownFolders)
  {
    v9 = +[FPDKnownFolderArbiter desktopURL];
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = v9;
    [v7 addObject:v9];

    knownFolders = self->_knownFolders;
  }

  if ((knownFolders & 2) != 0)
  {
    v11 = +[FPDKnownFolderArbiter documentsURL];
    if (v11)
    {
      v12 = v11;
      [v7 addObject:v11];

      goto LABEL_9;
    }

LABEL_10:
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
      *error = v4 = 0;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_13;
  }

LABEL_9:
  v4 = v7;
LABEL_13:

LABEL_14:

  return v4;
}

- (void)main
{
  v34 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v3 = [(FPDAttachKnownFolderOperation *)self resolveKnownFolderURLsWithError:&v32];
  v4 = v32;
  v5 = v4;
  if (v3)
  {
    v22 = v4;
    v25 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = v3;
    obj = v3;
    v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          extensionManager = [(FPDServer *)self->_server extensionManager];
          v13 = [extensionManager domainForURL:v11 reason:0];

          if (v13)
          {
            if (!v8)
            {
              extensionManager2 = [(FPDServer *)self->_server extensionManager];
              providerDomainID = [v13 providerDomainID];
              v8 = [extensionManager2 domainWithID:providerDomainID reason:0];
            }

            if (!self->_onlyForDomain || ([v13 providerDomainID], v16 = objc_claimAutoreleasedReturnValue(), -[FPDDomain providerDomainID](self->_onlyForDomain, "providerDomainID"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToString:", v17), v17, v16, v18))
            {
              providerDomainID2 = [v13 providerDomainID];
              v20 = [v25 objectForKeyedSubscript:providerDomainID2];

              if (!v20)
              {
                v20 = objc_opt_new();
                providerDomainID3 = [v13 providerDomainID];
                [v25 setObject:v20 forKeyedSubscript:providerDomainID3];
              }

              [v20 addObject:v11];
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    if ([v25 count])
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __37__FPDAttachKnownFolderOperation_main__block_invoke;
      v26[3] = &unk_1E83BE760;
      v26[4] = self;
      v27 = v25;
      [(FPDAttachKnownFolderOperation *)self notifyUserForDomain:v8 withCompletionHandler:v26];
    }

    else
    {
      [(FPOperation *)self finishWithResult:0 error:0];
    }

    v5 = v22;
    v3 = v23;
  }

  else
  {
    [(FPOperation *)self finishWithResult:0 error:v4];
  }
}

void __37__FPDAttachKnownFolderOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v4 = dispatch_group_create();
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__18;
    v40 = __Block_byref_object_dispose__18;
    v41 = 0;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = *(a1 + 40);
    v5 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    v3 = 0;
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = *v33;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v31 = 0;
        v9 = [*(*(a1 + 32) + 328) extensionManager];
        v10 = [v9 domainWithID:v8 reason:&v31];

        if (v10)
        {
          v11 = [v10 defaultBackend];
          v12 = objc_opt_respondsToSelector();

          if (v12)
          {
            dispatch_group_enter(v4);
            v13 = [v10 defaultBackend];
            v14 = [*(a1 + 40) objectForKeyedSubscript:v8];
            v15 = *(a1 + 32);
            v16 = *(v15 + 336);
            v17 = *(v15 + 344);
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __37__FPDAttachKnownFolderOperation_main__block_invoke_37;
            v28[3] = &unk_1E83C09F0;
            v29 = v4;
            v30 = &v36;
            v18 = v17;
            v3 = 0;
            [v13 attachKnownFolders:v14 options:v16 request:v18 completionHandler:v28];

            v19 = v29;
            goto LABEL_14;
          }

          v19 = v4;
          objc_sync_enter(v19);
          v23 = FPNotSupportedError();
          v24 = v37[5];
          v37[5] = v23;
        }

        else
        {
          v19 = v4;
          objc_sync_enter(v19);
          v20 = [v8 fp_toProviderID];
          v21 = FPProviderNotFoundError();
          v22 = v37[5];
          v37[5] = v21;
        }

        objc_sync_exit(v19);
LABEL_14:
      }

      v5 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (!v5)
      {
LABEL_16:

        v25 = [*(a1 + 32) callbackQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __37__FPDAttachKnownFolderOperation_main__block_invoke_2;
        block[3] = &unk_1E83BF3D8;
        block[4] = *(a1 + 32);
        block[5] = &v36;
        dispatch_group_notify(v4, v25, block);

        _Block_object_dispose(&v36, 8);
        goto LABEL_17;
      }
    }
  }

  [*(a1 + 32) completedWithResult:0 error:v3];
LABEL_17:
}

void __37__FPDAttachKnownFolderOperation_main__block_invoke_37(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    objc_sync_exit(v4);
  }

  dispatch_group_leave(*(a1 + 32));
}

@end