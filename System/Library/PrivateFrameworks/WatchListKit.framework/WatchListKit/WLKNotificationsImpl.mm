@interface WLKNotificationsImpl
@end

@implementation WLKNotificationsImpl

void __47__WLKNotificationsImpl_iOS__notificationCenter__block_invoke(uint64_t a1)
{
  if (WLKIsDaemon())
  {
    v2 = objc_alloc(MEMORY[0x277CE2028]);
    v3 = WLKTVAppBundleID();
    v4 = [v2 initWithBundleIdentifier:v3];
    v5 = _notificationCenter__center_0;
    _notificationCenter__center_0 = v4;

    [_notificationCenter__center_0 setWantsNotificationResponsesDelivered];
    [_notificationCenter__center_0 setPrivateDelegate:*(a1 + 32)];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = *(a1 + 32);
    v8 = +[WLKReachabilityMonitor sharedInstance];
    [v6 addObserver:v7 selector:sel__networkReachabilityDidChangeNotification_ name:@"WLKReachabilityMonitorReachabilityDidChange" object:v8];

    v9 = *(a1 + 32);
    v10 = +[WLKAccountMonitor sharedInstance];
    [v6 addObserver:v9 selector:sel__accountChangedNotification_ name:@"WLKAccountMonitorAccountDidChange" object:v10];

    v11 = *(a1 + 32);
    v12 = +[WLKAccountMonitor sharedInstance];
    [v6 addObserver:v11 selector:sel__storeFrontChangedNotification_ name:@"WLKAccountMontiorStoreFrontDidChange" object:v12];
  }

  else
  {
    v13 = [MEMORY[0x277CE2028] currentNotificationCenter];
    v6 = _notificationCenter__center_0;
    _notificationCenter__center_0 = v13;
  }

  [_notificationCenter__center_0 setDelegate:*(a1 + 32)];
  v14 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"com.apple.tv-default" actions:MEMORY[0x277CBEBF8] intentIdentifiers:MEMORY[0x277CBEBF8] options:1];
  v15 = _notificationCenter__center_0;
  v16 = [MEMORY[0x277CBEB98] setWithObjects:{v14, 0}];
  [v15 setNotificationCategories:v16];

  v18 = WLKPushNotificationsLogObject(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v18, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Center setup", buf, 2u);
  }
}

void __45__WLKNotificationsImpl_iOS__initializeTopics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WLKPushNotificationsLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = &stru_288206BC0;
    if (v6)
    {
      v8 = v6;
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - fetch topics complete. %@", &v10, 0xCu);
  }

  if (!v6)
  {
    v9 = [*(a1 + 32) _notificationCenter];
    [v9 setNotificationTopics:v5 withCompletionHandler:&__block_literal_global_41];
  }
}

void __45__WLKNotificationsImpl_iOS__initializeTopics__block_invoke_39(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WLKPushNotificationsLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = &stru_288206BC0;
    if (v2)
    {
      v4 = v2;
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Set topics complete. %@", &v5, 0xCu);
  }
}

void __52__WLKNotificationsImpl_iOS_post_title_body_options___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WLKPushNotificationsLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = &stru_288206BC0;
    if (v2)
    {
      v4 = v2;
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Add notification request complete. %@", &v5, 0xCu);
  }
}

void __41__WLKNotificationsImpl_iOS__fetchTopics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  inited = objc_initWeak(&location, WeakRetained);
  v6 = WLKPushNotificationsLogObject(inited);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Fetch topics", buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__WLKNotificationsImpl_iOS__fetchTopics___block_invoke_45;
  v8[3] = &unk_279E601B8;
  objc_copyWeak(&v15, &location);
  v14 = *(a1 + 56);
  v9 = *(a1 + 32);
  v13 = *(a1 + 48);
  v10 = WeakRetained;
  v7 = v3;
  v11 = v7;
  v12 = *(a1 + 40);
  WLKFetchNotificationCategories(v8);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __41__WLKNotificationsImpl_iOS__fetchTopics___block_invoke_45(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_loadWeakRetained((a1 + 88));
  objc_sync_enter(v7);
  if (([v7 topicsAreInitialized] & 1) == 0)
  {
    v8 = [MEMORY[0x277CBEB58] set];
    [v7 setNotificationTopics:v8];
  }

  *(*(*(a1 + 72) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), a3);
  v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  v10 = [v9 objectForKey:@"WLKBulletinDataProviderLastRegisteredSections"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v12 = [MEMORY[0x277CBEB98] setWithArray:v10];
    v13 = [v12 allObjects];

    v10 = v13;
  }

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v14 = WLKPushNotificationsLogObject(isKindOfClass);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(*(a1 + 80) + 8) + 40);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_272A0F000, v14, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Notification categories fetch from bag resulted in error %@:", &buf, 0xCu);
    }

    v16 = [v7 setTopicsAreInitialized:0];
    if (v10)
    {
      v17 = WLKPushNotificationsLogObject(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(*(a1 + 80) + 8) + 40);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v18;
        _os_log_impl(&dword_272A0F000, v17, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Falling-back to last-known categories %@:", &buf, 0xCu);
      }

      [*(a1 + 32) addObjectsFromArray:v10];
    }

    [v9 setObject:*(a1 + 32) forKey:@"WLKBulletinDataProviderLastRegisteredSections"];
    v19 = *(a1 + 64);
    v20 = [*(a1 + 40) notificationTopics];
    (*(v19 + 16))(v19, v20, *(*(*(a1 + 80) + 8) + 40));
  }

  else
  {
    v21 = *(*(*(a1 + 72) + 8) + 24);
    if (v21)
    {
      [*(a1 + 32) addObject:@"com.apple.tv.bulletins.explicit"];
      v21 = *(*(*(a1 + 72) + 8) + 24);
    }

    if ((v21 & 2) != 0)
    {
      [*(a1 + 32) addObject:@"com.apple.tv.bulletins.implicit"];
      v21 = *(*(*(a1 + 72) + 8) + 24);
    }

    if ((v21 & 4) != 0)
    {
      [*(a1 + 32) addObject:@"com.apple.tv.bulletins.marketing"];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v37 = 0x2020000000;
    v38 = 0;
    objc_initWeak(&location, v7);
    v22 = objc_opt_class();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __41__WLKNotificationsImpl_iOS__fetchTopics___block_invoke_49;
    v25[3] = &unk_279E60190;
    objc_copyWeak(&v34, &location);
    v23 = *(a1 + 32);
    v24 = *(a1 + 80);
    v26 = v23;
    v32 = v24;
    v27 = v10;
    v28 = *(a1 + 48);
    p_buf = &buf;
    v29 = *(a1 + 56);
    v30 = v9;
    v31 = *(a1 + 64);
    [v22 isFullTVAppEnabledwithCompletion:v25];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);
  }

  objc_sync_exit(v7);
}

void __41__WLKNotificationsImpl_iOS__fetchTopics___block_invoke_49(uint64_t a1, int a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v35 = objc_loadWeakRetained((a1 + 96));
  objc_sync_enter(v35);
  v4 = [*(a1 + 32) count];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2 == 0;
  }

  if (!v5)
  {
    v6 = WLKPushNotificationsLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138412546;
      v41 = v7;
      v42 = 1024;
      LODWORD(v43) = 1;
      _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Falling-back to last-known categories as we might have gotten a 304%@, and is tvappenabled%d", buf, 0x12u);
    }

    v4 = [*(a1 + 32) addObjectsFromArray:*(a1 + 40)];
  }

  v8 = WLKPushNotificationsLogObject(v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138412290;
    v41 = v9;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - SubsectionInfos: %@", buf, 0xCu);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 32);
  v10 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v10)
  {
    v12 = *v37;
    *&v11 = 134218242;
    v33 = v11;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = [*(a1 + 48) objectForKey:{v14, v33}];
        v16 = [v35 _authOptions];
        if (v15)
        {
          *(*(*(a1 + 88) + 8) + 24) = 1;
          v17 = [v15 soundSetting];
          v18 = [v15 alertSetting];
          v19 = [v15 badgeSetting];
          v20 = WLKPushNotificationsLogObject(v19);
          v21 = v18 | v17 | v19;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v33;
            v41 = v21;
            v42 = 2112;
            v43 = v14;
            _os_log_impl(&dword_272A0F000, v20, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Overriding auth options from user's settings to:%lu for %@", buf, 0x16u);
          }
        }

        else
        {
          v21 = v16;
        }

        v22 = MEMORY[0x277CE1FF0];
        v23 = [v35 _displayNameForSubsectionID:v14];
        v24 = [v22 topicRequestWithIdentifier:v14 displayName:v23 options:v21];

        [*(a1 + 56) addObject:v24];
      }

      v10 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v10);
  }

  v25 = [v35 notificationTopics];
  v26 = [v25 count];
  if (v26 == [*(a1 + 56) count])
  {
    v27 = *(*(*(a1 + 88) + 8) + 24);

    if ((v27 & 1) == 0)
    {
      v29 = WLKPushNotificationsLogObject(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272A0F000, v29, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Previous topics being returned", buf, 2u);
      }

      goto LABEL_30;
    }
  }

  else
  {
  }

  v30 = WLKPushNotificationsLogObject(v28);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v30, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Topics successfully initialized", buf, 2u);
  }

  v29 = [*(a1 + 56) mutableCopy];
  [v35 setNotificationTopics:v29];
LABEL_30:

  [v35 setTopicsAreInitialized:1];
  [*(a1 + 64) setObject:*(a1 + 32) forKey:@"WLKBulletinDataProviderLastRegisteredSections"];
  v31 = *(a1 + 72);
  v32 = [v35 notificationTopics];
  (*(v31 + 16))(v31, v32, *(*(*(a1 + 80) + 8) + 40));

  objc_sync_exit(v35);
}

void __104__WLKNotificationsImpl_iOS_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WLKPushNotificationsLogObject(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Failure";
    if (a2)
    {
      v7 = @"Success";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - AMS did handle %@ Error:%@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

@end