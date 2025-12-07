@interface GKGameActivityEventHandler
- (GKGameActivityEventHandler)init;
- (void)attemptFallbackForActivity:(id)activity;
- (void)deliverEncodedGameActivityInstance:(id)instance;
- (void)receivedGKGameActivityNotification:(id)notification;
@end

@implementation GKGameActivityEventHandler

- (GKGameActivityEventHandler)init
{
  v5.receiver = self;
  v5.super_class = GKGameActivityEventHandler;
  v2 = [(GKGameActivityEventHandler *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_receivedGKGameActivityNotification_ name:@"GKGameActivityDelivered" object:0];
  }

  return v2;
}

- (void)attemptFallbackForActivity:(id)activity
{
  v14 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v4 = NSSelectorFromString(&cfstr_Fallbackpartyu.isa);
  if (objc_opt_respondsToSelector())
  {
    v5 = [activityCopy v4];
    v6 = os_log_GKGeneral;
    if (v5)
    {
      if (!os_log_GKGeneral)
      {
        v7 = GKOSLoggers();
        v6 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Opening game developer implemented universal link: %@", &v12, 0xCu);
      }

      v8 = +[GKDaemonProxy daemonProxy];
      utilityService = [v8 utilityService];
      [utilityService openHTTPsUniversalLink:v5];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        [GKGameActivityEventHandler attemptFallbackForActivity:];
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [GKGameActivityEventHandler attemptFallbackForActivity:];
    }
  }
}

- (void)receivedGKGameActivityNotification:(id)notification
{
  v22 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
    v5 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = notificationCopy;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "GKGameActivityEventHandler receivedGKGameActivityNotification: %@", buf, 0xCu);
  }

  userInfo = [notificationCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"activity"];

  v9 = os_log_GKGeneral;
  if (v8)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
      v9 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "Player wants to play game activity: %@", buf, 0xCu);
    }

    v11 = +[GKLocalPlayer localPlayer];
    eventEmitter = [v11 eventEmitter];
    v13 = [eventEmitter listenerRegisteredForSelector:sel_player_wantsToPlayGameActivity_completionHandler_];

    if (v13)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__GKGameActivityEventHandler_receivedGKGameActivityNotification___block_invoke;
      block[3] = &unk_2785DDB40;
      v17 = v11;
      v18 = v8;
      selfCopy = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
      {
        [GKGameActivityEventHandler receivedGKGameActivityNotification:];
      }

      [(GKGameActivityEventHandler *)self attemptFallbackForActivity:v8];
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [GKGameActivityEventHandler receivedGKGameActivityNotification:];
    }
  }
}

void __65__GKGameActivityEventHandler_receivedGKGameActivityNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventEmitter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__GKGameActivityEventHandler_receivedGKGameActivityNotification___block_invoke_2;
  v7[3] = &unk_2785DDB18;
  v8 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  [v2 player:v4 wantsToPlayGameActivity:v8 completionHandler:v7];
}

void __65__GKGameActivityEventHandler_receivedGKGameActivityNotification___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = MEMORY[0x277CCABB0];
    v8 = v4;
    v9 = [v7 numberWithBool:a2];
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Done notifying developers about game activity: %@, handled: %@", &v14, 0x16u);
  }

  if (a2)
  {
    [*(a1 + 40) gameHasProcessedGameActivity:*(a1 + 32)];
    v10 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
      v10 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "Game marked the activity as processed.", &v14, 2u);
    }
  }

  else
  {
    v12 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
      v12 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Game did not mark the activity as processed.", &v14, 2u);
    }

    [*(a1 + 48) attemptFallbackForActivity:*(a1 + 32)];
  }
}

- (void)deliverEncodedGameActivityInstance:(id)instance
{
  v10 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = instanceCopy;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_DEFAULT, "GKGameActivityEventHandler deliver: %@", &v8, 0xCu);
  }

  v6 = +[GKLocalPlayer localPlayer];
  if (objc_opt_respondsToSelector())
  {
    [v6 playerWantsToPlayGameActivity:instanceCopy completion:&__block_literal_global_5];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [GKGameActivityEventHandler deliverEncodedGameActivityInstance:];
    }
  }
}

void __65__GKGameActivityEventHandler_deliverEncodedGameActivityInstance___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_log_GKGeneral;
  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __65__GKGameActivityEventHandler_deliverEncodedGameActivityInstance___block_invoke_cold_1(v2, v5);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
      v3 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_227904000, v3, OS_LOG_TYPE_DEFAULT, "Successfully kicked activity notification to GameKit.", v7, 2u);
    }
  }
}

void __65__GKGameActivityEventHandler_deliverEncodedGameActivityInstance___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "Failed to kick activity notification to GameKit. Error: %@", &v2, 0xCu);
}

@end