@interface ServiceTermsPageViewController
- (BOOL)_checkEntitlementsWithError:(id *)error;
- (id)_remoteViewControllerProxy;
- (void)_dismiss;
- (void)_dismissClientViewController;
- (void)_dismissWithAcceptance:(BOOL)acceptance;
- (void)_showViewControllerForAlertProxy:(id)proxy;
- (void)_willAppearInRemoteViewController:(id)controller;
- (void)alertProxyDidCancel:(id)cancel;
- (void)dealloc;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ServiceTermsPageViewController

- (void)dealloc
{
  [(ServiceAlertProxy *)self->_remoteAlertProxy setDelegate:0];
  [(SKTermsPageViewController *)self->_underlyingViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = ServiceTermsPageViewController;
  [(ServiceTermsPageViewController *)&v3 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  objc_initWeak(&location, self);
  v5 = +[ServiceAlertQueue defaultQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000EEE8;
  v11[3] = &unk_1000516D8;
  objc_copyWeak(&v12, &location);
  [v5 getNextAlertForClassName:@"ServiceTermsPageViewController" completionBlock:v11];

  _remoteViewControllerProxy = [(ServiceTermsPageViewController *)self _remoteViewControllerProxy];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [_remoteViewControllerProxy setIdleTimerDisabled:1 forReason:v8];

  _remoteViewControllerProxy2 = [(ServiceTermsPageViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy2 setDesiredHardwareButtonEvents:16];

  v10.receiver = self;
  v10.super_class = ServiceTermsPageViewController;
  [(ServiceTermsPageViewController *)&v10 viewDidAppear:appearCopy];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  view = [(ServiceTermsPageViewController *)self view];
  v4 = +[UIColor clearColor];
  [view setBackgroundColor:v4];

  v5.receiver = self;
  v5.super_class = ServiceTermsPageViewController;
  [(ServiceTermsPageViewController *)&v5 viewDidLoad];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v5 = +[SSLogConfig sharedConfig];
  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  v11 = 138412290;
  v12 = errorCopy;
  v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: View service did terminate.", &v11, 12);

  if (v10)
  {
    oSLogObject = [NSString stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog();
LABEL_10:
  }

  [(ServiceTermsPageViewController *)self _dismissClientViewController];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  remoteAlertProxy = self->_remoteAlertProxy;
  if (remoteAlertProxy)
  {
    [(ServiceAlertProxy *)remoteAlertProxy setDelegate:0];
    [(ServiceAlertProxy *)self->_remoteAlertProxy invalidate];
    v6 = self->_remoteAlertProxy;
    self->_remoteAlertProxy = 0;
  }

  v7.receiver = self;
  v7.super_class = ServiceTermsPageViewController;
  [(ServiceTermsPageViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)_willAppearInRemoteViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setAllowsAlertStacking:1];
  [controllerCopy setAllowsMenuButtonDismissal:1];
  [controllerCopy setShouldDismissOnUILock:1];
  v5.receiver = self;
  v5.super_class = ServiceTermsPageViewController;
  [(ServiceTermsPageViewController *)&v5 _willAppearInRemoteViewController:controllerCopy];
}

- (void)alertProxyDidCancel:(id)cancel
{
  v4 = +[SSLogConfig sharedConfig];
  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v10 = 138412290;
  v11 = objc_opt_class();
  v8 = v11;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Alert proxy did cancel.", &v10, 12);

  if (v9)
  {
    oSLogObject = [NSString stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog();
LABEL_10:
  }

  [(ServiceTermsPageViewController *)self _dismissClientViewController];
}

- (BOOL)_checkEntitlementsWithError:(id *)error
{
  v9 = 0u;
  v10 = 0u;
  objc_msgSend__hostAuditToken(self, a2);
  v7 = v9;
  v8 = v10;
  if (sub_10000D270(&v7, @"com.apple.ios.StoreKit.terms-page") || (v7 = v9, v8 = v10, sub_10000D270(&v7, kSSITunesStorePrivateEntitlement)))
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = SSError();
    if (error)
    {
      v4 = v4;
      v5 = 0;
      *error = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_dismiss
{
  [(ServiceAlertProxy *)self->_remoteAlertProxy setDelegate:0];
  remoteAlertProxy = self->_remoteAlertProxy;
  self->_remoteAlertProxy = 0;

  _remoteViewControllerProxy = [(ServiceTermsPageViewController *)self _remoteViewControllerProxy];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [_remoteViewControllerProxy setIdleTimerDisabled:0 forReason:v5];

  [_remoteViewControllerProxy dismiss];
}

- (void)_dismissClientViewController
{
  if (self->_underlyingViewController)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F62C;
    block[3] = &unk_100051148;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_dismissWithAcceptance:(BOOL)acceptance
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v5, "1", acceptance);
  [(ServiceAlertProxy *)self->_remoteAlertProxy finishWithResponse:v5];
  [(ServiceTermsPageViewController *)self _dismiss];
}

- (id)_remoteViewControllerProxy
{
  v4.receiver = self;
  v4.super_class = ServiceTermsPageViewController;
  _remoteViewControllerProxy = [(ServiceTermsPageViewController *)&v4 _remoteViewControllerProxy];

  return _remoteViewControllerProxy;
}

- (void)_showViewControllerForAlertProxy:(id)proxy
{
  proxyCopy = proxy;
  objc_storeStrong(&self->_remoteAlertProxy, proxy);
  [(ServiceAlertProxy *)self->_remoteAlertProxy setDelegate:self];
  options = [proxyCopy options];
  v7 = SSXPCCreateCFObjectFromXPCObject();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = 0;
    v8 = [(ServiceTermsPageViewController *)self _checkEntitlementsWithError:&v29];
    v9 = v29;
    if (v8)
    {
      underlyingViewController = self->_underlyingViewController;
      if (underlyingViewController || (v11 = [SKTermsPageViewController alloc], [v7 objectForKey:@"terms"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "initWithTerms:", v12), v14 = self->_underlyingViewController, self->_underlyingViewController = v13, v14, v12, -[SKTermsPageViewController setDelegate:](self->_underlyingViewController, "setDelegate:", self), (underlyingViewController = self->_underlyingViewController) != 0))
      {
        [(ServiceTermsPageViewController *)self presentViewController:underlyingViewController animated:1 completion:0];
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:
      [(ServiceTermsPageViewController *)self _dismiss];
      goto LABEL_29;
    }

    v21 = +[SSLogConfig sharedConfig];
    shouldLog = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      LODWORD(v23) = shouldLog | 2;
    }

    else
    {
      LODWORD(v23) = shouldLog;
    }

    oSLogObject = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v23;
    }

    else
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v25 = objc_opt_class();
      v30 = 138412290;
      v31 = v25;
      v26 = v25;
      v27 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%@]: Denying terms sheet for unentitled client.", &v30, 12);

      if (!v27)
      {
LABEL_27:

        goto LABEL_28;
      }

      oSLogObject = [NSString stringWithCString:v27 encoding:4];
      free(v27);
      v28 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_27;
  }

  v15 = +[SSLogConfig sharedConfig];
  shouldLog2 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    LODWORD(v17) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v17) = shouldLog2;
  }

  oSLogObject2 = [v15 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v17;
  }

  else
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    goto LABEL_15;
  }

  v30 = 138412290;
  v31 = objc_opt_class();
  v19 = v31;
  v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "[%@]: Invalid alert proxy, dismissing.", &v30, 12);

  if (v20)
  {
    oSLogObject2 = [NSString stringWithCString:v20 encoding:4];
    free(v20);
    SSFileLog();
LABEL_15:
  }

  [(ServiceTermsPageViewController *)self _dismiss];
LABEL_30:
}

@end