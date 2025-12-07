@interface TVAccessViewServiceViewController
- (TVAccessViewServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)_willAppearInRemoteViewController:(id)controller;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)configureWithUserInfo:(id)info;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation TVAccessViewServiceViewController

- (TVAccessViewServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = TVAccessViewServiceViewController;
  v4 = [(TVAccessViewServiceViewController *)&v9 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v6 = sub_1000014D4(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TVAccessViewServiceViewController init", v8, 2u);
    }
  }

  return v5;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  objc_initWeak(&location, self);
  accountName = self->_accountName;
  if (accountName)
  {
    v6 = accountName;
  }

  else
  {
    v6 = &stru_100004200;
  }

  v18[0] = VUIAccessOptionsAccountKey;
  v18[1] = VUIAccessOptionsShouldDenyOnCancelKey;
  v19[0] = v6;
  v19[1] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v8 = [VUIAccessViewController alloc];
  bundleIDs = self->_bundleIDs;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000105C;
  v15[3] = &unk_100004178;
  objc_copyWeak(&v16, &location);
  v10 = [v8 initWithBundleIDs:bundleIDs options:v7 completionHandler:v15];
  accessViewController = self->_accessViewController;
  self->_accessViewController = v10;

  [(VUIAccessViewController *)self->_accessViewController setModalPresentationStyle:2];
  [(VUIAccessViewController *)self->_accessViewController setModalPresentationCapturesStatusBarAppearance:1];
  v12 = self->_accessViewController;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000109C;
  v14[3] = &unk_1000041A0;
  v14[4] = self;
  [(TVAccessViewServiceViewController *)self presentViewController:v12 animated:1 completion:v14];
  v13.receiver = self;
  v13.super_class = TVAccessViewServiceViewController;
  [(TVAccessViewServiceViewController *)&v13 viewDidAppear:appearCopy];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

- (void)configureWithUserInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKey:WLKViewServiceAppBundlesKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_bundleIDs, v4);
  }

  v5 = [infoCopy objectForKey:WLKViewServiceAccountNameKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_accountName, v5);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  userInfo = [contextCopy userInfo];
  [(TVAccessViewServiceViewController *)self configureWithUserInfo:userInfo];
  v9.receiver = self;
  v9.super_class = TVAccessViewServiceViewController;
  [(TVAccessViewServiceViewController *)&v9 configureWithContext:contextCopy completion:completionCopy];
}

- (void)_willAppearInRemoteViewController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_1000014D4(controllerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "TVAccessViewServiceViewController _willAppearInRemoteViewController:", buf, 2u);
  }

  [controllerCopy setShouldDisableFadeInAnimation:1];
  [controllerCopy setAllowsMenuButtonDismissal:1];
  [controllerCopy setShouldDismissOnUILock:1];
  [controllerCopy setAllowsAlertStacking:1];
  v6.receiver = self;
  v6.super_class = TVAccessViewServiceViewController;
  [(TVAccessViewServiceViewController *)&v6 _willAppearInRemoteViewController:controllerCopy];
}

- (void)_dismiss
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100001360;
  v2[3] = &unk_1000041A0;
  v2[4] = self;
  [(TVAccessViewServiceViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

@end