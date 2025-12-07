@interface AMPOnboardingViewController
- (AMPOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text descriptionText:(id)descriptionText primaryButtonText:(id)buttonText privacyLinkController:(id)controller;
- (AMPOnboardingViewController)initWithTitleText:(id)text features:(id)features primaryButtonText:(id)buttonText privacyLinkController:(id)controller;
- (BOOL)isPresentedInFormSheet;
- (UITraitCollection)cappedTraitCollection;
- (id)childTraitCollectionForViewController:(id)controller;
- (unint64_t)supportedInterfaceOrientations;
- (void)didTapPrimaryButton:(id)button;
- (void)traitCollectionDidChange:(id)change;
- (void)updateOverrideTraits;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AMPOnboardingViewController

- (AMPOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text descriptionText:(id)descriptionText primaryButtonText:(id)buttonText privacyLinkController:(id)controller
{
  imageCopy = image;
  textCopy = text;
  descriptionTextCopy = descriptionText;
  buttonTextCopy = buttonText;
  controllerCopy = controller;
  v26.receiver = self;
  v26.super_class = AMPOnboardingViewController;
  v18 = [(AMPOnboardingViewController *)&v26 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_titleText, text);
    objc_storeStrong(&v19->_descriptionText, descriptionText);
    objc_storeStrong(&v19->_primaryButtonText, buttonText);
    objc_storeStrong(&v19->_image, image);
    v20 = [objc_alloc(getAMSUIOnboardingViewControllerClass()) initWithHeaderImage:imageCopy titleText:textCopy descriptionText:descriptionTextCopy primaryButtonText:buttonTextCopy privacyLinkController:controllerCopy];
    onboardingController = v19->_onboardingController;
    v19->_onboardingController = v20;

    objc_initWeak(&location, v19);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __117__AMPOnboardingViewController_initWithHeaderImage_titleText_descriptionText_primaryButtonText_privacyLinkController___block_invoke;
    v23[3] = &unk_278BC1F30;
    objc_copyWeak(&v24, &location);
    [(AMSUIOnboardingViewController *)v19->_onboardingController setPrimaryButtonCallback:v23];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v19;
}

void __117__AMPOnboardingViewController_initWithHeaderImage_titleText_descriptionText_primaryButtonText_privacyLinkController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained primaryButtonCallback];

  if (v1)
  {
    v2 = [WeakRetained primaryButtonCallback];
    (v2)[2](v2, WeakRetained);
  }
}

- (AMPOnboardingViewController)initWithTitleText:(id)text features:(id)features primaryButtonText:(id)buttonText privacyLinkController:(id)controller
{
  v45 = *MEMORY[0x277D85DE8];
  textCopy = text;
  featuresCopy = features;
  buttonTextCopy = buttonText;
  controllerCopy = controller;
  v38.receiver = self;
  v38.super_class = AMPOnboardingViewController;
  val = [(AMPOnboardingViewController *)&v38 initWithNibName:0 bundle:0];
  if (val)
  {
    objc_storeStrong(&val->_titleText, text);
    objc_storeStrong(&val->_primaryButtonText, buttonText);
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(featuresCopy, "count")}];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = featuresCopy;
    v12 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v12)
    {
      v13 = *v35;
      do
      {
        v14 = 0;
        do
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * v14);
          v40 = 0;
          v41 = &v40;
          v42 = 0x2050000000;
          v16 = getAMSUIOnboardingFeatureClass_softClass;
          v43 = getAMSUIOnboardingFeatureClass_softClass;
          if (!getAMSUIOnboardingFeatureClass_softClass)
          {
            location[0] = MEMORY[0x277D85DD0];
            location[1] = 3221225472;
            location[2] = __getAMSUIOnboardingFeatureClass_block_invoke;
            location[3] = &unk_278BC1F78;
            location[4] = &v40;
            __getAMSUIOnboardingFeatureClass_block_invoke(location);
            v16 = v41[3];
          }

          v17 = v16;
          _Block_object_dispose(&v40, 8);
          v18 = [v16 alloc];
          image = [v15 image];
          titleText = [v15 titleText];
          descriptionText = [v15 descriptionText];
          v22 = [v18 initWithImage:image titleText:titleText descriptionText:descriptionText];

          [v11 addObject:v22];
          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v12);
    }

    v23 = [objc_alloc(getAMSUIOnboardingViewControllerClass()) initWithTitleText:textCopy features:v11 primaryButtonText:buttonTextCopy privacyLinkController:controllerCopy];
    onboardingController = val->_onboardingController;
    val->_onboardingController = v23;

    objc_initWeak(location, val);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __98__AMPOnboardingViewController_initWithTitleText_features_primaryButtonText_privacyLinkController___block_invoke;
    v32[3] = &unk_278BC1F30;
    objc_copyWeak(&v33, location);
    [(AMSUIOnboardingViewController *)val->_onboardingController setPrimaryButtonCallback:v32];
    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  return val;
}

void __98__AMPOnboardingViewController_initWithTitleText_features_primaryButtonText_privacyLinkController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained primaryButtonCallback];

  if (v1)
  {
    v2 = [WeakRetained primaryButtonCallback];
    (v2)[2](v2, WeakRetained);
  }
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = AMPOnboardingViewController;
  [(AMPOnboardingViewController *)&v11 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(AMPOnboardingViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  onboardingController = [(AMPOnboardingViewController *)self onboardingController];

  if (onboardingController)
  {
    onboardingController2 = [(AMPOnboardingViewController *)self onboardingController];
    [(AMPOnboardingViewController *)self addChildViewController:onboardingController2];

    view2 = [(AMPOnboardingViewController *)self view];
    onboardingController3 = [(AMPOnboardingViewController *)self onboardingController];
    view3 = [onboardingController3 view];
    [view2 addSubview:view3];

    onboardingController4 = [(AMPOnboardingViewController *)self onboardingController];
    [onboardingController4 didMoveToParentViewController:self];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = AMPOnboardingViewController;
  [(AMPOnboardingViewController *)&v7 viewWillAppear:?];
  navigationController = [(AMPOnboardingViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:appearCopy];

  navigationController2 = [(AMPOnboardingViewController *)self navigationController];
  [navigationController2 setModalInPresentation:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AMPOnboardingViewController;
  [(AMPOnboardingViewController *)&v4 viewDidAppear:appear];
  [(AMPOnboardingViewController *)self viewHasAppeared];
  [(AMPOnboardingViewController *)self setViewHasAppeared:1];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMPOnboardingViewController;
  [(AMPOnboardingViewController *)&v14 viewDidLayoutSubviews];
  view = [(AMPOnboardingViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  onboardingController = [(AMPOnboardingViewController *)self onboardingController];
  view2 = [onboardingController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = AMPOnboardingViewController;
  [(AMPOnboardingViewController *)&v5 traitCollectionDidChange:change];
  [(AMPOnboardingViewController *)self updateOverrideTraits];
  view = [(AMPOnboardingViewController *)self view];
  [view setNeedsLayout];
}

- (unint64_t)supportedInterfaceOrientations
{
  traitCollection = [(AMPOnboardingViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (UITraitCollection)cappedTraitCollection
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (cappedTraitCollection_onceToken != -1)
  {
    [AMPOnboardingViewController cappedTraitCollection];
  }

  traitCollection = [(AMPOnboardingViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v5 = cappedTraitCollection_cappedSizes;
    traitCollection2 = [(AMPOnboardingViewController *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
    LODWORD(v5) = [v5 containsObject:preferredContentSizeCategory2];

    if (v5)
    {
      v8 = MEMORY[0x277D75C80];
      traitCollection3 = [(AMPOnboardingViewController *)self traitCollection];
      v14[0] = traitCollection3;
      v10 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76800]];
      v14[1] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
      v12 = [v8 traitCollectionWithTraitsFromCollections:v11];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_8:

  return v12;
}

void __52__AMPOnboardingViewController_cappedTraitCollection__block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D767F0];
  v3[0] = *MEMORY[0x277D767F8];
  v3[1] = v0;
  v3[2] = *MEMORY[0x277D767E8];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v2 = cappedTraitCollection_cappedSizes;
  cappedTraitCollection_cappedSizes = v1;
}

- (id)childTraitCollectionForViewController:(id)controller
{
  controllerCopy = controller;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = getOBPrivacyLinkControllerClass_softClass;
  v13 = getOBPrivacyLinkControllerClass_softClass;
  if (!getOBPrivacyLinkControllerClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getOBPrivacyLinkControllerClass_block_invoke;
    v9[3] = &unk_278BC1F78;
    v9[4] = &v10;
    __getOBPrivacyLinkControllerClass_block_invoke(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  if (objc_opt_isKindOfClass())
  {
    cappedTraitCollection = [(AMPOnboardingViewController *)self cappedTraitCollection];
  }

  else
  {
    cappedTraitCollection = 0;
  }

  return cappedTraitCollection;
}

- (void)updateOverrideTraits
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllers = [(AMPOnboardingViewController *)self childViewControllers];
  v4 = [childViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(AMPOnboardingViewController *)self childTraitCollectionForViewController:v8];
        [(AMPOnboardingViewController *)self setOverrideTraitCollection:v9 forChildViewController:v8];
      }

      v5 = [childViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)didTapPrimaryButton:(id)button
{
  primaryButtonCallback = [(AMPOnboardingViewController *)self primaryButtonCallback];

  if (primaryButtonCallback)
  {
    primaryButtonCallback2 = [(AMPOnboardingViewController *)self primaryButtonCallback];
    primaryButtonCallback2[2](primaryButtonCallback2, self);
  }
}

- (BOOL)isPresentedInFormSheet
{
  navigationController = [(AMPOnboardingViewController *)self navigationController];
  v4 = navigationController;
  if (navigationController)
  {
    selfCopy = navigationController;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  presentationController = [(AMPOnboardingViewController *)v6 presentationController];

  _activePresentationController = [presentationController _activePresentationController];
  v9 = [_activePresentationController presentationStyle] == 2;

  return v9;
}

@end