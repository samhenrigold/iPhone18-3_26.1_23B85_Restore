@interface SUSUIAlertPresentationManager
- (BOOL)presentAlert:(id)alert animated:(BOOL)animated;
- (NSSet)presentedAlerts;
- (SUSUIAlertPresentationManager)initWithQueue:(id)queue;
- (id)_presenterForAlertItem:(id)item;
- (id)presentedAlertsOfClass:(Class)class;
- (void)_noteAlertDeactivated:(id)deactivated;
- (void)dismissAlert:(id)alert animated:(BOOL)animated;
- (void)dismissAlertsOfClass:(Class)class animated:(BOOL)animated;
- (void)dismissAllAlertsAnimated:(BOOL)animated;
- (void)dismissAllAlertsExcludingClasses:(id)classes animated:(BOOL)animated;
- (void)updateAlert:(id)alert animated:(BOOL)animated;
- (void)updateAllAlertLockState:(BOOL)state;
@end

@implementation SUSUIAlertPresentationManager

- (SUSUIAlertPresentationManager)initWithQueue:(id)queue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, queue);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = SUSUIAlertPresentationManager;
  v8 = [(SUSUIAlertPresentationManager *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_queue, location[0]);
    v4 = +[NSMutableArray array];
    presenters = selfCopy->_presenters;
    selfCopy->_presenters = v4;
  }

  v7 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (NSSet)presentedAlerts
{
  selfCopy = self;
  v14[1] = a2;
  v14[0] = objc_alloc_init(NSMutableSet);
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_presenters;
  v11 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v8);
      v4 = v14[0];
      alertItem = [v13 alertItem];
      [v4 addObject:?];

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  v3 = v14[0];
  objc_storeStrong(v14, 0);

  return v3;
}

- (BOOL)presentAlert:(id)alert animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  animatedCopy = animated;
  BSDispatchQueueAssert();
  v10 = SUSUILog();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v16, location[0]);
    _os_log_impl(&dword_0, v10, v9, "[Alerts] Presenting alert: %@", v16, 0xCu);
  }

  objc_storeStrong(&v10, 0);
  [location[0] _setPresentationManager:selfCopy];
  v4 = [SUSUINotificationPresenter alloc];
  v8 = [(SUSUINotificationPresenter *)v4 initWithQueue:selfCopy->_queue alert:location[0]];
  if (([(NSMutableArray *)selfCopy->_presenters containsObject:v8]& 1) == 0)
  {
    [(NSMutableArray *)selfCopy->_presenters addObject:v8];
  }

  if ([v8 presentAlert])
  {
    v14 = 1;
  }

  else
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v15, location[0]);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Alerts] Failed presenting alert: %@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [location[0] _setPresentationManager:0];
    [(NSMutableArray *)selfCopy->_presenters removeObject:v8];
    v14 = 0;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v14 & 1;
}

- (void)dismissAlert:(id)alert animated:(BOOL)animated
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  animatedCopy = animated;
  BSDispatchQueueAssert();
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v8, location[0]);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Alerts] Dismissing alert: %@", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [location[0] dismissAlert];
  objc_storeStrong(location, 0);
}

- (void)dismissAlertsOfClass:(Class)class animated:(BOOL)animated
{
  selfCopy = self;
  v25 = a2;
  classCopy = class;
  animatedCopy = animated;
  BSDispatchQueueAssert();
  v22 = SUSUILog();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    log = v22;
    type = v21;
    v10 = classCopy;
    presentedAlerts = [(SUSUIAlertPresentationManager *)selfCopy presentedAlerts];
    v11 = presentedAlerts;
    v20 = v11;
    v14 = [(SUSUIAlertPresentationManager *)selfCopy presentedAlertsOfClass:classCopy];
    v19 = v14;
    sub_2420(v28, v10, v11, v19);
    _os_log_impl(&dword_0, log, type, "[Alerts] Dismissing alerts of class: %@ (_presentedAlertItems: %@, ofClass: %@)", v28, 0x20u);

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(&v22, 0);
  v18 = [(SUSUIAlertPresentationManager *)selfCopy presentedAlertsOfClass:classCopy];
  memset(__b, 0, sizeof(__b));
  v8 = v18;
  v9 = [v8 countByEnumeratingWithState:__b objects:v27 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(v8);
      }

      v17 = *(__b[1] + 8 * v6);
      [(SUSUIAlertPresentationManager *)selfCopy dismissAlert:v17 animated:animatedCopy];
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [v8 countByEnumeratingWithState:__b objects:v27 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(&v18, 0);
}

- (void)dismissAllAlertsAnimated:(BOOL)animated
{
  selfCopy = self;
  v9 = a2;
  animatedCopy = animated;
  location = SUSUILog();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    log = location;
    type = v6;
    sub_2544(v5);
    _os_log_impl(&dword_0, log, type, "[Alerts] Dismissing all alerts", v5, 2u);
  }

  objc_storeStrong(&location, 0);
  [(SUSUIAlertPresentationManager *)selfCopy dismissAllAlertsExcludingClasses:0 animated:animatedCopy];
}

- (void)dismissAllAlertsExcludingClasses:(id)classes animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, classes);
  animatedCopy = animated;
  v23 = SUSUILog();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v29, location[0]);
    _os_log_impl(&dword_0, v23, type, "[Alerts] Dismissing all alerts excluding classes: %@", v29, 0xCu);
  }

  objc_storeStrong(&v23, 0);
  memset(__b, 0, sizeof(__b));
  obj = [(SUSUIAlertPresentationManager *)selfCopy presentedAlerts];
  v15 = [(NSSet *)obj countByEnumeratingWithState:__b objects:v28 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(__b[1] + 8 * v12);
      v19 = 0;
      memset(v17, 0, sizeof(v17));
      v8 = location[0];
      v9 = [v8 countByEnumeratingWithState:v17 objects:v27 count:16];
      if (v9)
      {
        v5 = *v17[2];
        v6 = 0;
        v7 = v9;
        while (1)
        {
          v4 = v6;
          if (*v17[2] != v5)
          {
            objc_enumerationMutation(v8);
          }

          aClassName = *(v17[1] + 8 * v6);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            NSClassFromString(aClassName);
            if (objc_opt_isKindOfClass())
            {
              break;
            }
          }

          ++v6;
          if (v4 + 1 >= v7)
          {
            v6 = 0;
            v7 = [v8 countByEnumeratingWithState:v17 objects:v27 count:16];
            if (!v7)
            {
              goto LABEL_16;
            }
          }
        }

        v19 = 1;
      }

LABEL_16:

      if ((v19 & 1) == 0)
      {
        [(SUSUIAlertPresentationManager *)selfCopy dismissAlert:v21 animated:animatedCopy];
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [(NSSet *)obj countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)updateAlert:(id)alert animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  animatedCopy = animated;
  BSDispatchQueueAssert();
  oslog = SUSUILog();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v11, location[0]);
    _os_log_impl(&dword_0, oslog, type, "[Alerts] Updating alert: %@", v11, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [(SUSUIAlertPresentationManager *)selfCopy _presenterForAlertItem:location[0]];
  if (v5)
  {
    [v5 updateAlert];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)updateAllAlertLockState:(BOOL)state
{
  selfCopy = self;
  v15 = a2;
  stateCopy = state;
  BSDispatchQueueAssert();
  oslog = SUSUILog();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (stateCopy)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_1FCC(v18, v3);
    _os_log_impl(&dword_0, oslog, type, "[Alerts] Updating alert lock state to isUILocked: %@", v18, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  memset(__b, 0, sizeof(__b));
  obj = [(SUSUIAlertPresentationManager *)selfCopy presentedAlerts];
  v9 = [(NSSet *)obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v6);
      [v11 setIsUILocked:stateCopy];
      [(SUSUIAlertPresentationManager *)selfCopy updateAlert:v11 animated:1];
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [(NSSet *)obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }
}

- (id)presentedAlertsOfClass:(Class)class
{
  selfCopy = self;
  v17[2] = a2;
  v17[1] = class;
  BSDispatchQueueAssert();
  v17[0] = +[NSMutableSet set];
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_presenters;
  v14 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v19 count:16];
  if (v14)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(__b[1] + 8 * v11);
      alertItem = [v16 alertItem];
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v5 = v17[0];
        alertItem2 = [v16 alertItem];
        [v5 addObject:?];
      }

      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  v4 = v17[0];
  objc_storeStrong(v17, 0);

  return v4;
}

- (void)_noteAlertDeactivated:(id)deactivated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, deactivated);
  BSDispatchQueueAssert();
  v4 = [(SUSUIAlertPresentationManager *)selfCopy _presenterForAlertItem:location[0]];
  if (v4)
  {
    alertItem = [v4 alertItem];
    [alertItem _setPresentationManager:0];

    [v4 dismissAlert];
    [(NSMutableArray *)selfCopy->_presenters removeObject:v4];
  }

  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (id)_presenterForAlertItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v15 = 0;
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_presenters;
  v12 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v9);
      alertItem = [v14 alertItem];
      v6 = [alertItem isEqual:location[0]];

      if (v6)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    objc_storeStrong(&v15, v14);
  }

LABEL_9:

  v4 = v15;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end