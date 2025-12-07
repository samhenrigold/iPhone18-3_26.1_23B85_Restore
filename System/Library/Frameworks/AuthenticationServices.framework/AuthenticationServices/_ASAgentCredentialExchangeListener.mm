@interface _ASAgentCredentialExchangeListener
- (BOOL)_atLeastOneAppAvailableForImportForConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_ASAgentCredentialExchangeListener)init;
- (void)_highestCommonVersionNumber:(NSString *)number credentialProviderBundleIdentifier:(NSString *)identifier importerBundleIdentifier:(NSString *)bundleIdentifier completionHandler:(id)handler;
- (void)_requestExportWithConnection:(NSXPCConnection *)connection credentialProviderBundleIdentifier:(NSString *)identifier windowSceneIdentifier:(NSString *)sceneIdentifier completionHandler:(id)handler;
- (void)_setSelectedImporterBundleIdentifierForCurrentOperation:(id)operation;
- (void)_setUpExporterConnection:(id)connection forOperation:(id)operation;
- (void)_setUpImporterConnection:(id)connection forOperation:(id)operation;
- (void)_showErrorAlert:(unint64_t)alert;
- (void)cancelCurrentOperation;
- (void)continueExportWithCredentials:(id)credentials completionHandler:(id)handler;
- (void)getExportedCredentialData:(id)data;
- (void)importCredentialsWithToken:(id)token completionHandler:(id)handler;
- (void)requestExportForCredentialProvider:(id)provider windowSceneIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setTokenForImport:(id)import;
@end

@implementation _ASAgentCredentialExchangeListener

- (_ASAgentCredentialExchangeListener)init
{
  v7.receiver = self;
  v7.super_class = _ASAgentCredentialExchangeListener;
  v2 = [(_ASAgentCredentialExchangeListener *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.AuthenticationServicesCore.AuthenticationServicesAgent.CredentialExchange"];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v2->_internalLock._os_unfair_lock_opaque = 0;
    [(NSXPCListener *)v2->_listener resume];
    v5 = v2;
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v41 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  v37 = 0u;
  v38 = 0u;
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  *buf = v37;
  v40 = v38;
  if (WBSAuditTokenHasEntitlement() & 1) != 0 || (*buf = v37, v40 = v38, HasEntitlement = WBSAuditTokenHasEntitlement(), (HasEntitlement))
  {
    os_unfair_lock_lock(&self->_internalLock);
    v12 = self->_currentOperation;
    if (v12)
    {
      *buf = v37;
      v40 = v38;
      v13 = WBSApplicationIdentifierFromAuditToken();
      v36 = 0;
      v14 = [v13 safari_bundleIdentifierFromApplicationIdentifier:&v36];
      v15 = v36;
      if ([v14 length])
      {
        selectedImporterBundleIdentifier = [(_ASAgentCredentialExchangeOperation *)v12 selectedImporterBundleIdentifier];
        v18 = [v14 isEqualToString:selectedImporterBundleIdentifier];

        if (v18)
        {
          [(_ASAgentCredentialExchangeListener *)self _setUpImporterConnection:v8 forOperation:v12];

LABEL_12:
          [v8 resume];
          v24 = 1;
LABEL_22:

          os_unfair_lock_unlock(&self->_internalLock);
          goto LABEL_23;
        }

        v28 = WBS_LOG_CHANNEL_PREFIXCredentialExchange(v19, v20);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          [(_ASAgentCredentialExchangeListener *)v13 listener:v28 shouldAcceptNewConnection:v29, v30, v31, v32, v33, v34];
        }
      }

      else
      {
        v26 = WBS_LOG_CHANNEL_PREFIXCredentialExchange(0, v16);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          safari_privacyPreservingDescription = [v15 safari_privacyPreservingDescription];
          [(_ASAgentCredentialExchangeListener *)v13 listener:safari_privacyPreservingDescription shouldAcceptNewConnection:buf, v26];
        }
      }

      v24 = 0;
      goto LABEL_22;
    }

    v21 = WBS_LOG_CHANNEL_PREFIXCredentialExchange(0, v11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1C8D000, v21, OS_LOG_TYPE_DEFAULT, "Starting new credential exchange operation.", buf, 2u);
    }

    v22 = objc_alloc_init(_ASAgentCredentialExchangeOperation);
    currentOperation = self->_currentOperation;
    self->_currentOperation = v22;

    [(_ASAgentCredentialExchangeListener *)self _setUpExporterConnection:v8 forOperation:self->_currentOperation];
    goto LABEL_12;
  }

  v25 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(HasEntitlement, v10);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [_ASAgentCredentialExchangeListener listener:shouldAcceptNewConnection:];
  }

  v24 = 0;
LABEL_23:

  return v24;
}

- (void)_setUpExporterConnection:(id)connection forOperation:(id)operation
{
  connectionCopy = connection;
  operationCopy = operation;
  v8 = ASAgentCredentialExchangeExporterInterface(operationCopy);
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:self];
  [operationCopy setExporterConnection:connectionCopy];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76___ASAgentCredentialExchangeListener__setUpExporterConnection_forOperation___block_invoke;
  v9[3] = &unk_1E7AF75E0;
  objc_copyWeak(&v10, &location);
  [connectionCopy setInvalidationHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_setUpImporterConnection:(id)connection forOperation:(id)operation
{
  connectionCopy = connection;
  operationCopy = operation;
  v8 = ASAgentCredentialExchangeImporterInterface(operationCopy);
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:self];
  [operationCopy setImporterConnection:connectionCopy];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76___ASAgentCredentialExchangeListener__setUpImporterConnection_forOperation___block_invoke;
  v9[3] = &unk_1E7AF75E0;
  objc_copyWeak(&v10, &location);
  [connectionCopy setInvalidationHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)requestExportForCredentialProvider:(id)provider windowSceneIdentifier:(id)identifier completionHandler:(id)handler
{
  v35[1] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  identifierCopy = identifier;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_internalLock);
  currentOperation = self->_currentOperation;
  if (currentOperation)
  {
    v14 = currentOperation;
    exporterConnection = [(_ASAgentCredentialExchangeOperation *)v14 exporterConnection];
    isCredentialExchangeEnabled = [MEMORY[0x1E69C8880] isCredentialExchangeEnabled];
    if (isCredentialExchangeEnabled)
    {
      v18 = os_transaction_create();
      [(_ASAgentCredentialExchangeOperation *)v14 setTransaction:v18];

      [(_ASAgentCredentialExchangeListener *)self _requestExportWithConnection:exporterConnection credentialProviderBundleIdentifier:providerCopy windowSceneIdentifier:identifierCopy completionHandler:handlerCopy];
    }

    else
    {
      v28 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(isCredentialExchangeEnabled, v17);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [_ASAgentCredentialExchangeListener requestExportForCredentialProvider:windowSceneIdentifier:completionHandler:];
      }

      v29 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A588];
      v33 = @"Developer mode must be enabled for this API. You can find the toggle for this in Settings › Developer in the Authentication Services Testing section.";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v31 = [v29 errorWithDomain:*MEMORY[0x1E698DF70] code:19 userInfo:v30];
      handlerCopy[2](handlerCopy, 0, v31);

      [(_ASAgentCredentialExchangeListener *)self _showErrorAlert:0];
    }
  }

  else
  {
    v19 = WBS_LOG_CHANNEL_PREFIXCredentialExchange(v11, v12);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [(_ASAgentCredentialExchangeListener *)v19 requestExportForCredentialProvider:v20 windowSceneIdentifier:v21 completionHandler:v22, v23, v24, v25, v26];
    }

    v27 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A588];
    v35[0] = @"No export in progress.";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    exporterConnection = [v27 errorWithDomain:*MEMORY[0x1E698DF70] code:19 userInfo:v14];
    handlerCopy[2](handlerCopy, 0, exporterConnection);
  }

  os_unfair_lock_unlock(&self->_internalLock);
}

- (void)continueExportWithCredentials:(id)credentials completionHandler:(id)handler
{
  v42[1] = *MEMORY[0x1E69E9840];
  credentialsCopy = credentials;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_internalLock);
  currentOperation = self->_currentOperation;
  if (currentOperation)
  {
    v11 = currentOperation;
    isCredentialExchangeEnabled = [MEMORY[0x1E69C8880] isCredentialExchangeEnabled];
    if (isCredentialExchangeEnabled)
    {
      v14 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(isCredentialExchangeEnabled, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1C8D000, v14, OS_LOG_TYPE_INFO, "Received export data.", buf, 2u);
      }

      exportDataFetchCompletionHandler = [(_ASAgentCredentialExchangeOperation *)v11 exportDataFetchCompletionHandler];

      if (exportDataFetchCompletionHandler)
      {
        v18 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(v16, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B1C8D000, v18, OS_LOG_TYPE_INFO, "Returning export data to view service.", buf, 2u);
        }

        exportDataFetchCompletionHandler2 = [(_ASAgentCredentialExchangeOperation *)v11 exportDataFetchCompletionHandler];
        (exportDataFetchCompletionHandler2)[2](exportDataFetchCompletionHandler2, credentialsCopy);
      }

      [(_ASAgentCredentialExchangeOperation *)v11 setExportedCredentialData:credentialsCopy];
      v20 = MEMORY[0x1E695DFF0];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __86___ASAgentCredentialExchangeListener_continueExportWithCredentials_completionHandler___block_invoke;
      v36[3] = &unk_1E7AF8CE8;
      v36[4] = self;
      v37 = v11;
      v21 = [v20 scheduledTimerWithTimeInterval:0 repeats:v36 block:300.0];
      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      v32 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(isCredentialExchangeEnabled, v13);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [_ASAgentCredentialExchangeListener requestExportForCredentialProvider:windowSceneIdentifier:completionHandler:];
      }

      v33 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A588];
      v40 = @"Developer mode must be enabled for this API. You can find the toggle for this in Settings › Developer in the Authentication Services Testing section.";
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v35 = [v33 errorWithDomain:*MEMORY[0x1E698DF70] code:19 userInfo:v34];
      (handlerCopy)[2](handlerCopy, v35);

      [(_ASAgentCredentialExchangeListener *)self _showErrorAlert:0];
    }
  }

  else
  {
    v22 = WBS_LOG_CHANNEL_PREFIXCredentialExchange(v8, v9);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [(_ASAgentCredentialExchangeListener *)v22 continueExportWithCredentials:v23 completionHandler:v24, v25, v26, v27, v28, v29];
    }

    v30 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A588];
    v42[0] = @"No export in progress.";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v31 = [v30 errorWithDomain:*MEMORY[0x1E698DF70] code:19 userInfo:v11];
    (handlerCopy)[2](handlerCopy, v31);
  }

  os_unfair_lock_unlock(&self->_internalLock);
}

- (BOOL)_atLeastOneAppAvailableForImportForConnection:(id)connection
{
  connectionCopy = connection;
  v4 = connectionCopy;
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v5 = WBSApplicationIdentifierFromAuditToken();
  v12 = 0;
  v7 = [v5 safari_bundleIdentifierFromApplicationIdentifier:&v12];
  if (v7)
  {
    mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
    v9 = [mEMORY[0x1E69C8DE0] atLeastOneAvailableExtensionSupportsCredentialExchange:v7];
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(0, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_ASAgentCredentialExchangeListener _atLeastOneAppAvailableForImportForConnection:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)setTokenForImport:(id)import
{
  importCopy = import;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v6 = currentConnection;
  if (currentConnection)
  {
    objc_msgSend_auditToken(currentConnection);
  }

  HasEntitlement = WBSAuditTokenHasEntitlement();
  if (HasEntitlement)
  {
    os_unfair_lock_lock(&self->_internalLock);
    if (self->_currentOperation)
    {
      v11 = [importCopy copy];
      [(_ASAgentCredentialExchangeOperation *)self->_currentOperation setImporterToken:v11];
    }

    else
    {
      v20 = WBS_LOG_CHANNEL_PREFIXCredentialExchange(v9, v10);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [(_ASAgentCredentialExchangeListener *)v20 setTokenForImport:v21, v22, v23, v24, v25, v26, v27];
      }
    }

    os_unfair_lock_unlock(&self->_internalLock);
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCredentialExchange(HasEntitlement, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(_ASAgentCredentialExchangeListener *)v12 setTokenForImport:v13, v14, v15, v16, v17, v18, v19];
    }
  }
}

- (void)getExportedCredentialData:(id)data
{
  dataCopy = data;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v6 = currentConnection;
  if (currentConnection)
  {
    objc_msgSend_auditToken(currentConnection);
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  HasEntitlement = WBSAuditTokenHasEntitlement();
  if (HasEntitlement)
  {
    os_unfair_lock_lock(&self->_internalLock);
    currentOperation = self->_currentOperation;
    if (currentOperation)
    {
      v12 = currentOperation;
      v14 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_1B1C8D000, v14, OS_LOG_TYPE_INFO, "Reading export data.", &v37, 2u);
      }

      v15 = [(_ASAgentCredentialExchangeOperation *)v12 exportedCredentialData:v37];

      if (v15)
      {
        v18 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(v16, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          LOWORD(v37) = 0;
          _os_log_impl(&dword_1B1C8D000, v18, OS_LOG_TYPE_INFO, "Export data is already available.", &v37, 2u);
        }

        exportedCredentialData = [(_ASAgentCredentialExchangeOperation *)v12 exportedCredentialData];
        dataCopy[2](dataCopy, exportedCredentialData);
      }

      else
      {
        v36 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(v16, v17);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          LOWORD(v37) = 0;
          _os_log_impl(&dword_1B1C8D000, v36, OS_LOG_TYPE_INFO, "Export data is not yet available.", &v37, 2u);
        }

        [(_ASAgentCredentialExchangeOperation *)v12 setExportDataFetchCompletionHandler:dataCopy];
      }
    }

    else
    {
      v28 = WBS_LOG_CHANNEL_PREFIXCredentialExchange(v9, v10);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        [(_ASAgentCredentialExchangeListener *)v28 getExportedCredentialData:v29, v30, v31, v32, v33, v34, v35];
      }

      dataCopy[2](dataCopy, 0);
    }

    os_unfair_lock_unlock(&self->_internalLock);
  }

  else
  {
    v20 = WBS_LOG_CHANNEL_PREFIXCredentialExchange(HasEntitlement, v8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [(_ASAgentCredentialExchangeListener *)v20 getExportedCredentialData:v21, v22, v23, v24, v25, v26, v27];
    }

    dataCopy[2](dataCopy, 0);
  }
}

- (void)importCredentialsWithToken:(id)token completionHandler:(id)handler
{
  v52[1] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_internalLock);
  currentOperation = self->_currentOperation;
  if (currentOperation)
  {
    v11 = currentOperation;
    isCredentialExchangeEnabled = [MEMORY[0x1E69C8880] isCredentialExchangeEnabled];
    if (isCredentialExchangeEnabled)
    {
      importerToken = [(_ASAgentCredentialExchangeOperation *)v11 importerToken];
      v15 = [tokenCopy isEqual:importerToken];

      if (v15)
      {
        exportedCredentialData = [(_ASAgentCredentialExchangeOperation *)v11 exportedCredentialData];

        if (exportedCredentialData)
        {
          exportedCredentialData2 = [(_ASAgentCredentialExchangeOperation *)v11 exportedCredentialData];
          handlerCopy[2](handlerCopy, exportedCredentialData2, 0);

          v22 = self->_currentOperation;
          self->_currentOperation = 0;
        }

        else
        {
          v41 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(v19, v20);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [_ASAgentCredentialExchangeListener importCredentialsWithToken:completionHandler:];
          }

          v42 = MEMORY[0x1E696ABC0];
          v45 = *MEMORY[0x1E696A588];
          v46 = @"Exported credential data not found.";
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v44 = [v42 errorWithDomain:*MEMORY[0x1E698DF70] code:1 userInfo:v43];
          (handlerCopy)[2](handlerCopy, 0, v44);
        }
      }

      else
      {
        v37 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(v16, v17);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [_ASAgentCredentialExchangeListener importCredentialsWithToken:completionHandler:];
        }

        v38 = MEMORY[0x1E696ABC0];
        v47 = *MEMORY[0x1E696A588];
        v48 = @"The import request came from a client that did not match the one selected by the user for import.";
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v40 = [v38 errorWithDomain:*MEMORY[0x1E698DF70] code:18 userInfo:v39];
        (handlerCopy)[2](handlerCopy, 0, v40);
      }
    }

    else
    {
      v33 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(isCredentialExchangeEnabled, v13);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [_ASAgentCredentialExchangeListener requestExportForCredentialProvider:windowSceneIdentifier:completionHandler:];
      }

      v34 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A588];
      v50 = @"Developer mode must be enabled for this API. You can find the toggle for this in Settings › Developer in the Authentication Services Testing section.";
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v36 = [v34 errorWithDomain:*MEMORY[0x1E698DF70] code:18 userInfo:v35];
      (handlerCopy)[2](handlerCopy, 0, v36);

      [(_ASAgentCredentialExchangeListener *)self _showErrorAlert:0];
    }
  }

  else
  {
    v23 = WBS_LOG_CHANNEL_PREFIXCredentialExchange(v8, v9);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [(_ASAgentCredentialExchangeListener *)v23 importCredentialsWithToken:v24 completionHandler:v25, v26, v27, v28, v29, v30];
    }

    v31 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A588];
    v52[0] = @"No export in progress";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v32 = [v31 errorWithDomain:*MEMORY[0x1E698DF70] code:1 userInfo:v11];
    (handlerCopy)[2](handlerCopy, 0, v32);
  }

  os_unfair_lock_unlock(&self->_internalLock);
}

- (void)cancelCurrentOperation
{
  os_unfair_lock_lock(&self->_internalLock);
  currentOperation = self->_currentOperation;
  self->_currentOperation = 0;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (void)_showErrorAlert:(unint64_t)alert
{
  v3 = 0;
  v12[3] = *MEMORY[0x1E69E9840];
  if (alert <= 1)
  {
    if (alert)
    {
      v4 = 0;
      if (alert != 1)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  if (alert == 2)
  {
    return;
  }

  v4 = 0;
  if (alert == 3)
  {
LABEL_7:
    v4 = _WBSLocalizedStringWithCurrentUserLocale();
    v3 = _WBSLocalizedStringWithCurrentUserLocale();
  }

LABEL_8:
  v5 = *MEMORY[0x1E695EE60];
  v11[0] = *MEMORY[0x1E695EE58];
  v11[1] = v5;
  v12[0] = v4;
  v12[1] = v3;
  v11[2] = *MEMORY[0x1E695EE78];
  v6 = _WBSLocalizedStringWithCurrentUserLocale();
  v12[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v8 = [v7 mutableCopy];

  v9 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 2uLL, 0, v8);
  v10 = 3;
  CFUserNotificationReceiveResponse(v9, 0.0, &v10);
  CFRelease(v9);
}

- (void)_setSelectedImporterBundleIdentifierForCurrentOperation:(id)operation
{
  operationCopy = operation;
  os_unfair_lock_lock(&self->_internalLock);
  currentOperation = self->_currentOperation;
  if (currentOperation)
  {
    [(_ASAgentCredentialExchangeOperation *)currentOperation setSelectedImporterBundleIdentifier:operationCopy];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCredentialExchange(0, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(_ASAgentCredentialExchangeListener *)v7 _setSelectedImporterBundleIdentifierForCurrentOperation:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  os_unfair_lock_unlock(&self->_internalLock);
}

- (void)_requestExportWithConnection:(NSXPCConnection *)connection credentialProviderBundleIdentifier:(NSString *)identifier windowSceneIdentifier:(NSString *)sceneIdentifier completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = connection;
  v15[3] = identifier;
  v15[4] = sceneIdentifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1B1D7BF4C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B1D861F0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B1D861F8;
  v18[5] = v17;
  connectionCopy = connection;
  identifierCopy = identifier;
  sceneIdentifierCopy = sceneIdentifier;
  selfCopy = self;
  sub_1B1D22574(0, 0, v13, &unk_1B1D86200, v18);
}

- (void)_highestCommonVersionNumber:(NSString *)number credentialProviderBundleIdentifier:(NSString *)identifier importerBundleIdentifier:(NSString *)bundleIdentifier completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = number;
  v15[3] = identifier;
  v15[4] = bundleIdentifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1B1D7BF4C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B1D861C0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B1D885D0;
  v18[5] = v17;
  numberCopy = number;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  selfCopy = self;
  sub_1B1D22574(0, 0, v13, &unk_1B1D86880, v18);
}

- (void)listener:(uint64_t)a3 shouldAcceptNewConnection:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a2, a3, "Unexpected process %{public}@ tried to connect during credential import.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)listener:(uint8_t *)buf shouldAcceptNewConnection:(os_log_t)log .cold.3(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_1B1C8D000, log, OS_LOG_TYPE_FAULT, "Could not fetch bundle identifier from application identifier %{public}@. %{public}@", buf, 0x16u);
}

- (void)requestExportForCredentialProvider:(uint64_t)a3 windowSceneIdentifier:(uint64_t)a4 completionHandler:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_ASAgentCredentialExchangeListener requestExportForCredentialProvider:windowSceneIdentifier:completionHandler:]";
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)continueExportWithCredentials:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_ASAgentCredentialExchangeListener continueExportWithCredentials:completionHandler:]";
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setTokenForImport:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_ASAgentCredentialExchangeListener setTokenForImport:]";
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "%{public}s must only be called by the view service", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setTokenForImport:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_ASAgentCredentialExchangeListener setTokenForImport:]";
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getExportedCredentialData:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_ASAgentCredentialExchangeListener getExportedCredentialData:]";
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "%{public}s must only be called by the view service", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getExportedCredentialData:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_ASAgentCredentialExchangeListener getExportedCredentialData:]";
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)importCredentialsWithToken:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_ASAgentCredentialExchangeListener importCredentialsWithToken:completionHandler:]";
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_setSelectedImporterBundleIdentifierForCurrentOperation:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_ASAgentCredentialExchangeListener _setSelectedImporterBundleIdentifierForCurrentOperation:]";
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end