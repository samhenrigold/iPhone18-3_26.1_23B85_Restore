@interface TVRemoteUIServiceAppDelegate
- (TVDefaultSceneDelegate)defaultSceneDelegate;
- (TVLockScreenSceneDelegate)lockScreenSceneDelegate;
- (UIScene)defaultScene;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)lockScreenSceneDelegateSceneDidDisconnect:(id)disconnect;
@end

@implementation TVRemoteUIServiceAppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  v6 = [UISceneConfiguration alloc];
  role = [sessionCopy role];
  v8 = [v6 initWithName:0 sessionRole:role];

  role2 = [sessionCopy role];
  v10 = [role2 isEqualToString:UIWindowSceneSessionRoleApplication];

  if ((v10 & 1) != 0 || ([sessionCopy role], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", _UIWindowSceneSessionTypeCoverSheet), v11, v12))
  {
    [v8 setDelegateClass:objc_opt_class()];
  }

  return v8;
}

- (TVDefaultSceneDelegate)defaultSceneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultSceneDelegate);

  if (!WeakRetained)
  {
    v4 = +[UIApplication sharedApplication];
    connectedScenes = [v4 connectedScenes];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = connectedScenes;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          delegate = [v11 delegate];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeWeak(&self->_defaultSceneDelegate, delegate);
            objc_storeWeak(&self->_defaultScene, v11);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    v13 = objc_loadWeakRetained(&self->_defaultSceneDelegate);
    if (!v13)
    {
      v15 = _TVRUIServiceAppLog(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(TVRemoteUIServiceAppDelegate *)v15 defaultSceneDelegate];
      }
    }
  }

  v16 = objc_loadWeakRetained(&self->_defaultSceneDelegate);

  return v16;
}

- (TVLockScreenSceneDelegate)lockScreenSceneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lockScreenSceneDelegate);

  if (!WeakRetained)
  {
    v4 = +[UIApplication sharedApplication];
    connectedScenes = [v4 connectedScenes];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = connectedScenes;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          delegate = [*(*(&v17 + 1) + 8 * v10) delegate];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeWeak(&self->_defaultSceneDelegate, delegate);
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v12 = objc_loadWeakRetained(&self->_defaultSceneDelegate);
    if (!v12)
    {
      v14 = _TVRUIServiceAppLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(TVRemoteUIServiceAppDelegate *)v14 lockScreenSceneDelegate];
      }
    }
  }

  v15 = objc_loadWeakRetained(&self->_lockScreenSceneDelegate);

  return v15;
}

- (void)lockScreenSceneDelegateSceneDidDisconnect:(id)disconnect
{
  defaultSceneDelegate = [(TVRemoteUIServiceAppDelegate *)self defaultSceneDelegate];
  [defaultSceneDelegate resetRootViewController];
}

- (UIScene)defaultScene
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultScene);

  return WeakRetained;
}

@end