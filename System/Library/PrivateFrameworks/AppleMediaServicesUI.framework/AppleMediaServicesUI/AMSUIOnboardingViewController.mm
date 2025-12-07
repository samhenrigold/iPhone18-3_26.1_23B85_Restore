@interface AMSUIOnboardingViewController
+ (id)privacyLinkIdentifiersFromController:(id)controller;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text appName:(id)name features:(id)features primaryButtonText:(id)buttonText privacyLinkBundleIdentifier:(id)identifier;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text descriptionText:(id)descriptionText appName:(id)name primaryButtonText:(id)buttonText privacyLinkBundleIdentifier:(id)identifier;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text descriptionText:(id)descriptionText appName:(id)name primaryButtonText:(id)buttonText privacyLinkController:(id)controller;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text descriptionText:(id)descriptionText appName:(id)name primaryButtonText:(id)buttonText secondaryButtonText:(id)secondaryButtonText privacyLinkController:(id)controller;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text descriptionText:(id)descriptionText primaryButtonText:(id)buttonText privacyLinkBundleIdentifier:(id)identifier;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text descriptionText:(id)descriptionText primaryButtonText:(id)buttonText privacyLinkController:(id)controller;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text descriptionText:(id)descriptionText primaryButtonText:(id)buttonText secondaryButtonText:(id)secondaryButtonText privacyLinkController:(id)controller;
- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text features:(id)features primaryButtonText:(id)buttonText privacyLinkBundleIdentifier:(id)identifier;
- (AMSUIOnboardingViewController)initWithTitleText:(id)text appName:(id)name features:(id)features primaryButtonText:(id)buttonText privacyLinkController:(id)controller;
- (AMSUIOnboardingViewController)initWithTitleText:(id)text features:(id)features primaryButtonText:(id)buttonText privacyLinkController:(id)controller;
- (BOOL)isPresentedInFormSheet;
- (CGSize)preferredContentSize;
- (UITraitCollection)cappedTraitCollection;
- (id)childTraitCollectionForViewController:(id)controller;
- (id)keyCommands;
- (unint64_t)supportedInterfaceOrientations;
- (void)commonInitWithPrimaryButtonText:(id)text privacyLinkBundleIdentifier:(id)identifier;
- (void)commonInitWithPrimaryButtonText:(id)text privacyLinkController:(id)controller;
- (void)commonSetupWithPrimaryButtonText:(id)text secondaryButtonText:(id)buttonText privacyLinkBundleIdentifiers:(id)identifiers;
- (void)didTapPrimaryButton:(id)button;
- (void)didTapSecondaryButton:(id)button;
- (void)updateOverrideTraits;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AMSUIOnboardingViewController

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text descriptionText:(id)descriptionText primaryButtonText:(id)buttonText secondaryButtonText:(id)secondaryButtonText privacyLinkController:(id)controller
{
  imageCopy = image;
  textCopy = text;
  descriptionTextCopy = descriptionText;
  buttonTextCopy = buttonText;
  obj = secondaryButtonText;
  secondaryButtonTextCopy = secondaryButtonText;
  v28.receiver = self;
  v28.super_class = AMSUIOnboardingViewController;
  controllerCopy = controller;
  v20 = [(AMSUIOnboardingViewController *)&v28 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_titleText, text);
    objc_storeStrong(&v21->_descriptionText, descriptionText);
    objc_storeStrong(&v21->_primaryButtonText, buttonText);
    objc_storeStrong(&v21->_secondaryButtonText, obj);
    objc_storeStrong(&v21->_image, image);
    v22 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:textCopy detailText:descriptionTextCopy icon:imageCopy];
    welcomeController = v21->_welcomeController;
    v21->_welcomeController = v22;

    v24 = [objc_opt_class() privacyLinkIdentifiersFromController:controllerCopy];
    [(AMSUIOnboardingViewController *)v21 commonSetupWithPrimaryButtonText:buttonTextCopy secondaryButtonText:secondaryButtonTextCopy privacyLinkBundleIdentifiers:v24];
  }

  return v21;
}

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text descriptionText:(id)descriptionText appName:(id)name primaryButtonText:(id)buttonText secondaryButtonText:(id)secondaryButtonText privacyLinkController:(id)controller
{
  imageCopy = image;
  textCopy = text;
  descriptionTextCopy = descriptionText;
  nameCopy = name;
  buttonTextCopy = buttonText;
  secondaryButtonTextCopy = secondaryButtonText;
  controllerCopy = controller;
  v29.receiver = self;
  v29.super_class = AMSUIOnboardingViewController;
  v20 = [(AMSUIOnboardingViewController *)&v29 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_titleText, text);
    objc_storeStrong(&v21->_descriptionText, descriptionText);
    objc_storeStrong(&v21->_primaryButtonText, buttonText);
    objc_storeStrong(&v21->_secondaryButtonText, secondaryButtonText);
    objc_storeStrong(&v21->_image, image);
    v22 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:textCopy detailText:descriptionTextCopy appName:nameCopy icon:imageCopy];
    welcomeController = v21->_welcomeController;
    v21->_welcomeController = v22;

    v24 = [objc_opt_class() privacyLinkIdentifiersFromController:controllerCopy];
    [(AMSUIOnboardingViewController *)v21 commonSetupWithPrimaryButtonText:buttonTextCopy secondaryButtonText:secondaryButtonTextCopy privacyLinkBundleIdentifiers:v24];
  }

  return v21;
}

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text descriptionText:(id)descriptionText primaryButtonText:(id)buttonText privacyLinkController:(id)controller
{
  imageCopy = image;
  textCopy = text;
  descriptionTextCopy = descriptionText;
  buttonTextCopy = buttonText;
  controllerCopy = controller;
  v24.receiver = self;
  v24.super_class = AMSUIOnboardingViewController;
  v18 = [(AMSUIOnboardingViewController *)&v24 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_titleText, text);
    objc_storeStrong(&v19->_descriptionText, descriptionText);
    objc_storeStrong(&v19->_primaryButtonText, buttonText);
    objc_storeStrong(&v19->_image, image);
    v20 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:textCopy detailText:descriptionTextCopy icon:imageCopy];
    welcomeController = v19->_welcomeController;
    v19->_welcomeController = v20;

    v22 = [objc_opt_class() privacyLinkIdentifiersFromController:controllerCopy];
    [(AMSUIOnboardingViewController *)v19 commonSetupWithPrimaryButtonText:buttonTextCopy privacyLinkBundleIdentifiers:v22];
  }

  return v19;
}

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text descriptionText:(id)descriptionText appName:(id)name primaryButtonText:(id)buttonText privacyLinkController:(id)controller
{
  imageCopy = image;
  textCopy = text;
  descriptionTextCopy = descriptionText;
  nameCopy = name;
  buttonTextCopy = buttonText;
  buttonTextCopy2 = buttonText;
  v28.receiver = self;
  v28.super_class = AMSUIOnboardingViewController;
  controllerCopy = controller;
  v21 = [(AMSUIOnboardingViewController *)&v28 initWithNibName:0 bundle:0];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_titleText, text);
    objc_storeStrong(&v22->_descriptionText, descriptionText);
    objc_storeStrong(&v22->_primaryButtonText, buttonTextCopy);
    objc_storeStrong(&v22->_image, image);
    v23 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:textCopy detailText:descriptionTextCopy appName:nameCopy icon:imageCopy];
    welcomeController = v22->_welcomeController;
    v22->_welcomeController = v23;

    v25 = [objc_opt_class() privacyLinkIdentifiersFromController:controllerCopy];
    [(AMSUIOnboardingViewController *)v22 commonSetupWithPrimaryButtonText:buttonTextCopy2 privacyLinkBundleIdentifiers:v25];
  }

  return v22;
}

- (AMSUIOnboardingViewController)initWithTitleText:(id)text features:(id)features primaryButtonText:(id)buttonText privacyLinkController:(id)controller
{
  v40 = *MEMORY[0x1E69E9840];
  textCopy = text;
  featuresCopy = features;
  buttonTextCopy = buttonText;
  controllerCopy = controller;
  v38.receiver = self;
  v38.super_class = AMSUIOnboardingViewController;
  v15 = [(AMSUIOnboardingViewController *)&v38 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    v31 = controllerCopy;
    objc_storeStrong(&v15->_titleText, text);
    objc_storeStrong(&v16->_primaryButtonText, buttonText);
    v33 = textCopy;
    v17 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:textCopy detailText:0 icon:0];
    welcomeController = v16->_welcomeController;
    v16->_welcomeController = v17;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = featuresCopy;
    v19 = featuresCopy;
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v34 + 1) + 8 * i);
          v25 = v16->_welcomeController;
          titleText = [v24 titleText];
          descriptionText = [v24 descriptionText];
          image = [v24 image];
          [(OBWelcomeController *)v25 addBulletedListItemWithTitle:titleText description:descriptionText image:image];
        }

        v21 = [v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v21);
    }

    controllerCopy = v31;
    v29 = [objc_opt_class() privacyLinkIdentifiersFromController:v31];
    [(AMSUIOnboardingViewController *)v16 commonSetupWithPrimaryButtonText:buttonTextCopy privacyLinkBundleIdentifiers:v29];

    featuresCopy = v32;
    textCopy = v33;
  }

  return v16;
}

- (AMSUIOnboardingViewController)initWithTitleText:(id)text appName:(id)name features:(id)features primaryButtonText:(id)buttonText privacyLinkController:(id)controller
{
  v44 = *MEMORY[0x1E69E9840];
  textCopy = text;
  nameCopy = name;
  featuresCopy = features;
  buttonTextCopy = buttonText;
  controllerCopy = controller;
  v42.receiver = self;
  v42.super_class = AMSUIOnboardingViewController;
  v18 = [(AMSUIOnboardingViewController *)&v42 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    v34 = controllerCopy;
    objc_storeStrong(&v18->_titleText, text);
    objc_storeStrong(&v19->_primaryButtonText, buttonText);
    v36 = nameCopy;
    v37 = textCopy;
    v20 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:textCopy detailText:0 appName:nameCopy icon:0];
    welcomeController = v19->_welcomeController;
    v19->_welcomeController = v20;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v35 = featuresCopy;
    v22 = featuresCopy;
    v23 = [v22 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v39;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v38 + 1) + 8 * i);
          v28 = v19->_welcomeController;
          titleText = [v27 titleText];
          descriptionText = [v27 descriptionText];
          image = [v27 image];
          [(OBWelcomeController *)v28 addBulletedListItemWithTitle:titleText description:descriptionText image:image];
        }

        v24 = [v22 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v24);
    }

    controllerCopy = v34;
    v32 = [objc_opt_class() privacyLinkIdentifiersFromController:v34];
    [(AMSUIOnboardingViewController *)v19 commonSetupWithPrimaryButtonText:buttonTextCopy privacyLinkBundleIdentifiers:v32];

    nameCopy = v36;
    textCopy = v37;
    featuresCopy = v35;
  }

  return v19;
}

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text descriptionText:(id)descriptionText primaryButtonText:(id)buttonText privacyLinkBundleIdentifier:(id)identifier
{
  v25[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  textCopy = text;
  descriptionTextCopy = descriptionText;
  buttonTextCopy = buttonText;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = AMSUIOnboardingViewController;
  v17 = [(AMSUIOnboardingViewController *)&v24 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_titleText, text);
    objc_storeStrong(&v18->_descriptionText, descriptionText);
    objc_storeStrong(&v18->_primaryButtonText, buttonText);
    objc_storeStrong(&v18->_image, image);
    v19 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:textCopy detailText:descriptionTextCopy icon:imageCopy];
    welcomeController = v18->_welcomeController;
    v18->_welcomeController = v19;

    v25[0] = identifierCopy;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [(AMSUIOnboardingViewController *)v18 commonSetupWithPrimaryButtonText:buttonTextCopy privacyLinkBundleIdentifiers:v21];
  }

  return v18;
}

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text descriptionText:(id)descriptionText appName:(id)name primaryButtonText:(id)buttonText privacyLinkBundleIdentifier:(id)identifier
{
  v29[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  textCopy = text;
  descriptionTextCopy = descriptionText;
  nameCopy = name;
  buttonTextCopy = buttonText;
  buttonTextCopy2 = buttonText;
  v28.receiver = self;
  v28.super_class = AMSUIOnboardingViewController;
  identifierCopy = identifier;
  v21 = [(AMSUIOnboardingViewController *)&v28 initWithNibName:0 bundle:0];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_titleText, text);
    objc_storeStrong(&v22->_descriptionText, descriptionText);
    objc_storeStrong(&v22->_primaryButtonText, buttonTextCopy);
    objc_storeStrong(&v22->_image, image);
    v23 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:textCopy detailText:descriptionTextCopy appName:nameCopy icon:imageCopy];
    welcomeController = v22->_welcomeController;
    v22->_welcomeController = v23;

    v29[0] = identifierCopy;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [(AMSUIOnboardingViewController *)v22 commonSetupWithPrimaryButtonText:buttonTextCopy2 privacyLinkBundleIdentifiers:v25];
  }

  return v22;
}

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text features:(id)features primaryButtonText:(id)buttonText privacyLinkBundleIdentifier:(id)identifier
{
  v45 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  textCopy = text;
  featuresCopy = features;
  buttonTextCopy = buttonText;
  identifierCopy = identifier;
  v42.receiver = self;
  v42.super_class = AMSUIOnboardingViewController;
  v18 = [(AMSUIOnboardingViewController *)&v42 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    v34 = identifierCopy;
    objc_storeStrong(&v18->_titleText, text);
    objc_storeStrong(&v19->_primaryButtonText, buttonText);
    objc_storeStrong(&v19->_image, image);
    v36 = textCopy;
    v37 = imageCopy;
    v20 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:textCopy detailText:0 icon:imageCopy];
    welcomeController = v19->_welcomeController;
    v19->_welcomeController = v20;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v35 = featuresCopy;
    v22 = featuresCopy;
    v23 = [v22 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v39;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v38 + 1) + 8 * i);
          v28 = v19->_welcomeController;
          titleText = [v27 titleText];
          descriptionText = [v27 descriptionText];
          image = [v27 image];
          [(OBWelcomeController *)v28 addBulletedListItemWithTitle:titleText description:descriptionText image:image];
        }

        v24 = [v22 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v24);
    }

    identifierCopy = v34;
    v43 = v34;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    [(AMSUIOnboardingViewController *)v19 commonSetupWithPrimaryButtonText:buttonTextCopy privacyLinkBundleIdentifiers:v32];

    textCopy = v36;
    imageCopy = v37;
    featuresCopy = v35;
  }

  return v19;
}

- (AMSUIOnboardingViewController)initWithHeaderImage:(id)image titleText:(id)text appName:(id)name features:(id)features primaryButtonText:(id)buttonText privacyLinkBundleIdentifier:(id)identifier
{
  v49 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  textCopy = text;
  nameCopy = name;
  featuresCopy = features;
  buttonTextCopy = buttonText;
  identifierCopy = identifier;
  v46.receiver = self;
  v46.super_class = AMSUIOnboardingViewController;
  v20 = [(AMSUIOnboardingViewController *)&v46 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    v36 = identifierCopy;
    objc_storeStrong(&v20->_titleText, text);
    objc_storeStrong(&v21->_primaryButtonText, buttonText);
    objc_storeStrong(&v21->_image, image);
    v38 = nameCopy;
    v39 = textCopy;
    obja = imageCopy;
    v22 = [objc_alloc(getOBWelcomeControllerClass()) initWithTitle:textCopy detailText:0 appName:nameCopy icon:imageCopy];
    welcomeController = v21->_welcomeController;
    v21->_welcomeController = v22;

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = featuresCopy;
    v24 = featuresCopy;
    v25 = [v24 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v43;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v43 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v42 + 1) + 8 * i);
          v30 = v21->_welcomeController;
          titleText = [v29 titleText];
          descriptionText = [v29 descriptionText];
          image = [v29 image];
          [(OBWelcomeController *)v30 addBulletedListItemWithTitle:titleText description:descriptionText image:image];
        }

        v26 = [v24 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v26);
    }

    identifierCopy = v36;
    v47 = v36;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    [(AMSUIOnboardingViewController *)v21 commonSetupWithPrimaryButtonText:buttonTextCopy privacyLinkBundleIdentifiers:v34];

    textCopy = v39;
    imageCopy = obja;
    featuresCopy = v37;
    nameCopy = v38;
  }

  return v21;
}

- (void)commonSetupWithPrimaryButtonText:(id)text secondaryButtonText:(id)buttonText privacyLinkBundleIdentifiers:(id)identifiers
{
  textCopy = text;
  buttonTextCopy = buttonText;
  identifiersCopy = identifiers;
  v11 = dispatch_queue_create("com.apple.AppleMediaServicesUI.onboardingMetrics", 0);
  metricsQueue = self->_metricsQueue;
  self->_metricsQueue = v11;

  if (identifiersCopy)
  {
    welcomeController = [(AMSUIOnboardingViewController *)self welcomeController];
    buttonTray = [welcomeController buttonTray];
    [buttonTray addPrivacyLinkForBundles:identifiersCopy];
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v15 = getOBBoldTrayButtonClass_softClass;
  v33 = getOBBoldTrayButtonClass_softClass;
  if (!getOBBoldTrayButtonClass_softClass)
  {
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __getOBBoldTrayButtonClass_block_invoke;
    v28 = &unk_1E7F241B0;
    v29 = &v30;
    __getOBBoldTrayButtonClass_block_invoke(&v25);
    v15 = v31[3];
  }

  v16 = v15;
  _Block_object_dispose(&v30, 8);
  boldButton = [v15 boldButton];
  [boldButton setTitle:textCopy forState:0];
  [boldButton setAccessibilityIdentifier:@"amsui.onboarding.primaryButton"];
  [boldButton addTarget:self action:sel_didTapPrimaryButton_ forControlEvents:64];
  welcomeController2 = [(AMSUIOnboardingViewController *)self welcomeController];
  buttonTray2 = [welcomeController2 buttonTray];
  [buttonTray2 addButton:boldButton];

  if (buttonTextCopy)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v20 = getOBLinkTrayButtonClass_softClass;
    v33 = getOBLinkTrayButtonClass_softClass;
    if (!getOBLinkTrayButtonClass_softClass)
    {
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __getOBLinkTrayButtonClass_block_invoke;
      v28 = &unk_1E7F241B0;
      v29 = &v30;
      __getOBLinkTrayButtonClass_block_invoke(&v25);
      v20 = v31[3];
    }

    v21 = v20;
    _Block_object_dispose(&v30, 8);
    linkButton = [v20 linkButton];
    [linkButton setTitle:buttonTextCopy forState:0];
    [boldButton setAccessibilityIdentifier:@"amsui.onboarding.secondaryButton"];
    [linkButton addTarget:self action:sel_didTapSecondaryButton_ forControlEvents:64];
    welcomeController3 = [(AMSUIOnboardingViewController *)self welcomeController];
    buttonTray3 = [welcomeController3 buttonTray];
    [buttonTray3 addButton:linkButton];
  }
}

- (void)commonInitWithPrimaryButtonText:(id)text privacyLinkBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  textCopy = text;
  v8 = [getOBPrivacyLinkControllerClass() linkWithBundleIdentifier:identifierCopy];

  [(AMSUIOnboardingViewController *)self commonInitWithPrimaryButtonText:textCopy privacyLinkController:v8];
}

- (void)commonInitWithPrimaryButtonText:(id)text privacyLinkController:(id)controller
{
  v5 = dispatch_queue_create("com.apple.AppleMediaServicesUI.onboardingMetrics", 0);
  metricsQueue = self->_metricsQueue;
  self->_metricsQueue = v5;

  MEMORY[0x1EEE66BB8](v5, metricsQueue);
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = AMSUIOnboardingViewController;
  [(AMSUIOnboardingViewController *)&v27 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(AMSUIOnboardingViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  welcomeController = [(AMSUIOnboardingViewController *)self welcomeController];

  if (welcomeController)
  {
    welcomeController2 = [(AMSUIOnboardingViewController *)self welcomeController];
    [(AMSUIOnboardingViewController *)self addChildViewController:welcomeController2];

    welcomeController3 = [(AMSUIOnboardingViewController *)self welcomeController];
    [welcomeController3 setModalPresentationStyle:2];

    welcomeController4 = [(AMSUIOnboardingViewController *)self welcomeController];
    view2 = [welcomeController4 view];
    [view2 setAutoresizingMask:18];

    view3 = [(AMSUIOnboardingViewController *)self view];
    [view3 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    welcomeController5 = [(AMSUIOnboardingViewController *)self welcomeController];
    view4 = [welcomeController5 view];
    [view4 setFrame:{v12, v14, v16, v18}];

    welcomeController6 = [(AMSUIOnboardingViewController *)self welcomeController];
    view5 = [welcomeController6 view];
    [view5 setAccessibilityIdentifier:@"amsui.onboarding"];

    view6 = [(AMSUIOnboardingViewController *)self view];
    welcomeController7 = [(AMSUIOnboardingViewController *)self welcomeController];
    view7 = [welcomeController7 view];
    [view6 addSubview:view7];

    welcomeController8 = [(AMSUIOnboardingViewController *)self welcomeController];
    [welcomeController8 didMoveToParentViewController:self];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = AMSUIOnboardingViewController;
  [(AMSUIOnboardingViewController *)&v8 viewWillAppear:?];
  navigationController = [(AMSUIOnboardingViewController *)self navigationController];
  -[AMSUIOnboardingViewController setWasNavigationBarHidden:](self, "setWasNavigationBarHidden:", [navigationController isNavigationBarHidden]);

  navigationController2 = [(AMSUIOnboardingViewController *)self navigationController];
  [navigationController2 setNavigationBarHidden:1 animated:appearCopy];

  navigationController3 = [(AMSUIOnboardingViewController *)self navigationController];
  [navigationController3 setModalInPresentation:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = AMSUIOnboardingViewController;
  [(AMSUIOnboardingViewController *)&v6 viewWillDisappear:?];
  navigationController = [(AMSUIOnboardingViewController *)self navigationController];
  [navigationController setNavigationBarHidden:-[AMSUIOnboardingViewController wasNavigationBarHidden](self animated:{"wasNavigationBarHidden"), disappearCopy}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AMSUIOnboardingViewController;
  [(AMSUIOnboardingViewController *)&v4 viewDidAppear:appear];
  [(AMSUIOnboardingViewController *)self setViewHasAppeared:1];
}

- (CGSize)preferredContentSize
{
  welcomeController = [(AMSUIOnboardingViewController *)self welcomeController];
  [welcomeController preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  traitCollection = [(AMSUIOnboardingViewController *)self traitCollection];
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
  v14[2] = *MEMORY[0x1E69E9840];
  if (cappedTraitCollection_onceToken != -1)
  {
    [AMSUIOnboardingViewController cappedTraitCollection];
  }

  traitCollection = [(AMSUIOnboardingViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v5 = cappedTraitCollection_cappedSizes;
    traitCollection2 = [(AMSUIOnboardingViewController *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
    LODWORD(v5) = [v5 containsObject:preferredContentSizeCategory2];

    if (v5)
    {
      v8 = MEMORY[0x1E69DD1B8];
      traitCollection3 = [(AMSUIOnboardingViewController *)self traitCollection];
      v14[0] = traitCollection3;
      v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC38]];
      v14[1] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
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

void __54__AMSUIOnboardingViewController_cappedTraitCollection__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DDC28];
  v3[0] = *MEMORY[0x1E69DDC30];
  v3[1] = v0;
  v3[2] = *MEMORY[0x1E69DDC20];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v2 = cappedTraitCollection_cappedSizes;
  cappedTraitCollection_cappedSizes = v1;
}

- (id)childTraitCollectionForViewController:(id)controller
{
  controllerCopy = controller;
  getOBPrivacyLinkControllerClass();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    cappedTraitCollection = [(AMSUIOnboardingViewController *)self cappedTraitCollection];
  }

  else
  {
    cappedTraitCollection = 0;
  }

  return cappedTraitCollection;
}

- (void)updateOverrideTraits
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllers = [(AMSUIOnboardingViewController *)self childViewControllers];
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
        v9 = [(AMSUIOnboardingViewController *)self childTraitCollectionForViewController:v8];
        [(AMSUIOnboardingViewController *)self setOverrideTraitCollection:v9 forChildViewController:v8];
      }

      v5 = [childViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)keyCommands
{
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_didTapPrimaryButton_];
  primaryButtonText = [(AMSUIOnboardingViewController *)self primaryButtonText];
  [v3 setTitle:primaryButtonText];

  v11.receiver = self;
  v11.super_class = AMSUIOnboardingViewController;
  keyCommands = [(AMSUIOnboardingViewController *)&v11 keyCommands];
  v6 = keyCommands;
  v7 = MEMORY[0x1E695E0F0];
  if (keyCommands)
  {
    v7 = keyCommands;
  }

  v8 = v7;

  v9 = [v8 arrayByAddingObject:v3];

  return v9;
}

- (void)didTapSecondaryButton:(id)button
{
  secondaryButtonCallback = [(AMSUIOnboardingViewController *)self secondaryButtonCallback];

  if (secondaryButtonCallback)
  {
    secondaryButtonCallback2 = [(AMSUIOnboardingViewController *)self secondaryButtonCallback];
    secondaryButtonCallback2[2](secondaryButtonCallback2, self);
  }
}

- (void)didTapPrimaryButton:(id)button
{
  primaryButtonCallback = [(AMSUIOnboardingViewController *)self primaryButtonCallback];

  if (primaryButtonCallback)
  {
    primaryButtonCallback2 = [(AMSUIOnboardingViewController *)self primaryButtonCallback];
    primaryButtonCallback2[2](primaryButtonCallback2, self);
  }
}

- (BOOL)isPresentedInFormSheet
{
  navigationController = [(AMSUIOnboardingViewController *)self navigationController];
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

  presentationController = [(AMSUIOnboardingViewController *)v6 presentationController];

  _activePresentationController = [presentationController _activePresentationController];
  v9 = [_activePresentationController presentationStyle] == 2;

  return v9;
}

+ (id)privacyLinkIdentifiersFromController:(id)controller
{
  v17 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  bundles = [controllerCopy bundles];
  v6 = [bundles countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(bundles);
        }

        identifier = [*(*(&v12 + 1) + 8 * i) identifier];
        [v4 addObject:identifier];
      }

      v7 = [bundles countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end