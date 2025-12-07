@interface VGOEMExtensionConnectionBroker
+ (VGOEMExtensionConnectionBroker)sharedInstance;
- (VGOEMExtensionConnectionBroker)init;
- (id)_connectionWithIntent:(id)intent;
- (void)resumeConnectionWithIntent:(id)intent connectionTimeoutHandler:(id)handler connectionErrorHandler:(id)errorHandler intentCompletionHandler:(id)completionHandler;
@end

@implementation VGOEMExtensionConnectionBroker

- (id)_connectionWithIntent:(id)intent
{
  v20 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  GEOConfigGetDouble();
  v6 = v5;
  if (GEOConfigGetBOOL())
  {
    mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
    v8 = [mEMORY[0x277D0EC70] isInternalInstall] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = VGGetVGOEMExtensionConnectionBrokerLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 134349826;
    selfCopy = self;
    v14 = 2112;
    v15 = intentCopy;
    v16 = 2048;
    v17 = v6;
    v18 = 2048;
    v19 = v8;
    _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "[%{public}p] Creating intent connection for intent (%@) with timeout (%.2f) trust check: (%ld)", &v12, 0x2Au);
  }

  v10 = [objc_alloc(MEMORY[0x277D21520]) initWithIntent:intentCopy];
  [v10 setRequiresTCC:0];
  [v10 setRequiresTrustCheck:v8];
  [v10 setRequestTimeoutInterval:v6];

  return v10;
}

- (void)resumeConnectionWithIntent:(id)intent connectionTimeoutHandler:(id)handler connectionErrorHandler:(id)errorHandler intentCompletionHandler:(id)completionHandler
{
  v29 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  completionHandlerCopy = completionHandler;
  v14 = [[_VGOEMExtensionConnectionKey alloc] initWithIntent:intentCopy];
  os_unfair_lock_lock(&self->_lock);
  v15 = [(NSMapTable *)self->_extensionMap objectForKey:v14];
  v16 = VGGetVGOEMExtensionConnectionBrokerLog();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (v15)
  {
    if (v17)
    {
      *buf = 134349314;
      selfCopy3 = self;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_INFO, "[%{public}p] Coalescing duplicate connection request: %@", buf, 0x16u);
    }

    v18 = v15;
  }

  else
  {
    if (v17)
    {
      *buf = 134349314;
      selfCopy3 = self;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_INFO, "[%{public}p] Received new connection request: %@", buf, 0x16u);
    }

    v19 = [_VGOEMExtensionConnection alloc];
    v16 = [(VGOEMExtensionConnectionBroker *)self _connectionWithIntent:intentCopy];
    v18 = [(_VGOEMExtensionConnection *)v19 initWithConnection:v16];
  }

  if (handlerCopy)
  {
    [(_VGOEMExtensionConnection *)v18 addConnectionTimeoutHandler:handlerCopy];
  }

  if (errorHandlerCopy)
  {
    [(_VGOEMExtensionConnection *)v18 addConnectionErrorHandler:errorHandlerCopy];
  }

  [(_VGOEMExtensionConnection *)v18 addIntentCompletionHandler:completionHandlerCopy];
  if (!v15)
  {
    [(NSMapTable *)self->_extensionMap setObject:v18 forKey:v14];
    v20 = VGGetVGOEMExtensionConnectionBrokerLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      extensionMap = self->_extensionMap;
      *buf = 134349314;
      selfCopy3 = self;
      v27 = 2112;
      v28 = extensionMap;
      _os_log_impl(&dword_270EC1000, v20, OS_LOG_TYPE_INFO, "[%{public}p] Added new request to extension map: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __133__VGOEMExtensionConnectionBroker_resumeConnectionWithIntent_connectionTimeoutHandler_connectionErrorHandler_intentCompletionHandler___block_invoke;
    v22[3] = &unk_279E26F20;
    objc_copyWeak(&v24, buf);
    v23 = v14;
    [(_VGOEMExtensionConnection *)v18 resumeWithCompletion:v22];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __133__VGOEMExtensionConnectionBroker_resumeConnectionWithIntent_connectionTimeoutHandler_connectionErrorHandler_intentCompletionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = VGGetVGOEMExtensionConnectionBrokerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v8 = 134349314;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "[%{public}p] Completed connection request: %@", &v8, 0x16u);
    }

    os_unfair_lock_lock(WeakRetained + 4);
    [*(WeakRetained + 1) removeObjectForKey:*(a1 + 32)];
    v5 = VGGetVGOEMExtensionConnectionBrokerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(WeakRetained + 1);
      v8 = 134349314;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] Removed request from extension map: %@", &v8, 0x16u);
    }

    os_unfair_lock_unlock(WeakRetained + 4);
  }

  else
  {
    v7 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[VGOEMExtensionConnectionBroker resumeConnectionWithIntent:connectionTimeoutHandler:connectionErrorHandler:intentCompletionHandler:]_block_invoke";
      v10 = 1024;
      LODWORD(v11) = 286;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v8, 0x12u);
    }
  }
}

- (VGOEMExtensionConnectionBroker)init
{
  v6.receiver = self;
  v6.super_class = VGOEMExtensionConnectionBroker;
  v2 = [(VGOEMExtensionConnectionBroker *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:512 capacity:0];
    extensionMap = v2->_extensionMap;
    v2->_extensionMap = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (VGOEMExtensionConnectionBroker)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__VGOEMExtensionConnectionBroker_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __48__VGOEMExtensionConnectionBroker_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end