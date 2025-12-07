@interface ASDAppLibrary
+ (id)interface;
+ (id)sharedInstance;
+ (int64_t)launchApp:(id)app;
+ (int64_t)launchApp:(id)app onPairedDevice:(id)device;
+ (int64_t)launchMessagesExtensionForApp:(id)app;
+ (unsigned)openableStatusForExecutableAtPath:(id)path;
+ (void)launchApp:(id)app onPairedDevice:(id)device withResultHandler:(id)handler;
+ (void)launchApp:(id)app withResultHandler:(id)handler;
+ (void)launchMessagesExtensionForApp:(id)app withResultHandler:(id)handler;
+ (void)lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs:(id)ds withResultHandler:(id)handler;
+ (void)lookupBundleIDsForDeletableSystemAppsWithItemIDs:(id)ds withResultHandler:(id)handler;
+ (void)lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs:(id)ds withResultHandler:(id)handler;
+ (void)lookupItemIDsForDeletableSystemAppsWithBundleIDs:(id)ds withResultHandler:(id)handler;
+ (void)uninstallApp:(id)app requestUserConfirmation:(BOOL)confirmation withResultHandler:(id)handler;
- (ASDAppLibrary)init;
@end

@implementation ASDAppLibrary

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3049E78];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_executeQueryWithPredicate_withReplyHandler_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_executeQueryWithPredicate_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_executeQueryWithPredicate_onRemoteDevice_withReplyHandler_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_executeQueryForUpdatesReloadingFromServer_withReplyHandler_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__ASDAppLibrary_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED90D488 != -1)
  {
    dispatch_once(&qword_1ED90D488, block);
  }

  v2 = _MergedGlobals_26;

  return v2;
}

uint64_t __31__ASDAppLibrary_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_26;
  _MergedGlobals_26 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (ASDAppLibrary)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  v4 = +[ASDNotificationCenter defaultCenter];
  v5 = v3;
  if (self)
  {
    v8.receiver = self;
    v8.super_class = ASDAppLibrary;
    v6 = [(ASDAppLibrary *)&v8 init];
    self = v6;
    if (v6)
    {
      objc_storeWeak(&v6->_serviceBroker, v5);
    }
  }

  return self;
}

+ (int64_t)launchApp:(id)app
{
  v33 = *MEMORY[0x1E69E9840];
  appCopy = app;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 2;
  v4 = +[ASDServiceBroker defaultBroker];
  v5 = (v22 + 5);
  obj = v22[5];
  v6 = [v4 getLibraryServiceWithError:&obj];
  objc_storeStrong(v5, obj);

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __27__ASDAppLibrary_launchApp___block_invoke;
  v15[3] = &unk_1E7CDBB80;
  v15[4] = &v21;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __27__ASDAppLibrary_launchApp___block_invoke_2;
  v14[3] = &unk_1E7CDBBA8;
  v14[4] = &v17;
  [v7 launchApp:appCopy withReplyHandler:v14];

  v8 = v18[3];
  if (v8 == 2)
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v22[5];
      *buf = 138543874;
      v28 = v11;
      v29 = 2114;
      v30 = appCopy;
      v31 = 2114;
      v32 = v12;
      v13 = v11;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ error: %{public}@", buf, 0x20u);
    }

    v8 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v8;
}

+ (int64_t)launchApp:(id)app onPairedDevice:(id)device
{
  v39 = *MEMORY[0x1E69E9840];
  appCopy = app;
  deviceCopy = device;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 2;
  v7 = +[ASDServiceBroker defaultBroker];
  v8 = (v26 + 5);
  obj = v26[5];
  v9 = [v7 getLibraryServiceWithError:&obj];
  objc_storeStrong(v8, obj);

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__ASDAppLibrary_launchApp_onPairedDevice___block_invoke;
  v19[3] = &unk_1E7CDBB80;
  v19[4] = &v25;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v19];
  pairingID = [deviceCopy pairingID];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __42__ASDAppLibrary_launchApp_onPairedDevice___block_invoke_2;
  v18[3] = &unk_1E7CDBBA8;
  v18[4] = &v21;
  [v10 launchApp:appCopy onPairedDevice:pairingID withReplyHandler:v18];

  v12 = v22[3];
  if (v12 == 2)
  {
    v13 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = v26[5];
      *buf = 138544130;
      v32 = v15;
      v33 = 2114;
      v34 = appCopy;
      v35 = 2114;
      v36 = deviceCopy;
      v37 = 2114;
      v38 = v16;
      v17 = v15;
      _os_log_error_impl(&dword_1B8220000, v13, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ on %{public}@ error: %{public}@", buf, 0x2Au);
    }

    v12 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

+ (void)launchApp:(id)app withResultHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__ASDAppLibrary_launchApp_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDBC48;
  v13 = handlerCopy;
  selfCopy = self;
  v12 = appCopy;
  v9 = handlerCopy;
  v10 = appCopy;
  [v8 getLibraryServiceWithCompletionHandler:v11];
}

void __45__ASDAppLibrary_launchApp_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __45__ASDAppLibrary_launchApp_withResultHandler___block_invoke_2;
    v16[3] = &unk_1E7CDBBD0;
    v19 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v16];
    v7 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__ASDAppLibrary_launchApp_withResultHandler___block_invoke_4;
    v12[3] = &unk_1E7CDBC20;
    v15 = *(a1 + 48);
    v13 = v7;
    v14 = *(a1 + 40);
    [v6 launchApp:v13 withReplyHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      *buf = 138543874;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v5;
      v11 = v9;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __45__ASDAppLibrary_launchApp_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = a1[4];
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v3;
    v9 = v7;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ error: %{public}@", &v10, 0x20u);
  }

  (*(a1[5] + 16))(a1[5], 2, v5, v6);
}

void __45__ASDAppLibrary_launchApp_withResultHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 32);
      *buf = 138543874;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      v16 = 2048;
      v17 = a2;
      v8 = v6;
      _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ status: %ld", buf, 0x20u);
    }
  }

  v5 = dispatch_get_global_queue(21, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__ASDAppLibrary_launchApp_withResultHandler___block_invoke_5;
  v9[3] = &unk_1E7CDBBF8;
  v10 = *(a1 + 40);
  v11 = a2;
  dispatch_async(v5, v9);
}

+ (void)launchApp:(id)app onPairedDevice:(id)device withResultHandler:(id)handler
{
  appCopy = app;
  deviceCopy = device;
  handlerCopy = handler;
  v11 = +[ASDServiceBroker defaultBroker];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__ASDAppLibrary_launchApp_onPairedDevice_withResultHandler___block_invoke;
  v15[3] = &unk_1E7CDBCC0;
  v16 = appCopy;
  v17 = deviceCopy;
  v18 = handlerCopy;
  selfCopy = self;
  v12 = handlerCopy;
  v13 = deviceCopy;
  v14 = appCopy;
  [v11 getLibraryServiceWithCompletionHandler:v15];
}

void __60__ASDAppLibrary_launchApp_onPairedDevice_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __60__ASDAppLibrary_launchApp_onPairedDevice_withResultHandler___block_invoke_2;
    v27[3] = &unk_1E7CDBC70;
    v6 = *(a1 + 56);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    *&v9 = *(a1 + 48);
    *(&v9 + 1) = v6;
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v28 = v10;
    v29 = v9;
    v11 = [a2 remoteObjectProxyWithErrorHandler:v27];
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) pairingID];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __60__ASDAppLibrary_launchApp_onPairedDevice_withResultHandler___block_invoke_7;
    v24[3] = &unk_1E7CDBC98;
    v14 = *(a1 + 56);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    *&v17 = *(a1 + 48);
    *(&v17 + 1) = v14;
    *&v18 = v15;
    *(&v18 + 1) = v16;
    v25 = v18;
    v26 = v17;
    [v11 launchApp:v12 onPairedDevice:v13 withReplyHandler:v24];
  }

  else
  {
    v19 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      *buf = 138544130;
      v31 = v20;
      v32 = 2114;
      v33 = v21;
      v34 = 2114;
      v35 = v22;
      v36 = 2114;
      v37 = v5;
      v23 = v20;
      _os_log_error_impl(&dword_1B8220000, v19, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ on %{public}@ error: %{public}@", buf, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __60__ASDAppLibrary_launchApp_onPairedDevice_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = a1[4];
    v11 = a1[5];
    v13 = 138544130;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    v19 = 2114;
    v20 = v3;
    v12 = v9;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ on %{public}@ error: %{public}@", &v13, 0x2Au);
  }

  (*(a1[6] + 16))(a1[6], 2, v5, v6, v7, v8);
}

void __60__ASDAppLibrary_launchApp_onPairedDevice_withResultHandler___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138544130;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 2048;
      v20 = a2;
      v9 = v6;
      _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch %{public}@ on %{public}@ status: %ld", buf, 0x2Au);
    }
  }

  v5 = dispatch_get_global_queue(21, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__ASDAppLibrary_launchApp_onPairedDevice_withResultHandler___block_invoke_8;
  v10[3] = &unk_1E7CDBBF8;
  v11 = *(a1 + 48);
  v12 = a2;
  dispatch_async(v5, v10);
}

+ (int64_t)launchMessagesExtensionForApp:(id)app
{
  v33 = *MEMORY[0x1E69E9840];
  appCopy = app;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 2;
  v4 = +[ASDServiceBroker defaultBroker];
  v5 = (v22 + 5);
  obj = v22[5];
  v6 = [v4 getLibraryServiceWithError:&obj];
  objc_storeStrong(v5, obj);

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__ASDAppLibrary_launchMessagesExtensionForApp___block_invoke;
  v15[3] = &unk_1E7CDBB80;
  v15[4] = &v21;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__ASDAppLibrary_launchMessagesExtensionForApp___block_invoke_2;
  v14[3] = &unk_1E7CDBBA8;
  v14[4] = &v17;
  [v7 launchApp:appCopy extensionType:1 withReplyHandler:v14];

  if (v22[5])
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v22[5];
      *buf = 138543874;
      v28 = v11;
      v29 = 2114;
      v30 = appCopy;
      v31 = 2114;
      v32 = v12;
      v13 = v11;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch extension for %{public}@ error: %{public}@", buf, 0x20u);
    }
  }

  v9 = v18[3];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

+ (void)launchMessagesExtensionForApp:(id)app withResultHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__ASDAppLibrary_launchMessagesExtensionForApp_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDBC48;
  v13 = handlerCopy;
  selfCopy = self;
  v12 = appCopy;
  v9 = handlerCopy;
  v10 = appCopy;
  [v8 getLibraryServiceWithCompletionHandler:v11];
}

void __65__ASDAppLibrary_launchMessagesExtensionForApp_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__ASDAppLibrary_launchMessagesExtensionForApp_withResultHandler___block_invoke_2;
    v16[3] = &unk_1E7CDBBD0;
    v19 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v16];
    v7 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__ASDAppLibrary_launchMessagesExtensionForApp_withResultHandler___block_invoke_9;
    v12[3] = &unk_1E7CDBC20;
    v15 = *(a1 + 48);
    v13 = v7;
    v14 = *(a1 + 40);
    [v6 launchApp:v13 extensionType:1 withReplyHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      *buf = 138543874;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v5;
      v11 = v9;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch extension for %{public}@ error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __65__ASDAppLibrary_launchMessagesExtensionForApp_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = a1[4];
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v3;
    v9 = v7;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch extension for %{public}@ error: %{public}@", &v10, 0x20u);
  }

  (*(a1[5] + 16))(a1[5], 2, v5, v6);
}

void __65__ASDAppLibrary_launchMessagesExtensionForApp_withResultHandler___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 32);
      *buf = 138543874;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      v16 = 2048;
      v17 = a2;
      v8 = v6;
      _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to launch extension for %{public}@ status: %ld", buf, 0x20u);
    }
  }

  v5 = dispatch_get_global_queue(21, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__ASDAppLibrary_launchMessagesExtensionForApp_withResultHandler___block_invoke_10;
  v9[3] = &unk_1E7CDBBF8;
  v10 = *(a1 + 40);
  v11 = a2;
  dispatch_async(v5, v9);
}

+ (void)lookupBundleIDsForDeletableSystemAppsWithItemIDs:(id)ds withResultHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsWithItemIDs_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDBC48;
  v13 = handlerCopy;
  selfCopy = self;
  v12 = dsCopy;
  v9 = handlerCopy;
  v10 = dsCopy;
  [v8 getLibraryServiceWithCompletionHandler:v11];
}

void __84__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsWithItemIDs_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __84__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsWithItemIDs_withResultHandler___block_invoke_2;
    v16[3] = &unk_1E7CDBBD0;
    v19 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v16];
    v7 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsWithItemIDs_withResultHandler___block_invoke_11;
    v12[3] = &unk_1E7CDBCE8;
    v15 = *(a1 + 48);
    v13 = v7;
    v14 = *(a1 + 40);
    [v6 lookupBundleIDsForDeletableSystemAppsWithItemIDs:v13 withReplyHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v11 = v9;
      *buf = 138543874;
      v21 = v9;
      v22 = 2048;
      v23 = [v10 count];
      v24 = 2114;
      v25 = v5;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu itemID(s) error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __84__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsWithItemIDs_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = a1[4];
    v7 = v5;
    v8 = 138543874;
    v9 = v5;
    v10 = 2048;
    v11 = [v6 count];
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu itemID(s) error: %{public}@", &v8, 0x20u);
  }

  (*(a1[5] + 16))();
}

void __84__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsWithItemIDs_withResultHandler___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 32);
      v14 = v12;
      *buf = 138543874;
      v20 = v12;
      v21 = 2048;
      v22 = [v13 count];
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu itemID(s) error: %{public}@", buf, 0x20u);
    }
  }

  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsWithItemIDs_withResultHandler___block_invoke_12;
  block[3] = &unk_1E7CDBAE0;
  v9 = *(a1 + 40);
  v17 = v6;
  v18 = v9;
  v16 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

+ (void)lookupItemIDsForDeletableSystemAppsWithBundleIDs:(id)ds withResultHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsWithBundleIDs_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDBC48;
  v13 = handlerCopy;
  selfCopy = self;
  v12 = dsCopy;
  v9 = handlerCopy;
  v10 = dsCopy;
  [v8 getLibraryServiceWithCompletionHandler:v11];
}

void __84__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsWithBundleIDs_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __84__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsWithBundleIDs_withResultHandler___block_invoke_2;
    v16[3] = &unk_1E7CDBBD0;
    v19 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v16];
    v7 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsWithBundleIDs_withResultHandler___block_invoke_14;
    v12[3] = &unk_1E7CDBCE8;
    v15 = *(a1 + 48);
    v13 = v7;
    v14 = *(a1 + 40);
    [v6 lookupItemIDsForDeletableSystemAppsWithBundleIDs:v13 withReplyHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v11 = v9;
      *buf = 138543874;
      v21 = v9;
      v22 = 2048;
      v23 = [v10 count];
      v24 = 2114;
      v25 = v5;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu itemID(s) error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __84__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsWithBundleIDs_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = a1[4];
    v7 = v5;
    v8 = 138543874;
    v9 = v5;
    v10 = 2048;
    v11 = [v6 count];
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu bundleID(s) error: %{public}@", &v8, 0x20u);
  }

  (*(a1[5] + 16))();
}

void __84__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsWithBundleIDs_withResultHandler___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 32);
      v14 = v12;
      *buf = 138543874;
      v20 = v12;
      v21 = 2048;
      v22 = [v13 count];
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu bundleID(s) error: %{public}@", buf, 0x20u);
    }
  }

  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsWithBundleIDs_withResultHandler___block_invoke_15;
  block[3] = &unk_1E7CDBAE0;
  v9 = *(a1 + 40);
  v17 = v6;
  v18 = v9;
  v16 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

+ (void)lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs:(id)ds withResultHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDBC48;
  v13 = handlerCopy;
  selfCopy = self;
  v12 = dsCopy;
  v9 = handlerCopy;
  v10 = dsCopy;
  [v8 getLibraryServiceWithCompletionHandler:v11];
}

void __92__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs_withResultHandler___block_invoke_2;
    v16[3] = &unk_1E7CDBBD0;
    v19 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v16];
    v7 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __92__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs_withResultHandler___block_invoke_16;
    v12[3] = &unk_1E7CDBCE8;
    v15 = *(a1 + 48);
    v13 = v7;
    v14 = *(a1 + 40);
    [v6 lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs:v13 withReplyHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v11 = v9;
      *buf = 138543874;
      v21 = v9;
      v22 = 2048;
      v23 = [v10 count];
      v24 = 2114;
      v25 = v5;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu itemID(s) error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __92__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = a1[4];
    v7 = v5;
    v8 = 138543874;
    v9 = v5;
    v10 = 2048;
    v11 = [v6 count];
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu watch itemID(s) error: %{public}@", &v8, 0x20u);
  }

  (*(a1[5] + 16))();
}

void __92__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs_withResultHandler___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 32);
      v14 = v12;
      *buf = 138543874;
      v20 = v12;
      v21 = 2048;
      v22 = [v13 count];
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu watch itemID(s) error: %{public}@", buf, 0x20u);
    }
  }

  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__ASDAppLibrary_lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs_withResultHandler___block_invoke_17;
  block[3] = &unk_1E7CDBAE0;
  v9 = *(a1 + 40);
  v17 = v6;
  v18 = v9;
  v16 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

+ (void)lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs:(id)ds withResultHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = +[ASDServiceBroker defaultBroker];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs_withResultHandler___block_invoke;
  v11[3] = &unk_1E7CDBC48;
  v13 = handlerCopy;
  selfCopy = self;
  v12 = dsCopy;
  v9 = handlerCopy;
  v10 = dsCopy;
  [v8 getLibraryServiceWithCompletionHandler:v11];
}

void __92__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs_withResultHandler___block_invoke_2;
    v16[3] = &unk_1E7CDBBD0;
    v19 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v16];
    v7 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __92__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs_withResultHandler___block_invoke_18;
    v12[3] = &unk_1E7CDBCE8;
    v15 = *(a1 + 48);
    v13 = v7;
    v14 = *(a1 + 40);
    [v6 lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs:v13 withReplyHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v11 = v9;
      *buf = 138543874;
      v21 = v9;
      v22 = 2048;
      v23 = [v10 count];
      v24 = 2114;
      v25 = v5;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu itemID(s) error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __92__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = a1[4];
    v7 = v5;
    v8 = 138543874;
    v9 = v5;
    v10 = 2048;
    v11 = [v6 count];
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu watch bundleID(s) error: %{public}@", &v8, 0x20u);
  }

  (*(a1[5] + 16))();
}

void __92__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs_withResultHandler___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 32);
      v14 = v12;
      *buf = 138543874;
      v20 = v12;
      v21 = 2048;
      v22 = [v13 count];
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request mapping for %lu watch bundleID(s) error: %{public}@", buf, 0x20u);
    }
  }

  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__ASDAppLibrary_lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs_withResultHandler___block_invoke_19;
  block[3] = &unk_1E7CDBAE0;
  v9 = *(a1 + 40);
  v17 = v6;
  v18 = v9;
  v16 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

+ (unsigned)openableStatusForExecutableAtPath:(id)path
{
  v29 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v4 = +[ASDServiceBroker defaultBroker];
  v5 = (v16 + 5);
  obj = v16[5];
  v6 = [v4 getLibraryServiceWithError:&obj];
  objc_storeStrong(v5, obj);

  if (v6)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__ASDAppLibrary_openableStatusForExecutableAtPath___block_invoke;
    v13[3] = &unk_1E7CDBB80;
    v13[4] = &v15;
    v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__ASDAppLibrary_openableStatusForExecutableAtPath___block_invoke_2;
    v12[3] = &unk_1E7CDBD10;
    v12[4] = &v21;
    v12[5] = &v15;
    [v7 openableStatusForExecutableAtPath:pathCopy withReplyHandler:v12];
  }

  LODWORD(v8) = *(v22 + 24);
  if (v8 == 255)
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      lastPathComponent = [pathCopy lastPathComponent];
      v11 = v16[5];
      *buf = 138543618;
      v26 = lastPathComponent;
      v27 = 2114;
      v28 = v11;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[Library] Status for %{public}@ unknown: %{public}@", buf, 0x16u);
    }

    LOBYTE(v8) = *(v22 + 24);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v8;
}

+ (void)uninstallApp:(id)app requestUserConfirmation:(BOOL)confirmation withResultHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  v10 = +[ASDServiceBroker defaultBroker];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__ASDAppLibrary_uninstallApp_requestUserConfirmation_withResultHandler___block_invoke;
  v13[3] = &unk_1E7CDBD38;
  v15 = handlerCopy;
  selfCopy = self;
  v14 = appCopy;
  confirmationCopy = confirmation;
  v11 = handlerCopy;
  v12 = appCopy;
  [v10 getLibraryServiceWithCompletionHandler:v13];
}

void __72__ASDAppLibrary_uninstallApp_requestUserConfirmation_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__ASDAppLibrary_uninstallApp_requestUserConfirmation_withResultHandler___block_invoke_2;
    v17[3] = &unk_1E7CDBBD0;
    v20 = *(a1 + 48);
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v17];
    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__ASDAppLibrary_uninstallApp_requestUserConfirmation_withResultHandler___block_invoke_21;
    v13[3] = &unk_1E7CDBBD0;
    v16 = *(a1 + 48);
    v14 = v7;
    v15 = *(a1 + 40);
    [v6 uninstallApp:v14 requestUserConfirmation:v8 withReplyHandler:v13];
  }

  else
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      *buf = 138543874;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      v25 = 2114;
      v26 = v5;
      v12 = v10;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request uninstall for %{public}@ error: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __72__ASDAppLibrary_uninstallApp_requestUserConfirmation_withResultHandler___block_invoke_2(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = a1[4];
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v3;
    v9 = v7;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request uninstall for %{public}@ error: %{public}@", &v10, 0x20u);
  }

  (*(a1[5] + 16))(a1[5], v3, v5, v6);
}

void __72__ASDAppLibrary_uninstallApp_requestUserConfirmation_withResultHandler___block_invoke_21(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      *buf = 138543874;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      v18 = 2114;
      v19 = v3;
      v10 = v8;
      _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to request uninstall for %{public}@ error: %{public}@", buf, 0x20u);
    }
  }

  v5 = dispatch_get_global_queue(21, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__ASDAppLibrary_uninstallApp_requestUserConfirmation_withResultHandler___block_invoke_22;
  v11[3] = &unk_1E7CDB890;
  v6 = *(a1 + 40);
  v12 = v3;
  v13 = v6;
  v7 = v3;
  dispatch_async(v5, v11);
}

@end