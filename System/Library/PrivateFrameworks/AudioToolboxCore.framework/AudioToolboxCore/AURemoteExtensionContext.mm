@interface AURemoteExtensionContext
+ (BOOL)conformsToProtocol:(id)protocol;
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (AURemoteExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)iOSViewController;
- (void)open:(AudioComponentDescription *)open instanceUUID:(id)d reply:(id)reply;
- (void)open:instanceUUID:reply:;
- (void)requestViewControllerWithCompletionHandler:(id)handler;
@end

@implementation AURemoteExtensionContext

- (void)open:(AudioComponentDescription *)open instanceUUID:(id)d reply:(id)reply
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  v10 = _Block_copy(replyCopy);
  v29 = v10;
  objc_initWeak(&location, self);
  v11 = [AURemoteHost alloc];
  _auxiliaryConnection = [(AURemoteExtensionContext *)self _auxiliaryConnection];
  objc_copyWeak(&to, &location);
  v39 = 0;
  v37 = &unk_1F0326FC0;
  objc_moveWeak(&v38, &to);
  v39 = &v37;
  objc_destroyWeak(&to);
  v13 = [(AURemoteHost *)v11 initWithConnection:_auxiliaryConnection config:MEMORY[0x1E695E0F8] timeOutHandler:&v37];
  host = self->_host;
  self->_host = v13;

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v37);
  if (self->_host)
  {
    if (self->_isUIExtension)
    {
      [(AURemoteExtensionContext *)self iOSViewController];
    }

    else
    {
      [(AURemoteExtensionContext *)self _principalObject];
    }
    v15 = ;
    if (!self->_isUIExtension)
    {
      goto LABEL_10;
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v16 = getAUViewControllerClass(void)::softClass;
    v36 = getAUViewControllerClass(void)::softClass;
    if (!getAUViewControllerClass(void)::softClass)
    {
      *&v30 = MEMORY[0x1E69E9820];
      *(&v30 + 1) = 3221225472;
      *&v31 = ___ZL24getAUViewControllerClassv_block_invoke;
      *(&v31 + 1) = &unk_1E72C2B68;
      v32 = &v33;
      ___ZL24getAUViewControllerClassv_block_invoke(&v30);
      v16 = v34[3];
    }

    v17 = v16;
    _Block_object_dispose(&v33, 8);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Principal object %@ must derive from AUViewController but doesn't.", v15];
      [AURemoteExtensionContext open:instanceUUID:reply:]::$_6::operator()(&v29, v19, 0);
    }

    else
    {
LABEL_10:
      if ([v15 conformsToProtocol:&unk_1F03563F0])
      {
        v30 = *&open->componentType;
        LODWORD(v31) = open->componentFlagsMask;
        v26 = 0;
        v18 = [v15 createAudioUnitWithComponentDescription:&v30 error:&v26];
        v19 = v26;
        if (v18)
        {
          componentType = open->componentType;
          if (((componentType != 1635087216) ^ [v18 isSpeechSynthesisProvider]))
          {
            if (open->componentType == 1635087216 && [v18 conformsToProtocol:&unk_1F0356450])
            {
              v21 = v18;
              v22 = self->_host;
              if (v22)
              {
                objc_msgSend_hostAuditToken(v22);
              }

              else
              {
                v24 = 0u;
                v25 = 0u;
              }

              v30 = v24;
              v31 = v25;
              [v21 set_hostAuditToken:&v30];
            }

            [(AURemoteHost *)self->_host openImpl:v18 reply:replyCopy];
            goto LABEL_25;
          }

          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Audio Unit %@ is not a subclass of AVSpeechSynthesisProviderAudioUnit.", v18];
          [AURemoteExtensionContext open:instanceUUID:reply:]::$_6::operator()(&v29, v23, v19);
        }

        else
        {
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to instantiate Audio Unit: %@", v19];
          [AURemoteExtensionContext open:instanceUUID:reply:]::$_6::operator()(&v29, v23, 0);
        }

LABEL_25:
        goto LABEL_26;
      }

      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Principal object %@ does not conform to protocol AUAudioUnitFactory.", v15];
      [AURemoteExtensionContext open:instanceUUID:reply:]::$_6::operator()(&v29, v19, 0);
    }

LABEL_26:

    goto LABEL_27;
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Remote Host Initialisation Failed"];
  [AURemoteExtensionContext open:instanceUUID:reply:]::$_6::operator()(&v29, v15, 0);
LABEL_27:

  objc_destroyWeak(&location);
}

- (void)open:instanceUUID:reply:
{
  objc_destroyWeak((self + 8));

  JUMPOUT(0x193ADF220);
}

- (void)requestViewControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  if (self->_isUIExtension)
  {
    iOSViewController = [(AURemoteExtensionContext *)self iOSViewController];
    v6[2](v6, iOSViewController);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (id)iOSViewController
{
  viewService = [(AURemoteExtensionContext *)self viewService];
  childViewControllers = [viewService childViewControllers];
  lastObject = [childViewControllers lastObject];

  return lastObject;
}

- (AURemoteExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v30 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  endpointCopy = endpoint;
  dCopy = d;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v12 = [mainBundle objectForInfoDictionaryKey:@"NSExtension"];
  v13 = [v12 objectForKeyedSubscript:@"NSExtensionAttributes"];
  +[AURemoteHost _staticInit];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AURemoteExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke;
  block[3] = &unk_1E72BA940;
  block[4] = mainBundle;
  v14 = v13;
  v23 = v14;
  if ([AURemoteExtensionContext initWithInputItems:listenerEndpoint:contextUUID:]::once != -1)
  {
    dispatch_once(&[AURemoteExtensionContext initWithInputItems:listenerEndpoint:contextUUID:]::once, block);
  }

  v21.receiver = self;
  v21.super_class = AURemoteExtensionContext;
  v15 = [(AURemoteExtensionContext *)&v21 initWithInputItems:itemsCopy listenerEndpoint:endpointCopy contextUUID:dCopy];
  if (!v15)
  {
    v18 = 0;
    goto LABEL_10;
  }

  v16 = [v12 objectForKeyedSubscript:@"NSExtensionPointIdentifier"];
  if ([v16 isEqualToString:@"com.apple.AudioUnit"] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"com.apple.AudioUnit-Speech"))
  {
    v17 = 0;
  }

  else
  {
    if (([v16 isEqualToString:@"com.apple.AudioUnit-UI"] & 1) == 0)
    {
      if (kAUExtensionScope)
      {
        v18 = *kAUExtensionScope;
        if (!v18)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(&v18->super.super, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v25 = "AURemoteExtensionContext.mm";
        v26 = 1024;
        v27 = 1506;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_18F5DF000, &v18->super.super, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown extension point: %@", buf, 0x1Cu);
      }

      v18 = 0;
      goto LABEL_8;
    }

    v17 = 1;
  }

  v15->_isUIExtension = v17;
  v18 = v15;
LABEL_8:

LABEL_10:
  return v18;
}

void __76__AURemoteExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
  AURegistrationServerConnection::RegisterExtensionProcess(v2);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"AudioComponentBundle"];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;

      [v7 load];
      v3 = v7;
LABEL_11:

      goto LABEL_12;
    }

    if (kAUExtensionScope)
    {
      v8 = *kAUExtensionScope;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "AURemoteExtensionContext.mm";
      v18 = 1024;
      v19 = 1488;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: AudioComponentBundle %@ not found", buf, 0x1Cu);
    }

    goto LABEL_11;
  }

LABEL_12:
  v10 = [*(a1 + 32) bundleIdentifier];
  v11 = v3;
  v12 = AudioComponentMgr_NSExtension::sExtensionServiceIdentifier;
  AudioComponentMgr_NSExtension::sExtensionServiceIdentifier = v10;
  v13 = v10;

  v14 = AudioComponentMgr_NSExtension::sExtensionServiceBundle;
  AudioComponentMgr_NSExtension::sExtensionServiceBundle = v11;

  GlobalComponentPluginMgr(&v15);
  if (v15)
  {
    std::recursive_mutex::unlock(v15);
  }
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  host = self->_host;
  if (host)
  {
    if (objc_opt_respondsToSelector())
    {
      host = self->_host;
    }

    else
    {
      host = 0;
    }
  }

  return host;
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (+[AURemoteExtensionContext _extensionAuxiliaryVendorProtocol]::once != -1)
  {
    dispatch_once(&+[AURemoteExtensionContext _extensionAuxiliaryVendorProtocol]::once, &__block_literal_global_312);
  }

  v3 = +[AURemoteExtensionContext _extensionAuxiliaryVendorProtocol]::sVendorProtocol;

  return v3;
}

uint64_t __61__AURemoteExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  +[AURemoteExtensionContext _extensionAuxiliaryVendorProtocol]::sVendorProtocol = CreateAUAudioUnitXPCInterface();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (+[AURemoteExtensionContext _extensionAuxiliaryHostProtocol]::once != -1)
  {
    dispatch_once(&+[AURemoteExtensionContext _extensionAuxiliaryHostProtocol]::once, &__block_literal_global_300);
  }

  v3 = +[AURemoteExtensionContext _extensionAuxiliaryHostProtocol]::sHostProtocol;

  return v3;
}

void __59__AURemoteExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0351D40];
  v1 = +[AURemoteExtensionContext _extensionAuxiliaryHostProtocol]::sHostProtocol;
  +[AURemoteExtensionContext _extensionAuxiliaryHostProtocol]::sHostProtocol = v0;

  v2 = +[AURemoteExtensionContext _extensionAuxiliaryHostProtocol]::sHostProtocol;

  SetAllowedClassesForAUAudioUnitHostXPCInterface(v2);
}

+ (BOOL)instancesRespondToSelector:(SEL)selector
{
  if (([AURemoteHost instancesRespondToSelector:?]& 1) != 0)
  {
    return 1;
  }

  v6 = [self superclass];

  return [v6 instancesRespondToSelector:selector];
}

+ (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (([AURemoteHost conformsToProtocol:protocolCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [objc_msgSend(self "superclass")];
  }

  return v5;
}

@end