@interface _LSDModifyClient
- (BOOL)_canRegisterOrUnregisterURL:(id)l withOptions:(unsigned int)options;
- (BOOL)clientHasMIEntitlement:(id)entitlement;
- (BOOL)clientIsEntitledForEmbeddedRegistrationOperations;
- (void)doTokenizedRegistrationTaskWithName:(id)name xpcReply:(id)reply work:(id)work;
- (void)forceSaveForTestingWithCompletion:(id)completion;
- (void)garbageCollectDatabaseWithCompletionHandler:(id)handler;
- (void)installApplication:(id)application atURL:(id)l withOptions:(id)options installType:(unint64_t)type reply:(id)reply;
- (void)performPostInstallationRegistration:(id)registration personaUniqueStrings:(id)strings operationUUID:(id)d reply:(id)reply;
- (void)performPostUninstallationUnregistrationOfBundleID:(id)d operationUUID:(id)iD unregisterType:(unsigned int)type precondition:(id)precondition reply:(id)reply;
- (void)performUpdateOfPersonasOfBundleIDs:(id)ds toPersonaUniqueStrings:(id)strings operationUUID:(id)d reply:(id)reply;
- (void)rebuildApplicationDatabasesForSystem:(BOOL)system internal:(BOOL)internal user:(BOOL)user completionHandler:(id)handler;
- (void)refreshContentInFrameworkAtURL:(id)l reply:(id)reply;
- (void)refreshExtensionPointsWithOperationUUID:(id)d reply:(id)reply;
- (void)registerBuiltinAppex:(id)appex operationUUID:(id)d reply:(id)reply;
- (void)registerBuiltinApplication:(id)application personaUniqueStrings:(id)strings operationUUID:(id)d reply:(id)reply;
- (void)registerContainerURL:(id)l completionHandler:(id)handler;
- (void)registerExtensionPoint:(id)point platform:(unsigned int)platform declaringURL:(id)l withInfo:(id)info completionHandler:(id)handler;
- (void)registerItemInfo:(id)info alias:(id)alias diskImageAlias:(id)imageAlias bundleURL:(id)l installationPlist:(id)plist completionHandler:(id)handler;
- (void)relaxApplicationTypeRequirements:(BOOL)requirements forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeAllHandlerPrefsForBundleID:(id)d completionHandler:(id)handler;
- (void)removeAllHandlersWithCompletionHandler:(id)handler;
- (void)removeDatabaseStoreOnNextOpportunity:(id)opportunity;
- (void)removeHandlerForContentType:(id)type roles:(unsigned int)roles completionHandler:(id)handler;
- (void)removeHandlerForURLScheme:(id)scheme completionHandler:(id)handler;
- (void)requestLSDExitSafely:(double)safely completionHandler:(id)handler;
- (void)resetServerStoreWithCompletionHandler:(id)handler;
- (void)setDatabaseIsSeeded:(BOOL)seeded completionHandler:(id)handler;
- (void)setHandler:(id)handler version:(LSVersionNumber *)version forURLScheme:(id)scheme completionHandler:(id)completionHandler;
- (void)setHandler:(id)handler version:(LSVersionNumber *)version roles:(unsigned int)roles forContentType:(id)type completionHandler:(id)completionHandler;
- (void)setPreferenceValue:(id)value forKey:(id)key forApplicationAtURL:(id)l completionHandler:(id)handler;
- (void)setPreferenceValueForCallingApplication:(id)application forKey:(id)key completionHandler:(id)handler;
- (void)setPreferredAppMarketplaces:(id)marketplaces completion:(id)completion;
- (void)setUpdateAvailabilities:(id)availabilities completionHandler:(id)handler;
- (void)synchronizeWithMobileInstallation;
- (void)uninstallApplication:(id)application withOptions:(id)options uninstallType:(unint64_t)type reply:(id)reply;
- (void)unregisterApplicationAtURL:(id)l operationUUID:(id)d reply:(id)reply;
- (void)unregisterApplicationsAtMountPoint:(id)point operationUUID:(id)d reply:(id)reply;
- (void)unregisterBundleUnit:(unsigned int)unit options:(unsigned int)options completionHandler:(id)handler;
- (void)unregisterExtensionPoint:(id)point platform:(unsigned int)platform withVersion:(id)version parentBundleUnit:(unsigned int)unit completionHandler:(id)handler;
- (void)unregisterPluginAtURL:(id)l operationUUID:(id)d reply:(id)reply;
- (void)updateContainerUnit:(unsigned int)unit completionHandler:(id)handler;
- (void)updateRecordForApp:(id)app withSINF:(id)f iTunesMetadata:(id)metadata placeholderMetadata:(id)placeholderMetadata sendNotification:(int)notification operationUUID:(id)d returnSaveToken:(BOOL)token completionHandler:(id)self0;
- (void)willHandleInvocation:(id)invocation isReply:(BOOL)reply;
@end

@implementation _LSDModifyClient

- (BOOL)_canRegisterOrUnregisterURL:(id)l withOptions:(unsigned int)options
{
  optionsCopy = options;
  lCopy = l;
  v8 = lCopy;
  if ((optionsCopy & 0x10) != 0)
  {
    if ([__LSDefaultsGetSharedInstance(lCopy v7)])
    {
      v9 = [(_LSDModifyClient *)self clientHasMIEntitlement:@"InstallForLaunchServices"];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)willHandleInvocation:(id)invocation isReply:(BOOL)reply
{
  replyCopy = reply;
  invocationCopy = invocation;
  v10.receiver = self;
  v10.super_class = _LSDModifyClient;
  v7 = [(_LSDClient *)&v10 willHandleInvocation:invocationCopy isReply:replyCopy];
  v9 = _LSDatabaseGetSeedingGroup(v7, v8);
  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)setDatabaseIsSeeded:(BOOL)seeded completionHandler:(id)handler
{
  seededCopy = seeded;
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = _LSDefaultLog(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    *buf = 67109376;
    v15 = seededCopy;
    v16 = 1024;
    processIdentifier = [xPCConnection processIdentifier];
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "setting database seeded: %d from pid %d", buf, 0xEu);
  }

  v9 = _LSServer_DatabaseExecutionContext();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58___LSDModifyClient_setDatabaseIsSeeded_completionHandler___block_invoke;
  v11[3] = &unk_1E6A1C150;
  v13 = seededCopy;
  v10 = handlerCopy;
  v12 = v10;
  [(LSDBExecutionContext *)v9 syncWrite:v11];
}

- (void)registerItemInfo:(id)info alias:(id)alias diskImageAlias:(id)imageAlias bundleURL:(id)l installationPlist:(id)plist completionHandler:(id)handler
{
  v102[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  aliasCopy = alias;
  imageAliasCopy = imageAlias;
  lCopy = l;
  plistCopy = plist;
  handlerCopy = handler;
  if (!infoCopy)
  {
    v101 = *MEMORY[0x1E696A278];
    v102[0] = @"invalid LSRegistrationInfo";
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:&v101 count:1];
    v28 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v27, "[_LSDModifyClient registerItemInfo:alias:diskImageAlias:bundleURL:installationPlist:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 437);
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v28);

    goto LABEL_24;
  }

  if (![(_LSDModifyClient *)self canRegisterURL:lCopy withOptions:infoCopy[4]])
  {
    v29 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10819, 0, "[_LSDModifyClient registerItemInfo:alias:diskImageAlias:bundleURL:installationPlist:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 441);
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v29);

    goto LABEL_24;
  }

  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__24;
  v89 = __Block_byref_object_dispose__24;
  v38 = aliasCopy;
  v90 = [infoCopy mutableCopy];
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__24;
  v83 = __Block_byref_object_dispose__24;
  v84 = lCopy;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__24;
  v77 = __Block_byref_object_dispose__24;
  v78 = aliasCopy;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x3032000000;
  v71[3] = __Block_byref_object_copy__24;
  v71[4] = __Block_byref_object_dispose__24;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__24;
  v69 = __Block_byref_object_dispose__24;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = plistCopy;
  }

  else
  {
    v19 = 0;
  }

  v70 = v19;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3812000000;
  v61 = __Block_byref_object_copy__162;
  v62 = __Block_byref_object_dispose__163;
  v63 = &unk_1818533FF;
  v64 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3812000000;
  v46[3] = __Block_byref_object_copy__165;
  v46[4] = __Block_byref_object_dispose__166;
  v46[5] = &unk_1818533FF;
  cf = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v20 = _LSServer_GetIOQueue(v70);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104___LSDModifyClient_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler___block_invoke;
  block[3] = &unk_1E6A1C178;
  block[4] = &v85;
  block[5] = &v79;
  block[6] = v71;
  block[7] = &v65;
  block[8] = &v58;
  dispatch_sync(v20, block);

  v21 = _LSServer_DatabaseExecutionContext();
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __104___LSDModifyClient_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler___block_invoke_168;
  v40[3] = &unk_1E6A1C1A0;
  v40[4] = &v54;
  v40[5] = &v85;
  v40[6] = &v73;
  v40[7] = v71;
  v40[8] = &v65;
  v40[9] = &v48;
  v40[10] = v52;
  v40[11] = &v42;
  v40[12] = v46;
  [(LSDBExecutionContext *)v21 syncWrite:v40];

  v23 = *(v55 + 6);
  if (!v23)
  {
    v26 = 0;
    goto LABEL_16;
  }

  if (v23 != -10675 || (*(v86[5] + 16) & 2) != 0)
  {
    v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v23, 0, "[_LSDModifyClient registerItemInfo:alias:diskImageAlias:bundleURL:installationPlist:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 532);
    v26 = v22;
LABEL_16:
    v30 = *(v49 + 6);
    v31 = _LSDefaultLog(v22);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v37 = plistCopy;
      filePathURL = [v80[5] filePathURL];
      v33 = *(v55 + 6);
      v34 = infoCopy[7];
      xPCConnection = [(_LSDClient *)self XPCConnection];
      processIdentifier = [xPCConnection processIdentifier];
      *buf = 138413314;
      v92 = filePathURL;
      v93 = 2048;
      v94 = v33;
      v95 = 2048;
      v96 = v34;
      v97 = 2048;
      v98 = v30;
      v99 = 1024;
      v100 = processIdentifier;
      _os_log_impl(&dword_18162D000, v31, OS_LOG_TYPE_DEFAULT, "registered %@ (status %ld, old id 0x%llx) as unit 0x%llx on behalf of pid %d", buf, 0x30u);

      plistCopy = v37;
      aliasCopy = v38;
    }

    (*(handlerCopy + 2))(handlerCopy, *(v55 + 6) == 0, v30, v59[6], *(v43 + 24) != 0, v26);
    goto LABEL_19;
  }

  v24 = _LSInstallLog(v22);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v80[5];
    *buf = 138412290;
    v92 = v25;
    _os_log_impl(&dword_18162D000, v24, OS_LOG_TYPE_DEFAULT, "Retrying registration of %@ with trusted bit", buf, 0xCu);
  }

  v26 = [v86[5] mutableCopy];
  v26[4] |= 2u;
  [(_LSDModifyClient *)self registerItemInfo:v26 alias:v74[5] diskImageAlias:imageAliasCopy bundleURL:v80[5] installationPlist:v66[5] completionHandler:handlerCopy];
LABEL_19:

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(v46, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  if (v64)
  {
    CFRelease(v64);
  }

  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(v71, 8);
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v85, 8);

LABEL_24:
}

- (void)unregisterBundleUnit:(unsigned int)unit options:(unsigned int)options completionHandler:(id)handler
{
  v5 = *&options;
  v33[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDModifyClient unregisterBundleUnit:options:completionHandler:]", v9);
  if (unit)
  {
    v10 = [(_LSDModifyClient *)self canUnregisterWithOptions:v5];
    if (v10)
    {
      v11 = _LSDefaultLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        xPCConnection = [(_LSDClient *)self XPCConnection];
        *buf = 134218496;
        processIdentifier = [xPCConnection processIdentifier];
        v28 = 2048;
        unitCopy = unit;
        v30 = 2048;
        v31 = v5;
        _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "client %lu will unregister unit %llx options %llx", buf, 0x20u);
      }

      _LSDatabaseSentinelIncrement();
      v13 = MEMORY[0x1865D71B0](handlerCopy);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __67___LSDModifyClient_unregisterBundleUnit_options_completionHandler___block_invoke;
      v22[3] = &unk_1E6A190B8;
      v14 = v13;
      v23 = v14;
      v15 = MEMORY[0x1865D71B0](v22);

      v16 = _LSServer_DatabaseExecutionContext();
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __67___LSDModifyClient_unregisterBundleUnit_options_completionHandler___block_invoke_2;
      v18[3] = &unk_1E6A1C1C8;
      unitCopy2 = unit;
      v21 = v5;
      handlerCopy = v15;
      v19 = handlerCopy;
      [(LSDBExecutionContext *)v16 syncWrite:v18];

      v17 = v23;
    }

    else
    {
      v32 = *MEMORY[0x1E696A278];
      v33[0] = @"May not unregister bundle";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v14, "[_LSDModifyClient unregisterBundleUnit:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 567);
      (*(handlerCopy + 2))(handlerCopy, 0, v17);
    }
  }

  else
  {
    v24 = *MEMORY[0x1E696A278];
    v25 = @"invalid bundleInit for unregistering";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "[_LSDModifyClient unregisterBundleUnit:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 627);
    (*(handlerCopy + 2))(handlerCopy, 0, v17);
  }
}

- (void)registerContainerURL:(id)l completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDModifyClient registerContainerURL:completionHandler:]", v8);
  if (lCopy && [lCopy isFileURL])
  {
    canRegisterContainer = [(_LSDModifyClient *)self canRegisterContainer];
    if (canRegisterContainer)
    {
      v10 = _LSServer_GetIOQueue(canRegisterContainer);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59___LSDModifyClient_registerContainerURL_completionHandler___block_invoke;
      block[3] = &unk_1E6A19728;
      v15 = lCopy;
      v16 = handlerCopy;
      dispatch_sync(v10, block);

      v11 = v15;
    }

    else
    {
      v19 = *MEMORY[0x1E696A278];
      v20[0] = @"May not register container";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v11, "[_LSDModifyClient registerContainerURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 638);
      (*(handlerCopy + 2))(handlerCopy, 0, v13);
    }
  }

  else
  {
    v17 = *MEMORY[0x1E696A278];
    v18 = @"invalid containerURL";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "[_LSDModifyClient registerContainerURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 657);
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }
}

- (void)updateContainerUnit:(unsigned int)unit completionHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDModifyClient updateContainerUnit:completionHandler:]", v7);
  if (unit)
  {
    if ([(_LSDModifyClient *)self canRegisterContainer])
    {
      v8 = _LSServer_DatabaseExecutionContext();
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __58___LSDModifyClient_updateContainerUnit_completionHandler___block_invoke;
      v12[3] = &unk_1E6A1C1F0;
      unitCopy = unit;
      v13 = handlerCopy;
      [(LSDBExecutionContext *)v8 syncRead:v12];

      v9 = v13;
    }

    else
    {
      v17 = *MEMORY[0x1E696A278];
      v18[0] = @"May not update container registation";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v9, "[_LSDModifyClient updateContainerUnit:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 669);
      (*(handlerCopy + 2))(handlerCopy, 0, v11);
    }
  }

  else
  {
    v15 = *MEMORY[0x1E696A278];
    v16 = @"invalid container Unit";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v9, "[_LSDModifyClient updateContainerUnit:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 698);
    (*(handlerCopy + 2))(handlerCopy, 0, v10);
  }
}

- (void)registerExtensionPoint:(id)point platform:(unsigned int)platform declaringURL:(id)l withInfo:(id)info completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  lCopy = l;
  infoCopy = info;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDModifyClient registerExtensionPoint:platform:declaringURL:withInfo:completionHandler:]", v15);
  v17 = 0;
  if (pointCopy && infoCopy)
  {
    v18 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v17 = _LSIsDictionaryWithKeysAndValuesOfClasses(infoCopy, v18, 0);
  }

  v19 = _LSExtensionsLog(v16);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v32 = "[_LSDModifyClient registerExtensionPoint:platform:declaringURL:withInfo:completionHandler:]";
    v33 = 2112;
    v34 = pointCopy;
    v35 = 1024;
    platformCopy = platform;
    v37 = 2112;
    v38 = lCopy;
    v39 = 2112;
    v40 = infoCopy;
    _os_log_debug_impl(&dword_18162D000, v19, OS_LOG_TYPE_DEBUG, "%s Registering extension point with identifier '%@' platform: %d url '%@' SDK Dictionary: %@", buf, 0x30u);
  }

  if (v17)
  {
    v20 = _LSServer_DatabaseExecutionContext();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __92___LSDModifyClient_registerExtensionPoint_platform_declaringURL_withInfo_completionHandler___block_invoke;
    v23[3] = &unk_1E6A1C218;
    v24 = pointCopy;
    platformCopy2 = platform;
    v25 = infoCopy;
    v26 = lCopy;
    v27 = handlerCopy;
    [(LSDBExecutionContext *)v20 syncWrite:v23];

    v21 = v24;
  }

  else
  {
    v29 = *MEMORY[0x1E696A278];
    v30 = @"invalid extensionPoint SDK dictionary";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v21, "[_LSDModifyClient registerExtensionPoint:platform:declaringURL:withInfo:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 727);
    (*(handlerCopy + 2))(handlerCopy, 0, v22);
  }
}

- (void)unregisterExtensionPoint:(id)point platform:(unsigned int)platform withVersion:(id)version parentBundleUnit:(unsigned int)unit completionHandler:(id)handler
{
  v25[1] = *MEMORY[0x1E69E9840];
  pointCopy = point;
  versionCopy = version;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDModifyClient unregisterExtensionPoint:platform:withVersion:parentBundleUnit:completionHandler:]", v14);
  if (pointCopy)
  {
    v15 = _LSServer_DatabaseExecutionContext();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __101___LSDModifyClient_unregisterExtensionPoint_platform_withVersion_parentBundleUnit_completionHandler___block_invoke;
    v18[3] = &unk_1E6A1C240;
    v19 = pointCopy;
    platformCopy = platform;
    unitCopy = unit;
    v20 = versionCopy;
    v21 = handlerCopy;
    [(LSDBExecutionContext *)v15 syncWrite:v18];

    v16 = v19;
  }

  else
  {
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"invalid extensionPoint identifier";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v16, "[_LSDModifyClient unregisterExtensionPoint:platform:withVersion:parentBundleUnit:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 746);
    (*(handlerCopy + 2))(handlerCopy, 0, v17);
  }
}

- (void)setHandler:(id)handler version:(LSVersionNumber *)version roles:(unsigned int)roles forContentType:(id)type completionHandler:(id)completionHandler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  typeCopy = type;
  completionHandlerCopy = completionHandler;
  _LSAssertRunningInServer("[_LSDModifyClient setHandler:version:roles:forContentType:completionHandler:]", v15);
  if (handlerCopy && typeCopy)
  {
    v16 = _LSServer_DatabaseExecutionContext();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __78___LSDModifyClient_setHandler_version_roles_forContentType_completionHandler___block_invoke;
    v22[3] = &unk_1E6A1C290;
    v23 = typeCopy;
    selfCopy = self;
    v25 = handlerCopy;
    v17 = *&version->_opaque[16];
    v28 = *version->_opaque;
    v29 = v17;
    rolesCopy = roles;
    v26 = completionHandlerCopy;
    [(LSDBExecutionContext *)v16 syncWrite:v22];

    v18 = v23;
  }

  else
  {
    v20 = *MEMORY[0x1E696A278];
    v21 = @"bad inputs";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v19 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v18, "[_LSDModifyClient setHandler:version:roles:forContentType:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 818);
    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, v19);
  }
}

- (void)removeHandlerForContentType:(id)type roles:(unsigned int)roles completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDModifyClient removeHandlerForContentType:roles:completionHandler:]", v10);
  if (typeCopy)
  {
    v11 = _LSServer_DatabaseExecutionContext();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72___LSDModifyClient_removeHandlerForContentType_roles_completionHandler___block_invoke;
    v14[3] = &unk_1E6A1C2E0;
    v15 = typeCopy;
    selfCopy = self;
    rolesCopy = roles;
    v17 = handlerCopy;
    [(LSDBExecutionContext *)v11 syncWrite:v14];

    v12 = v15;
  }

  else
  {
    v19 = *MEMORY[0x1E696A278];
    v20[0] = @"contentType";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v12, "[_LSDModifyClient removeHandlerForContentType:roles:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 854);
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

- (void)setHandler:(id)handler version:(LSVersionNumber *)version forURLScheme:(id)scheme completionHandler:(id)completionHandler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  schemeCopy = scheme;
  completionHandlerCopy = completionHandler;
  _LSAssertRunningInServer("[_LSDModifyClient setHandler:version:forURLScheme:completionHandler:]", v13);
  if (handlerCopy && schemeCopy)
  {
    v14 = _LSServer_DatabaseExecutionContext();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __70___LSDModifyClient_setHandler_version_forURLScheme_completionHandler___block_invoke;
    v20[3] = &unk_1E6A1C330;
    v21 = schemeCopy;
    selfCopy = self;
    v23 = handlerCopy;
    v15 = *&version->_opaque[16];
    v25 = *version->_opaque;
    v26 = v15;
    v24 = completionHandlerCopy;
    [(LSDBExecutionContext *)v14 syncWrite:v20];

    v16 = v21;
  }

  else
  {
    v18 = *MEMORY[0x1E696A278];
    v19 = @"bad inputs";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v16, "[_LSDModifyClient setHandler:version:forURLScheme:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 891);
    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, v17);
  }
}

- (void)removeHandlerForURLScheme:(id)scheme completionHandler:(id)handler
{
  v17[1] = *MEMORY[0x1E69E9840];
  schemeCopy = scheme;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDModifyClient removeHandlerForURLScheme:completionHandler:]", v8);
  if (schemeCopy)
  {
    v9 = _LSServer_DatabaseExecutionContext();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64___LSDModifyClient_removeHandlerForURLScheme_completionHandler___block_invoke;
    v12[3] = &unk_1E6A1A740;
    v13 = schemeCopy;
    selfCopy = self;
    v15 = handlerCopy;
    [(LSDBExecutionContext *)v9 syncWrite:v12];

    v10 = v13;
  }

  else
  {
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"scheme";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "[_LSDModifyClient removeHandlerForURLScheme:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 919);
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)removeAllHandlersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDModifyClient removeAllHandlersWithCompletionHandler:]", v5);
  v6 = _LSServer_DatabaseExecutionContext();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59___LSDModifyClient_removeAllHandlersWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E6A1BC08;
  v8[4] = self;
  v7 = handlerCopy;
  v9 = v7;
  [(LSDBExecutionContext *)v6 syncWrite:v8];
}

- (void)removeAllHandlerPrefsForBundleID:(id)d completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  if (dCopy)
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    _xpcConnection = [xPCConnection _xpcConnection];
    v16 = 0;
    v10 = _LSCanModifyDefaultHandler(@"*", @"*", _xpcConnection, &v16);
    v11 = v16;

    if (!v10)
    {
      handlerCopy[2](handlerCopy, 0, v11);
      goto LABEL_8;
    }

    _LSHandlerPrefRemoveAllWithBundleID(dCopy, handlerCopy);
    v13 = _LSDefaultLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      xPCConnection2 = [(_LSDClient *)self XPCConnection];
      processIdentifier = [xPCConnection2 processIdentifier];
      *buf = 134218242;
      v20 = processIdentifier;
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "pid %ld removed handlers for %@", buf, 0x16u);
    }
  }

  else
  {
    v17 = *MEMORY[0x1E696A278];
    v18 = @"bundleID";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "[_LSDModifyClient removeAllHandlerPrefsForBundleID:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 966);
    handlerCopy[2](handlerCopy, 0, v13);
  }

LABEL_8:
}

- (void)relaxApplicationTypeRequirements:(BOOL)requirements forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v25[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([__LSDefaultsGetSharedInstance(handlerCopy v10)])
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    _xpcConnection = [xPCConnection _xpcConnection];
    v13 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.launchservices.canChangeEntitlementRequirementsForDefaultApplications");

    if (v13)
    {
      v14 = _LSServer_DatabaseExecutionContext();
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __91___LSDModifyClient_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler___block_invoke;
      v18[3] = &unk_1E6A1C3F8;
      v19 = identifierCopy;
      requirementsCopy = requirements;
      v20 = handlerCopy;
      [(LSDBExecutionContext *)v14 syncWrite:v18];

      v15 = v19;
    }

    else
    {
      v22 = *MEMORY[0x1E696A278];
      v23 = @"process may not modify the requirements for default applications";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v15, "[_LSDModifyClient relaxApplicationTypeRequirements:forBundleIdentifier:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 977);
      (*(handlerCopy + 2))(handlerCopy, 0, v17);
    }
  }

  else
  {
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"This functionality is not available on this device.";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 78, v15, "[_LSDModifyClient relaxApplicationTypeRequirements:forBundleIdentifier:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 974);
    (*(handlerCopy + 2))(handlerCopy, 0, v16);
  }
}

- (void)resetServerStoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDModifyClient resetServerStoreWithCompletionHandler:]", v5);
  v6 = _LSServer_DatabaseExecutionContext();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58___LSDModifyClient_resetServerStoreWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E6A1BC08;
  v8[4] = self;
  v7 = handlerCopy;
  v9 = v7;
  [(LSDBExecutionContext *)v6 syncWrite:v8];
}

- (BOOL)clientHasMIEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  v7 = _LSCheckMIAllowedSPIForXPCConnection(_xpcConnection, entitlementCopy) != 0;

  return v7;
}

- (void)updateRecordForApp:(id)app withSINF:(id)f iTunesMetadata:(id)metadata placeholderMetadata:(id)placeholderMetadata sendNotification:(int)notification operationUUID:(id)d returnSaveToken:(BOOL)token completionHandler:(id)self0
{
  v49[1] = *MEMORY[0x1E69E9840];
  appCopy = app;
  fCopy = f;
  metadataCopy = metadata;
  placeholderMetadataCopy = placeholderMetadata;
  dCopy = d;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDModifyClient updateRecordForApp:withSINF:iTunesMetadata:placeholderMetadata:sendNotification:operationUUID:returnSaveToken:completionHandler:]", v20);
  v21 = appCopy != 0;
  if (appCopy && fCopy)
  {
    v22 = [MEMORY[0x1E695DFD8] setWithObject:{objc_opt_class(), dCopy}];
    v21 = _LSIsDictionaryWithKeysAndValuesOfClasses(fCopy, v22, 0);
  }

  if (metadataCopy && v21)
  {
    v23 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v21 = _LSIsDictionaryWithKeysAndValuesOfClasses(metadataCopy, v23, 0);
  }

  if (placeholderMetadataCopy && v21)
  {
    v24 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v25 = _LSIsDictionaryWithKeysAndValuesOfClasses(placeholderMetadataCopy, v24, 0);

    if ((v25 & 1) == 0)
    {
LABEL_10:
      v46 = *MEMORY[0x1E696A278];
      v47 = @"invalid metadata, cannot update bundle record";
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:{1, dCopy}];
      v27 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v26, "[_LSDModifyClient updateRecordForApp:withSINF:iTunesMetadata:placeholderMetadata:sendNotification:operationUUID:returnSaveToken:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1105);
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v27);
      goto LABEL_29;
    }
  }

  else if (!v21)
  {
    goto LABEL_10;
  }

  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    v26 = fCopy;
    v27 = metadataCopy;
LABEL_21:
    v28 = placeholderMetadataCopy;
    goto LABEL_23;
  }

  if ([(_LSDModifyClient *)self clientHasMIEntitlement:@"UpdateSinfForLaunchServices"])
  {
    v26 = fCopy;
  }

  else
  {
    v26 = 0;
  }

  if ([(_LSDModifyClient *)self clientHasMIEntitlement:@"UpdateiTunesMetadataForLaunchServices"])
  {
    v27 = metadataCopy;
  }

  else
  {
    v27 = 0;
  }

  if ([(_LSDModifyClient *)self clientHasMIEntitlement:@"UpdatePlaceholderMetadata"])
  {
    goto LABEL_21;
  }

  v28 = 0;
LABEL_23:
  v29 = v28;
  v30 = v29;
  if (v27 || v26 || v29)
  {
    v33 = _LSServer_DatabaseExecutionContext();
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __148___LSDModifyClient_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler___block_invoke;
    v37[3] = &unk_1E6A1C448;
    v38 = appCopy;
    v39 = v26;
    v40 = v27;
    v41 = v30;
    tokenCopy = token;
    v42 = v35;
    notificationCopy = notification;
    v43 = handlerCopy;
    [(LSDBExecutionContext *)v33 syncWrite:v37];

    v31 = v38;
  }

  else
  {
    v48 = *MEMORY[0x1E696A278];
    v49[0] = @"UpdateSinfForLaunchServices/UpdateiTunesMetadataForLaunchServices/UpdatePlaceholderMetadata";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v32 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v31, "[_LSDModifyClient updateRecordForApp:withSINF:iTunesMetadata:placeholderMetadata:sendNotification:operationUUID:returnSaveToken:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1101);
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v32);
  }

LABEL_29:
}

- (void)synchronizeWithMobileInstallation
{
  _LSAssertRunningInServer("[_LSDModifyClient synchronizeWithMobileInstallation]", a2);
  v3 = MEMORY[0x1865D7C40]();
  v4 = _LSServer_GetIOQueue(v3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___LSDModifyClient_synchronizeWithMobileInstallation__block_invoke;
  block[3] = &unk_1E6A1A830;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)rebuildApplicationDatabasesForSystem:(BOOL)system internal:(BOOL)internal user:(BOOL)user completionHandler:(id)handler
{
  userCopy = user;
  internalCopy = internal;
  systemCopy = system;
  v38[11] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDModifyClient rebuildApplicationDatabasesForSystem:internal:user:completionHandler:]", v11);
  MEMORY[0x1865D7C40]();
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  v14 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.lsapplicationworkspace.rebuildappdatabases");

  if (!v14)
  {
    v21 = _LSDefaultLog(v15);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      xPCConnection2 = [(_LSDClient *)self XPCConnection];
      *buf = 67109120;
      processIdentifier = [xPCConnection2 processIdentifier];
      _os_log_error_impl(&dword_18162D000, v21, OS_LOG_TYPE_ERROR, "Unentitled request to RebuildApplicationDatabases by pid %d", buf, 8u);
    }

    v22 = -54;
    goto LABEL_19;
  }

  os_unfair_lock_lock(&[_LSDModifyClient rebuildApplicationDatabasesForSystem:internal:user:completionHandler:]::rebuildMutex);
  v16 = pthread_self();
  v33 = pthread_getname_np(v16, buf, 0x100uLL);
  xPCConnection3 = [(_LSDClient *)self XPCConnection];
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  processIdentifier2 = [xPCConnection3 processIdentifier];
  while (proc_pidinfo(processIdentifier2, 3, 0, buffer, 136) == 136)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s(%d)", v38, processIdentifier2];
    [v18 addObject:v20];

    processIdentifier2 = v37;
    if (v37 <= 1)
    {
      goto LABEL_12;
    }
  }

  v23 = __error();
  v24 = _LSDefaultLog(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [_LSDModifyClient rebuildApplicationDatabasesForSystem:internal:user:completionHandler:];
  }

LABEL_12:
  reverseObjectEnumerator = [v18 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  v27 = [allObjects componentsJoinedByString:@"->"];

  if ([v27 length])
  {
    v28 = v27;
    pthread_setname_np([v27 UTF8String]);
  }

  v29 = _LSServer_RebuildApplicationDatabases(systemCopy, internalCopy, userCopy, 0, 1);
  if (!v33)
  {
    pthread_setname_np(buf);
  }

  os_unfair_lock_unlock(&[_LSDModifyClient rebuildApplicationDatabasesForSystem:internal:user:completionHandler:]::rebuildMutex);
  if (!v29)
  {
    v22 = -10810;
LABEL_19:
    v31 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v22, 0, "[_LSDModifyClient rebuildApplicationDatabasesForSystem:internal:user:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1182);
    handlerCopy[2](handlerCopy, 0, v31);

    goto LABEL_20;
  }

  v30 = (handlerCopy[2])(handlerCopy, 1, 0);
LABEL_20:
  MEMORY[0x1865D7C50](v30);
}

- (void)installApplication:(id)application atURL:(id)l withOptions:(id)options installType:(unint64_t)type reply:(id)reply
{
  replyCopy = reply;
  v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[_LSDModifyClient installApplication:atURL:withOptions:installType:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1194);
  replyCopy[2](replyCopy, 0, v7);
}

- (void)uninstallApplication:(id)application withOptions:(id)options uninstallType:(unint64_t)type reply:(id)reply
{
  replyCopy = reply;
  v6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[_LSDModifyClient uninstallApplication:withOptions:uninstallType:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1202);
  replyCopy[2](replyCopy, 0, v6);
}

- (void)unregisterApplicationsAtMountPoint:(id)point operationUUID:(id)d reply:(id)reply
{
  pointCopy = point;
  dCopy = d;
  replyCopy = reply;
  v10 = os_transaction_create();
  _LSDatabaseSentinelIncrement();
  v11 = _LSServer_DatabaseExecutionContext();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke;
  v16[3] = &unk_1E6A1C4C0;
  v12 = pointCopy;
  v17 = v12;
  v13 = dCopy;
  v18 = v13;
  v14 = replyCopy;
  v20 = v14;
  v15 = v10;
  v19 = v15;
  [(LSDBExecutionContext *)v11 syncWrite:v16];
}

- (void)doTokenizedRegistrationTaskWithName:(id)name xpcReply:(id)reply work:(id)work
{
  nameCopy = name;
  replyCopy = reply;
  workCopy = work;
  [nameCopy UTF8String];
  v10 = os_transaction_create();
  RegisterInstallResultsLock = _LSDatabaseGetRegisterInstallResultsLock();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70___LSDModifyClient_doTokenizedRegistrationTaskWithName_xpcReply_work___block_invoke;
  v15[3] = &unk_1E6A1C510;
  v12 = replyCopy;
  v17 = v12;
  v13 = v10;
  v16 = v13;
  v14 = workCopy;
  v18 = v14;
  _LSDoWithLock(RegisterInstallResultsLock, v15);
}

- (void)unregisterApplicationAtURL:(id)l operationUUID:(id)d reply:(id)reply
{
  lCopy = l;
  dCopy = d;
  replyCopy = reply;
  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67___LSDModifyClient_unregisterApplicationAtURL_operationUUID_reply___block_invoke;
    v12[3] = &unk_1E6A1C538;
    v13 = dCopy;
    v14 = lCopy;
    selfCopy = self;
    [(_LSDModifyClient *)self doTokenizedRegistrationTaskWithName:@"com.apple.lsd.unregisterApplicationAtURL:operationUUID:reply:" xpcReply:replyCopy work:v12];
  }

  else
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient unregisterApplicationAtURL:operationUUID:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1334);
    replyCopy[2](replyCopy, 0, v11);
  }
}

- (void)unregisterPluginAtURL:(id)l operationUUID:(id)d reply:(id)reply
{
  lCopy = l;
  dCopy = d;
  replyCopy = reply;
  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62___LSDModifyClient_unregisterPluginAtURL_operationUUID_reply___block_invoke;
    v12[3] = &unk_1E6A1C538;
    v13 = dCopy;
    v14 = lCopy;
    selfCopy = self;
    [(_LSDModifyClient *)self doTokenizedRegistrationTaskWithName:@"com.apple.lsd.unregisterPluginAtURL:operationUUID:reply" xpcReply:replyCopy work:v12];
  }

  else
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient unregisterPluginAtURL:operationUUID:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1352);
    replyCopy[2](replyCopy, 0, v11);
  }
}

- (void)registerBuiltinApplication:(id)application personaUniqueStrings:(id)strings operationUUID:(id)d reply:(id)reply
{
  applicationCopy = application;
  stringsCopy = strings;
  dCopy = d;
  replyCopy = reply;
  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    if (stringsCopy)
    {
      v14 = +[_LSPersonaDatabase sharedInstance];
      v15 = [MEMORY[0x1E695DFD8] setWithArray:stringsCopy];
      v28 = 0;
      v16 = [(_LSPersonaDatabase *)v14 personasWithAttributesForPersonaUniqueStrings:v15 error:&v28];
      v17 = v28;

      if (!v16)
      {
        v19 = _LSDefaultLog(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [_LSDModifyClient registerBuiltinApplication:personaUniqueStrings:operationUUID:reply:];
        }

        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __88___LSDModifyClient_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply___block_invoke;
    v22[3] = &unk_1E6A1C560;
    v23 = applicationCopy;
    selfCopy = self;
    v25 = dCopy;
    v26 = v16;
    v27 = replyCopy;
    v21 = v16;
    [(_LSDModifyClient *)self doTokenizedRegistrationTaskWithName:@"com.apple.lsd.registerBuiltinApplicationAtURL:operationUUID:reply" xpcReply:v27 work:v22];
  }

  else
  {
    v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient registerBuiltinApplication:personaUniqueStrings:operationUUID:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1393);
    (*(replyCopy + 2))(replyCopy, 0, v20);
  }
}

- (void)registerBuiltinAppex:(id)appex operationUUID:(id)d reply:(id)reply
{
  appexCopy = appex;
  dCopy = d;
  replyCopy = reply;
  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61___LSDModifyClient_registerBuiltinAppex_operationUUID_reply___block_invoke;
    v12[3] = &unk_1E6A1C538;
    v12[4] = self;
    v13 = appexCopy;
    v14 = dCopy;
    [(_LSDModifyClient *)self doTokenizedRegistrationTaskWithName:@"com.apple.lsd.registerBuiltinAppex:operationUUID:reply" xpcReply:replyCopy work:v12];
  }

  else
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient registerBuiltinAppex:operationUUID:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1412);
    replyCopy[2](replyCopy, 0, v11);
  }
}

- (void)refreshExtensionPointsWithOperationUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66___LSDModifyClient_refreshExtensionPointsWithOperationUUID_reply___block_invoke;
    v9[3] = &unk_1E6A1C588;
    v9[4] = self;
    v10 = dCopy;
    [(_LSDModifyClient *)self doTokenizedRegistrationTaskWithName:@"com.apple.lsd.registerBuiltinAppex:operationUUID:reply" xpcReply:replyCopy work:v9];
  }

  else
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient refreshExtensionPointsWithOperationUUID:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1432);
    replyCopy[2](replyCopy, 0, v8);
  }
}

- (void)refreshContentInFrameworkAtURL:(id)l reply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  v8 = _LSServer_GetIOQueue(replyCopy);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___LSDModifyClient_refreshContentInFrameworkAtURL_reply___block_invoke;
  block[3] = &unk_1E6A193B8;
  block[4] = self;
  v12 = lCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = lCopy;
  dispatch_sync(v8, block);
}

- (void)setUpdateAvailabilities:(id)availabilities completionHandler:(id)handler
{
  v19[1] = *MEMORY[0x1E69E9840];
  availabilitiesCopy = availabilities;
  handlerCopy = handler;
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  if ((_LSIsDictionaryWithKeysAndValuesOfClass(availabilitiesCopy, v8, v9) & 1) == 0)
  {
    v18 = *MEMORY[0x1E696A278];
    v19[0] = @"valuesByBundleID";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v13, "[_LSDModifyClient setUpdateAvailabilities:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1459);
    handlerCopy[2](handlerCopy, 0, v14);
LABEL_9:

    goto LABEL_10;
  }

  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  v12 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.launchservices.canchangeupdateavailability");

  if (!v12)
  {
    if (@"com.apple.private.launchservices.canchangeupdateavailability")
    {
      v15 = @"com.apple.private.launchservices.canchangeupdateavailability";
    }

    else
    {
      v15 = @"unknown entitlement";
    }

    v16 = *MEMORY[0x1E696A278];
    v17 = v15;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v13, "[_LSDModifyClient setUpdateAvailabilities:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1462);
    handlerCopy[2](handlerCopy, 0, v14);
    goto LABEL_9;
  }

  [LSApplicationRecord setUpdateAvailabilityForApplicationsWithBundleIdentifiers:availabilitiesCopy completionHandler:handlerCopy];
LABEL_10:
}

- (void)garbageCollectDatabaseWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDModifyClient garbageCollectDatabaseWithCompletionHandler:]", v5);
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  v8 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.coreservices.canforcedatabasegc");

  if (v8)
  {
    v9 = _LSServer_DatabaseExecutionContext();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64___LSDModifyClient_garbageCollectDatabaseWithCompletionHandler___block_invoke;
    v13[3] = &unk_1E6A1A660;
    v14 = handlerCopy;
    [(LSDBExecutionContext *)v9 syncWrite:v13];

    v10 = v14;
  }

  else
  {
    if (@"com.apple.private.coreservices.canforcedatabasegc")
    {
      v11 = @"com.apple.private.coreservices.canforcedatabasegc";
    }

    else
    {
      v11 = @"unknown entitlement";
    }

    v15 = *MEMORY[0x1E696A278];
    v16[0] = v11;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v10, "[_LSDModifyClient garbageCollectDatabaseWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1509);
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }
}

- (void)setPreferenceValue:(id)value forKey:(id)key forApplicationAtURL:(id)l completionHandler:(id)handler
{
  v54[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  lCopy = l;
  handlerCopy = handler;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__24;
  v45 = __Block_byref_object_dispose__24;
  v46 = 0;
  v39 = 0u;
  v40 = 0u;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  v15 = xPCConnection;
  if (xPCConnection)
  {
    objc_msgSend_auditToken(xPCConnection);
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v38 = 0;
  _LSIsAuditTokenSandboxed(&v39, &v38, 0);
  if (keyCopy && lCopy && ([lCopy isFileURL] & 1) != 0)
  {
    if (v38 && !_LSCheckEntitlementForAuditToken(&v39, @"com.apple.private.launchservices.canmodifypreferences"))
    {
      if (@"com.apple.private.launchservices.canmodifypreferences")
      {
        v26 = @"com.apple.private.launchservices.canmodifypreferences";
      }

      else
      {
        v26 = @"unknown entitlement";
      }

      v51 = *MEMORY[0x1E696A278];
      v52 = v26;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v27 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v18, "[_LSDModifyClient setPreferenceValue:forKey:forApplicationAtURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1531);
      v28 = v42[5];
      v42[5] = v27;
    }

    else if ([FSNode canReadMetadataOfURL:lCopy fromSandboxWithAuditToken:&v39])
    {
      v16 = [FSNode alloc];
      v17 = (v42 + 5);
      obj = v42[5];
      v18 = [(FSNode *)v16 initWithURL:lCopy flags:1 error:&obj];
      objc_storeStrong(v17, obj);
      if (v18)
      {
        v19 = _LSServer_DatabaseExecutionContext();
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __84___LSDModifyClient_setPreferenceValue_forKey_forApplicationAtURL_completionHandler___block_invoke;
        v35[3] = &unk_1E6A18EB0;
        v20 = v18;
        v36 = v20;
        [(LSDBExecutionContext *)v19 syncRead:v35];

        v22 = _LSServer_GetIOQueue(v21);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __84___LSDModifyClient_setPreferenceValue_forKey_forApplicationAtURL_completionHandler___block_invoke_289;
        v29[3] = &unk_1E6A1C5B0;
        v33 = &v47;
        v30 = keyCopy;
        v18 = v20;
        v31 = v18;
        v32 = valueCopy;
        v34 = &v41;
        dispatch_sync(v22, v29);
      }
    }

    else
    {
      v25 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient setPreferenceValue:forKey:forApplicationAtURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1535);
      v18 = v42[5];
      v42[5] = v25;
    }
  }

  else
  {
    v53 = *MEMORY[0x1E696A278];
    v54[0] = @"bad inputs";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v23 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v18, "[_LSDModifyClient setPreferenceValue:forKey:forApplicationAtURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1525);
    v24 = v42[5];
    v42[5] = v23;
  }

  handlerCopy[2](handlerCopy, *(v48 + 24), v42[5]);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
}

- (void)setPreferenceValueForCallingApplication:(id)application forKey:(id)key completionHandler:(id)handler
{
  v41[1] = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  keyCopy = key;
  handlerCopy = handler;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__24;
  v34 = __Block_byref_object_dispose__24;
  v35 = 0;
  v28 = 0u;
  v29 = 0u;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  v12 = xPCConnection;
  if (xPCConnection)
  {
    objc_msgSend_auditToken(xPCConnection);
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  if (!keyCopy || (LaunchServices::PrefsStorage::preferenceKeyMayBeSelfSet(keyCopy, v13) & 1) == 0)
  {
    v40 = *MEMORY[0x1E696A278];
    v41[0] = @"prefKey";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "[_LSDModifyClient setPreferenceValueForCallingApplication:forKey:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1573);
LABEL_10:
    v17 = v31[5];
    v31[5] = v20;
    goto LABEL_11;
  }

  v14 = _LSCopyBundleURLForAuditToken(&v28, 0);
  if (!v14)
  {
    v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -600, 0, "[_LSDModifyClient setPreferenceValueForCallingApplication:forKey:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1595);
    goto LABEL_10;
  }

  v15 = [FSNode alloc];
  v16 = (v31 + 5);
  obj = v31[5];
  v17 = [(FSNode *)v15 initWithURL:v14 flags:0 error:&obj];
  objc_storeStrong(v16, obj);
  if (v17)
  {
    v18 = _LSServer_DatabaseExecutionContext();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __85___LSDModifyClient_setPreferenceValueForCallingApplication_forKey_completionHandler___block_invoke;
    v21[3] = &unk_1E6A1C5D8;
    v19 = v17;
    v22 = v19;
    v25 = &v36;
    v23 = keyCopy;
    v24 = applicationCopy;
    v26 = &v30;
    [(LSDBExecutionContext *)v18 syncRead:v21];

    v17 = v19;
  }

LABEL_11:

  handlerCopy[2](handlerCopy, *(v37 + 24), v31[5]);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
}

- (BOOL)clientIsEntitledForEmbeddedRegistrationOperations
{
  v10 = *MEMORY[0x1E69E9840];
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];

  if (_LSCheckEntitlementForXPCConnectionQuiet(_xpcConnection, @"com.apple.private.coreservices.can-register-install-results") || _LSCheckEntitlementForXPCConnectionQuiet(_xpcConnection, @"com.apple.private.installcoordinationd.daemon") || (v4 = _LSCheckEntitlementForXPCConnectionQuiet(_xpcConnection, @"com.apple.private.coreservices.lsaw")))
  {
    v5 = 1;
  }

  else
  {
    v7 = _LSDefaultLog(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      pid = xpc_connection_get_pid(_xpcConnection);
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Connection from process %llu is not entitled for post installation modifications to the database", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (void)performPostInstallationRegistration:(id)registration personaUniqueStrings:(id)strings operationUUID:(id)d reply:(id)reply
{
  registrationCopy = registration;
  stringsCopy = strings;
  dCopy = d;
  replyCopy = reply;
  if (![(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient performPostInstallationRegistration:personaUniqueStrings:operationUUID:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1659);
    (*(replyCopy + 2))(replyCopy, 0, 0, v17);
    goto LABEL_10;
  }

  if (!stringsCopy)
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_9;
  }

  v14 = +[_LSPersonaDatabase sharedInstance];
  v15 = [MEMORY[0x1E695DFD8] setWithArray:stringsCopy];
  v28 = 0;
  v16 = [(_LSPersonaDatabase *)v14 personasWithAttributesForPersonaUniqueStrings:v15 error:&v28];
  v17 = v28;

  if (v16)
  {
LABEL_9:
    RegisterInstallResultsLock = _LSDatabaseGetRegisterInstallResultsLock();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __97___LSDModifyClient_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply___block_invoke;
    v22[3] = &unk_1E6A1C628;
    v23 = registrationCopy;
    v27 = replyCopy;
    v24 = dCopy;
    selfCopy = self;
    v26 = v16;
    v21 = v16;
    _LSDoWithLock(RegisterInstallResultsLock, v22);

    goto LABEL_10;
  }

  v19 = _LSDefaultLog(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [_LSDModifyClient registerBuiltinApplication:personaUniqueStrings:operationUUID:reply:];
  }

  (*(replyCopy + 2))(replyCopy, 0, 0, v17);
LABEL_10:
}

- (void)performPostUninstallationUnregistrationOfBundleID:(id)d operationUUID:(id)iD unregisterType:(unsigned int)type precondition:(id)precondition reply:(id)reply
{
  dCopy = d;
  iDCopy = iD;
  preconditionCopy = precondition;
  replyCopy = reply;
  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    RegisterInstallResultsLock = _LSDatabaseGetRegisterInstallResultsLock();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __118___LSDModifyClient_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply___block_invoke;
    v18[3] = &unk_1E6A1C678;
    v23 = replyCopy;
    v19 = iDCopy;
    v20 = dCopy;
    typeCopy = type;
    v21 = preconditionCopy;
    selfCopy = self;
    _LSDoWithLock(RegisterInstallResultsLock, v18);
  }

  else
  {
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient performPostUninstallationUnregistrationOfBundleID:operationUUID:unregisterType:precondition:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1684);
    (*(replyCopy + 2))(replyCopy, 0, v17);
  }
}

- (void)performUpdateOfPersonasOfBundleIDs:(id)ds toPersonaUniqueStrings:(id)strings operationUUID:(id)d reply:(id)reply
{
  dsCopy = ds;
  stringsCopy = strings;
  dCopy = d;
  replyCopy = reply;
  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__24;
    v39 = __Block_byref_object_dispose__24;
    v40 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__24;
    v33 = __Block_byref_object_dispose__24;
    v34 = 0;
    v14 = +[_LSPersonaDatabase sharedInstance];
    v15 = (v30 + 5);
    obj = v30[5];
    v16 = [(_LSPersonaDatabase *)v14 personasWithAttributesForPersonaUniqueStrings:stringsCopy error:&obj];
    objc_storeStrong(v15, obj);

    if (v16)
    {
      v18 = _LSServer_DatabaseExecutionContext();
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke;
      v21[3] = &unk_1E6A1C6C8;
      v22 = dCopy;
      v23 = v16;
      v24 = dsCopy;
      selfCopy = self;
      v26 = &v29;
      v27 = &v35;
      [(LSDBExecutionContext *)v18 syncWrite:v21];

      v19 = v22;
    }

    else
    {
      v19 = _LSInstallLog(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [_LSDModifyClient performUpdateOfPersonasOfBundleIDs:toPersonaUniqueStrings:operationUUID:reply:];
      }
    }

    replyCopy[2](replyCopy, v36[5], v30[5]);
    _Block_object_dispose(&v29, 8);

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient performUpdateOfPersonasOfBundleIDs:toPersonaUniqueStrings:operationUUID:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1885);
    replyCopy[2](replyCopy, 0, v20);
  }
}

- (void)forceSaveForTestingWithCompletion:(id)completion
{
  completionCopy = completion;
  if (-[_LSDModifyClient clientIsEntitledForEmbeddedRegistrationOperations](self, "clientIsEntitledForEmbeddedRegistrationOperations") || (-[_LSDClient XPCConnection](self, "XPCConnection"), v5 = objc_claimAutoreleasedReturnValue(), [v5 _xpcConnection], v6 = objc_claimAutoreleasedReturnValue(), v7 = _LSCheckEntitlementForXPCConnection(v6, @"com.apple.private.coreservices.can-force-database-save-for-testing"), v6, v5, v7))
  {
    v8 = _LSServer_DatabaseExecutionContext();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54___LSDModifyClient_forceSaveForTestingWithCompletion___block_invoke;
    v10[3] = &unk_1E6A1A660;
    v11 = completionCopy;
    [(LSDBExecutionContext *)v8 syncWrite:v10];
  }

  else
  {
    v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient forceSaveForTestingWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1897);
    (*(completionCopy + 2))(completionCopy, v9);
  }
}

- (void)removeDatabaseStoreOnNextOpportunity:(id)opportunity
{
  v22 = *MEMORY[0x1E69E9840];
  opportunityCopy = opportunity;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  v7 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.coreservices.canresetserverstore");

  if (v7)
  {
    v10 = [__LSDefaultsGetSharedInstance(v8 v9)];
    if (v10)
    {
      data = [MEMORY[0x1E695DEF0] data];
      v19 = 0;
      v12 = [data writeToURL:v10 options:0 error:&v19];
      v13 = v19;

      if (v12)
      {
        v14 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v21 = v10;
          _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_INFO, "Created removeAtNextStartup sentinel file at %{public}@", buf, 0xCu);
        }

        v15 = 0;
      }

      else
      {
        v14 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [_LSDModifyClient removeDatabaseStoreOnNextOpportunity:];
        }

        v15 = v13;
      }

      (opportunityCopy)[2](opportunityCopy, v12, v15);
    }

    else
    {
      v17 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [_LSDModifyClient removeDatabaseStoreOnNextOpportunity:];
      }

      v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient removeDatabaseStoreOnNextOpportunity:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1918);
      (opportunityCopy)[2](opportunityCopy, 0, v18);

      v13 = 0;
    }
  }

  else
  {
    v16 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(_LSDClient *)self XPCConnection];
      objc_claimAutoreleasedReturnValue();
      [_LSDModifyClient removeDatabaseStoreOnNextOpportunity:];
    }

    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient removeDatabaseStoreOnNextOpportunity:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1923);
    (opportunityCopy)[2](opportunityCopy, 0, v13);
  }
}

- (void)requestLSDExitSafely:(double)safely completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  v9 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.launchservices.requestlsdexit");

  if (v9)
  {
    if (safely <= 0.0)
    {
      v19 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_INFO, "Exiting immediately; not saving current database.", buf, 2u);
      }

      v20 = dispatch_time(0, 100000000);
      dispatch_after(v20, MEMORY[0x1E69E96A0], &__block_literal_global_317);
    }

    else
    {
      v10 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        safelyCopy = safely;
        _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_INFO, "Arming LS save timer, interval=%{public}g", buf, 0xCu);
      }

      v11 = dispatch_semaphore_create(0);
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __59___LSDModifyClient_requestLSDExitSafely_completionHandler___block_invoke;
      v24 = &unk_1E6A1C6F0;
      v12 = handlerCopy;
      v26 = v12;
      v13 = v11;
      v25 = v13;
      _LSArmSaveTimerWithObserver(7, &v21);
      v14 = dispatch_time(0, (safely * 1000000000.0));
      if (!dispatch_semaphore_wait(v13, v14))
      {
        v15 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_INFO, "Armed LS save timer didn't complete.", buf, 2u);
        }

        v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-1712 userInfo:{0, v21, v22, v23, v24}];
        (*(v12 + 2))(v12, 0, v16);
      }
    }
  }

  else
  {
    v17 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(_LSDClient *)self XPCConnection];
      objc_claimAutoreleasedReturnValue();
      [_LSDModifyClient requestLSDExitSafely:completionHandler:];
    }

    v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient requestLSDExitSafely:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1976);
    (*(handlerCopy + 2))(handlerCopy, 0, v18);
  }
}

- (void)setPreferredAppMarketplaces:(id)marketplaces completion:(id)completion
{
  v17[1] = *MEMORY[0x1E69E9840];
  marketplacesCopy = marketplaces;
  completionCopy = completion;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  v9 = _LSCheckEntitlementForNSXPCConnection(xPCConnection, @"com.apple.private.coreservices.appmarketplace.write");

  if (v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59___LSDModifyClient_setPreferredAppMarketplaces_completion___block_invoke;
    v14[3] = &unk_1E6A1C718;
    v15 = marketplacesCopy;
    v10 = [LSMarketplacesPreferences modifyPreferencesWithBlock:v14];
    completionCopy[2](completionCopy, v10);

    v11 = v15;
  }

  else
  {
    if (@"com.apple.private.coreservices.appmarketplace.write")
    {
      v12 = @"com.apple.private.coreservices.appmarketplace.write";
    }

    else
    {
      v12 = @"unknown entitlement";
    }

    v16 = *MEMORY[0x1E696A278];
    v17[0] = v12;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v11, "[_LSDModifyClient setPreferredAppMarketplaces:completion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1991);
    completionCopy[2](completionCopy, v13);
  }
}

- (void)registerBuiltinApplication:personaUniqueStrings:operationUUID:reply:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)removeDatabaseStoreOnNextOpportunity:.cold.3()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_7_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)requestLSDExitSafely:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_7_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end