@interface SUAlertPresentationManager
+ (SUAlertPresentationManager)sharedInstance;
- (BOOL)_presentAlert:(id)alert animated:(BOOL)animated;
- (BOOL)isPresentingAlertsOfClass:(Class)class;
- (SUAlertPresentationManager)init;
- (id)_presentedAlerts;
- (id)_presentedAlertsOfClass:(Class)class;
- (void)_dismissAlert:(id)alert animated:(BOOL)animated;
- (void)_dismissAlertsOfClass:(Class)class animated:(BOOL)animated;
- (void)_dismissAllAlertsExcludingClasses:(id)classes animated:(BOOL)animated;
- (void)_noteAlertDeactivated:(id)deactivated;
- (void)_updateAlert:(id)alert animated:(BOOL)animated;
- (void)_updateAllAlertLockState:(BOOL)state;
@end

@implementation SUAlertPresentationManager

+ (SUAlertPresentationManager)sharedInstance
{
  if (sharedInstance___once_1 != -1)
  {
    +[SUAlertPresentationManager sharedInstance];
  }

  v3 = sharedInstance___instance_3;

  return v3;
}

uint64_t __44__SUAlertPresentationManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance___instance_3;
  sharedInstance___instance_3 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SUAlertPresentationManager)init
{
  v6.receiver = self;
  v6.super_class = SUAlertPresentationManager;
  v2 = [(SUAlertPresentationManager *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    alerts = v2->_alerts;
    v2->_alerts = array;
  }

  return v2;
}

- (id)_presentedAlerts
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x277CBEB98] setWithArray:selfCopy->_alerts];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_presentedAlertsOfClass:(Class)class
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = selfCopy->_alerts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v9, v11}];
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)_presentAlert:(id)alert animated:(BOOL)animated
{
  alertCopy = alert;
  v6 = SULogAlerts(alertCopy);
  SULogInfoForSubsystem(v6, @"[Alerts] Presenting alert: %@", v7, v8, v9, v10, v11, v12, alertCopy);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  present = [alertCopy present];
  v15 = present;
  if (present)
  {
    if (([(NSMutableArray *)selfCopy->_alerts containsObject:alertCopy]& 1) == 0)
    {
      [(NSMutableArray *)selfCopy->_alerts addObject:alertCopy];
    }
  }

  else
  {
    v16 = SULogAlerts(present);
    SULogInfoForSubsystem(v16, @"[Alerts] Failed presenting alert: %@", v17, v18, v19, v20, v21, v22, alertCopy);
  }

  objc_sync_exit(selfCopy);

  return v15;
}

- (void)_dismissAlert:(id)alert animated:(BOOL)animated
{
  alertCopy = alert;
  v4 = SULogAlerts(alertCopy);
  SULogInfoForSubsystem(v4, @"[Alerts] Dismissing alert: %@", v5, v6, v7, v8, v9, v10, alertCopy);

  [alertCopy dismiss];
}

- (void)_dismissAlertsOfClass:(Class)class animated:(BOOL)animated
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = SULogAlerts(self);
  SULogInfoForSubsystem(v6, @"[Alerts] Dismissing alerts of class: %@", v7, v8, v9, v10, v11, v12, class);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = selfCopy->_alerts;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v19 + 1) + 8 * v17);
        if (objc_opt_isKindOfClass())
        {
          [v18 dismiss];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  objc_sync_exit(selfCopy);
}

- (void)_dismissAllAlertsExcludingClasses:(id)classes animated:(BOOL)animated
{
  v34 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  v6 = SULogAlerts(classesCopy);
  SULogInfoForSubsystem(v6, @"[Alerts] Dismissing all alerts excluding classes: %@", v7, v8, v9, v10, v11, v12, classesCopy);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = selfCopy;
  v14 = selfCopy->_alerts;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v15)
  {
    v16 = *v29;
    do
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v19 = classesCopy;
        v20 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v20)
        {
          v21 = *v25;
          while (2)
          {
            v22 = 0;
            do
            {
              if (*v25 != v21)
              {
                objc_enumerationMutation(v19);
              }

              if (objc_opt_isKindOfClass())
              {

                goto LABEL_16;
              }

              ++v22;
            }

            while (v20 != v22);
            v20 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        [v18 dismiss];
LABEL_16:
        ++v17;
      }

      while (v17 != v15);
      v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v15);
  }

  objc_sync_exit(obj);
}

- (void)_updateAlert:(id)alert animated:(BOOL)animated
{
  alertCopy = alert;
  v4 = SULogAlerts(alertCopy);
  SULogInfoForSubsystem(v4, @"[Alerts] Updating alert: %@", v5, v6, v7, v8, v9, v10, alertCopy);

  [alertCopy update];
}

- (void)_updateAllAlertLockState:(BOOL)state
{
  stateCopy = state;
  v25 = *MEMORY[0x277D85DE8];
  v5 = SULogAlerts(self);
  v12 = v5;
  v13 = @"NO";
  if (stateCopy)
  {
    v13 = @"YES";
  }

  SULogInfoForSubsystem(v5, @"[Alerts] Updating alert lock state to isUILocked: %@", v6, v7, v8, v9, v10, v11, v13);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = selfCopy->_alerts;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v20 + 1) + 8 * i);
        [v19 setIsUILocked:stateCopy];
        [v19 update];
      }

      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isPresentingAlertsOfClass:(Class)class
{
  v3 = [(SUAlertPresentationManager *)self presentedAlertsOfClass:class];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)_noteAlertDeactivated:(id)deactivated
{
  deactivatedCopy = deactivated;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_alerts removeObject:deactivatedCopy];
  objc_sync_exit(selfCopy);
}

@end