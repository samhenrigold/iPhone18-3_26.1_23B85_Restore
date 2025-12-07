@interface CXCallDirectoryHost
- (BOOL)_connectionContainsCallDirectoryHostEntitlementCapability:(id)capability;
- (CXCallDirectoryHost)init;
- (CXCallDirectoryHostDelegate)delegate;
- (void)_nsExtensionWithIdentifier:(id)identifier completion:(id)completion;
- (void)cleanUpLiveLookupDataWithReply:(id)reply;
- (void)compactStoreWithReply:(id)reply;
- (void)fetchLiveBlockingInfoForHandle:(id)handle reply:(id)reply;
- (void)firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:(id)number reply:(id)reply;
- (void)firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:(id)numbers cacheOnly:(BOOL)only reply:(id)reply;
- (void)getEnabledForLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)getEnabledStatusForExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)getExtensionsWithReply:(id)reply;
- (void)getLastUpdatedCallDirectoryInfoWithReply:(id)reply;
- (void)launchCallDirectorySettingsWithReply:(id)reply;
- (void)performDelegateCallback:(id)callback;
- (void)prepareStoreIfNecessary;
- (void)refreshExtensionContextForLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)refreshPIRParametersForLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)reloadExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)resetLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setEnabled:(BOOL)enabled forExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)setEnabled:(BOOL)enabled forLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply;
- (void)setPrioritizedExtensionIdentifiers:(id)identifiers reply:(id)reply;
- (void)synchronizeExtensionsWithReply:(id)reply;
@end

@implementation CXCallDirectoryHost

- (CXCallDirectoryHostDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CXCallDirectoryHost)init
{
  v6.receiver = self;
  v6.super_class = CXCallDirectoryHost;
  v2 = [(CXCallDirectoryHost *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.callkit.calldirectoryhost", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queue = [(CXCallDirectoryHost *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CXCallDirectoryHost_setDelegate_queue___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  dispatch_async(queue, block);
}

uint64_t __41__CXCallDirectoryHost_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = MEMORY[0x1E69E96A0];
  }

  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (void)performDelegateCallback:(id)callback
{
  callbackCopy = callback;
  queue = [(CXCallDirectoryHost *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CXCallDirectoryHost_performDelegateCallback___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async(queue, v7);
}

void __47__CXCallDirectoryHost_performDelegateCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegateQueue];

    if (v4)
    {
      v5 = [*(a1 + 32) delegateQueue];
      dispatch_async(v5, *(a1 + 40));
    }
  }
}

- (BOOL)_connectionContainsCallDirectoryHostEntitlementCapability:(id)capability
{
  v14 = *MEMORY[0x1E69E9840];
  capabilityCopy = capability;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v5 = [currentConnection valueForEntitlement:@"com.apple.CallKit.call-directory"];
  if (!v5)
  {
    v8 = CXDefaultLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = currentConnection;
      v12 = 2112;
      v13 = @"com.apple.CallKit.call-directory";
      _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "[WARN] XPC connection %@ does not contain entitlement '%@'", &v10, 0x16u);
    }

    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v8 = CXDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)currentConnection _connectionContainsCallDirectoryHostEntitlementCapability:v5, v8];
    }

LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  v7 = [v5 containsObject:capabilityCopy];
LABEL_9:

  return v7;
}

- (void)reloadExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "identifier %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke;
  v11[3] = &unk_1E7C06D48;
  v12 = identifierCopy;
  v13 = replyCopy;
  v11[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
  [(CXCallDirectoryHost *)self _nsExtensionWithIdentifier:v9 completion:v11];
}

void __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke_2;
    v9[3] = &unk_1E7C06D20;
    v9[4] = v5;
    v10 = v3;
    v11 = *(a1 + 48);
    [v5 performDelegateCallback:v9];
  }

  else
  {
    v6 = CXDefaultLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke_cold_1();
    }

    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(v7 + 16))(v7, v8);
  }
}

void __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedReloadForExtension:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)resetLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "resetLiveLookupExtensionWithIdentifier identifier %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke;
  v11[3] = &unk_1E7C06D48;
  v12 = identifierCopy;
  v13 = replyCopy;
  v11[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
  [(CXCallDirectoryHost *)self _nsExtensionWithIdentifier:v9 completion:v11];
}

void __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke_2;
    v12[3] = &unk_1E7C06D20;
    v12[4] = v8;
    v13 = v5;
    v14 = *(a1 + 48);
    [v8 performDelegateCallback:v12];
  }

  else
  {
    v9 = CXDefaultLog(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke_cold_1();
    }

    v10 = *(a1 + 48);
    v11 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(v10 + 16))(v10, v11);
  }
}

void __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedResetForLiveLookupExtension:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)refreshPIRParametersForLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "refreshPIRParametersForLiveLookupExtensionWithIdentifier identifier %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__CXCallDirectoryHost_refreshPIRParametersForLiveLookupExtensionWithIdentifier_reply___block_invoke;
  v11[3] = &unk_1E7C06D48;
  v12 = identifierCopy;
  v13 = replyCopy;
  v11[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
  [(CXCallDirectoryHost *)self _nsExtensionWithIdentifier:v9 completion:v11];
}

void __86__CXCallDirectoryHost_refreshPIRParametersForLiveLookupExtensionWithIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__CXCallDirectoryHost_refreshPIRParametersForLiveLookupExtensionWithIdentifier_reply___block_invoke_2;
    v12[3] = &unk_1E7C06D20;
    v12[4] = v8;
    v13 = v5;
    v14 = *(a1 + 48);
    [v8 performDelegateCallback:v12];
  }

  else
  {
    v9 = CXDefaultLog(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke_cold_1();
    }

    v10 = *(a1 + 48);
    v11 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(v10 + 16))(v10, v11);
  }
}

void __86__CXCallDirectoryHost_refreshPIRParametersForLiveLookupExtensionWithIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedRefreshPIRParametersForLiveLookupExtension:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)refreshExtensionContextForLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "refreshExtensionContextForLiveLookupExtensionWithIdentifier identifier %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__CXCallDirectoryHost_refreshExtensionContextForLiveLookupExtensionWithIdentifier_reply___block_invoke;
  v11[3] = &unk_1E7C06D48;
  v12 = identifierCopy;
  v13 = replyCopy;
  v11[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
  [(CXCallDirectoryHost *)self _nsExtensionWithIdentifier:v9 completion:v11];
}

void __89__CXCallDirectoryHost_refreshExtensionContextForLiveLookupExtensionWithIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __89__CXCallDirectoryHost_refreshExtensionContextForLiveLookupExtensionWithIdentifier_reply___block_invoke_2;
    v12[3] = &unk_1E7C06D20;
    v12[4] = v8;
    v13 = v5;
    v14 = *(a1 + 48);
    [v8 performDelegateCallback:v12];
  }

  else
  {
    v9 = CXDefaultLog(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke_cold_1();
    }

    v10 = *(a1 + 48);
    v11 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(v10 + 16))(v10, v11);
  }
}

void __89__CXCallDirectoryHost_refreshExtensionContextForLiveLookupExtensionWithIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedRefreshExtensionContextForLiveLookupExtension:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)getEnabledStatusForExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "getEnabledStatusForExtensionWithIdentifieridentifier %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__CXCallDirectoryHost_getEnabledStatusForExtensionWithIdentifier_reply___block_invoke;
  v11[3] = &unk_1E7C06D48;
  v12 = identifierCopy;
  v13 = replyCopy;
  v11[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
  [(CXCallDirectoryHost *)self _nsExtensionWithIdentifier:v9 completion:v11];
}

void __72__CXCallDirectoryHost_getEnabledStatusForExtensionWithIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__CXCallDirectoryHost_getEnabledStatusForExtensionWithIdentifier_reply___block_invoke_2;
    v9[3] = &unk_1E7C06D20;
    v9[4] = v5;
    v10 = v3;
    v11 = *(a1 + 48);
    [v5 performDelegateCallback:v9];
  }

  else
  {
    v6 = CXDefaultLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke_cold_1();
    }

    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(v7 + 16))(v7, 0, v8);
  }
}

void __72__CXCallDirectoryHost_getEnabledStatusForExtensionWithIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedEnabledStatusForExtension:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)getEnabledForLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "getEnabledForLiveLookupExtensionWithIdentifier identifier %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CXCallDirectoryHost_getEnabledForLiveLookupExtensionWithIdentifier_reply___block_invoke;
  v11[3] = &unk_1E7C06D48;
  v12 = identifierCopy;
  v13 = replyCopy;
  v11[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
  [(CXCallDirectoryHost *)self _nsExtensionWithIdentifier:v9 completion:v11];
}

void __76__CXCallDirectoryHost_getEnabledForLiveLookupExtensionWithIdentifier_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 callDirectoryHost:*(a1 + 32) requestedEnabledForLiveLookupExtension:v3 completionHandler:*(a1 + 48)];
  }

  else
  {
    v5 = CXDefaultLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke_cold_1();
    }

    v6 = *(a1 + 48);
    v4 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(v6 + 16))(v6, 0, v4);
  }
}

- (void)setEnabled:(BOOL)enabled forLiveLookupExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  enabledCopy = enabled;
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v10 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v35 = enabledCopy;
    v36 = 2112;
    v37 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "enabled %d identifier %@", buf, 0x12u);
  }

  v11 = [(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"modify-any-extension"];
  if (!v11)
  {
    v15 = CXDefaultLog(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v15 setEnabled:v16 forLiveLookupExtensionWithIdentifier:v17 reply:v18, v19, v20, v21, v22];
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"modify-any-extension"];
    v23 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v33 = v14;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v24 = [v23 cx_callDirectoryManagerErrorWithCode:100 userInfo:v12];
    goto LABEL_12;
  }

  v31 = 0;
  v12 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:identifierCopy error:&v31];
  v13 = v31;
  v14 = v13;
  if (!v12)
  {
    v25 = CXDefaultLog(v13);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CXCallDirectoryHost setEnabled:forLiveLookupExtensionWithIdentifier:reply:];
    }

    v24 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
LABEL_12:
    v26 = v24;
    replyCopy[2](replyCopy, v24);

    goto LABEL_13;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __77__CXCallDirectoryHost_setEnabled_forLiveLookupExtensionWithIdentifier_reply___block_invoke;
  v27[3] = &unk_1E7C06D70;
  v27[4] = self;
  v30 = enabledCopy;
  v12 = v12;
  v28 = v12;
  v29 = replyCopy;
  [(CXCallDirectoryHost *)self performDelegateCallback:v27];

LABEL_13:
}

void __77__CXCallDirectoryHost_setEnabled_forLiveLookupExtensionWithIdentifier_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedSetEnabled:*(a1 + 56) forLiveLookupExtension:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)_nsExtensionWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = completionCopy;
  if (identifierCopy)
  {
    v8 = objc_alloc_init(CXCallDirectoryNSExtensionManager);
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    processIdentifier = [currentConnection processIdentifier];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__CXCallDirectoryHost__nsExtensionWithIdentifier_completion___block_invoke;
    v13[3] = &unk_1E7C06D98;
    v15 = v7;
    v14 = identifierCopy;
    v16 = processIdentifier;
    [(CXCallDirectoryNSExtensionManager *)v8 extensionWithIdentifier:v14 inContainingAppWithProcessIdentifier:processIdentifier completion:v13];
  }

  else
  {
    v11 = CXDefaultLog(completionCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "[WARN] identifier is nil", v12, 2u);
    }

    v8 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (v7)[2](v7, 0, v8);
  }
}

void __61__CXCallDirectoryHost__nsExtensionWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = CXDefaultLog(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__CXCallDirectoryHost__nsExtensionWithIdentifier_completion___block_invoke_cold_1();
    }

    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (*(v5 + 16))(v5, 0, v6);
  }
}

- (void)setEnabled:(BOOL)enabled forExtensionWithIdentifier:(id)identifier reply:(id)reply
{
  enabledCopy = enabled;
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v10 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v35 = enabledCopy;
    v36 = 2112;
    v37 = identifierCopy;
    _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "enabled %d identifier %@", buf, 0x12u);
  }

  v11 = [(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"modify-any-extension"];
  if (!v11)
  {
    v15 = CXDefaultLog(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v15 setEnabled:v16 forLiveLookupExtensionWithIdentifier:v17 reply:v18, v19, v20, v21, v22];
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"modify-any-extension"];
    v23 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v33 = v14;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v24 = [v23 cx_callDirectoryManagerErrorWithCode:100 userInfo:v12];
    goto LABEL_12;
  }

  v31 = 0;
  v12 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:identifierCopy error:&v31];
  v13 = v31;
  v14 = v13;
  if (!v12)
  {
    v25 = CXDefaultLog(v13);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CXCallDirectoryHost setEnabled:forLiveLookupExtensionWithIdentifier:reply:];
    }

    v24 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
LABEL_12:
    v26 = v24;
    replyCopy[2](replyCopy, v24);

    goto LABEL_13;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__CXCallDirectoryHost_setEnabled_forExtensionWithIdentifier_reply___block_invoke;
  v27[3] = &unk_1E7C06D70;
  v27[4] = self;
  v30 = enabledCopy;
  v12 = v12;
  v28 = v12;
  v29 = replyCopy;
  [(CXCallDirectoryHost *)self performDelegateCallback:v27];

LABEL_13:
}

void __67__CXCallDirectoryHost_setEnabled_forExtensionWithIdentifier_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedToSetEnabled:*(a1 + 56) forExtension:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)getLastUpdatedCallDirectoryInfoWithReply:(id)reply
{
  v23[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "getLastUpdatedCallDirectoryInfoWithReply", buf, 2u);
  }

  v6 = [(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"query-identification-entries"];
  if (v6)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__CXCallDirectoryHost_getLastUpdatedCallDirectoryInfoWithReply___block_invoke;
    v19[3] = &unk_1E7C06CF8;
    v19[4] = self;
    v20 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v19];
  }

  else
  {
    v7 = CXDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v7 getLastUpdatedCallDirectoryInfoWithReply:v8, v9, v10, v11, v12, v13, v14];
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"query-identification-entries"];
    v16 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = v15;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v18 = [v16 cx_callDirectoryManagerErrorWithCode:100 userInfo:v17];
    (*(replyCopy + 2))(replyCopy, 0, v18);
  }
}

void __64__CXCallDirectoryHost_getLastUpdatedCallDirectoryInfoWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedLastUpdatedInfoWithCompletionHandler:*(a1 + 40)];
}

- (void)firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:(id)numbers cacheOnly:(BOOL)only reply:(id)reply
{
  v32 = *MEMORY[0x1E69E9840];
  numbersCopy = numbers;
  replyCopy = reply;
  v10 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = numbersCopy;
    _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "phoneNumbers %@", buf, 0xCu);
  }

  v11 = [(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"query-identification-entries"];
  if (v11)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __102__CXCallDirectoryHost_firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers_cacheOnly_reply___block_invoke;
    v24[3] = &unk_1E7C06D70;
    v24[4] = self;
    v25 = numbersCopy;
    onlyCopy = only;
    v26 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v24];
  }

  else
  {
    v12 = CXDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v12 firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:v13 cacheOnly:v14 reply:v15, v16, v17, v18, v19];
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"query-identification-entries"];
    v21 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29 = v20;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v23 = [v21 cx_callDirectoryManagerErrorWithCode:100 userInfo:v22];
    (*(replyCopy + 2))(replyCopy, 0, v23);
  }
}

void __102__CXCallDirectoryHost_firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers_cacheOnly_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedFirstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:*(a1 + 40) cacheOnly:*(a1 + 56) completionHandler:*(a1 + 48)];
}

- (void)fetchLiveBlockingInfoForHandle:(id)handle reply:(id)reply
{
  v29 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  replyCopy = reply;
  v8 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = handleCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "blockingInfoFor handle=%@", buf, 0xCu);
  }

  v9 = [(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"query-identification-entries"];
  if (v9)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __60__CXCallDirectoryHost_fetchLiveBlockingInfoForHandle_reply___block_invoke;
    v22[3] = &unk_1E7C06D20;
    v22[4] = self;
    v23 = handleCopy;
    v24 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v22];
  }

  else
  {
    v10 = CXDefaultLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v10 firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:v11 cacheOnly:v12 reply:v13, v14, v15, v16, v17];
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"query-identification-entries"];
    v19 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26 = v18;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v21 = [v19 cx_callDirectoryManagerErrorWithCode:100 userInfo:v20];
    (*(replyCopy + 2))(replyCopy, 0, v21);
  }
}

void __60__CXCallDirectoryHost_fetchLiveBlockingInfoForHandle_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedLiveBlockingInfoFor:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:(id)number reply:(id)reply
{
  v25[1] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  replyCopy = reply;
  v8 = [(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"query-identification-entries"];
  if (v8)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __87__CXCallDirectoryHost_firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber_reply___block_invoke;
    v21[3] = &unk_1E7C06D20;
    v21[4] = self;
    v22 = numberCopy;
    v23 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v21];
  }

  else
  {
    v9 = CXDefaultLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v9 firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:v10 cacheOnly:v11 reply:v12, v13, v14, v15, v16];
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"query-identification-entries"];
    v18 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = v17;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v20 = [v18 cx_callDirectoryManagerErrorWithCode:100 userInfo:v19];
    (*(replyCopy + 2))(replyCopy, 0, v20);
  }
}

void __87__CXCallDirectoryHost_firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedFirstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)getExtensionsWithReply:(id)reply
{
  v23[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, &unk_1B486C3FA, buf, 2u);
  }

  v6 = [(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"query-extension-priorities"];
  if (v6)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46__CXCallDirectoryHost_getExtensionsWithReply___block_invoke;
    v19[3] = &unk_1E7C06CF8;
    v19[4] = self;
    v20 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v19];
  }

  else
  {
    v7 = CXDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v7 getExtensionsWithReply:v8, v9, v10, v11, v12, v13, v14];
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"query-extension-priorities"];
    v16 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = v15;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v18 = [v16 cx_callDirectoryManagerErrorWithCode:100 userInfo:v17];
    (*(replyCopy + 2))(replyCopy, 0, v18);
  }
}

void __46__CXCallDirectoryHost_getExtensionsWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedExtensionsWithCompletionHandler:*(a1 + 40)];
}

- (void)setPrioritizedExtensionIdentifiers:(id)identifiers reply:(id)reply
{
  v29 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  replyCopy = reply;
  v8 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = identifiersCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "prioritizedExtensionIdentifiers %@", buf, 0xCu);
  }

  v9 = [(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"modify-extension-priorities"];
  if (v9)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __64__CXCallDirectoryHost_setPrioritizedExtensionIdentifiers_reply___block_invoke;
    v22[3] = &unk_1E7C06D20;
    v22[4] = self;
    v23 = identifiersCopy;
    v24 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v22];
  }

  else
  {
    v10 = CXDefaultLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v10 setPrioritizedExtensionIdentifiers:v11 reply:v12, v13, v14, v15, v16, v17];
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"modify-extension-priorities"];
    v19 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26 = v18;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v21 = [v19 cx_callDirectoryManagerErrorWithCode:100 userInfo:v20];
    (*(replyCopy + 2))(replyCopy, v21);
  }
}

void __64__CXCallDirectoryHost_setPrioritizedExtensionIdentifiers_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedToSetPrioritizedExtensionIdentifiers:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)synchronizeExtensionsWithReply:(id)reply
{
  v23[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, &unk_1B486C3FA, buf, 2u);
  }

  v6 = [(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"synchronize-extensions"];
  if (v6)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__CXCallDirectoryHost_synchronizeExtensionsWithReply___block_invoke;
    v19[3] = &unk_1E7C06CF8;
    v19[4] = self;
    v20 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v19];
  }

  else
  {
    v7 = CXDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v7 synchronizeExtensionsWithReply:v8, v9, v10, v11, v12, v13, v14];
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"synchronize-extensions"];
    v16 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = v15;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v18 = [v16 cx_callDirectoryManagerErrorWithCode:100 userInfo:v17];
    (*(replyCopy + 2))(replyCopy, v18);
  }
}

void __54__CXCallDirectoryHost_synchronizeExtensionsWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedToSynchronizeExtensionsWithCompletionHandler:*(a1 + 40)];
}

- (void)compactStoreWithReply:(id)reply
{
  v23[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, &unk_1B486C3FA, buf, 2u);
  }

  v6 = [(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"compact-store"];
  if (v6)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __45__CXCallDirectoryHost_compactStoreWithReply___block_invoke;
    v19[3] = &unk_1E7C06CF8;
    v19[4] = self;
    v20 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v19];
  }

  else
  {
    v7 = CXDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v7 compactStoreWithReply:v8, v9, v10, v11, v12, v13, v14];
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"compact-store"];
    v16 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = v15;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v18 = [v16 cx_callDirectoryManagerErrorWithCode:100 userInfo:v17];
    (*(replyCopy + 2))(replyCopy, v18);
  }
}

void __45__CXCallDirectoryHost_compactStoreWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedToCompactStoreWithCompletionHandler:*(a1 + 40)];
}

- (void)cleanUpLiveLookupDataWithReply:(id)reply
{
  v23[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "cleanUpLiveLookupDataWithReply", buf, 2u);
  }

  v6 = [(CXCallDirectoryHost *)self _connectionContainsCallDirectoryHostEntitlementCapability:@"compact-store"];
  if (v6)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__CXCallDirectoryHost_cleanUpLiveLookupDataWithReply___block_invoke;
    v19[3] = &unk_1E7C06CF8;
    v19[4] = self;
    v20 = replyCopy;
    [(CXCallDirectoryHost *)self performDelegateCallback:v19];
  }

  else
  {
    v7 = CXDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CXCallDirectoryHost *)v7 compactStoreWithReply:v8, v9, v10, v11, v12, v13, v14];
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requestor does not contain entitlement capability '%@' in call directory host entitlement capabilities list", @"compact-store"];
    v16 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = v15;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v18 = [v16 cx_callDirectoryManagerErrorWithCode:100 userInfo:v17];
    (*(replyCopy + 2))(replyCopy, v18);
  }
}

uint64_t __54__CXCallDirectoryHost_cleanUpLiveLookupDataWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHostRequestedToCleanupLiveLookupData:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)launchCallDirectorySettingsWithReply:(id)reply
{
  replyCopy = reply;
  v5 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, &unk_1B486C3FA, buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CXCallDirectoryHost_launchCallDirectorySettingsWithReply___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  [(CXCallDirectoryHost *)self performDelegateCallback:v7];
}

void __60__CXCallDirectoryHost_launchCallDirectorySettingsWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedToLaunchCallDirectorySettingsWithCompletionHandler:*(a1 + 40)];
}

- (void)prepareStoreIfNecessary
{
  v3 = CXDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v3, OS_LOG_TYPE_DEFAULT, "prepareStoreIfNecessary", buf, 2u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__CXCallDirectoryHost_prepareStoreIfNecessary__block_invoke;
  v4[3] = &unk_1E7C06CA8;
  v4[4] = self;
  [(CXCallDirectoryHost *)self performDelegateCallback:v4];
}

void __46__CXCallDirectoryHost_prepareStoreIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryHost:*(a1 + 32) requestedToPrepareStoreWithCompletionHandler:0];
}

- (void)_connectionContainsCallDirectoryHostEntitlementCapability:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 138412802;
  v6 = a1;
  v7 = 2112;
  v8 = @"com.apple.CallKit.call-directory";
  v9 = 2112;
  v10 = objc_opt_class();
  v4 = v10;
  _os_log_error_impl(&dword_1B47F3000, a3, OS_LOG_TYPE_ERROR, "XPC connection %@ contains entitlement '%@' but it is of unexpected class %@, should be NSArray", &v5, 0x20u);
}

void __59__CXCallDirectoryHost_reloadExtensionWithIdentifier_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0(&dword_1B47F3000, v0, v1, "No extension returned with identifier %@", v2, v3, v4, v5);
}

void __68__CXCallDirectoryHost_resetLiveLookupExtensionWithIdentifier_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1B47F3000, v0, v1, "No extension returned with identifier %@ error %@");
}

- (void)setEnabled:(uint64_t)a3 forLiveLookupExtensionWithIdentifier:(uint64_t)a4 reply:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"modify-any-extension";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Requestor does not contain entitlement capability '%@'", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __61__CXCallDirectoryHost__nsExtensionWithIdentifier_completion___block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_1B47F3000, v1, OS_LOG_TYPE_ERROR, "No extension found with identifier %@ containingAppPID %d", v2, 0x12u);
}

- (void)getLastUpdatedCallDirectoryInfoWithReply:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"query-identification-entries";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Requester does not contain entititlement capability '%@'", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:(uint64_t)a3 cacheOnly:(uint64_t)a4 reply:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"query-identification-entries";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Requestor does not contain entitlement capability '%@'", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getExtensionsWithReply:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"query-extension-priorities";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Requestor does not contain entitlement capability '%@'", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setPrioritizedExtensionIdentifiers:(uint64_t)a3 reply:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"modify-extension-priorities";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Requestor does not contain entitlement capability '%@'", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)synchronizeExtensionsWithReply:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"synchronize-extensions";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Requestor does not contain entitlement capability '%@'", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)compactStoreWithReply:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"compact-store";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Requestor does not contain entitlement capability '%@'", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end