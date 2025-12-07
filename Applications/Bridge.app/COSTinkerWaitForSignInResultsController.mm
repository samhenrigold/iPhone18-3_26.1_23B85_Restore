@interface COSTinkerWaitForSignInResultsController
- (COSBuddyControllerDelegate)waitDelegate;
- (id)localizedWaitScreenDescription;
- (void)didPushWaitScreen;
- (void)popToWaitForCDPCompletionController;
@end

@implementation COSTinkerWaitForSignInResultsController

- (void)didPushWaitScreen
{
  setupController = [UIApp setupController];
  tinkerAuthenticationController = [setupController tinkerAuthenticationController];

  self->_currentStatus = 0;
  setupController2 = [UIApp setupController];
  pairingReportManager = [setupController2 pairingReportManager];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009AFB8;
  v8[3] = &unk_10026A738;
  v8[4] = self;
  v9 = pairingReportManager;
  v7 = pairingReportManager;
  [tinkerAuthenticationController waitForSatelliteSigninWithProgressCompletion:v8];
}

- (void)popToWaitForCDPCompletionController
{
  setupController = [UIApp setupController];
  navigationController = [setupController navigationController];

  v25 = navigationController;
  viewControllers = [navigationController viewControllers];
  v5 = [viewControllers mutableCopy];

  setupController2 = [UIApp setupController];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  buddyControllers = [setupController2 buddyControllers];
  v8 = [buddyControllers countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(buddyControllers);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = objc_opt_class();
        if ([v14 isEqual:objc_opt_class()])
        {
          v15 = v13;

          v10 = v15;
        }
      }

      v9 = [buddyControllers countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  reverseObjectEnumerator = [v5 reverseObjectEnumerator];
  v17 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v21 = objc_opt_class();
        if ([v21 isEqual:objc_opt_class()])
        {
          [v10 setDelegate:setupController2];
          [v10 setAppearingFromBackNavigation:1];
          goto LABEL_22;
        }

        objc_msgSend_removeObject_(v5);
      }

      v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v36 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  v22 = pbb_accountsignin_log();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    v24 = v25;
    if (v23)
    {
      *buf = 138412290;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "cdp ui view controller %@", buf, 0xCu);
    }

    [v25 setViewControllers:v5 animated:1];
  }

  else
  {
    v24 = v25;
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "COSTinkerWaitForWatchCDPEnrollment not in navstack.  Skipping", buf, 2u);
    }
  }
}

- (id)localizedWaitScreenDescription
{
  setupController = [UIApp setupController];
  tinkerUserName = [setupController tinkerUserName];
  localizedCapitalizedString = [tinkerUserName localizedCapitalizedString];

  v5 = +[NSBundle mainBundle];
  if (localizedCapitalizedString)
  {
    v6 = [v5 localizedStringForKey:@"APPLEID_ACCOUNT_HOLD_DESCRIPTION_TINKER_USER_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
    v7 = [NSString stringWithFormat:v6, localizedCapitalizedString];
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"APPLEID_ACCOUNT_HOLD_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];
  }

  return v7;
}

- (COSBuddyControllerDelegate)waitDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_waitDelegate);

  return WeakRetained;
}

@end