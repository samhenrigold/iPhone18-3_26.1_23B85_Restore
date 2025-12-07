@interface _LSDOpenClient
- (void)canOpenURL:(id)l publicSchemes:(BOOL)schemes privateSchemes:(BOOL)privateSchemes completionHandler:(id)handler;
- (void)failedToOpenApplication:(id)application withURL:(id)l completionHandler:(id)handler;
- (void)getURLOverrideForURL:(id)l completionHandler:(id)handler;
- (void)getiCloudHostNamesWithCompletionHandler:(id)handler;
- (void)invokeServiceInvocation:(id)invocation isReply:(BOOL)reply;
- (void)openAppLink:(id)link state:(id)state completionHandler:(id)handler;
- (void)openApplicationWithIdentifier:(id)identifier options:(id)options useClientProcessHandle:(BOOL)handle completionHandler:(id)handler;
- (void)openURL:(id)l fileHandle:(id)handle options:(id)options completionHandler:(id)handler;
- (void)openUserActivityWithUniqueIdentifier:(id)identifier activityData:(id)data activityType:(id)type bundleIdentifier:(id)bundleIdentifier options:(id)options completionHandler:(id)handler;
- (void)performOpenOperationWithURL:(id)l fileHandle:(id)handle bundleIdentifier:(id)identifier documentIdentifier:(id)documentIdentifier isContentManaged:(BOOL)managed sourceAuditToken:(id *)token userInfo:(id)info options:(id)self0 delegate:(id)self1 completionHandler:(id)self2;
- (void)updateRestrictionKnowledgeWithCompletionHandler:(id)handler;
- (void)willHandleInvocation:(id)invocation isReply:(BOOL)reply;
@end

@implementation _LSDOpenClient

- (void)willHandleInvocation:(id)invocation isReply:(BOOL)reply
{
  replyCopy = reply;
  invocationCopy = invocation;
  v10.receiver = self;
  v10.super_class = _LSDOpenClient;
  v7 = [(_LSDClient *)&v10 willHandleInvocation:invocationCopy isReply:replyCopy];
  if (!replyCopy)
  {
    v9 = _LSDatabaseGetSeedingGroup(v7, v8);
    dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)invokeServiceInvocation:(id)invocation isReply:(BOOL)reply
{
  invocationCopy = invocation;
  v7 = invocationCopy;
  if (reply || !-[_LSDOpenClient serviceSelectorRequiresDatabaseContext:](self, "serviceSelectorRequiresDatabaseContext:", [invocationCopy selector]))
  {
    [v7 invoke];
  }

  else
  {
    v8 = _LSServer_DatabaseExecutionContext();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50___LSDOpenClient_invokeServiceInvocation_isReply___block_invoke;
    v9[3] = &unk_1E6A18EB0;
    v10 = v7;
    [(LSDBExecutionContext *)v8 syncRead:v9];
  }
}

- (void)performOpenOperationWithURL:(id)l fileHandle:(id)handle bundleIdentifier:(id)identifier documentIdentifier:(id)documentIdentifier isContentManaged:(BOOL)managed sourceAuditToken:(id *)token userInfo:(id)info options:(id)self0 delegate:(id)self1 completionHandler:(id)self2
{
  v54 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handleCopy = handle;
  identifierCopy = identifier;
  documentIdentifierCopy = documentIdentifier;
  infoCopy = info;
  optionsCopy = options;
  delegateCopy = delegate;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient performOpenOperationWithURL:fileHandle:bundleIdentifier:documentIdentifier:isContentManaged:sourceAuditToken:userInfo:options:delegate:completionHandler:]", v22);
  v24 = _LSOpenLog(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    processIdentifier = [xPCConnection processIdentifier];
    if (token)
    {
      v27 = *&token->var0[4];
      *atoken.val = *token->var0;
      *&atoken.val[4] = v27;
      v28 = audit_token_to_pid(&atoken);
    }

    else
    {
      v28 = 0;
    }

    *buf = 134219010;
    v45 = processIdentifier;
    v46 = 2112;
    v47 = lCopy;
    v48 = 2112;
    v49 = identifierCopy;
    v50 = 2112;
    v51 = documentIdentifierCopy;
    v52 = 2048;
    v53 = v28;
    _os_log_impl(&dword_18162D000, v24, OS_LOG_TYPE_DEFAULT, "pid %ld issuing open of %@ by %@, doc %@ on behalf of %ld", buf, 0x34u);
  }

  if (!lCopy)
  {
    goto LABEL_14;
  }

  scheme = [lCopy scheme];
  v30 = scheme != 0;

  v31 = v30 ^ 1;
  if (!infoCopy)
  {
    v31 = 1;
  }

  if ((v31 & 1) == 0)
  {
    v32 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v30 = _LSIsDictionaryWithKeysAndValuesOfClasses(infoCopy, v32, 0);
  }

  if (!optionsCopy || !v30)
  {
    if (!v30)
    {
      goto LABEL_14;
    }

LABEL_16:
    xPCConnection2 = [(_LSDClient *)self XPCConnection];
    _LSServer_PerformOpenOperation(lCopy, handleCopy, identifierCopy, managed, token, documentIdentifierCopy, infoCopy, optionsCopy, delegateCopy, xPCConnection2, handlerCopy);
    goto LABEL_17;
  }

  v33 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v34 = _LSIsDictionaryWithKeysAndValuesOfClasses(optionsCopy, v33, 0);

  if (v34)
  {
    goto LABEL_16;
  }

LABEL_14:
  v42 = *MEMORY[0x1E696A278];
  v43 = @"invalid input parameters";
  xPCConnection2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v36 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, xPCConnection2, "[_LSDOpenClient performOpenOperationWithURL:fileHandle:bundleIdentifier:documentIdentifier:isContentManaged:sourceAuditToken:userInfo:options:delegate:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 213);
  (*(handlerCopy + 2))(handlerCopy, 0, v36);

LABEL_17:
}

- (void)openApplicationWithIdentifier:(id)identifier options:(id)options useClientProcessHandle:(BOOL)handle completionHandler:(id)handler
{
  handleCopy = handle;
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  optionsCopy = options;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient openApplicationWithIdentifier:options:useClientProcessHandle:completionHandler:]", v13);
  v15 = _LSOpenLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    *buf = 134218242;
    processIdentifier = [xPCConnection processIdentifier];
    v26 = 2112;
    v27 = identifierCopy;
    _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "pid %ld requests to open application with identifier %@", buf, 0x16u);
  }

  v17 = _os_feature_enabled_impl();
  v18 = v17 | handleCopy;
  if (v17 && !handleCopy)
  {
    v19 = _LSOpenLog(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_INFO, "using client process handle even though the client asked not to", buf, 2u);
    }

    v18 = 1;
  }

  if (identifierCopy)
  {
    xPCConnection2 = [(_LSDClient *)self XPCConnection];
    _LSServer_OpenApplication(identifierCopy, optionsCopy, xPCConnection2, v18, handlerCopy);
  }

  else
  {
    v22 = *MEMORY[0x1E696A278];
    v23 = @"identifier";
    xPCConnection2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, xPCConnection2, "[_LSDOpenClient openApplicationWithIdentifier:options:useClientProcessHandle:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 237);
    (*(handlerCopy + 2))(handlerCopy, 0, v21);
  }
}

- (void)openURL:(id)l fileHandle:(id)handle options:(id)options completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handleCopy = handle;
  optionsCopy = options;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient openURL:fileHandle:options:completionHandler:]", v14);
  v16 = _LSOpenLog(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    processIdentifier = [xPCConnection processIdentifier];
    scheme = [lCopy scheme];
    *buf = 134349315;
    v42 = processIdentifier;
    v43 = 2113;
    v44 = scheme;
    _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEFAULT, "pid %{public}ld requests to open URL with scheme %{private}@", buf, 0x16u);
  }

  if (!lCopy)
  {
    goto LABEL_9;
  }

  scheme2 = [lCopy scheme];

  if (optionsCopy)
  {
    v22 = scheme2 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    if (!scheme2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v24 = _LSIsDictionaryWithKeysAndValuesOfClasses(optionsCopy, v23, 0);

    if ((v24 & 1) == 0)
    {
LABEL_9:
      v25 = _LSOpenLog(v20);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = lCopy;
        _os_log_impl(&dword_18162D000, v25, OS_LOG_TYPE_DEFAULT, "ERROR: paramError, cannot open URL %@", buf, 0xCu);
      }

      v39 = *MEMORY[0x1E696A278];
      v40 = @"invalid input parameters";
      xPCConnection3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      xPCConnection2 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, xPCConnection3, "[_LSDOpenClient openURL:fileHandle:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 288);
      handlerCopy[2](handlerCopy, 0, xPCConnection2);
LABEL_12:

      goto LABEL_13;
    }
  }

  isFileURL = [lCopy isFileURL];
  if (!isFileURL)
  {
    v30 = objc_opt_class();
    v31 = [optionsCopy objectForKey:@"LSOpenSensitiveURLOption"];
    v32 = v31;
    if (v30 && v31 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v32 = 0;
    }

    bOOLValue = [v32 BOOLValue];

    v34 = +[LSApplicationWorkspace defaultWorkspace];
    LOBYTE(bOOLValue) = [v34 isApplicationAvailableToOpenURL:lCopy includePrivateURLSchemes:bOOLValue error:0];

    scheme3 = [lCopy scheme];
    xPCConnection3 = scheme3;
    if ((bOOLValue & 1) == 0 && [scheme3 caseInsensitiveCompare:@"search"] && (v36 = objc_msgSend(xPCConnection3, "caseInsensitiveCompare:", @"com-apple-audiounit")) != 0)
    {
      v37 = _LSOpenLog(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        scheme4 = [lCopy scheme];
        *buf = 138412290;
        v42 = scheme4;
        _os_log_impl(&dword_18162D000, v37, OS_LOG_TYPE_DEFAULT, "ERROR: There is no registered handler for URL scheme %@", buf, 0xCu);
      }

      xPCConnection2 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[_LSDOpenClient openURL:fileHandle:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 282);
      handlerCopy[2](handlerCopy, 0, xPCConnection2);
    }

    else
    {
      xPCConnection2 = [(_LSDClient *)self XPCConnection];
      _LSServer_PerformOpenOperation(lCopy, handleCopy, 0, 0, 0, 0, 0, optionsCopy, 0, xPCConnection2, handlerCopy);
    }

    goto LABEL_12;
  }

  v29 = _LSOpenLog(isFileURL);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v29, OS_LOG_TYPE_DEFAULT, "opening file: URL via simple openURL: path.", buf, 2u);
  }

  xPCConnection3 = [(_LSDClient *)self XPCConnection];
  _LSServer_PerformOpenOperation(lCopy, handleCopy, 0, 0, 0, 0, 0, optionsCopy, 0, xPCConnection3, handlerCopy);
LABEL_13:
}

- (void)openUserActivityWithUniqueIdentifier:(id)identifier activityData:(id)data activityType:(id)type bundleIdentifier:(id)bundleIdentifier options:(id)options completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dataCopy = data;
  typeCopy = type;
  bundleIdentifierCopy = bundleIdentifier;
  optionsCopy = options;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient openUserActivityWithUniqueIdentifier:activityData:activityType:bundleIdentifier:options:completionHandler:]", v19);
  v21 = _LSOpenLog(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    *buf = 134218498;
    processIdentifier = [xPCConnection processIdentifier];
    v41 = 2112;
    v42 = identifierCopy;
    v43 = 2112;
    v44 = typeCopy;
    _os_log_impl(&dword_18162D000, v21, OS_LOG_TYPE_DEFAULT, "pid %ld opening user activity %@ of type %@", buf, 0x20u);
  }

  if (identifierCopy | dataCopy)
  {
    v23 = typeCopy == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = v23 || bundleIdentifierCopy == 0;
  v25 = !v24;
  if (v24 || !optionsCopy)
  {
    if (!v25)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v26 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v27 = _LSIsDictionaryWithKeysAndValuesOfClasses(optionsCopy, v26, 0);

    if ((v27 & 1) == 0)
    {
LABEL_15:
      v35 = *MEMORY[0x1E696A278];
      v36 = @"invalid input parameters";
      xPCConnection3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v29 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, xPCConnection3, "[_LSDOpenClient openUserActivityWithUniqueIdentifier:activityData:activityType:bundleIdentifier:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 333);
      handlerCopy[2](handlerCopy, 0, v29);
LABEL_23:

      goto LABEL_24;
    }
  }

  xPCConnection2 = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection2 _xpcConnection];
  v32 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.coreservices.canopenactivity") == 0;

  if (v32)
  {
    if (@"com.apple.private.coreservices.canopenactivity")
    {
      v33 = @"com.apple.private.coreservices.canopenactivity";
    }

    else
    {
      v33 = @"unknown entitlement";
    }

    v37 = *MEMORY[0x1E696A278];
    v38 = v33;
    xPCConnection3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v29 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, xPCConnection3, "[_LSDOpenClient openUserActivityWithUniqueIdentifier:activityData:activityType:bundleIdentifier:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 329);
    handlerCopy[2](handlerCopy, 0, v29);
    goto LABEL_23;
  }

  xPCConnection3 = [(_LSDClient *)self XPCConnection];
  _LSServer_OpenUserActivity(identifierCopy, dataCopy, typeCopy, 0, bundleIdentifierCopy, 0, 0, optionsCopy, xPCConnection3, handlerCopy);
LABEL_24:
}

- (void)canOpenURL:(id)l publicSchemes:(BOOL)schemes privateSchemes:(BOOL)privateSchemes completionHandler:(id)handler
{
  privateSchemesCopy = privateSchemes;
  schemesCopy = schemes;
  v20[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient canOpenURL:publicSchemes:privateSchemes:completionHandler:]", v12);
  if (lCopy && ([lCopy scheme], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = +[_LSCanOpenURLManager sharedManager];
    xPCConnection = [(_LSDClient *)self XPCConnection];
    v18 = 0;
    v16 = [v14 canOpenURL:lCopy publicSchemes:schemesCopy privateSchemes:privateSchemesCopy XPCConnection:xPCConnection error:&v18];
    v17 = v18;

    handlerCopy[2](handlerCopy, v16, v17);
  }

  else
  {
    v19 = *MEMORY[0x1E696A278];
    v20[0] = @"url";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "[_LSDOpenClient canOpenURL:publicSchemes:privateSchemes:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 353);
    handlerCopy[2](handlerCopy, 0, v17);
  }
}

- (void)getURLOverrideForURL:(id)l completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient getURLOverrideForURL:completionHandler:]", v7);
  if (lCopy)
  {
    v8 = [[_LSURLOverride alloc] initWithOriginalURL:lCopy];
    v9 = v8;
    if (v8)
    {
      overrideURL = [(_LSURLOverride *)v8 overrideURL];
    }

    else
    {
      overrideURL = 0;
    }

    handlerCopy[2](handlerCopy, overrideURL, 0);
  }

  else
  {
    v13 = *MEMORY[0x1E696A278];
    v14[0] = @"invalid input URL";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "[_LSDOpenClient getURLOverrideForURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 371);
    (handlerCopy)[2](handlerCopy, 0, v12);
  }
}

- (void)getiCloudHostNamesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient getiCloudHostNamesWithCompletionHandler:]", v4);
  v6 = _LSServer_GetIOQueue(v5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___LSDOpenClient_getiCloudHostNamesWithCompletionHandler___block_invoke;
  block[3] = &unk_1E6A1C820;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(v6, block);
}

- (void)openAppLink:(id)link state:(id)state completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  stateCopy = state;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient openAppLink:state:completionHandler:]", v11);
  v13 = _LSOpenLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    *buf = 134218498;
    processIdentifier = [xPCConnection processIdentifier];
    v35 = 2112;
    v36 = linkCopy;
    v37 = 2112;
    v38 = stateCopy;
    _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "pid %ld opening app link %@ %@", buf, 0x20u);
  }

  if (linkCopy && (-[_LSDClient XPCConnection](self, "XPCConnection"), v15 = objc_claimAutoreleasedReturnValue(), [v15 _xpcConnection], v16 = objc_claimAutoreleasedReturnValue(), v17 = _LSXPCConnectionMayMapDatabase(v16) == 0, v16, v15, v17))
  {
    v31 = *MEMORY[0x1E696A278];
    v32 = @"process may not map database";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v24 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v22, "[_LSDOpenClient openAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 398);
    handlerCopy[2](handlerCopy, 0, v24);
  }

  else if (!stateCopy || ([stateCopy URL], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v19))
  {
    v29 = *MEMORY[0x1E696A278];
    v30 = @"openState";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v23 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v22, "[_LSDOpenClient openAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 410);
    handlerCopy[2](handlerCopy, 0, v23);
  }

  else
  {
    xPCConnection2 = [(_LSDClient *)self XPCConnection];
    [stateCopy setXPCConnection:xPCConnection2];

    v21 = +[LSAppLink _dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54___LSDOpenClient_openAppLink_state_completionHandler___block_invoke;
    block[3] = &unk_1E6A193B8;
    v26 = linkCopy;
    v27 = stateCopy;
    v28 = handlerCopy;
    dispatch_async(v21, block);

    v22 = v26;
  }
}

- (void)failedToOpenApplication:(id)application withURL:(id)l completionHandler:(id)handler
{
  v32[1] = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  lCopy = l;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient failedToOpenApplication:withURL:completionHandler:]", v11);
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  MayMapDatabase = _LSXPCConnectionMayMapDatabase(_xpcConnection);

  if (MayMapDatabase)
  {
    v30 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v16 = +[_LSDServiceDomain defaultServiceDomain];
    v17 = LaunchServices::Database::Context::_get(&v27, v16, 0);

    if (v17)
    {
      _LSServer_DisplayRemovedAppPrompt(v17, applicationCopy, lCopy, handlerCopy);
    }

    else
    {
      v22 = +[_LSDServiceDomain defaultServiceDomain];
      v23 = LaunchServices::Database::Context::_get(&v27, v22, 0);

      if (v23)
      {
        v24 = 0;
      }

      else
      {
        v24 = v30;
      }

      (*(handlerCopy + 2))(handlerCopy, 0, v24);
    }

    if (v27 && v29 == 1)
    {
      _LSContextDestroy(v27);
    }

    v25 = v28;
    v27 = 0;
    v28 = 0;

    v29 = 0;
    v26 = v30;
    v30 = 0;
  }

  else
  {
    v18 = _LSOpenLog(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      xPCConnection2 = [(_LSDClient *)self XPCConnection];
      -[_LSDOpenClient failedToOpenApplication:withURL:completionHandler:].cold.1([xPCConnection2 processIdentifier], &v27, v18, xPCConnection2);
    }

    v31 = *MEMORY[0x1E696A278];
    v32[0] = @"process may not map database";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v20, "[_LSDOpenClient failedToOpenApplication:withURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 422);
    (*(handlerCopy + 2))(handlerCopy, 0, v21);
  }
}

- (void)updateRestrictionKnowledgeWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  v6 = _LSCheckEntitlementForNSXPCConnection(xPCConnection, @"com.apple.lsapplicationworkspace.restrictions");

  if (v6)
  {
    v7 = +[LSDBExecutionContext sharedServerInstance];
    [(LSDBExecutionContext *)v7 assertNotActiveForThisThread];

    v9 = _LSDefaultLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      xPCConnection2 = [(_LSDClient *)self XPCConnection];
      *buf = 134217984;
      processIdentifier = [xPCConnection2 processIdentifier];
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "Pid %ld is forcing restriction knowledge update!", buf, 0xCu);
    }

    v11 = +[LSApplicationRestrictionsManager sharedInstance];
    v12 = [LSApplicationRestrictionsManager forceUpdateRestrictionKnowledgeWithError:v11];
    v13 = 0;

    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v17 = _LSDefaultLog(v14);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(_LSDOpenClient *)v13 updateRestrictionKnowledgeWithCompletionHandler:v17];
      }

      v15 = v13;
    }

    (handlerCopy)[2](handlerCopy, v12, v15);
  }

  else
  {
    v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDOpenClient updateRestrictionKnowledgeWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 451);
    (handlerCopy)[2](handlerCopy, 0, v16);
  }
}

- (void)failedToOpenApplication:(os_log_t)log withURL:(void *)a4 completionHandler:.cold.1(int a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 134217984;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "**ERROR** process MAY NOT MAP DATABASE! Ignoring failed URL from pid %llu", buf, 0xCu);
}

- (void)updateRestrictionKnowledgeWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "error forcing restriction knowledge update: %@", &v2, 0xCu);
}

@end