@interface ASDInstallApps
+ (BOOL)initialContentDownloadsEnabled;
+ (BOOL)shouldPostNotificationOnDefaultBrowserInstallation;
+ (id)interface;
+ (void)_installApps:(void *)apps onPairedDevice:(void *)device withCompletionHandler:;
+ (void)installApp:(id)app onPairedDevice:(id)device withCompletionHandler:(id)handler;
+ (void)installApp:(id)app withCompletionHandler:(id)handler;
+ (void)installApps:(id)apps onPairedDevice:(id)device withCompletionHandler:(id)handler;
+ (void)setInitialContentDownloadsEnabled:(BOOL)enabled;
+ (void)setShouldPostNotificationOnDefaultBrowserInstallation:(BOOL)installation;
@end

@implementation ASDInstallApps

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A538];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_installAppReviewApps_withReplyHandler_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_installAppReviewApps_withReplyHandler_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_installEnterpriseApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:0];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_installEnterpriseApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:1];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [v2 setClasses:v17 forSelector:sel_installSystemApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:0];

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v2 setClasses:v20 forSelector:sel_installSystemApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:1];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [v2 setClasses:v23 forSelector:sel_installTestFlightApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:0];

  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  [v2 setClasses:v26 forSelector:sel_installTestFlightApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:1];

  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  [v2 setClasses:v29 forSelector:sel_installWatchApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:0];

  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  [v2 setClasses:v32 forSelector:sel_installWatchApps_onPairedDevice_withReplyHandler_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (BOOL)initialContentDownloadsEnabled
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__11;
  v21 = __Block_byref_object_dispose__11;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = +[ASDServiceBroker defaultBroker];
  v3 = (v18 + 5);
  obj = v18[5];
  v4 = [v2 getInstallationServiceWithError:&obj];
  objc_storeStrong(v3, obj);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__ASDInstallApps_initialContentDownloadsEnabled__block_invoke;
  v11[3] = &unk_1E7CDBB80;
  v11[4] = &v17;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__ASDInstallApps_initialContentDownloadsEnabled__block_invoke_2;
  v10[3] = &unk_1E7CDC0A0;
  v10[4] = &v13;
  [v5 areInitialContentDownloadsEnabledWithReplyHandler:v10];

  if (v18[5])
  {
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = v18[5];
      *buf = 138543362;
      v24 = v9;
      _os_log_error_impl(&dword_1B8220000, v6, OS_LOG_TYPE_ERROR, "Error getting initial content download value: %{public}@", buf, 0xCu);
    }
  }

  v7 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v7 & 1;
}

+ (void)setInitialContentDownloadsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x1E69E9840];
  v4 = +[ASDServiceBroker defaultBroker];
  v8 = 0;
  v5 = [v4 getInstallationServiceWithError:&v8];
  v6 = v8;
  [v5 setInitialContentDownloadsEnabled:enabledCopy];

  if (v6)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v10 = enabledCopy;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "Error setting initial content download to %{BOOL}d: %{public}@", buf, 0x12u);
    }
  }
}

+ (BOOL)shouldPostNotificationOnDefaultBrowserInstallation
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__11;
  v21 = __Block_byref_object_dispose__11;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = +[ASDServiceBroker defaultBroker];
  v3 = (v18 + 5);
  obj = v18[5];
  v4 = [v2 getInstallationServiceWithError:&obj];
  objc_storeStrong(v3, obj);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__ASDInstallApps_shouldPostNotificationOnDefaultBrowserInstallation__block_invoke;
  v11[3] = &unk_1E7CDBB80;
  v11[4] = &v17;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__ASDInstallApps_shouldPostNotificationOnDefaultBrowserInstallation__block_invoke_2;
  v10[3] = &unk_1E7CDC0A0;
  v10[4] = &v13;
  [v5 shouldPostNotificationOnDefaultBrowserInstallationWithReplyHandler:v10];

  if (v18[5])
  {
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = v18[5];
      *buf = 138543362;
      v24 = v9;
      _os_log_error_impl(&dword_1B8220000, v6, OS_LOG_TYPE_ERROR, "Error getting should post notification on default browser installation value: %{public}@", buf, 0xCu);
    }
  }

  v7 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v7 & 1;
}

+ (void)setShouldPostNotificationOnDefaultBrowserInstallation:(BOOL)installation
{
  installationCopy = installation;
  v13 = *MEMORY[0x1E69E9840];
  v4 = +[ASDServiceBroker defaultBroker];
  v8 = 0;
  v5 = [v4 getInstallationServiceWithError:&v8];
  v6 = v8;
  [v5 setShouldPostNotificationOnDefaultBrowserInstallation:installationCopy];

  if (v6)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v10 = installationCopy;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "Error setting should post notification on default browser installation to %{BOOL}d: %{public}@", buf, 0x12u);
    }
  }
}

+ (void)installApp:(id)app onPairedDevice:(id)device withCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v16[0] = app;
  v9 = MEMORY[0x1E695DEC8];
  deviceCopy = device;
  appCopy = app;
  v12 = [v9 arrayWithObjects:v16 count:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__ASDInstallApps_installApp_onPairedDevice_withCompletionHandler___block_invoke;
  v14[3] = &unk_1E7CDB7A8;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [self installApps:v12 onPairedDevice:deviceCopy withCompletionHandler:v14];
}

void __66__ASDInstallApps_installApp_onPairedDevice_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

+ (void)installApp:(id)app withCompletionHandler:(id)handler
{
  v13[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v13[0] = app;
  v7 = MEMORY[0x1E695DEC8];
  appCopy = app;
  v9 = [v7 arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__ASDInstallApps_installApp_withCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CDB7A8;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(ASDInstallApps *)self _installApps:v9 onPairedDevice:0 withCompletionHandler:v11];
}

void __51__ASDInstallApps_installApp_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

+ (void)_installApps:(void *)apps onPairedDevice:(void *)device withCompletionHandler:
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a2;
  appsCopy = apps;
  deviceCopy = device;
  objc_opt_self();
  firstObject = [v6 firstObject];
  v10 = objc_opt_class();

  objc_opt_self();
  if (qword_1ED90D5D0 != -1)
  {
    dispatch_once(&qword_1ED90D5D0, &__block_literal_global_19);
  }

  v11 = _MergedGlobals_45;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
LABEL_5:
    v16 = 0;
    while (1)
    {
      if (*v40 != v15)
      {
        objc_enumerationMutation(v12);
      }

      if (([v11 containsObject:objc_opt_class()] & 1) == 0)
      {
        break;
      }

      if (objc_opt_class() != v10)
      {
        v25 = ASDLogHandleForCategory(13);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          v29 = objc_opt_class();
          *buf = 138412546;
          v44 = v29;
          v45 = 2112;
          v46 = v10;
          v30 = v29;
        }
        v23 = ;
        v24 = 507;
LABEL_19:
        v26 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", v24, v23);
        deviceCopy[2](deviceCopy, 0, v26);

        v21 = v12;
        goto LABEL_20;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v14)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    v22 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v27 = objc_opt_class();
      *buf = 138412290;
      v44 = v27;
      v28 = v27;
    }
    v23 = ;
    v24 = 909;
    goto LABEL_19;
  }

LABEL_12:

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke;
  v36[3] = &unk_1E7CDB8E0;
  v17 = v12;
  v37 = v17;
  v38 = deviceCopy;
  v18 = MEMORY[0x1B8CBC4F0](v36);
  v19 = +[ASDServiceBroker defaultBroker];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_94;
  v31[3] = &unk_1E7CDD210;
  v34 = v18;
  v35 = v10;
  v32 = v17;
  v33 = appsCopy;
  v20 = v18;
  [v19 getInstallationServiceWithCompletionHandler:v31];

  v21 = v37;
LABEL_20:
}

+ (void)installApps:(id)apps onPairedDevice:(id)device withCompletionHandler:(id)handler
{
  appsCopy = apps;
  handlerCopy = handler;
  pairingID = [device pairingID];
  if (pairingID)
  {
    [(ASDInstallApps *)self _installApps:appsCopy onPairedDevice:pairingID withCompletionHandler:handlerCopy];
  }

  else
  {
    v10 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", 507, @"Paired device has no identifier, did you mean to install locally?");
    (*(handlerCopy + 2))(handlerCopy, 0, v10);
  }
}

uint64_t __43__ASDInstallApps__availableMetadataClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v0 setWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];
  v6 = _MergedGlobals_45;
  _MergedGlobals_45 = v5;

  return MEMORY[0x1EEE66BB8](v5, v6);
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory(13);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) count];
      *buf = 134218242;
      v22 = v9;
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "Installation request for %lu app(s) failed with error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v10 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_86;
      v18 = &unk_1E7CDD1E8;
      v8 = v11;
      v19 = v8;
      v20 = *(a1 + 32);
      [v5 enumerateObjectsUsingBlock:&v15];
      [v8 appendString:@"\n]", v15, v16, v17, v18];
      v12 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = [*(a1 + 32) count];
        *buf = 134218242;
        v22 = v14;
        v23 = 2114;
        v24 = v8;
        _os_log_debug_impl(&dword_1B8220000, v12, OS_LOG_TYPE_DEBUG, "Installation request for %lu app(s) completed: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v8 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) count];
        *buf = 134218242;
        v22 = v13;
        v23 = 2114;
        v24 = v5;
        _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "Installation request for %lu app(s) completed with identifiers: %{public}@", buf, 0x16u);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_86(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [v4 appendFormat:@"\n%@: %@", v6, v7];
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_94(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 56);
    if (v7 == objc_opt_class())
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_2;
      v38[3] = &unk_1E7CDB730;
      v39 = *(a1 + 48);
      v23 = [v5 remoteObjectProxyWithErrorHandler:v38];
      [v23 installEnterpriseApps:*(a1 + 32) onPairedDevice:*(a1 + 40) withReplyHandler:*(a1 + 48)];

      v24 = v39;
    }

    else
    {
      v8 = *(a1 + 56);
      if (v8 == objc_opt_class())
      {
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_3;
        v36[3] = &unk_1E7CDB730;
        v37 = *(a1 + 48);
        v25 = [v5 remoteObjectProxyWithErrorHandler:v36];
        [v25 installAppReviewApps:*(a1 + 32) withReplyHandler:*(a1 + 48)];

        v24 = v37;
      }

      else
      {
        v9 = *(a1 + 56);
        if (v9 == objc_opt_class())
        {
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_4;
          v34[3] = &unk_1E7CDB730;
          v35 = *(a1 + 48);
          v26 = [v5 remoteObjectProxyWithErrorHandler:v34];
          [v26 installSystemApps:*(a1 + 32) onPairedDevice:*(a1 + 40) withReplyHandler:*(a1 + 48)];

          v24 = v35;
        }

        else
        {
          v10 = *(a1 + 56);
          if (v10 == objc_opt_class())
          {
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_5;
            v32[3] = &unk_1E7CDB730;
            v33 = *(a1 + 48);
            v27 = [v5 remoteObjectProxyWithErrorHandler:v32];
            [v27 installTestFlightApps:*(a1 + 32) onPairedDevice:*(a1 + 40) withReplyHandler:*(a1 + 48)];

            v24 = v33;
          }

          else
          {
            v11 = *(a1 + 56);
            if (v11 != objc_opt_class())
            {
              v12 = *(a1 + 48);
              v13 = NSStringFromClass(*(a1 + 56));
              v19 = ASDErrorWithUserInfoAndFormat(507, 0, @"Attempting installation with invalid metadata class: %@", v14, v15, v16, v17, v18, v13);
              (*(v12 + 16))(v12, 0, v19);

              goto LABEL_17;
            }

            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_6;
            v30[3] = &unk_1E7CDB730;
            v31 = *(a1 + 48);
            v28 = [v5 remoteObjectProxyWithErrorHandler:v30];
            [v28 installWatchApps:*(a1 + 32) onPairedDevice:*(a1 + 40) withReplyHandler:*(a1 + 48)];

            v24 = v31;
          }
        }
      }
    }

    goto LABEL_17;
  }

  v20 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v29 = [*(a1 + 32) count];
    *buf = 134218242;
    v41 = v29;
    v42 = 2114;
    v43 = v6;
    _os_log_error_impl(&dword_1B8220000, v20, OS_LOG_TYPE_ERROR, "Installation request for %lu app(s) failed with error: %{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 48);
  v22 = ASDErrorWithSafeUserInfo(v6);
  (*(v21 + 16))(v21, 0, v22);

LABEL_17:
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = ASDErrorWithSafeUserInfo(a2);
  (*(v2 + 16))(v2, 0, v3);
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = ASDErrorWithSafeUserInfo(a2);
  (*(v2 + 16))(v2, 0, v3);
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = ASDErrorWithSafeUserInfo(a2);
  (*(v2 + 16))(v2, 0, v3);
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = ASDErrorWithSafeUserInfo(a2);
  (*(v2 + 16))(v2, 0, v3);
}

void __68__ASDInstallApps__installApps_onPairedDevice_withCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = ASDErrorWithSafeUserInfo(a2);
  (*(v2 + 16))(v2, 0, v3);
}

@end