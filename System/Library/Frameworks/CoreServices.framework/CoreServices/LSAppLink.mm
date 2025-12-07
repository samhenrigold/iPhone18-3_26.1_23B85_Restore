@interface LSAppLink
+ (BOOL)URLComponentsAreValidForAppLinks:(id)links error:(id *)error;
+ (BOOL)_URLIsValidForAppLinks:(id)links error:(id *)error;
+ (BOOL)areEnabledByDefault;
+ (BOOL)auditTokenHasReadAccess:(id *)access;
+ (BOOL)auditTokenHasWriteAccess:(id *)access;
+ (BOOL)currentProcessHasReadAccess;
+ (BOOL)currentProcessHasWriteAccess;
+ (id)_appLinkWithURL:(id)l applicationRecord:(id)record plugInClass:(Class)class;
+ (id)_appLinksWithState:(id)state context:(LSContext *)context limit:(unint64_t)limit URLComponents:(id)components error:(id *)error;
+ (id)_appLinksWithState:(id)state context:(LSContext *)context limit:(unint64_t)limit error:(id *)error;
+ (id)_dispatchQueue;
+ (id)appLinksWithURL:(id)l limit:(unint64_t)limit error:(id *)error;
+ (id)appLinksWithURL:(id)l limit:(unint64_t)limit includeLinksForCurrentApplication:(BOOL)application error:(id *)error;
+ (void)_openAppLink:(id)link state:(id)state completionHandler:(id)handler;
+ (void)_openWithAppLink:(id)link state:(id)state completionHandler:(id)handler;
+ (void)afterAppLinksBecomeAvailableForURL:(id)l limit:(unint64_t)limit performBlock:(id)block;
+ (void)getAppLinkWithURL:(id)l completionHandler:(id)handler;
+ (void)getAppLinksWithURL:(id)l completionHandler:(id)handler;
+ (void)openWithURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeSettingsReturningError:(id *)error;
- (BOOL)setBrowserSettings:(id)settings error:(id *)error;
- (BOOL)setEnabled:(BOOL)enabled error:(id *)error;
- (LSAppLink)initWithCoder:(id)coder;
- (id)_userActivityWithState:(id)state error:(id *)error;
- (id)debugDescription;
- (int64_t)openStrategy;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)openInWebBrowser:(BOOL)browser setOpenStrategy:(int64_t)strategy webBrowserState:(id)state configuration:(id)configuration completionHandler:(id)handler;
- (void)openWithConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation LSAppLink

+ (id)_dispatchQueue
{
  if (+[LSAppLink(Internal) _dispatchQueue]::once != -1)
  {
    +[LSAppLink(Internal) _dispatchQueue];
  }

  v3 = +[LSAppLink(Internal) _dispatchQueue]::result;

  return v3;
}

+ (id)appLinksWithURL:(id)l limit:(unint64_t)limit error:(id *)error
{
  v5 = [self appLinksWithURL:l limit:limit includeLinksForCurrentApplication:0 error:error];

  return v5;
}

+ (id)appLinksWithURL:(id)l limit:(unint64_t)limit includeLinksForCurrentApplication:(BOOL)application error:(id *)error
{
  applicationCopy = application;
  lCopy = l;
  v13 = lCopy;
  if (lCopy)
  {
    if (limit)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"aURL != nil"}];

    if (limit)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"limit > 0"}];

LABEL_3:
  if ([__LSDefaultsGetSharedInstance(lCopy v12)])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:79 description:@"Cannot call this method from within the Launch Services daemon."];
  }

  v14 = objc_alloc_init(_LSAppLinkOpenState);
  v15 = [(_LSAppLinkOpenState *)v14 setURL:v13];
  [(_LSAppLinkOpenState *)v14 setAuditToken:_LSGetAuditTokenForSelf(v15, v16)];
  [(_LSAppLinkOpenState *)v14 setIncludeLinksForCallingApplication:applicationCopy];
  v25 = 0;
  v17 = [self _appLinksWithState:v14 context:0 limit:limit error:&v25];
  v18 = v25;
  v19 = v18;
  if (error && !v17)
  {
    v20 = v18;
    *error = v19;
  }

  return v17;
}

+ (void)getAppLinkWithURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  _dispatchQueue = [objc_opt_class() _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__LSAppLink_getAppLinkWithURL_completionHandler___block_invoke;
  block[3] = &unk_1E6A1A4F8;
  v15 = handlerCopy;
  selfCopy = self;
  v14 = lCopy;
  v10 = handlerCopy;
  v11 = lCopy;
  dispatch_async(_dispatchQueue, block);
}

void __49__LSAppLink_getAppLinkWithURL_completionHandler___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v8 = 0;
  v4 = [v2 appLinksWithURL:v3 limit:1 error:&v8];
  v5 = v8;
  v6 = a1[5];
  v7 = [v4 firstObject];
  (*(v6 + 16))(v6, v7, v5);
}

+ (void)getAppLinksWithURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  _dispatchQueue = [objc_opt_class() _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__LSAppLink_getAppLinksWithURL_completionHandler___block_invoke;
  block[3] = &unk_1E6A1A4F8;
  v13 = handlerCopy;
  selfCopy = self;
  v12 = lCopy;
  v9 = handlerCopy;
  v10 = lCopy;
  dispatch_async(_dispatchQueue, block);
}

void __50__LSAppLink_getAppLinksWithURL_completionHandler___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v6 = 0;
  v4 = [v2 appLinksWithURL:v3 limit:-1 error:&v6];
  v5 = v6;
  (*(a1[5] + 16))();
}

+ (void)afterAppLinksBecomeAvailableForURL:(id)l limit:(unint64_t)limit performBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v11 = blockCopy;
  if (lCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"aURL != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];

LABEL_3:
  v16 = 0;
  v12 = [self _URLIsValidForAppLinks:lCopy error:&v16];
  v13 = v16;
  if (v12)
  {
    [_LSSharedWebCredentialsAppLink afterAppLinksBecomeAvailableForURL:lCopy limit:limit performBlock:v11];
  }

  else
  {
    (v11)[2](v11, 0, v13);
  }
}

+ (BOOL)areEnabledByDefault
{
  if (![__LSDefaultsGetSharedInstance(self a2)])
  {
    return 1;
  }

  v2 = CFPreferencesCopyValue(@"LSAppLinksEnabledByDefault", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)isEnabled
{
  v2 = objc_opt_class();

  return [v2 areEnabledByDefault];
}

- (BOOL)setEnabled:(BOOL)enabled error:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSAppLink setEnabled:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 169);
  }

  return 0;
}

- (unint64_t)hash
{
  v3 = [(LSAppLink *)self URL];
  v4 = [v3 hash];
  targetApplicationRecord = [(LSAppLink *)self targetApplicationRecord];
  v6 = [targetApplicationRecord hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(LSAppLink *)v5 URL];
      v7 = [(LSAppLink *)self URL];
      if ([v6 isEqual:v7])
      {
        targetApplicationRecord = [(LSAppLink *)v5 targetApplicationRecord];
        targetApplicationRecord2 = [(LSAppLink *)self targetApplicationRecord];
        v10 = [targetApplicationRecord isEqual:targetApplicationRecord2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(LSAppLink *)self URL];
  targetApplicationRecord = [(LSAppLink *)self targetApplicationRecord];
  bundleIdentifier = [targetApplicationRecord bundleIdentifier];
  v8 = [v3 stringWithFormat:@"<%@ %p> { url = %@, app = %@ }", v4, self, v5, bundleIdentifier];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(LSAppLink *)self URL];
  [coderCopy encodeObject:v4 forKey:@"URL"];

  targetApplicationRecord = [(LSAppLink *)self targetApplicationRecord];
  [coderCopy encodeObject:targetApplicationRecord forKey:@"targetApplicationRecord"];

  [coderCopy encodeObject:self->_targetApplicationProxy forKey:@"targetApplicationProxy"];
}

- (LSAppLink)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(LSAppLink *)self init];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    [(LSAppLink *)v5 setURL:v6];

    v7 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"targetApplicationRecord"];
    [(LSAppLink *)v5 setTargetApplicationRecord:v7];

    v8 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"targetApplicationProxy"];
    targetApplicationProxy = v5->_targetApplicationProxy;
    v5->_targetApplicationProxy = v8;

    v10 = [(LSAppLink *)v5 URL];
    if (!v10 || ([(LSAppLink *)v5 targetApplicationRecord], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
    {

      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)currentProcessHasReadAccess
{
  v3 = _LSGetAuditTokenForSelf(self, a2);
  if (v3)
  {
    v4 = v3[1];
    v6[0] = *v3;
    v6[1] = v4;
    LOBYTE(v3) = [self auditTokenHasReadAccess:v6];
  }

  return v3;
}

+ (BOOL)auditTokenHasReadAccess:(id *)access
{
  MayMapDatabase = _LSAuditTokenMayMapDatabase(access);
  if (MayMapDatabase)
  {
    v5 = _LSSWCServiceDetailsClass();
    v6 = *&access->var0[4];
    v8[0] = *access->var0;
    v8[1] = v6;
    LOBYTE(MayMapDatabase) = [(objc_class *)v5 auditTokenHasReadAccess:v8];
  }

  return MayMapDatabase;
}

+ (BOOL)currentProcessHasWriteAccess
{
  v3 = _LSGetAuditTokenForSelf(self, a2);
  if (v3)
  {
    v4 = v3[1];
    v6[0] = *v3;
    v6[1] = v4;
    LOBYTE(v3) = [self auditTokenHasWriteAccess:v6];
  }

  return v3;
}

+ (BOOL)auditTokenHasWriteAccess:(id *)access
{
  v4 = _LSSWCServiceDetailsClass();
  v5 = *&access->var0[4];
  v7[0] = *access->var0;
  v7[1] = v5;
  return [(objc_class *)v4 auditTokenHasWriteAccess:v7];
}

- (void)openWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([__LSDefaultsGetSharedInstance(handlerCopy v9)])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:336 description:@"Cannot call this method from within the Launch Services daemon."];
  }

  _dispatchQueue = [objc_opt_class() _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__LSAppLink_Open__openWithConfiguration_completionHandler___block_invoke;
  block[3] = &unk_1E6A193B8;
  block[4] = self;
  v15 = configurationCopy;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = configurationCopy;
  dispatch_async(_dispatchQueue, block);
}

void __59__LSAppLink_Open__openWithConfiguration_completionHandler___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(_LSAppLinkOpenState);
  v2 = [*(a1 + 32) URL];
  [(_LSAppLinkOpenState *)v3 setURL:v2];

  [(_LSAppLinkOpenState *)v3 setOpenConfiguration:*(a1 + 40)];
  [objc_opt_class() _openWithAppLink:*(a1 + 32) state:v3 completionHandler:*(a1 + 48)];
}

+ (void)openWithURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  lCopy = l;
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([__LSDefaultsGetSharedInstance(handlerCopy v12)])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:361 description:@"Cannot call this method from within the Launch Services daemon."];
  }

  _dispatchQueue = [self _dispatchQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__LSAppLink_Open__openWithURL_configuration_completionHandler___block_invoke;
  v18[3] = &unk_1E6A1A520;
  v19 = lCopy;
  v20 = configurationCopy;
  v21 = handlerCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v15 = configurationCopy;
  v16 = lCopy;
  dispatch_async(_dispatchQueue, v18);
}

void __63__LSAppLink_Open__openWithURL_configuration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LSAppLinkOpenState);
  [(_LSAppLinkOpenState *)v2 setURL:*(a1 + 32)];
  [(_LSAppLinkOpenState *)v2 setOpenConfiguration:*(a1 + 40)];
  [*(a1 + 56) _openWithAppLink:0 state:v2 completionHandler:*(a1 + 48)];
}

- (BOOL)setBrowserSettings:(id)settings error:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSAppLink(BrowserSettings) setBrowserSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 398);
  }

  return 0;
}

- (BOOL)removeSettingsReturningError:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSAppLink(BrowserSettings) removeSettingsReturningError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 404);
  }

  return 0;
}

- (int64_t)openStrategy
{
  if ([(LSAppLink *)self isEnabled])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)openInWebBrowser:(BOOL)browser setOpenStrategy:(int64_t)strategy webBrowserState:(id)state configuration:(id)configuration completionHandler:(id)handler
{
  stateCopy = state;
  configurationCopy = configuration;
  handlerCopy = handler;
  v15 = MEMORY[0x1865D71B0]();
  MEMORY[0x1865D7C40]();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __108__LSAppLink_OpenStrategy__openInWebBrowser_setOpenStrategy_webBrowserState_configuration_completionHandler___block_invoke;
  v28[3] = &unk_1E6A190B8;
  v16 = v15;
  v29 = v16;
  v17 = MEMORY[0x1865D71B0](v28);

  _dispatchQueue = [objc_opt_class() _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__LSAppLink_OpenStrategy__openInWebBrowser_setOpenStrategy_webBrowserState_configuration_completionHandler___block_invoke_2;
  block[3] = &unk_1E6A1A548;
  v25 = v17;
  strategyCopy = strategy;
  block[4] = self;
  v23 = stateCopy;
  browserCopy = browser;
  v24 = configurationCopy;
  v19 = v17;
  v20 = configurationCopy;
  v21 = stateCopy;
  dispatch_async(_dispatchQueue, block);
}

void __108__LSAppLink_OpenStrategy__openInWebBrowser_setOpenStrategy_webBrowserState_configuration_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, a2, v6);
  }

  MEMORY[0x1865D7C50](v5);
}

void __108__LSAppLink_OpenStrategy__openInWebBrowser_setOpenStrategy_webBrowserState_configuration_completionHandler___block_invoke_2(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setOpenStrategy:*(a1 + 64)];
  v2 = objc_alloc_init(_LSAppLinkOpenState);
  v3 = [*(a1 + 32) URL];
  [(_LSAppLinkOpenState *)v2 setURL:v3];

  [(_LSAppLinkOpenState *)v2 setBrowserState:*(a1 + 40)];
  [(_LSAppLinkOpenState *)v2 setOpenConfiguration:*(a1 + 48)];
  if (*(a1 + 72) == 1)
  {
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __108__LSAppLink_OpenStrategy__openInWebBrowser_setOpenStrategy_webBrowserState_configuration_completionHandler___block_invoke_3;
    v10 = &unk_1E6A19090;
    v11 = *(a1 + 56);
    v4 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:?];
    v5 = [*(a1 + 32) URL];
    v12 = @"_LSAppLinkOpenStateLaunchOptionKey";
    v13[0] = v2;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v4 performOpenOperationWithURL:v5 fileHandle:0 bundleIdentifier:@"com.apple.mobilesafari" documentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:0 options:v6 delegate:0 completionHandler:{*(a1 + 56), v7, v8, v9, v10}];
  }

  else
  {
    [objc_opt_class() _openWithAppLink:*(a1 + 32) state:v2 completionHandler:*(a1 + 56)];
  }
}

void __37__LSAppLink_Internal___dispatchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.applinks", v2);
  v1 = +[LSAppLink(Internal) _dispatchQueue]::result;
  +[LSAppLink(Internal) _dispatchQueue]::result = v0;
}

+ (BOOL)_URLIsValidForAppLinks:(id)links error:(id *)error
{
  linksCopy = links;
  v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:linksCopy resolvingAgainstBaseURL:1];
  LOBYTE(error) = [self URLComponentsAreValidForAppLinks:v7 error:error];

  return error;
}

+ (id)_appLinksWithState:(id)state context:(LSContext *)context limit:(unint64_t)limit error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v11 = [stateCopy URL];
  if (!v11 || (objc_opt_class(), (stateCopy == 0) | ((objc_opt_isKindOfClass() & 1) == 0)))
  {
    v27 = *MEMORY[0x1E696A278];
    v28[0] = @"invalid input parameters";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v12, "+[LSAppLink(Internal) _appLinksWithState:context:limit:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 691);
    v20 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v11 resolvingAgainstBaseURL:1];
    v26 = 0;
    v13 = [self URLComponentsAreValidForAppLinks:v12 error:&v26];
    v14 = v26;
    v15 = v14;
    if (v13)
    {
      scheme = [v12 scheme];
      lowercaseString = [scheme lowercaseString];
      [v12 setScheme:lowercaseString];

      host = [v12 host];
      lowercaseString2 = [host lowercaseString];
      [v12 setHost:lowercaseString2];

      v25 = 0;
      v20 = [self _appLinksWithState:stateCopy context:context limit:limit URLComponents:v12 error:&v25];
      v21 = v25;
    }

    else
    {
      v20 = 0;
      v21 = v14;
    }

    v22 = v21;
  }

  if (error && !v20)
  {
    v23 = v22;
    *error = v22;
  }

  return v20;
}

+ (id)_appLinkWithURL:(id)l applicationRecord:(id)record plugInClass:(Class)class
{
  lCopy = l;
  recordCopy = record;
  v10 = recordCopy;
  if (lCopy)
  {
    if (recordCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:705 description:{@"Invalid parameter not satisfying: %@", @"aURL != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:706 description:{@"Invalid parameter not satisfying: %@", @"appRecord != nil"}];

LABEL_3:
  v11 = objc_alloc_init(self);
  v12 = v11;
  if (v11)
  {
    [v11 setURL:lCopy];
    [v12 setTargetApplicationRecord:v10];
    compatibilityObject = [v10 compatibilityObject];
    v14 = v12[2];
    v12[2] = compatibilityObject;
  }

  return v12;
}

+ (void)_openWithAppLink:(id)link state:(id)state completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  stateCopy = state;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (!(linkCopy | stateCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:725 description:{@"Invalid parameter not satisfying: %@", @"appLink != nil || openState != nil"}];
  }

  if (([__LSDefaultsGetSharedInstance(handlerCopy v12)] & 1) == 0)
  {
    v15 = &__block_literal_global_227;
    if (v13)
    {
      v15 = v13;
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __64__LSAppLink_Internal___openWithAppLink_state_completionHandler___block_invoke_2;
    v33[3] = &unk_1E6A19090;
    v13 = v15;
    v34 = v13;
    v16 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:v33];
    [v16 openAppLink:linkCopy state:stateCopy completionHandler:v13];

    v14 = v34;
    goto LABEL_12;
  }

  if (stateCopy)
  {
    if (linkCopy)
    {
      v14 = 0;
      goto LABEL_7;
    }

    v32 = 0;
    v18 = [self _appLinksWithState:stateCopy context:0 limit:1 error:&v32];
    v14 = v32;
    if (v18)
    {
      if ([v18 count])
      {
        linkCopy = [v18 firstObject];

        if (linkCopy)
        {
LABEL_7:
          if ([linkCopy isEnabled])
          {
LABEL_8:
            [self _openAppLink:linkCopy state:stateCopy completionHandler:v13];
            goto LABEL_12;
          }

          openConfiguration = [stateCopy openConfiguration];
          ignoreAppLinkEnabledProperty = [openConfiguration ignoreAppLinkEnabledProperty];

          if (ignoreAppLinkEnabledProperty)
          {
            v21 = objc_msgSend_auditToken(stateCopy);
            v22 = v21;
            if (v21)
            {
              if (_LSCheckEntitlementForAuditToken(v21, @"com.apple.private.canIgnoreAppLinkEnabledProperty"))
              {
                goto LABEL_8;
              }

              v23 = _LSCheckEntitlementForAuditToken(v22, @"com.apple.private.canIgnoreAppLinkOpenStrategy");
              if (v23)
              {
                v25 = [__LSDefaultsGetSharedInstance(v23 v24)];
                if (v25)
                {
                  v26 = _LSDefaultLog(v25);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    v27 = _LSGetPIDFromToken(v22);
                    v28 = _LSCopyExecutableURLForAuditToken(v22);
                    [(LSAppLink(Internal) *)v27 _openWithAppLink:v28 state:buf completionHandler:v26];
                  }
                }

                goto LABEL_8;
              }
            }
          }

          if (v13)
          {
            v29 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -912, 0, "+[LSAppLink(Internal) _openWithAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 795);
            (*(v13 + 2))(v13, 0, v29);
          }

          goto LABEL_12;
        }

LABEL_32:
        if (v13)
        {
          (*(v13 + 2))(v13, 0, v14);
        }

        linkCopy = 0;
        goto LABEL_12;
      }

      v30 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "+[LSAppLink(Internal) _openWithAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 763);

      v14 = v30;
    }

    goto LABEL_32;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v35 = *MEMORY[0x1E696A278];
  v36 = @"invalid input parameters";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "+[LSAppLink(Internal) _openWithAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 809);
  (*(v13 + 2))(v13, 0, v17);

LABEL_12:
LABEL_13:
}

+ (void)_openAppLink:(id)link state:(id)state completionHandler:(id)handler
{
  v35[1] = *MEMORY[0x1E69E9840];
  linkCopy = link;
  stateCopy = state;
  handlerCopy = handler;
  if (linkCopy)
  {
    if (stateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:817 description:{@"Invalid parameter not satisfying: %@", @"appLink != nil"}];

    if (stateCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSAppLink.mm" lineNumber:818 description:{@"Invalid parameter not satisfying: %@", @"openState != nil"}];

LABEL_3:
  targetApplicationRecord = [linkCopy targetApplicationRecord];
  if ([targetApplicationRecord isSystemPlaceholder])
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __60__LSAppLink_Internal___openAppLink_state_completionHandler___block_invoke;
    v32[3] = &unk_1E6A19090;
    v13 = handlerCopy;
    v33 = v13;
    v14 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:v32];
    bundleIdentifier = [targetApplicationRecord bundleIdentifier];
    v16 = [linkCopy URL];
    [v14 failedToOpenApplication:bundleIdentifier withURL:v16 completionHandler:v13];

    v17 = v33;
LABEL_18:

    goto LABEL_19;
  }

  xPCConnection = [stateCopy XPCConnection];

  if (xPCConnection)
  {
    v31 = 0;
    v19 = [linkCopy _userActivityWithState:stateCopy error:&v31];
    v20 = v31;
    v21 = v20;
    if (v19)
    {
      v30 = v20;
      v22 = _LSGetDataForUserActivity(v19, &v30);
      v17 = v30;

      if (v22)
      {
        _uniqueIdentifier = [v19 _uniqueIdentifier];
        activityType = [v19 activityType];
        bundleIdentifier2 = [targetApplicationRecord bundleIdentifier];
        xPCConnection2 = [stateCopy XPCConnection];
        _LSServer_OpenUserActivity(_uniqueIdentifier, v22, activityType, 1, bundleIdentifier2, linkCopy, stateCopy, 0, xPCConnection2, handlerCopy);
      }

      else if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, 0, v17);
      }
    }

    else
    {
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, 0, v20);
      }

      v17 = v21;
    }

    goto LABEL_18;
  }

  if (handlerCopy)
  {
    v34 = *MEMORY[0x1E696A278];
    v35[0] = @"openState.XPCConnection";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v26 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v17, "+[LSAppLink(Internal) _openAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 842);
    (*(handlerCopy + 2))(handlerCopy, 0, v26);

    goto LABEL_18;
  }

LABEL_19:
}

+ (BOOL)URLComponentsAreValidForAppLinks:(id)links error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  linksCopy = links;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = +[_LSAppLinkPlugIn plugInClasses];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v14 + 1) + 8 * i) canHandleURLComponents:linksCopy])
        {
          v12 = 1;
          goto LABEL_16;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = [linksCopy URL];
  v6 = v10;
  if (v10)
  {
    if (error)
    {
      v18 = *MEMORY[0x1E696A980];
      v19 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A978], -1002, v11, "+[LSAppLink(Private) URLComponentsAreValidForAppLinks:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 920);
    }

    goto LABEL_15;
  }

  if (!error)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  _LSMakeNSErrorImpl(*MEMORY[0x1E696A978], -1002, 0, "+[LSAppLink(Private) URLComponentsAreValidForAppLinks:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 922);
  *error = v12 = 0;
LABEL_16:

  return v12;
}

+ (id)_appLinksWithState:(id)state context:(LSContext *)context limit:(unint64_t)limit URLComponents:(id)components error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  componentsCopy = components;
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = +[_LSAppLinkPlugIn plugInClasses];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v29;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        if ([(objc_class *)v15 canHandleURLComponents:componentsCopy])
        {
          v16 = objc_alloc_init(v15);
          if (v16)
          {
            v17 = [componentsCopy copy];
            [v16 setURLComponents:v17];

            [v16 setLimit:limit];
            [v16 setState:stateCopy];
            v27 = v12;
            v18 = [v16 appLinksWithContext:context error:&v27];
            v19 = v27;

            if (!v18 || ([v26 addObjectsFromArray:v18], v20 = objc_msgSend(v26, "count") < limit, v18, !v20))
            {

              v12 = v19;
              goto LABEL_16;
            }

            v12 = v19;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

LABEL_16:

    if (v12)
    {

      v26 = 0;
      goto LABEL_24;
    }
  }

  else
  {
  }

  if ([v26 count])
  {
    if ([v26 count] > limit)
    {
      [v26 removeObjectsInRange:{limit, objc_msgSend(v26, "count") - limit}];
    }

    v12 = 0;
  }

  else
  {
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "+[LSAppLink(Private) _appLinksWithState:context:limit:URLComponents:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 985);
  }

LABEL_24:
  if (error && !v26)
  {
    v21 = v12;
    *error = v12;
  }

  return v26;
}

- (id)_userActivityWithState:(id)state error:(id *)error
{
  stateCopy = state;
  v7 = objc_alloc(MEMORY[0x1E696B090]);
  v8 = [v7 initWithActivityType:*MEMORY[0x1E696AA68]];
  if (v8)
  {
    v9 = [(LSAppLink *)self URL];
    [v8 setWebpageURL:v9];

    openConfiguration = [stateCopy openConfiguration];
    referrerURL = [openConfiguration referrerURL];
    [v8 setReferrerURL:referrerURL];

    if (objc_opt_respondsToSelector())
    {
      [v8 set_universalLink:1];
    }
  }

  else if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "[LSAppLink(Private) _userActivityWithState:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLink.mm", 1011);
  }

  return v8;
}

@end