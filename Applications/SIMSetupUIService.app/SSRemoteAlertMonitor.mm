@interface SSRemoteAlertMonitor
- (SSRemoteAlertMonitor)initWithBundleID:(id)d dismissHandler:(id)handler;
- (void)_handleLayoutUpdate:(id)update;
- (void)_startObserving;
- (void)_stopObserving;
- (void)dealloc;
@end

@implementation SSRemoteAlertMonitor

- (SSRemoteAlertMonitor)initWithBundleID:(id)d dismissHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([dCopy length])
    {
      bundleIdentifier = dCopy;
    }

    else
    {
      v11 = +[NSBundle mainBundle];
      bundleIdentifier = [v11 bundleIdentifier];

      v13 = sub_10000C1BC(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10000F558(bundleIdentifier, v13);
      }
    }

    v18.receiver = self;
    v18.super_class = SSRemoteAlertMonitor;
    v14 = [(SSRemoteAlertMonitor *)&v18 init];
    if (v14)
    {
      v15 = objc_retainBlock(handlerCopy);
      dismissHandler = v14->_dismissHandler;
      v14->_dismissHandler = v15;

      v14->_displayState = 0;
      objc_storeStrong(&v14->_bundleID, bundleIdentifier);
      [(SSRemoteAlertMonitor *)v14 _startObserving];
    }

    self = v14;
    dCopy = bundleIdentifier;
    selfCopy = self;
  }

  else
  {
    v9 = sub_10000C1BC(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000F5E4(v9);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(SSRemoteAlertMonitor *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = SSRemoteAlertMonitor;
  [(SSRemoteAlertMonitor *)&v3 dealloc];
}

- (void)_startObserving
{
  if (!self->_monitor)
  {
    v3 = sub_10000C1BC(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      bundleID = self->_bundleID;
      *buf = 138412546;
      v11 = bundleID;
      v12 = 2080;
      v13 = "[SSRemoteAlertMonitor _startObserving]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "start fbs monitor for %@ @%s", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v5 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000BC14;
    v8[3] = &unk_10001C940;
    objc_copyWeak(&v9, buf);
    [v5 setTransitionHandler:v8];
    v6 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v5];
    monitor = self->_monitor;
    self->_monitor = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

- (void)_stopObserving
{
  v3 = sub_10000C1BC(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SSRemoteAlertMonitor _stopObserving]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stop fbs monitor @%s", &v5, 0xCu);
  }

  [(FBSDisplayLayoutMonitor *)self->_monitor invalidate];
  monitor = self->_monitor;
  self->_monitor = 0;
}

- (void)_handleLayoutUpdate:(id)update
{
  updateCopy = update;
  v5 = updateCopy;
  if (updateCopy)
  {
    elements = [updateCopy elements];
    v7 = [elements count];

    if (v7)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      elements2 = [v5 elements];
      v10 = [elements2 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v10)
      {
        v12 = v10;
        v13 = *v36;
        *&v11 = 138412802;
        v34 = v11;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v36 != v13)
            {
              objc_enumerationMutation(elements2);
            }

            v15 = *(*(&v35 + 1) + 8 * i);
            isUIApplicationElement = [v15 isUIApplicationElement];
            v17 = isUIApplicationElement;
            v18 = sub_10000C1BC(isUIApplicationElement);
            v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
            if (v17)
            {
              if (v19)
              {
                bundleIdentifier = [v15 bundleIdentifier];
                level = [v15 level];
                *buf = v34;
                v40 = bundleIdentifier;
                v41 = 2048;
                v42 = level;
                v43 = 2080;
                v44 = "[SSRemoteAlertMonitor _handleLayoutUpdate:]";
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ lvl:%ld @%s", buf, 0x20u);
              }

              bundleID = self->_bundleID;
              bundleIdentifier2 = [v15 bundleIdentifier];
              LOBYTE(bundleID) = [(NSString *)bundleID isEqualToString:bundleIdentifier2];

              if (bundleID)
              {
                v32 = &__kCFBooleanTrue;
LABEL_27:
                isUIApplication = self->_isUIApplication;
                self->_isUIApplication = v32;

                self->_displayState = 1;
                goto LABEL_28;
              }
            }

            else
            {
              if (v19)
              {
                identifier = [v15 identifier];
                level2 = [v15 level];
                *buf = v34;
                v40 = identifier;
                v41 = 2048;
                v42 = level2;
                v43 = 2080;
                v44 = "[SSRemoteAlertMonitor _handleLayoutUpdate:]";
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ lvl:%ld @%s", buf, 0x20u);
              }

              v26 = self->_bundleID;
              identifier2 = [v15 identifier];
              LOBYTE(v26) = [(NSString *)v26 isEqualToString:identifier2];

              if (v26)
              {
                v32 = &__kCFBooleanFalse;
                goto LABEL_27;
              }
            }
          }

          v12 = [elements2 countByEnumeratingWithState:&v35 objects:v45 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      if (self->_displayState == 1)
      {
        v29 = sub_10000C1BC(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = self->_bundleID;
          *buf = 138412546;
          v40 = v30;
          v41 = 2080;
          v42 = "[SSRemoteAlertMonitor _handleLayoutUpdate:]";
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@ is dismissed @%s", buf, 0x16u);
        }

        (*(self->_dismissHandler + 2))();
        if (![(NSNumber *)self->_isUIApplication BOOLValue])
        {
          [(SSRemoteAlertMonitor *)self _stopObserving];
        }
      }
    }

    else
    {
      v31 = sub_10000C1BC(v8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v40 = "[SSRemoteAlertMonitor _handleLayoutUpdate:]";
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "no elements @%s", buf, 0xCu);
      }
    }
  }

LABEL_28:
}

@end