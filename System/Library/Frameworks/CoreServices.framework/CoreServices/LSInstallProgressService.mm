@interface LSInstallProgressService
@end

@implementation LSInstallProgressService

void __43___LSInstallProgressService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_LSInstallProgressService);
  v1 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v0;
}

void __43___LSInstallProgressService_beginListening__block_invoke()
{
  v5 = +[_LSInstallProgressService sharedInstance];
  [v5 performJournalRecovery];
  [v5 loadProportions];
  v0 = objc_alloc(MEMORY[0x1E696B0D8]);
  v2 = [__LSDefaultsGetSharedInstance(v0 v1)];
  v3 = [v0 initWithMachServiceName:v2];
  v4 = beginListening_listener;
  beginListening_listener = v3;

  [beginListening_listener setDelegate:v5];
  [beginListening_listener resume];
}

void __33___LSInstallProgressService_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_suspend(WeakRetained[13]);
  [(dispatch_object_t *)WeakRetained saveProportions];
}

void __59___LSInstallProgressService__LSFindPlaceholderApplications__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 168) == 2 && (*(a3 + 174) & 4) != 0 && (*(a3 + 336) - 7) >= 3)
  {
    [(_LSDatabase *)*(a1 + 40) store];
    v4 = _CSStringCopyCFString();
    if (v4)
    {
      v6 = v4;
      v5 = [LSApplicationProxy applicationProxyForIdentifier:v4 placeholder:1];
      [*(a1 + 32) addObject:v5];
    }
  }
}

void __52___LSInstallProgressService_restoreInactiveInstalls__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _LSFindPlaceholderApplications];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __52___LSInstallProgressService_restoreInactiveInstalls__block_invoke_217(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _LSProgressLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52___LSInstallProgressService_restoreInactiveInstalls__block_invoke_217_cold_1();
    }
  }
}

void __64___LSInstallProgressService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _LSProgressLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LSInstallProgress: Connection invalidated or interupted %@", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 removeObserver:*(a1 + 32)];
}

uint64_t __41___LSInstallProgressService_addObserver___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 8) containsObject:a1[5]] ^ 1;
  v2 = a1[5];
  v3 = *(a1[4] + 8);

  return [v3 addObject:v2];
}

void __41___LSInstallProgressService_addObserver___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v3 = *(a1 + 32);
    if (v3[96] == 1)
    {
      [v3 dispatchJournalledNotificationsToObserver:*(a1 + 40)];
    }
  }

  v4 = [*(a1 + 40) connection];
  v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_220_0];
  [v5 applicationInstallsArePrioritized:*(a1 + 48) arePaused:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
}

void __41___LSInstallProgressService_addObserver___block_invoke_3(uint64_t a1)
{
  v1 = _LSProgressLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEFAULT, "Failed to send catchup callback after adding observer", v2, 2u);
  }
}

void __76___LSInstallProgressService_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [LSApplicationProxy applicationProxyForIdentifier:*(a1 + 32) placeholder:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __101___LSInstallProgressService_createInstallProgressForApplication_withPhase_andPublishingString_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  objc_setAssociatedObject(v3, &_block_invoke_publishingStringKey, *(a1 + 32), 0x301);
  [v3 addObserver:*(a1 + 40) forKeyPath:@"userInfo.installState" options:3 context:*(a1 + 32)];
  [v3 addObserver:*(a1 + 40) forKeyPath:@"fractionCompleted" options:3 context:*(a1 + 32)];
  [v3 addObserver:*(a1 + 40) forKeyPath:@"cancellable" options:3 context:*(a1 + 32)];
  [v3 addObserver:*(a1 + 40) forKeyPath:@"pausable" options:3 context:*(a1 + 32)];
  [v3 addObserver:*(a1 + 40) forKeyPath:@"prioritizable" options:3 context:*(a1 + 32)];
  v5 = *(a1 + 40);
  objc_sync_enter(v5);
  isKindOfClass = [*(*(a1 + 40) + 16) progressForBundleID:*(a1 + 48)];
  v7 = isKindOfClass;
  if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v8 = [v3 installState];
    if (v8 != 5)
    {
      [v7 setInstallState:v8];
    }

    [v7 setPausable:{objc_msgSend(v3, "isPausable", v8)}];
    [v7 setCancellable:{objc_msgSend(v3, "isCancellable")}];
    [v7 setPrioritizable:{objc_msgSend(v3, "isPrioritizable")}];
  }

  else
  {
    v9 = _LSProgressLog(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __101___LSInstallProgressService_createInstallProgressForApplication_withPhase_andPublishingString_reply___block_invoke_cold_1();
    }
  }

  objc_sync_exit(v5);
  objc_initWeak(&location, v3);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101___LSInstallProgressService_createInstallProgressForApplication_withPhase_andPublishingString_reply___block_invoke_269;
  v14[3] = &unk_1E6A1F2A8;
  v15 = *(a1 + 32);
  objc_copyWeak(&v18, &location);
  v10 = *(a1 + 48);
  v16 = *(a1 + 40);
  v17 = v10;
  v11 = [v14 copy];
  v12 = MEMORY[0x1865D71B0]();

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v4);

  return v12;
}

void __101___LSInstallProgressService_createInstallProgressForApplication_withPhase_andPublishingString_reply___block_invoke_269(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _LSProgressLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "unsubscribing from %@ as it was unpublished", &v10, 0xCu);
  }

  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained removeObserver:*(a1 + 40) forKeyPath:@"userInfo.installState"];

  v6 = objc_loadWeakRetained((a1 + 56));
  [v6 removeObserver:*(a1 + 40) forKeyPath:@"fractionCompleted"];

  v7 = objc_loadWeakRetained((a1 + 56));
  [v7 removeObserver:*(a1 + 40) forKeyPath:@"cancellable"];

  v8 = objc_loadWeakRetained((a1 + 56));
  [v8 removeObserver:*(a1 + 40) forKeyPath:@"pausable"];

  v9 = objc_loadWeakRetained((a1 + 56));
  [v9 removeObserver:*(a1 + 40) forKeyPath:@"prioritizable"];

  [*(*(a1 + 40) + 16) removeSubscriberForPublishingKey:*(a1 + 32) andBundleID:*(a1 + 48)];
  objc_autoreleasePoolPop(v4);
}

void __62___LSInstallProgressService_installationFailedForApplication___block_invoke(uint64_t a1)
{
  v2 = [LSApplicationProxy applicationProxyForIdentifier:*(a1 + 32) placeholder:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __86___LSInstallProgressService_detachAndSendNotification_forApplicationExtensionRecords___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        addPluginDataToNotificationDict(v2, *(*(&v12 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v5);
  }

  v9 = _LSInstallLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    *buf = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v2;
    _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "posting %@ with %@", buf, 0x16u);
  }

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotificationWithOptions(DistributedCenter, *(a1 + 40), 0, v2, 2uLL);
}

void __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke(uint64_t a1)
{
  v1 = [[LSProgressNotificationTimer alloc] initWithQueue:*(*(a1 + 32) + 72)];
  v2 = sendNotification_forAppProxies_Plugins_completion__sProgressTimer;
  sendNotification_forAppProxies_Plugins_completion__sProgressTimer = v1;
}

void __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v141 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 96) == 1 && *(v2 + 88) && [_LSInstallNotificationJournaller shouldJournalNotificationType:*(a1 + 80)])
  {
    v3 = [[_LSStartupJournalledInstallNotification alloc] initWithNotification:*(v1 + 80) appProxies:*(v1 + 40) plugins:*(v1 + 84)];
    [*(*(v1 + 32) + 88) addObject:v3];
  }

  v103 = [*(v1 + 32) observerSelectorForNotification:*(v1 + 80)];
  v4 = (v1 + 48);
  v5 = *(v1 + 48);
  v104 = v5;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  switch(*(v1 + 80))
  {
    case 0:
      v11 = _LSProgressLog(v5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke_2_cold_1();
      }

      goto LABEL_23;
    case 1:
      v30 = _LSProgressLog(v5);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *v4;
        *buf = 138412290;
        v120 = v31;
        _os_log_impl(&dword_18162D000, v30, OS_LOG_TYPE_DEFAULT, "Sending applicationInstallsDidStart: for %@", buf, 0xCu);
      }

      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v32 = *v4;
      v33 = [v32 countByEnumeratingWithState:&v114 objects:v140 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v115;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v115 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v114 + 1) + 8 * i);
            if ([v37 installType] != 7 && objc_msgSend(v37, "installType") != 8 && objc_msgSend(v37, "installType") != 9)
            {
              v38 = [*(v1 + 32) parentProgressForApplication:v37 andPhase:3 isActive:1];
              [v38 setInstallState:5];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v114 objects:v140 count:16];
        }

        while (v34);
      }

      v39 = *(v1 + 56);
      v138[0] = @"bundleIDs";
      v138[1] = @"isPlaceholder";
      v139[0] = v39;
      v139[1] = MEMORY[0x1E695E118];
      v23 = MEMORY[0x1E695DF20];
      v24 = v139;
      v25 = v138;
      goto LABEL_48;
    case 2:
      v18 = _LSProgressLog(v5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *v4;
        *buf = 138412290;
        v120 = v19;
        _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "Sending applicationInstallsDidUpdateIcon: for %@", buf, 0xCu);
      }

      v20 = *(v1 + 32);
      v21 = [*(v1 + 48) objectAtIndex:0];
      [v20 _placeholderIconUpdatedForApp:v21];

      v22 = *(v1 + 56);
      v136[0] = @"bundleIDs";
      v136[1] = @"isPlaceholder";
      v137[0] = v22;
      v137[1] = MEMORY[0x1E695E118];
      v23 = MEMORY[0x1E695DF20];
      v24 = v137;
      v25 = v136;
      goto LABEL_48;
    case 3:
      v49 = _LSProgressLog(v5);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke_2_cold_2();
      }

      v50 = sendNotification_forAppProxies_Plugins_completion__sProgressTimer;
      v51 = [*(*(v1 + 32) + 8) allObjects];
      [v50 notifyObservers:v51 withApplications:*(v1 + 48)];

      goto LABEL_24;
    case 4:
      v26 = _LSProgressLog(v5);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      v52 = *v4;
      *buf = 138412290;
      v120 = v52;
      v28 = "Sending applicationsWillInstall: for %@";
      goto LABEL_54;
    case 5:
      v26 = _LSProgressLog(v5);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      v27 = *v4;
      *buf = 138412290;
      v120 = v27;
      v28 = "Sending applicationsWillUninstall: for %@";
LABEL_54:
      _os_log_impl(&dword_18162D000, v26, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
LABEL_55:

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v7 = 1;
      v6 = @"com.apple.LaunchServices.pluginswillberemoved";
      goto LABEL_63;
    case 7:
      v40 = _LSProgressLog(v5);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *v4;
        *buf = 138412290;
        v120 = v41;
        _os_log_impl(&dword_18162D000, v40, OS_LOG_TYPE_DEFAULT, "Sending applicationsDidInstall: for %@", buf, 0xCu);
      }

      v42 = *(v1 + 56);
      v134[0] = @"bundleIDs";
      v134[1] = @"isPlaceholder";
      v135[0] = v42;
      v135[1] = MEMORY[0x1E695E110];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v135 forKeys:v134 count:2];
      v10 = @"com.apple.LaunchServices.applicationRegistered";
      v7 = 1;
      v9 = 1;
      v6 = @"com.apple.LaunchServices.pluginsregistered";
      goto LABEL_63;
    case 8:
      v43 = _LSProgressLog(v5);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = *v4;
        *buf = 138412290;
        v120 = v44;
        _os_log_impl(&dword_18162D000, v43, OS_LOG_TYPE_DEFAULT, "Sending applicationsDidUninstall: for %@", buf, 0xCu);
      }

      v45 = *(v1 + 56);
      v130[0] = @"bundleIDs";
      v130[1] = @"isPlaceholder";
      v131[0] = v45;
      v131[1] = MEMORY[0x1E695E110];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:v130 count:2];
      v10 = @"com.apple.LaunchServices.applicationUnregistered";
      v7 = 1;
      v9 = 1;
      v6 = @"com.apple.LaunchServices.pluginsunregistered";
      goto LABEL_63;
    case 9:
      v59 = _LSProgressLog(v5);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = *v4;
        *buf = 138412290;
        v120 = v60;
        _os_log_impl(&dword_18162D000, v59, OS_LOG_TYPE_DEFAULT, "Sending applicationsDidUninstall: for %@", buf, 0xCu);
      }

      [*(v1 + 32) _placeholdersUninstalled:*(v1 + 48)];
      v61 = *(v1 + 56);
      v128[0] = @"bundleIDs";
      v128[1] = @"isPlaceholder";
      v129[0] = v61;
      v129[1] = MEMORY[0x1E695E118];
      v56 = MEMORY[0x1E695DF20];
      v57 = v129;
      v58 = v128;
      goto LABEL_62;
    case 0xA:
      v53 = _LSProgressLog(v5);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = *v4;
        *buf = 138412290;
        v120 = v54;
        _os_log_impl(&dword_18162D000, v53, OS_LOG_TYPE_DEFAULT, "Sending applicationsDidInstall: for %@", buf, 0xCu);
      }

      [*(v1 + 32) _placeholdersUninstalled:*(v1 + 48)];
      v55 = *(v1 + 56);
      v126[0] = @"bundleIDs";
      v126[1] = @"isPlaceholder";
      v127[0] = v55;
      v127[1] = MEMORY[0x1E695E118];
      v56 = MEMORY[0x1E695DF20];
      v57 = v127;
      v58 = v126;
LABEL_62:
      v8 = [v56 dictionaryWithObjects:v57 forKeys:v58 count:2];
      v7 = 0;
      v6 = 0;
      v9 = 1;
      v10 = @"com.apple.LaunchServices.applicationUnregistered";
      goto LABEL_63;
    case 0xB:
      v11 = _LSProgressLog(v5);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v14 = *v4;
      *buf = 138412290;
      v120 = v14;
      v13 = "Sending applicationsDidFailToInstall: for %@";
      break;
    case 0xC:
      v11 = _LSProgressLog(v5);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v29 = *v4;
      *buf = 138412290;
      v120 = v29;
      v13 = "Sending applicationsDidFailToUninstall: for %@";
      break;
    case 0xD:
      v15 = _LSProgressLog(v5);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *v4;
        *buf = 138412290;
        v120 = v16;
        _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "Sending applicationIconDidChange: for %@", buf, 0xCu);
      }

      v132 = *MEMORY[0x1E695E4F0];
      v17 = [*(v1 + 56) objectAtIndex:0];
      v133 = v17;
      v9 = 1;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];

      v7 = 0;
      v6 = 0;
      v10 = @"com.apple.LaunchServices.applicationIconChanged";
      goto LABEL_63;
    case 0xE:
      v11 = _LSProgressLog(v5);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v12 = *v4;
      *buf = 138412290;
      v120 = v12;
      v13 = "Sending applicationsDidChangePersonas: for %@";
      break;
    case 0xF:
      v46 = _LSProgressLog(v5);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = *v4;
        *buf = 138412290;
        v120 = v47;
        _os_log_impl(&dword_18162D000, v46, OS_LOG_TYPE_DEFAULT, "Sending applicationInstallsDidChange: due to postprocessing ready for %@", buf, 0xCu);
      }

      v48 = *(v1 + 56);
      v124[0] = @"bundleIDs";
      v124[1] = @"isPlaceholder";
      v125[0] = v48;
      v125[1] = MEMORY[0x1E695E110];
      v23 = MEMORY[0x1E695DF20];
      v24 = v125;
      v25 = v124;
LABEL_48:
      v8 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:2];
      v7 = 0;
      v6 = 0;
      v9 = 1;
      v10 = @"com.apple.LaunchServices.applicationRegistered";
      goto LABEL_63;
    default:
      goto LABEL_63;
  }

  _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
LABEL_23:

LABEL_24:
  v7 = 0;
  v6 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
LABEL_63:
  cf1 = v6;
  if (v103)
  {
    v95 = v9;
    v96 = v10;
    v97 = v7;
    v98 = v8;
    v100 = v1;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v62 = *(*(v1 + 32) + 8);
    v63 = [v62 countByEnumeratingWithState:&v110 objects:v123 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v111;
      do
      {
        for (j = 0; j != v64; ++j)
        {
          if (*v111 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = *(*(&v110 + 1) + 8 * j);
          v68 = objc_autoreleasePoolPush();
          v69 = [v67 connection];
          v109[0] = MEMORY[0x1E69E9820];
          v109[1] = 3221225472;
          v109[2] = __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke_320;
          v109[3] = &unk_1E6A19AC0;
          v109[4] = v67;
          v70 = [v69 remoteObjectProxyWithErrorHandler:v109];

          [v70 v103];
          objc_autoreleasePoolPop(v68);
        }

        v64 = [v62 countByEnumeratingWithState:&v110 objects:v123 count:16];
      }

      while (v64);
    }

    v8 = v98;
    v1 = v100;
    v7 = v97;
    v10 = v96;
  }

  if (v8)
  {
    v71 = v9;
  }

  else
  {
    v71 = 0;
  }

  if (v71 == 1)
  {
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterPostNotificationWithOptions(DistributedCenter, v10, 0, v8, 1uLL);
    v74 = _LSProgressLog(v73);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v120 = v10;
      v121 = 2112;
      v122 = v8;
      _os_log_impl(&dword_18162D000, v74, OS_LOG_TYPE_DEFAULT, "Sent distributed notification %@ with payload %@", buf, 0x16u);
    }
  }

  if ((v7 & *(v1 + 84)) == 1)
  {
    v75 = *(v1 + 64);
    if (v75)
    {
      if ([v75 count])
      {
        v99 = v8;
        v76 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(v1 + 64), "count")}];
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v101 = v1;
        v77 = *(v1 + 64);
        v78 = [v77 countByEnumeratingWithState:&v105 objects:v118 count:16];
        if (!v78)
        {
          goto LABEL_96;
        }

        v79 = v78;
        v80 = *v106;
        while (1)
        {
          for (k = 0; k != v79; ++k)
          {
            if (*v106 != v80)
            {
              objc_enumerationMutation(v77);
            }

            v82 = *(*(&v105 + 1) + 8 * k);
            if (!CFEqual(cf1, @"com.apple.LaunchServices.pluginsregistered") || ([v82 bundleIdentifier], v83 = objc_claimAutoreleasedReturnValue(), v84 = _LSIsNewsWidgetBundleIdentifier(v83), v83, !v84))
            {

LABEL_93:
              v89 = [v82 correspondingApplicationExtensionRecord];
              addPluginDataToNotificationDict(v76, v89);
              goto LABEL_94;
            }

            v85 = +[LSApplicationRestrictionsManager sharedInstance];
            v86 = [v82 bundleIdentifier];
            v87 = [(LSApplicationRestrictionsManager *)v85 isAppExtensionRestricted:v86];

            if (!v87)
            {
              goto LABEL_93;
            }

            v89 = _LSProgressLog(v88);
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              v90 = [v82 bundleIdentifier];
              *buf = 138412290;
              v120 = v90;
              _os_log_impl(&dword_18162D000, v89, OS_LOG_TYPE_DEFAULT, "notification for restricted plugin %@ not being sent", buf, 0xCu);
            }

LABEL_94:
          }

          v79 = [v77 countByEnumeratingWithState:&v105 objects:v118 count:16];
          if (!v79)
          {
LABEL_96:

            v91 = CFNotificationCenterGetDistributedCenter();
            CFNotificationCenterPostNotificationWithOptions(v91, cf1, 0, v76, 2uLL);
            v93 = _LSProgressLog(v92);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v120 = cf1;
              v121 = 2112;
              v122 = v76;
              _os_log_impl(&dword_18162D000, v93, OS_LOG_TYPE_DEFAULT, "Sent plugin notification %@ with payload %@", buf, 0x16u);
            }

            v8 = v99;
            v1 = v101;
            break;
          }
        }
      }
    }
  }

  v94 = *(v1 + 72);
  if (v94)
  {
    v94 = (*(v94 + 16))();
  }

  MEMORY[0x1865D7C50](v94);
}

void __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke_320(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSProgressLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Error %@ connecting to observer %@", &v6, 0x16u);
  }
}

void __71___LSInstallProgressService_sendDatabaseRebuiltNotificationToObserver___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LSProgressLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __71___LSInstallProgressService_sendDatabaseRebuiltNotificationToObserver___block_invoke_cold_1();
  }
}

void __60___LSInstallProgressService_sendDatabaseRebuiltNotification__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 96) == 1)
  {
    v3 = *(v2 + 88);
    if (v3)
    {
      v4 = +[_LSStartupJournalledDatabaseRebuiltNotification sharedNotification];
      [v3 addObject:v4];

      v2 = *(a1 + 32);
    }
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(v2 + 8);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) sendDatabaseRebuiltNotificationToObserver:{*(*(&v10 + 1) + 8 * v9++), v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void __95___LSInstallProgressService__prepareApplicationProxiesForNotification_identifiers_withPlugins___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (*(a1 + 48))
        {
          [LSApplicationProxy applicationProxyForIdentifier:v7 placeholder:1];
        }

        else
        {
          [LSApplicationProxy applicationProxyForIdentifier:v7, v10];
        }
        v8 = ;
        if (v8)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
          if (*(a1 + 49) == 1)
          {
            v9 = [v8 plugInKitPlugins];
          }

          [v8 detach];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __44___LSInstallProgressService_loadProportions__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v21;
    *&v3 = 138412290;
    v17 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [*(a1 + 32) objectForKeyedSubscript:{v7, v17}];
        v9 = objc_opt_class();
        v10 = objc_opt_class();
        v11 = _LSIsDictionaryWithKeysAndValuesOfClass(v8, v9, v10);
        if (v11)
        {
          v12 = [LSApplicationRecord alloc];
          v19 = 0;
          v13 = [(LSApplicationRecord *)v12 initForInstallMachineryWithBundleIdentifier:v7 placeholder:1 error:&v19];
          v14 = v19;
          v15 = _LSProgressLog(v14);
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          if (v13)
          {
            if (v16)
            {
              *buf = v17;
              v25 = v7;
              _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "Found placeholder for %@, loading progress proportions", buf, 0xCu);
            }

            v15 = [*(a1 + 32) objectForKeyedSubscript:v7];
            [*(*(a1 + 40) + 120) setObject:v15 forKeyedSubscript:v7];
          }

          else if (v16)
          {
            *buf = v17;
            v25 = v7;
            _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "No placeholder for %@, not loading progress proportions", buf, 0xCu);
          }
        }

        else
        {
          v14 = _LSProgressLog(v11);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v25 = v7;
            _os_log_error_impl(&dword_18162D000, v14, OS_LOG_TYPE_ERROR, "Invalid progress proportion entry for %@!", buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);
  }
}

void __108___LSInstallProgressService_setProgressProportionsByPhase_forInstallOfApplicationWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [LSApplicationRecord alloc];
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [(LSApplicationRecord *)v2 initForInstallMachineryWithBundleIdentifier:v3 placeholder:1 error:&v7];
  v5 = v7;
  v6 = v7;
  if (!v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  }
}

void __64___LSInstallProgressService_sendNetworkUsageChangedNotification__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"usingNetwork";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 128)];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotification(DistributedCenter, @"com.lsinstallprogress.networkusagechanged", 0, v2, 1u);
}

void __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke(void *a1)
{
  v2 = *(*(a1[4] + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1[4] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = *(*(a1[5] + 8) + 40);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = *(a1[5] + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;
    }

    v9 = a1[6];
    v8 = a1 + 6;
    v10 = [*(*(v9 + 8) + 40) count];
    if (v10)
    {
      v11 = _LSInstallLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_cold_1(v8);
      }
    }

    v12 = *(*v8 + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
  }
}

void __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_335(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(*(a1 + 32) + 8);
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 pid];
        v9 = *(*(*(a1 + 48) + 8) + 40);
        v10 = [MEMORY[0x1E696AD98] numberWithInt:v8];
        [v9 addObject:v10];

        dispatch_group_enter(v2);
        v11 = [v7 connection];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_2;
        v14[3] = &unk_1E6A1F3C0;
        v12 = *(a1 + 48);
        v14[4] = *(a1 + 32);
        v16 = v12;
        v17 = v8;
        v15 = v2;
        [v11 addBarrierBlock:v14];
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  dispatch_group_notify(v2, *(*(a1 + 32) + 72), *(a1 + 40));
}

void __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_3;
  v3[3] = &unk_1E6A1F398;
  v3[4] = *(a1 + 48);
  v4 = *(a1 + 56);
  dispatch_sync(v2, v3);
  dispatch_group_leave(*(a1 + 40));
}

void __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v1 removeObject:v2];
}

uint64_t __64___LSInstallProgressService_loadJournalledNotificationsFromDisk__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqual:*MEMORY[0x1E696A798]])
  {
    v5 = [v3 code];

    if (v5 == 2)
    {
      v7 = _LSInstallLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "install journal directory does not exist.", v10, 2u);
      }

      v8 = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v7 = _LSInstallLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __64___LSInstallProgressService_loadJournalledNotificationsFromDisk__block_invoke_cold_1();
  }

  v8 = 1;
LABEL_10:

  return v8;
}

uint64_t __64___LSInstallProgressService_loadJournalledNotificationsFromDisk__block_invoke_340(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 timestamp];
  v7 = v6;
  [v5 timestamp];
  if (v7 >= v8)
  {
    [v4 timestamp];
    v11 = v10;
    [v5 timestamp];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void *__51___LSInstallProgressService_performJournalRecovery__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadJournalledNotificationsFromDisk];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  result = [*(a1 + 32) dispatchJournalledNotificationsToConnectedClients];
  *(*(a1 + 32) + 96) = 1;
  return result;
}

void __51___LSInstallProgressService_performJournalRecovery__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 10000000000);
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___LSInstallProgressService_performJournalRecovery__block_invoke_3;
  block[3] = &unk_1E6A195E0;
  block[4] = v3;
  dispatch_after(v2, v4, block);
}

void __51___LSInstallProgressService_performJournalRecovery__block_invoke_3(uint64_t a1)
{
  v2 = _LSInstallLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "jettisoning notification journal", v7, 2u);
  }

  *(*(a1 + 32) + 96) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 88);
  *(v5 + 88) = 0;
}

void __77___LSInstallProgressService_directlySendNotification_withProxies_toObserver___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSProgressLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Error %@ connecting to observer %@", &v6, 0x16u);
  }
}

void __71___LSInstallProgressService_dispatchJournalledNotificationsToObserver___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSProgressLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Error %@ connecting to observer %@", &v6, 0x16u);
  }
}

void __79___LSInstallProgressService_sendNotification_forAppProxies_Plugins_completion___block_invoke_2_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_4(&dword_18162D000, v0, v1, "Sending applicationInstallsDidChange: for %@", v2);
}

void __76___LSInstallProgressService_addSendNotificationFenceWithTimeout_fenceBlock___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(*(*a1 + 8) + 40) allObjects];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

@end