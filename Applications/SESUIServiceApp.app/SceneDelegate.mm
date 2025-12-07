@interface SceneDelegate
- (SceneDelegate)init;
- (id)viewControllerForUseCase:(id)case;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
@end

@implementation SceneDelegate

- (SceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = SceneDelegate;
  return [(SceneDelegate *)&v3 init];
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "SESAngel - scene:willConnectToSession:options:", buf, 2u);
  }

  *buf = 0;
  v28 = buf;
  v29 = 0x3032000000;
  v30 = sub_100002780;
  v31 = sub_100002790;
  v11 = sceneCopy;
  v32 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(v28 + 5) setSwipeDismissalStyle:1];
    [*(v28 + 5) setDismissalAnimationStyle:2];
    [*(v28 + 5) setAllowsMenuButtonDismissal:1];
    configurationContext = [*(v28 + 5) configurationContext];
    userInfo = [configurationContext userInfo];
    v14 = SESUIServiceAppConfigurationKey;
    v15 = [userInfo objectForKeyedSubscript:SESUIServiceAppConfigurationKey];
    if (v15)
    {
      v16 = [(SceneDelegate *)self viewControllerForUseCase:v15];
      if (v16)
      {
        objc_initWeak(location, self);
        objc_initWeak(&from, sessionCopy);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100002798;
        v23[3] = &unk_100018918;
        objc_copyWeak(&v24, location);
        objc_copyWeak(&v25, &from);
        v23[4] = buf;
        v17 = objc_retainBlock(v23);
        [v16 setDismissHandler:v17];
        v18 = [UIWindow alloc];
        v19 = [v18 initWithWindowScene:*(v28 + 5)];
        [v19 setRootViewController:v16];
        [v19 makeKeyAndVisible];
        [(SceneDelegate *)self setWindow:v19];
        objc_storeStrong(&self->_viewController, v16);

        objc_destroyWeak(&v25);
        objc_destroyWeak(&v24);
        objc_destroyWeak(&from);
        objc_destroyWeak(location);
      }

      else
      {
        v21 = SESDefaultLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v15;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "No ViewController for use case %@", location, 0xCu);
        }

        [*(v28 + 5) invalidate];
      }
    }

    else
    {
      v20 = SESDefaultLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v14;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "No value for key %@ in alert scene configuration context", location, 0xCu);
      }

      [*(v28 + 5) invalidate];
    }
  }

  _Block_object_dispose(buf, 8);
}

- (id)viewControllerForUseCase:(id)case
{
  caseCopy = case;
  if (([caseCopy isEqualToString:SESStorageManagementUserInfo] & 1) != 0 || objc_msgSend(caseCopy, "isEqualToString:", SESGDPRSceneConfigurationUserInfo))
  {
    v4 = objc_opt_new();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Angel - sceneDidDisconnect", v6, 2u);
  }

  v5 = disconnectCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 invalidate];
  }
}

- (void)sceneDidBecomeActive:(id)active
{
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Angel - sceneDidBecomeActive:", v5, 2u);
  }

  [(SESUIServiceBaseViewController *)self->_viewController present];
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Angel - sceneWillResignActive:", v6, 2u);
  }

  v5 = activeCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 invalidate];
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Angel - sceneWillEnterForeground:", v4, 2u);
  }
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Angel - sceneDidEnterBackground:", v7, 2u);
    }

    v6 = backgroundCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 invalidate];
      [(SESUIServiceBaseViewController *)self->_viewController dismiss];
    }
  }
}

@end