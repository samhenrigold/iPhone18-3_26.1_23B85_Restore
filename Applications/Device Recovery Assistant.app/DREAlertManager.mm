@interface DREAlertManager
+ (id)sharedInstance;
- (BOOL)_isAnyAlertOrModalVisible;
- (DREAlertManager)init;
- (UIViewController)presentedPowerDownVC;
- (id)_findTopViewController:(id)controller;
- (id)_getTopViewController;
- (void)powerDownViewRequestCancel:(id)cancel;
- (void)powerDownViewRequestPowerDown:(id)down;
- (void)showMenuSheetWithOptions:(unint64_t)options completion:(id)completion response:(id)response;
- (void)showPowerDownWithCompletion:(id)completion response:(id)response;
@end

@implementation DREAlertManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000073F0;
  block[3] = &unk_100028880;
  block[4] = self;
  if (qword_100032150 != -1)
  {
    dispatch_once(&qword_100032150, block);
  }

  v2 = qword_100032148;

  return v2;
}

- (DREAlertManager)init
{
  v3.receiver = self;
  v3.super_class = DREAlertManager;
  result = [(DREAlertManager *)&v3 init];
  if (result)
  {
    *&result->_alertVisible = 0;
  }

  return result;
}

- (id)_findTopViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (!controllerCopy)
  {
    v8 = 0;
    goto LABEL_10;
  }

  presentedViewController = [controllerCopy presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [v5 presentedViewController];
LABEL_9:
    v9 = presentedViewController2;
    v8 = [(DREAlertManager *)self _findTopViewController:presentedViewController2];

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentedViewController2 = [v5 visibleViewController];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentedViewController2 = [v5 selectedViewController];
    goto LABEL_9;
  }

  v8 = v5;
LABEL_10:

  return v8;
}

- (id)_getTopViewController
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = +[UIApplication sharedApplication];
  connectedScenes = [v3 connectedScenes];

  v5 = [connectedScenes countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        if (![v9 activationState])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            keyWindow = [v9 keyWindow];
            if (keyWindow)
            {
              keyWindow2 = keyWindow;
              goto LABEL_25;
            }
          }
        }
      }

      v6 = [connectedScenes countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = +[UIApplication sharedApplication];
  keyWindow2 = [v11 keyWindow];

  if (!keyWindow2 || [keyWindow2 isHidden])
  {
    v13 = +[UIApplication sharedApplication];
    windows = [v13 windows];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    connectedScenes = windows;
    v15 = [connectedScenes countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      while (2)
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(connectedScenes);
          }

          v19 = *(*(&v25 + 1) + 8 * j);
          if (([v19 isHidden] & 1) == 0)
          {
            v20 = v19;

            keyWindow2 = v20;
            goto LABEL_24;
          }
        }

        v16 = [connectedScenes countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:

LABEL_25:
  }

  rootViewController = [keyWindow2 rootViewController];
  if (rootViewController)
  {
    v22 = [(DREAlertManager *)self _findTopViewController:rootViewController];
  }

  else
  {
    v23 = sub_100012608(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000129B4();
    }

    v22 = 0;
  }

  return v22;
}

- (void)showMenuSheetWithOptions:(unint64_t)options completion:(id)completion response:(id)response
{
  optionsCopy = options;
  completionCopy = completion;
  responseCopy = response;
  _isAnyAlertOrModalVisible = [(DREAlertManager *)self _isAnyAlertOrModalVisible];
  if (_isAnyAlertOrModalVisible)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v11 = sub_100012608(_isAnyAlertOrModalVisible);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v42 = "[DREAlertManager showMenuSheetWithOptions:completion:response:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: Presenting menu sheet…", buf, 0xCu);
    }

    v12 = +[UIDevice currentDevice];
    v13 = [v12 userInterfaceIdiom] == 1;

    v14 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:v13];
    v15 = MSUCopyInstalledRecoveryOSVersion();
    v16 = [v15 length];
    if ((optionsCopy & 4) != 0 && v16)
    {
      v17 = +[NSBundle mainBundle];
      v18 = [v17 localizedStringForKey:@"NEARBY_DEVICE_RECOVERY_MENU" value:&stru_100028E90 table:0];

      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100007D98;
      v39[3] = &unk_1000288A8;
      v39[4] = self;
      v40 = responseCopy;
      v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:v39];
      [v14 addAction:v19];
    }

    if ((optionsCopy & 2) != 0)
    {
      v20 = +[NSBundle mainBundle];
      v21 = [v20 localizedStringForKey:@"RESTART_ALERT_BUTTON" value:&stru_100028E90 table:0];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100007E64;
      v37[3] = &unk_1000288A8;
      v37[4] = self;
      v38 = responseCopy;
      v22 = [UIAlertAction actionWithTitle:v21 style:2 handler:v37];
      [v14 addAction:v22];
    }

    if (optionsCopy)
    {
      v23 = +[NSBundle mainBundle];
      v24 = [v23 localizedStringForKey:@"SHUT_DOWN" value:&stru_100028E90 table:0];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100007F30;
      v35[3] = &unk_1000288A8;
      v35[4] = self;
      v36 = responseCopy;
      v25 = [UIAlertAction actionWithTitle:v24 style:0 handler:v35];
      [v14 addAction:v25];
    }

    v26 = +[NSBundle mainBundle];
    v27 = [v26 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_100028E90 table:0];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100007FFC;
    v33[3] = &unk_1000288A8;
    v33[4] = self;
    v34 = responseCopy;
    v28 = [UIAlertAction actionWithTitle:v27 style:1 handler:v33];
    [v14 addAction:v28];

    _getTopViewController = [(DREAlertManager *)self _getTopViewController];
    if (_getTopViewController)
    {
      [(DREAlertManager *)self setAlertVisible:1];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000080C8;
      v31[3] = &unk_1000288D0;
      v32 = completionCopy;
      [_getTopViewController presentViewController:v14 animated:1 completion:v31];
    }

    else
    {
      v30 = sub_100012608(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100012A34();
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }
  }
}

- (void)showPowerDownWithCompletion:(id)completion response:(id)response
{
  completionCopy = completion;
  responseCopy = response;
  if (completionCopy)
  {
    v8 = completionCopy;
  }

  else
  {
    v8 = &stru_100028910;
  }

  _isAnyAlertOrModalVisible = [(DREAlertManager *)self _isAnyAlertOrModalVisible];
  if (_isAnyAlertOrModalVisible)
  {
    v8->invoke(v8, 0);
  }

  else
  {
    v10 = sub_100012608(_isAnyAlertOrModalVisible);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v20 = "[DREAlertManager showPowerDownWithCompletion:response:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Presenting power down UI…", buf, 0xCu);
    }

    [(DREAlertManager *)self setPowerDownResponse:responseCopy];
    v11 = +[SBUIPowerDownViewControllerFactory newPowerDownViewController];
    if (v11)
    {
      v12 = +[UIColor lightGrayColor];
      view = [v11 view];
      [view setBackgroundColor:v12];

      [v11 setPowerDownDelegate:self];
      [v11 setModalPresentationStyle:5];
      [v11 setModalTransitionStyle:2];
      _getTopViewController = [(DREAlertManager *)self _getTopViewController];
      if (_getTopViewController)
      {
        [(DREAlertManager *)self setPowerDownVisible:1];
        [(DREAlertManager *)self setPresentedPowerDownVC:v11];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100008448;
        v17[3] = &unk_1000288D0;
        v18 = v8;
        [_getTopViewController presentViewController:v11 animated:1 completion:v17];
      }

      else
      {
        v16 = sub_100012608(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100012AB4();
        }

        v8->invoke(v8, 0);
        [(DREAlertManager *)self setPowerDownResponse:0];
      }
    }

    else
    {
      v15 = sub_100012608(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100012B34();
      }

      v8->invoke(v8, 0);
      [(DREAlertManager *)self setPowerDownResponse:0];
    }
  }
}

- (void)powerDownViewRequestCancel:(id)cancel
{
  cancelCopy = cancel;
  v5 = sub_100012608(cancelCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v11 = "[DREAlertManager powerDownViewRequestCancel:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Power down request canceled - dismissing power down UI.", buf, 0xCu);
  }

  presentedPowerDownVC = [(DREAlertManager *)self presentedPowerDownVC];

  if (presentedPowerDownVC == cancelCopy)
  {
    [(DREAlertManager *)self setPowerDownVisible:0];
    [(DREAlertManager *)self setPresentedPowerDownVC:0];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100008684;
    v9[3] = &unk_100028938;
    v9[4] = self;
    [cancelCopy dismissViewControllerAnimated:1 completion:v9];
  }

  else
  {
    v8 = sub_100012608(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100012BB4();
    }
  }
}

- (void)powerDownViewRequestPowerDown:(id)down
{
  downCopy = down;
  v5 = sub_100012608(downCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446210;
    v12 = "[DREAlertManager powerDownViewRequestPowerDown:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Power down requested.", &v11, 0xCu);
  }

  presentedPowerDownVC = [(DREAlertManager *)self presentedPowerDownVC];

  if (presentedPowerDownVC == downCopy)
  {
    [(DREAlertManager *)self setPowerDownVisible:0];
    [(DREAlertManager *)self setPresentedPowerDownVC:0];
    powerDownResponse = [(DREAlertManager *)self powerDownResponse];

    if (powerDownResponse)
    {
      powerDownResponse2 = [(DREAlertManager *)self powerDownResponse];
      powerDownResponse2[2](powerDownResponse2, 0);

      [(DREAlertManager *)self setPowerDownResponse:0];
    }
  }

  else
  {
    v8 = sub_100012608(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100012C30();
    }
  }
}

- (BOOL)_isAnyAlertOrModalVisible
{
  alertVisible = [(DREAlertManager *)self alertVisible];
  if (alertVisible || (alertVisible = [(DREAlertManager *)self powerDownVisible]))
  {
    v4 = sub_100012608(alertVisible);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[DREAlertManager _isAnyAlertOrModalVisible]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: An alert or modal managed by DREAlertManager is already visible.", &v6, 0xCu);
    }

    LOBYTE(alertVisible) = 1;
  }

  return alertVisible;
}

- (UIViewController)presentedPowerDownVC
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedPowerDownVC);

  return WeakRetained;
}

@end