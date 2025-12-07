@interface NEFilterControlExtensionProviderContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)dealloc;
- (void)dispose;
- (void)handleNewFlow:(id)flow completionHandler:(id)handler;
- (void)handleReport:(id)report;
- (void)notifyRulesChanged;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)provideRemediationMap:(id)map;
- (void)provideURLAppendStringMap:(id)map;
- (void)startFilterWithOptions:(id)options completionHandler:(id)handler;
- (void)stopObserving;
@end

@implementation NEFilterControlExtensionProviderContext

- (void)provideURLAppendStringMap:(id)map
{
  mapCopy = map;
  hostContext = [(NEExtensionProviderContext *)self hostContext];
  [hostContext provideURLAppendStringMap:mapCopy];
}

- (void)provideRemediationMap:(id)map
{
  mapCopy = map;
  hostContext = [(NEExtensionProviderContext *)self hostContext];
  [hostContext provideRemediationMap:mapCopy];
}

- (void)notifyRulesChanged
{
  hostContext = [(NEExtensionProviderContext *)self hostContext];
  [hostContext notifyRulesChanged];
}

- (void)handleReport:(id)report
{
  reportCopy = report;
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  [_principalObject handleReport:reportCopy];
}

- (void)handleNewFlow:(id)flow completionHandler:(id)handler
{
  handlerCopy = handler;
  flowCopy = flow;
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  v9 = _principalObject;
  if (flowCopy && (flowCopy[10] & 1) != 0)
  {
    [_principalObject handleRemediationForFlow:flowCopy completionHandler:handlerCopy];
  }

  else
  {
    [_principalObject handleNewFlow:flowCopy completionHandler:handlerCopy];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  if (objc_msgSend_isEqualToString_(pathCopy))
  {
    remediationMap = [_principalObject remediationMap];
    v9 = [remediationMap count];

    if (v9)
    {
      remediationMap2 = [_principalObject remediationMap];
      [(NEFilterControlExtensionProviderContext *)self provideRemediationMap:remediationMap2];
    }
  }

  if (objc_msgSend_isEqualToString_(pathCopy))
  {
    uRLAppendStringMap = [_principalObject URLAppendStringMap];
    v12 = [uRLAppendStringMap count];

    if (v12)
    {
      uRLAppendStringMap2 = [_principalObject URLAppendStringMap];
      [(NEFilterControlExtensionProviderContext *)self provideURLAppendStringMap:uRLAppendStringMap2];
    }
  }
}

- (void)dealloc
{
  [(NEFilterControlExtensionProviderContext *)self stopObserving];
  v3.receiver = self;
  v3.super_class = NEFilterControlExtensionProviderContext;
  [(NEExtensionProviderContext *)&v3 dealloc];
}

- (void)stopObserving
{
  if (self && (self[104] & 1) != 0)
  {
    _principalObject = [self _principalObject];
    [_principalObject removeObserver:self forKeyPath:@"remediationMap"];
    [_principalObject removeObserver:self forKeyPath:@"URLAppendStringMap"];
    self[104] = 0;
  }
}

- (void)dispose
{
  if (!self || !self->super.super._isDisposed)
  {
    [(NEFilterControlExtensionProviderContext *)self stopObserving];
    v3.receiver = self;
    v3.super_class = NEFilterControlExtensionProviderContext;
    [(NEExtensionProviderContext *)&v3 dispose];
  }
}

- (void)startFilterWithOptions:(id)options completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  objc_initWeak(&location, _principalObject);

  v15.receiver = self;
  v15.super_class = NEFilterControlExtensionProviderContext;
  [(NEFilterExtensionProviderContext *)&v15 startFilterWithOptions:optionsCopy completionHandler:handlerCopy];
  objc_initWeak(&from, self);
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "%@: Calling startFilterWithCompletionHandler", buf, 0xCu);
  }

  v10 = objc_loadWeakRetained(&location);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__NEFilterControlExtensionProviderContext_startFilterWithOptions_completionHandler___block_invoke;
  v11[3] = &unk_1E7F074A0;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  [v10 startFilterWithCompletionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __84__NEFilterControlExtensionProviderContext_startFilterWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (WeakRetained && v5)
  {
    if (v5[41])
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "The completion handler for startFilterWithOptions: was executed twice", v8, 2u);
      }
    }

    else
    {
      v5[41] = 1;
      if (!v3)
      {
        [WeakRetained addObserver:v5 forKeyPath:@"remediationMap" options:5 context:0];
        [WeakRetained addObserver:v6 forKeyPath:@"URLAppendStringMap" options:5 context:0];
        v6[104] = 1;
      }

      [v6 startedWithError:v3];
    }
  }
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_3666 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_3666, &__block_literal_global_69_3667);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_3668;

  return v3;
}

uint64_t __74__NEFilterControlExtensionProviderContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2628];
  v1 = _extensionAuxiliaryHostProtocol_protocol_3668;
  _extensionAuxiliaryHostProtocol_protocol_3668 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_3671 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_3671, &__block_literal_global_3672);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_3673;

  return v3;
}

uint64_t __76__NEFilterControlExtensionProviderContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2560];
  v1 = _extensionAuxiliaryVendorProtocol_protocol_3673;
  _extensionAuxiliaryVendorProtocol_protocol_3673 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end