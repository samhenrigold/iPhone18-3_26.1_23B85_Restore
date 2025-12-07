@interface BRKUserNotificationManager
+ (id)sharedInstance;
- (BRKUserNotificationManager)init;
- (NSXPCConnection)applicationConnection;
- (id)postNotification:(id)notification trigger:(id)trigger responseHandler:(id)handler destinations:(unint64_t)destinations;
- (void)_deliveredNotificationIdentifiersWithCategoryIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_pendingNotificationIdentifiersWithCategoryIdentifier:(id)identifier completionHandler:(id)handler;
- (void)addCategories:(id)categories;
- (void)debugPendingNotificationRequests;
- (void)handleNotificationResponse:(id)response;
- (void)hasPendingLocationNotification:(id)notification;
- (void)isNotificationPendingOrDeliveredWithCategoryIdentifier:(id)identifier completionHandler:(id)handler;
- (void)promptNotificationAuthorizationRequest:(id)request;
- (void)removeNotification:(id)notification;
- (void)removeNotificationsWithCategoryIdentifier:(id)identifier;
@end

@implementation BRKUserNotificationManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[BRKUserNotificationManager sharedInstance];
  }

  v3 = sharedInstance_Manager;

  return v3;
}

uint64_t __44__BRKUserNotificationManager_sharedInstance__block_invoke()
{
  sharedInstance_Manager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BRKUserNotificationManager)init
{
  v10.receiver = self;
  v10.super_class = BRKUserNotificationManager;
  v2 = [(BRKUserNotificationManager *)&v10 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    responseHandlers = v2->_responseHandlers;
    v2->_responseHandlers = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    categories = v2->_categories;
    v2->_categories = dictionary2;

    v7 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.brook.BrookUI"];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v7;
  }

  return v2;
}

- (void)addCategories:(id)categories
{
  v22 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [categoriesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(categoriesCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        categories = self->_categories;
        identifier = [v9 identifier];
        [(NSMutableDictionary *)categories setObject:v9 forKeyedSubscript:identifier];
      }

      v6 = [categoriesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v12 = [MEMORY[0x277CBEB58] set];
  v13 = self->_categories;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__BRKUserNotificationManager_addCategories___block_invoke;
  v15[3] = &unk_278D287F0;
  v16 = v12;
  v14 = v12;
  [(NSMutableDictionary *)v13 enumerateKeysAndObjectsUsingBlock:v15];
  [(UNUserNotificationCenter *)self->_notificationCenter setNotificationCategories:v14];
}

- (void)promptNotificationAuthorizationRequest:(id)request
{
  requestCopy = request;
  notificationCenter = self->_notificationCenter;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__BRKUserNotificationManager_promptNotificationAuthorizationRequest___block_invoke;
  v9[3] = &unk_278D28860;
  v9[4] = self;
  [(UNUserNotificationCenter *)notificationCenter getNotificationSettingsWithCompletionHandler:v9];
  if (requestCopy)
  {
    v6 = dispatch_time(0, 30000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__BRKUserNotificationManager_promptNotificationAuthorizationRequest___block_invoke_83;
    block[3] = &unk_278D288B0;
    block[4] = self;
    v8 = requestCopy;
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
  }
}

void __69__BRKUserNotificationManager_promptNotificationAuthorizationRequest___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 authorizationStatus])
  {
    v4 = BRKLoggingObjectForDomain(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = @"Authorization status for UNUserNotificationCenter has already been determined - no prompt will be shown.";
      _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v5 = [v3 authorizationStatus];
    v6 = BRKLoggingObjectForDomain(4);
    v7 = v6;
    if (v5 == 2)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = @"Brook is authorized to present user notifications.";
        v8 = v7;
        v9 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
        _os_log_impl(&dword_241EE4000, v8, v9, "%@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = @"Warning! Brook does not have authorization to present user notifications!";
      v8 = v7;
      v9 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__BRKUserNotificationManager_promptNotificationAuthorizationRequest___block_invoke_2;
  block[3] = &unk_278D28838;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_12:
}

void __69__BRKUserNotificationManager_promptNotificationAuthorizationRequest___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BRKLoggingObjectForDomain(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "Result of User Notification authorization request: %d", v7, 8u);
  }

  if (v4)
  {
    v6 = BRKLoggingObjectForDomain(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69__BRKUserNotificationManager_promptNotificationAuthorizationRequest___block_invoke_3_cold_1(v4, v6);
    }
  }
}

void __69__BRKUserNotificationManager_promptNotificationAuthorizationRequest___block_invoke_83(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = BRKLoggingObjectForDomain(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = @"Dispatching notification request after authorization prompt delay.";
    _os_log_impl(&dword_241EE4000, v2, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__BRKUserNotificationManager_promptNotificationAuthorizationRequest___block_invoke_87;
  v5[3] = &unk_278D28888;
  v6 = v3;
  [v4 addNotificationRequest:v6 withCompletionHandler:v5];
}

void __69__BRKUserNotificationManager_promptNotificationAuthorizationRequest___block_invoke_87(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BRKLoggingObjectForDomain(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "Send notification request %@ %@", &v6, 0x16u);
  }
}

- (id)postNotification:(id)notification trigger:(id)trigger responseHandler:(id)handler destinations:(unint64_t)destinations
{
  triggerCopy = trigger;
  handlerCopy = handler;
  v12 = [notification mutableCopy];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = BRKLocalizedUserNotificationString(@"NOTIFICATION_TITLE", MEMORY[0x277CBEBF8], v13);
  [v12 setHeader:v14];

  v15 = [MEMORY[0x277CE1FE0] soundWithAlertType:16];
  [v12 setSound:v15];

  if (triggerCopy)
  {
    uUIDString = @"722C7B89-67AA-432A-93BC-290F8B20A125";
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
  }

  v18 = [MEMORY[0x277CE1FC0] requestWithIdentifier:uUIDString content:v12 trigger:triggerCopy destinations:destinations];
  if (handlerCopy)
  {
    v19 = MEMORY[0x245D05110](handlerCopy);
    [(NSMutableDictionary *)self->_responseHandlers setObject:v19 forKeyedSubscript:uUIDString];
  }

  notificationCenter = self->_notificationCenter;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__BRKUserNotificationManager_postNotification_trigger_responseHandler_destinations___block_invoke;
  v23[3] = &unk_278D288D8;
  v23[4] = self;
  v24 = v18;
  v21 = v18;
  [(UNUserNotificationCenter *)notificationCenter getNotificationSettingsWithCompletionHandler:v23];

  return uUIDString;
}

void __84__BRKUserNotificationManager_postNotification_trigger_responseHandler_destinations___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 authorizationStatus];
  v4 = *(a1 + 32);
  if (v3 == 2)
  {
    v5 = v4[1];
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __84__BRKUserNotificationManager_postNotification_trigger_responseHandler_destinations___block_invoke_2;
    v8[3] = &unk_278D28888;
    v9 = v6;
    [v5 addNotificationRequest:v9 withCompletionHandler:v8];
  }

  else
  {
    v7 = *(a1 + 40);

    [v4 promptNotificationAuthorizationRequest:v7];
  }
}

void __84__BRKUserNotificationManager_postNotification_trigger_responseHandler_destinations___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BRKLoggingObjectForDomain(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "Send notification request %@ %@", &v6, 0x16u);
  }
}

- (void)isNotificationPendingOrDeliveredWithCategoryIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __103__BRKUserNotificationManager_isNotificationPendingOrDeliveredWithCategoryIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_278D28928;
  v11 = identifierCopy;
  v12 = handlerCopy;
  v10[4] = self;
  v8 = identifierCopy;
  v9 = handlerCopy;
  [(BRKUserNotificationManager *)self _pendingNotificationIdentifiersWithCategoryIdentifier:v8 completionHandler:v10];
}

void __103__BRKUserNotificationManager_isNotificationPendingOrDeliveredWithCategoryIdentifier_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = [a2 count];
  v4 = a1[6];
  if (v3 && v4)
  {
    v5 = v4[2];

    v5();
  }

  else
  {
    v7 = a1[4];
    v6 = a1[5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __103__BRKUserNotificationManager_isNotificationPendingOrDeliveredWithCategoryIdentifier_completionHandler___block_invoke_2;
    v8[3] = &unk_278D28900;
    v9 = v4;
    [v7 _deliveredNotificationIdentifiersWithCategoryIdentifier:v6 completionHandler:v8];
  }
}

uint64_t __103__BRKUserNotificationManager_isNotificationPendingOrDeliveredWithCategoryIdentifier_completionHandler___block_invoke_2(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = [a2 count] != 0;
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

- (void)removeNotificationsWithCategoryIdentifier:(id)identifier
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__BRKUserNotificationManager_removeNotificationsWithCategoryIdentifier___block_invoke;
  v6[3] = &unk_278D28950;
  v6[4] = self;
  identifierCopy = identifier;
  [(BRKUserNotificationManager *)self _pendingNotificationIdentifiersWithCategoryIdentifier:identifierCopy completionHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__BRKUserNotificationManager_removeNotificationsWithCategoryIdentifier___block_invoke_2;
  v5[3] = &unk_278D28950;
  v5[4] = self;
  [(BRKUserNotificationManager *)self _deliveredNotificationIdentifiersWithCategoryIdentifier:identifierCopy completionHandler:v5];
}

- (void)removeNotification:(id)notification
{
  v10[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    notificationCenter = self->_notificationCenter;
    v10[0] = notificationCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [(UNUserNotificationCenter *)notificationCenter removePendingNotificationRequestsWithIdentifiers:v6];

    v7 = self->_notificationCenter;
    v9 = notificationCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    [(UNUserNotificationCenter *)v7 removeDeliveredNotificationsWithIdentifiers:v8];
  }
}

- (void)hasPendingLocationNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = BRKLoggingObjectForDomain(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[BRKUserNotificationManager hasPendingLocationNotification:]";
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v12 = 0x2020000000;
  v13 = 0;
  notificationCenter = self->_notificationCenter;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__BRKUserNotificationManager_hasPendingLocationNotification___block_invoke;
  v8[3] = &unk_278D28978;
  p_buf = &buf;
  v7 = notificationCopy;
  v9 = v7;
  [(UNUserNotificationCenter *)notificationCenter getPendingNotificationRequestsWithCompletionHandler:v8];

  _Block_object_dispose(&buf, 8);
}

void __61__BRKUserNotificationManager_hasPendingLocationNotification___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) content];
        v9 = [v8 categoryIdentifier];
        *(*(*(a1 + 40) + 8) + 24) |= [v9 isEqualToString:@"com.apple.brook.home"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = BRKLoggingObjectForDomain(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[BRKUserNotificationManager hasPendingLocationNotification:]_block_invoke";
    _os_log_impl(&dword_241EE4000, v10, OS_LOG_TYPE_DEFAULT, "%s completionHandler", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)debugPendingNotificationRequests
{
  v3 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241EE4000, v3, OS_LOG_TYPE_DEFAULT, "pending requests", v4, 2u);
  }

  [(UNUserNotificationCenter *)self->_notificationCenter getPendingNotificationRequestsWithCompletionHandler:&__block_literal_global_103];
}

void __62__BRKUserNotificationManager_debugPendingNotificationRequests__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = BRKLoggingObjectForDomain(13);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v14 = v7;
          _os_log_impl(&dword_241EE4000, v8, OS_LOG_TYPE_DEFAULT, "\t%@", buf, 0xCu);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)handleNotificationResponse:(id)response
{
  v20 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  notification = [responseCopy notification];
  request = [notification request];
  identifier = [request identifier];

  v8 = BRKLoggingObjectForDomain(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[BRKUserNotificationManager handleNotificationResponse:]";
    v18 = 2112;
    v19 = identifier;
    _os_log_impl(&dword_241EE4000, v8, OS_LOG_TYPE_DEFAULT, "%s retrieving completion handler for notification response identifier: %@", buf, 0x16u);
  }

  v9 = [(NSMutableDictionary *)self->_responseHandlers objectForKeyedSubscript:identifier];
  if (v9)
  {
    v10 = BRKLoggingObjectForDomain(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[BRKUserNotificationManager handleNotificationResponse:]";
      _os_log_impl(&dword_241EE4000, v10, OS_LOG_TYPE_DEFAULT, "%s dispatching call to completion handler with notification response on main thread", buf, 0xCu);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__BRKUserNotificationManager_handleNotificationResponse___block_invoke;
    v11[3] = &unk_278D289C0;
    v15 = v9;
    v12 = responseCopy;
    selfCopy = self;
    v14 = identifier;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

uint64_t __57__BRKUserNotificationManager_handleNotificationResponse___block_invoke(void *a1)
{
  (*(a1[7] + 16))();
  v2 = a1[6];
  v3 = *(a1[5] + 16);

  return [v3 setObject:0 forKeyedSubscript:v2];
}

- (void)_pendingNotificationIdentifiersWithCategoryIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  notificationCenter = self->_notificationCenter;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __102__BRKUserNotificationManager__pendingNotificationIdentifiersWithCategoryIdentifier_completionHandler___block_invoke;
  v13[3] = &unk_278D289E8;
  v14 = identifierCopy;
  v15 = array;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = array;
  v12 = identifierCopy;
  [(UNUserNotificationCenter *)notificationCenter getPendingNotificationRequestsWithCompletionHandler:v13];
}

void __102__BRKUserNotificationManager__pendingNotificationIdentifiersWithCategoryIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a2;
  v2 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v24;
    do
    {
      v5 = 0;
      v20 = v3;
      do
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * v5);
        v7 = [v6 request];
        if (v7)
        {
          v8 = v7;
          v9 = [v6 request];
          v10 = [v9 content];
          if (v10)
          {
            v11 = v10;
            [v6 request];
            v13 = v12 = v4;
            v14 = [v13 content];
            v15 = [v14 categoryIdentifier];
            v16 = [v15 isEqualToString:*(a1 + 32)];

            v4 = v12;
            v3 = v20;

            if (!v16)
            {
              goto LABEL_11;
            }

            v17 = *(a1 + 40);
            v8 = [v6 request];
            v9 = [v8 identifier];
            [v17 addObject:v9];
          }
        }

LABEL_11:
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v3);
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    v19 = [*(a1 + 40) copy];
    (*(v18 + 16))(v18, v19);
  }
}

- (void)_deliveredNotificationIdentifiersWithCategoryIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  notificationCenter = self->_notificationCenter;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __104__BRKUserNotificationManager__deliveredNotificationIdentifiersWithCategoryIdentifier_completionHandler___block_invoke;
  v13[3] = &unk_278D289E8;
  v14 = identifierCopy;
  v15 = array;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = array;
  v12 = identifierCopy;
  [(UNUserNotificationCenter *)notificationCenter getDeliveredNotificationsWithCompletionHandler:v13];
}

void __104__BRKUserNotificationManager__deliveredNotificationIdentifiersWithCategoryIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a2;
  v2 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v24;
    do
    {
      v5 = 0;
      v20 = v3;
      do
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * v5);
        v7 = [v6 request];
        if (v7)
        {
          v8 = v7;
          v9 = [v6 request];
          v10 = [v9 content];
          if (v10)
          {
            v11 = v10;
            [v6 request];
            v13 = v12 = v4;
            v14 = [v13 content];
            v15 = [v14 categoryIdentifier];
            v16 = [v15 isEqualToString:*(a1 + 32)];

            v4 = v12;
            v3 = v20;

            if (!v16)
            {
              goto LABEL_11;
            }

            v17 = *(a1 + 40);
            v8 = [v6 request];
            v9 = [v8 identifier];
            [v17 addObject:v9];
          }
        }

LABEL_11:
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v3);
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    v19 = [*(a1 + 40) copy];
    (*(v18 + 16))(v18, v19);
  }
}

- (NSXPCConnection)applicationConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationConnection);

  return WeakRetained;
}

void __69__BRKUserNotificationManager_promptNotificationAuthorizationRequest___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241EE4000, a2, OS_LOG_TYPE_ERROR, "Request for user notification authorization resulted in the following error: %@", &v2, 0xCu);
}

@end