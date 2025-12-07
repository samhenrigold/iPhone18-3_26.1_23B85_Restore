@interface SOUIServiceViewController
- (BOOL)_checkScreenLockStatus;
- (SOUIServiceViewController)init;
- (int)_preferredStatusBarVisibility;
- (void)_cancelAuthorization;
- (void)_dismiss;
- (void)_extensionCleanup;
- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)connectToDaemonWithXpcEndpoint:(id)endpoint requestInfo:(id)info;
- (void)extensionCleanupWithCompletion:(id)completion;
- (void)finishAuthorization:(id)authorization completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)presentAuthorizationViewControllerWithHints:(id)hints requestIdentifier:(id)identifier completion:(id)completion;
- (void)viewControllerDidCancel:(id)cancel;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SOUIServiceViewController

- (SOUIServiceViewController)init
{
  v3 = sub_100002204(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[SOUIServiceViewController init]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = SOUIServiceViewController;
  return [(SOUIServiceViewController *)&v5 init];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_100002204(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[SOUIServiceViewController viewWillAppear:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = SOUIServiceViewController;
  [(SOUIServiceViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_100002204(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[SOUIServiceViewController viewDidAppear:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = SOUIServiceViewController;
  [(SOUIServiceViewController *)&v6 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100002204(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[SOUIServiceViewController viewWillDisappear:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = SOUIServiceViewController;
  [(SOUIServiceViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100002204(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    extensionViewController = self->_extensionViewController;
    *buf = 136315650;
    v9 = "[SOUIServiceViewController viewDidDisappear:]";
    v10 = 2114;
    v11 = extensionViewController;
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s extensionViewController = %{public}@ on %@", buf, 0x20u);
  }

  v7.receiver = self;
  v7.super_class = SOUIServiceViewController;
  [(SOUIServiceViewController *)&v7 viewDidDisappear:disappearCopy];
  if (self->_extensionViewController)
  {
    [(SOUIServiceViewController *)self _cancelAuthorization];
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100002204(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100004DE0();
  }

  [(SOUIServiceViewController *)self _checkScreenLockStatus];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = sub_100002204(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[SOUIServiceViewController configureWithContext:completion:]";
    v21 = 2114;
    v22 = contextCopy;
    v23 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s context: %{public}@ on %@", buf, 0x20u);
  }

  xpcEndpoint = [contextCopy xpcEndpoint];
  userInfo = [contextCopy userInfo];
  [(SOUIServiceViewController *)self connectToDaemonWithXpcEndpoint:xpcEndpoint requestInfo:userInfo];

  _remoteViewControllerProxy = [(SOUIServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];

  _remoteViewControllerProxy2 = [(SOUIServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy2 setDismissalAnimationStyle:1];

  _remoteViewControllerProxy3 = [(SOUIServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy3 setAllowsAlertStacking:1];

  _remoteViewControllerProxy4 = [(SOUIServiceViewController *)self _remoteViewControllerProxy];
  view = [(SOUIServiceViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  [_remoteViewControllerProxy4 setLaunchingInterfaceOrientation:{objc_msgSend(windowScene, "interfaceOrientation")}];

  v18.receiver = self;
  v18.super_class = SOUIServiceViewController;
  [(SOUIServiceViewController *)&v18 configureWithContext:contextCopy completion:completionCopy];
}

- (void)connectToDaemonWithXpcEndpoint:(id)endpoint requestInfo:(id)info
{
  endpointCopy = endpoint;
  infoCopy = info;
  v9 = sub_100002204(infoCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316163;
    v71 = "[SOUIServiceViewController connectToDaemonWithXpcEndpoint:requestInfo:]";
    v72 = 2114;
    v73 = endpointCopy;
    v74 = 2160;
    v75 = 1752392040;
    v76 = 2117;
    v77 = infoCopy;
    v78 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s xpcEndpoint: %{public}@, requestInfo: %{sensitive, mask.hash}@ on %@", buf, 0x34u);
  }

  objc_storeStrong(&self->_xpcDaemonEndpoint, endpoint);
  v10 = [[SOUIDaemonConnection alloc] initWithViewController:self];
  daemonConnection = self->_daemonConnection;
  self->_daemonConnection = v10;

  if (self->_daemonConnection)
  {
    if (infoCopy)
    {
      goto LABEL_5;
    }

LABEL_11:
    v19 = [sub_100002F9C() parameterErrorWithMessage:@"no requestInfo for UI service"];
    [(SOUIServiceViewController *)self authorization:0 didCompleteWithCredential:0 error:v19];
LABEL_22:

    goto LABEL_23;
  }

  v18 = sub_100002204(v12);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_100004E68();
  }

  if (!infoCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (![(SOUIServiceViewController *)self _checkScreenLockStatus])
  {
    v13 = [infoCopy valueForKey:@"extensionBundleIdentifier"];
    v14 = [infoCopy valueForKey:@"httpHeaders"];
    v15 = [infoCopy valueForKey:@"httpBody"];
    v16 = [infoCopy valueForKey:@"url"];
    v65 = v15;
    v66 = v14;
    v60 = v16;
    if (v16)
    {
      v17 = [NSURL URLWithString:v16];
    }

    else
    {
      v17 = 0;
    }

    v61 = v13;
    v64 = [infoCopy valueForKey:@"realm"];
    v63 = [infoCopy valueForKey:@"extensionData"];
    v67 = [infoCopy valueForKey:@"callerBundleIdentifier"];
    v58 = [infoCopy valueForKey:@"auditTokenData"];
    v62 = [infoCopy valueForKey:@"requestedOperation"];
    v57 = [infoCopy valueForKey:@"authorizationOptions"];
    v20 = [infoCopy valueForKey:@"useInternalExtensions"];
    bOOLValue = [v20 BOOLValue];

    v22 = [infoCopy valueForKey:@"cfNetworkInterception"];
    bOOLValue2 = [v22 BOOLValue];

    v23 = [infoCopy valueForKey:@"callerManaged"];
    bOOLValue3 = [v23 BOOLValue];

    v24 = [infoCopy valueForKey:@"callerTeamIdentifier"];
    v25 = [infoCopy valueForKey:@"localizedCallerDisplayName"];
    v26 = [infoCopy valueForKey:@"enableUserInteraction"];
    bOOLValue4 = [v26 BOOLValue];

    v27 = [infoCopy valueForKey:@"impersonationBundleIdentifier"];
    v28 = [infoCopy valueForKey:@"screenLockedBehavior"];
    self->_screenLockedBehavior = [v28 integerValue];

    v29 = [infoCopy valueForKey:@"identifier"];
    v30 = [infoCopy valueForKey:@"showOnCoverScreen"];
    self->_showOnCoverScreen = [v30 BOOLValue];

    v31 = +[SOExtensionManager sharedInstance];
    v32 = v31;
    v56 = v25;
    if (bOOLValue)
    {
      [v31 loadInternalExtension];
    }

    else
    {
      [v31 loadExtensionWithBundleIdentifier:v61];
    }
    v33 = ;
    extension = self->_extension;
    self->_extension = v33;

    v36 = sub_100002204(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      localizedExtensionDisplayName = [(SOExtension *)self->_extension localizedExtensionDisplayName];
      *buf = 138543362;
      v71 = localizedExtensionDisplayName;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "loadedExtensionWithBundleIdentifier: extension = %{public}@", buf, 0xCu);
    }

    v59 = endpointCopy;

    v38 = self->_extension;
    if (v38)
    {
      v39 = v29;
      [(SOExtension *)v38 saveDelegate:self forRequestIdentifier:v29];
      v40 = objc_alloc_init(SOAuthorizationRequestParameters);
      [v40 setIdentifier:v29];
      v52 = v17;
      [v40 setUrl:v17];
      [v40 setHttpHeaders:v66];
      [v40 setHttpBody:v65];
      [v40 setRealm:v64];
      [v40 setExtensionData:v63];
      [v40 setCallerBundleIdentifier:v67];
      [v40 setRequestedOperation:v62];
      v41 = v57;
      [v40 setAuthorizationOptions:v57];
      [v40 setCfNetworkInterception:bOOLValue2];
      [v40 setCallerManaged:bOOLValue3];
      v42 = v24;
      [v40 setCallerTeamIdentifier:v24];
      v43 = v25;
      [v40 setLocalizedCallerDisplayName:v25];
      v44 = v58;
      [v40 setAuditTokenData:v58];
      [v40 setEnableUserInteraction:bOOLValue4];
      [v40 setImpersonationBundleIdentifier:v27];
      v45 = self->_extension;
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_10000307C;
      v68[3] = &unk_10000C3F8;
      v68[4] = self;
      v69 = v40;
      v46 = v39;
      v47 = v40;
      v48 = v66;
      v49 = v47;
      v50 = v45;
      v17 = v52;
      [(SOExtension *)v50 requestAuthorizationViewControllerWithCompletion:v68];
    }

    else
    {
      v49 = [sub_100002F9C() internalErrorWithMessage:@"No active AppSSO IdP extension"];
      selfCopy2 = self;
      v46 = v29;
      [(SOUIServiceViewController *)selfCopy2 authorization:v29 didCompleteWithCredential:0 error:v49];
      v48 = v66;
      v41 = v57;
      v44 = v58;
      v42 = v24;
      v43 = v56;
    }

    v19 = v61;
    endpointCopy = v59;
    goto LABEL_22;
  }

LABEL_23:
}

- (void)viewDidLoad
{
  v3 = sub_100002204(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[SOUIServiceViewController viewDidLoad]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = SOUIServiceViewController;
  [(SOUIServiceViewController *)&v7 viewDidLoad];
  v4 = +[UIColor clearColor];
  view = [(SOUIServiceViewController *)self view];
  [view setBackgroundColor:v4];

  view2 = [(SOUIServiceViewController *)self view];
  [view2 setHidden:1];
}

- (int)_preferredStatusBarVisibility
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  v5 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
  view = [(SOUIServiceViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  v9 = [windowScene interfaceOrientation] - 3;

  return v5 != 1 && v9 < 2;
}

- (BOOL)_checkScreenLockStatus
{
  v3 = SBSGetScreenLockStatus();
  if (!v3)
  {
    return 0;
  }

  if (self->_showOnCoverScreen || (v3 = [sub_100003660() isInternalBuild], v3))
  {
    v10 = sub_100002204(v3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100004F04();
    }

    v9 = 0;
  }

  else
  {
    screenLockedBehavior = self->_screenLockedBehavior;
    v5 = sub_100002204(v3);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (screenLockedBehavior == 2)
    {
      if (v6)
      {
        sub_100004ED0();
      }

      v7 = sub_100002F9C();
      v8 = -5;
    }

    else
    {
      if (v6)
      {
        sub_100004E9C();
      }

      v7 = sub_100002F9C();
      v8 = -3;
    }

    v10 = [v7 errorWithCode:v8];
    [(SOUIServiceViewController *)self authorization:0 didCompleteWithCredential:0 error:v10];
    v9 = 1;
  }

  return v9;
}

- (void)_dismiss
{
  v3 = sub_100002204(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOUIServiceViewController _dismiss]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  extensionViewController = self->_extensionViewController;
  self->_extensionViewController = 0;

  if (self->_extension)
  {
    v6 = v9;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v7 = sub_100003934;
  }

  else
  {
    v8 = sub_100002204(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100004F40();
    }

    v6 = block;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v7 = sub_1000038D4;
  }

  v6[2] = v7;
  v6[3] = &unk_10000C420;
  v6[4] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)_extensionCleanup
{
  v3 = sub_100002204(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    extension = self->_extension;
    v7 = 136315650;
    v8 = "[SOUIServiceViewController _extensionCleanup]";
    v9 = 2114;
    v10 = extension;
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s extension = %{public}@ on %@", &v7, 0x20u);
  }

  v5 = self->_extension;
  if (v5)
  {
    [(SOExtension *)v5 unload];
    v6 = self->_extension;
    self->_extension = 0;
  }
}

- (void)_cancelAuthorization
{
  v3 = sub_100002204(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    extension = self->_extension;
    v7 = 136315650;
    v8 = "[SOUIServiceViewController _cancelAuthorization]";
    v9 = 2112;
    v10 = extension;
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s extension = %@ on %@", &v7, 0x20u);
  }

  [(SOExtension *)self->_extension cancelAuthorization:self->_requestThatPresentedViewController completion:&stru_10000C488];
  requestThatPresentedViewController = self->_requestThatPresentedViewController;
  v6 = [sub_100002F9C() errorWithCode:-2];
  [(SOUIServiceViewController *)self authorization:requestThatPresentedViewController didCompleteWithCredential:0 error:v6];
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v5 = sub_100002204(actionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[SOUIServiceViewController handleButtonActions:]";
    v8 = 2114;
    v9 = actionsCopy;
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", &v6, 0x20u);
  }

  [(SOUIServiceViewController *)self _cancelAuthorization];
}

- (void)presentAuthorizationViewControllerWithHints:(id)hints requestIdentifier:(id)identifier completion:(id)completion
{
  hintsCopy = hints;
  completionCopy = completion;
  v9 = sub_100002204(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    extensionViewController = self->_extensionViewController;
    *buf = 136315906;
    v30 = "[SOUIServiceViewController presentAuthorizationViewControllerWithHints:requestIdentifier:completion:]";
    v31 = 2114;
    v32 = extensionViewController;
    v33 = 2114;
    v34 = hintsCopy;
    v35 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s extension viewController = %{public}@, hints = %{public}@ on %@", buf, 0x2Au);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000040D8;
  v27[3] = &unk_10000C4B0;
  v11 = completionCopy;
  v28 = v11;
  v12 = objc_retainBlock(v27);
  buf[0] = 0;
  v13 = SBSGetScreenLockStatus();
  if (v13)
  {
    if (buf[0] || !self->_showOnCoverScreen && (v13 = [sub_100003660() isInternalBuild], (v13 & 1) == 0))
    {
      v14 = sub_100002204(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000050A4();
      }

      v15 = [sub_100002F9C() errorWithCode:-8 subcode:1 message:@"presentation of authorization view controller was denied because the device screen is locked"];
      goto LABEL_18;
    }
  }

  v16 = self->_extensionViewController;
  if (!v16)
  {
    v23 = sub_100002F9C();
    v24 = @"no extension authorization view controller";
LABEL_17:
    v15 = [v23 internalErrorWithMessage:v24];
LABEL_18:
    v22 = v15;
    (v12[2])(v12, 0, v15);
    goto LABEL_19;
  }

  childViewControllers = [(SOUIServiceViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  if (v16 == lastObject)
  {
    v23 = sub_100002F9C();
    v24 = @"extension authorization view controller already presented";
    goto LABEL_17;
  }

  view = [(SOUIServiceViewController *)self view];
  [view setHidden:0];

  v20 = [[SOUIAuthorizationViewController alloc] initWithExtensionViewController:self->_extensionViewController hints:hintsCopy presentViewControllerCompletion:v11];
  v21 = sub_100002204([v20 setDelegate:self]);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_1000050D8();
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000040F0;
  v25[3] = &unk_10000C420;
  v26 = v20;
  v22 = v20;
  [(SOUIServiceViewController *)self presentViewController:v22 animated:1 completion:v25];

LABEL_19:
}

- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error
{
  credentialCopy = credential;
  errorCopy = error;
  v9 = sub_100002204(errorCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v13 = "[SOUIServiceViewController authorization:didCompleteWithCredential:error:]";
    v14 = 2114;
    v15 = credentialCopy;
    v16 = 2114;
    v17 = errorCopy;
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s credential: %{public}@, %{public}@ on %@", buf, 0x2Au);
  }

  daemonConnection = self->_daemonConnection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004298;
  v11[3] = &unk_10000C4D8;
  v11[4] = self;
  [(SOUIDaemonConnection *)daemonConnection authorizationDidCompleteWithCredential:credentialCopy error:errorCopy completion:v11];
  [(SOUIServiceViewController *)self _dismiss];
}

- (void)viewControllerDidCancel:(id)cancel
{
  v4 = sub_100002204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    extensionViewController = self->_extensionViewController;
    v6 = 136315650;
    v7 = "[SOUIServiceViewController viewControllerDidCancel:]";
    v8 = 2114;
    v9 = extensionViewController;
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s extensionViewController = %{public}@ on %@", &v6, 0x20u);
  }

  if (self->_extensionViewController)
  {
    [(SOUIServiceViewController *)self _cancelAuthorization];
  }
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v4 = sub_100002204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOUIServiceViewController viewServiceDidTerminateWithError:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  requestThatPresentedViewController = self->_requestThatPresentedViewController;
  v6 = [sub_100002F9C() errorWithCode:-3 message:@"connection to extension interrupted"];
  [(SOUIServiceViewController *)self authorization:requestThatPresentedViewController didCompleteWithCredential:0 error:v6];
}

- (void)finishAuthorization:(id)authorization completion:(id)completion
{
  completionCopy = completion;
  authorizationCopy = authorization;
  v8 = sub_100002204(authorizationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    extension = self->_extension;
    v10 = 136315650;
    v11 = "[SOUIServiceViewController finishAuthorization:completion:]";
    v12 = 2112;
    v13 = extension;
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s extension = %@ on %@", &v10, 0x20u);
  }

  [(SOExtension *)self->_extension finishAuthorization:authorizationCopy completion:completionCopy];
}

- (void)extensionCleanupWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002204(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000051C4();
  }

  [(SOUIServiceViewController *)self _extensionCleanup];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

@end