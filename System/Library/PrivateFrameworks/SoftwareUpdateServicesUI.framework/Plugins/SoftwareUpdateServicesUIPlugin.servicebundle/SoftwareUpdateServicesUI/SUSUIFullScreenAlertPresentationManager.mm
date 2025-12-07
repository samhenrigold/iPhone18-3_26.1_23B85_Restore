@interface SUSUIFullScreenAlertPresentationManager
- (NSMutableArray)activeFullScreenAlerts;
- (SUSUIFullScreenAlertPresentationManager)initWithQueue:(id)queue;
- (void)dismissAlert:(id)alert;
- (void)dismissAlertsOfClass:(Class)class;
- (void)presentAlert:(id)alert completion:(id)completion;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation SUSUIFullScreenAlertPresentationManager

- (SUSUIFullScreenAlertPresentationManager)initWithQueue:(id)queue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, queue);
  v3 = selfCopy;
  selfCopy = 0;
  v11.receiver = v3;
  v11.super_class = SUSUIFullScreenAlertPresentationManager;
  v10 = [(SUSUIFullScreenAlertPresentationManager *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    v4 = +[NSMapTable strongToStrongObjectsMapTable];
    alertToHandleMapping = selfCopy->_alertToHandleMapping;
    selfCopy->_alertToHandleMapping = v4;

    v6 = +[NSMapTable strongToStrongObjectsMapTable];
    alertActivationBlocks = selfCopy->_alertActivationBlocks;
    selfCopy->_alertActivationBlocks = v6;

    objc_storeStrong(&selfCopy->_queue, location[0]);
  }

  v9 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (NSMutableArray)activeFullScreenAlerts
{
  selfCopy = self;
  v14[1] = a2;
  BSDispatchQueueAssert();
  v14[0] = 0;
  memset(__b, 0, sizeof(__b));
  obj = [(NSMapTable *)selfCopy->_alertToHandleMapping keyEnumerator];
  v11 = [(NSEnumerator *)obj countByEnumeratingWithState:__b objects:v16 count:16];
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
      if (!v14[0])
      {
        v2 = +[NSMutableArray array];
        v3 = v14[0];
        v14[0] = v2;
      }

      [v14[0] addObject:v13];
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSEnumerator *)obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  v5 = v14[0];
  objc_storeStrong(v14, 0);

  return v5;
}

- (void)presentAlert:(id)alert completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v11 = 0;
  objc_storeStrong(&v11, completion);
  BSDispatchQueueAssert();
  configurationContext = [location[0] configurationContext];
  remoteDefinition = [location[0] remoteDefinition];
  v9 = [SBSRemoteAlertHandle newHandleWithDefinition:"newHandleWithDefinition:configurationContext:" configurationContext:?];

  [v9 addObserver:selfCopy];
  [(NSMapTable *)selfCopy->_alertToHandleMapping setObject:v9 forKey:location[0]];
  if (v11)
  {
    alertActivationBlocks = selfCopy->_alertActivationBlocks;
    v5 = objc_retainBlock(v11);
    [NSMapTable setObject:"setObject:forKey:" forKey:?];
  }

  v8 = SUSUILog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_195C(v14, location[0], v9);
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "Activate full-screen alert (%@) with handle: %@", v14, 0x16u);
  }

  objc_storeStrong(&v8, 0);
  [v9 activateWithOptions:0];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&configurationContext, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissAlert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  BSDispatchQueueAssert();
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1FCC(v7, location[0]);
    _os_log_debug_impl(&dword_0, oslog, OS_LOG_TYPE_DEBUG, "invalidating full-screen alert (%@)", v7, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v3 = [(NSMapTable *)selfCopy->_alertToHandleMapping objectForKey:location[0]];
  [v3 invalidate];

  [(NSMapTable *)selfCopy->_alertToHandleMapping removeObjectForKey:location[0]];
  objc_storeStrong(location, 0);
}

- (void)dismissAlertsOfClass:(Class)class
{
  selfCopy = self;
  v13 = a2;
  classCopy = class;
  BSDispatchQueueAssert();
  memset(__b, 0, sizeof(__b));
  v7 = [(NSMapTable *)selfCopy->_alertToHandleMapping copy];
  obj = [v7 keyEnumerator];

  v9 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v9)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v9;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v5);
      if (objc_opt_isKindOfClass())
      {
        [(SUSUIFullScreenAlertPresentationManager *)selfCopy dismissAlert:v11];
      }

      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activate);
  v12 = SUSUILog();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1FCC(v15, location[0]);
    _os_log_debug_impl(&dword_0, v12, v11, "remoteAlertHandleDidActivate: %@", v15, 0xCu);
  }

  objc_storeStrong(&v12, 0);
  queue = selfCopy->_queue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_6498;
  v8 = &unk_5D008;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, deactivate);
  v11 = SUSUILog();
  v10 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1FCC(v14, location[0]);
    _os_log_debug_impl(&dword_0, v11, v10, "remoteAlertHandleDidActivate: %@", v14, 0xCu);
  }

  objc_storeStrong(&v11, 0);
  queue = selfCopy->_queue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_66A8;
  v8 = &unk_5CCB0;
  v9 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handle);
  v15 = 0;
  objc_storeStrong(&v15, error);
  v14 = SUSUILog();
  v13 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_195C(v18, location[0], v15);
    _os_log_debug_impl(&dword_0, v14, v13, "remoteAlertHandle: %@, error: %@", v18, 0x16u);
  }

  objc_storeStrong(&v14, 0);
  queue = selfCopy->_queue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_68E4;
  v10 = &unk_5D008;
  v11 = location[0];
  v12 = selfCopy;
  dispatch_async(queue, &v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

@end