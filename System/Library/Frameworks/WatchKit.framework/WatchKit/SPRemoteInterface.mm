@interface SPRemoteInterface
+ (id)_remoteIdentifier;
+ (id)controller:(id)controller setupProperties:(id)properties viewControllerID:(id)d tableIndex:(int64_t)index rowIndex:(int64_t)rowIndex classForType:(void *)type;
+ (id)startRemoteInterface;
+ (id)startRemoteInterfaceWithBundle:(id)bundle;
+ (void)_logDuplicate:(id)duplicate controller:(id)controller key:(id)key property:(id)property value:(id)value;
+ (void)_setupStorageForController:(id)controller;
+ (void)_updateAccessibility;
+ (void)clearStorageForController:(id)controller;
+ (void)controller:(id)controller presentAddPassesControllerWithPasses:(id)passes completion:(id)completion;
+ (void)controller:(id)controller presentInterfaceController:(id)interfaceController context:(id)context;
+ (void)controller:(id)controller presentInterfaceControllers:(id)controllers contexts:(id)contexts;
+ (void)controller:(id)controller presentTextInputControllerWithSuggestions:(id)suggestions allowedInputMode:(id)mode completion:(id)completion;
+ (void)controller:(id)controller presentTextInputControllerWithSuggestionsForLanguage:(id)language allowedInputMode:(id)mode completion:(id)completion;
+ (void)controller:(id)controller pushInterfaceController:(id)interfaceController context:(id)context;
+ (void)insertPageControllerAtIndexes:(id)indexes withNames:(id)names contexts:(id)contexts;
+ (void)reloadRootControllersWithNames:(id)names contexts:(id)contexts;
+ (void)sendCacheRequest:(id)request;
+ (void)setController:(id)controller key:(id)key property:(id)property value:(id)value;
+ (void)setControllerActive:(id)active;
+ (void)setControllerInactive:(id)inactive;
- (BOOL)_handleAction:(id)action forNotification:(id)notification remoteNotificationContext:(id)context localNotification:(id)localNotification unNotification:(id)unNotification handler:(id)handler controller:(id)controller;
- (BOOL)_sendDataToApp:(id)app reply:(id)reply;
- (SPRemoteInterface)initWithBundle:(id)bundle;
- (id)_allInterfaceControllers;
- (id)_host;
- (id)_interfaceControllerClientIDForControllerID:(id)d;
- (id)_interfaceControllerID:(id)d;
- (id)_interfaceControllerIDsForClientID:(id)d;
- (id)_interfaceControllerWithID:(id)d;
- (id)_setupSignal:(int)signal handler:(id)handler;
- (id)controllerMethods:(id)methods;
- (id)interfaceCreationContextForID:(id)d;
- (id)pageInterfaceCreationContextForID:(id)d;
- (id)storeInterfaceCreationContext:(id)context;
- (id)storePageInterfaceCreationContext:(id)context;
- (void)_activateViewController:(id)controller clientIdentifier:(id)identifier;
- (void)_deregisterInterfaceControllerID:(id)d;
- (void)_dumpInterfaceDictionary;
- (void)_fillDataWithRandom:(id)random length:(int64_t)length;
- (void)_inQueue_recoverFromMissingIntefaceControllerWithID:(id)d;
- (void)_interfaceControllerWithID:(id)d performBlock:(id)block;
- (void)_performAfterSendSetViewControllers:(id)controllers;
- (void)_registerInterfaceController:(id)controller interfaceControllerID:(id)d interfaceControllerClientID:(id)iD applicationRootController:(BOOL)rootController;
- (void)_requestTimingData:(id)data;
- (void)_setupSignalHandlers;
- (void)_tellApplicationThatInterfaceControllerCantBeFound:(id)found;
- (void)activateViewController:(id)controller clientIdentifier:(id)identifier;
- (void)applicationContentsDidReset:(id)reset;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidFinishConnecting:(id)connecting;
- (void)applicationDidReceiveNotification:(id)notification clientIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)applicationDidTerminate:(id)terminate;
- (void)applicationHandleWatchTaskKeys:(id)keys reasonForSnapshot:(unint64_t)snapshot visibleVCID:(id)d barTaskUUID:(id)iD clientIdentifier:(id)identifier;
- (void)applicationIsStillActive;
- (void)applicationWillResignActive:(id)active;
- (void)controller:(id)controller presentInterfaceController:(id)interfaceController initializationContextID:(id)d;
- (void)controller:(id)controller presentInterfaceControllers:(id)controllers initializationContextIDs:(id)ds;
- (void)controller:(id)controller pushInterfaceController:(id)interfaceController initializationContextID:(id)d;
- (void)controllerBecomeCurrentPage:(id)page;
- (void)controllerDismiss:(id)dismiss;
- (void)controllerDismissAddPassesController:(id)controller;
- (void)controllerDismissTextInputController:(id)controller;
- (void)controllerPop:(id)pop;
- (void)controllerPopToRoot:(id)root;
- (void)controllerPresentAddPassesController:(id)controller passes:(id)passes;
- (void)controllerPresentTextInputController:(id)controller allowedInputMode:(id)mode suggestions:(id)suggestions;
- (void)createViewController:(id)controller className:(id)name properties:(id)properties contextID:(id)d info:(id)info gestureDescriptions:(id)descriptions clientIdentifier:(id)identifier;
- (void)dataInterfaceDidBecomeActive:(id)active;
- (void)dataInterfaceWillResignActive:(id)active;
- (void)deactivateViewController:(id)controller clientIdentifier:(id)identifier;
- (void)dealloc;
- (void)didFinishHandlingActivity:(id)activity;
- (void)fetchNotificationForNotificationID:(id)d completion:(id)completion;
- (void)getComplicationData:(id)data;
- (void)handlePlistDictionary:(id)dictionary fromIdentifier:(id)identifier;
- (void)handleProtoPlist:(id)plist fromIdentifier:(id)identifier;
- (void)insertPageControllerAtIndexes:(id)indexes withNames:(id)names initializationContextIDs:(id)ds;
- (void)layoutDirection:(int64_t)direction;
- (void)movePageControllerAtIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (void)notificationController:(id)controller showNotificationInterfaceType:(int64_t)type;
- (void)openSystemURL:(id)l;
- (void)preferredContentSizeCategory:(id)category;
- (void)receiveData:(id)data fromIdentifier:(id)identifier;
- (void)receiveNavigationReply:(id)reply clientIdentifier:(id)identifier;
- (void)receiveProtoData:(id)data fromIdentifier:(id)identifier;
- (void)recoverFromMissingIntefaceControllerWithID:(id)d;
- (void)reloadRootControllersWithNames:(id)names initializationContextIDs:(id)ds pageIndex:(int64_t)index verticalPaging:(BOOL)paging;
- (void)removeInterfaceControllersForClient:(id)client;
- (void)removePageControllerAtIndexes:(id)indexes;
- (void)removePageInterfaceCreationContextsForIDs:(id)ds;
- (void)replyTimingData:(id)data;
- (void)replyWithExtensionTimingData:(id)data;
- (void)rootInterfaceController:(id)controller performActionWithItemID:(id)d forNotificationID:(id)iD userInfo:(id)info clientIdentifier:(id)identifier completionHandler:(id)handler;
- (void)sendCacheRequestMessage:(id)message;
- (void)sendData:(id)data clientIdentifiers:(id)identifiers reply:(id)reply;
- (void)sendPlist:(id)plist clientIdentifiers:(id)identifiers;
- (void)sendSetViewController:(id)controller key:(id)key property:(id)property value:(id)value clientIdentifiers:(id)identifiers;
- (void)sendSetViewController:(id)controller values:(id)values clientIdentifiers:(id)identifiers;
- (void)sendWillActivateReplyForController:(id)controller;
- (void)updateUserActivity:(id)activity userInfo:(id)info webpageURL:(id)l controller:(id)controller;
@end

@implementation SPRemoteInterface

+ (id)startRemoteInterface
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [self startRemoteInterfaceWithBundle:mainBundle];

  return v4;
}

+ (id)startRemoteInterfaceWithBundle:(id)bundle
{
  v18 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v4 = wk_extension_loading_log(bundleCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v13 = "+[SPRemoteInterface startRemoteInterfaceWithBundle:]";
    v14 = 1024;
    v15 = 340;
    v16 = 2114;
    v17 = bundleCopy;
    _os_log_impl(&dword_23B338000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: startRemoteInterfaceWithBundle:%{public}@", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SPRemoteInterface_startRemoteInterfaceWithBundle___block_invoke;
  block[3] = &unk_278B7E200;
  v11 = bundleCopy;
  v5 = startRemoteInterfaceWithBundle__onceToken;
  v6 = bundleCopy;
  if (v5 != -1)
  {
    dispatch_once(&startRemoteInterfaceWithBundle__onceToken, block);
  }

  v7 = __sharedRemoteInterface;
  v8 = __sharedRemoteInterface;

  return v7;
}

uint64_t __52__SPRemoteInterface_startRemoteInterfaceWithBundle___block_invoke(uint64_t a1)
{
  __sharedRemoteInterface = [[SPRemoteInterface alloc] initWithBundle:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

+ (id)_remoteIdentifier
{
  if (_remoteIdentifier_onceToken != -1)
  {
    +[SPRemoteInterface _remoteIdentifier];
  }

  v3 = _remoteIdentifier___remoteIdentifier;

  return v3;
}

void __38__SPRemoteInterface__remoteIdentifier__block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 infoDictionary];

  v2 = [v1 objectForKeyedSubscript:@"NSExtension"];
  v3 = [v2 objectForKeyedSubscript:@"NSExtensionAttributes"];
  v4 = [v3 objectForKeyedSubscript:@"WKAppBundleIdentifier"];
  v5 = _remoteIdentifier___remoteIdentifier;
  _remoteIdentifier___remoteIdentifier = v4;

  v7 = wk_default_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446722;
    v11 = "+[SPRemoteInterface _remoteIdentifier]_block_invoke";
    v12 = 1024;
    v13 = 371;
    v14 = 2114;
    v15 = _remoteIdentifier___remoteIdentifier;
    _os_log_impl(&dword_23B338000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->ComD Gizmo app identifier %{public}@", &v10, 0x1Cu);
  }

  if (!_remoteIdentifier___remoteIdentifier)
  {
    v9 = wk_default_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __38__SPRemoteInterface__remoteIdentifier__block_invoke_cold_1();
    }
  }
}

- (SPRemoteInterface)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v29.receiver = self;
  v29.super_class = SPRemoteInterface;
  v6 = [(SPRemoteInterface *)&v29 init];
  [v6 _setupSignalHandlers];
  objc_storeStrong(v6 + 16, bundle);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _applicationAccessibilityChanged, @"_AXNotification_GizmoApplicationAccessibilityEnabled", 0, 0);
  +[SPRemoteInterface _updateAccessibility];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v9 = *(v6 + 2);
  *(v6 + 2) = v8;

  infoDictionary = [bundleCopy infoDictionary];
  v11 = [infoDictionary objectForKeyedSubscript:@"_SPDataDelegate"];
  v12 = v11;
  if (v11)
  {
    v13 = NSClassFromString(v11);
    if (v13)
    {
      v14 = v13;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __36__SPRemoteInterface_initWithBundle___block_invoke;
      v25[3] = &unk_278B7E228;
      v26 = v12;
      v27 = v6;
      v28 = v14;
      spUtils_dispatchAsyncToMainThread(v25);
    }
  }

  v15 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 0x7FFFFFFFLL, _RunLoopHandler, 0);
  v16 = *(v6 + 3);
  *(v6 + 3) = v15;

  Main = CFRunLoopGetMain();
  CFRunLoopAddObserver(Main, *(v6 + 3), *MEMORY[0x277CBF048]);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = *(v6 + 4);
  *(v6 + 4) = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v21 = *(v6 + 5);
  *(v6 + 5) = dictionary2;

  v22 = dispatch_queue_create("com.apple.watchkit.interfaceControllers", MEMORY[0x277D85CD8]);
  v23 = *(v6 + 7);
  *(v6 + 7) = v22;

  return v6;
}

void __36__SPRemoteInterface_initWithBundle___block_invoke(uint64_t a1, __n128 a2)
{
  v3 = wk_default_log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __36__SPRemoteInterface_initWithBundle___block_invoke_cold_1();
  }

  v4 = objc_alloc_init(*(a1 + 48));
  [*(a1 + 40) setDataDelegate:v4];
}

- (void)dealloc
{
  runLoopObserver = [(SPRemoteInterface *)self runLoopObserver];

  if (runLoopObserver)
  {
    Main = CFRunLoopGetMain();
    runLoopObserver2 = [(SPRemoteInterface *)self runLoopObserver];
    CFRunLoopRemoveObserver(Main, runLoopObserver2, *MEMORY[0x277CBF048]);

    [(SPRemoteInterface *)self setRunLoopObserver:0];
  }

  v6.receiver = self;
  v6.super_class = SPRemoteInterface;
  [(SPRemoteInterface *)&v6 dealloc];
}

+ (void)_updateAccessibility
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"GizmoApplicationAccessibilityEnabled", @"com.apple.Accessibility", 0);
  v3 = _updateAccessibility___startedAccessibilityServer;
  if ((AppBooleanValue != 0) != _updateAccessibility___startedAccessibilityServer)
  {
    v4 = AppBooleanValue;
    __41__SPRemoteInterface__updateAccessibility__block_invoke(AppBooleanValue);
    if (v4)
    {
      if (v3)
      {
        v5 = objc_opt_respondsToSelector();
        if (v5)
        {
          v6 = __41__SPRemoteInterface__updateAccessibility__block_invoke(v5);

          [v6 _accessibilityReenabled];
        }
      }

      else
      {
        v9 = objc_opt_respondsToSelector();
        if (v9)
        {
          [__41__SPRemoteInterface__updateAccessibility__block_invoke(v9) _accessibilityStartServer];
          _updateAccessibility___startedAccessibilityServer = 1;
        }
      }
    }

    else
    {
      v7 = objc_opt_respondsToSelector();
      if (v7)
      {
        v8 = __41__SPRemoteInterface__updateAccessibility__block_invoke(v7);

        [v8 _accessibilityStopServer];
      }
    }
  }
}

id __41__SPRemoteInterface__updateAccessibility__block_invoke(uint64_t a1)
{
  if (__performAfterSendSetViewControllers_block_invoke_onceToken != -1)
  {
    __41__SPRemoteInterface__updateAccessibility__block_invoke_cold_1();
  }

  v2 = __performAfterSendSetViewControllers_block_invoke___loaderClass;

  return v2;
}

Class __41__SPRemoteInterface__updateAccessibility__block_invoke_2()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/UIAccessibility.framework"];
  [v0 load];

  result = NSClassFromString(&cfstr_Uiaccessibilit.isa);
  __performAfterSendSetViewControllers_block_invoke___loaderClass = result;
  return result;
}

- (void)_setupSignalHandlers
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__SPRemoteInterface__setupSignalHandlers__block_invoke;
  v4[3] = &unk_278B7E200;
  v4[4] = self;
  v2 = [(SPRemoteInterface *)self _setupSignal:31 handler:v4];
  v3 = _setupSignalHandlers__sigUsr2Source;
  _setupSignalHandlers__sigUsr2Source = v2;
}

void __41__SPRemoteInterface__setupSignalHandlers__block_invoke(uint64_t a1, __n128 a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = wk_default_log(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[SPRemoteInterface _setupSignalHandlers]_block_invoke";
    v12 = 1024;
    v13 = 551;
    _os_log_impl(&dword_23B338000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ======== Companion App Extension", &v10, 0x12u);
  }

  v5 = wk_default_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[SPRemoteInterface _remoteIdentifier];
    v10 = 136446722;
    v11 = "[SPRemoteInterface _setupSignalHandlers]_block_invoke";
    v12 = 1024;
    v13 = 552;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Remote Identifier: %{public}@", &v10, 0x1Cu);
  }

  v8 = wk_default_log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[SPRemoteInterface _setupSignalHandlers]_block_invoke";
    v12 = 1024;
    v13 = 553;
    _os_log_impl(&dword_23B338000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: -------- Interface Controllers", &v10, 0x12u);
  }

  v9 = wk_default_log([*(a1 + 32) _dumpInterfaceDictionary]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[SPRemoteInterface _setupSignalHandlers]_block_invoke";
    v12 = 1024;
    v13 = 555;
    _os_log_impl(&dword_23B338000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: --------", &v10, 0x12u);
  }
}

- (id)_setupSignal:(int)signal handler:(id)handler
{
  handlerCopy = handler;
  v6 = dispatch_source_create(MEMORY[0x277D85D30], signal, 0, MEMORY[0x277D85CD0]);
  if (v6)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__SPRemoteInterface__setupSignal_handler___block_invoke;
    handler[3] = &unk_278B7E250;
    v10 = handlerCopy;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v6);
    signal(signal, 1);
    v7 = v10;
  }

  else
  {
    v7 = wk_default_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface _setupSignal:handler:];
    }
  }

  return v6;
}

- (id)_host
{
  defaultService = [MEMORY[0x277D3D358] defaultService];
  v3 = [defaultService hostPrincipalForPlugInNamed:0];

  return v3;
}

- (void)sendData:(id)data clientIdentifiers:(id)identifiers reply:(id)reply
{
  dataCopy = data;
  identifiersCopy = identifiers;
  replyCopy = reply;
  v11 = kdebug_trace();
  v12 = wk_default_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SPRemoteInterface sendData:clientIdentifiers:reply:];
  }

  _host = [(SPRemoteInterface *)self _host];
  if (_host)
  {
    v14 = +[SPRemoteInterface _remoteIdentifier];
    if (replyCopy)
    {
      [_host sendData:dataCopy identifier:v14 clientIdentifiers:identifiersCopy reply:replyCopy];
    }

    else
    {
      [_host sendData:dataCopy identifier:v14 clientIdentifiers:identifiersCopy];
    }
  }

  else
  {
    v14 = wk_default_log(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface sendData:clientIdentifiers:reply:];
    }
  }
}

- (void)sendPlist:(id)plist clientIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v7 = [SPProtoSerializer spPlistWithDictionary:plist];
  v8 = v7;
  if (v7)
  {
    data = [v7 data];
    if (data)
    {
      [(SPRemoteInterface *)self sendData:data clientIdentifiers:identifiersCopy];
    }

    else
    {
      v10 = wk_default_log(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SPRemoteInterface sendPlist:clientIdentifiers:];
      }
    }
  }

  else
  {
    data = wk_default_log(0);
    if (os_log_type_enabled(data, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface sendPlist:clientIdentifiers:];
    }
  }
}

- (void)sendSetViewController:(id)controller key:(id)key property:(id)property value:(id)value clientIdentifiers:(id)identifiers
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13[0] = @"V";
  v13[1] = @"k";
  v14[0] = controller;
  v14[1] = @"#didActivate";
  v13[2] = @"v";
  v14[2] = MEMORY[0x277CBEC38];
  v9 = MEMORY[0x277CBEAC0];
  identifiersCopy = identifiers;
  controllerCopy = controller;
  v12 = [v9 dictionaryWithObjects:v14 forKeys:v13 count:3];

  [(SPRemoteInterface *)self sendPlist:v12 clientIdentifiers:identifiersCopy];
}

- (void)sendSetViewController:(id)controller values:(id)values clientIdentifiers:(id)identifiers
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"V";
  v13[1] = @"S";
  v14[0] = controller;
  v14[1] = values;
  v8 = MEMORY[0x277CBEAC0];
  identifiersCopy = identifiers;
  valuesCopy = values;
  controllerCopy = controller;
  v12 = [v8 dictionaryWithObjects:v14 forKeys:v13 count:2];

  [(SPRemoteInterface *)self sendPlist:v12 clientIdentifiers:identifiersCopy];
}

- (void)_performAfterSendSetViewControllers:(id)controllers
{
  v3 = _performAfterSendSetViewControllers__onceToken;
  controllersCopy = controllers;
  if (v3 != -1)
  {
    [SPRemoteInterface _performAfterSendSetViewControllers:];
  }

  v5 = __performAfterSendSetViewControllers;
  v7 = [controllersCopy copy];

  v6 = MEMORY[0x23EE9A9D0](v7);
  [v5 addObject:v6];
}

uint64_t __57__SPRemoteInterface__performAfterSendSetViewControllers___block_invoke()
{
  __performAfterSendSetViewControllers = [MEMORY[0x277CBEB18] array];

  return MEMORY[0x2821F96F8]();
}

- (void)_requestTimingData:(id)data
{
  dataCopy = data;
  _host = [(SPRemoteInterface *)self _host];
  if (_host)
  {
    v6 = +[SPRemoteInterface _remoteIdentifier];
    [_host requestTimingData:v6 timingMetaData:dataCopy];
  }

  else
  {
    v6 = wk_default_log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface _requestTimingData:];
    }
  }
}

- (void)replyWithExtensionTimingData:(id)data
{
  v24[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v16 = [dataCopy objectForKeyedSubscript:@"V"];
  v4 = [dataCopy objectForKeyedSubscript:@".sex"];
  v5 = [dataCopy objectForKeyedSubscript:@".eex"];
  v6 = [dataCopy objectForKeyedSubscript:@".idx"];
  v7 = [dataCopy objectForKeyedSubscript:@".rs"];
  integerValue = [v7 integerValue];

  v9 = [dataCopy objectForKeyedSubscript:@".bex"];

  v23[0] = @".sex";
  v23[1] = @".eex";
  v24[0] = v4;
  v24[1] = v5;
  v23[2] = @".bex";
  v23[3] = @".idx";
  v24[2] = v9;
  v24[3] = v6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
  v21[0] = @"V";
  v21[1] = @"k";
  v22[0] = v16;
  v22[1] = @".PolDE";
  v21[2] = @"v";
  v22[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v12 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v16];
  v13 = dispatch_time(0, 1000000 * (integerValue / 30) + 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SPRemoteInterface_replyWithExtensionTimingData___block_invoke;
  block[3] = &unk_278B7E278;
  block[4] = self;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  dispatch_after(v13, MEMORY[0x277D85CD0], block);
}

void __50__SPRemoteInterface_replyWithExtensionTimingData___block_invoke(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v4[0] = a1[6];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v1 sendPlist:v2 clientIdentifiers:v3];
}

- (void)replyTimingData:(id)data
{
  v24[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v16 = [dataCopy objectForKeyedSubscript:@"V"];
  v4 = [dataCopy objectForKeyedSubscript:@".scd"];
  v5 = [dataCopy objectForKeyedSubscript:@".ecd"];
  v6 = [dataCopy objectForKeyedSubscript:@".idx"];
  v7 = [dataCopy objectForKeyedSubscript:@".rs"];
  integerValue = [v7 integerValue];

  v9 = [dataCopy objectForKeyedSubscript:@".bcd"];

  v23[0] = @".scd";
  v23[1] = @".ecd";
  v24[0] = v4;
  v24[1] = v5;
  v23[2] = @".bcd";
  v23[3] = @".idx";
  v24[2] = v9;
  v24[3] = v6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
  v21[0] = @"V";
  v21[1] = @"k";
  v22[0] = v16;
  v22[1] = @".PolD";
  v21[2] = @"v";
  v22[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v12 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v16];
  v13 = dispatch_time(0, 1000000 * (integerValue / 30) + 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SPRemoteInterface_replyTimingData___block_invoke;
  block[3] = &unk_278B7E278;
  block[4] = self;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  dispatch_after(v13, MEMORY[0x277D85CD0], block);
}

void __37__SPRemoteInterface_replyTimingData___block_invoke(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v4[0] = a1[6];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v1 sendPlist:v2 clientIdentifiers:v3];
}

- (void)fetchNotificationForNotificationID:(id)d completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = wk_default_log(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v21 = "[SPRemoteInterface fetchNotificationForNotificationID:completion:]";
    v22 = 1024;
    v23 = 1024;
    v24 = 2114;
    v25 = dCopy;
    _os_log_impl(&dword_23B338000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->ComD, notificationID=%{public}@", buf, 0x1Cu);
  }

  _host = [(SPRemoteInterface *)self _host];
  if (_host)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__SPRemoteInterface_fetchNotificationForNotificationID_completion___block_invoke;
    v16[3] = &unk_278B7E2A0;
    v17 = completionCopy;
    [_host fetchNotificationForNotificationID:dCopy completion:v16];
    mainBundle = v17;
  }

  else
  {
    v11 = wk_default_log(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface fetchNotificationForNotificationID:completion:];
    }

    v12 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [mainBundle localizedStringForKey:@"SPErrorHostPrincipalForPluginNotFoundMessage" value:&stru_284DFE9D8 table:0];
    v19 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v15 = [v12 errorWithDomain:@"com.apple.watchkit.errors" code:8 userInfo:v14];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v15);
  }
}

void __67__SPRemoteInterface_fetchNotificationForNotificationID_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v13 = MEMORY[0x277CCAAC8];
    getUNNotificationClass();
    v23 = 0;
    v14 = [v13 unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v23];
    v15 = v23;
    v16 = v15;
    if (!v14)
    {
      v17 = wk_default_log(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __67__SPRemoteInterface_fetchNotificationForNotificationID_completion___block_invoke_cold_1();
      }

      v14 = 0;
    }

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_13:
    (*(*(a1 + 32) + 16))();
    v19 = v16;
    goto LABEL_14;
  }

  v14 = 0;
  v16 = 0;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_7:
  v22 = v16;
  v18 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v22];
  v19 = v22;

  if (!v18)
  {
    v21 = wk_default_log(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __67__SPRemoteInterface_fetchNotificationForNotificationID_completion___block_invoke_cold_2();
    }
  }

  (*(*(a1 + 32) + 16))();

LABEL_14:
}

- (void)updateUserActivity:(id)activity userInfo:(id)info webpageURL:(id)l controller:(id)controller
{
  v35 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  infoCopy = info;
  lCopy = l;
  controllerCopy = controller;
  v14 = wk_default_log(controllerCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447235;
    v26 = "[SPRemoteInterface updateUserActivity:userInfo:webpageURL:controller:]";
    v27 = 1024;
    v28 = 1056;
    v29 = 2114;
    v30 = activityCopy;
    v31 = 2113;
    v32 = infoCopy;
    v33 = 2114;
    v34 = lCopy;
    _os_log_impl(&dword_23B338000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:<-Plugin, activity type: %{public}@, userInfo: %{private}@, webpageURL:%{public}@", buf, 0x30u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = dictionary;
  if (activityCopy)
  {
    [dictionary setObject:activityCopy forKeyedSubscript:@"uat"];
  }

  if (infoCopy)
  {
    [v16 setObject:infoCopy forKeyedSubscript:@"uai"];
  }

  if (lCopy)
  {
    [v16 setObject:lCopy forKeyedSubscript:@"uau"];
  }

  v17 = [(SPRemoteInterface *)self _interfaceControllerID:controllerCopy];
  v18 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v17];
  if (v18)
  {
    v19 = ArchiveWithArchiverDelegate(v16);
    v23 = @"ua";
    v24 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

    v22 = v18;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [(SPRemoteInterface *)self sendPlist:v20 clientIdentifiers:v21];
  }

  else
  {
    v20 = wk_default_log(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface updateUserActivity:userInfo:webpageURL:controller:];
    }
  }
}

- (void)sendCacheRequestMessage:(id)message
{
  v4 = [SPProtoSerializer dataWithObject:message];
  if (v4)
  {
    _host = [(SPRemoteInterface *)self _host];
    if (_host)
    {
      v6 = +[SPRemoteInterface _remoteIdentifier];
      [_host sendCacheRequest:v4 identifier:v6];
    }

    else
    {
      v6 = wk_default_log(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [SPRemoteInterface sendCacheRequestMessage:];
      }
    }
  }

  else
  {
    _host = wk_default_log(0);
    if (os_log_type_enabled(_host, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface sendCacheRequestMessage:];
    }
  }
}

+ (void)_setupStorageForController:(id)controller
{
  controllerCopy = controller;
  v4 = __recordedValues;
  v23 = controllerCopy;
  if (!__recordedValues)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = __recordedValues;
    __recordedValues = dictionary;

    controllerCopy = v23;
    v4 = __recordedValues;
  }

  v7 = [v4 objectForKeyedSubscript:controllerCopy];

  if (!v7)
  {
    array = [MEMORY[0x277CBEB18] array];
    [__recordedValues setObject:array forKeyedSubscript:v23];
  }

  v9 = __cachedRunLoopValues;
  if (!__cachedRunLoopValues)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v11 = __cachedRunLoopValues;
    __cachedRunLoopValues = dictionary2;

    v9 = __cachedRunLoopValues;
  }

  v12 = [v9 objectForKeyedSubscript:v23];

  if (!v12)
  {
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    [__cachedRunLoopValues setObject:dictionary3 forKeyedSubscript:v23];
  }

  v14 = __cachedActivationValues;
  if (!__cachedActivationValues)
  {
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    v16 = __cachedActivationValues;
    __cachedActivationValues = dictionary4;

    v14 = __cachedActivationValues;
  }

  v17 = [v14 objectForKeyedSubscript:v23];

  if (!v17)
  {
    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    [__cachedActivationValues setObject:dictionary5 forKeyedSubscript:v23];
  }

  v19 = __controllerActive;
  if (!__controllerActive)
  {
    dictionary6 = [MEMORY[0x277CBEB38] dictionary];
    v21 = __controllerActive;
    __controllerActive = dictionary6;

    v19 = __controllerActive;
  }

  v22 = [v19 objectForKeyedSubscript:v23];

  if (!v22)
  {
    [__controllerActive setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v23];
  }
}

+ (void)clearStorageForController:(id)controller
{
  v3 = __cachedActivationValues;
  controllerCopy = controller;
  [v3 removeObjectForKey:controllerCopy];
  [__controllerActive removeObjectForKey:controllerCopy];
}

+ (void)setControllerActive:(id)active
{
  activeCopy = active;
  v4 = __controllerActive;
  v7 = activeCopy;
  if (!__controllerActive)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = __controllerActive;
    __controllerActive = dictionary;

    activeCopy = v7;
    v4 = __controllerActive;
  }

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:activeCopy];
}

+ (void)setControllerInactive:(id)inactive
{
  inactiveCopy = inactive;
  v4 = __controllerActive;
  v7 = inactiveCopy;
  if (!__controllerActive)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = __controllerActive;
    __controllerActive = dictionary;

    inactiveCopy = v7;
    v4 = __controllerActive;
  }

  [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:inactiveCopy];
}

+ (void)setController:(id)controller key:(id)key property:(id)property value:(id)value
{
  controllerCopy = controller;
  keyCopy = key;
  propertyCopy = property;
  valueCopy = value;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__SPRemoteInterface_setController_key_property_value___block_invoke;
  v17[3] = &unk_278B7E2C8;
  v18 = controllerCopy;
  v19 = keyCopy;
  v20 = propertyCopy;
  v21 = valueCopy;
  v13 = valueCopy;
  v14 = propertyCopy;
  v15 = keyCopy;
  v16 = controllerCopy;
  spUtils_dispatchAsyncToMainThread(v17);
}

void __54__SPRemoteInterface_setController_key_property_value___block_invoke(uint64_t a1)
{
  v75[2] = *MEMORY[0x277D85DE8];
  [SPRemoteInterface _setupStorageForController:*(a1 + 32)];
  v2 = [__recordedValues objectForKeyedSubscript:*(a1 + 32)];
  v3 = [__cachedRunLoopValues objectForKeyedSubscript:*(a1 + 32)];
  v4 = [__cachedActivationValues objectForKeyedSubscript:*(a1 + 32)];
  if (![*(a1 + 40) isEqualToString:@".null"] || !objc_msgSend(v2, "count"))
  {
    v5 = *(a1 + 48);
    v56 = [(__CFString *)v5 isEqualToString:@"#value"];
    if (v56)
    {

      v5 = 0;
    }

    v6 = [__controllerActive objectForKeyedSubscript:*(a1 + 32)];
    v7 = [v6 BOOLValue];

    if ((v7 & 1) == 0)
    {
      [SPRemoteInterface _logDuplicate:@"Controller is not active." controller:*(a1 + 32) key:*(a1 + 40) property:v5 value:*(a1 + 56)];
LABEL_63:

      goto LABEL_64;
    }

    if (*(a1 + 56) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v13 = SerializablePropertyValue(*(a1 + 56));
      v55 = v13;
      if ([(__CFString *)v5 length])
      {
        v14 = *(a1 + 40);
        v70[0] = @"k";
        v70[1] = @"p";
        v71[0] = v14;
        v71[1] = v5;
        v70[2] = @"v";
        v71[2] = v13;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v71;
        v17 = v70;
        v18 = 3;
      }

      else
      {
        v19 = *(a1 + 40);
        v68[0] = @"k";
        v68[1] = @"v";
        v69[0] = v19;
        v69[1] = v13;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v69;
        v17 = v68;
        v18 = 2;
      }

      v57 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
    }

    else
    {
      if ([(__CFString *)v5 length])
      {
        v8 = *(a1 + 40);
        v74[0] = @"k";
        v74[1] = @"p";
        v75[0] = v8;
        v75[1] = v5;
        v9 = MEMORY[0x277CBEAC0];
        v10 = v75;
        v11 = v74;
        v12 = 2;
      }

      else
      {
        v72 = @"k";
        v73 = *(a1 + 40);
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v73;
        v11 = &v72;
        v12 = 1;
      }

      v57 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:v12];
      v55 = 0;
    }

    if (([(__CFString *)v5 isEqualToString:@"rowTypes"]& 1) != 0 || ([(__CFString *)v5 isEqualToString:@".insert"]& 1) != 0 || [(__CFString *)v5 isEqualToString:@".remove"])
    {
      v53 = v5;
      v54 = v2;
      v20 = [v4 allKeys];
      v21 = [v20 copy];

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v63;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v63 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v62 + 1) + 8 * i);
            v28 = [v27 pathComponents];
            v29 = [v28 count];

            if (v29 >= 2)
            {
              [v4 removeObjectForKey:v27];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v62 objects:v67 count:16];
        }

        while (v24);
      }

      v30 = [v3 allKeys];
      v31 = [v30 copy];

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v59;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v59 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v58 + 1) + 8 * j);
            v38 = [v37 pathComponents];
            v39 = [v38 count];

            if (v39 >= 2)
            {
              [v3 removeObjectForKey:v37];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v58 objects:v66 count:16];
        }

        while (v34);
      }

      v5 = v53;
      v2 = v54;
    }

    if (v5 && !-[__CFString isEqualToString:](v5, "isEqualToString:", &stru_284DFE9D8) || ([*(a1 + 40) isEqualToString:@"#item"] & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEqualToString:", @".null") & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEqualToString:", @"#animateBegin") & 1) != 0)
    {
      v40 = 1;
    }

    else
    {
      v40 = v56 | [*(a1 + 40) isEqualToString:@"#animateCommit"];
    }

    if (v5)
    {
      v41 = v5;
    }

    else
    {
      v41 = &stru_284DFE9D8;
    }

    v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@|%@", *(a1 + 40), v41];
    if (v40)
    {
      v43 = 0;
      goto LABEL_50;
    }

    v47 = [v3 objectForKey:v42];
    if (v47)
    {
      v43 = v47;
      [v2 replaceObjectAtIndex:objc_msgSend(v47 withObject:{"unsignedIntegerValue"), v57}];
      v48 = *(a1 + 32);
      v49 = *(a1 + 40);
      v50 = *(a1 + 56);
      v51 = @"Duplicate call within run loop.";
LABEL_55:
      [SPRemoteInterface _logDuplicate:v51 controller:v48 key:v49 property:v5 value:v50];
LABEL_62:

      goto LABEL_63;
    }

    v43 = [v4 objectForKey:v42];
    if (v43)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if ([v43 isEqual:*(a1 + 56)])
        {
          v50 = *(a1 + 56);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || *(a1 + 56))
          {
            goto LABEL_50;
          }

          v50 = 0;
        }

LABEL_67:
        v48 = *(a1 + 32);
        v49 = *(a1 + 40);
        v51 = @"Duplicate call.";
        goto LABEL_55;
      }

      v50 = *(a1 + 56);
      if (v43 == v50)
      {
        goto LABEL_67;
      }
    }

LABEL_50:
    [v2 addObject:v57];
    v44 = [v2 count];
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v44 - 1];
    [v3 setObject:v45 forKey:v42];

    if ((v40 & 1) == 0)
    {
      v46 = *(a1 + 56);
      if (v46)
      {
        [v4 setObject:v46 forKey:v42];
      }

      else
      {
        v52 = [MEMORY[0x277CBEB68] null];
        [v4 setObject:v52 forKey:v42];
      }
    }

    goto LABEL_62;
  }

LABEL_64:
}

+ (void)_logDuplicate:(id)duplicate controller:(id)controller key:(id)key property:(id)property value:(id)value
{
  v43 = *MEMORY[0x277D85DE8];
  duplicateCopy = duplicate;
  keyCopy = key;
  propertyCopy = property;
  valueCopy = value;
  v15 = [__sharedRemoteInterface _interfaceControllerWithID:controller];
  valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", valueCopy];
  if ([valueCopy length] >= 0x21)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [valueCopy substringToIndex:32];
    v19 = [v17 stringWithFormat:@"%@...<truncated>", v18];

    valueCopy = v19;
  }

  v20 = objc_opt_class();
  v21 = objc_opt_class();
  NSLog(&cfstr_WatchkitDiscar.isa, duplicateCopy, v20, keyCopy, propertyCopy, valueCopy, v21);
  v23 = wk_default_log(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_opt_class();
    v25 = v24;
    *buf = 136448003;
    v28 = "+[SPRemoteInterface _logDuplicate:controller:key:property:value:]";
    v29 = 1024;
    v30 = 1456;
    v31 = 2114;
    v32 = duplicateCopy;
    v33 = 2114;
    v34 = v24;
    v35 = 2114;
    v36 = keyCopy;
    v37 = 2114;
    v38 = propertyCopy;
    v39 = 2113;
    v40 = valueCopy;
    v41 = 2114;
    v42 = objc_opt_class();
    v26 = v42;
    _os_log_impl(&dword_23B338000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: WatchKit: %{public}@ Discarding call for %{public}@ key=%{public}@ property=%{public}@ value=%{private}@ value class=%{public}@", buf, 0x4Eu);
  }
}

+ (void)controller:(id)controller pushInterfaceController:(id)interfaceController context:(id)context
{
  v7 = __sharedRemoteInterface;
  interfaceControllerCopy = interfaceController;
  controllerCopy = controller;
  v10 = [v7 storeInterfaceCreationContext:context];
  [__sharedRemoteInterface controller:controllerCopy pushInterfaceController:interfaceControllerCopy initializationContextID:v10];
}

+ (void)reloadRootControllersWithNames:(id)names contexts:(id)contexts
{
  v23 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  contextsCopy = contexts;
  array = [MEMORY[0x277CBEB18] array];
  v8 = [contextsCopy count];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = contextsCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (v8 > 1)
        {
          [__sharedRemoteInterface storePageInterfaceCreationContext:{v14, v18}];
        }

        else
        {
          [__sharedRemoteInterface storeInterfaceCreationContext:v14];
        }
        v15 = ;
        [array addObject:{v15, v18}];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = __sharedRemoteInterface;
  if ([array count])
  {
    v17 = array;
  }

  else
  {
    v17 = 0;
  }

  [v16 reloadRootControllersWithNames:namesCopy initializationContextIDs:v17 pageIndex:0 verticalPaging:{0, v18}];
}

+ (void)insertPageControllerAtIndexes:(id)indexes withNames:(id)names contexts:(id)contexts
{
  v24 = *MEMORY[0x277D85DE8];
  indexesCopy = indexes;
  namesCopy = names;
  contextsCopy = contexts;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = contextsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [__sharedRemoteInterface storePageInterfaceCreationContext:{*(*(&v19 + 1) + 8 * v15), v19}];
        [array addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = __sharedRemoteInterface;
  if ([array count])
  {
    v18 = array;
  }

  else
  {
    v18 = 0;
  }

  [v17 insertPageControllerAtIndexes:indexesCopy withNames:namesCopy initializationContextIDs:{v18, v19}];
}

+ (void)controller:(id)controller presentInterfaceController:(id)interfaceController context:(id)context
{
  v7 = __sharedRemoteInterface;
  interfaceControllerCopy = interfaceController;
  controllerCopy = controller;
  v10 = [v7 storeInterfaceCreationContext:context];
  [v7 controller:controllerCopy presentInterfaceController:interfaceControllerCopy initializationContextID:v10];
}

+ (void)controller:(id)controller presentInterfaceControllers:(id)controllers contexts:(id)contexts
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  controllersCopy = controllers;
  contextsCopy = contexts;
  array = [MEMORY[0x277CBEB18] array];
  v11 = [contextsCopy count];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = contextsCopy;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if (v11 > 1)
        {
          [__sharedRemoteInterface storePageInterfaceCreationContext:{v17, v21}];
        }

        else
        {
          [__sharedRemoteInterface storeInterfaceCreationContext:v17];
        }
        v18 = ;
        [array addObject:{v18, v21}];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v19 = __sharedRemoteInterface;
  if ([array count])
  {
    v20 = array;
  }

  else
  {
    v20 = 0;
  }

  [v19 controller:controllerCopy presentInterfaceControllers:controllersCopy initializationContextIDs:{v20, v21}];
}

+ (void)controller:(id)controller presentTextInputControllerWithSuggestions:(id)suggestions allowedInputMode:(id)mode completion:(id)completion
{
  v9 = __sharedRemoteInterface;
  modeCopy = mode;
  suggestionsCopy = suggestions;
  controllerCopy = controller;
  [v9 setTextInputCompletion:completion];
  [__sharedRemoteInterface setTextInputSuggestions:0];
  [__sharedRemoteInterface controllerPresentTextInputController:controllerCopy allowedInputMode:modeCopy suggestions:suggestionsCopy];
}

+ (void)controller:(id)controller presentTextInputControllerWithSuggestionsForLanguage:(id)language allowedInputMode:(id)mode completion:(id)completion
{
  v9 = __sharedRemoteInterface;
  modeCopy = mode;
  languageCopy = language;
  controllerCopy = controller;
  [v9 setTextInputCompletion:completion];
  [__sharedRemoteInterface setTextInputSuggestions:languageCopy];

  [__sharedRemoteInterface controllerPresentTextInputController:controllerCopy allowedInputMode:modeCopy suggestions:0];
}

+ (void)controller:(id)controller presentAddPassesControllerWithPasses:(id)passes completion:(id)completion
{
  v7 = __sharedRemoteInterface;
  completionCopy = completion;
  [v7 controllerPresentAddPassesController:controller passes:passes];
  [__sharedRemoteInterface setAddPassesCompletion:completionCopy];
}

+ (void)sendCacheRequest:(id)request
{
  v3 = wk_default_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    +[SPRemoteInterface sendCacheRequest:];
  }
}

- (BOOL)_sendDataToApp:(id)app reply:(id)reply
{
  v13[1] = *MEMORY[0x277D85DE8];
  appCopy = app;
  replyCopy = reply;
  appClientIdentifier = self->_appClientIdentifier;
  if (appClientIdentifier)
  {
    v9 = appClientIdentifier;
  }

  else
  {
    v9 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:self->_rootViewControllerID];
    if (!v9)
    {
LABEL_6:
      v10 = 0;
      goto LABEL_7;
    }
  }

  if (![appCopy length])
  {
    goto LABEL_6;
  }

  v13[0] = v9;
  v10 = 1;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [(SPRemoteInterface *)self sendData:appCopy clientIdentifiers:v11 reply:replyCopy];

LABEL_7:
  return v10;
}

- (id)storeInterfaceCreationContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    if (!__interfaceCreationContexts)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v5 = __interfaceCreationContexts;
      __interfaceCreationContexts = dictionary;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithInteger:storeInterfaceCreationContext____contextCounter];
    [__interfaceCreationContexts setObject:contextCopy forKey:v6];
    ++storeInterfaceCreationContext____contextCounter;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)interfaceCreationContextForID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = [__interfaceCreationContexts objectForKeyedSubscript:dCopy];
    [__interfaceCreationContexts removeObjectForKey:dCopy];
    integerValue = [dCopy integerValue];
    v6 = integerValue - 1;
    if (integerValue >= 1)
    {
      while (1)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
        v8 = [__interfaceCreationContexts objectForKeyedSubscript:v7];

        if (!v8)
        {
          break;
        }

        [__interfaceCreationContexts removeObjectForKey:v7];

        if (--v6 == -1)
        {
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_8:

  return v4;
}

- (id)storePageInterfaceCreationContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    if (!__pageInterfaceCreationContexts)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v5 = __pageInterfaceCreationContexts;
      __pageInterfaceCreationContexts = dictionary;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithInteger:storePageInterfaceCreationContext____pageContextCounter];
    [__pageInterfaceCreationContexts setObject:contextCopy forKey:v6];
    --storePageInterfaceCreationContext____pageContextCounter;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pageInterfaceCreationContextForID:(id)d
{
  if (d)
  {
    v4 = [__pageInterfaceCreationContexts objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)removePageInterfaceCreationContextsForIDs:(id)ds
{
  dsCopy = ds;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SPRemoteInterface_removePageInterfaceCreationContextsForIDs___block_invoke;
  v5[3] = &unk_278B7E200;
  v6 = dsCopy;
  v4 = dsCopy;
  spUtils_dispatchSyncToMainThread(v5);
}

- (void)controller:(id)controller pushInterfaceController:(id)interfaceController initializationContextID:(id)d
{
  v18[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  interfaceControllerCopy = interfaceController;
  dCopy = d;
  v11 = [(SPRemoteInterface *)self _interfaceControllerID:controllerCopy];
  v12 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v11];
  if (v12)
  {
    [(SPRemoteInterface *)self setNavigatingViewControllerID:v11];
    v17[0] = @"V";
    v17[1] = @"n";
    v18[0] = v11;
    v18[1] = interfaceControllerCopy;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v14 = [v13 mutableCopy];

    if (dCopy)
    {
      [v14 setObject:dCopy forKey:@"X"];
    }

    v16 = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(SPRemoteInterface *)self sendPlist:v14 clientIdentifiers:v15];
  }

  else
  {
    v14 = wk_default_log(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controller:pushInterfaceController:initializationContextID:];
    }
  }
}

- (void)controllerPop:(id)pop
{
  v11[2] = *MEMORY[0x277D85DE8];
  popCopy = pop;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:popCopy];
  v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
  if (v6)
  {
    [(SPRemoteInterface *)self setNavigatingViewControllerID:v5];
    v10[0] = @"V";
    v10[1] = @"n";
    v11[0] = v5;
    v11[1] = @".pop";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v9 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    [(SPRemoteInterface *)self sendPlist:v7 clientIdentifiers:v8];
  }

  else
  {
    v7 = wk_default_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerPop:];
    }
  }
}

- (void)controllerPopToRoot:(id)root
{
  v11[2] = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:rootCopy];
  v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
  if (v6)
  {
    [(SPRemoteInterface *)self setNavigatingViewControllerID:v5];
    v10[0] = @"V";
    v10[1] = @"n";
    v11[0] = v5;
    v11[1] = @".popR";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v9 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    [(SPRemoteInterface *)self sendPlist:v7 clientIdentifiers:v8];
  }

  else
  {
    v7 = wk_default_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerPopToRoot:];
    }
  }
}

- (void)reloadRootControllersWithNames:(id)names initializationContextIDs:(id)ds pageIndex:(int64_t)index verticalPaging:(BOOL)paging
{
  pagingCopy = paging;
  v31[5] = *MEMORY[0x277D85DE8];
  namesCopy = names;
  dsCopy = ds;
  rootViewControllerID = self->_rootViewControllerID;
  if (!rootViewControllerID)
  {
    rootViewControllerID = &stru_284DFE9D8;
  }

  v13 = rootViewControllerID;
  appClientIdentifier = self->_appClientIdentifier;
  if (appClientIdentifier)
  {
    v15 = appClientIdentifier;
  }

  else
  {
    v15 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:self->_rootViewControllerID];
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v30[0] = @"V";
  v30[1] = @"rv";
  v31[0] = v13;
  v31[1] = @"rvr";
  v31[2] = namesCopy;
  v30[2] = @"rvna";
  v30[3] = @"rvpidx";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v31[3] = v16;
  v30[4] = @"rvv";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:pagingCopy];
  v31[4] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:5];
  v19 = [v18 mutableCopy];

  if (dsCopy)
  {
    [v19 setObject:dsCopy forKey:@"X"];
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __102__SPRemoteInterface_reloadRootControllersWithNames_initializationContextIDs_pageIndex_verticalPaging___block_invoke;
  v27[3] = &unk_278B7E278;
  v27[4] = self;
  v28 = v19;
  v29 = v15;
  v20 = v15;
  v21 = v19;
  v22 = MEMORY[0x23EE9A9D0](v27);
  v22[2](v22, v23, v24, v25, v26);

LABEL_9:
}

void __102__SPRemoteInterface_reloadRootControllersWithNames_initializationContextIDs_pageIndex_verticalPaging___block_invoke(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v4[0] = a1[6];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v1 sendPlist:v2 clientIdentifiers:v3];
}

- (void)insertPageControllerAtIndexes:(id)indexes withNames:(id)names initializationContextIDs:(id)ds
{
  v20[4] = *MEMORY[0x277D85DE8];
  indexesCopy = indexes;
  namesCopy = names;
  dsCopy = ds;
  rootViewControllerID = self->_rootViewControllerID;
  if (!rootViewControllerID)
  {
    rootViewControllerID = &stru_284DFE9D8;
  }

  v12 = rootViewControllerID;
  appClientIdentifier = self->_appClientIdentifier;
  if (appClientIdentifier)
  {
    v14 = appClientIdentifier;
  }

  else
  {
    v14 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:self->_rootViewControllerID];
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  v19[0] = @"V";
  v19[1] = @"rv";
  v20[0] = v12;
  v20[1] = @"rvi";
  v19[2] = @"rvna";
  v19[3] = @"rvidx";
  v20[2] = namesCopy;
  v20[3] = indexesCopy;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v16 = [v15 mutableCopy];

  if (dsCopy)
  {
    [v16 setObject:dsCopy forKey:@"X"];
  }

  v18 = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  [(SPRemoteInterface *)self sendPlist:v16 clientIdentifiers:v17];

LABEL_9:
}

- (void)movePageControllerAtIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  v19[3] = *MEMORY[0x277D85DE8];
  rootViewControllerID = self->_rootViewControllerID;
  if (!rootViewControllerID)
  {
    rootViewControllerID = &stru_284DFE9D8;
  }

  v8 = rootViewControllerID;
  appClientIdentifier = self->_appClientIdentifier;
  if (appClientIdentifier)
  {
    v10 = appClientIdentifier;
LABEL_6:
    v18[0] = @"V";
    v18[1] = @"rv";
    v19[0] = v8;
    v19[1] = @"rvm";
    v18[2] = @"rvidx";
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    v17[0] = v11;
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:toIndex];
    v17[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v19[2] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

    v16 = v10;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(SPRemoteInterface *)self sendPlist:v14 clientIdentifiers:v15];

    goto LABEL_7;
  }

  v10 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:self->_rootViewControllerID];
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (void)removePageControllerAtIndexes:(id)indexes
{
  v13[3] = *MEMORY[0x277D85DE8];
  indexesCopy = indexes;
  rootViewControllerID = self->_rootViewControllerID;
  if (!rootViewControllerID)
  {
    rootViewControllerID = &stru_284DFE9D8;
  }

  v6 = rootViewControllerID;
  appClientIdentifier = self->_appClientIdentifier;
  if (appClientIdentifier)
  {
    v8 = appClientIdentifier;
LABEL_6:
    v12[0] = @"V";
    v12[1] = @"rv";
    v13[0] = v6;
    v13[1] = @"rvd";
    v12[2] = @"rvidx";
    v13[2] = indexesCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v11 = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [(SPRemoteInterface *)self sendPlist:v9 clientIdentifiers:v10];

    goto LABEL_7;
  }

  v8 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:self->_rootViewControllerID];
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (void)controllerBecomeCurrentPage:(id)page
{
  v18[2] = *MEMORY[0x277D85DE8];
  pageCopy = page;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:pageCopy];
  v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
  if (v6)
  {
    v17[0] = @"V";
    v17[1] = @"n";
    v18[0] = v5;
    v18[1] = @".page";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__SPRemoteInterface_controllerBecomeCurrentPage___block_invoke;
    v14[3] = &unk_278B7E278;
    v14[4] = self;
    v15 = v7;
    v16 = v6;
    v8 = v7;
    v9 = MEMORY[0x23EE9A9D0](v14);
    v9[2](v9, v10, v11, v12, v13);
  }

  else
  {
    v8 = wk_default_log(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerBecomeCurrentPage:];
    }
  }
}

void __49__SPRemoteInterface_controllerBecomeCurrentPage___block_invoke(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v4[0] = a1[6];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v1 sendPlist:v2 clientIdentifiers:v3];
}

- (void)controller:(id)controller presentInterfaceController:(id)interfaceController initializationContextID:(id)d
{
  v18[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  interfaceControllerCopy = interfaceController;
  dCopy = d;
  v11 = [(SPRemoteInterface *)self _interfaceControllerID:controllerCopy];
  v12 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v11];
  if (v12)
  {
    [(SPRemoteInterface *)self setNavigatingViewControllerID:v11];
    v17[0] = @"V";
    v17[1] = @"nm";
    v18[0] = v11;
    v18[1] = interfaceControllerCopy;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v14 = [v13 mutableCopy];

    if (dCopy)
    {
      [v14 setObject:dCopy forKey:@"X"];
    }

    v16 = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(SPRemoteInterface *)self sendPlist:v14 clientIdentifiers:v15];
  }

  else
  {
    v14 = wk_default_log(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controller:presentInterfaceController:initializationContextID:];
    }
  }
}

- (void)controller:(id)controller presentInterfaceControllers:(id)controllers initializationContextIDs:(id)ds
{
  v18[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  controllersCopy = controllers;
  dsCopy = ds;
  v11 = [(SPRemoteInterface *)self _interfaceControllerID:controllerCopy];
  v12 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v11];
  if (v12)
  {
    [(SPRemoteInterface *)self setNavigatingViewControllerID:v11];
    v17[0] = @"V";
    v17[1] = @"nm";
    v18[0] = v11;
    v18[1] = controllersCopy;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v14 = [v13 mutableCopy];

    if (dsCopy)
    {
      [v14 setObject:dsCopy forKey:@"X"];
    }

    v16 = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(SPRemoteInterface *)self sendPlist:v14 clientIdentifiers:v15];
  }

  else
  {
    v14 = wk_default_log(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controller:presentInterfaceControllers:initializationContextIDs:];
    }
  }
}

- (void)controllerDismiss:(id)dismiss
{
  v11[2] = *MEMORY[0x277D85DE8];
  dismissCopy = dismiss;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:dismissCopy];
  v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
  if (v6)
  {
    [(SPRemoteInterface *)self setNavigatingViewControllerID:v5];
    v10[0] = @"V";
    v10[1] = @"nm";
    v11[0] = v5;
    v11[1] = @".pop";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v9 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    [(SPRemoteInterface *)self sendPlist:v7 clientIdentifiers:v8];
  }

  else
  {
    v7 = wk_default_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerDismiss:];
    }
  }
}

- (void)controllerPresentTextInputController:(id)controller allowedInputMode:(id)mode suggestions:(id)suggestions
{
  v20[4] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  modeCopy = mode;
  suggestionsCopy = suggestions;
  v11 = [(SPRemoteInterface *)self _interfaceControllerID:controllerCopy];
  v12 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v11];
  if (v12)
  {
    if ([suggestionsCopy count])
    {
      v19[0] = @"V";
      v19[1] = @"nm";
      v20[0] = v11;
      v20[1] = @"ti";
      v19[2] = @"tim";
      v19[3] = @"tI";
      v20[2] = modeCopy;
      v20[3] = suggestionsCopy;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
    }

    else
    {
      v17[0] = @"V";
      v17[1] = @"nm";
      v18[0] = v11;
      v18[1] = @"ti";
      v18[2] = modeCopy;
      v17[2] = @"tim";
      v17[3] = @"tL";
      v14 = [MEMORY[0x277CCABB0] numberWithInt:self->_textInputSuggestions != 0];
      v18[3] = v14;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    }

    v16 = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(SPRemoteInterface *)self sendPlist:v13 clientIdentifiers:v15];
  }

  else
  {
    v13 = wk_default_log(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerPresentTextInputController:allowedInputMode:suggestions:];
    }
  }
}

- (void)controllerDismissTextInputController:(id)controller
{
  v11[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:controllerCopy];
  v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
  if (v6)
  {
    v10[0] = @"V";
    v10[1] = @"nm";
    v11[0] = v5;
    v11[1] = @".pop";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v9 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    [(SPRemoteInterface *)self sendPlist:v7 clientIdentifiers:v8];
  }

  else
  {
    v7 = wk_default_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerDismissTextInputController:];
    }
  }
}

- (void)openSystemURL:(id)l
{
  v12[1] = *MEMORY[0x277D85DE8];
  appClientIdentifier = self->_appClientIdentifier;
  if (appClientIdentifier)
  {
    v6 = appClientIdentifier;
    v7 = spUtils_serializeObject(l);
    v11 = @"ou";
    v12[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v10 = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [(SPRemoteInterface *)self sendPlist:v8 clientIdentifiers:v9];
  }
}

- (void)controllerPresentAddPassesController:(id)controller passes:(id)passes
{
  v15[3] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  passesCopy = passes;
  v8 = [(SPRemoteInterface *)self _interfaceControllerID:controllerCopy];
  v9 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v8];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(passesCopy, "count")}];
    v14[0] = @"V";
    v14[1] = @"nm";
    v15[0] = v8;
    v15[1] = @"pka";
    v14[2] = @"pkp";
    v15[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v13 = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [(SPRemoteInterface *)self sendPlist:v11 clientIdentifiers:v12];
  }

  else
  {
    v10 = wk_default_log(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerPresentAddPassesController:passes:];
    }
  }
}

- (void)controllerDismissAddPassesController:(id)controller
{
  v11[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:controllerCopy];
  v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
  if (v6)
  {
    v10[0] = @"V";
    v10[1] = @"nm";
    v11[0] = v5;
    v11[1] = @".pop";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v9 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    [(SPRemoteInterface *)self sendPlist:v7 clientIdentifiers:v8];
  }

  else
  {
    v7 = wk_default_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface controllerDismissAddPassesController:];
    }
  }
}

- (void)didFinishHandlingActivity:(id)activity
{
  v11[2] = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:activityCopy];
  v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
  if (v6)
  {
    v10[0] = @"V";
    v10[1] = @"har";
    v11[0] = v5;
    v11[1] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v9 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    [(SPRemoteInterface *)self sendPlist:v7 clientIdentifiers:v8];
  }

  else
  {
    v7 = wk_default_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface didFinishHandlingActivity:];
    }
  }
}

- (void)notificationController:(id)controller showNotificationInterfaceType:(int64_t)type
{
  v15[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v7 = [(SPRemoteInterface *)self _interfaceControllerID:controllerCopy];
  v8 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v7];
  if (v8)
  {
    if (type)
    {
      if (type != 1)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v9 = SPApplicationNotificationTypeCustom;
    }

    else
    {
      v9 = SPApplicationNotificationTypeDefault;
    }

    v10 = *v9;
LABEL_10:
    v14[0] = @"V";
    v14[1] = @"nt";
    v15[0] = v7;
    v15[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v13 = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [(SPRemoteInterface *)self sendPlist:v11 clientIdentifiers:v12];

    goto LABEL_11;
  }

  v10 = wk_default_log(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SPRemoteInterface notificationController:showNotificationInterfaceType:];
  }

LABEL_11:
}

- (void)sendWillActivateReplyForController:(id)controller
{
  v14[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = [(SPRemoteInterface *)self _interfaceControllerID:controllerCopy];
  if (v5)
  {
    v6 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [(SPRemoteInterface *)self sendSetViewController:v5 key:@"#didActivate" property:0 value:0 clientIdentifiers:v7];
  }

  else
  {
    v6 = wk_default_log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446722;
      v9 = "[SPRemoteInterface sendWillActivateReplyForController:]";
      v10 = 1024;
      v11 = 2311;
      v12 = 2114;
      v13 = controllerCopy;
      _os_log_impl(&dword_23B338000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF: interfaceControllerID for controller:%{public}@ not found. Controller may already have been released.", &v8, 0x1Cu);
    }
  }
}

- (void)recoverFromMissingIntefaceControllerWithID:(id)d
{
  dCopy = d;
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SPRemoteInterface_recoverFromMissingIntefaceControllerWithID___block_invoke;
  v7[3] = &unk_278B7E2F0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_barrier_sync(interfaceControllersAccessQueue, v7);
}

- (void)_inQueue_recoverFromMissingIntefaceControllerWithID:(id)d
{
  dCopy = d;
  if (([(NSMutableSet *)self->_missingInterfaceControllers containsObject:dCopy]& 1) == 0)
  {
    missingInterfaceControllers = self->_missingInterfaceControllers;
    if (!missingInterfaceControllers)
    {
      v6 = [MEMORY[0x277CBEB58] set];
      v7 = self->_missingInterfaceControllers;
      self->_missingInterfaceControllers = v6;

      missingInterfaceControllers = self->_missingInterfaceControllers;
    }

    [(NSMutableSet *)missingInterfaceControllers addObject:dCopy];
    v8 = dispatch_time(0, 30000000000);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __73__SPRemoteInterface__inQueue_recoverFromMissingIntefaceControllerWithID___block_invoke;
    v13 = &unk_278B7E2F0;
    selfCopy = self;
    v9 = dCopy;
    v15 = v9;
    dispatch_after(v8, MEMORY[0x277D85CD0], &v10);

    [(SPRemoteInterface *)self _tellApplicationThatInterfaceControllerCantBeFound:v9, v10, v11, v12, v13, selfCopy];
  }
}

void __73__SPRemoteInterface__inQueue_recoverFromMissingIntefaceControllerWithID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__SPRemoteInterface__inQueue_recoverFromMissingIntefaceControllerWithID___block_invoke_2;
  v4[3] = &unk_278B7E2F0;
  v4[4] = v2;
  v5 = v1;
  dispatch_barrier_async(v3, v4);
}

void *__73__SPRemoteInterface__inQueue_recoverFromMissingIntefaceControllerWithID___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 48);

    return [v4 removeObject:v3];
  }

  return result;
}

- (void)_tellApplicationThatInterfaceControllerCantBeFound:(id)found
{
  foundCopy = found;
  defaultService = [MEMORY[0x277D3D358] defaultService];
  v5 = [defaultService hostPrincipalForPlugInNamed:0];

  if (v5)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [v5 extensionWithIdentifier:bundleIdentifier gotUnknownInterfaceController:foundCopy];
  }

  else
  {
    mainBundle = wk_default_log(v6);
    if (os_log_type_enabled(mainBundle, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface _tellApplicationThatInterfaceControllerCantBeFound:];
    }
  }
}

- (id)_interfaceControllerWithID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SPRemoteInterface__interfaceControllerWithID___block_invoke;
  block[3] = &unk_278B7E318;
  v15 = &v16;
  block[4] = self;
  v6 = dCopy;
  v14 = v6;
  dispatch_sync(interfaceControllersAccessQueue, block);
  v8 = v17[5];
  if (!v8)
  {
    v9 = wk_default_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(NSMutableDictionary *)self->_interfaceControllersOwners objectForKeyedSubscript:v6];
      [(SPRemoteInterface *)v6 _interfaceControllerWithID:v10, v22];
    }

    [(SPRemoteInterface *)self recoverFromMissingIntefaceControllerWithID:v6];
    v8 = v17[5];
  }

  v11 = v8;

  _Block_object_dispose(&v16, 8);

  return v11;
}

uint64_t __48__SPRemoteInterface__interfaceControllerWithID___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (void)_interfaceControllerWithID:(id)d performBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  if (blockCopy)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SPRemoteInterface__interfaceControllerWithID_performBlock___block_invoke;
    block[3] = &unk_278B7E318;
    v15 = &v16;
    block[4] = self;
    v9 = dCopy;
    v14 = v9;
    dispatch_sync(interfaceControllersAccessQueue, block);
    if (v17[5])
    {
      blockCopy[2](blockCopy);
    }

    else
    {
      v10 = self->_interfaceControllersAccessQueue;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __61__SPRemoteInterface__interfaceControllerWithID_performBlock___block_invoke_2;
      v11[3] = &unk_278B7E2F0;
      v11[4] = self;
      v12 = v9;
      dispatch_async(v10, v11);
    }

    _Block_object_dispose(&v16, 8);
  }
}

uint64_t __61__SPRemoteInterface__interfaceControllerWithID_performBlock___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (id)_interfaceControllerID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SPRemoteInterface__interfaceControllerID___block_invoke;
  block[3] = &unk_278B7E318;
  v15 = &v16;
  block[4] = self;
  v6 = dCopy;
  v14 = v6;
  dispatch_sync(interfaceControllersAccessQueue, block);
  v8 = v17[5];
  if (!v8)
  {
    v9 = wk_default_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(NSMutableDictionary *)self->_interfaceControllersOwners objectForKeyedSubscript:v17[5]];
      [(SPRemoteInterface *)v6 _interfaceControllerID:v10, v22];
    }

    v8 = v17[5];
  }

  v11 = v8;

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __44__SPRemoteInterface__interfaceControllerID___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 32) allKeysForObject:a1[5]];
  v2 = [v5 lastObject];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_interfaceControllerClientIDForControllerID:(id)d
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SPRemoteInterface__interfaceControllerClientIDForControllerID___block_invoke;
  block[3] = &unk_278B7E318;
  v14 = &v15;
  block[4] = self;
  v6 = dCopy;
  v13 = v6;
  dispatch_sync(interfaceControllersAccessQueue, block);
  v8 = v16[5];
  if (!v8)
  {
    v9 = wk_default_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface _interfaceControllerClientIDForControllerID:];
    }

    v8 = v16[5];
  }

  v10 = v8;

  _Block_object_dispose(&v15, 8);

  return v10;
}

uint64_t __65__SPRemoteInterface__interfaceControllerClientIDForControllerID___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (id)_interfaceControllerIDsForClientID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SPRemoteInterface__interfaceControllerIDsForClientID___block_invoke;
  block[3] = &unk_278B7E318;
  v14 = &v15;
  block[4] = self;
  v6 = dCopy;
  v13 = v6;
  dispatch_sync(interfaceControllersAccessQueue, block);
  v8 = v16[5];
  if (!v8)
  {
    v9 = wk_default_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v22 = "[SPRemoteInterface _interfaceControllerIDsForClientID:]";
      v23 = 1024;
      v24 = 2446;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&dword_23B338000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF: interfaceCotrollersIDs for clientIdentifier:%{public}@ not found", buf, 0x1Cu);
    }

    v8 = v16[5];
  }

  v10 = v8;

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __56__SPRemoteInterface__interfaceControllerIDsForClientID___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 40) allKeysForObject:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_registerInterfaceController:(id)controller interfaceControllerID:(id)d interfaceControllerClientID:(id)iD applicationRootController:(BOOL)rootController
{
  rootControllerCopy = rootController;
  v24 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  v13 = wk_default_log(iDCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136447234;
    v15 = "[SPRemoteInterface _registerInterfaceController:interfaceControllerID:interfaceControllerClientID:applicationRootController:]";
    v16 = 1024;
    v17 = 2458;
    v18 = 2114;
    v19 = controllerCopy;
    v20 = 2114;
    v21 = dCopy;
    v22 = 2114;
    v23 = iDCopy;
    _os_log_impl(&dword_23B338000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: registering controller %{public}@ with id %{public}@ and clientIdentifier %{public}@", &v14, 0x30u);
  }

  if (controllerCopy)
  {
    [(NSMutableDictionary *)self->_interfaceControllers setObject:controllerCopy forKey:dCopy];
    if (rootControllerCopy)
    {
      objc_storeStrong(&self->_rootViewControllerID, d);
    }
  }

  if (dCopy)
  {
    [(NSMutableDictionary *)self->_interfaceControllersOwners setObject:iDCopy forKey:dCopy];
  }
}

- (void)_deregisterInterfaceControllerID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = wk_default_log(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSMutableDictionary *)self->_interfaceControllers objectForKeyedSubscript:dCopy];
    v7 = [(NSMutableDictionary *)self->_interfaceControllersOwners objectForKeyedSubscript:dCopy];
    *buf = 136447234;
    v16 = "[SPRemoteInterface _deregisterInterfaceControllerID:]";
    v17 = 1024;
    v18 = 2501;
    v19 = 2114;
    v20 = v6;
    v21 = 2114;
    v22 = dCopy;
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: deregistering controller %{public}@ with id %{public}@ and clientIdentifier %{public}@", buf, 0x30u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__SPRemoteInterface__deregisterInterfaceControllerID___block_invoke;
  v13[3] = &unk_278B7E200;
  v8 = dCopy;
  v14 = v8;
  spUtils_dispatchAsyncToMainThread(v13);
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SPRemoteInterface__deregisterInterfaceControllerID___block_invoke_2;
  block[3] = &unk_278B7E2F0;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_barrier_async(interfaceControllersAccessQueue, block);
}

uint64_t __54__SPRemoteInterface__deregisterInterfaceControllerID___block_invoke(uint64_t a1)
{
  [__recordedValues removeObjectForKey:*(a1 + 32)];
  v2 = *(a1 + 32);

  return [SPRemoteInterface clearStorageForController:v2];
}

void __54__SPRemoteInterface__deregisterInterfaceControllerID___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 64) isEqualToString:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  objc_storeStrong((v3 + 64), v4);
}

- (id)_allInterfaceControllers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SPRemoteInterface__allInterfaceControllers__block_invoke;
  v5[3] = &unk_278B7E340;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(interfaceControllersAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__SPRemoteInterface__allInterfaceControllers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) interfaceControllers];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_dumpInterfaceDictionary
{
  interfaceControllersAccessQueue = self->_interfaceControllersAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SPRemoteInterface__dumpInterfaceDictionary__block_invoke;
  block[3] = &unk_278B7E200;
  block[4] = self;
  dispatch_sync(interfaceControllersAccessQueue, block);
}

void __45__SPRemoteInterface__dumpInterfaceDictionary__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = a1 + 32;
  v2 = [*(*(a1 + 32) + 32) count];
  v16 = v1;
  v3 = [*(*v1 + 40) count];
  if (v2 != v3)
  {
    v4 = wk_default_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__SPRemoteInterface__dumpInterfaceDictionary__block_invoke_cold_1(v1);
    }
  }

  v5 = wk_default_log(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __45__SPRemoteInterface__dumpInterfaceDictionary__block_invoke_cold_2(v1);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = *(*v1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = wk_default_log(v7);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [*(*v16 + 32) objectForKeyedSubscript:v12];
          v15 = [*(*v16 + 40) objectForKeyedSubscript:v12];
          *buf = 136447490;
          v22 = "[SPRemoteInterface _dumpInterfaceDictionary]_block_invoke";
          v23 = 1024;
          v24 = 2533;
          v25 = 1024;
          v26 = v9;
          v27 = 2114;
          v28 = v12;
          v29 = 2114;
          v30 = v14;
          v31 = 2114;
          v32 = v15;
          _os_log_error_impl(&dword_23B338000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%d: #%d key=%{public}@ interfaceController=%{public}@ interfaceControllersOwner=%{public}@", buf, 0x36u);

          ++v9;
        }

        ++v11;
      }

      while (v8 != v11);
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v33 count:16];
      v8 = v7;
    }

    while (v7);
  }
}

- (void)removeInterfaceControllersForClient:(id)client
{
  v33 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v5 = [(SPRemoteInterface *)self _interfaceControllerIDsForClientID:clientCopy];
  v6 = wk_default_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v26 = "[SPRemoteInterface removeInterfaceControllersForClient:]";
    v27 = 1024;
    v28 = 2558;
    v29 = 2114;
    v30 = clientCopy;
    v31 = 2114;
    v32 = v5;
    _os_log_impl(&dword_23B338000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: !!! Release all controllers - clientIdentifier:%{public}@, interfaceControllerIDs:%{public}@", buf, 0x26u);
  }

  v15 = clientCopy;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [(SPRemoteInterface *)self _interfaceControllerWithID:v12, v15];
        v14 = v13;
        if (v13)
        {
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __57__SPRemoteInterface_removeInterfaceControllersForClient___block_invoke;
          v16[3] = &unk_278B7E278;
          v17 = v13;
          selfCopy = self;
          v19 = v12;
          [SPRemoteInterface handleEvent:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

uint64_t __57__SPRemoteInterface_removeInterfaceControllersForClient___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didDeactivate];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _deregisterInterfaceControllerID:v3];
}

+ (id)controller:(id)controller setupProperties:(id)properties viewControllerID:(id)d tableIndex:(int64_t)index rowIndex:(int64_t)rowIndex classForType:(void *)type
{
  v70 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  propertiesCopy = properties;
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  v55 = 0u;
  v56 = 0u;
  if (type)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = SPInterfaceObjectWithType;
  }

  v48 = typeCopy;
  v57 = 0uLL;
  v58 = 0uLL;
  obj = propertiesCopy;
  v14 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = 0;
    v18 = @"property";
    v19 = *v56;
    *&v15 = 136447234;
    v46 = v15;
    v53 = controllerCopy;
    do
    {
      v20 = 0;
      v52 = v16;
      do
      {
        if (*v56 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v55 + 1) + 8 * v20);
        v22 = [v21 objectForKeyedSubscript:{v18, v46}];
        v23 = [v21 objectForKeyedSubscript:@"type"];
        v24 = v23;
        if (v22)
        {
          v25 = v23 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          v26 = v18;
          NSSelectorFromString(v22);
          v27 = objc_opt_respondsToSelector();
          if ((v27 & 1) == 0)
          {
            v29 = wk_default_log(v27);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446978;
              v60 = "+[SPRemoteInterface controller:setupProperties:viewControllerID:tableIndex:rowIndex:classForType:]";
              v61 = 1024;
              v62 = 2679;
              v63 = 2114;
              v64 = v22;
              v65 = 2114;
              v66 = controllerCopy;
              _os_log_error_impl(&dword_23B338000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%d: Unknown property in Interface description ('%{public}@') for controller %{public}@", buf, 0x26u);
            }

            v28 = v17;
            goto LABEL_27;
          }

          v28 = v17 + 1;
          v29 = [objc_alloc(v48(v24)) _initWithInterfaceProperty:v22 viewControllerID:dCopy propertyIndex:v17 tableIndex:index rowIndex:rowIndex];
          v30 = [v29 _setupWithDescription:v21 forController:controllerCopy];
          if (v29)
          {
            v31 = SetterForProperty(v22);
            if (v31)
            {
              v32 = v31;
              v33 = [MEMORY[0x277D82BB8] instancesRespondToSelector:v31];
              if (v33 & 1) != 0 || (v33 = [WKInterfaceControllerClass(v33) instancesRespondToSelector:v32], (v33))
              {
                v34 = wk_default_log(v33);
                if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_19;
                }

                v40 = NSStringFromSelector(v32);
                *buf = 136446722;
                v60 = "+[SPRemoteInterface controller:setupProperties:viewControllerID:tableIndex:rowIndex:classForType:]";
                v61 = 1024;
                v62 = 2670;
                v63 = 2114;
                v64 = v40;
                v41 = v34;
                v42 = "%{public}s:%d: Cannot specify setter '%{public}@' for properties of NSObject or WKInterfaceController";
                v43 = 28;
LABEL_35:
                _os_log_error_impl(&dword_23B338000, v41, OS_LOG_TYPE_ERROR, v42, buf, v43);

                goto LABEL_19;
              }

              v39 = objc_opt_respondsToSelector();
              if (v39)
              {
                [v53 performSelector:v32 withObject:v29];
                [array addObject:v29];
              }

              else
              {
                v34 = wk_default_log(v39);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v40 = NSStringFromSelector(v32);
                  *buf = 136446978;
                  v60 = "+[SPRemoteInterface controller:setupProperties:viewControllerID:tableIndex:rowIndex:classForType:]";
                  v61 = 1024;
                  v62 = 2667;
                  v63 = 2114;
                  v64 = v53;
                  v65 = 2114;
                  v66 = v40;
                  v41 = v34;
                  v42 = "%{public}s:%d: Controller %{public}@ does not implement setter '%{public}@'";
                  v43 = 38;
                  goto LABEL_35;
                }

LABEL_19:
              }

LABEL_27:

              v17 = v28;
              v18 = v26;
              v16 = v52;
              controllerCopy = v53;
              goto LABEL_28;
            }

            v35 = wk_default_log(0);
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
LABEL_26:

              goto LABEL_27;
            }

            *buf = 136446722;
            v60 = "+[SPRemoteInterface controller:setupProperties:viewControllerID:tableIndex:rowIndex:classForType:]";
            v61 = 1024;
            v62 = 2673;
            v63 = 2114;
            v64 = v22;
            v36 = v35;
            v37 = "%{public}s:%d: Invalid setter name for property '%{public}@'";
            v38 = 28;
          }

          else
          {
            v35 = wk_default_log(v30);
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = v46;
            v60 = "+[SPRemoteInterface controller:setupProperties:viewControllerID:tableIndex:rowIndex:classForType:]";
            v61 = 1024;
            v62 = 2676;
            v63 = 2114;
            v64 = v24;
            v65 = 2114;
            v66 = v22;
            v67 = 2114;
            v68 = v53;
            v36 = v35;
            v37 = "%{public}s:%d: Unable to instantiate object of type '%{public}@' for property %{public}@ in controller %{public}@";
            v38 = 48;
          }

          _os_log_error_impl(&dword_23B338000, v36, OS_LOG_TYPE_ERROR, v37, buf, v38);
          goto LABEL_26;
        }

LABEL_28:

        ++v20;
      }

      while (v16 != v20);
      v44 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
      v16 = v44;
    }

    while (v44);
  }

  return array;
}

- (void)receiveProtoData:(id)data fromIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  v7 = [(__CFString *)dataCopy length];
  v8 = wk_default_log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"...";
    v12 = 136447234;
    v13 = "[SPRemoteInterface receiveProtoData:fromIdentifier:]";
    v14 = 1024;
    if (v7 < 0x10)
    {
      v9 = dataCopy;
    }

    v15 = 2689;
    v16 = 2114;
    v17 = identifierCopy;
    v18 = 2048;
    v19 = v7;
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_23B338000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin clientIdentifier=%{public}@ len=%lu data=%{public}@", &v12, 0x30u);
  }

  v10 = [SPProtoSerializer objectWithData:dataCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = +[SPCompanionAssetCache sharedInstance];
    [v11 handleCacheMessage:v10];
  }
}

- (void)receiveData:(id)data fromIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  kdebug_trace();
  v8 = [[SPProtoSockPuppetPlist alloc] initWithData:dataCopy];

  if (v8)
  {
    [(SPRemoteInterface *)self handleProtoPlist:v8 fromIdentifier:identifierCopy];
  }

  else
  {
    v10 = wk_default_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface receiveData:fromIdentifier:];
    }
  }
}

- (void)handleProtoPlist:(id)plist fromIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  identifierCopy = identifier;
  v8 = [SPProtoSerializer dictionaryWithSPPlist:plistCopy];
  if (v8)
  {
    data = [plistCopy data];
    v10 = [data length];
    v11 = wk_default_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v8 objectForKeyedSubscript:@"V"];
      v13 = v12;
      v15 = 136447235;
      v16 = "[SPRemoteInterface handleProtoPlist:fromIdentifier:]";
      v14 = @"...";
      v17 = 1024;
      v18 = 2749;
      if (v10 < 0x10)
      {
        v14 = data;
      }

      v19 = 2114;
      v20 = v12;
      v21 = 2048;
      v22 = v10;
      v23 = 2113;
      v24 = v14;
      _os_log_debug_impl(&dword_23B338000, v11, OS_LOG_TYPE_DEBUG, "%{public}s:%d: ComF:->Plugin vcID=%{public}@ len=%lu data=%{private}@", &v15, 0x30u);
    }

    [(SPRemoteInterface *)self handlePlistDictionary:v8 fromIdentifier:identifierCopy];
  }

  else
  {
    data = wk_default_log(0);
    if (os_log_type_enabled(data, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface handleProtoPlist:fromIdentifier:];
    }
  }
}

- (void)handlePlistDictionary:(id)dictionary fromIdentifier:(id)identifier
{
  v150[2] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"V"];

  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"!"];
    v10 = v9;
    if (v9)
    {
      if ([v9 isEqualToString:@"C"])
      {
        v11 = [dictionaryCopy objectForKeyedSubscript:@"V"];
        v12 = [dictionaryCopy objectForKeyedSubscript:@"K"];
        v13 = [dictionaryCopy objectForKeyedSubscript:@"P"];
        v14 = [dictionaryCopy objectForKeyedSubscript:@"X"];
        v15 = [dictionaryCopy objectForKeyedSubscript:@"I"];
        [(SPRemoteInterface *)self createViewController:v11 className:v12 properties:v13 contextID:v14 info:v15 gestureDescriptions:0 clientIdentifier:identifierCopy];

LABEL_5:
LABEL_49:

LABEL_112:
        goto LABEL_113;
      }

      if ([v10 isEqualToString:@"R"])
      {
        v22 = [dictionaryCopy objectForKeyedSubscript:@"V"];
        v23 = wk_default_log(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446978;
          *&buf[4] = "[SPRemoteInterface handlePlistDictionary:fromIdentifier:]";
          *&buf[12] = 1024;
          *&buf[14] = 2780;
          *&buf[18] = 2114;
          *&buf[20] = identifierCopy;
          *&buf[28] = 2114;
          *&buf[30] = v22;
          _os_log_impl(&dword_23B338000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: !!! Release controller - clientIdentifier:%{public}@, viewControllerIdentifier:%{public}@", buf, 0x26u);
        }

        [(SPRemoteInterface *)self _deregisterInterfaceControllerID:v22];
        goto LABEL_112;
      }

      if ([v10 isEqualToString:@"A"])
      {
        v11 = [dictionaryCopy objectForKeyedSubscript:@"V"];
        if ([v11 length])
        {
          [(SPRemoteInterface *)self activateViewController:v11 clientIdentifier:identifierCopy];
          goto LABEL_49;
        }

        v45 = wk_default_log(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [SPRemoteInterface handlePlistDictionary:fromIdentifier:];
        }
      }

      else
      {
        if (![v10 isEqualToString:@"D"])
        {
          if ([v10 isEqualToString:@"N"])
          {
            v11 = [dictionaryCopy objectForKeyedSubscript:@"V"];
            [(SPRemoteInterface *)self receiveNavigationReply:v11 clientIdentifier:identifierCopy];
            goto LABEL_49;
          }

          if (![v10 isEqualToString:@"an"])
          {
            if ([v10 isEqualToString:@"aua"])
            {
              v56 = [dictionaryCopy objectForKeyedSubscript:@"ua"];
              if (v56)
              {
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();
                if (isKindOfClass)
                {
                  v58 = spUtils_allowedClassesForUserActivity(isKindOfClass);
                  v59 = spUtils_deserializeObject(v56, v58);
                }

                else
                {
                  v59 = v56;
                }

                objc_opt_class();
                v81 = objc_opt_isKindOfClass();
                if ((v81 & 1) == 0)
                {
                  v82 = wk_default_log(v81);
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                  {
                    [SPRemoteInterface handlePlistDictionary:fromIdentifier:];
                  }
                }

                v83 = [v59 objectForKeyedSubscript:@"uai"];
                v137[0] = MEMORY[0x277D85DD0];
                v137[1] = 3221225472;
                v137[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke;
                v137[3] = &unk_278B7E278;
                v138 = dictionaryCopy;
                selfCopy = self;
                v140 = v83;
                v84 = v83;
                [SPRemoteInterface handleEvent:v137];
              }
            }

            goto LABEL_112;
          }

          v11 = [dictionaryCopy objectForKeyedSubscript:@"ni"];
          v12 = [dictionaryCopy objectForKeyedSubscript:@"ai"];
          v13 = [dictionaryCopy objectForKeyedSubscript:@"au"];
          v14 = [dictionaryCopy objectForKeyedSubscript:@"V"];
          [(SPRemoteInterface *)self rootInterfaceController:v14 performActionWithItemID:v12 forNotificationID:v11 userInfo:v13 clientIdentifier:identifierCopy completionHandler:0];
          goto LABEL_5;
        }

        v11 = [dictionaryCopy objectForKeyedSubscript:@"V"];
        if ([v11 length])
        {
          [(SPRemoteInterface *)self deactivateViewController:v11 clientIdentifier:identifierCopy];
          goto LABEL_49;
        }

        v45 = wk_default_log(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [SPRemoteInterface handlePlistDictionary:fromIdentifier:];
        }
      }

      goto LABEL_49;
    }

    v103 = [dictionaryCopy objectForKeyedSubscript:@"V"];
    v102 = [(SPRemoteInterface *)self _interfaceControllerWithID:v103];
    v17 = [dictionaryCopy objectForKeyedSubscript:@"a"];
    if (v17 && (-[SPRemoteInterface navigatingViewControllerID](self, "navigatingViewControllerID"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v103 isEqualToString:v18], v18, v17, (v19 & 1) == 0))
    {
      v101 = [dictionaryCopy objectForKeyedSubscript:@"a"];
      if ([(NSString *)v101 isEqualToString:@".Marco"])
      {
        v100 = [dictionaryCopy objectForKeyedSubscript:@"v"];
        v25 = [v100 objectForKeyedSubscript:@".idx"];
        integerValue = [v25 integerValue];

        v26 = [v100 objectForKeyedSubscript:@".tr"];
        bOOLValue = [v26 BOOLValue];

        v27 = [v100 objectForKeyedSubscript:@".rs"];
        integerValue2 = [v27 integerValue];

        v29 = [MEMORY[0x277CBEB28] dataWithCapacity:integerValue2];
        [(SPRemoteInterface *)self _fillDataWithRandom:v29 length:integerValue2];
        v149[0] = @".idx";
        v30 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
        v149[1] = @".pl";
        v150[0] = v30;
        v150[1] = v29;
        v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:2];

        v31 = [(SPRemoteInterface *)self _interfaceControllerClientIDForControllerID:v103];
        v147[0] = @"V";
        v147[1] = @"k";
        v148[0] = v103;
        v148[1] = @".Polo";
        v147[2] = @"v";
        v148[2] = v99;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:3];
        v146 = v31;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
        [(SPRemoteInterface *)self sendPlist:v32 clientIdentifiers:v33];

        if (bOOLValue)
        {
          v34 = dispatch_time(0, 5000000);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_2;
          block[3] = &unk_278B7E368;
          v135 = integerValue;
          v136 = integerValue2;
          v133 = v103;
          selfCopy2 = self;
          dispatch_after(v34, MEMORY[0x277D85CD0], block);
        }
      }

      else if ([(NSString *)v101 isEqualToString:@".select"])
      {
        v36 = [dictionaryCopy objectForKeyedSubscript:@"v"];
        v37 = [v36 objectAtIndexedSubscript:0];
        v38 = [v36 objectAtIndexedSubscript:1];
        integerValue3 = [v38 integerValue];

        v128[0] = MEMORY[0x277D85DD0];
        v128[1] = 3221225472;
        v128[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_3;
        v128[3] = &unk_278B7E390;
        v102 = v102;
        v129 = v102;
        v130 = v37;
        v131 = integerValue3;
        v40 = v37;
        [SPRemoteInterface handleEvent:v128];
      }

      else if ([(NSString *)v101 isEqualToString:@".segue"])
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        *&buf[24] = 0x7FFFFFFFFFFFFFFFLL;
        v46 = [dictionaryCopy objectForKeyedSubscript:@"v"];
        objc_opt_class();
        v47 = objc_opt_isKindOfClass();

        [dictionaryCopy objectForKeyedSubscript:@"v"];
        if (v47)
          v48 = {;
          v49 = 0;
        }

        else
          v60 = {;
          v61 = [v60 objectAtIndexedSubscript:0];
          v49 = [v102 valueForKey:v61];

          v62 = [v60 objectAtIndexedSubscript:1];
          integerValue4 = [v62 integerValue];
          *(*&buf[8] + 24) = integerValue4;

          v48 = [v60 objectAtIndexedSubscript:2];
        }

        v64 = [v48 objectForKeyedSubscript:@"type"];
        v65 = [v64 isEqualToString:@"present"];

        v66 = [v48 objectForKeyedSubscript:@"destination"];
        objc_opt_class();
        v67 = objc_opt_isKindOfClass();

        v68 = [v48 objectForKeyedSubscript:@"identifier"];
        v120[0] = MEMORY[0x277D85DD0];
        v120[1] = 3221225472;
        v120[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_4;
        v120[3] = &unk_278B7E3B8;
        v69 = v49;
        v121 = v69;
        v126 = v67 & 1;
        v102 = v102;
        v122 = v102;
        v70 = v68;
        v123 = v70;
        v125 = buf;
        v127 = v65;
        v71 = v48;
        v124 = v71;
        [SPRemoteInterface handleEvent:v120];

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v50 = [dictionaryCopy objectForKeyedSubscript:@"v"];
        v119 = v50;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v50 count] >= 2)
        {
          v51 = [v50 objectAtIndex:0];
          v52 = [v50 objectAtIndex:1];
          integerValue5 = [v52 integerValue];

          if ([v50 count] < 3)
          {
            v54 = 0;
          }

          else
          {
            v54 = [v50 objectAtIndex:2];
          }

          v119 = v54;
          v75 = [v102 valueForKey:v51];
          v76 = v75;
          if (v75 && (integerValue5 & 0x8000000000000000) == 0 && integerValue5 < [v75 numberOfRows])
          {
            v77 = [v76 rowControllerAtIndex:integerValue5];

            v102 = v77;
          }
        }

        else
        {
          v54 = v50;
        }

        if (![(NSString *)v101 isEqualToString:@".pickerSettle"]&& ![(NSString *)v101 isEqualToString:@".pickerFocus"]&& ![(NSString *)v101 isEqualToString:@".pickerClearFocus"])
        {
          v78 = NSSelectorFromString(v101);
          if ((objc_opt_respondsToSelector() & 1) != 0 && ([WKInterfaceController instancesRespondToSelector:v78]& 1) == 0)
          {
            v85 = [objc_opt_class() instanceMethodSignatureForSelector:v78];
            v86 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v85];
            [v86 setTarget:v102];
            v87 = wk_default_log([v86 setSelector:v78]);
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447490;
              *&buf[4] = "[SPRemoteInterface handlePlistDictionary:fromIdentifier:]";
              *&buf[12] = 1024;
              *&buf[14] = 3057;
              *&buf[18] = 2114;
              *&buf[20] = v102;
              *&buf[28] = 2114;
              *&buf[30] = v101;
              v142 = 2114;
              v143 = v85;
              v144 = 2114;
              v145 = v86;
              _os_log_impl(&dword_23B338000, v87, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: controller controller=%{public}@ action=%{public}@ methodSignature=%{public}@ invocation=%{public}@", buf, 0x3Au);
            }

            if (v54 && [v85 numberOfArguments] >= 3)
            {
              v88 = v85;
              v89 = [v85 getArgumentTypeAtIndex:2];
              v90 = v89;
              if (*v89 == 64 && !v89[1])
              {
                [v86 setArgument:&v119 atIndex:2];
              }

              else
              {
                objc_opt_class();
                v91 = objc_opt_isKindOfClass();
                if (v91)
                {
                  v92 = *v90;
                  if (v92 <= 0x62)
                  {
                    if (*v90 <= 0x48u)
                    {
                      if (v92 == 66)
                      {
                        if (!v90[1])
                        {
                          buf[0] = [v119 BOOLValue];
                          [v86 setArgument:buf atIndex:2];
                        }
                      }

                      else if (v92 == 67 && !v90[1])
                      {
                        buf[0] = [v119 unsignedCharValue];
                        [v86 setArgument:buf atIndex:2];
                      }
                    }

                    else if (v92 == 73)
                    {
                      if (!v90[1])
                      {
                        *buf = [v119 unsignedIntValue];
                        [v86 setArgument:buf atIndex:2];
                      }
                    }

                    else if (v92 == 81)
                    {
                      if (!v90[1])
                      {
                        *buf = [v119 unsignedIntegerValue];
                        [v86 setArgument:buf atIndex:2];
                      }
                    }

                    else if (v92 == 83 && !v90[1])
                    {
                      *buf = [v119 unsignedShortValue];
                      [v86 setArgument:buf atIndex:2];
                    }
                  }

                  else if (*v90 > 0x68u)
                  {
                    if (v92 == 105)
                    {
                      if (!v90[1])
                      {
                        *buf = [v119 intValue];
                        [v86 setArgument:buf atIndex:2];
                      }
                    }

                    else if (v92 == 113)
                    {
                      if (!v90[1])
                      {
                        *buf = [v119 integerValue];
                        [v86 setArgument:buf atIndex:2];
                      }
                    }

                    else if (v92 == 115 && !v90[1])
                    {
                      *buf = [v119 shortValue];
                      [v86 setArgument:buf atIndex:2];
                    }
                  }

                  else if (v92 == 99)
                  {
                    if (!v90[1])
                    {
                      buf[0] = [v119 charValue];
                      [v86 setArgument:buf atIndex:2];
                    }
                  }

                  else if (v92 == 100)
                  {
                    if (!v90[1])
                    {
                      [v119 doubleValue];
                      *buf = v96;
                      [v86 setArgument:buf atIndex:2];
                    }
                  }

                  else if (v92 == 102 && !v90[1])
                  {
                    [v119 floatValue];
                    *buf = v93;
                    [v86 setArgument:buf atIndex:2];
                  }
                }

                else
                {
                  v94 = wk_default_log(v91);
                  if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                  {
                    [SPRemoteInterface handlePlistDictionary:fromIdentifier:];
                  }
                }
              }
            }

            v117[0] = MEMORY[0x277D85DD0];
            v117[1] = 3221225472;
            v117[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_513;
            v117[3] = &unk_278B7E200;
            v118 = v86;
            v95 = v86;
            [SPRemoteInterface handleEvent:v117];

            v54 = v119;
          }

          else
          {
            v79 = [(NSString *)v101 isEqualToString:@".Marco"];
            if ((v79 & 1) == 0)
            {
              v80 = wk_default_log(v79);
              if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
              {
                [SPRemoteInterface handlePlistDictionary:fromIdentifier:];
              }
            }
          }
        }
      }

      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_514;
      v115[3] = &unk_278B7E200;
      v116 = v103;
      [SPRemoteInterface handleEvent:v115];

      v21 = v101;
    }

    else
    {
      v20 = [dictionaryCopy objectForKeyedSubscript:@"k"];

      if (!v20)
      {
LABEL_111:

        goto LABEL_112;
      }

      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_2_515;
      v112[3] = &unk_278B7E2F0;
      v102 = v102;
      v113 = v102;
      v114 = dictionaryCopy;
      [SPRemoteInterface handleEvent:v112];

      v21 = v113;
    }

    goto LABEL_111;
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"tI"];

  if (v16)
  {
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_3_516;
    v110[3] = &unk_278B7E2F0;
    v110[4] = self;
    v111 = dictionaryCopy;
    spUtils_dispatchAsyncToMainThread(v110);
  }

  else
  {
    v24 = [dictionaryCopy objectForKeyedSubscript:@"tL"];

    if (v24)
    {
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_4_517;
      v107[3] = &unk_278B7E278;
      v107[4] = self;
      v108 = dictionaryCopy;
      v109 = identifierCopy;
      spUtils_dispatchAsyncToMainThread(v107);
    }

    else
    {
      v35 = [dictionaryCopy objectForKeyedSubscript:@"pkf"];

      if (v35)
      {
        v106[0] = MEMORY[0x277D85DD0];
        v106[1] = 3221225472;
        v106[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_5;
        v106[3] = &unk_278B7E200;
        v106[4] = self;
        spUtils_dispatchAsyncToMainThread(v106);
      }

      else
      {
        v41 = [dictionaryCopy objectForKeyedSubscript:@"lm"];

        if (v41)
        {
          v42 = [dictionaryCopy objectForKeyedSubscript:@"lm"];
          NSLog(&stru_284DFF2B8.isa, v42);

          v44 = wk_default_log(v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [SPRemoteInterface handlePlistDictionary:dictionaryCopy fromIdentifier:@"lm"];
          }
        }

        else
        {
          v55 = [dictionaryCopy objectForKeyedSubscript:@"cc"];

          if (v55)
          {
            v104[0] = MEMORY[0x277D85DD0];
            v104[1] = 3221225472;
            v104[2] = __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_518;
            v104[3] = &unk_278B7E2F0;
            v104[4] = self;
            v105 = dictionaryCopy;
            spUtils_dispatchAsyncToMainThread(v104);
          }

          else
          {
            v72 = [dictionaryCopy objectForKeyedSubscript:@"cd"];

            if (v72)
            {
              activeComplicationsConnections = [(SPRemoteInterface *)self activeComplicationsConnections];
              v74 = [activeComplicationsConnections containsObject:identifierCopy];

              if ((v74 & 1) == 0)
              {
                [(SPRemoteInterface *)self applicationDidFinishConnecting:identifierCopy];
                [(SPRemoteInterface *)self dataInterfaceDidBecomeActive:identifierCopy];
              }

              [(SPRemoteInterface *)self getComplicationData:identifierCopy];
            }
          }
        }
      }
    }
  }

LABEL_113:
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"V"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) _interfaceControllerWithID:*(*(&v11 + 1) + 8 * v6)];
        [v7 handleUserActivity:*(a1 + 48)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 40);
  v9 = [v2 firstObject];
  v10 = [v8 _interfaceControllerWithID:v9];
  [SPRemoteInterface didFinishHandlingActivity:v10];
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_2(uint64_t a1)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v6[0] = *(a1 + 32);
  v5[0] = @"V";
  v5[1] = @".idx";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v6[1] = v2;
  v5[2] = @".rs";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v6[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];

  [*(a1 + 40) _requestTimingData:v4];
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = [v2 valueForKey:a1[5]];
  [v2 table:v3 didSelectRowAtIndex:a1[6]];
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 72);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v4)
  {
    if (v2)
    {
      v6 = [v3 contextsForSegueWithIdentifier:v5 inTable:? rowIndex:?];
LABEL_6:
      v7 = v6;
      v13 = 0;
      goto LABEL_10;
    }

    v8 = [v3 contextForSegueWithIdentifier:v5 inTable:? rowIndex:?];
  }

  else
  {
    if (v2)
    {
      v6 = [v3 contextsForSegueWithIdentifier:v5];
      goto LABEL_6;
    }

    v8 = [v3 contextForSegueWithIdentifier:v5];
  }

  v13 = v8;
  v7 = 0;
LABEL_10:
  v9 = *(a1 + 72);
  if (*(a1 + 73) == 1)
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 56) objectForKeyedSubscript:@"destination"];
    if (v9)
    {
      [SPRemoteInterface controller:v10 presentInterfaceControllers:v11 contexts:v7];
    }

    else
    {
      [SPRemoteInterface controller:v10 presentInterfaceController:v11 context:v13];
    }
  }

  else
  {
    if (v9)
    {
      goto LABEL_17;
    }

    v12 = *(a1 + 40);
    v11 = [*(a1 + 56) objectForKeyedSubscript:@"destination"];
    [SPRemoteInterface controller:v12 pushInterfaceController:v11 context:v13];
  }

LABEL_17:
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_2_515(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"v"];
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"k"];
  [v2 setValue:v4 forKey:v3];
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_3_516(uint64_t a1)
{
  if (*(*(a1 + 32) + 88))
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:@"tI"];
    v2 = *(*(a1 + 32) + 88);
    if ([v8 count])
    {
      v3 = v8;
    }

    else
    {
      v3 = 0;
    }

    (*(v2 + 16))(v2, v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = 0;

    v6 = *(a1 + 32);
    v7 = *(v6 + 96);
    *(v6 + 96) = 0;
  }
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_4_517(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 96);
  if (v1)
  {
    v3 = [*(a1 + 40) objectForKeyedSubscript:@"tL"];
    v4 = (*(v1 + 16))(v1, v3);

    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = MEMORY[0x277CBEBF8];
    }

    v10 = @"tS";
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = *(a1 + 32);
    v9 = *(a1 + 48);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    [v7 sendPlist:v6 clientIdentifiers:v8];
  }
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) addPassesCompletion];

  if (v2)
  {
    v3 = [*(a1 + 32) addPassesCompletion];
    v3[2]();

    v4 = *(a1 + 32);

    [v4 setAddPassesCompletion:0];
  }
}

void __58__SPRemoteInterface_handlePlistDictionary_fromIdentifier___block_invoke_518(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 8);
    v5 = [v2 objectForKeyedSubscript:@"cc"];
    [v4 remoteInterface:v3 setComplicationDataClassName:v5];
  }
}

- (void)createViewController:(id)controller className:(id)name properties:(id)properties contextID:(id)d info:(id)info gestureDescriptions:(id)descriptions clientIdentifier:(id)identifier
{
  controllerCopy = controller;
  nameCopy = name;
  propertiesCopy = properties;
  dCopy = d;
  infoCopy = info;
  descriptionsCopy = descriptions;
  identifierCopy = identifier;
  if (!WKInterfaceControllerClass(identifierCopy) || (v22 = NSClassFromString(nameCopy), ![(objc_class *)v22 isSubclassOfClass:WKInterfaceControllerClass(v22)]))
  {
    v30 = NSClassFromString(nameCopy);
    v31 = wk_default_log(v30);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        [SPRemoteInterface createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:];
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is not a subclass of WKInterfaceController", nameCopy];
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Condition failed:%s. %@", "NO", objc_claimAutoreleasedReturnValue()];
      v34 = wk_default_log(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SPRemoteInterface createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:];
      }
    }

    else
    {
      if (v32)
      {
        [SPRemoteInterface createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:];
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't instantiate class %@", nameCopy];
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Condition failed:%s. %@", "NO", objc_claimAutoreleasedReturnValue()];
      v34 = wk_default_log(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SPRemoteInterface createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:];
      }
    }

    __abort_with_reason([v33 UTF8String]);
    exit(1);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke;
  v35[3] = &unk_278B7E4D0;
  v36 = infoCopy;
  v37 = dCopy;
  selfCopy = self;
  v39 = identifierCopy;
  v40 = controllerCopy;
  v41 = nameCopy;
  v42 = propertiesCopy;
  v43 = descriptionsCopy;
  v23 = descriptionsCopy;
  v24 = propertiesCopy;
  v25 = nameCopy;
  v26 = controllerCopy;
  v27 = identifierCopy;
  v28 = dCopy;
  v29 = infoCopy;
  [SPRemoteInterface handleEvent:v35];
}

void __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"s"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"ir"];
  v4 = [v3 BOOLValue];

  if ([v2 count] < 4)
  {
    v7 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v5 = [v2 objectAtIndexedSubscript:0];
    [v5 floatValue];
    v7 = v6;
    v8 = [v2 objectAtIndexedSubscript:1];
    [v8 floatValue];
    v10 = v9;
    v11 = [v2 objectAtIndexedSubscript:2];
    [v11 floatValue];
    v13 = v12;
    v14 = [v2 objectAtIndexedSubscript:3];
    [v14 floatValue];
    v16 = v15;
  }

  v17 = [*(a1 + 40) integerValue];
  v19 = *(a1 + 40);
  v18 = *(a1 + 48);
  if (v17 < 0)
  {
    [v18 pageInterfaceCreationContextForID:v19];
  }

  else
  {
    [v18 interfaceCreationContextForID:v19];
  }
  v20 = ;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_2;
  v31[3] = &unk_278B7E458;
  v32 = *(a1 + 56);
  v33 = *(a1 + 64);
  v34 = *(a1 + 72);
  v21 = v20;
  v35 = v21;
  v39 = v7;
  v40 = v10;
  v41 = v13;
  v42 = v16;
  v36 = *(a1 + 80);
  v22 = *(a1 + 88);
  v23 = *(a1 + 48);
  v37 = v22;
  v38 = v23;
  v43 = v4;
  v24 = MEMORY[0x23EE9A9D0](v31);
  if (__pageInterfaceCreationContexts_block_invoke_2_onceToken != -1)
  {
    __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_cold_1();
  }

  if ([NSClassFromString(*(a1 + 72)) isSubclassOfClass:__pageInterfaceCreationContexts_block_invoke_2___wkUserNotificationInterfaceControllerClass])
  {
    v25 = [*(a1 + 32) objectForKeyedSubscript:@"ni"];
    v26 = v25;
    if (v25)
    {
      v27 = *(a1 + 48);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_531;
      v28[3] = &unk_278B7E4A8;
      v29 = v25;
      v30 = v24;
      [v27 fetchNotificationForNotificationID:v29 completion:v28];
    }

    else
    {
      v24[2](v24, v4, 0, 0, 0, 0);
    }
  }

  else
  {
    v24[2](v24, v4, 0, 0, 0, 0);
  }
}

void __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v54 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  v13 = wk_default_log(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    *buf = 136447234;
    v45 = "[SPRemoteInterface createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:]_block_invoke_2";
    v46 = 1024;
    v47 = 3197;
    v48 = 2114;
    v49 = v14;
    v50 = 2114;
    v51 = v15;
    v52 = 2114;
    v53 = v16;
    _os_log_impl(&dword_23B338000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: !!! Create controller - clientIdentifier:%{public}@, viewControllerIdentifier:%{public}@, className:%{public}@", buf, 0x30u);
  }

  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v20 = *(a1 + 56);
  v19 = *(a1 + 64);
  v21 = *(a1 + 72);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_521;
  v29[3] = &unk_278B7E408;
  v22 = v12;
  v30 = v22;
  v23 = v10;
  v31 = v23;
  v24 = v11;
  v36 = &v38;
  v25 = *(a1 + 80);
  v32 = v24;
  v33 = v25;
  v34 = *(a1 + 40);
  v35 = *(a1 + 32);
  v37 = *(a1 + 120);
  v26 = _WKInterfaceControllerCreateClass(v18, v20, v17, v19, v21, v29, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
  if (a6)
  {
    [*(a1 + 80) extensionDidBeginNotificationUICreation];
    v27 = v39[5];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_3;
    v28[3] = &unk_278B7E430;
    v28[4] = *(a1 + 80);
    v28[5] = &v38;
    [v27 _didReceiveNotification:v22 remoteNotification:v23 localNotification:v24 withCompletion:v28];
  }

  _Block_object_dispose(&v38, 8);
}

void __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_521(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 32) != 0 || *(a1 + 48))
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a2);
  }

  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *(v6 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_2_522;
  block[3] = &unk_278B7E3E0;
  block[4] = v6;
  v10 = v4;
  v11 = v5;
  v12 = *(a1 + 72);
  v13 = *(a1 + 88);
  v8 = v4;
  dispatch_barrier_sync(v7, block);
  [v8 didRegisterWithRemoteInterface];
}

uint64_t __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [SPRemoteInterface notificationController:*(*(*(a1 + 40) + 8) + 40) showNotificationInterfaceType:a2];
  v3 = *(a1 + 32);

  return [v3 extensionDidEndNotificationUICreation];
}

Class __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_4()
{
  result = NSClassFromString(&cfstr_Wkusernotifica.isa);
  __pageInterfaceCreationContexts_block_invoke_2___wkUserNotificationInterfaceControllerClass = result;
  return result;
}

void __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_531(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v12)
  {
    v14 = wk_default_log(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_531_cold_1();
    }
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_532;
  v19[3] = &unk_278B7E480;
  v15 = *(a1 + 40);
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v15;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  spUtils_dispatchAsyncToMainThread(v19);
}

- (void)activateViewController:(id)controller clientIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  if ([controllerCopy length])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__SPRemoteInterface_activateViewController_clientIdentifier___block_invoke;
    v12[3] = &unk_278B7E278;
    v12[4] = self;
    v8 = controllerCopy;
    v13 = v8;
    v14 = identifierCopy;
    [SPRemoteInterface handleEvent:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__SPRemoteInterface_activateViewController_clientIdentifier___block_invoke_2;
    v10[3] = &unk_278B7E200;
    v11 = v8;
    [SPRemoteInterface handleEvent:v10];
  }

  else
  {
    v9 = wk_default_log(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface activateViewController:clientIdentifier:];
    }
  }
}

- (void)_activateViewController:(id)controller clientIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v6 = [(SPRemoteInterface *)self _interfaceControllerWithID:controllerCopy];
  [SPRemoteInterface setControllerActive:controllerCopy];

  v8 = wk_default_log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    viewControllerID = [v6 viewControllerID];
    v10 = 136446722;
    v11 = "[SPRemoteInterface _activateViewController:clientIdentifier:]";
    v12 = 1024;
    v13 = 3327;
    v14 = 2114;
    v15 = viewControllerID;
    _os_log_impl(&dword_23B338000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling willActivate for %{public}@", &v10, 0x1Cu);
  }

  [v6 willActivate];
  [(SPRemoteInterface *)self sendWillActivateReplyForController:v6];
}

- (void)deactivateViewController:(id)controller clientIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  if ([controllerCopy length])
  {
    v8 = [(SPRemoteInterface *)self _interfaceControllerWithID:controllerCopy];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__SPRemoteInterface_deactivateViewController_clientIdentifier___block_invoke;
    v10[3] = &unk_278B7E2F0;
    v11 = controllerCopy;
    v12 = v8;
    v9 = v8;
    [SPRemoteInterface handleEvent:v10];
  }

  else
  {
    v9 = wk_default_log(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SPRemoteInterface deactivateViewController:clientIdentifier:];
    }
  }
}

uint64_t __63__SPRemoteInterface_deactivateViewController_clientIdentifier___block_invoke(uint64_t a1)
{
  [SPRemoteInterface setControllerInactive:*(a1 + 32)];
  v2 = *(a1 + 40);

  return [v2 didDeactivate];
}

- (void)receiveNavigationReply:(id)reply clientIdentifier:(id)identifier
{
  replyCopy = reply;
  navigatingViewControllerID = [(SPRemoteInterface *)self navigatingViewControllerID];
  v7 = [navigatingViewControllerID isEqualToString:replyCopy];

  if (v7)
  {

    [(SPRemoteInterface *)self setNavigatingViewControllerID:0];
  }
}

- (void)applicationDidTerminate:(id)terminate
{
  v16 = *MEMORY[0x277D85DE8];
  terminateCopy = terminate;
  v5 = wk_default_log(terminateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v11 = "[SPRemoteInterface applicationDidTerminate:]";
    v12 = 1024;
    v13 = 3433;
    v14 = 2114;
    v15 = terminateCopy;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %{public}@", buf, 0x1Cu);
  }

  [(SPRemoteInterface *)self removeInterfaceControllersForClient:terminateCopy];
  activeComplicationsConnections = [(SPRemoteInterface *)self activeComplicationsConnections];
  v7 = [activeComplicationsConnections indexOfObject:terminateCopy];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    activeComplicationsConnections2 = [(SPRemoteInterface *)self activeComplicationsConnections];
    [activeComplicationsConnections2 removeObjectAtIndex:v7];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__SPRemoteInterface_applicationDidTerminate___block_invoke;
    v9[3] = &unk_278B7E200;
    v9[4] = self;
    spUtils_dispatchAsyncToMainThread(v9);
  }
}

uint64_t __45__SPRemoteInterface_applicationDidTerminate___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 8);

    return [v3 dataInterfaceWillResignActive:?];
  }

  return result;
}

- (void)applicationContentsDidReset:(id)reset
{
  v12 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  v5 = wk_default_log(resetCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[SPRemoteInterface applicationContentsDidReset:]";
    v8 = 1024;
    v9 = 3449;
    v10 = 2114;
    v11 = resetCopy;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %{public}@", &v6, 0x1Cu);
  }

  [(SPRemoteInterface *)self removeInterfaceControllersForClient:resetCopy];
}

- (void)applicationDidFinishConnecting:(id)connecting
{
  v13 = *MEMORY[0x277D85DE8];
  connectingCopy = connecting;
  v5 = wk_default_log(connectingCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[SPRemoteInterface applicationDidFinishConnecting:]";
    v9 = 1024;
    v10 = 3456;
    v11 = 2114;
    v12 = connectingCopy;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %{public}@", buf, 0x1Cu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SPRemoteInterface_applicationDidFinishConnecting___block_invoke;
  v6[3] = &unk_278B7E200;
  v6[4] = self;
  spUtils_dispatchAsyncToMainThread(v6);
}

uint64_t __52__SPRemoteInterface_applicationDidFinishConnecting___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 8);

    return [v3 remoteInterfaceDidFinishConnecting:?];
  }

  return result;
}

- (void)applicationDidBecomeActive:(id)active
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = wk_default_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[SPRemoteInterface applicationDidBecomeActive:]";
    v6 = 1024;
    v7 = 3618;
    _os_log_impl(&dword_23B338000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin", &v4, 0x12u);
  }
}

- (void)applicationWillResignActive:(id)active
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = wk_default_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[SPRemoteInterface applicationWillResignActive:]";
    v6 = 1024;
    v7 = 3642;
    _os_log_impl(&dword_23B338000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin", &v4, 0x12u);
  }
}

- (void)applicationDidReceiveNotification:(id)notification clientIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  if (spUtils_isApplicationCompanionConnectionClientIdentifier(identifier))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __94__SPRemoteInterface_applicationDidReceiveNotification_clientIdentifier_withCompletionHandler___block_invoke;
    v9[3] = &unk_278B7E4F8;
    v10 = notificationCopy;
    v11 = handlerCopy;
    spUtils_dispatchAsyncToMainThread(v9);
  }
}

void __94__SPRemoteInterface_applicationDidReceiveNotification_clientIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAAC8];
  getUNNotificationClass();
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v12 = 0;
  v5 = [v2 unarchivedObjectOfClass:v3 fromData:v4 error:&v12];
  v6 = v12;
  v7 = v6;
  if (!v5)
  {
    v8 = wk_default_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __94__SPRemoteInterface_applicationDidReceiveNotification_clientIdentifier_withCompletionHandler___block_invoke_cold_1();
    }
  }

  v9 = [getUNUserNotificationCenterClass() currentNotificationCenter];
  v10 = [v9 delegate];

  if (objc_opt_respondsToSelector())
  {
    NSClassFromString(&cfstr_Spapplicationd.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [getUNUserNotificationCenterClass() currentNotificationCenter];
      [v10 userNotificationCenter:v11 willPresentNotification:v5 withCompletionHandler:*(a1 + 40)];
    }
  }
}

- (void)applicationHandleWatchTaskKeys:(id)keys reasonForSnapshot:(unint64_t)snapshot visibleVCID:(id)d barTaskUUID:(id)iD clientIdentifier:(id)identifier
{
  keysCopy = keys;
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  if (spUtils_isApplicationCompanionConnectionClientIdentifier(identifierCopy))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __111__SPRemoteInterface_applicationHandleWatchTaskKeys_reasonForSnapshot_visibleVCID_barTaskUUID_clientIdentifier___block_invoke;
    v15[3] = &unk_278B7E520;
    v15[4] = self;
    v16 = dCopy;
    v17 = keysCopy;
    v18 = iDCopy;
    v19 = identifierCopy;
    spUtils_dispatchAsyncToMainThread(v15);
  }
}

void __111__SPRemoteInterface_applicationHandleWatchTaskKeys_reasonForSnapshot_visibleVCID_barTaskUUID_clientIdentifier___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __111__SPRemoteInterface_applicationHandleWatchTaskKeys_reasonForSnapshot_visibleVCID_barTaskUUID_clientIdentifier___block_invoke_2;
  v8[3] = &unk_278B7E520;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  [v3 performAfterApplicationDidFinishLaunching:v8];
}

void __111__SPRemoteInterface_applicationHandleWatchTaskKeys_reasonForSnapshot_visibleVCID_barTaskUUID_clientIdentifier___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = wk_bg_app_refresh_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) allKeys];
    v5 = *(a1 + 48);
    *buf = 136447234;
    v17 = "[SPRemoteInterface applicationHandleWatchTaskKeys:reasonForSnapshot:visibleVCID:barTaskUUID:clientIdentifier:]_block_invoke_2";
    v18 = 1024;
    v19 = 3775;
    v20 = 2114;
    v21 = v3;
    v22 = 2114;
    v23 = v4;
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&dword_23B338000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Waiting on finishActivatingVCWithID:%{public}@ with taskKeys %{public}@, barTaskUUID=%{public}@", buf, 0x30u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __111__SPRemoteInterface_applicationHandleWatchTaskKeys_reasonForSnapshot_visibleVCID_barTaskUUID_clientIdentifier___block_invoke_553;
  v13[3] = &unk_278B7E2C8;
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v6;
  *(&v12 + 1) = v8;
  v14 = v12;
  v15 = v11;
  [v6 finishActivatingVCWithID:v7 completion:v13];
}

void __111__SPRemoteInterface_applicationHandleWatchTaskKeys_reasonForSnapshot_visibleVCID_barTaskUUID_clientIdentifier___block_invoke_553(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = wk_bg_app_refresh_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[SPRemoteInterface applicationHandleWatchTaskKeys:reasonForSnapshot:visibleVCID:barTaskUUID:clientIdentifier:]_block_invoke";
    v14 = 1024;
    v15 = 3845;
    _os_log_impl(&dword_23B338000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Finished activating for snapshot", buf, 0x12u);
  }

  v3 = a1[4];
  if (a1[5])
  {
    v4 = a1[5];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v10[0] = @"hT";
  v10[1] = @"Ui";
  v11[0] = v4;
  v5 = a1[6];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v9 = a1[7];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [v3 sendPlist:v7 clientIdentifiers:v8];

  if (!v5)
  {
  }
}

- (void)applicationIsStillActive
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = wk_default_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[SPRemoteInterface applicationIsStillActive]";
    v5 = 1024;
    v6 = 3856;
    _os_log_impl(&dword_23B338000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin", &v3, 0x12u);
  }
}

- (void)dataInterfaceDidBecomeActive:(id)active
{
  v16 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  v5 = wk_default_log(activeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v11 = "[SPRemoteInterface dataInterfaceDidBecomeActive:]";
    v12 = 1024;
    v13 = 3892;
    v14 = 2114;
    v15 = activeCopy;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %{public}@", buf, 0x1Cu);
  }

  activeComplicationsConnections = [(SPRemoteInterface *)self activeComplicationsConnections];
  v7 = [activeComplicationsConnections containsObject:activeCopy];

  if ((v7 & 1) == 0)
  {
    activeComplicationsConnections2 = [(SPRemoteInterface *)self activeComplicationsConnections];
    [activeComplicationsConnections2 addObject:activeCopy];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__SPRemoteInterface_dataInterfaceDidBecomeActive___block_invoke;
  v9[3] = &unk_278B7E200;
  v9[4] = self;
  spUtils_dispatchAsyncToMainThread(v9);
}

uint64_t __50__SPRemoteInterface_dataInterfaceDidBecomeActive___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 8);

    return [v3 dataInterfaceDidBecomeActive:?];
  }

  return result;
}

- (void)dataInterfaceWillResignActive:(id)active
{
  v14 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  v5 = wk_default_log(activeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v9 = "[SPRemoteInterface dataInterfaceWillResignActive:]";
    v10 = 1024;
    v11 = 3907;
    v12 = 2114;
    v13 = activeCopy;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %{public}@", buf, 0x1Cu);
  }

  activeComplicationsConnections = [(SPRemoteInterface *)self activeComplicationsConnections];
  [activeComplicationsConnections removeObject:activeCopy];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SPRemoteInterface_dataInterfaceWillResignActive___block_invoke;
  v7[3] = &unk_278B7E200;
  v7[4] = self;
  spUtils_dispatchAsyncToMainThread(v7);
}

uint64_t __51__SPRemoteInterface_dataInterfaceWillResignActive___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 8);

    return [v3 dataInterfaceWillResignActive:?];
  }

  return result;
}

- (void)preferredContentSizeCategory:(id)category
{
  v13 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  v4 = wk_default_log(categoryCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[SPRemoteInterface preferredContentSizeCategory:]";
    v9 = 1024;
    v10 = 3918;
    v11 = 2114;
    v12 = categoryCopy;
    _os_log_impl(&dword_23B338000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %{public}@", buf, 0x1Cu);
  }

  if (categoryCopy && (!preferredContentSizeCategory____textSize || [categoryCopy compare:?]))
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__SPRemoteInterface_preferredContentSizeCategory___block_invoke;
    v5[3] = &unk_278B7E200;
    v6 = categoryCopy;
    spUtils_dispatchAsyncToMainThread(v5);
  }
}

void __50__SPRemoteInterface_preferredContentSizeCategory___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  objc_storeStrong(&preferredContentSizeCategory____textSize, *(a1 + 32));
  v1 = preferredContentSizeCategory____textSize;
  v2 = +[WKInterfaceDevice currentDevice];
  [v2 setPreferredContentSizeCategory:v1];

  v6 = *MEMORY[0x277D76850];
  v7[0] = preferredContentSizeCategory____textSize;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [MEMORY[0x277CCAB88] notificationWithName:*MEMORY[0x277D76810] object:0 userInfo:v3];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotification:v4];
}

- (void)layoutDirection:(int64_t)direction
{
  directionCopy = direction;
  v11 = *MEMORY[0x277D85DE8];
  v4 = wk_default_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[SPRemoteInterface layoutDirection:]";
    v7 = 1024;
    v8 = 3939;
    v9 = 1024;
    v10 = directionCopy;
    _os_log_impl(&dword_23B338000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %d", &v5, 0x18u);
  }
}

- (BOOL)_handleAction:(id)action forNotification:(id)notification remoteNotificationContext:(id)context localNotification:(id)localNotification unNotification:(id)unNotification handler:(id)handler controller:(id)controller
{
  actionCopy = action;
  notificationCopy = notification;
  contextCopy = context;
  localNotificationCopy = localNotification;
  unNotificationCopy = unNotification;
  handlerCopy = handler;
  controllerCopy = controller;
  v22 = actionCopy;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v23 = getUNNotificationDefaultActionIdentifierSymbolLoc_ptr;
  v55 = getUNNotificationDefaultActionIdentifierSymbolLoc_ptr;
  if (!getUNNotificationDefaultActionIdentifierSymbolLoc_ptr)
  {
    v47 = MEMORY[0x277D85DD0];
    v48 = 3221225472;
    v49 = __getUNNotificationDefaultActionIdentifierSymbolLoc_block_invoke;
    v50 = &unk_278B7E070;
    v51 = &v52;
    v24 = UserNotificationsLibrary();
    v53[3] = dlsym(v24, "UNNotificationDefaultActionIdentifier");
    getUNNotificationDefaultActionIdentifierSymbolLoc_ptr = *(v51[1] + 24);
    v23 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v23)
  {
    [SPRemoteInterface _handleAction:forNotification:remoteNotificationContext:localNotification:unNotification:handler:controller:];
  }

  v25 = [(__CFString *)v22 isEqualToString:*v23];
  v26 = v22;
  if (v25)
  {

    v26 = &stru_284DFE9D8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (localNotificationCopy || contextCopy || unNotificationCopy)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke;
      v40[3] = &unk_278B7E548;
      v41 = handlerCopy;
      v42 = v22;
      v43 = unNotificationCopy;
      v44 = contextCopy;
      v45 = localNotificationCopy;
      v46 = controllerCopy;
      [SPRemoteInterface handleEvent:v40];

      v27 = 1;
      delegate = v41;
    }

    else
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_2;
      v36[3] = &unk_278B7E570;
      v37 = controllerCopy;
      v38 = handlerCopy;
      v39 = v26;
      [(SPRemoteInterface *)self fetchNotificationForNotificationID:notificationCopy completion:v36];

      v27 = 1;
      delegate = v37;
    }
  }

  else
  {
    currentNotificationCenter = [getUNUserNotificationCenterClass() currentNotificationCenter];
    delegate = [currentNotificationCenter delegate];

    if ((objc_opt_respondsToSelector() & 1) != 0 && (NSClassFromString(&cfstr_Spapplicationd.isa), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_3;
      v31[3] = &unk_278B7E2C8;
      delegate = delegate;
      v32 = delegate;
      v33 = v22;
      v34 = unNotificationCopy;
      v35 = controllerCopy;
      [SPRemoteInterface handleEvent:v31];

      v27 = 1;
    }

    else
    {
      v27 = 0;
    }
  }

  return v27;
}

uint64_t __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleActionWithIdentifier:*(a1 + 40) forNotification:*(a1 + 48) remoteNotification:*(a1 + 56) localNotification:*(a1 + 64)];
  v2 = *(a1 + 72);

  return [SPRemoteInterface didFinishHandlingActivity:v2];
}

void __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_2(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v12)
  {
    v14 = wk_default_log(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_2_cold_1();
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_560;
    v23[3] = &unk_278B7E200;
    v15 = &v24;
    v24 = a1[4];
    [SPRemoteInterface handleEvent:v23];
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_2_561;
    v16[3] = &unk_278B7E548;
    v15 = &v17;
    v17 = a1[5];
    v18 = a1[6];
    v19 = v11;
    v20 = v9;
    v21 = v10;
    v22 = a1[4];
    [SPRemoteInterface handleEvent:v16];
  }
}

uint64_t __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_2_561(uint64_t a1)
{
  [*(a1 + 32) _handleActionWithIdentifier:*(a1 + 40) forNotification:*(a1 + 48) remoteNotification:*(a1 + 56) localNotification:*(a1 + 64)];
  v2 = *(a1 + 72);

  return [SPRemoteInterface didFinishHandlingActivity:v2];
}

uint64_t __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_3(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = wk_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 136446978;
    *&buf[4] = "[SPRemoteInterface _handleAction:forNotification:remoteNotificationContext:localNotification:unNotification:handler:controller:]_block_invoke_3";
    *&buf[12] = 1024;
    *&buf[14] = 4111;
    *&buf[18] = 2114;
    *&buf[20] = v3;
    *&buf[28] = 2114;
    *&buf[30] = v4;
    _os_log_impl(&dword_23B338000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler: on notifCenterDelegate %{public}@ with actionItemID %{public}@", buf, 0x26u);
  }

  v5 = a1[4];
  v6 = [getUNUserNotificationCenterClass() currentNotificationCenter];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v7 = getUNNotificationResponseClass_softClass;
  v14 = getUNNotificationResponseClass_softClass;
  if (!getUNNotificationResponseClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getUNNotificationResponseClass_block_invoke;
    *&buf[24] = &unk_278B7E070;
    *&buf[32] = &v11;
    __getUNNotificationResponseClass_block_invoke(buf);
    v7 = v12[3];
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);
  v9 = [v7 responseWithNotification:a1[6] actionIdentifier:{a1[5], v11}];
  [v5 userNotificationCenter:v6 didReceiveNotificationResponse:v9 withCompletionHandler:&__block_literal_global_566];

  return [SPRemoteInterface didFinishHandlingActivity:a1[7]];
}

- (void)rootInterfaceController:(id)controller performActionWithItemID:(id)d forNotificationID:(id)iD userInfo:(id)info clientIdentifier:(id)identifier completionHandler:(id)handler
{
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  infoCopy = info;
  userInfo = [infoCopy objectForKeyedSubscript:@"nC"];
  v17 = [infoCopy objectForKeyedSubscript:@"nD"];
  v18 = [infoCopy objectForKeyedSubscript:@"nUD"];

  if (v18)
  {
    v19 = MEMORY[0x277CCAAC8];
    getUNNotificationClass();
    v36 = 0;
    v20 = [v19 unarchivedObjectOfClass:objc_opt_class() fromData:v18 error:&v36];
    v21 = v36;
    v22 = v21;
    if (!v20)
    {
      v23 = wk_default_log(v21);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [SPRemoteInterface rootInterfaceController:performActionWithItemID:forNotificationID:userInfo:clientIdentifier:completionHandler:];
      }
    }
  }

  if (v17)
  {
    v35 = 0;
    v24 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v17 error:&v35];
    v25 = v35;
    v26 = v25;
    v27 = controllerCopy;
    if (!v24)
    {
      v28 = wk_default_log(v25);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [SPRemoteInterface rootInterfaceController:performActionWithItemID:forNotificationID:userInfo:clientIdentifier:completionHandler:];
      }
    }
  }

  else
  {
    v24 = 0;
    v27 = controllerCopy;
  }

  v29 = dCopy;
  if (!userInfo)
  {
    request = [0 request];
    content = [request content];
    userInfo = [content userInfo];

    v29 = dCopy;
  }

  v32 = [(SPRemoteInterface *)self _interfaceControllerWithID:v27];
  if (![(SPRemoteInterface *)self _handleAction:v29 forNotification:iDCopy remoteNotificationContext:userInfo localNotification:v24 unNotification:0 handler:0 controller:v32])
  {
    [(SPRemoteInterface *)self _handleAction:v29 forNotification:iDCopy remoteNotificationContext:userInfo localNotification:v24 unNotification:0 handler:v32 controller:v32];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)getComplicationData:(id)data
{
  v13 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = wk_default_log(dataCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[SPRemoteInterface getComplicationData:]";
    v9 = 1024;
    v10 = 4391;
    v11 = 2114;
    v12 = dataCopy;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ComF:->Plugin, %{public}@", buf, 0x1Cu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SPRemoteInterface_getComplicationData___block_invoke;
  v6[3] = &unk_278B7E200;
  v6[4] = self;
  spUtils_dispatchAsyncToMainThread(v6);
}

uint64_t __41__SPRemoteInterface_getComplicationData___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 8);

    return [v3 getComplicationData:?];
  }

  return result;
}

- (void)_fillDataWithRandom:(id)random length:(int64_t)length
{
  randomCopy = random;
  if ((_fillDataWithRandom_length__inited & 1) == 0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    srand(v6);
    _fillDataWithRandom_length__inited = 1;
  }

  lengthCopy = length + 3;
  if (length >= 0)
  {
    lengthCopy = length;
  }

  if (length >= 4)
  {
    v8 = 0;
    v9 = lengthCopy >> 2;
    do
    {
      v10 = rand();
      [randomCopy replaceBytesInRange:v8 withBytes:{4, &v10}];
      v8 += 4;
      --v9;
    }

    while (v9);
  }
}

- (id)controllerMethods:(id)methods
{
  methodsCopy = methods;
  array = [MEMORY[0x277CBEB18] array];
  outCount = 0;
  Class = object_getClass(methodsCopy);
  v6 = class_copyMethodList(Class, &outCount);
  if (v6)
  {
    v7 = v6;
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        Name = method_getName(v7[i]);
        v9 = [MEMORY[0x277CCAE60] valueWithBytes:&Name objCType:":"];
        [array addObject:v9];
      }
    }

    free(v7);
  }

  return array;
}

void __38__SPRemoteInterface__remoteIdentifier__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __36__SPRemoteInterface_initWithBundle___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_setupSignal:handler:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)sendData:clientIdentifiers:reply:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 623;
  _os_log_debug_impl(&dword_23B338000, v0, OS_LOG_TYPE_DEBUG, "%{public}s:%d: ComF:->ComD", v1, 0x12u);
}

- (void)sendData:clientIdentifiers:reply:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)sendPlist:clientIdentifiers:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)sendPlist:clientIdentifiers:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_requestTimingData:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)fetchNotificationForNotificationID:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __67__SPRemoteInterface_fetchNotificationForNotificationID_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __67__SPRemoteInterface_fetchNotificationForNotificationID_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)updateUserActivity:userInfo:webpageURL:controller:.cold.1()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v2);
}

- (void)sendCacheRequestMessage:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)sendCacheRequestMessage:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)sendCacheRequest:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)controller:pushInterfaceController:initializationContextID:.cold.1()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v2);
}

- (void)controllerPop:.cold.1()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v2);
}

- (void)controllerPopToRoot:.cold.1()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v2);
}

- (void)controllerBecomeCurrentPage:.cold.1()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v2);
}

- (void)controller:presentInterfaceController:initializationContextID:.cold.1()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v2);
}

- (void)controller:presentInterfaceControllers:initializationContextIDs:.cold.1()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v2);
}

- (void)controllerDismiss:.cold.1()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (controller:%{public}@) has no client identifier", v2);
}

- (void)controllerPresentTextInputController:allowedInputMode:suggestions:.cold.1()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (object:%{public}@) has no client identifier", v2);
}

- (void)controllerDismissTextInputController:.cold.1()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (object:%{public}@) has no client identifier", v2);
}

- (void)controllerPresentAddPassesController:passes:.cold.1()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (object:%{public}@) has no client identifier", v2);
}

- (void)controllerDismissAddPassesController:.cold.1()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (object:%{public}@) has no client identifier", v2);
}

- (void)didFinishHandlingActivity:.cold.1()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (object:%{public}@) has no client identifier", v2);
}

- (void)notificationController:showNotificationInterfaceType:.cold.1()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:<-Plugin controller ID %{public}@ (object:%{public}@) has no client identifier", v2);
}

- (void)_tellApplicationThatInterfaceControllerCantBeFound:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_interfaceControllerWithID:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  *a3 = 136446978;
  *(a3 + 4) = "[SPRemoteInterface _interfaceControllerWithID:]";
  *(a3 + 12) = 1024;
  OUTLINED_FUNCTION_6(a1, a2, a3);
  _os_log_error_impl(&dword_23B338000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%d: ComF: interfaceController for interfaceControllerID:%{public}@ not found (clientIdentifier=%{public}@)", v4, 0x26u);
}

- (void)_interfaceControllerID:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  *a3 = 136446978;
  *(a3 + 4) = "[SPRemoteInterface _interfaceControllerID:]";
  *(a3 + 12) = 1024;
  OUTLINED_FUNCTION_6(a1, a2, a3);
  _os_log_error_impl(&dword_23B338000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%d: ComF: interfaceControllerID for controller:%{public}@ not found (clientIdentifier=%{public}@)", v4, 0x26u);
}

- (void)_interfaceControllerClientIDForControllerID:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __45__SPRemoteInterface__dumpInterfaceDictionary__block_invoke_cold_1(uint64_t a1)
{
  [*(*a1 + 32) count];
  [*(*a1 + 40) count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __45__SPRemoteInterface__dumpInterfaceDictionary__block_invoke_cold_2(uint64_t a1)
{
  [*(*a1 + 32) count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

- (void)receiveData:fromIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)handleProtoPlist:fromIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)handlePlistDictionary:fromIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)handlePlistDictionary:fromIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)handlePlistDictionary:fromIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)handlePlistDictionary:fromIdentifier:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)handlePlistDictionary:fromIdentifier:.cold.5()
{
  v2 = 136446978;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: ComF:->Plugin method %{public}@ is not implemented by the controller %{public}@", v2);
}

- (void)handlePlistDictionary:(void *)a1 fromIdentifier:(uint64_t)a2 .cold.6(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

- (void)createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __115__SPRemoteInterface_createViewController_className_properties_contextID_info_gestureDescriptions_clientIdentifier___block_invoke_531_cold_1()
{
  LODWORD(v2) = 136446978;
  *(&v2 + 4) = "[SPRemoteInterface createViewController:className:properties:contextID:info:gestureDescriptions:clientIdentifier:]_block_invoke";
  WORD6(v2) = 1024;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4(&dword_23B338000, v0, v1, "%{public}s:%d: Got error fetching notification context for notification with ID %{public}@: %{public}@", v2);
}

- (void)activateViewController:clientIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)deactivateViewController:clientIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __94__SPRemoteInterface_applicationDidReceiveNotification_clientIdentifier_withCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_handleAction:forNotification:remoteNotificationContext:localNotification:unNotification:handler:controller:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getUNNotificationDefaultActionIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"SPRemoteInterface.m" lineNumber:94 description:{@"%s", dlerror()}];

  __break(1u);
}

void __129__SPRemoteInterface__handleAction_forNotification_remoteNotificationContext_localNotification_unNotification_handler_controller___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)rootInterfaceController:performActionWithItemID:forNotificationID:userInfo:clientIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)rootInterfaceController:performActionWithItemID:forNotificationID:userInfo:clientIdentifier:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end