@interface OBPrivacyLinkController
+ (id)linkWithBundleAtPath:(id)path;
+ (id)linkWithBundleIdentifier:(id)identifier;
+ (id)linkWithBundleIdentifiers:(id)identifiers;
+ (id)linkWithBundlesAtPaths:(id)paths;
+ (id)linkWithPrivacyBundle:(id)bundle;
- (OBBundle)bundle;
- (OBPrivacyFlow)flow;
- (OBPrivacyLinkController)init;
- (OBPrivacyLinkController)initWithBundleIdentifiers:(id)identifiers;
- (OBPrivacyLinkController)initWithPrivacyBundle:(id)bundle;
- (OBPrivacyLinkController)initWithPrivacyBundles:(id)bundles;
- (id)_privacyPresenter;
- (void)_linkPressed;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation OBPrivacyLinkController

+ (id)linkWithBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v5 = [objc_alloc(objc_msgSend(self "_platformSpecificClass"))];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)linkWithBundleIdentifier:(id)identifier
{
  v4 = [OBBundle bundleWithIdentifier:identifier];
  v5 = [self linkWithPrivacyBundle:v4];

  return v5;
}

+ (id)linkWithBundleAtPath:(id)path
{
  v4 = [OBBundle bundleAtPath:path];
  v5 = [self linkWithPrivacyBundle:v4];

  return v5;
}

+ (id)linkWithBundlesAtPaths:(id)paths
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

  v12 = [objc_alloc(objc_msgSend(self "_platformSpecificClass"))];

  return v12;
}

+ (id)linkWithPrivacyBundle:(id)bundle
{
  if (bundle)
  {
    bundleCopy = bundle;
    v5 = [objc_alloc(objc_msgSend(self "_platformSpecificClass"))];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (OBPrivacyLinkController)init
{
  v6.receiver = self;
  v6.super_class = OBPrivacyLinkController;
  v2 = [(OBPrivacyLinkController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(OBPrivacyLinkController *)v2 setDisplayIcon:1];
    v4 = +[OBCapabilities sharedCapabilities];
    -[OBPrivacyLinkController setAllowsOpeningSafari:](v3, "setAllowsOpeningSafari:", [v4 preventOpeningSafari] ^ 1);
  }

  return v3;
}

- (OBPrivacyLinkController)initWithPrivacyBundles:(id)bundles
{
  bundlesCopy = bundles;
  v5 = [(OBPrivacyLinkController *)self init];
  if (v5)
  {
    v6 = [bundlesCopy copy];
    bundles = v5->_bundles;
    v5->_bundles = v6;
  }

  return v5;
}

- (OBPrivacyLinkController)initWithPrivacyBundle:(id)bundle
{
  v9[1] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  selfCopy = [bundleCopy privacyFlow];

  if (selfCopy)
  {
    v9[0] = bundleCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v7 = [(OBPrivacyLinkController *)self initWithPrivacyBundles:v6];

    self = v7;
    selfCopy = self;
  }

  return selfCopy;
}

- (OBPrivacyLinkController)initWithBundleIdentifiers:(id)identifiers
{
  v41 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = +[OBBundleManager sharedManager];
  v6 = [v5 bundlesWithIdentifiers:identifiersCopy];

  if ([v6 count])
  {
    v28 = identifiersCopy;
    if (identifiersCopy)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v34;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v34 != v11)
            {
              objc_enumerationMutation(v8);
            }

            identifier = [*(*(&v33 + 1) + 8 * i) identifier];
            [v7 addObject:identifier];
          }

          v10 = [v8 countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v7 = 0;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * j);
          privacyFlow = [v20 privacyFlow];

          if (!privacyFlow)
          {
            v23 = _OBLoggingFacility(v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [(OBPrivacyLinkController *)v37 initWithBundleIdentifiers:v20, &v38, v23];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v17);
    }

    v24 = [(OBPrivacyLinkController *)self initWithPrivacyBundles:v15];
    if (v24)
    {
      v25 = [v7 copy];
      bundleIdentifiers = v24->_bundleIdentifiers;
      v24->_bundleIdentifiers = v25;
    }

    self = v24;
    selfCopy = self;
    identifiersCopy = v28;
  }

  else
  {
    v7 = _OBLoggingFacility(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(OBPrivacyLinkController *)identifiersCopy initWithBundleIdentifiers:v7];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (OBBundle)bundle
{
  v3 = +[OBBundleManager sharedManager];
  bundles = [(OBPrivacyLinkController *)self bundles];
  v5 = [v3 privacyLinkBundleForBundles:bundles];

  return v5;
}

- (OBPrivacyFlow)flow
{
  bundle = [(OBPrivacyLinkController *)self bundle];
  privacyFlow = [bundle privacyFlow];

  return privacyFlow;
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = OBPrivacyLinkController;
  [(OBPrivacyLinkController *)&v7 viewDidAppear:appear];
  if ([(OBPrivacyLinkController *)self isMovingToParentViewController])
  {
    v4 = +[OBAnalyticsManager sharedManager];
    bundle = [(OBPrivacyLinkController *)self bundle];
    identifier = [bundle identifier];
    [v4 logPresentationOfPrivacyLinkWithIdentifier:identifier];
  }
}

- (id)_privacyPresenter
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_bundleIdentifiers count]>= 2)
  {
    bundles = [(OBPrivacyLinkController *)self bundles];
    v4 = [OBPrivacyPresenter presenterForPrivacyUnifiedAboutWithBundles:bundles];
LABEL_17:

    goto LABEL_18;
  }

  if (self->_bundleIdentifiers || (-[OBPrivacyLinkController bundle](self, "bundle"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isPlaceholder], v5, v6))
  {
    bundle = [(OBPrivacyLinkController *)self bundle];
    v4 = [OBPrivacyPresenter presenterForPrivacySplashWithBundle:bundle];

    if (v4)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  bundles2 = [(OBPrivacyLinkController *)self bundles];
  v9 = [bundles2 count];

  if (v9 < 2)
  {
LABEL_16:
    bundles = [(OBPrivacyLinkController *)self bundle];
    underlyingBundle = [bundles underlyingBundle];
    bundlePath = [underlyingBundle bundlePath];
    v4 = [OBPrivacyPresenter presenterForPrivacySplashWithBundleAtPath:bundlePath];

    goto LABEL_17;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  bundles3 = [(OBPrivacyLinkController *)self bundles];
  v12 = [bundles3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(bundles3);
        }

        underlyingBundle2 = [*(*(&v21 + 1) + 8 * i) underlyingBundle];
        bundlePath2 = [underlyingBundle2 bundlePath];
        [v10 addObject:bundlePath2];
      }

      v13 = [bundles3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v4 = [OBPrivacyPresenter presenterForPrivacyUnifiedAboutWithBundlesAtPaths:v10];

LABEL_18:

  return v4;
}

- (void)_linkPressed
{
  v3 = _OBLoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_1B4FB6000, v3, OS_LOG_TYPE_DEFAULT, "OBPrivacy link pressed!", v23, 2u);
  }

  _privacyPresenter = [(OBPrivacyLinkController *)self _privacyPresenter];
  [_privacyPresenter setPresentingViewController:self];
  displayLanguage = [(OBPrivacyLinkController *)self displayLanguage];
  [_privacyPresenter setDisplayLanguage:displayLanguage];

  allowsOpeningSafari = [(OBPrivacyLinkController *)self allowsOpeningSafari];
  splashController = [_privacyPresenter splashController];
  [splashController setAllowsOpeningSafari:allowsOpeningSafari];

  underlineLinks = [(OBPrivacyLinkController *)self underlineLinks];
  splashController2 = [_privacyPresenter splashController];
  [splashController2 setUnderlineLinks:underlineLinks];

  if (self->_didOverrideShowUnifiedAbout)
  {
    showsLinkToUnifiedAbout = [(OBPrivacyLinkController *)self showsLinkToUnifiedAbout];
    splashController3 = [_privacyPresenter splashController];
    [splashController3 setShowsLinkToUnifiedAbout:showsLinkToUnifiedAbout];
  }

  customTintColor = [(OBPrivacyLinkController *)self customTintColor];
  [_privacyPresenter setCustomTintColor:customTintColor];

  displayDeviceType = [(OBPrivacyLinkController *)self displayDeviceType];
  splashController4 = [_privacyPresenter splashController];
  [splashController4 setDisplayDeviceType:displayDeviceType];

  displayLanguage2 = [(OBPrivacyLinkController *)self displayLanguage];
  splashController5 = [_privacyPresenter splashController];
  [splashController5 setDisplayLanguage:displayLanguage2];

  [_privacyPresenter setDarkMode:{-[OBPrivacyLinkController presentedViewControllerShouldUseDarkMode](self, "presentedViewControllerShouldUseDarkMode")}];
  [_privacyPresenter setModalPresentationStyle:{-[OBPrivacyLinkController modalPresentationStyle](self, "modalPresentationStyle")}];
  presentingViewController = [(OBPrivacyLinkController *)self presentingViewController];
  [_privacyPresenter setSupportedInterfaceOrientations:{objc_msgSend(presentingViewController, "supportedInterfaceOrientations")}];

  [_privacyPresenter present];
  v18 = +[OBAnalyticsManager sharedManager];
  bundle = [(OBPrivacyLinkController *)self bundle];
  identifier = [bundle identifier];
  [v18 logTapOnPrivacyLinkWithIdentifier:identifier];

  privacyLinkCallback = [(OBPrivacyLinkController *)self privacyLinkCallback];

  if (privacyLinkCallback)
  {
    privacyLinkCallback2 = [(OBPrivacyLinkController *)self privacyLinkCallback];
    privacyLinkCallback2[2]();
  }
}

- (void)initWithBundleIdentifiers:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1B4FB6000, a4, OS_LOG_TYPE_ERROR, "Privacy link controller encountered nil flow for bundle identifier %@", a1, 0xCu);
}

- (void)initWithBundleIdentifiers:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B4FB6000, a2, OS_LOG_TYPE_ERROR, "No bundles found for bundle identifiers: %@", &v2, 0xCu);
}

@end