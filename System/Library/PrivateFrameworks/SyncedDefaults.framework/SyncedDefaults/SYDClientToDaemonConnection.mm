@interface SYDClientToDaemonConnection
+ (BOOL)hasPerformedAppLaunchSyncForStoreIdentifier:(id)identifier;
+ (BOOL)isCloudSyncUserDefaultEnabledForStoreIdentifier:(id)identifier;
+ (id)allStoreIdentifiersWithError:(id *)error;
+ (id)clientProtocolInterface;
+ (id)connection;
+ (id)connectionUsingTestServer:(BOOL)server;
+ (id)daemonProtocolInterface;
+ (id)defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:(id)identifier;
+ (id)disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier:(id)identifier;
+ (id)newXPCConnection;
+ (void)processAccountChangesWithCompletionHandler:(id)handler;
+ (void)removeUnitTestSyncManagers;
+ (void)setCloudSyncUserDefaultEnabled:(BOOL)enabled storeIdentifier:(id)identifier;
+ (void)setHasPerformedAppLaunchSyncForStoreIdentifier:(id)identifier;
+ (void)synchronizeStoresWithIdentifiers:(id)identifiers type:(int64_t)type testConfiguration:(id)configuration completionHandler:(id)handler;
- (BOOL)getObject:(id *)object forKey:(id)key error:(id *)error;
- (BOOL)isUIFrameworkLinkedInDaemon;
- (BOOL)removeObjectForKey:(id)key error:(id *)error;
- (BOOL)setObject:(id)object forKey:(id)key error:(id *)error;
- (BOOL)validateKey:(id)key error:(id *)error;
- (NSString)storeIdentifier;
- (NSXPCConnection)xpcConnection;
- (SYDClientToDaemonConnection)init;
- (SYDClientToDaemonConnection)initWithStoreConfiguration:(id)configuration;
- (SYDClientToDaemonConnection)initWithStoreIdentifier:(id)identifier type:(int64_t)type;
- (SYDClientToDaemonConnectionDelegate)delegate;
- (__CFDictionary)copyDictionary;
- (id)_cachedObjectForKey:(id)key;
- (id)changeToken;
- (id)containerIDFromDaemonWithError:(id *)error;
- (id)copyDictionaryWithoutNullValues:(id)values;
- (id)description;
- (id)dictionaryRepresentationWithError:(id *)error;
- (id)objectForKey:(id)key error:(id *)error;
- (id)personaUniqueString;
- (int64_t)storeType;
- (unsigned)_synchronize:(BOOL)_synchronize;
- (void)___For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist___;
- (void)___NSUbiquitousKeyValueStore_isnt_sure_exactly_what_you_did_but_it_was_invalid___:(id)store_isnt_sure_exactly_what_you_did_but_it_was_invalid___;
- (void)___Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore___:(id)store___;
- (void)___We_looked_everywhere_but_we_cant_find_your_store_identifier___;
- (void)___You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore___;
- (void)___You_are_not_entitled_for_NSUbiquitousKeyValueStore___;
- (void)___You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore___;
- (void)___You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again___;
- (void)___Your_store_identifier_is_empty___;
- (void)_clearCachedObjects;
- (void)_daemonWithOptions:(int64_t)options retries:(unint64_t)retries errorHandler:(id)handler daemonHandler:(id)daemonHandler;
- (void)_handleCacheErrorForKey:(id)key;
- (void)applicationWillEnterForeground;
- (void)changeToken;
- (void)daemonDidWake;
- (void)daemonWithOptions:(int64_t)options errorHandler:(id)handler daemonHandler:(id)daemonHandler;
- (void)dealloc;
- (void)deleteDataFromDisk;
- (void)exit:(id)exit;
- (void)logFaultIfNecessaryForError:(id)error;
- (void)performOpportunisticAppLaunchSyncIfNecessary;
- (void)postFakeAccountChangeNotificationWithCompletionHandler:(id)handler;
- (void)postFakeSyncManagerChangeNotificationWithCompletionHandler:(id)handler;
- (void)processChangeDictionary:(id)dictionary;
- (void)registerForApplicationLifecycleEvents;
- (void)registerForDaemonDidWakeNotifications;
- (void)registerForSynchronizedDefaults;
- (void)setChangeToken:(id)token;
- (void)setFakeError:(id)error forNextCloudKitRequestOfClassName:(id)name inStoreWithConfiguration:(id)configuration;
- (void)storeDidChangeWithStoreID:(id)d changeDictionary:(id)dictionary;
- (void)synchronizationWithCompletionHandler:(id)handler;
@end

@implementation SYDClientToDaemonConnection

- (NSString)storeIdentifier
{
  storeConfiguration = [(SYDClientToDaemonConnection *)self storeConfiguration];
  storeID = [storeConfiguration storeID];
  identifier = [storeID identifier];

  return identifier;
}

- (void)registerForSynchronizedDefaults
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)registerForApplicationLifecycleEvents
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)registerForDaemonDidWakeNotifications
{
  objc_initWeak(&location, self);
  queue = [(SYDClientToDaemonConnection *)self queue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__SYDClientToDaemonConnection_registerForDaemonDidWakeNotifications__block_invoke;
  v4[3] = &unk_1E831AA08;
  objc_copyWeak(&v5, &location);
  notify_register_dispatch("com.apple.syncdefaultsd.daemon.wake", &self->_daemonWakeNotifyToken, queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)performOpportunisticAppLaunchSyncIfNecessary
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 5000000000);
  queue = [(SYDClientToDaemonConnection *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__SYDClientToDaemonConnection_performOpportunisticAppLaunchSyncIfNecessary__block_invoke;
  v5[3] = &unk_1E831AA58;
  objc_copyWeak(&v6, &location);
  dispatch_after(v3, queue, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (NSXPCConnection)xpcConnection
{
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  xpcConnection = selfCopy->_xpcConnection;
  if (!xpcConnection)
  {
    v5 = SYDGetConnectionLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C8626000, v5, OS_LOG_TYPE_INFO, "Creating new XPC connection", buf, 2u);
    }

    objc_initWeak(buf, selfCopy);
    v6 = [objc_opt_class() connectionUsingTestServer:{-[SYDClientToDaemonConnection useTestServer](selfCopy, "useTestServer")}];
    v7 = selfCopy->_xpcConnection;
    selfCopy->_xpcConnection = v6;

    [(NSXPCConnection *)selfCopy->_xpcConnection setInterruptionHandler:&__block_literal_global_345];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__SYDClientToDaemonConnection_xpcConnection__block_invoke_346;
    v13[3] = &unk_1E831AA58;
    objc_copyWeak(&v14, buf);
    [(NSXPCConnection *)selfCopy->_xpcConnection setInvalidationHandler:v13];
    v8 = +[SYDClientToDaemonConnection clientProtocolInterface];
    [(NSXPCConnection *)selfCopy->_xpcConnection setExportedInterface:v8];

    v9 = [[SYDClientProtocolProxy alloc] initWithTarget:selfCopy];
    [(NSXPCConnection *)selfCopy->_xpcConnection setExportedObject:v9];

    v10 = +[SYDClientToDaemonConnection daemonProtocolInterface];
    [(NSXPCConnection *)selfCopy->_xpcConnection setRemoteObjectInterface:v10];

    [(NSXPCConnection *)selfCopy->_xpcConnection resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
    xpcConnection = selfCopy->_xpcConnection;
  }

  v11 = xpcConnection;
  objc_sync_exit(selfCopy);

  return v11;
}

uint64_t __54__SYDClientToDaemonConnection_clientProtocolInterface__block_invoke()
{
  clientProtocolInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48453E8];

  return MEMORY[0x1EEE66BB8]();
}

void __54__SYDClientToDaemonConnection_daemonProtocolInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4846E68];
  v1 = [MEMORY[0x1E695DF90] dictionary];
  v2 = NSStringFromSelector(sel_setObject_forKey_inStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v2];

  v3 = NSStringFromSelector(sel_objectForKey_inStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E20 forKeyedSubscript:v3];

  v4 = NSStringFromSelector(sel_removeObjectForKey_inStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v4];

  v5 = NSStringFromSelector(sel_dictionaryRepresentationForStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E20 forKeyedSubscript:v5];

  v6 = NSStringFromSelector(sel_registerForChangeNotificationsForStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v6];

  v7 = NSStringFromSelector(sel_changeDictionarySinceChangeToken_inStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E20 forKeyedSubscript:v7];

  v8 = NSStringFromSelector(sel_changeTokenForStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E20 forKeyedSubscript:v8];

  v9 = NSStringFromSelector(sel_saveChangeToken_forStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v9];

  v10 = NSStringFromSelector(sel_synchronizeStoreWithConfiguration_completionHandler_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v10];

  v11 = NSStringFromSelector(sel_processAccountChangesWithCompletionHandler_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v11];

  v12 = NSStringFromSelector(sel_deleteDataFromDiskForStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v12];

  v13 = NSStringFromSelector(sel_postFakeAccountChangeNotificationWithCompletionHandler_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v13];

  v14 = NSStringFromSelector(sel_postFakeSyncManagerChangeNotificationForStoreWithConfiguration_completionHandler_);
  [v1 setObject:0 forKeyedSubscript:v14];

  v15 = NSStringFromSelector(sel_setFakeError_forNextCloudKitRequestOfClassName_inStoreWithConfiguration_);
  [v1 setObject:0 forKeyedSubscript:v15];

  v16 = NSStringFromSelector(sel_personaUniqueStringWithReply_);
  [v1 setObject:0 forKeyedSubscript:v16];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__SYDClientToDaemonConnection_daemonProtocolInterface__block_invoke_336;
  v20[3] = &unk_1E831AB70;
  v17 = v0;
  v21 = v17;
  [v1 enumerateKeysAndObjectsUsingBlock:v20];

  v18 = CKErrorUserInfoClasses();
  [v17 setClasses:v18 forSelector:sel_setFakeError_forNextCloudKitRequestOfClassName_inStoreWithConfiguration_ argumentIndex:0 ofReply:0];

  v19 = daemonProtocolInterface_interface;
  daemonProtocolInterface_interface = v17;
}

+ (id)clientProtocolInterface
{
  if (clientProtocolInterface_onceToken != -1)
  {
    +[SYDClientToDaemonConnection clientProtocolInterface];
  }

  v3 = clientProtocolInterface_interface;

  return v3;
}

+ (id)daemonProtocolInterface
{
  if (daemonProtocolInterface_onceToken != -1)
  {
    +[SYDClientToDaemonConnection daemonProtocolInterface];
  }

  v3 = daemonProtocolInterface_interface;

  return v3;
}

void __54__SYDClientToDaemonConnection_daemonProtocolInterface__block_invoke_336(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v9 = SYDErrorUserInfoClasses();
  v7 = NSSelectorFromString(v6);

  v8 = [v5 integerValue];
  [v4 setClasses:v9 forSelector:v7 argumentIndex:v8 ofReply:1];
}

- (SYDClientToDaemonConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)changeToken
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v3 = _os_activity_create(&dword_1C8626000, "kvs/get-change-token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v5 = SYDGetConnectionLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SYDClientToDaemonConnection changeToken];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__SYDClientToDaemonConnection_changeToken__block_invoke;
  v11[3] = &unk_1E831A600;
  v11[4] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__SYDClientToDaemonConnection_changeToken__block_invoke_2;
  v10[3] = &unk_1E831A7E0;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = &v19;
  v6 = [(SYDClientToDaemonConnection *)self daemonWithOptions:1 errorHandler:v11 daemonHandler:v10];
  if (v13[5])
  {
    v7 = SYDGetConnectionLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SYDClientToDaemonConnection changeToken];
    }
  }

  else
  {
    v7 = SYDGetConnectionLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SYDClientToDaemonConnection changeToken];
    }
  }

  v8 = v20[5];
  _Block_object_dispose(&v12, 8);

  os_activity_scope_leave(&state);
  _Block_object_dispose(&v19, 8);

  return v8;
}

- (void)changeToken
{
  OUTLINED_FUNCTION_17(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Error getting change token from daemon: %@", v2, v3, v4, v5);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  storeConfiguration = [(SYDClientToDaemonConnection *)self storeConfiguration];
  v7 = [v3 stringWithFormat:@"<%@: %p storeConfiguration=%@>", v5, self, storeConfiguration];;

  return v7;
}

void __42__SYDClientToDaemonConnection_changeToken__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeConfiguration];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__SYDClientToDaemonConnection_changeToken__block_invoke_3;
  v6[3] = &unk_1E831A808;
  v7 = *(a1 + 40);
  [v4 changeTokenForStoreWithConfiguration:v5 reply:v6];
}

void __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke_216(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 storeConfiguration];
  [v3 registerForChangeNotificationsForStoreWithConfiguration:v4 reply:&__block_literal_global_218];
}

void __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke_2_cold_2();
  }
}

void __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)applicationWillEnterForeground
{
  queue = [(SYDClientToDaemonConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__SYDClientToDaemonConnection_applicationWillEnterForeground__block_invoke;
  block[3] = &unk_1E831A5D8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __61__SYDClientToDaemonConnection_applicationWillEnterForeground__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) storeIdentifier];
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C8626000, v2, OS_LOG_TYPE_INFO, "Performing moved to foreground sync for store <(%@)>", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SYDClientToDaemonConnection_applicationWillEnterForeground__block_invoke_226;
  v6[3] = &unk_1E831AA30;
  v6[4] = v4;
  return [v4 synchronizationWithCompletionHandler:v6];
}

void __42__SYDClientToDaemonConnection_changeToken__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __61__SYDClientToDaemonConnection_applicationWillEnterForeground__block_invoke_226(uint64_t a1)
{
  v2 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__SYDClientToDaemonConnection_applicationWillEnterForeground__block_invoke_226_cold_1(a1);
  }
}

void __61__SYDClientToDaemonConnection_applicationWillEnterForeground__block_invoke_226_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) storeIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __75__SYDClientToDaemonConnection_performOpportunisticAppLaunchSyncIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained storeIdentifier];
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v4 processName];
    v6 = [v5 isEqualToString:@"cfprefsd"];

    if ((v6 & 1) == 0)
    {
      v7 = [MEMORY[0x1E69C75D0] currentProcess];
      v8 = [v7 isApplication];

      if (v8)
      {
        if (([objc_opt_class() hasPerformedAppLaunchSyncForStoreIdentifier:v3] & 1) == 0)
        {
          v9 = [v2 storeConfiguration];
          v10 = [v9 storeID];
          v11 = [v10 testConfiguration];
          if (v11)
          {
            v12 = v11;
            v13 = [objc_opt_class() shouldSyncOnFirstInitializationOverride];
            v14 = [v13 BOOLValue];

            if ((v14 & 1) == 0)
            {
              v16 = SYDGetConnectionLog(v15);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                __75__SYDClientToDaemonConnection_performOpportunisticAppLaunchSyncIfNecessary__block_invoke_cold_1();
              }

              goto LABEL_14;
            }
          }

          else
          {
          }

          v17 = [objc_opt_class() setHasPerformedAppLaunchSyncForStoreIdentifier:v3];
          v18 = SYDGetConnectionLog(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            __75__SYDClientToDaemonConnection_performOpportunisticAppLaunchSyncIfNecessary__block_invoke_cold_2();
          }

          [v2 synchronizationWithCompletionHandler:0];
        }
      }
    }

LABEL_14:
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (SYDClientToDaemonConnection)initWithStoreIdentifier:(id)identifier type:(int64_t)type
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    selfCopy = identifierCopy;
  }

  else
  {
    selfCopy = [objc_opt_class() defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:0];
    if (!selfCopy)
    {
      [(SYDClientToDaemonConnection *)self ___We_looked_everywhere_but_we_cant_find_your_store_identifier];
      goto LABEL_8;
    }
  }

  if ([(SYDClientToDaemonConnection *)selfCopy length])
  {
    v8 = [[SYDStoreID alloc] initWithIdentifier:selfCopy type:type];
    v9 = [[SYDStoreConfiguration alloc] initWithStoreID:v8];
    self = [(SYDClientToDaemonConnection *)self initWithStoreConfiguration:v9];

    selfCopy = self;
  }

  else
  {
    [(SYDClientToDaemonConnection *)self ___Your_store_identifier_is_empty];

    selfCopy = 0;
  }

LABEL_8:

  return selfCopy;
}

- (SYDClientToDaemonConnection)initWithStoreConfiguration:(id)configuration
{
  v40 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v7 = configurationCopy;
  if (!configurationCopy)
  {
    [(SYDClientToDaemonConnection *)self initWithStoreConfiguration:a2];
  }

  v8 = SYDGetConnectionLog(configurationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    storeID = [v7 storeID];
    identifier = [storeID identifier];
    *buf = 138412802;
    v35 = v10;
    v36 = 2112;
    v37 = v7;
    v38 = 2112;
    v39 = identifier;
    _os_log_impl(&dword_1C8626000, v8, OS_LOG_TYPE_INFO, "Initializing %@ with configuration %@ store <(%@)>", buf, 0x20u);
  }

  v33.receiver = self;
  v33.super_class = SYDClientToDaemonConnection;
  v13 = [(SYDClientToDaemonConnection *)&v33 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_storeConfiguration, configuration);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.kvs.client", v15);
    queue = v14->_queue;
    v14->_queue = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.kvs.client.callback", v18);
    callbackQueue = v14->_callbackQueue;
    v14->_callbackQueue = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_attr_make_with_qos_class(v21, 0xFFFF8000, -15);

    v23 = dispatch_queue_create("com.apple.kvs.client.analytics", v22);
    analyticsQueue = v14->_analyticsQueue;
    v14->_analyticsQueue = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedObjects = v14->_cachedObjects;
    v14->_cachedObjects = v25;

    v27 = objc_alloc_init(MEMORY[0x1E696AD10]);
    cacheLock = v14->_cacheLock;
    v14->_cacheLock = v27;

    v14->_hasFullCachedDictionary = 0;
    v14->_syncingWithCloudCounter = 0;
    v14->_needsChangeDictionaryFromDaemon = 1;
    v14->_useTestServer = [objc_opt_class() useTestServerByDefault];
    [(SYDClientToDaemonConnection *)v14 registerForDaemonDidWakeNotifications];
    [(SYDClientToDaemonConnection *)v14 registerForApplicationLifecycleEvents];
    [(SYDClientToDaemonConnection *)v14 performOpportunisticAppLaunchSyncIfNecessary];
    queue = [(SYDClientToDaemonConnection *)v14 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SYDClientToDaemonConnection_initWithStoreConfiguration___block_invoke;
    block[3] = &unk_1E831A5D8;
    v32 = v14;
    dispatch_async(queue, block);
  }

  return v14;
}

- (SYDClientToDaemonConnection)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(sel_initWithStoreIdentifier_type_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDClientToDaemonConnection.m" lineNumber:130 description:{@"Please use -%@", v5}];

  return 0;
}

- (int64_t)storeType
{
  storeConfiguration = [(SYDClientToDaemonConnection *)self storeConfiguration];
  storeID = [storeConfiguration storeID];
  type = [storeID type];

  return type;
}

+ (id)allStoreIdentifiersWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1C8626000, "kvs/all-store-identifiers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  newXPCConnection = [self newXPCConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__SYDClientToDaemonConnection_allStoreIdentifiersWithError___block_invoke;
  v17[3] = &unk_1E831A600;
  v17[4] = &v18;
  v7 = [newXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__SYDClientToDaemonConnection_allStoreIdentifiersWithError___block_invoke_25;
  v10[3] = &unk_1E831A628;
  v10[4] = &v11;
  v10[5] = &v18;
  [v7 allStoreIdentifiersWithCompletionHandler:v10];
  if (error)
  {
    *error = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);
  os_activity_scope_leave(&state);

  return v8;
}

void __60__SYDClientToDaemonConnection_allStoreIdentifiersWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SYDGetConnectionLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__SYDClientToDaemonConnection_allStoreIdentifiersWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __60__SYDClientToDaemonConnection_allStoreIdentifiersWithError___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (id)defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    bundleIdentifier = identifierCopy;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (!bundleIdentifier)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      bundleIdentifier = [processInfo processName];
    }
  }

  v8 = SYDGetConnectionLog(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[SYDClientToDaemonConnection defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:];
  }

  v9 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v9)
  {
    v10 = v9;
    v11 = SecTaskCopyValueForEntitlement(v9, @"com.apple.developer.ubiquity-kvstore-identifier", 0);
    CFRelease(v10);
    v13 = SYDGetConnectionLog(v12);
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        +[SYDClientToDaemonConnection defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:];
      }

LABEL_19:

      goto LABEL_21;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SYDClientToDaemonConnection defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:];
    }
  }

  else
  {
    v14 = SYDGetConnectionLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[SYDClientToDaemonConnection defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:];
    }
  }

  if (bundleIdentifier)
  {
    v15 = [self disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier:bundleIdentifier];
    v11 = v15;
    if (!v15)
    {
      goto LABEL_21;
    }

    v14 = SYDGetConnectionLog(v15);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[SYDClientToDaemonConnection defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:];
    }

    goto LABEL_19;
  }

  v11 = 0;
LABEL_21:

  return v11;
}

+ (id)disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier:(id)identifier
{
  v3 = disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier__onceToken;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    +[SYDClientToDaemonConnection disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier:];
  }

  v5 = [disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier__specialStoreIdentifiersByApplicationIdentifier objectForKeyedSubscript:identifierCopy];

  return v5;
}

void __99__SYDClientToDaemonConnection_disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier___block_invoke()
{
  v3[21] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.sbd";
  v2[1] = @"com.apple.security.cloudkeychainproxy3";
  v3[0] = @"com.apple.sbd3";
  v3[1] = @"com.apple.security.cloudkeychainproxy3";
  v2[2] = @"accountsd";
  v2[3] = @"com.apple.finder";
  v3[2] = @"com.apple.accounts";
  v3[3] = @"com.apple.finder";
  v2[4] = @"com.apple.VoiceOverTouch";
  v2[5] = @"com.apple.TextInput.kbd";
  v3[4] = @"com.apple.VoiceOverTouch";
  v3[5] = @"com.apple.inputmethod.kbd";
  v2[6] = @"com.apple.nanoweatherprefsd";
  v2[7] = @"com.apple.springboard";
  v3[6] = @"com.apple.weather";
  v3[7] = @"com.apple.springboard";
  v2[8] = @"com.apple.backboardd";
  v2[9] = @"com.apple.datamigrator";
  v3[8] = @"com.apple.backboardd";
  v3[9] = @"com.apple.datamigrator";
  v2[10] = @"com.apple.CoreSuggestions";
  v2[11] = @"com.apple.cmfsyncagent";
  v3[10] = @"com.apple.CoreSuggestions";
  v3[11] = @"com.apple.cmfsyncagent";
  v2[12] = @"com.apple.accessibility.heard";
  v2[13] = @"wifid";
  v3[12] = @"com.apple.HearingAids";
  v3[13] = @"com.apple.wifid.known-networks";
  v2[14] = @"com.apple.wifi.manager";
  v2[15] = @"com.apple.wifid";
  v3[14] = @"com.apple.wifid.known-networks";
  v3[15] = @"com.apple.wifid.known-networks";
  v2[16] = @"com.apple.wifi.WiFiAgent";
  v2[17] = @"com.apple.coretelephony";
  v3[16] = @"com.apple.wifid.known-networks";
  v3[17] = @"com.apple.coretelephony";
  v2[18] = @"com.apple.mediaaccessibilityd";
  v2[19] = @"com.apple.tipsd";
  v3[18] = @"com.apple.mediaaccessibility";
  v3[19] = @"com.apple.tipsd";
  v2[20] = @"com.apple.touristd";
  v3[20] = @"com.apple.touristd";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:21];
  v1 = disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier__specialStoreIdentifiersByApplicationIdentifier;
  disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier__specialStoreIdentifiersByApplicationIdentifier = v0;
}

- (void)_handleCacheErrorForKey:(id)key
{
  keyCopy = key;
  queue = [(SYDClientToDaemonConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  cacheLock = [(SYDClientToDaemonConnection *)self cacheLock];
  [cacheLock lock];

  cachedObjects = [(SYDClientToDaemonConnection *)self cachedObjects];
  [cachedObjects removeObjectForKey:keyCopy];

  cacheLock2 = [(SYDClientToDaemonConnection *)self cacheLock];
  [cacheLock2 unlock];
}

- (BOOL)setObject:(id)object forKey:(id)key error:(id *)error
{
  v74 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  v9 = _os_activity_create(&dword_1C8626000, "kvs/set-object", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = SYDGetAccessorSignpostsLog();
  v11 = os_signpost_id_generate(v10);

  v12 = SYDGetAccessorSignpostsLog();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    storeIdentifier = [(SYDClientToDaemonConnection *)self storeIdentifier];
    v15 = storeIdentifier;
    uTF8String = [storeIdentifier UTF8String];
    v17 = keyCopy;
    uTF8String2 = [keyCopy UTF8String];
    *buf = 136315394;
    *&buf[4] = uTF8String;
    *&buf[12] = 2080;
    *&buf[14] = uTF8String2;
    _os_signpost_emit_with_name_impl(&dword_1C8626000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SetObject", "StoreIdentifier=%{signpost.description:attribute}s Key=%{signpost.description:attribute}s", buf, 0x16u);
  }

  v20 = SYDGetConnectionLog(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    storeIdentifier2 = [(SYDClientToDaemonConnection *)self storeIdentifier];
    *buf = 141559043;
    *&buf[4] = 1752392040;
    *&buf[12] = 2113;
    *&buf[14] = keyCopy;
    *&buf[22] = 2160;
    v72 = 1752392040;
    *v73 = 2117;
    *&v73[2] = objectCopy;
    *&v73[10] = 2112;
    *&v73[12] = storeIdentifier2;
    _os_log_impl(&dword_1C8626000, v20, OS_LOG_TYPE_INFO, "Setting object for key <(%{private, mask.hash}@)> = <(%{sensitive, mask.hash}@)> in store <(%@)>", buf, 0x34u);
  }

  v67 = 0;
  v22 = [(SYDClientToDaemonConnection *)self validateKey:keyCopy error:&v67];
  v23 = v67;
  if (v22)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v72 = __Block_byref_object_copy_;
    *v73 = __Block_byref_object_dispose_;
    *&v73[8] = 0;
    v24 = [keyCopy length];
    if (v24 > [(SYDRemotePreferencesSource *)self maximumKeyLength])
    {
      v25 = MEMORY[0x1E695DF30];
      maximumKeyLength = [(SYDRemotePreferencesSource *)self maximumKeyLength];
      [v25 raise:*MEMORY[0x1E695D940] format:{@"NSUbiquitousKeyValueStore key '%@' is longer than the maximum allowed UTF-16 code units of (%ld)", keyCopy, maximumKeyLength}];
LABEL_49:
      v28 = 0;
LABEL_50:
      _Block_object_dispose(buf, 8);

      goto LABEL_51;
    }

    storeConfiguration = [(SYDClientToDaemonConnection *)self storeConfiguration];
    storeID = [storeConfiguration storeID];
    v31 = [storeID type] == 0;

    if (v31 && [keyCopy lengthOfBytesUsingEncoding:4] >= 0xBE)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"NSUbiquitousKeyValueStore key '%@' is larger than the maximum allowed UTF-8 code units of (%ld)", keyCopy, 189}];
      goto LABEL_49;
    }

    if (objectCopy && ([MEMORY[0x1E696AE40] propertyList:objectCopy isValidForFormat:200] & 1) == 0)
    {
      v52 = MEMORY[0x1E696ABC0];
      v69 = *MEMORY[0x1E696A578];
      v70 = @"Tried to set an object that is not a valid plist value.";
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v54 = [v52 errorWithDomain:@"SyncedDefaults" code:2222 userInfo:v53];
      v55 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v54;

      if (error)
      {
        *error = *(*&buf[8] + 40);
      }

      [(SYDClientToDaemonConnection *)self ___Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore___:objectCopy];
      goto LABEL_49;
    }

    cacheLock = [(SYDClientToDaemonConnection *)self cacheLock];
    [cacheLock lock];

    cachedObjects = [(SYDClientToDaemonConnection *)self cachedObjects];
    v57 = [cachedObjects objectForKey:keyCopy];

    cacheLock2 = [(SYDClientToDaemonConnection *)self cacheLock];
    [cacheLock2 unlock];

    if (v57)
    {
      v35 = objectCopy != 0;
    }

    else
    {
      v35 = 0;
    }

    if (v35)
    {
      v36 = [v57 isEqual:objectCopy];
      if (v36)
      {
        v37 = SYDGetConnectionLog(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          [(SYDClientToDaemonConnection *)self storeIdentifier];
          objc_claimAutoreleasedReturnValue();
          [SYDClientToDaemonConnection setObject:forKey:error:];
        }

LABEL_22:

        goto LABEL_30;
      }
    }

    else if (!objectCopy)
    {
      null = [MEMORY[0x1E695DFB0] null];
      v39 = [v57 isEqual:null];

      if (v39)
      {
        v37 = SYDGetConnectionLog(v40);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          [(SYDClientToDaemonConnection *)self storeIdentifier];
          objc_claimAutoreleasedReturnValue();
          [SYDClientToDaemonConnection setObject:forKey:error:];
        }

        goto LABEL_22;
      }
    }

    queue = [(SYDClientToDaemonConnection *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke;
    block[3] = &unk_1E831A678;
    block[4] = self;
    v64 = objectCopy;
    v65 = keyCopy;
    v66 = buf;
    dispatch_sync(queue, block);

LABEL_30:
    v42 = *(*&buf[8] + 40);
    if (v42)
    {
      domain = [v42 domain];
      if (![domain isEqualToString:@"SyncedDefaults"])
      {
LABEL_36:

        goto LABEL_37;
      }

      v44 = [*(*&buf[8] + 40) code] == 6666;

      if (v44)
      {
        v46 = SYDGetConnectionLog(v45);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [SYDClientToDaemonConnection setObject:forKey:error:];
        }

        callbackQueue = [(SYDClientToDaemonConnection *)self callbackQueue];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_138;
        v60[3] = &unk_1E831A6A0;
        v61 = keyCopy;
        selfCopy = self;
        dispatch_async(callbackQueue, v60);

        domain = v61;
        goto LABEL_36;
      }
    }

LABEL_37:
    v48 = [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:*(*&buf[8] + 40)];
    if (error)
    {
      v48 = *(*&buf[8] + 40);
      *error = v48;
    }

    v49 = SYDGetConnectionLog(v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      [(SYDClientToDaemonConnection *)self storeIdentifier];
      objc_claimAutoreleasedReturnValue();
      [SYDClientToDaemonConnection setObject:forKey:error:];
    }

    v50 = SYDGetAccessorSignpostsLog();
    v51 = v50;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
    {
      *v59 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8626000, v51, OS_SIGNPOST_INTERVAL_END, v11, "SetObject", &unk_1C863C3EA, v59, 2u);
    }

    v28 = *(*&buf[8] + 40) == 0;
    goto LABEL_50;
  }

  [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:v23];
  if (error)
  {
    v27 = v23;
    v28 = 0;
    *error = v23;
  }

  else
  {
    v28 = 0;
  }

LABEL_51:

  os_activity_scope_leave(&state);
  return v28;
}

void __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 connection:*(a1 + 32) willSetObject:*(a1 + 40) forKey:*(a1 + 48)];
  }

  v4 = *(a1 + 32);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_2;
  v24[3] = &unk_1E831A600;
  v24[4] = *(a1 + 56);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_3;
  v21[3] = &unk_1E831A650;
  v5 = *(a1 + 40);
  v6 = (a1 + 48);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 32);
  *(&v8 + 1) = *(a1 + 56);
  *&v9 = v5;
  *(&v9 + 1) = v7;
  v22 = v9;
  v23 = v8;
  [v4 daemonWithOptions:1 errorHandler:v24 daemonHandler:v21];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [*v2 _handleCacheErrorForKey:*v6];
  }

  else
  {
    v10 = objc_opt_respondsToSelector();
    if (v10)
    {
      v10 = [v3 connection:*(a1 + 32) didSetObject:*(a1 + 40) forKey:*(a1 + 48)];
    }

    v11 = *(a1 + 40);
    v12 = SYDGetConnectionLog(v10);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v13)
      {
        __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_cold_1(a1 + 48, v2);
      }

      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], *(a1 + 40), 0);
      v15 = [*(a1 + 32) cacheLock];
      [v15 lock];

      v16 = [*(a1 + 32) cachedObjects];
      [v16 setObject:DeepCopy forKey:*(a1 + 48)];

      v17 = [*(a1 + 32) cacheLock];
      [v17 unlock];
    }

    else
    {
      if (v13)
      {
        __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_cold_2(a1 + 48, v2);
      }

      v18 = [*v2 cacheLock];
      [v18 lock];

      v19 = [*v2 cachedObjects];
      v20 = [MEMORY[0x1E695DFB0] null];
      [v19 setObject:v20 forKey:*v6];

      DeepCopy = [*v2 cacheLock];
      [DeepCopy unlock];
    }
  }
}

void __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v7 = [v5 storeConfiguration];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_4;
  v8[3] = &unk_1E831A600;
  v8[4] = a1[7];
  [v6 setObject:v3 forKey:v4 inStoreWithConfiguration:v7 reply:v8];
}

void __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_138(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696A9D8];
  v9[0] = &unk_1F4843DF0;
  v3 = *MEMORY[0x1E696A9E0];
  v8[0] = v2;
  v8[1] = v3;
  v7 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"SYDUbiquitousKeyValueStoreDidChangeExternallyNotification" object:*(a1 + 40) userInfo:v5];
}

- (BOOL)removeObjectForKey:(id)key error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = _os_activity_create(&dword_1C8626000, "kvs/remove-object", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = SYDGetAccessorSignpostsLog();
  v9 = os_signpost_id_generate(v8);

  v10 = SYDGetAccessorSignpostsLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    storeIdentifier = [(SYDClientToDaemonConnection *)self storeIdentifier];
    v13 = storeIdentifier;
    uTF8String = [storeIdentifier UTF8String];
    v15 = keyCopy;
    uTF8String2 = [keyCopy UTF8String];
    *buf = 136315394;
    *&buf[4] = uTF8String;
    *&buf[12] = 2080;
    *&buf[14] = uTF8String2;
    _os_signpost_emit_with_name_impl(&dword_1C8626000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RemoveObject", "StoreIdentifier=%{signpost.description:attribute}s Key=%{signpost.description:attribute}s", buf, 0x16u);
  }

  v18 = SYDGetConnectionLog(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    storeIdentifier2 = [(SYDClientToDaemonConnection *)self storeIdentifier];
    *buf = 141558531;
    *&buf[4] = 1752392040;
    *&buf[12] = 2113;
    *&buf[14] = keyCopy;
    *&buf[22] = 2112;
    v45 = storeIdentifier2;
    _os_log_impl(&dword_1C8626000, v18, OS_LOG_TYPE_INFO, "Removing object for key <(%{private, mask.hash}@)> in store <(%@)>", buf, 0x20u);
  }

  v42 = 0;
  v20 = [(SYDClientToDaemonConnection *)self validateKey:keyCopy error:&v42];
  v21 = v42;
  if (v20)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v45 = __Block_byref_object_copy_;
    v46 = __Block_byref_object_dispose_;
    v47 = 0;
    cacheLock = [(SYDClientToDaemonConnection *)self cacheLock];
    [cacheLock lock];

    cachedObjects = [(SYDClientToDaemonConnection *)self cachedObjects];
    v24 = [cachedObjects objectForKey:keyCopy];

    cacheLock2 = [(SYDClientToDaemonConnection *)self cacheLock];
    [cacheLock2 unlock];

    null = [MEMORY[0x1E695DFB0] null];
    v27 = [v24 isEqual:null];

    if (v27)
    {
      v29 = SYDGetConnectionLog(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [(SYDClientToDaemonConnection *)self storeIdentifier];
        objc_claimAutoreleasedReturnValue();
        [SYDClientToDaemonConnection removeObjectForKey:error:];
      }
    }

    else
    {
      queue = [(SYDClientToDaemonConnection *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke;
      block[3] = &unk_1E831A6F0;
      block[4] = self;
      v40 = keyCopy;
      v41 = buf;
      dispatch_sync(queue, block);
    }

    v33 = [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:*(*&buf[8] + 40)];
    if (error)
    {
      v33 = *(*&buf[8] + 40);
      *error = v33;
    }

    v34 = SYDGetConnectionLog(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [(SYDClientToDaemonConnection *)self storeIdentifier];
      objc_claimAutoreleasedReturnValue();
      [SYDClientToDaemonConnection removeObjectForKey:error:];
    }

    v35 = SYDGetAccessorSignpostsLog();
    v36 = v35;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *v38 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8626000, v36, OS_SIGNPOST_INTERVAL_END, v9, "RemoveObject", &unk_1C863C3EA, v38, 2u);
    }

    v31 = *(*&buf[8] + 40) == 0;
    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:v21];
    if (error)
    {
      v30 = v21;
      v31 = 0;
      *error = v21;
    }

    else
    {
      v31 = 0;
    }
  }

  os_activity_scope_leave(&state);
  return v31;
}

void __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 connection:*(a1 + 32) willRemoveObjectForKey:*(a1 + 40)];
  }

  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = *(v4 - 1);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke_2;
  v22[3] = &unk_1E831A600;
  v22[4] = v4[1];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke_3;
  v18 = &unk_1E831A6C8;
  v7 = v5;
  v8 = *(v4 - 1);
  v19 = v7;
  v20 = v8;
  v21 = v4[1];
  [v6 daemonWithOptions:1 errorHandler:v22 daemonHandler:&v15];
  if (*(*(v4[1] + 8) + 40))
  {
    [*v2 _handleCacheErrorForKey:{*v4, v15, v16, v17, v18}];
  }

  else
  {
    v9 = objc_opt_respondsToSelector();
    if (v9)
    {
      v9 = [v3 connection:*v2 didRemoveObjectForKey:{*v4, v15, v16, v17, v18}];
    }

    v10 = SYDGetConnectionLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke_cold_1(v4, v2);
    }

    v11 = [*v2 cacheLock];
    [v11 lock];

    v12 = [*v2 cachedObjects];
    v13 = [MEMORY[0x1E695DFB0] null];
    [v12 setObject:v13 forKey:*v4];

    v14 = [*v2 cacheLock];
    [v14 unlock];
  }
}

void __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 storeConfiguration];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke_4;
  v7[3] = &unk_1E831A600;
  v7[4] = a1[6];
  [v5 removeObjectForKey:v3 inStoreWithConfiguration:v6 reply:v7];
}

- (id)objectForKey:(id)key error:(id *)error
{
  v88 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v43 = _os_activity_create(&dword_1C8626000, "kvs/get-object", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v43, &state);
  v7 = SYDGetAccessorSignpostsLog();
  v8 = os_signpost_id_generate(v7);

  v9 = SYDGetAccessorSignpostsLog();
  v10 = v9;
  v42 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    storeIdentifier = [(SYDClientToDaemonConnection *)self storeIdentifier];
    v12 = storeIdentifier;
    uTF8String = [storeIdentifier UTF8String];
    v14 = keyCopy;
    uTF8String2 = [keyCopy UTF8String];
    *buf = 136315394;
    v77 = uTF8String;
    v78 = 2080;
    v79 = uTF8String2;
    _os_signpost_emit_with_name_impl(&dword_1C8626000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "GetObject", "StoreIdentifier=%{signpost.description:attribute}s Key=%{signpost.description:attribute}s", buf, 0x16u);
  }

  v17 = SYDGetConnectionLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [(SYDClientToDaemonConnection *)self storeIdentifier];
    objc_claimAutoreleasedReturnValue();
    [SYDClientToDaemonConnection objectForKey:error:];
  }

  v74 = 0;
  v18 = [(SYDClientToDaemonConnection *)self validateKey:keyCopy error:&v74];
  v19 = v74;
  if (v18)
  {
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy_;
    v72 = __Block_byref_object_dispose_;
    v73 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy_;
    v66 = __Block_byref_object_dispose_;
    v67 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke;
    v54[3] = &unk_1E831A718;
    v54[4] = self;
    v56 = &v62;
    v20 = keyCopy;
    v55 = v20;
    v57 = &v58;
    v21 = MEMORY[0x1CCA79010](v54);
    v21[2]();
    if ((v59[3] & 1) == 0)
    {
      queue = [(SYDClientToDaemonConnection *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_2;
      block[3] = &unk_1E831A790;
      v50 = v21;
      v51 = &v58;
      block[4] = self;
      v49 = v20;
      v52 = &v68;
      v53 = &v62;
      dispatch_sync(queue, block);
    }

    [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:v69[5]];
    storeIdentifier2 = [(SYDClientToDaemonConnection *)self storeIdentifier];
    analyticsQueue = [(SYDClientToDaemonConnection *)self analyticsQueue];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_148;
    v44[3] = &unk_1E831A6F0;
    v25 = v20;
    v45 = v25;
    v26 = storeIdentifier2;
    v46 = v26;
    v47 = &v58;
    dispatch_async(analyticsQueue, v44);

    v28 = SYDGetConnectionLog(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v41 = keyCopy;
      v29 = v8;
      errorCopy = error;
      v31 = *(v59 + 24);
      v32 = v63[5];
      storeIdentifier3 = [(SYDClientToDaemonConnection *)self storeIdentifier];
      v34 = storeIdentifier3;
      v35 = &stru_1F4842FF0;
      *buf = 138413571;
      if (v31)
      {
        v35 = @" (from cache)";
      }

      v77 = v35;
      v78 = 2160;
      v79 = 1752392040;
      v80 = 2113;
      v81 = v25;
      v82 = 2160;
      v83 = 1752392040;
      v84 = 2117;
      v85 = v32;
      v86 = 2112;
      v87 = storeIdentifier3;
      _os_log_impl(&dword_1C8626000, v28, OS_LOG_TYPE_INFO, "Returning object%@ for key <(%{private, mask.hash}@)> = <(%{sensitive, mask.hash}@)> in store <(%@)>", buf, 0x3Eu);

      error = errorCopy;
      v8 = v29;
      keyCopy = v41;
    }

    if (error)
    {
      *error = v69[5];
    }

    v36 = SYDGetAccessorSignpostsLog();
    v37 = v36;
    if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8626000, v37, OS_SIGNPOST_INTERVAL_END, v8, "GetObject", &unk_1C863C3EA, buf, 2u);
    }

    v38 = v63[5];
    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v62, 8);

    _Block_object_dispose(&v68, 8);
  }

  else
  {
    [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:v19];
    if (error)
    {
      v39 = v19;
      v38 = 0;
      *error = v19;
    }

    else
    {
      v38 = 0;
    }
  }

  os_activity_scope_leave(&state);

  return v38;
}

void __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cacheLock];
  [v2 lock];

  v3 = [*(a1 + 32) cachedObjects];
  v4 = [v3 objectForKey:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) cacheLock];
  [v7 unlock];

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v9 = [MEMORY[0x1E695DFB0] null];
    LODWORD(v8) = [v8 isEqual:v9];

    if (v8)
    {
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;
    }
  }
}

void __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v2 = (a1 + 32);
    v3 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 connection:*(a1 + 32) willGetObjectForKey:*(a1 + 40)];
    }

    v5 = (a1 + 40);
    v4 = *(a1 + 40);
    v6 = *(a1 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_3;
    v22[3] = &unk_1E831A600;
    v22[4] = *(a1 + 64);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_4;
    v18[3] = &unk_1E831A768;
    v7 = v4;
    v8 = *(a1 + 32);
    v19 = v7;
    v20 = v8;
    v21 = *(a1 + 64);
    v9 = [v6 daemonWithOptions:1 errorHandler:v22 daemonHandler:v18];
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v10 = *(*(*(a1 + 72) + 8) + 40);
      v11 = SYDGetConnectionLog(v9);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        if (v12)
        {
          __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_2_cold_1(a1 + 40, a1 + 32);
        }

        v13 = [*(a1 + 32) cacheLock];
        [v13 lock];

        v14 = [*(a1 + 32) cachedObjects];
        [v14 setObject:*(*(*(a1 + 72) + 8) + 40) forKey:*(a1 + 40)];
      }

      else
      {
        if (v12)
        {
          __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_2_cold_2(a1 + 40, a1 + 32);
        }

        v15 = [*v2 cacheLock];
        [v15 lock];

        v14 = [*v2 cachedObjects];
        v16 = [MEMORY[0x1E695DFB0] null];
        [v14 setObject:v16 forKey:*v5];
      }

      v17 = [*v2 cacheLock];
      [v17 unlock];
    }
  }
}

void __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 storeConfiguration];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_5;
  v7[3] = &unk_1E831A740;
  v8 = *(a1 + 48);
  [v5 objectForKey:v3 inStoreWithConfiguration:v6 reply:v7];
}

void __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_148(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  AnalyticsSendEventLazy();
}

id __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_2_152(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"keyHash";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "hash")}];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v9[0] = v2;
  v9[1] = v3;
  v8[1] = @"storeIdentifier";
  v8[2] = @"objectExistedInCache";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(*(v4 + 8) + 24)];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (BOOL)getObject:(id *)object forKey:(id)key error:(id *)error
{
  v12 = 0;
  v7 = [(SYDClientToDaemonConnection *)self objectForKey:key error:&v12];
  v8 = v12;
  if (object)
  {
    v9 = v7;
    *object = v7;
  }

  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  return v8 == 0;
}

- (id)_cachedObjectForKey:(id)key
{
  keyCopy = key;
  cacheLock = [(SYDClientToDaemonConnection *)self cacheLock];
  [cacheLock lock];

  cachedObjects = [(SYDClientToDaemonConnection *)self cachedObjects];
  v7 = [cachedObjects objectForKey:keyCopy];

  cacheLock2 = [(SYDClientToDaemonConnection *)self cacheLock];
  [cacheLock2 unlock];

  return v7;
}

- (void)_clearCachedObjects
{
  cacheLock = [(SYDClientToDaemonConnection *)self cacheLock];
  [cacheLock lock];

  [(SYDClientToDaemonConnection *)self setHasFullCachedDictionary:0];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(SYDClientToDaemonConnection *)self setCachedObjects:v4];

  cacheLock2 = [(SYDClientToDaemonConnection *)self cacheLock];
  [cacheLock2 unlock];
}

- (id)dictionaryRepresentationWithError:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  cacheLock = [(SYDClientToDaemonConnection *)self cacheLock];
  [cacheLock lock];

  hasFullCachedDictionary = [(SYDClientToDaemonConnection *)self hasFullCachedDictionary];
  if (hasFullCachedDictionary)
  {
    v7 = SYDGetConnectionLog(hasFullCachedDictionary);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(SYDClientToDaemonConnection *)self dictionaryRepresentationWithError:v7];
    }

    cachedObjects = [(SYDClientToDaemonConnection *)self cachedObjects];
    v9 = [(SYDClientToDaemonConnection *)self copyDictionaryWithoutNullValues:cachedObjects];

    cacheLock2 = [(SYDClientToDaemonConnection *)self cacheLock];
    [cacheLock2 unlock];
  }

  else
  {
    cacheLock3 = [(SYDClientToDaemonConnection *)self cacheLock];
    [cacheLock3 unlock];

    cacheLock2 = _os_activity_create(&dword_1C8626000, "kvs/dictionary-representation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(cacheLock2, &state);
    v12 = SYDGetAccessorSignpostsLog();
    v13 = os_signpost_id_generate(v12);

    v14 = SYDGetAccessorSignpostsLog();
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      storeIdentifier = [(SYDClientToDaemonConnection *)self storeIdentifier];
      v17 = storeIdentifier;
      uTF8String = [storeIdentifier UTF8String];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = uTF8String;
      _os_signpost_emit_with_name_impl(&dword_1C8626000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "GetDictionaryRepresentation", "StoreIdentifier=%{signpost.description:attribute}s", &buf, 0xCu);
    }

    v20 = SYDGetConnectionLog(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      storeIdentifier2 = [(SYDClientToDaemonConnection *)self storeIdentifier];
      [(SYDClientToDaemonConnection *)storeIdentifier2 dictionaryRepresentationWithError:v58, v20];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy_;
    v56 = __Block_byref_object_dispose_;
    v57 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy_;
    v43 = __Block_byref_object_dispose_;
    v44 = 0;
    delegate = [(SYDClientToDaemonConnection *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate connectionWillGetDictionaryRepresentation:self];
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __65__SYDClientToDaemonConnection_dictionaryRepresentationWithError___block_invoke;
    v38[3] = &unk_1E831A600;
    v38[4] = &v39;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __65__SYDClientToDaemonConnection_dictionaryRepresentationWithError___block_invoke_2;
    v37[3] = &unk_1E831A7E0;
    v37[4] = self;
    v37[5] = &v39;
    v37[6] = &buf;
    v23 = [(SYDClientToDaemonConnection *)self daemonWithOptions:1 errorHandler:v38 daemonHandler:v37];
    v24 = v40[5];
    if (!v24)
    {
      v25 = SYDGetConnectionLog(v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        storeIdentifier3 = [(SYDClientToDaemonConnection *)self storeIdentifier];
        [(SYDClientToDaemonConnection *)storeIdentifier3 dictionaryRepresentationWithError:v52, v25];
      }

      cacheLock4 = [(SYDClientToDaemonConnection *)self cacheLock];
      [cacheLock4 lock];

      v28 = [*(*(&buf + 1) + 40) mutableCopy];
      [(SYDClientToDaemonConnection *)self setCachedObjects:v28];

      [(SYDClientToDaemonConnection *)self setHasFullCachedDictionary:1];
      cacheLock5 = [(SYDClientToDaemonConnection *)self cacheLock];
      [cacheLock5 unlock];

      v24 = v40[5];
    }

    v30 = [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:v24];
    if (!*(*(&buf + 1) + 40))
    {
      *(*(&buf + 1) + 40) = MEMORY[0x1E695E0F8];
    }

    v31 = SYDGetConnectionLog(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      storeIdentifier4 = [(SYDClientToDaemonConnection *)self storeIdentifier];
      v33 = *(*(&buf + 1) + 40);
      *v46 = 138412803;
      v47 = storeIdentifier4;
      v48 = 2160;
      v49 = 1752392040;
      v50 = 2117;
      v51 = v33;
      _os_log_impl(&dword_1C8626000, v31, OS_LOG_TYPE_INFO, "Returning dictionary representation for store <%@>: %{sensitive, mask.hash}@", v46, 0x20u);
    }

    if (error)
    {
      *error = v40[5];
    }

    v34 = SYDGetAccessorSignpostsLog();
    v35 = v34;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *v46 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8626000, v35, OS_SIGNPOST_INTERVAL_END, v13, "GetDictionaryRepresentation", &unk_1C863C3EA, v46, 2u);
    }

    v9 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&v39, 8);

    _Block_object_dispose(&buf, 8);
    os_activity_scope_leave(&state);
  }

  return v9;
}

void __65__SYDClientToDaemonConnection_dictionaryRepresentationWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeConfiguration];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__SYDClientToDaemonConnection_dictionaryRepresentationWithError___block_invoke_3;
  v6[3] = &unk_1E831A628;
  v7 = *(a1 + 40);
  [v4 dictionaryRepresentationForStoreWithConfiguration:v5 reply:v6];
}

void __65__SYDClientToDaemonConnection_dictionaryRepresentationWithError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)copyDictionaryWithoutNullValues:(id)values
{
  v3 = [values mutableCopy];
  null = [MEMORY[0x1E695DFB0] null];
  v5 = [v3 allKeysForObject:null];

  [v3 removeObjectsForKeys:v5];
  v6 = [v3 copy];

  return v6;
}

- (__CFDictionary)copyDictionary
{
  dictionaryRepresentation = [(SYDClientToDaemonConnection *)self dictionaryRepresentation];

  return CFRetain(dictionaryRepresentation);
}

- (void)setChangeToken:(id)token
{
  tokenCopy = token;
  v5 = _os_activity_create(&dword_1C8626000, "kvs/save-change-token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = SYDGetConnectionLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SYDClientToDaemonConnection setChangeToken:];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__SYDClientToDaemonConnection_setChangeToken___block_invoke;
  v15[3] = &unk_1E831A600;
  v15[4] = &v16;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__SYDClientToDaemonConnection_setChangeToken___block_invoke_2;
  v11[3] = &unk_1E831A6C8;
  v8 = tokenCopy;
  v12 = v8;
  selfCopy = self;
  v14 = &v16;
  v9 = [(SYDClientToDaemonConnection *)self daemonWithOptions:1 errorHandler:v15 daemonHandler:v11];
  if (v17[5])
  {
    v10 = SYDGetConnectionLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SYDClientToDaemonConnection setChangeToken:];
    }
  }

  else
  {
    v10 = SYDGetConnectionLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SYDClientToDaemonConnection setChangeToken:];
    }
  }

  _Block_object_dispose(&v16, 8);
  os_activity_scope_leave(&state);
}

void __46__SYDClientToDaemonConnection_setChangeToken___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 storeConfiguration];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SYDClientToDaemonConnection_setChangeToken___block_invoke_3;
  v7[3] = &unk_1E831A600;
  v7[4] = a1[6];
  [v5 saveChangeToken:v3 forStoreWithConfiguration:v6 reply:v7];
}

- (BOOL)validateKey:(id)key error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v6 = keyCopy;
  if (keyCopy && [keyCopy length])
  {
    LOBYTE(error) = 1;
  }

  else if (error)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid key parameter provided"];
    v8 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *error = [v8 errorWithDomain:@"SyncedDefaults" code:2222 userInfo:v9];

    LOBYTE(error) = 0;
  }

  return error;
}

- (unsigned)_synchronize:(BOOL)_synchronize
{
  v5 = _os_activity_create(&dword_1C8626000, "kvs/synchronize", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  queue = [(SYDClientToDaemonConnection *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SYDClientToDaemonConnection__synchronize___block_invoke;
  v8[3] = &unk_1E831A830;
  v8[4] = self;
  v8[5] = &v16;
  _synchronizeCopy = _synchronize;
  v8[6] = &v10;
  dispatch_sync(queue, v8);

  [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:v11[5]];
  LOBYTE(self) = *(v17 + 24);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  os_activity_scope_leave(&state);

  return self;
}

void __44__SYDClientToDaemonConnection__synchronize___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) needsChangeDictionaryFromDaemon];
  v4 = v3;
  v5 = SYDGetConnectionLog(v3);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [*v2 storeIdentifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1C8626000, v6, OS_LOG_TYPE_INFO, "Synchronizing for store <(%@)>", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = 0;
    v8 = [*v2 changeToken];
    v9 = [*v2 delegate];
    if (*(a1 + 56) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v9 connectionWillSynchronize:*v2];
    }

    v10 = *(a1 + 32);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __44__SYDClientToDaemonConnection__synchronize___block_invoke_178;
    v28[3] = &unk_1E831A600;
    v28[4] = *(a1 + 48);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __44__SYDClientToDaemonConnection__synchronize___block_invoke_2;
    v23[3] = &unk_1E831A768;
    v11 = v8;
    v12 = *(a1 + 32);
    v24 = v11;
    v25 = v12;
    v26 = *(a1 + 48);
    p_buf = &buf;
    [v10 daemonWithOptions:1 errorHandler:v28 daemonHandler:v23];
    v13 = objc_opt_respondsToSelector();
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = *(*(&buf + 1) + 40);
      v16 = *(*(a1 + 48) + 8);
      obj = *(v16 + 40);
      v17 = [v9 connection:v14 didSynchronize:v15 error:&obj];
      objc_storeStrong((v16 + 40), obj);
      v18 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v17;
    }

    if (*(*(&buf + 1) + 40))
    {
      v19 = SYDGetConnectionLog(v13);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __44__SYDClientToDaemonConnection__synchronize___block_invoke_cold_2();
      }

      [*v2 setNeedsChangeDictionaryFromDaemon:0];
      [*v2 processChangeDictionary:*(*(&buf + 1) + 40)];
      v20 = 1;
    }

    else
    {
      v21 = SYDGetConnectionLog(v13);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __44__SYDClientToDaemonConnection__synchronize___block_invoke_cold_3();
      }

      v20 = 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = v20;

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __44__SYDClientToDaemonConnection__synchronize___block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __44__SYDClientToDaemonConnection__synchronize___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 storeConfiguration];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SYDClientToDaemonConnection__synchronize___block_invoke_3;
  v7[3] = &unk_1E831A628;
  v8 = *(a1 + 48);
  [v5 changeDictionarySinceChangeToken:v3 inStoreWithConfiguration:v6 reply:v7];
}

void __44__SYDClientToDaemonConnection__synchronize___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)processChangeDictionary:(id)dictionary
{
  v35 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  queue = [(SYDClientToDaemonConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v22 = dictionaryCopy;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"NSUbiquitousKeyValueStoreDidChangeExternallyNotificationUserInfo"];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A9E0]];
  v21 = v6;
  v20 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A9D8]];
  if ([v20 integerValue] == 3)
  {
    [(SYDClientToDaemonConnection *)self _clearCachedObjects];
  }

  cacheLock = [(SYDClientToDaemonConnection *)self cacheLock];
  [cacheLock lock];

  [(SYDClientToDaemonConnection *)self setHasFullCachedDictionary:0];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v15 = SYDGetConnectionLog(v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 141558275;
          v31 = 1752392040;
          v32 = 2113;
          v33 = v14;
          _os_log_debug_impl(&dword_1C8626000, v15, OS_LOG_TYPE_DEBUG, "Invalidating cached value for changed key <(%{private, mask.hash}@)>", buf, 0x16u);
        }

        cachedObjects = [(SYDClientToDaemonConnection *)self cachedObjects];
        [cachedObjects removeObjectForKey:v14];

        ++v13;
      }

      while (v11 != v13);
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
      v11 = v10;
    }

    while (v10);
  }

  cacheLock2 = [(SYDClientToDaemonConnection *)self cacheLock];
  [cacheLock2 unlock];

  if (v21)
  {
    callbackQueue = [(SYDClientToDaemonConnection *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__SYDClientToDaemonConnection_processChangeDictionary___block_invoke;
    block[3] = &unk_1E831A858;
    block[4] = self;
    v24 = v21;
    v25 = v9;
    dispatch_async(callbackQueue, block);
  }

  v19 = [v22 objectForKeyedSubscript:@"ChangeToken"];
  if (v19)
  {
    [(SYDClientToDaemonConnection *)self setChangeToken:v19];
  }
}

void __55__SYDClientToDaemonConnection_processChangeDictionary___block_invoke(uint64_t a1)
{
  v2 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __55__SYDClientToDaemonConnection_processChangeDictionary___block_invoke_cold_1(a1);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"SYDUbiquitousKeyValueStoreDidChangeExternallyNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (void)synchronizationWithCompletionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_1C8626000, "kvs/cloud-sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = SYDGetSyncSignpostsLog();
  v7 = os_signpost_id_generate(v6);

  v8 = SYDGetSyncSignpostsLog();
  v9 = v8;
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    storeIdentifier = [(SYDClientToDaemonConnection *)self storeIdentifier];
    v11 = storeIdentifier;
    uTF8String = [storeIdentifier UTF8String];
    *buf = 136315138;
    v28 = uTF8String;
    _os_signpost_emit_with_name_impl(&dword_1C8626000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Sync", "StoreIdentifier=%{signpost.description:attribute}s enableTelemetry=YES ", buf, 0xCu);
  }

  v14 = SYDGetConnectionLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    storeIdentifier2 = [(SYDClientToDaemonConnection *)self storeIdentifier];
    *buf = 138412546;
    v28 = storeIdentifier2;
    v29 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C8626000, v14, OS_LOG_TYPE_INFO, "Synchronizing with cloud for store <(%@)> %@", buf, 0x16u);
  }

  delegate = [(SYDClientToDaemonConnection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate connectionWillSynchronize:self];
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  [(SYDClientToDaemonConnection *)selfCopy2 setSyncingWithCloudCounter:[(SYDClientToDaemonConnection *)selfCopy2 syncingWithCloudCounter]+ 1];
  objc_sync_exit(selfCopy2);

  objc_initWeak(buf, selfCopy2);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke;
  v23[3] = &unk_1E831A8D0;
  objc_copyWeak(v25, buf);
  v23[4] = selfCopy2;
  v18 = handlerCopy;
  v24 = v18;
  v25[1] = v7;
  v19 = MEMORY[0x1CCA79010](v23);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_188;
  v21[3] = &unk_1E831A8F8;
  v21[4] = selfCopy2;
  v20 = v19;
  v22 = v20;
  [(SYDClientToDaemonConnection *)selfCopy2 daemonWithOptions:0 errorHandler:v20 daemonHandler:v21];

  objc_destroyWeak(v25);
  objc_destroyWeak(buf);

  os_activity_scope_leave(&state);
}

void __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SYDGetConnectionLog(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = [WeakRetained storeIdentifier];
    *buf = 138412290;
    v23 = v7;
    _os_log_impl(&dword_1C8626000, v5, OS_LOG_TYPE_INFO, "Done synchronizing with cloud for store <(%@)>", buf, 0xCu);
  }

  v8 = objc_loadWeakRetained((a1 + 48));
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    objc_sync_enter(v10);
    [v10 setSyncingWithCloudCounter:{objc_msgSend(v10, "syncingWithCloudCounter") - 1}];
    objc_sync_exit(v10);

    v11 = [v10 callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_187;
    block[3] = &unk_1E831A8A8;
    v12 = *(a1 + 40);
    block[4] = *(a1 + 32);
    block[5] = v10;
    v20 = v12;
    v13 = v3;
    v14 = *(a1 + 56);
    v19 = v13;
    v21 = v14;
    dispatch_async(v11, block);
  }

  else
  {
    v15 = SYDGetSyncSignpostsLog();
    v16 = v15;
    v17 = *(a1 + 56);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8626000, v16, OS_SIGNPOST_INTERVAL_END, v17, "Sync", &unk_1C863C3EA, buf, 2u);
    }
  }
}

void __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_187(uint64_t a1)
{
  [*(a1 + 32) setNeedsChangeDictionaryFromDaemon:1];
  [*(a1 + 40) _synchronize:0];
  v2 = [*(a1 + 40) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E831A880;
  v7 = *(a1 + 56);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v6 = v3;
  v8 = v4;
  dispatch_async(v2, block);
}

void __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4]);
  }

  v3 = SYDGetSyncSignpostsLog();
  v4 = v3;
  v5 = a1[6];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8626000, v4, OS_SIGNPOST_INTERVAL_END, v5, "Sync", &unk_1C863C3EA, v6, 2u);
  }
}

void __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_188(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeConfiguration];
  [v4 synchronizeStoreWithConfiguration:v5 completionHandler:*(a1 + 40)];
}

+ (void)synchronizeStoresWithIdentifiers:(id)identifiers type:(int64_t)type testConfiguration:(id)configuration completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  configurationCopy = configuration;
  handlerCopy = handler;
  v13 = _os_activity_create(&dword_1C8626000, "kvs/cloud-sync-multiple", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  v14 = SYDGetSyncSignpostsLog();
  v15 = os_signpost_id_generate(v14);

  v16 = SYDGetSyncSignpostsLog();
  v17 = v16;
  if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = [identifiersCopy componentsJoinedByString:{@", "}];
    v19 = v18;
    uTF8String = [v18 UTF8String];
    *buf = 136315138;
    v37 = uTF8String;
    _os_signpost_emit_with_name_impl(&dword_1C8626000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SyncMultiple", "Stores=%{signpost.description:attribute}s enableTelemetry=YES ", buf, 0xCu);
  }

  v22 = SYDGetConnectionLog(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = SYDStringForStoreType(type);
    *buf = 138412546;
    v37 = v23;
    v38 = 2112;
    v39 = identifiersCopy;
    _os_log_impl(&dword_1C8626000, v22, OS_LOG_TYPE_INFO, "Synchronizing stores of type %@ with the cloud: %@", buf, 0x16u);
  }

  newXPCConnection = [self newXPCConnection];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke;
  v33[3] = &unk_1E831A920;
  v25 = handlerCopy;
  v34 = v25;
  v26 = [newXPCConnection remoteObjectProxyWithErrorHandler:v33];
  objc_initWeak(buf, newXPCConnection);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_192;
  v29[3] = &unk_1E831A8D0;
  objc_copyWeak(v32, buf);
  v27 = identifiersCopy;
  v30 = v27;
  v28 = v25;
  v31 = v28;
  v32[1] = v15;
  [v26 synchronizeStoresWithIdentifiers:v27 type:type testConfiguration:configurationCopy completionHandler:v29];

  objc_destroyWeak(v32);
  objc_destroyWeak(buf);

  os_activity_scope_leave(&state);
}

void __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SYDGetConnectionLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_192(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = SYDGetConnectionLog(WeakRetained);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_192_cold_1();
    }

    v6 = [v3 domain];
    if ([v6 isEqual:@"SyncedDefaults"])
    {
      v7 = [v3 code];

      if (v7 != 3333)
      {
        goto LABEL_12;
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_193;
      v17[3] = &unk_1E831A5D8;
      v18 = *(a1 + 32);
      if (_block_invoke_onceToken != -1)
      {
        dispatch_once(&_block_invoke_onceToken, v17);
      }

      v6 = v18;
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v20 = v8;
    _os_log_impl(&dword_1C8626000, v6, OS_LOG_TYPE_INFO, "Done synchronizing with cloud for stores: %@", buf, 0xCu);
  }

LABEL_12:
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_194;
    block[3] = &unk_1E831A948;
    v16 = v9;
    v15 = v3;
    dispatch_async(v10, block);
  }

  v11 = SYDGetSyncSignpostsLog();
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8626000, v12, OS_SIGNPOST_INTERVAL_END, v13, "SyncMultiple", &unk_1C863C3EA, buf, 2u);
  }

  [WeakRetained setInvalidationHandler:0];
  [WeakRetained setInterruptionHandler:0];
  [WeakRetained invalidate];
}

void __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_193(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_2;
  block[3] = &unk_1E831A5D8;
  v2 = *(a1 + 32);
  if (_block_invoke_2_innerOnceToken != -1)
  {
    dispatch_once(&_block_invoke_2_innerOnceToken, block);
  }
}

void __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_2_cold_1(a1);
  }
}

+ (BOOL)isCloudSyncUserDefaultEnabledForStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _os_activity_create(&dword_1C8626000, "kvs/is-cloud-sync-enabled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  newXPCConnection = [self newXPCConnection];
  v7 = [newXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_196];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__SYDClientToDaemonConnection_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_197;
  v10[3] = &unk_1E831A990;
  v10[4] = &v11;
  [v7 isCloudSyncUserDefaultEnabledForStoreIdentifier:identifierCopy completionHandler:v10];
  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  os_activity_scope_leave(&state);
  return v8;
}

void __79__SYDClientToDaemonConnection_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __79__SYDClientToDaemonConnection_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_1();
  }
}

+ (void)setCloudSyncUserDefaultEnabled:(BOOL)enabled storeIdentifier:(id)identifier
{
  enabledCopy = enabled;
  identifierCopy = identifier;
  v7 = _os_activity_create(&dword_1C8626000, "kvs/is-cloud-sync-enabled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v7, &v12);
  if (enabledCopy)
  {
    v9 = SYDGetConnectionLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[SYDClientToDaemonConnection setCloudSyncUserDefaultEnabled:storeIdentifier:];
    }
  }

  else
  {
    v9 = SYDGetConnectionLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[SYDClientToDaemonConnection setCloudSyncUserDefaultEnabled:storeIdentifier:];
    }
  }

  newXPCConnection = [self newXPCConnection];
  v11 = [newXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_200];
  [v11 setCloudSyncUserDefaultEnabled:enabledCopy storeIdentifier:identifierCopy];

  os_activity_scope_leave(&v12);
}

void __78__SYDClientToDaemonConnection_setCloudSyncUserDefaultEnabled_storeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __78__SYDClientToDaemonConnection_setCloudSyncUserDefaultEnabled_storeIdentifier___block_invoke_cold_1();
  }
}

+ (id)connection
{
  useTestServerByDefault = [self useTestServerByDefault];

  return [self connectionUsingTestServer:useTestServerByDefault];
}

+ (id)connectionUsingTestServer:(BOOL)server
{
  if (server)
  {
    v3 = SYDGetConnectionLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C8626000, v3, OS_LOG_TYPE_INFO, "Using test server service name", v6, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.CloudKeyValuesTestingService" options:0];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.kvsd" options:0];
  }

  return v4;
}

+ (id)newXPCConnection
{
  connection = [self connection];
  [connection setInterruptionHandler:&__block_literal_global_209];
  [connection setInvalidationHandler:&__block_literal_global_212];
  v3 = +[SYDClientToDaemonConnection daemonProtocolInterface];
  [connection setRemoteObjectInterface:v3];

  [connection resume];
  return connection;
}

void __47__SYDClientToDaemonConnection_newXPCConnection__block_invoke(uint64_t a1)
{
  v1 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1C8626000, v1, OS_LOG_TYPE_INFO, "XPC connection was interrupted", v2, 2u);
  }
}

void __47__SYDClientToDaemonConnection_newXPCConnection__block_invoke_210(uint64_t a1)
{
  v1 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __47__SYDClientToDaemonConnection_newXPCConnection__block_invoke_210_cold_1();
  }
}

- (void)deleteDataFromDisk
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__SYDClientToDaemonConnection_deleteDataFromDisk__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeConfiguration];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__SYDClientToDaemonConnection_deleteDataFromDisk__block_invoke_3;
  v6[3] = &unk_1E831A600;
  v6[4] = *(a1 + 40);
  [v4 deleteDataFromDiskForStoreWithConfiguration:v5 reply:v6];
}

void __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke_cold_1();
  }
}

void __68__SYDClientToDaemonConnection_registerForDaemonDidWakeNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained daemonDidWake];
}

- (void)daemonDidWake
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)setHasPerformedAppLaunchSyncForStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = sAppLaunchSyncStoreIdentifiers;
  if (!sAppLaunchSyncStoreIdentifiers)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = sAppLaunchSyncStoreIdentifiers;
    sAppLaunchSyncStoreIdentifiers = v6;

    v5 = sAppLaunchSyncStoreIdentifiers;
  }

  [v5 addObject:identifierCopy];
  objc_sync_exit(selfCopy);
}

+ (BOOL)hasPerformedAppLaunchSyncForStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [sAppLaunchSyncStoreIdentifiers containsObject:identifierCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)logFaultIfNecessaryForError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v10 = errorCopy;
    domain = [errorCopy domain];
    v6 = [domain isEqualToString:@"SyncedDefaults"];

    if (v6)
    {
      code = [v10 code];
      if (code <= 5554)
      {
        if (code == 2222)
        {
          [(SYDClientToDaemonConnection *)self ___NSUbiquitousKeyValueStore_isnt_sure_exactly_what_you_did_but_it_was_invalid___:v10];
        }

        else if (code == 3333 && ![(SYDClientToDaemonConnection *)self didLogFaultForEntitlements])
        {
          [(SYDClientToDaemonConnection *)self setDidLogFaultForEntitlements:1];
          [(SYDClientToDaemonConnection *)self ___You_are_not_entitled_for_NSUbiquitousKeyValueStore];
        }
      }

      else
      {
        switch(code)
        {
          case 5555:
            [(SYDClientToDaemonConnection *)self ___You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore];
            break;
          case 6666:
            [(SYDClientToDaemonConnection *)self ___You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore];
            break;
          case 101010:
            [(SYDClientToDaemonConnection *)self ___For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist];
            break;
        }
      }
    }

    else
    {
      domain2 = [v10 domain];
      v9 = [domain2 isEqualToString:*MEMORY[0x1E696A250]];

      if (v9 && [v10 code] == 4099)
      {
        [(SYDClientToDaemonConnection *)self ___You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again];
      }
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)___You_are_not_entitled_for_NSUbiquitousKeyValueStore___
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__SYDClientToDaemonConnection____You_are_not_entitled_for_NSUbiquitousKeyValueStore_____block_invoke;
  block[3] = &unk_1E831A5D8;
  block[4] = self;
  if (___You_are_not_entitled_for_NSUbiquitousKeyValueStore____onceToken != -1)
  {
    dispatch_once(&___You_are_not_entitled_for_NSUbiquitousKeyValueStore____onceToken, block);
  }
}

void __87__SYDClientToDaemonConnection____You_are_not_entitled_for_NSUbiquitousKeyValueStore_____block_invoke(uint64_t a1)
{
  v2 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __87__SYDClientToDaemonConnection____You_are_not_entitled_for_NSUbiquitousKeyValueStore_____block_invoke_cold_1(a1);
  }
}

- (void)___We_looked_everywhere_but_we_cant_find_your_store_identifier___
{
  if (___We_looked_everywhere_but_we_cant_find_your_store_identifier____onceToken != -1)
  {
    [SYDClientToDaemonConnection ___We_looked_everywhere_but_we_cant_find_your_store_identifier___];
  }
}

void __96__SYDClientToDaemonConnection____We_looked_everywhere_but_we_cant_find_your_store_identifier_____block_invoke(uint64_t a1)
{
  v1 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    __96__SYDClientToDaemonConnection____We_looked_everywhere_but_we_cant_find_your_store_identifier_____block_invoke_cold_1();
  }
}

- (void)___Your_store_identifier_is_empty___
{
  if (___Your_store_identifier_is_empty____onceToken != -1)
  {
    [SYDClientToDaemonConnection ___Your_store_identifier_is_empty___];
  }
}

void __67__SYDClientToDaemonConnection____Your_store_identifier_is_empty_____block_invoke(uint64_t a1)
{
  v1 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    __67__SYDClientToDaemonConnection____Your_store_identifier_is_empty_____block_invoke_cold_1();
  }
}

- (void)___You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore___
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__SYDClientToDaemonConnection____You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore_____block_invoke;
  block[3] = &unk_1E831A5D8;
  block[4] = self;
  if (___You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore____onceToken != -1)
  {
    dispatch_once(&___You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore____onceToken, block);
  }
}

void __92__SYDClientToDaemonConnection____You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore_____block_invoke(uint64_t a1)
{
  v2 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __92__SYDClientToDaemonConnection____You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore_____block_invoke_cold_1(a1);
  }
}

- (void)___For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist___
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__SYDClientToDaemonConnection____For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist_____block_invoke;
  block[3] = &unk_1E831A5D8;
  block[4] = self;
  if (___For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist____onceToken != -1)
  {
    dispatch_once(&___For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist____onceToken, block);
  }
}

void __100__SYDClientToDaemonConnection____For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist_____block_invoke(uint64_t a1)
{
  has_internal_content = os_variant_has_internal_content();
  v3 = has_internal_content;
  v4 = SYDGetConnectionLog(has_internal_content);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
  if (v3)
  {
    if (v5)
    {
      __100__SYDClientToDaemonConnection____For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist_____block_invoke_cold_2(a1);
    }
  }

  else if (v5)
  {
    __100__SYDClientToDaemonConnection____For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist_____block_invoke_cold_1(a1);
  }
}

- (void)___NSUbiquitousKeyValueStore_isnt_sure_exactly_what_you_did_but_it_was_invalid___:(id)store_isnt_sure_exactly_what_you_did_but_it_was_invalid___
{
  store_isnt_sure_exactly_what_you_did_but_it_was_invalid___Copy = store_isnt_sure_exactly_what_you_did_but_it_was_invalid___;
  v4 = SYDGetConnectionLog(store_isnt_sure_exactly_what_you_did_but_it_was_invalid___Copy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [SYDClientToDaemonConnection ___NSUbiquitousKeyValueStore_isnt_sure_exactly_what_you_did_but_it_was_invalid___:];
  }
}

- (void)___You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again___
{
  if (___You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again____onceToken != -1)
  {
    [SYDClientToDaemonConnection ___You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again___];
  }
}

void __113__SYDClientToDaemonConnection____You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again_____block_invoke(uint64_t a1)
{
  v1 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    __113__SYDClientToDaemonConnection____You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again_____block_invoke_cold_1();
  }
}

- (void)___You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore___
{
  if (___You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore____onceToken != -1)
  {
    [SYDClientToDaemonConnection ___You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore___];
  }
}

void __95__SYDClientToDaemonConnection____You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore_____block_invoke(uint64_t a1)
{
  v1 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    __95__SYDClientToDaemonConnection____You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore_____block_invoke_cold_1();
  }
}

- (void)___Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore___:(id)store___
{
  store___Copy = store___;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__SYDClientToDaemonConnection____Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore______block_invoke;
  block[3] = &unk_1E831A5D8;
  v7 = store___Copy;
  v4 = ___Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore_____onceToken;
  v5 = store___Copy;
  if (v4 != -1)
  {
    dispatch_once(&___Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore_____onceToken, block);
  }
}

void __94__SYDClientToDaemonConnection____Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore______block_invoke(uint64_t a1)
{
  v1 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    __94__SYDClientToDaemonConnection____Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore______block_invoke_cold_1();
  }
}

- (void)storeDidChangeWithStoreID:(id)d changeDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dictionaryCopy = dictionary;
  v8 = _os_activity_create(&dword_1C8626000, "kvs/store-did-change", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  storeConfiguration = [(SYDClientToDaemonConnection *)self storeConfiguration];
  storeID = [storeConfiguration storeID];
  v11 = [storeID isEqual:dCopy];

  if (v11)
  {
    v13 = SYDGetConnectionLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      storeIdentifier = [(SYDClientToDaemonConnection *)self storeIdentifier];
      *buf = 138412290;
      v24 = storeIdentifier;
      _os_log_impl(&dword_1C8626000, v13, OS_LOG_TYPE_INFO, "Received storeDidChange for store <(%@)>", buf, 0xCu);
    }

    delegate = [(SYDClientToDaemonConnection *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate connectionStoreWillChange:self];
    }

    isSyncingWithCloud = [(SYDClientToDaemonConnection *)self isSyncingWithCloud];
    if (isSyncingWithCloud)
    {
      v17 = SYDGetConnectionLog(isSyncingWithCloud);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [SYDClientToDaemonConnection storeDidChangeWithStoreID:changeDictionary:];
      }
    }

    else
    {
      queue = [(SYDClientToDaemonConnection *)self queue];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __74__SYDClientToDaemonConnection_storeDidChangeWithStoreID_changeDictionary___block_invoke;
      v20[3] = &unk_1E831A6A0;
      v20[4] = self;
      v21 = dictionaryCopy;
      dispatch_async(queue, v20);
    }
  }

  else
  {
    delegate = SYDGetConnectionLog(v12);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEBUG))
    {
      storeConfiguration2 = [(SYDClientToDaemonConnection *)self storeConfiguration];
      [(SYDClientToDaemonConnection *)storeConfiguration2 storeDidChangeWithStoreID:dCopy changeDictionary:buf, delegate];
    }
  }

  os_activity_scope_leave(&state);
}

+ (void)processAccountChangesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_1C8626000, "kvs/process-account-changes", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = SYDGetConnectionLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[SYDClientToDaemonConnection processAccountChangesWithCompletionHandler:];
  }

  newXPCConnection = [self newXPCConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke;
  v16[3] = &unk_1E831A920;
  v9 = handlerCopy;
  v17 = v9;
  v10 = [newXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v16];
  objc_initWeak(&location, newXPCConnection);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke_243;
  v12[3] = &unk_1E831AA80;
  objc_copyWeak(&v14, &location);
  v11 = v9;
  v13 = v11;
  [v10 processAccountChangesWithCompletionHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  os_activity_scope_leave(&state);
}

void __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SYDGetConnectionLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke_243(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = SYDGetConnectionLog(WeakRetained);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke_243_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke_243_cold_2();
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  [WeakRetained setInvalidationHandler:0];
  [WeakRetained setInterruptionHandler:0];
  [WeakRetained invalidate];
}

- (void)exit:(id)exit
{
  exitCopy = exit;
  v5 = _os_activity_create(&dword_1C8626000, "kvs/exit", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = SYDGetConnectionLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C8626000, v7, OS_LOG_TYPE_INFO, "Telling daemon to exit", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__SYDClientToDaemonConnection_exit___block_invoke;
  v11[3] = &unk_1E831A920;
  v12 = exitCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__SYDClientToDaemonConnection_exit___block_invoke_2;
  v9[3] = &unk_1E831AAA8;
  v8 = v12;
  v10 = v8;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:0 errorHandler:v11 daemonHandler:v9];

  os_activity_scope_leave(&state);
}

uint64_t __36__SYDClientToDaemonConnection_exit___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 exit];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)postFakeAccountChangeNotificationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_1C8626000, "kvs/post-fake-account-change", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = SYDGetConnectionLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C8626000, v7, OS_LOG_TYPE_INFO, "Telling daemon to post fake account change notification", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__SYDClientToDaemonConnection_postFakeAccountChangeNotificationWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E831A920;
  v12 = handlerCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__SYDClientToDaemonConnection_postFakeAccountChangeNotificationWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E831AAA8;
  v8 = v12;
  v10 = v8;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:0 errorHandler:v11 daemonHandler:v9];

  os_activity_scope_leave(&state);
}

- (void)postFakeSyncManagerChangeNotificationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_1C8626000, "kvs/post-fake-sync-manager-change", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = SYDGetConnectionLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C8626000, v7, OS_LOG_TYPE_INFO, "Telling daemon to post fake sync manager change notification", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__SYDClientToDaemonConnection_postFakeSyncManagerChangeNotificationWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E831A920;
  v12 = handlerCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__SYDClientToDaemonConnection_postFakeSyncManagerChangeNotificationWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E831A8F8;
  v9[4] = self;
  v8 = v12;
  v10 = v8;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:0 errorHandler:v11 daemonHandler:v9];

  os_activity_scope_leave(&state);
}

void __90__SYDClientToDaemonConnection_postFakeSyncManagerChangeNotificationWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeConfiguration];
  [v4 postFakeSyncManagerChangeNotificationForStoreWithConfiguration:v5 completionHandler:*(a1 + 40)];
}

- (void)setFakeError:(id)error forNextCloudKitRequestOfClassName:(id)name inStoreWithConfiguration:(id)configuration
{
  errorCopy = error;
  nameCopy = name;
  configurationCopy = configuration;
  v11 = _os_activity_create(&dword_1C8626000, "kvs/set-fake-cloudkit-error", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v13 = SYDGetConnectionLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C8626000, v13, OS_LOG_TYPE_INFO, "Telling daemon to set fake CloudKit request error", buf, 2u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __103__SYDClientToDaemonConnection_setFakeError_forNextCloudKitRequestOfClassName_inStoreWithConfiguration___block_invoke_246;
  v17[3] = &unk_1E831AAD0;
  v14 = errorCopy;
  v18 = v14;
  v15 = nameCopy;
  v19 = v15;
  v16 = configurationCopy;
  v20 = v16;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:1 errorHandler:&__block_literal_global_245 daemonHandler:v17];

  os_activity_scope_leave(&state);
}

void __103__SYDClientToDaemonConnection_setFakeError_forNextCloudKitRequestOfClassName_inStoreWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __103__SYDClientToDaemonConnection_setFakeError_forNextCloudKitRequestOfClassName_inStoreWithConfiguration___block_invoke_cold_1();
  }
}

- (id)personaUniqueString
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SYDClientToDaemonConnection_personaUniqueString__block_invoke_249;
  v4[3] = &unk_1E831AB20;
  v4[4] = &v5;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:1 errorHandler:&__block_literal_global_248 daemonHandler:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __50__SYDClientToDaemonConnection_personaUniqueString__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__SYDClientToDaemonConnection_personaUniqueString__block_invoke_cold_1();
  }
}

uint64_t __50__SYDClientToDaemonConnection_personaUniqueString__block_invoke_249(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__SYDClientToDaemonConnection_personaUniqueString__block_invoke_2;
  v3[3] = &unk_1E831AAF8;
  v3[4] = *(a1 + 32);
  return [a2 personaUniqueStringWithReply:v3];
}

- (BOOL)isUIFrameworkLinkedInDaemon
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SYDClientToDaemonConnection_isUIFrameworkLinkedInDaemon__block_invoke_253;
  v4[3] = &unk_1E831AB20;
  v4[4] = &v5;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:1 errorHandler:&__block_literal_global_252 daemonHandler:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __58__SYDClientToDaemonConnection_isUIFrameworkLinkedInDaemon__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58__SYDClientToDaemonConnection_isUIFrameworkLinkedInDaemon__block_invoke_cold_1();
  }
}

uint64_t __58__SYDClientToDaemonConnection_isUIFrameworkLinkedInDaemon__block_invoke_253(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__SYDClientToDaemonConnection_isUIFrameworkLinkedInDaemon__block_invoke_2;
  v3[3] = &unk_1E831A990;
  v3[4] = *(a1 + 32);
  return [a2 isUIFrameworkLinkedInDaemonWithReply:v3];
}

- (id)containerIDFromDaemonWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__SYDClientToDaemonConnection_containerIDFromDaemonWithError___block_invoke;
  v7[3] = &unk_1E831A600;
  v7[4] = &v14;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SYDClientToDaemonConnection_containerIDFromDaemonWithError___block_invoke_254;
  v6[3] = &unk_1E831A9B8;
  v6[4] = self;
  v6[5] = &v8;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:1 errorHandler:v7 daemonHandler:v6];
  if (error)
  {
    *error = v15[5];
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v4;
}

void __62__SYDClientToDaemonConnection_containerIDFromDaemonWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SYDGetConnectionLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__SYDClientToDaemonConnection_containerIDFromDaemonWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __62__SYDClientToDaemonConnection_containerIDFromDaemonWithError___block_invoke_254(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeConfiguration];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SYDClientToDaemonConnection_containerIDFromDaemonWithError___block_invoke_2;
  v6[3] = &unk_1E831AB48;
  v6[4] = *(a1 + 40);
  [v4 containerIDWithConfiguration:v5 reply:v6];
}

+ (void)removeUnitTestSyncManagers
{
  v3 = SYDGetConnectionLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C8626000, v3, OS_LOG_TYPE_INFO, "Removing unit test sync managers", v6, 2u);
  }

  newXPCConnection = [self newXPCConnection];
  v5 = [newXPCConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_257];
  [v5 removeUnitTestSyncManagersWithReply:&__block_literal_global_260];
}

void __57__SYDClientToDaemonConnection_removeUnitTestSyncManagers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __60__SYDClientToDaemonConnection_allStoreIdentifiersWithError___block_invoke_cold_1();
  }
}

void __57__SYDClientToDaemonConnection_removeUnitTestSyncManagers__block_invoke_258(uint64_t a1)
{
  v1 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __57__SYDClientToDaemonConnection_removeUnitTestSyncManagers__block_invoke_258_cold_1();
  }
}

void __44__SYDClientToDaemonConnection_xpcConnection__block_invoke(uint64_t a1)
{
  v1 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1C8626000, v1, OS_LOG_TYPE_INFO, "XPC connection was interrupted", v2, 2u);
  }
}

void __44__SYDClientToDaemonConnection_xpcConnection__block_invoke_346(uint64_t a1)
{
  v2 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C8626000, v2, OS_LOG_TYPE_INFO, "XPC connection was invalidated", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    [v5 setXpcConnection:0];
    objc_sync_exit(v5);
  }
}

- (void)daemonWithOptions:(int64_t)options errorHandler:(id)handler daemonHandler:(id)daemonHandler
{
  daemonHandlerCopy = daemonHandler;
  handlerCopy = handler;
  xpcConnection = [(SYDClientToDaemonConnection *)self xpcConnection];
  _queue = [xpcConnection _queue];
  dispatch_assert_queue_not_V2(_queue);

  [(SYDClientToDaemonConnection *)self _daemonWithOptions:options retries:1 errorHandler:handlerCopy daemonHandler:daemonHandlerCopy];
}

- (void)_daemonWithOptions:(int64_t)options retries:(unint64_t)retries errorHandler:(id)handler daemonHandler:(id)daemonHandler
{
  handlerCopy = handler;
  daemonHandlerCopy = daemonHandler;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __85__SYDClientToDaemonConnection__daemonWithOptions_retries_errorHandler_daemonHandler___block_invoke;
  v30[3] = &__block_descriptor_40_e17_B16__0__NSError_8l;
  v30[4] = retries;
  v12 = MEMORY[0x1CCA79010](v30);
  objc_initWeak(&location, self);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __85__SYDClientToDaemonConnection__daemonWithOptions_retries_errorHandler_daemonHandler___block_invoke_2;
  v24 = &unk_1E831ABB8;
  objc_copyWeak(v28, &location);
  v13 = v12;
  v25 = v13;
  v28[1] = options;
  v28[2] = retries;
  v14 = handlerCopy;
  v26 = v14;
  v15 = daemonHandlerCopy;
  v27 = v15;
  v16 = MEMORY[0x1CCA79010](&v21);
  v17 = objc_autoreleasePoolPush();
  v18 = [(SYDClientToDaemonConnection *)self xpcConnection:v21];
  v19 = v18;
  if (options)
  {
    [v18 synchronousRemoteObjectProxyWithErrorHandler:v16];
  }

  else
  {
    [v18 remoteObjectProxyWithErrorHandler:v16];
  }
  v20 = ;
  if (v15)
  {
    (*(v15 + 2))(v15, v20);
  }

  objc_autoreleasePoolPop(v17);
  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
}

BOOL __85__SYDClientToDaemonConnection__daemonWithOptions_retries_errorHandler_daemonHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v6 = [v4 code] == 4097;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __85__SYDClientToDaemonConnection__daemonWithOptions_retries_errorHandler_daemonHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = (*(*(a1 + 32) + 16))();
  if (v5)
  {
    v6 = SYDGetConnectionLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C8626000, v6, OS_LOG_TYPE_INFO, "Retrying XPC message on interruption", v8, 2u);
    }

    [WeakRetained _daemonWithOptions:*(a1 + 64) retries:*(a1 + 72) - 1 errorHandler:*(a1 + 40) daemonHandler:*(a1 + 48)];
  }

  else if (*(a1 + 40))
  {
    v7 = SYDGetConnectionLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__SYDClientToDaemonConnection__daemonWithOptions_retries_errorHandler_daemonHandler___block_invoke_2_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)initWithStoreConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"SYDClientToDaemonConnection.m" lineNumber:100 description:{@"Must specify a store configuration when initializing %@", v5}];
}

+ (void)defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)setObject:forKey:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(v1, v2, v3, 7.2226e-34);
  OUTLINED_FUNCTION_10(&dword_1C8626000, "Not setting identical nil value for key <(%{private, mask.hash}@)> in store <(%@)>", v4, v5);
}

- (void)setObject:forKey:error:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(v1, v2, v3, 7.2226e-34);
  OUTLINED_FUNCTION_10(&dword_1C8626000, "Not setting identical object for key <(%{private, mask.hash}@)> in store <(%@)>", v4, v5);
}

- (void)setObject:forKey:error:.cold.3()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_13();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)setObject:forKey:error:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(v1, v2, v3, 7.2226e-34);
  OUTLINED_FUNCTION_10(&dword_1C8626000, "Did set object for key <(%{private, mask.hash}@)> in store <(%@)>", v4, v5);
}

void __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_9(a1 a2)];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_9(a1 a2)];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)removeObjectForKey:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(v1, v2, v3, 7.2226e-34);
  OUTLINED_FUNCTION_10(&dword_1C8626000, "Not removing already-nil object for key <(%{private, mask.hash}@)> from store <(%@)>", v4, v5);
}

- (void)removeObjectForKey:error:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(v1, v2, v3, 7.2226e-34);
  OUTLINED_FUNCTION_10(&dword_1C8626000, "Did remove object for key <(%{private, mask.hash}@)> in store <(%@)>", v4, v5);
}

void __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_9(a1 a2)];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)objectForKey:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(v1, v2, v3, 7.2226e-34);
  OUTLINED_FUNCTION_10(&dword_1C8626000, "Getting object for key <(%{private, mask.hash}@)> in store <(%@)>", v4, v5);
}

void __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_9(a1 a2)];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_2_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_9(a1 a2)];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)dictionaryRepresentationWithError:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1C8626000, log, OS_LOG_TYPE_DEBUG, "Getting dictionary representation for store <(%@)>", buf, 0xCu);
}

- (void)dictionaryRepresentationWithError:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1C8626000, log, OS_LOG_TYPE_DEBUG, "Caching dictionary representation for store <(%@)>", buf, 0xCu);
}

- (void)dictionaryRepresentationWithError:(void *)a1 .cold.3(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a1 storeIdentifier];
  v5 = [a1 cachedObjects];
  v6 = 138412803;
  v7 = v4;
  v8 = 2160;
  v9 = 1752392040;
  v10 = 2117;
  v11 = v5;
  _os_log_debug_impl(&dword_1C8626000, a2, OS_LOG_TYPE_DEBUG, "Returning cached dictionary representation for store <(%@)>: %{sensitive, mask.hash}@", &v6, 0x20u);
}

- (void)setChangeToken:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setChangeToken:.cold.2()
{
  OUTLINED_FUNCTION_17(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Error saving change token to daemon: %@", v2, v3, v4, v5);
}

- (void)setChangeToken:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__SYDClientToDaemonConnection__synchronize___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__SYDClientToDaemonConnection__synchronize___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_17(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __44__SYDClientToDaemonConnection__synchronize___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_17(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __55__SYDClientToDaemonConnection_processChangeDictionary___block_invoke_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E696A9D8]];
  [*(a1 + 48) count];
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained storeIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();
  v8 = a2;
  _os_log_error_impl(&dword_1C8626000, a3, OS_LOG_TYPE_ERROR, "Error synchronizing with cloud for store <(%@)>: %@", v7, 0x16u);
}

void __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8(&dword_1C8626000, v2, v3, "BUG IN CLIENT OF KVS: Tried to sync multiple stores, but not entitled for all of them: %@", v4, v5, v6, v7);
}

+ (void)setCloudSyncUserDefaultEnabled:storeIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)setCloudSyncUserDefaultEnabled:storeIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __47__SYDClientToDaemonConnection_newXPCConnection__block_invoke_210_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__SYDClientToDaemonConnection_performOpportunisticAppLaunchSyncIfNecessary__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__SYDClientToDaemonConnection_performOpportunisticAppLaunchSyncIfNecessary__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __87__SYDClientToDaemonConnection____You_are_not_entitled_for_NSUbiquitousKeyValueStore_____block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) storeIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8(&dword_1C8626000, v2, v3, "BUG IN CLIENT OF KVS: Tried to access NSUbiquitousKeyValueStore '%@' without the proper entitlements. If your process is not entitled to access this store, then any attempts to get data will return nil, and any attempts to set data will be ignored. Please add the proper entitlements to access this store, or stop trying to access it in an unentitled process.", v4, v5, v6, v7);
}

void __92__SYDClientToDaemonConnection____You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore_____block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) storeIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8(&dword_1C8626000, v2, v3, "BUG IN CLIENT OF KVS: Tried to access encrypted store '%@' before first unlock. When this fault occurs, NSUbiquitousKeyValueStore is about to return a nil value for any key you just asked for, even if there’s data in the store for that key. Depending on what might be done with that return value, this could result in data loss.", v4, v5, v6, v7);
}

void __100__SYDClientToDaemonConnection____For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist_____block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) storeIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8(&dword_1C8626000, v2, v3, "BUG IN KVS: Tried to access store that is unknown to the system (%{public}@). Please submit a bug report with a sysdiagnose.", v4, v5, v6, v7);
}

void __100__SYDClientToDaemonConnection____For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist_____block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) storeIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8(&dword_1C8626000, v2, v3, "BUG IN KVS: Tried to access store that is unknown to the system (%{public}@). Please file a bug with a sysdiagnose on NSUbiquitousKeyValueStore.", v4, v5, v6, v7);
}

- (void)___NSUbiquitousKeyValueStore_isnt_sure_exactly_what_you_did_but_it_was_invalid___:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __113__SYDClientToDaemonConnection____You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again_____block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __95__SYDClientToDaemonConnection____You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore_____block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __94__SYDClientToDaemonConnection____Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore______block_invoke_cold_1()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)storeDidChangeWithStoreID:(uint8_t *)buf changeDictionary:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C8626000, log, OS_LOG_TYPE_DEBUG, "Received storeDidChange for store that is not our store: self.configuration=%@ configuration=%@", buf, 0x16u);
}

- (void)storeDidChangeWithStoreID:changeDictionary:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)processAccountChangesWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke_243_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__SYDClientToDaemonConnection_removeUnitTestSyncManagers__block_invoke_258_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __85__SYDClientToDaemonConnection__daemonWithOptions_retries_errorHandler_daemonHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end