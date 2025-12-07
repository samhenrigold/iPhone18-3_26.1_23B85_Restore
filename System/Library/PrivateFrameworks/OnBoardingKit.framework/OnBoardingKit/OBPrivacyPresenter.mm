@interface OBPrivacyPresenter
+ (id)presenterForPrivacySplashWithBundle:(id)bundle;
+ (id)presenterForPrivacySplashWithBundleAtPath:(id)path;
+ (id)presenterForPrivacySplashWithIdentifier:(id)identifier;
+ (id)presenterForPrivacyUnifiedAbout;
+ (id)presenterForPrivacyUnifiedAboutWithBundles:(id)bundles;
+ (id)presenterForPrivacyUnifiedAboutWithBundlesAtPaths:(id)paths;
+ (id)presenterForPrivacyUnifiedAboutWithIdentifiers:(id)identifiers;
- (UIViewController)presentingViewController;
- (void)_presenterDidDismiss;
- (void)dismiss;
- (void)present;
- (void)presentInNavigationStack:(id)stack animated:(BOOL)animated;
- (void)setDarkMode:(BOOL)mode;
- (void)setDisplayDeviceType:(unint64_t)type;
- (void)setDisplayLanguage:(id)language;
@end

@implementation OBPrivacyPresenter

+ (id)presenterForPrivacySplashWithBundle:(id)bundle
{
  v14[1] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  identifier = [bundleCopy identifier];
  v6 = [identifier isEqualToString:@"com.apple.onboarding.imessagefacetime"];

  if (v6)
  {
    v7 = [self presenterForPrivacyUnifiedAboutWithIdentifiers:&unk_1F2CF8748];
  }

  else
  {
    privacyFlow = [bundleCopy privacyFlow];
    if (privacyFlow)
    {
      v7 = objc_alloc_init(OBPrivacyPresenter);
      v9 = [[OBPrivacySplashController alloc] initWithFlow:privacyFlow];
      [(OBPrivacyPresenter *)v7 setSplashController:v9];

      splashController = [(OBPrivacyPresenter *)v7 splashController];
      [splashController setShowsLinkToUnifiedAbout:1];

      identifier2 = [privacyFlow identifier];
      v14[0] = identifier2;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [(OBPrivacyPresenter *)v7 setPresentedIdentifiers:v12];

      [(OBPrivacyPresenter *)v7 setModalPresentationStyle:2];
      [(OBPrivacyPresenter *)v7 setAnimatePresentAndDismiss:1];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)presenterForPrivacySplashWithIdentifier:(id)identifier
{
  v4 = [OBBundle bundleWithIdentifier:identifier];
  v5 = [self presenterForPrivacySplashWithBundle:v4];

  return v5;
}

+ (id)presenterForPrivacySplashWithBundleAtPath:(id)path
{
  v4 = [OBBundle bundleAtPath:path];
  v5 = [self presenterForPrivacySplashWithBundle:v4];

  return v5;
}

+ (id)presenterForPrivacyUnifiedAbout
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  [v2 setCombinedController:v3];

  [v2 setModalPresentationStyle:2];
  [v2 setAnimatePresentAndDismiss:1];

  return v2;
}

+ (id)presenterForPrivacyUnifiedAboutWithBundles:(id)bundles
{
  v19 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = bundlesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        identifier = [*(*(&v14 + 1) + 8 * i) identifier];
        [v4 addObject:identifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = objc_opt_new();
  v12 = [[OBPrivacyCombinedController alloc] initWithBundles:v5];
  [v11 setCombinedController:v12];

  [v11 setPresentedIdentifiers:v4];
  [v11 setModalPresentationStyle:2];
  [v11 setAnimatePresentAndDismiss:1];

  return v11;
}

+ (id)presenterForPrivacyUnifiedAboutWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[OBBundleManager sharedManager];
  v6 = [v5 bundlesWithIdentifiers:identifiersCopy];

  v7 = [self presenterForPrivacyUnifiedAboutWithBundles:v6];

  return v7;
}

+ (id)presenterForPrivacyUnifiedAboutWithBundlesAtPaths:(id)paths
{
  v19 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = pathsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [OBBundle bundleAtPath:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [self presenterForPrivacyUnifiedAboutWithBundles:v5];

  return v12;
}

- (void)setDisplayLanguage:(id)language
{
  objc_storeStrong(&self->_displayLanguage, language);
  languageCopy = language;
  splashController = [(OBPrivacyPresenter *)self splashController];
  [splashController setDisplayLanguage:languageCopy];

  combinedController = [(OBPrivacyPresenter *)self combinedController];
  [combinedController setDisplayLanguage:languageCopy];
}

- (void)setDisplayDeviceType:(unint64_t)type
{
  self->_displayDeviceType = type;
  splashController = [(OBPrivacyPresenter *)self splashController];
  [splashController setDisplayDeviceType:type];

  combinedController = [(OBPrivacyPresenter *)self combinedController];
  [combinedController setDisplayDeviceType:type];
}

- (void)_presenterDidDismiss
{
  dismissHandler = [(OBPrivacyPresenter *)self dismissHandler];

  if (dismissHandler)
  {
    dismissHandler2 = [(OBPrivacyPresenter *)self dismissHandler];
    dismissHandler2[2]();
  }

  [(OBPrivacyPresenter *)self setPresentedController:0];
}

- (void)present
{
  splashController = [(OBPrivacyPresenter *)self splashController];
  if (splashController || ([(OBPrivacyPresenter *)self combinedController], (splashController = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = splashController;
    presentingViewController = [(OBPrivacyPresenter *)self presentingViewController];

    if (presentingViewController)
    {
      [(OBPrivacyPresenter *)self setPresentedController:v4];
      customTintColor = [(OBPrivacyPresenter *)self customTintColor];
      splashController2 = [(OBPrivacyPresenter *)self splashController];
      [splashController2 setCustomTintColor:customTintColor];

      underlineLinks = [(OBPrivacyPresenter *)self underlineLinks];
      splashController3 = [(OBPrivacyPresenter *)self splashController];
      [splashController3 setUnderlineLinks:underlineLinks];

      underlineLinks2 = [(OBPrivacyPresenter *)self underlineLinks];
      combinedController = [(OBPrivacyPresenter *)self combinedController];
      [combinedController setUnderlineLinks:underlineLinks2];

      customTintColor2 = [(OBPrivacyPresenter *)self customTintColor];
      combinedController2 = [(OBPrivacyPresenter *)self combinedController];
      [combinedController2 setCustomTintColor:customTintColor2];

      v15 = [[OBPrivacyModalNavigationController alloc] initWithRootViewController:v4];
      customTintColor3 = [(OBPrivacyPresenter *)self customTintColor];
      view = [(OBPrivacyModalNavigationController *)v15 view];
      [view setTintColor:customTintColor3];

      [(OBPrivacyModalNavigationController *)v15 setDarkMode:[(OBPrivacyPresenter *)self darkMode]];
      [(OBNavigationController *)v15 setSupportedInterfaceOrientations:self->_supportedInterfaceOrientations];
      [(OBPrivacyModalNavigationController *)v15 setModalPresentationStyle:self->_modalPresentationStyle];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __29__OBPrivacyPresenter_present__block_invoke;
      v24[3] = &unk_1E7C15590;
      v24[4] = self;
      [(OBPrivacyModalNavigationController *)v15 addDismissButtonWithPressedHandler:v24];
      dismissHandler = [(OBPrivacyPresenter *)self dismissHandler];

      if (dismissHandler)
      {
        presentationController = [(OBPrivacyModalNavigationController *)v15 presentationController];
        [presentationController setDelegate:self];
      }

      presentingViewController2 = [(OBPrivacyPresenter *)self presentingViewController];
      animatePresentAndDismiss = [(OBPrivacyPresenter *)self animatePresentAndDismiss];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __29__OBPrivacyPresenter_present__block_invoke_2;
      v23[3] = &unk_1E7C15590;
      v23[4] = self;
      [presentingViewController2 presentViewController:v15 animated:animatePresentAndDismiss completion:v23];
    }

    else
    {
      v15 = _OBLoggingFacility(v6);
      if (os_log_type_enabled(&v15->super.super.super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_1B4FB6000, &v15->super.super.super.super.super, OS_LOG_TYPE_DEFAULT, "Tried to present with no presenter", v22, 2u);
      }
    }
  }
}

void __29__OBPrivacyPresenter_present__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationCompletionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) presentationCompletionHandler];
    v3[2]();
  }
}

- (void)presentInNavigationStack:(id)stack animated:(BOOL)animated
{
  if (stack)
  {
    animatedCopy = animated;
    [(OBPrivacyPresenter *)self setPresentingViewController:?];
    splashController = [(OBPrivacyPresenter *)self splashController];
    if (splashController || ([(OBPrivacyPresenter *)self combinedController], (splashController = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = splashController;
      presentingViewController = [(OBPrivacyPresenter *)self presentingViewController];
      [presentingViewController pushViewController:v8 animated:animatedCopy];
    }
  }

  else
  {

    [(OBPrivacyPresenter *)self present];
  }
}

- (void)dismiss
{
  presentingViewController = [(OBPrivacyPresenter *)self presentingViewController];
  animatePresentAndDismiss = [(OBPrivacyPresenter *)self animatePresentAndDismiss];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__OBPrivacyPresenter_dismiss__block_invoke;
  v5[3] = &unk_1E7C15590;
  v5[4] = self;
  [presentingViewController dismissViewControllerAnimated:animatePresentAndDismiss completion:v5];
}

- (void)setDarkMode:(BOOL)mode
{
  modeCopy = mode;
  self->_darkMode = mode;
  splashController = [(OBPrivacyPresenter *)self splashController];
  [splashController setDarkMode:modeCopy];

  combinedController = [(OBPrivacyPresenter *)self combinedController];
  [combinedController setDarkMode:modeCopy];

  splashController2 = [(OBPrivacyPresenter *)self splashController];
  v8 = splashController2;
  if (splashController2)
  {
    combinedController2 = splashController2;
  }

  else
  {
    combinedController2 = [(OBPrivacyPresenter *)self combinedController];
  }

  v13 = combinedController2;

  navigationController = [v13 navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationController2 = [v13 navigationController];
    [navigationController2 setDarkMode:modeCopy];
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end