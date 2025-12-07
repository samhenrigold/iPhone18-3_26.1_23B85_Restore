@interface _LSDReadClient
- (void)getAllUserActivityTypesAndDomainNamesWithCompletionHandler:(id)handler;
- (void)getApplicationCategoryIdentifiersSetWithCompletionHandler:(id)handler;
- (void)getBoundIconInfoForDocumentProxy:(id)proxy completionHandler:(id)handler;
- (void)getBundleProxyForCurrentProcessWithCompletionHandler:(id)handler;
- (void)getBundleRecordForCoreTypesWithCompletionHandler:(id)handler;
- (void)getBundleRecordForCurrentProcessWithCompletionHandler:(id)handler;
- (void)getCurrentApplicationDefaultInfoForCategory:(unint64_t)category completion:(id)completion;
- (void)getDiskUsage:(id)usage completionHandler:(id)handler;
- (void)getEligibilityAnswerForDomain:(unint64_t)domain withCompletionHandler:(id)handler;
- (void)getExtensionPointRecordForCurrentProcessWithCompletionHandler:(id)handler;
- (void)getExtensionPointRecordWithIdentifier:(id)identifier platform:(unsigned int)platform completionHandler:(id)handler;
- (void)getHasEverChangedPreferredAppForCategory:(unint64_t)category completion:(id)completion;
- (void)getKernelPackageExtensionsWithCompletionHandler:(id)handler;
- (void)getKnowledgeUUIDAndSequenceNumberWithCompletionHandler:(id)handler;
- (void)getPreferencesWithCompletionHandler:(id)handler;
- (void)getPreferredAppMarketplacesWithCompletion:(id)completion;
- (void)getRedactedAppexRecordForSystemAppexWithUUID:(id)d node:(id)node bundleIdentifier:(id)identifier platform:(unsigned int)platform completionHandler:(id)handler;
- (void)getRelatedTypesOfTypeWithIdentifier:(id)identifier maximumDegreeOfSeparation:(int64_t)separation completionHandler:(id)handler;
- (void)getResourceValuesForKeys:(id)keys mimic:(id)mimic preferredLocalizations:(id)localizations completionHandler:(id)handler;
- (void)getServerStatusWithCompletionHandler:(id)handler;
- (void)getServerStoreNonBlockingWithCompletionHandler:(id)handler;
- (void)getSessionLanguagesForImproperlyLocalizedProcessWithCompletionHandler:(id)handler;
- (void)getSettingsStoreConfigurationWithCompletionHandler:(id)handler;
- (void)getSystemContentStoreWithCompletionHandler:(id)handler;
- (void)getSystemModeWithCompletionHandler:(id)handler;
- (void)getTypeRecordForImportedTypeWithIdentifier:(id)identifier conformingToIdentifier:(id)toIdentifier completionHandler:(id)handler;
- (void)getTypeRecordWithIdentifier:(id)identifier allowUndeclared:(BOOL)undeclared completionHandler:(id)handler;
- (void)getTypeRecordWithTag:(id)tag ofClass:(id)class conformingToIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getTypeRecordsWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)getTypeRecordsWithTag:(id)tag ofClass:(id)class conformingToIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getWhetherTypeIdentifier:(id)identifier conformsToTypeIdentifier:(id)typeIdentifier completionHandler:(id)handler;
- (void)invokeServiceInvocation:(id)invocation isReply:(BOOL)reply;
- (void)mapBundleIdentifiers:(id)identifiers orMachOUUIDs:(id)ds completionHandler:(id)handler;
- (void)mapPlugInBundleIdentifiersToContainingBundleIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)resolveQueries:(id)queries legacySPI:(BOOL)i completionHandler:(id)handler;
- (void)willHandleInvocation:(id)invocation isReply:(BOOL)reply;
@end

@implementation _LSDReadClient

- (void)willHandleInvocation:(id)invocation isReply:(BOOL)reply
{
  replyCopy = reply;
  invocationCopy = invocation;
  v9.receiver = self;
  v9.super_class = _LSDReadClient;
  [(_LSDClient *)&v9 willHandleInvocation:invocationCopy isReply:replyCopy];
  if (!replyCopy && [invocationCopy selector] != sel_getServerStatusWithCompletionHandler_)
  {
    selector = [invocationCopy selector];
    if (selector != sel_getServerStoreNonBlockingWithCompletionHandler_)
    {
      __LAUNCH_SERVICES_IS_WAITING_FOR_THE_DATABASE_TO_FINISH_SEEDING__(selector, v8);
    }
  }
}

- (void)invokeServiceInvocation:(id)invocation isReply:(BOOL)reply
{
  invocationCopy = invocation;
  v6 = invocationCopy;
  if (reply)
  {
    [invocationCopy invoke];
  }

  else
  {
    v7 = _LSServer_DatabaseExecutionContext();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50___LSDReadClient_invokeServiceInvocation_isReply___block_invoke;
    v8[3] = &unk_1E6A18EB0;
    v9 = v6;
    [(LSDBExecutionContext *)v7 syncRead:v8];
  }
}

- (void)getServerStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getServerStatusWithCompletionHandler:]", v3);
  SessionStatus = _LSDatabaseGetSessionStatus();
  handlerCopy[2](handlerCopy, SessionStatus);
}

- (void)getServerStoreNonBlockingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  SessionStatus = _LSDatabaseGetSessionStatus();
  if ((SessionStatus & 0x80) != 0)
  {
    v7 = +[LSDatabaseBlockingFetchServer sharedInstance];
    v8 = (SessionStatus >> 10) & 1;
    [v7 setBlockingIsForManualRebuild:v8];

    v9 = +[LSDatabaseBlockingFetchServer sharedInstance];
    getEndpoint = [v9 getEndpoint];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, getEndpoint, v8, 0);
  }

  else
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65___LSDReadClient_getServerStoreNonBlockingWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E6A1BA40;
    v12 = handlerCopy;
    _LSServer_GetServerStoreForConnectionWithCompletionHandler(xPCConnection, v11);
  }
}

- (void)getKernelPackageExtensionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getKernelPackageExtensionsWithCompletionHandler:]", v3);
  v4 = _LSCopyKernelPackageExtensionsAsLSD();
  v5 = v4;
  if (v4 && CFArrayGetCount(v4) >= 1)
  {
    handlerCopy[2](handlerCopy, v5, 0);
  }

  else
  {
    v6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, 0, "[_LSDReadClient getKernelPackageExtensionsWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 395);
    (handlerCopy)[2](handlerCopy, 0, v6);

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  CFRelease(v5);
LABEL_6:
}

- (void)getDiskUsage:(id)usage completionHandler:(id)handler
{
  usageCopy = usage;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getDiskUsage:completionHandler:]", v8);
  MEMORY[0x1865D7C40]();
  v9 = +[_LSDiskUsage _serverQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___LSDReadClient_getDiskUsage_completionHandler___block_invoke;
  block[3] = &unk_1E6A193B8;
  v13 = usageCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = usageCopy;
  dispatch_async(v9, block);
}

- (void)getKnowledgeUUIDAndSequenceNumberWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getKnowledgeUUIDAndSequenceNumberWithCompletionHandler:]", v5);
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v13 = 0;
  v14 = 0;
  [v6 getKnowledgeUUID:&v14 andSequenceNumber:&v13];
  v7 = v14;
  v8 = v13;

  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  MayMapDatabase = _LSXPCConnectionMayMapDatabase(_xpcConnection);

  if (!MayMapDatabase)
  {
    _LS_nullUUID = [MEMORY[0x1E696AFB0] _LS_nullUUID];

    v7 = _LS_nullUUID;
  }

  handlerCopy[2](handlerCopy, v7, v8);
}

- (void)resolveQueries:(id)queries legacySPI:(BOOL)i completionHandler:(id)handler
{
  iCopy = i;
  v32 = *MEMORY[0x1E69E9840];
  queriesCopy = queries;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient resolveQueries:legacySPI:completionHandler:]", v10);
  v11 = objc_opt_class();
  if (!_LSIsSetWithValuesOfClass(queriesCopy, v11))
  {
    v29 = *MEMORY[0x1E696A278];
    v30 = @"invalid input parameters";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v23 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v12, "[_LSDReadClient resolveQueries:legacySPI:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 493);
    goto LABEL_14;
  }

  v12 = +[_LSQueryContext defaultContext];
  if (iCopy)
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    _xpcConnection = [xPCConnection _xpcConnection];
    v15 = _LSIsXPCConnectionPlatformBinary(_xpcConnection);

    if (v15)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v16 = queriesCopy;
      v17 = [v16 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v17)
      {
        v18 = *v26;
        do
        {
          v19 = 0;
          do
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v25 + 1) + 8 * v19++) setLegacy:1];
          }

          while (v17 != v19);
          v17 = [v16 countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v17);
      }

      goto LABEL_12;
    }

    v23 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDReadClient resolveQueries:legacySPI:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 469);
LABEL_14:
    v22 = v23;
    v21 = 0;
    goto LABEL_15;
  }

LABEL_12:
  xPCConnection2 = [(_LSDClient *)self XPCConnection];
  v24 = 0;
  v21 = [v12 _resolveQueries:queriesCopy XPCConnection:xPCConnection2 error:&v24];
  v22 = v24;

LABEL_15:
  handlerCopy[2](handlerCopy, v21, v22);
}

- (void)getBundleRecordForCurrentProcessWithCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getBundleRecordForCurrentProcessWithCompletionHandler:]", v5);
  v27 = 0u;
  v28 = 0u;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  v7 = xPCConnection;
  if (xPCConnection)
  {
    objc_msgSend_auditToken(xPCConnection);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v26[0] = v27;
  v26[1] = v28;
  v25 = 0;
  v8 = [LSBundleRecord bundleRecordForAuditToken:v26 error:&v25];
  v9 = v25;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    [v10 applicationExtensionRecords];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v11 = v22 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v12)
    {
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          [v15 _resolveAllProperties];
          extensionPointRecord = [v15 extensionPointRecord];
          [extensionPointRecord _resolveAllProperties];
        }

        v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v12);
    }

    xPCConnection2 = [(_LSDClient *)self XPCConnection];
    _xpcConnection = [xPCConnection2 _xpcConnection];
    v19 = _LSXPCConnectionMayMapDatabase(_xpcConnection) == 0;

    if (v19)
    {
      sensitiveDataProxy = [v10 sensitiveDataProxy];
      [sensitiveDataProxy redact];
    }
  }

  handlerCopy[2](handlerCopy, v8, v9);
}

- (void)getBundleProxyForCurrentProcessWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getBundleProxyForCurrentProcessWithCompletionHandler:]", v5);
  v14 = 0u;
  v15 = 0u;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  v7 = xPCConnection;
  if (xPCConnection)
  {
    objc_msgSend_auditToken(xPCConnection);
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v13[0] = v14;
  v13[1] = v15;
  v12 = 0;
  v8 = [LSBundleRecord bundleRecordForAuditToken:v13 error:&v12];
  v9 = v12;
  if (v8)
  {
    compatibilityObject = [v8 compatibilityObject];
    if (!compatibilityObject)
    {
      v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, 0, "[_LSDReadClient getBundleProxyForCurrentProcessWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 536);

      compatibilityObject = 0;
      v9 = v11;
    }
  }

  else
  {
    compatibilityObject = 0;
  }

  handlerCopy[2](handlerCopy, compatibilityObject, v9);
}

- (void)getBundleRecordForCoreTypesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getBundleRecordForCoreTypesWithCompletionHandler:]", v3);
  v4 = +[LSBundleRecord coreTypesBundleRecord];
  _realRecord = [v4 _realRecord];

  handlerCopy[2](handlerCopy, _realRecord);
}

- (void)getExtensionPointRecordWithIdentifier:(id)identifier platform:(unsigned int)platform completionHandler:(id)handler
{
  v6 = *&platform;
  identifierCopy = identifier;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getExtensionPointRecordWithIdentifier:platform:completionHandler:]", v9);
  v12 = 0;
  v10 = [[LSExtensionPointRecord alloc] initWithIdentifier:identifierCopy platform:v6 error:&v12];
  v11 = v12;
  handlerCopy[2](handlerCopy, v10, v11);
}

- (void)getExtensionPointRecordForCurrentProcessWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getExtensionPointRecordForCurrentProcessWithCompletionHandler:]", v5);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80___LSDReadClient_getExtensionPointRecordForCurrentProcessWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E6A1C848;
  v6 = handlerCopy;
  v8 = v6;
  [(_LSDReadClient *)self getBundleRecordForCurrentProcessWithCompletionHandler:v7];
}

- (void)getTypeRecordWithIdentifier:(id)identifier allowUndeclared:(BOOL)undeclared completionHandler:(id)handler
{
  undeclaredCopy = undeclared;
  identifierCopy = identifier;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getTypeRecordWithIdentifier:allowUndeclared:completionHandler:]", v8);
  if (identifierCopy)
  {
    if (undeclaredCopy)
    {
      [UTTypeRecord typeRecordWithPotentiallyUndeclaredIdentifier:?];
    }

    else
    {
      [UTTypeRecord typeRecordWithIdentifier:?];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  handlerCopy[2](handlerCopy, v9);
}

- (void)getTypeRecordsWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getTypeRecordsWithIdentifiers:completionHandler:]", v6);
  if (identifiersCopy && (v7 = objc_opt_class(), _LSIsSetWithValuesOfClass(identifiersCopy, v7)))
  {
    v8 = [UTTypeRecord typeRecordsWithIdentifiers:identifiersCopy];
  }

  else
  {
    v8 = 0;
  }

  handlerCopy[2](handlerCopy, v8);
}

- (void)getTypeRecordWithTag:(id)tag ofClass:(id)class conformingToIdentifier:(id)identifier completionHandler:(id)handler
{
  tagCopy = tag;
  classCopy = class;
  identifierCopy = identifier;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getTypeRecordWithTag:ofClass:conformingToIdentifier:completionHandler:]", v12);
  v13 = 0;
  if (tagCopy && classCopy)
  {
    v13 = [UTTypeRecord typeRecordWithTag:tagCopy ofClass:classCopy conformingToIdentifier:identifierCopy];
  }

  handlerCopy[2](handlerCopy, v13);
}

- (void)getTypeRecordsWithTag:(id)tag ofClass:(id)class conformingToIdentifier:(id)identifier completionHandler:(id)handler
{
  tagCopy = tag;
  classCopy = class;
  identifierCopy = identifier;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getTypeRecordsWithTag:ofClass:conformingToIdentifier:completionHandler:]", v12);
  v13 = 0;
  if (tagCopy && classCopy)
  {
    v13 = [UTTypeRecord typeRecordsWithTag:tagCopy ofClass:classCopy conformingToIdentifier:identifierCopy];
  }

  handlerCopy[2](handlerCopy, v13);
}

- (void)getTypeRecordForImportedTypeWithIdentifier:(id)identifier conformingToIdentifier:(id)toIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getTypeRecordForImportedTypeWithIdentifier:conformingToIdentifier:completionHandler:]", v9);
  if (identifierCopy)
  {
    v10 = [UTTypeRecord typeRecordForImportedTypeWithIdentifier:identifierCopy conformingToIdentifier:toIdentifierCopy];
  }

  else
  {
    v10 = 0;
  }

  handlerCopy[2](handlerCopy, v10);
}

- (void)getRelatedTypesOfTypeWithIdentifier:(id)identifier maximumDegreeOfSeparation:(int64_t)separation completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getRelatedTypesOfTypeWithIdentifier:maximumDegreeOfSeparation:completionHandler:]", v9);
  v10 = [UTTypeRecord typeRecordWithIdentifier:identifierCopy];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __98___LSDReadClient_getRelatedTypesOfTypeWithIdentifier_maximumDegreeOfSeparation_completionHandler___block_invoke;
    v15[3] = &unk_1E6A1C870;
    v13 = v11;
    v16 = v13;
    v14 = v12;
    v17 = v14;
    [v10 _enumerateRelatedTypesWithMaximumDegreeOfSeparation:separation block:v15];
    handlerCopy[2](handlerCopy, v13, v14);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (void)getWhetherTypeIdentifier:(id)identifier conformsToTypeIdentifier:(id)typeIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getWhetherTypeIdentifier:conformsToTypeIdentifier:completionHandler:]", v9);
  v10 = 0;
  if (identifierCopy && typeIdentifierCopy)
  {
    v10 = [UTTypeRecord _typeIdentifier:identifierCopy conformsToTypeIdentifier:typeIdentifierCopy];
  }

  handlerCopy[2](handlerCopy, v10);
}

- (void)getBoundIconInfoForDocumentProxy:(id)proxy completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  handlerCopy = handler;
  if (IconServicesLibrary(void)::frameworkLibrary || (IconServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
  {
    _LSAssertRunningInServer("[_LSDReadClient getBoundIconInfoForDocumentProxy:completionHandler:]", v7);
    if (proxyCopy)
    {
      v9 = [proxyCopy URL];
      if (!v9)
      {
        goto LABEL_11;
      }

      v10 = [(_LSDClient *)self XPCConnection:0];
      v11 = v10;
      if (v10)
      {
        objc_msgSend_auditToken(v10);
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      if (![FSNode canReadURL:v9 fromSandboxWithAuditToken:&v17])
      {
        _boundIconInfo = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDReadClient getBoundIconInfoForDocumentProxy:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 697);
        handlerCopy[2](handlerCopy, 0, _boundIconInfo);
      }

      else
      {
LABEL_11:
        _boundIconInfo = [proxyCopy _boundIconInfo];
        if (_boundIconInfo)
        {
          (handlerCopy)[2](handlerCopy, _boundIconInfo, 0);
        }

        else
        {
          v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[_LSDReadClient getBoundIconInfoForDocumentProxy:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 693);
          handlerCopy[2](handlerCopy, 0, v16);
        }
      }
    }

    else
    {
      v19 = *MEMORY[0x1E696A278];
      v20[0] = @"documentProxy";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v12, "[_LSDReadClient getBoundIconInfoForDocumentProxy:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 701);
      handlerCopy[2](handlerCopy, 0, v13);
    }
  }

  else
  {
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[_LSDReadClient getBoundIconInfoForDocumentProxy:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 704);
    handlerCopy[2](handlerCopy, 0, v14);
  }
}

- (void)getAllUserActivityTypesAndDomainNamesWithCompletionHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getAllUserActivityTypesAndDomainNamesWithCompletionHandler:]", v5);
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  MayMapDatabase = _LSXPCConnectionMayMapDatabase(_xpcConnection);

  if (MayMapDatabase)
  {
    cf = 0;
    v16 = 0;
    v9 = _LSCopyClaimedActivityIdentifiersAndDomains(&v16, &cf);
    if (v9)
    {
      v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v9, 0, "[_LSDReadClient getAllUserActivityTypesAndDomainNamesWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 723);
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v10);
    }

    else
    {
      v13 = cf;
      v14 = *(handlerCopy + 2);
      v10 = v16;
      v14(handlerCopy, v10, v13, 0);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  else
  {
    v17 = *MEMORY[0x1E696A278];
    v18[0] = @"process may not map database";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v11, "[_LSDReadClient getAllUserActivityTypesAndDomainNamesWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 727);
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v12);
  }
}

- (void)getResourceValuesForKeys:(id)keys mimic:(id)mimic preferredLocalizations:(id)localizations completionHandler:(id)handler
{
  v40[1] = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  mimicCopy = mimic;
  localizationsCopy = localizations;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient getResourceValuesForKeys:mimic:preferredLocalizations:completionHandler:]", v13);
  if (!keysCopy)
  {
    goto LABEL_13;
  }

  v15 = _LSURLPropertyProviderAllKeys(v14);
  v16 = [keysCopy isSubsetOfSet:v15] ^ 1;
  if (!mimicCopy)
  {
    LOBYTE(v16) = 1;
  }

  if ((v16 & 1) != 0 || ([mimicCopy URL], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_13;
  }

  v18 = [mimicCopy URL];
  isFileURL = [v18 isFileURL];

  if (!isFileURL)
  {
LABEL_13:
    v39 = *MEMORY[0x1E696A278];
    v40[0] = @"invalid input parameters";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v26 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v25, "[_LSDReadClient getResourceValuesForKeys:mimic:preferredLocalizations:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 774);
    v27 = 0;
    v28 = 0;
    goto LABEL_14;
  }

  v20 = objc_opt_class();
  v21 = _LSIsSetWithValuesOfClass(keysCopy, v20);
  v22 = v21 ^ 1;
  if (!localizationsCopy)
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    v23 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v24 = _LSIsArrayWithValuesOfClasses(localizationsCopy, v23);

    if (v24)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (!v21)
  {
    goto LABEL_13;
  }

LABEL_17:
  v38 = 0;
  v29 = _LSResolveRemoteURLPropertiesWithMimic(mimicCopy, localizationsCopy, keysCopy, &v38);
  v26 = v38;
  if (!v29)
  {
    v27 = 0;
    v28 = 0;
    goto LABEL_15;
  }

  v30 = [keysCopy mutableCopy];
  v31 = MEMORY[0x1E695DFD8];
  allKeys = [v29 allKeys];
  v33 = [v31 setWithArray:allKeys];
  [v30 minusSet:v33];

  v25 = v30;
  if (_LSURLPropertiesNeedReplacement(v29))
  {
    v34 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v29, "count")}];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __90___LSDReadClient_getResourceValuesForKeys_mimic_preferredLocalizations_completionHandler___block_invoke;
    v36[3] = &unk_1E6A1AF50;
    v35 = v34;
    v37 = v35;
    [v29 enumerateKeysAndObjectsUsingBlock:v36];
    v27 = [v35 copy];
  }

  else
  {
    v27 = v29;
  }

  v28 = v25;
LABEL_14:

LABEL_15:
  handlerCopy[2](handlerCopy, v27, v28, v26);
}

- (void)mapBundleIdentifiers:(id)identifiers orMachOUUIDs:(id)ds completionHandler:(id)handler
{
  v81 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dsCopy = ds;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient mapBundleIdentifiers:orMachOUUIDs:completionHandler:]", v8);
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  v11 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.coreservices.canmapbundleidtouuid");

  if (!v11)
  {
    v76 = *MEMORY[0x1E696A278];
    v77 = @"Caller is not allowed to map bundleIDs/UUIDs, required entitlement missing";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v14, "[_LSDReadClient mapBundleIdentifiers:orMachOUUIDs:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 875);

LABEL_21:
    v34 = 0;
    v35 = 0;
    goto LABEL_32;
  }

  if (identifiersCopy)
  {
    v12 = objc_opt_class();
    v13 = _LSIsSetWithValuesOfClass(identifiersCopy, v12);
  }

  else
  {
    v13 = 1;
  }

  if (dsCopy && v13)
  {
    v16 = objc_opt_class();
    v13 = _LSIsSetWithValuesOfClass(dsCopy, v16);
  }

  if (!v13)
  {
    v78 = *MEMORY[0x1E696A278];
    v79 = @"invalid input parameters";
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v33, "[_LSDReadClient mapBundleIdentifiers:orMachOUUIDs:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 871);

    goto LABEL_21;
  }

  v75 = 0;
  v73 = 0;
  v72 = 0;
  v74 = 0;
  v17 = +[_LSDServiceDomain defaultServiceDomain];
  v18 = LaunchServices::Database::Context::_get(&v72, v17, 0);

  if (v18)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke;
    v67[3] = &unk_1E6A1C898;
    v71 = v18;
    v68 = dsCopy;
    v42 = array;
    v69 = v42;
    v41 = array2;
    v70 = v41;
    v21 = MEMORY[0x1865D71B0](v67);
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke_2;
    v64[3] = &unk_1E6A1C8E8;
    v66 = v18;
    v22 = v21;
    v65 = v22;
    v47 = MEMORY[0x1865D71B0](v64);
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke_4;
    v61[3] = &unk_1E6A1C910;
    v63 = v18;
    v40 = v22;
    v62 = v40;
    v48 = MEMORY[0x1865D71B0](v61);
    if (identifiersCopy)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v23 = identifiersCopy;
      obj = v23;
      v24 = [v23 countByEnumeratingWithState:&v57 objects:v80 count:16];
      if (v24)
      {
        v25 = *v58;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v58 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v57 + 1) + 8 * i);
            StringForCFString = _LSDatabaseGetStringForCFString(*v18, v27, 0);
            v29 = *v18;
            v54[0] = MEMORY[0x1E69E9820];
            v54[1] = 3221225472;
            v54[2] = __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke_6;
            v54[3] = &unk_1E6A1C938;
            v56 = v18;
            v30 = v48;
            v54[4] = v27;
            v55 = v30;
            _LSDatabaseEnumeratingBindingMap(v29, 9, StringForCFString, v54);
            v31 = *v18;
            v51[0] = MEMORY[0x1E69E9820];
            v51[1] = 3221225472;
            v51[2] = __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke_7;
            v51[3] = &unk_1E6A1C938;
            v53 = v18;
            v32 = v47;
            v51[4] = v27;
            v52 = v32;
            _LSDatabaseEnumeratingBindingMap(v31, 6, StringForCFString, v51);
          }

          v23 = obj;
          v24 = [obj countByEnumeratingWithState:&v57 objects:v80 count:16];
        }

        while (v24);
      }
    }

    else
    {
      [(_LSDatabase *)*v18 store];
      [(_LSDatabase *)*v18 schema];
      v50 = v48;
      _CSStoreEnumerateUnits();
      [(_LSDatabase *)*v18 store];
      [(_LSDatabase *)*v18 schema];
      v49 = v47;
      _CSStoreEnumerateUnits();

      v23 = v50;
    }

    v15 = 0;
  }

  else
  {
    v36 = +[_LSDServiceDomain defaultServiceDomain];
    v37 = LaunchServices::Database::Context::_get(&v72, v36, 0);

    if (v37)
    {
      v15 = 0;
    }

    else
    {
      v15 = v75;
    }

    v41 = 0;
    v42 = 0;
  }

  if (v72 && v74 == 1)
  {
    _LSContextDestroy(v72);
  }

  v38 = v73;
  v73 = 0;
  v72 = 0;

  v74 = 0;
  v39 = v75;
  v75 = 0;

  v34 = v41;
  v35 = v42;
LABEL_32:
  handlerCopy[2](handlerCopy, v35, v34, v15);
}

- (void)mapPlugInBundleIdentifiersToContainingBundleIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDReadClient mapPlugInBundleIdentifiersToContainingBundleIdentifiers:completionHandler:]", v6);
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  LODWORD(self) = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.coreservices.canmapbundleidtouuid");

  if (!self)
  {
    v42 = *MEMORY[0x1E696A278];
    v43 = @"Caller is not allowed to map pluginIDs/bundleIDs, required entitlement missing";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v19, "[_LSDReadClient mapPlugInBundleIdentifiersToContainingBundleIdentifiers:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 928);

LABEL_14:
    v21 = 0;
    goto LABEL_23;
  }

  v9 = objc_opt_class();
  if (!_LSIsSetWithValuesOfClass(identifiersCopy, v9))
  {
    v44 = *MEMORY[0x1E696A278];
    v45 = @"invalid input parameters";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v20, "[_LSDReadClient mapPlugInBundleIdentifiersToContainingBundleIdentifiers:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 924);

    goto LABEL_14;
  }

  v41 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(&v38, v10, 0);

  if (v11)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = identifiersCopy;
    v12 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v12)
    {
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          StringForCFString = _LSDatabaseGetStringForCFString(*v11, v15, 0);
          v17 = *v11;
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __92___LSDReadClient_mapPlugInBundleIdentifiersToContainingBundleIdentifiers_completionHandler___block_invoke;
          v30[3] = &unk_1E6A190E0;
          v33 = v11;
          v31 = dictionary;
          v32 = v15;
          _LSDatabaseEnumeratingBindingMap(v17, 9, StringForCFString, v30);
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v12);
    }

    v18 = 0;
  }

  else
  {
    v22 = +[_LSDServiceDomain defaultServiceDomain];
    v23 = LaunchServices::Database::Context::_get(&v38, v22, 0);

    if (v23)
    {
      v18 = 0;
    }

    else
    {
      v18 = v41;
    }

    dictionary = 0;
  }

  if (v38 && v40 == 1)
  {
    _LSContextDestroy(v38);
  }

  v24 = v39;
  v38 = 0;
  v39 = 0;

  v40 = 0;
  v25 = v41;
  v41 = 0;

  v21 = dictionary;
LABEL_23:
  handlerCopy[2](handlerCopy, v21, v18);
}

- (void)getPreferencesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  Shared = LaunchServices::PrefsStorage::GetShared(handlerCopy);
  v4 = LaunchServices::PrefsStorage::getAllPreferences(Shared);
  v5 = v4;
  v6 = MEMORY[0x1E695E0F8];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  (*(handlerCopy + 2))(handlerCopy, v7, 0);
}

- (void)getSettingsStoreConfigurationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = 0u;
  v11 = 0u;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v5 = currentConnection;
  if (currentConnection)
  {
    objc_msgSend_auditToken(currentConnection);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v6 = +[LSSettingsStore sharedInstance];
  v9[0] = v10;
  v9[1] = v11;
  v7 = [v6 settingsStoreConfigurationForProcessWithAuditToken:v9];

  if (v7)
  {
    handlerCopy[2](handlerCopy, v7, 0);
  }

  else
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDReadClient getSettingsStoreConfigurationWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 949);
    (handlerCopy)[2](handlerCopy, 0, v8);
  }
}

- (void)getSystemModeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v3 = +[LSApplicationRestrictionsManager sharedInstance];
  systemMode = [(LSApplicationRestrictionsManager *)v3 systemMode];

  handlerCopy[2](handlerCopy, systemMode, 0);
}

- (void)getSessionLanguagesForImproperlyLocalizedProcessWithCompletionHandler:(id)handler
{
  v19[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  MayMapDatabase = _LSXPCConnectionMayMapDatabase(_xpcConnection);

  if (MayMapDatabase)
  {
    v10 = [__LSDefaultsGetSharedInstance(v8 v9)];
    if (v10)
    {
      v12 = _LSDefaultLog(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        xPCConnection2 = [(_LSDClient *)self XPCConnection];
        v17[0] = 67109120;
        v17[1] = [xPCConnection2 processIdentifier];
        _os_log_error_impl(&dword_18162D000, v12, OS_LOG_TYPE_ERROR, "Warning: process %d asking for session langauges from the root lsd. It will only get a backstop result.", v17, 8u);
      }
    }

    v13 = 0;
    v14 = [__LSDefaultsGetSharedInstance(v10 v11)];
  }

  else
  {
    v18 = *MEMORY[0x1E696A278];
    v19[0] = @"process is not entitled to get language list";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v15, "[_LSDReadClient getSessionLanguagesForImproperlyLocalizedProcessWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 975);

    v14 = 0;
  }

  handlerCopy[2](handlerCopy, v14, v13);
}

- (void)getSystemContentStoreWithCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  MayMapDatabase = _LSXPCConnectionMayMapDatabase(_xpcConnection);

  if (MayMapDatabase)
  {
    v17 = 0;
    v8 = _LSDatabaseCreateSystemContentDatabaseFromPersistentStore(&v17);
    v9 = v17;
    v10 = v9;
    if (v8)
    {
      v11 = v8;
      store = [(_LSDatabase *)v8 store];
      v13 = _LSDatabaseGetNode(v8);
      handlerCopy[2](handlerCopy, store, v13, 0);
    }

    else
    {
      v14 = _LSDefaultLog(v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        xPCConnection2 = [(_LSDClient *)self XPCConnection];
        processIdentifier = [xPCConnection2 processIdentifier];
        *buf = 67109378;
        v21 = processIdentifier;
        v22 = 2112;
        v23 = v10;
        _os_log_error_impl(&dword_18162D000, v14, OS_LOG_TYPE_ERROR, "could not fetch system content store for %d: %@", buf, 0x12u);
      }

      (handlerCopy)[2](handlerCopy, 0, 0, v10);
    }
  }

  else
  {
    v18 = *MEMORY[0x1E696A278];
    v19 = @"process may not map database";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v10, "[_LSDReadClient getSystemContentStoreWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1001);
    (handlerCopy)[2](handlerCopy, 0, 0, v8);
  }
}

- (void)getApplicationCategoryIdentifiersSetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v3 = _LSGetValidApplicationCategoryTypeSet();
  handlerCopy[2](handlerCopy, v3, 0);
}

- (void)getRedactedAppexRecordForSystemAppexWithUUID:(id)d node:(id)node bundleIdentifier:(id)identifier platform:(unsigned int)platform completionHandler:(id)handler
{
  v8 = *&platform;
  dCopy = d;
  nodeCopy = node;
  identifierCopy = identifier;
  handlerCopy = handler;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v15 = +[_LSDServiceDomain defaultServiceDomain];
  v16 = LaunchServices::Database::Context::_get(&v30, v15, 0);

  if (v16)
  {
    v29 = 0;
    LOBYTE(v28) = 0;
    v17 = [[LSApplicationExtensionRecord alloc] _initWithUUID:dCopy node:nodeCopy bundleIdentifier:identifierCopy platform:v8 context:v16 requireValid:1 allowRedacted:v28 error:&v29];
    v18 = v29;
    if ([v17 eligibleForRedaction])
    {
      v19 = v17;
      extensionPointRecord = [v19 extensionPointRecord];
      [extensionPointRecord _resolveAllProperties];

      containingBundleRecord = [v19 containingBundleRecord];
      [containingBundleRecord _resolveAllProperties];

      containingBundleRecord2 = [v19 containingBundleRecord];
      [containingBundleRecord2 redact];

      containingBundleRecord3 = [v19 containingBundleRecord];
      [containingBundleRecord3 detach];

      [v19 _resolveAllProperties];
      [v19 redact];
      [v19 detach];
    }

    else
    {
      v25 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[_LSDReadClient getRedactedAppexRecordForSystemAppexWithUUID:node:bundleIdentifier:platform:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1032);

      v19 = 0;
      v18 = v25;
    }
  }

  else
  {
    v24 = +[_LSDServiceDomain defaultServiceDomain];
    v19 = LaunchServices::Database::Context::_get(&v30, v24, 0);

    if (v19)
    {
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v18 = v33;
    }
  }

  handlerCopy[2](handlerCopy, v19, v18);
  if (v30 && v32 == 1)
  {
    _LSContextDestroy(v30);
  }

  v26 = v31;
  v30 = 0;
  v31 = 0;

  v32 = 0;
  v27 = v33;
  v33 = 0;
}

- (void)getEligibilityAnswerForDomain:(unint64_t)domain withCompletionHandler:(id)handler
{
  v26[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!_LSServer_AcquiesceToDeputizationForDomain(domain, v7))
  {
    domain = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't ask to evaluate domain %llu", domain];
    v25 = *MEMORY[0x1E696A278];
    v26[0] = domain;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v9, "[_LSDReadClient getEligibilityAnswerForDomain:withCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1046);
    handlerCopy[2](handlerCopy, 0, v10);
  }

  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  v13 = _LSXPCConnectionMayMapDatabase(_xpcConnection) == 0;

  if (v13)
  {
    v23 = *MEMORY[0x1E696A278];
    v21 = @"com.apple.private.coreservices.canmaplsdatabase";
    if (!@"com.apple.private.coreservices.canmaplsdatabase")
    {
      v21 = @"unknown entitlement";
    }

    v24 = v21;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v19, "[_LSDReadClient getEligibilityAnswerForDomain:withCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1052);
    handlerCopy[2](handlerCopy, 0, v20);
  }

  else
  {
    v15 = LaunchServices::EligibilityCache::shared(v14);
    v22 = 0;
    v16 = LaunchServices::EligibilityCache::cachedAnswerForDomain(v15, domain, &v22);
    v18 = v17;
    v19 = v22;
    if ((v18 & 1) == 0)
    {
      handlerCopy[2](handlerCopy, 0, v19);
      goto LABEL_11;
    }

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16];
    (handlerCopy)[2](handlerCopy, v20, 0);
  }

LABEL_11:
}

- (void)getHasEverChangedPreferredAppForCategory:(unint64_t)category completion:(id)completion
{
  v16[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  MayMapDatabase = _LSXPCConnectionMayMapDatabase(_xpcConnection);

  if (MayMapDatabase)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{_LSServer_HasPreferenceEverBeenSetForDefaultAppCategory(category, v10)}];
    completionCopy[2](completionCopy, v11, 0);
  }

  else
  {
    v15 = *MEMORY[0x1E696A278];
    v12 = @"com.apple.private.coreservices.canmaplsdatabase";
    if (!@"com.apple.private.coreservices.canmaplsdatabase")
    {
      v12 = @"unknown entitlement";
    }

    v16[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v13, "[_LSDReadClient getHasEverChangedPreferredAppForCategory:completion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1062);
    (completionCopy)[2](completionCopy, 0, v14);
  }
}

- (void)getPreferredAppMarketplacesWithCompletion:(id)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  v6 = _LSCheckEntitlementForNSXPCConnection(xPCConnection, @"com.apple.private.coreservices.appmarketplace.read");

  if (v6)
  {
    v11 = 0;
    v7 = [LSMarketplacesPreferences currentPreferencesWithError:&v11];
    v8 = v11;
    preferredMarketplaces = [v7 preferredMarketplaces];
    completionCopy[2](completionCopy, preferredMarketplaces, v8);
  }

  else
  {
    if (@"com.apple.private.coreservices.appmarketplace.read")
    {
      v10 = @"com.apple.private.coreservices.appmarketplace.read";
    }

    else
    {
      v10 = @"unknown entitlement";
    }

    v12 = *MEMORY[0x1E696A278];
    v13[0] = v10;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v8, "[_LSDReadClient getPreferredAppMarketplacesWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1077);
    completionCopy[2](completionCopy, 0, v7);
  }
}

- (void)getCurrentApplicationDefaultInfoForCategory:(unint64_t)category completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v23 = 0u;
  v24 = 0u;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  v8 = xPCConnection;
  if (xPCConnection)
  {
    objc_msgSend_auditToken(xPCConnection);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  *buf = v23;
  *&buf[16] = v24;
  v22 = 0;
  v9 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v22];
  v10 = v22;
  v11 = _LSDefaultLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    xPCConnection2 = [(_LSDClient *)self XPCConnection];
    processIdentifier = [xPCConnection2 processIdentifier];
    *buf = 134218240;
    *&buf[4] = processIdentifier;
    *&buf[12] = 2048;
    *&buf[14] = category;
    _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "pid %ld getting app default info for category %lu", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v9;
    supportedDefaultAppCategories = [v14 supportedDefaultAppCategories];
    if ((LSDefaultAppCategoryMaskForCategory(category) & supportedDefaultAppCategories) != 0)
    {
      v16 = [LSDefaultApplicationQueryBackend alloc];
      v17 = objc_alloc_init(LSDefaultApplicationQueryServerDatastore);
      v18 = objc_alloc_init(LSDefaultApplicationQueryDatabaseDefaultAppEvaluator);
      v19 = [(LSDefaultApplicationQueryBackend *)v16 initWithDatastore:v17 defaultAppEvaluator:v18];

      v20 = [(LSDefaultApplicationQueryBackend *)v19 refreshQueryResultForApplication:v14 category:category];
    }

    else
    {
      v27 = *MEMORY[0x1E696A278];
      v28 = @"App not a candidate for this category, so will never be the default";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v19, "[_LSDReadClient getCurrentApplicationDefaultInfoForCategory:completion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1108);

      v20 = 0;
      v10 = v21;
    }

    goto LABEL_13;
  }

  if (v9)
  {
    v25 = *MEMORY[0x1E696A278];
    v26 = @"process is not an app";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "[_LSDReadClient getCurrentApplicationDefaultInfoForCategory:completion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1112);
    v20 = 0;
    v10 = v19 = v10;
LABEL_13:

    goto LABEL_14;
  }

  v20 = 0;
LABEL_14:
  completionCopy[2](completionCopy, v20, v10);
}

@end