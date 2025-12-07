@interface LACUNManager
- (LACUNManager)initWithBundleIdentifier:(id)identifier categories:(id)categories;
- (LACUNManagerDelegate)delegate;
- (id)_makeNotificationRequestWithConfiguration:(id)configuration;
- (void)cancelAllNotificationsWithCompletion:(id)completion;
- (void)cancelNotificationsWithIdentifiers:(id)identifiers scheduledOnly:(BOOL)only completion:(id)completion;
- (void)postNotification:(id)notification completion:(id)completion;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation LACUNManager

- (LACUNManager)initWithBundleIdentifier:(id)identifier categories:(id)categories
{
  identifierCopy = identifier;
  categoriesCopy = categories;
  v17.receiver = self;
  v17.super_class = LACUNManager;
  v8 = [(LACUNManager *)&v17 init];
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__LACUNManager_initWithBundleIdentifier_categories___block_invoke;
    v13[3] = &unk_1E7A95E70;
    v14 = identifierCopy;
    v9 = v8;
    v15 = v9;
    v16 = categoriesCopy;
    v10 = __52__LACUNManager_initWithBundleIdentifier_categories___block_invoke(v13);
    notificationCenter = v9->_notificationCenter;
    v9->_notificationCenter = v10;
  }

  return v8;
}

id __52__LACUNManager_initWithBundleIdentifier_categories___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  if (getUNMutableNotificationContentClass() && getUNNotificationActionClass() && getUNNotificationCategoryClass() && getUNNotificationIconClass() && getUNNotificationRequestClass() && getUNTimeIntervalNotificationTriggerClass() && getUNUserNotificationCenterClass())
  {
    v2 = [objc_alloc(getUNUserNotificationCenterClass()) initWithBundleIdentifier:*(a1 + 32)];
    [v2 setDelegate:*(a1 + 40)];
    v26 = v2;
    [v2 setWantsNotificationResponsesDelivered];
    v3 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = *(a1 + 48);
    v30 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v30)
    {
      v28 = *v38;
      v29 = v3;
      do
      {
        v4 = 0;
        do
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v32 = v4;
          v5 = *(*(&v37 + 1) + 8 * v4);
          v6 = objc_opt_new();
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v31 = v5;
          v7 = [v5 actions];
          v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v34;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v34 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v33 + 1) + 8 * i);
                if ([v12 isTitleLocalized])
                {
                  v13 = [v12 title];
                }

                else
                {
                  v14 = MEMORY[0x1E696AEC0];
                  v15 = [v12 title];
                  v13 = [v14 localizedUserNotificationStringForKey:v15 arguments:0];
                }

                if ([v12 isDestructive])
                {
                  v16 = 2;
                }

                else
                {
                  v16 = 0;
                }

                UNNotificationActionClass = getUNNotificationActionClass();
                v18 = [v12 identifier];
                v19 = [UNNotificationActionClass actionWithIdentifier:v18 title:v13 options:v16];

                [v6 addObject:v19];
              }

              v9 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v9);
          }

          if ([v31 hiddenPreviewShowsTitle])
          {
            v20 = 4;
          }

          else
          {
            v20 = 0;
          }

          UNNotificationCategoryClass = getUNNotificationCategoryClass();
          v22 = [v31 identifier];
          v23 = [UNNotificationCategoryClass categoryWithIdentifier:v22 actions:v6 intentIdentifiers:MEMORY[0x1E695E0F0] options:v20];

          v3 = v29;
          [v29 addObject:v23];

          v4 = v32 + 1;
        }

        while (v32 + 1 != v30);
        v30 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v30);
    }

    v24 = v26;
    if ([v3 count])
    {
      [v26 setNotificationCategories:v3];
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)postNotification:(id)notification completion:(id)completion
{
  v21[1] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_notificationCenter)
  {
    identifier = [notificationCopy identifier];

    if (identifier)
    {
      notificationCenter = self->_notificationCenter;
      identifier2 = [notificationCopy identifier];
      v21[0] = identifier2;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [(UNUserNotificationCenter *)notificationCenter removePendingNotificationRequestsWithIdentifiers:v12];
    }

    v13 = [(LACUNManager *)self _makeNotificationRequestWithConfiguration:notificationCopy];
    v14 = LACLogNotifications([(UNUserNotificationCenter *)self->_notificationCenter addNotificationRequest:v13 withCompletionHandler:v8]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      content = [v13 content];
      identifier3 = [v13 identifier];
      v17 = 138412546;
      v18 = content;
      v19 = 2112;
      v20 = identifier3;
      _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "Posted notification with content: (%@) identifier: %@)", &v17, 0x16u);
    }

    goto LABEL_9;
  }

  if (completionCopy)
  {
    v13 = [LACError errorWithCode:-1020 debugDescription:@"UNUserNotificationCenter instance is nil"];
    (v8)[2](v8, v13);
LABEL_9:
  }
}

- (void)cancelNotificationsWithIdentifiers:(id)identifiers scheduledOnly:(BOOL)only completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  completionCopy = completion;
  v10 = completionCopy;
  if (self->_notificationCenter)
  {
    v11 = LACLogNotifications(completionCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = identifiersCopy;
      _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "Cancelling notifications with identifiers: (%@)", &v13, 0xCu);
    }

    [(UNUserNotificationCenter *)self->_notificationCenter removePendingNotificationRequestsWithIdentifiers:identifiersCopy];
    if (!only)
    {
      [(UNUserNotificationCenter *)self->_notificationCenter removeDeliveredNotificationsWithIdentifiers:identifiersCopy];
    }

    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  else if (completionCopy)
  {
    v12 = [LACError errorWithCode:-1020 debugDescription:@"UNUserNotificationCenter instance is nil"];
    (v10)[2](v10, v12);
  }
}

- (void)cancelAllNotificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_notificationCenter)
  {
    v6 = LACLogNotifications(completionCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Cancelling all notifications", v8, 2u);
    }

    [(UNUserNotificationCenter *)self->_notificationCenter removeAllDeliveredNotifications];
    [(UNUserNotificationCenter *)self->_notificationCenter removeAllPendingNotificationRequests];
    if (v5)
    {
      v5[2](v5, 0);
    }
  }

  else if (completionCopy)
  {
    v7 = [LACError errorWithCode:-1020 debugDescription:@"UNUserNotificationCenter instance is nil"];
    (v5)[2](v5, v7);
  }
}

- (id)_makeNotificationRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = objc_alloc_init(getUNMutableNotificationContentClass());
  [configurationCopy withdrawInterval];
  if (v5 > 20.0)
  {
    v6 = [MEMORY[0x1E695DF00] now];
    [configurationCopy withdrawInterval];
    v7 = [v6 dateByAddingTimeInterval:?];

    [v4 setExpirationDate:v7];
  }

  systemIconName = [configurationCopy systemIconName];

  if (systemIconName)
  {
    UNNotificationIconClass = getUNNotificationIconClass();
    systemIconName2 = [configurationCopy systemIconName];
    v11 = [UNNotificationIconClass iconForSystemImageNamed:systemIconName2];
    [v4 setIcon:v11];
  }

  if ([configurationCopy isTitleLocalized])
  {
    title = [configurationCopy title];
    [v4 setTitle:title];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    title = [configurationCopy title];
    v14 = [v13 localizedUserNotificationStringForKey:title arguments:0];
    [v4 setTitle:v14];
  }

  if ([configurationCopy isBodyLocalized])
  {
    body = [configurationCopy body];
    [v4 setBody:body];
  }

  else
  {
    v16 = MEMORY[0x1E696AEC0];
    body = [configurationCopy body];
    v17 = [v16 localizedUserNotificationStringForKey:body arguments:0];
    [v4 setBody:v17];
  }

  if ([configurationCopy isTimeSensitive])
  {
    [v4 setInterruptionLevel:2];
    [v4 setShouldIgnoreDoNotDisturb:1];
  }

  defaultActionURL = [configurationCopy defaultActionURL];

  if (defaultActionURL)
  {
    [v4 setHasDefaultAction:1];
    defaultActionURL2 = [configurationCopy defaultActionURL];
    [v4 setDefaultActionURL:defaultActionURL2];

    [v4 setShouldBackgroundDefaultAction:1];
  }

  else
  {
    [v4 setShouldSuppressDefaultAction:1];
  }

  if ([configurationCopy shouldDisplayActionsInline])
  {
    [v4 setShouldDisplayActionsInline:1];
  }

  categoryIdentifier = [configurationCopy categoryIdentifier];

  if (categoryIdentifier)
  {
    categoryIdentifier2 = [configurationCopy categoryIdentifier];
    [v4 setCategoryIdentifier:categoryIdentifier2];
  }

  [configurationCopy triggerInterval];
  if (v22 <= 0.0)
  {
    v24 = 0;
  }

  else
  {
    UNTimeIntervalNotificationTriggerClass = getUNTimeIntervalNotificationTriggerClass();
    [configurationCopy triggerInterval];
    v24 = [UNTimeIntervalNotificationTriggerClass triggerWithTimeInterval:0 repeats:?];
  }

  UNNotificationRequestClass = getUNNotificationRequestClass();
  identifier = [configurationCopy identifier];
  v27 = [UNNotificationRequestClass requestWithIdentifier:identifier content:v4 trigger:v24];

  return v27;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  handlerCopy = handler;
  notification = [responseCopy notification];
  request = [notification request];
  identifier = [request identifier];

  notification2 = [responseCopy notification];
  request2 = [notification2 request];
  content = [request2 content];
  categoryIdentifier = [content categoryIdentifier];

  actionIdentifier = [responseCopy actionIdentifier];
  v17 = LACLogNotifications(actionIdentifier);
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_16;
  }

  v34[0] = @"identifier";
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null;
  v35[0] = null;
  v34[1] = @"category";
  null2 = categoryIdentifier;
  if (!categoryIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  selfCopy = self;
  v29 = null2;
  v35[1] = null2;
  v34[2] = @"action";
  null3 = actionIdentifier;
  if (!actionIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = handlerCopy;
  v35[2] = null3;
  v34[3] = @"url";
  notification3 = [responseCopy notification];
  request3 = [notification3 request];
  content2 = [request3 content];
  defaultActionURL = [content2 defaultActionURL];
  null4 = defaultActionURL;
  if (!defaultActionURL)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v35[3] = null4;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:4];
  *buf = 138543362;
  v37 = v25;
  _os_log_impl(&dword_1B0233000, v17, OS_LOG_TYPE_DEFAULT, "Did receive response for notification %{public}@", buf, 0xCu);

  if (!defaultActionURL)
  {
  }

  handlerCopy = v33;
  if (!actionIdentifier)
  {
  }

  self = selfCopy;
  if (categoryIdentifier)
  {
    if (identifier)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (identifier)
    {
      goto LABEL_16;
    }
  }

LABEL_16:
  delegate = [(LACUNManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(LACUNManager *)self delegate];
    [delegate2 notificationManager:self didRespondToNotification:identifier fromCategory:categoryIdentifier withAction:actionIdentifier completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (LACUNManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end