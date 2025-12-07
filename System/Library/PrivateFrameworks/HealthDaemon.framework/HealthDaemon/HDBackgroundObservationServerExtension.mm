@interface HDBackgroundObservationServerExtension
- (HDBackgroundObservationServerExtension)init;
- (id)_initWithExtension:(id)extension;
- (id)description;
- (void)connectWithCompletionHandler:(id)handler;
- (void)disconnect;
- (void)notifyExtensionOfUpcomingTimeout;
- (void)notifyExtensionOfUpdateForSampleType:(id)type completionHandler:(id)handler;
@end

@implementation HDBackgroundObservationServerExtension

- (HDBackgroundObservationServerExtension)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)_initWithExtension:(id)extension
{
  v31 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  v26.receiver = self;
  v26.super_class = HDBackgroundObservationServerExtension;
  v6 = [(HDBackgroundObservationServerExtension *)&v26 init];
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    identifier = [extensionCopy identifier];
    v9 = [v7 stringWithFormat:@"extension.%@", identifier];
    v10 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v10;

    v12 = HKCreateSerialDispatchQueue();
    clientQueue = v6->_clientQueue;
    v6->_clientQueue = v12;

    objc_storeStrong(&v6->_extension, extension);
    identifier2 = [extensionCopy identifier];
    extensionIdentifier = v6->_extensionIdentifier;
    v6->_extensionIdentifier = identifier2;

    v16 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:v6->_extensionIdentifier];
    v17 = v16;
    if (v16)
    {
      containingBundle = [v16 containingBundle];
      bundleIdentifier = [containingBundle bundleIdentifier];
      appIdentifier = v6->_appIdentifier;
      v6->_appIdentifier = bundleIdentifier;
    }

    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEBUG))
    {
      v23 = v21;
      identifier3 = [extensionCopy identifier];
      extensionPointIdentifier = [extensionCopy extensionPointIdentifier];
      *buf = 138543618;
      v28 = identifier3;
      v29 = 2114;
      v30 = extensionPointIdentifier;
      _os_log_debug_impl(&dword_228986000, v23, OS_LOG_TYPE_DEBUG, "Initialized app extension server with extension ID: %{public}@ for extension point ID: %{public}@", buf, 0x16u);
    }
  }

  return v6;
}

- (void)connectWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__HDBackgroundObservationServerExtension_connectWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_2786173C8;
  aBlock[4] = self;
  v11 = handlerCopy;
  v5 = _Block_copy(aBlock);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HDBackgroundObservationServerExtension_connectWithCompletionHandler___block_invoke_3;
  v8[3] = &unk_278614E28;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __71__HDBackgroundObservationServerExtension_connectWithCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HDBackgroundObservationServerExtension_connectWithCompletionHandler___block_invoke_2;
  block[3] = &unk_278616460;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __71__HDBackgroundObservationServerExtension_connectWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 32))
  {
    _HKInitializeLogging();
    v3 = MEMORY[0x277CCC288];
    v4 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v30 = v5;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "Connecting to app extension: %{public}@", buf, 0xCu);
    }

    v6 = *(*(a1 + 32) + 8);
    v28 = 0;
    v7 = [v6 beginExtensionRequestWithOptions:0 inputItems:0 error:&v28];
    v8 = v28;
    if (v7)
    {
      v9 = objc_msgSend_copy(v7);
      v10 = [*(*(a1 + 32) + 8) _extensionContextForUUID:v9];
      v11 = [v10 _auxiliaryConnection];
      v12 = v11;
      if (v10)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v14 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"[%@] app extension failed to get extension context for sessionUUID: %@", *(*(a1 + 32) + 64), v9}];

        _HKInitializeLogging();
        v15 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          v25 = *(*(a1 + 32) + 64);
          *buf = 138543618;
          v30 = v25;
          v31 = 2114;
          v32 = v14;
          _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Failed to connect to app extension: %{public}@ with error: %{public}@", buf, 0x16u);
        }

        (*(*(a1 + 40) + 16))();
        v8 = v14;
      }

      else
      {
        objc_storeStrong((*(a1 + 32) + 32), v9);
        objc_storeStrong((*(a1 + 32) + 40), v10);
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __71__HDBackgroundObservationServerExtension_connectWithCompletionHandler___block_invoke_312;
        v27[3] = &unk_2786138D0;
        v27[4] = *(a1 + 32);
        v22 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v27];
        v23 = *(a1 + 32);
        v24 = *(v23 + 48);
        *(v23 + 48) = v22;

        (*(*(a1 + 40) + 16))(*(a1 + 40), *(*(a1 + 32) + 48) != 0, v8);
      }

      goto LABEL_22;
    }

    _HKInitializeLogging();
    v16 = *v3;
    v17 = os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v17)
      {
        v18 = *(*(a1 + 32) + 64);
        *buf = 138543618;
        v30 = v18;
        v31 = 2114;
        v32 = v8;
        v19 = "Failed to activate app extension: %{public}@ with error: %{public}@";
        v20 = v16;
        v21 = 22;
LABEL_24:
        _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
      }
    }

    else if (v17)
    {
      v26 = *(*(a1 + 32) + 64);
      *buf = 138543362;
      v30 = v26;
      v19 = "Failed to activate app extension: %{public}@";
      v20 = v16;
      v21 = 12;
      goto LABEL_24;
    }

    (*(*(a1 + 40) + 16))();
LABEL_22:

    return;
  }

  v2 = *(*(a1 + 40) + 16);

  v2();
}

void __71__HDBackgroundObservationServerExtension_connectWithCompletionHandler___block_invoke_312(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC288];
  if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
  {
    v5 = *(*(a1 + 32) + 64);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "Failed to connect to app extension: %{public}@ with error: %{public}@", &v6, 0x16u);
  }
}

- (void)disconnect
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDBackgroundObservationServerExtension_disconnect__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __52__HDBackgroundObservationServerExtension_disconnect__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 32))
  {
    [*(v1 + 48) performCleanup];
    [*(*(a1 + 32) + 8) cancelExtensionRequestWithIdentifier:*(*(a1 + 32) + 32)];
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;

    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;

    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "Disconnected from app extension: %{public}@", &v11, 0xCu);
    }
  }
}

- (void)notifyExtensionOfUpdateForSampleType:(id)type completionHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__HDBackgroundObservationServerExtension_notifyExtensionOfUpdateForSampleType_completionHandler___block_invoke;
  aBlock[3] = &unk_2786173C8;
  aBlock[4] = self;
  v16 = handlerCopy;
  v8 = _Block_copy(aBlock);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HDBackgroundObservationServerExtension_notifyExtensionOfUpdateForSampleType_completionHandler___block_invoke_3;
  block[3] = &unk_278616D18;
  v13 = typeCopy;
  v14 = v8;
  block[4] = self;
  v10 = typeCopy;
  v11 = v8;
  dispatch_async(queue, block);
}

void __97__HDBackgroundObservationServerExtension_notifyExtensionOfUpdateForSampleType_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HDBackgroundObservationServerExtension_notifyExtensionOfUpdateForSampleType_completionHandler___block_invoke_2;
  block[3] = &unk_278616460;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __97__HDBackgroundObservationServerExtension_notifyExtensionOfUpdateForSampleType_completionHandler___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 32) && (v3 = *(v2 + 48)) != 0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __97__HDBackgroundObservationServerExtension_notifyExtensionOfUpdateForSampleType_completionHandler___block_invoke_317;
    v8[3] = &unk_278613658;
    v4 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v3 didReceiveUpdateForSampleType:v4 completionHandler:v8];
    v5 = v9;
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"app extension has no active connection"];
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(a1 + 32) + 64);
      *buf = 138543362;
      v11 = v7;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "No active app extension was found for %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)notifyExtensionOfUpcomingTimeout
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HDBackgroundObservationServerExtension_notifyExtensionOfUpcomingTimeout__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __74__HDBackgroundObservationServerExtension_notifyExtensionOfUpcomingTimeout__block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (*(v2 + 32) && (v3 = *(v2 + 48)) != 0)
  {
    [v3 backgroundObservationExtensionTimeWillExpire];
    *(a1[4] + 56) = 1;
  }

  else
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1[4] + 64);
      v6 = 138543362;
      v7 = v5;
      _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "No active app extension was found for %{public}@", &v6, 0xCu);
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: <%p> Extension ID: %@, App Bundle ID: %@", v5, self, self->_extensionIdentifier, self->_appIdentifier];

  return v6;
}

@end