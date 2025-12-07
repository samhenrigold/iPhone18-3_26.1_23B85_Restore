@interface LTUITranslateSettingsDownloadController
+ (id)translateSettingsDownloadControllerWithUsageContext:(unint64_t)context;
+ (id)translateSettingsDownloadControllerWithUsageContext:(unint64_t)context headerController:(id)controller;
- (LTUITranslateSettingsDownloadController)initWithNibName:(id)name bundle:(id)bundle;
- (LTUITranslateSettingsDownloadController)initWithNibName:(id)name bundle:(id)bundle usageContext:(unint64_t)context;
- (LTUITranslateSettingsDownloadController)initWithNibName:(id)name bundle:(id)bundle usageContext:(unint64_t)context headerController:(id)controller;
- (void)loadBridge;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation LTUITranslateSettingsDownloadController

+ (id)translateSettingsDownloadControllerWithUsageContext:(unint64_t)context headerController:(id)controller
{
  controllerCopy = controller;
  v6 = [[LTUITranslateSettingsDownloadController alloc] initWithNibName:0 bundle:0 usageContext:context headerController:controllerCopy];

  return v6;
}

+ (id)translateSettingsDownloadControllerWithUsageContext:(unint64_t)context
{
  v3 = [[LTUITranslateSettingsDownloadController alloc] initWithNibName:0 bundle:0 usageContext:context];

  return v3;
}

- (LTUITranslateSettingsDownloadController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = LTUITranslateSettingsDownloadController;
  v4 = [(LTUITranslateSettingsDownloadController *)&v8 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(LTUITranslateSettingsDownloadController *)v4 setUsageContext:0];
    [(LTUITranslateSettingsDownloadController *)v5 setHeaderViewPresentationController:0];
    [(LTUITranslateSettingsDownloadController *)v5 loadBridge];
    v6 = v5;
  }

  return v5;
}

- (LTUITranslateSettingsDownloadController)initWithNibName:(id)name bundle:(id)bundle usageContext:(unint64_t)context
{
  v10.receiver = self;
  v10.super_class = LTUITranslateSettingsDownloadController;
  v6 = [(LTUITranslateSettingsDownloadController *)&v10 initWithNibName:name bundle:bundle];
  v7 = v6;
  if (v6)
  {
    [(LTUITranslateSettingsDownloadController *)v6 setUsageContext:context];
    [(LTUITranslateSettingsDownloadController *)v7 setHeaderViewPresentationController:0];
    [(LTUITranslateSettingsDownloadController *)v7 loadBridge];
    v8 = v7;
  }

  return v7;
}

- (LTUITranslateSettingsDownloadController)initWithNibName:(id)name bundle:(id)bundle usageContext:(unint64_t)context headerController:(id)controller
{
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = LTUITranslateSettingsDownloadController;
  v11 = [(LTUITranslateSettingsDownloadController *)&v15 initWithNibName:name bundle:bundle];
  v12 = v11;
  if (v11)
  {
    [(LTUITranslateSettingsDownloadController *)v11 setUsageContext:context];
    [(LTUITranslateSettingsDownloadController *)v12 setHeaderViewPresentationController:controllerCopy];
    [(LTUITranslateSettingsDownloadController *)v12 loadBridge];
    v13 = v12;
  }

  return v12;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = LTUITranslateSettingsDownloadController;
  [(LTUITranslateSettingsDownloadController *)&v16 viewDidLoad];
  [(LTUITranslateSettingsDownloadController *)self addChildViewController:self->_bridge];
  view = [(LTUITranslateSettingsDownloadController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(UIViewController *)self->_bridge view];
  [view2 setFrame:{v5, v7, v9, v11}];

  view3 = [(UIViewController *)self->_bridge view];
  [view3 setAutoresizingMask:18];

  view4 = [(LTUITranslateSettingsDownloadController *)self view];
  view5 = [(UIViewController *)self->_bridge view];
  [view4 addSubview:view5];

  [(UIViewController *)self->_bridge didMoveToParentViewController:self];
}

- (void)loadBridge
{
  usageContext = [(LTUITranslateSettingsDownloadController *)self usageContext];
  if (usageContext == 2)
  {
    headerViewPresentationController = [(LTUITranslateSettingsDownloadController *)self headerViewPresentationController];

    if (headerViewPresentationController)
    {
      headerViewPresentationController2 = [(LTUITranslateSettingsDownloadController *)self headerViewPresentationController];
      v7 = [LTUIHostedDownloadViewBridge personalTranslatorViewControllerWithAnimatedHeaderFor:headerViewPresentationController2];

      goto LABEL_10;
    }

    v4 = +[LTUIHostedDownloadViewBridge personalTranslatorViewController];
  }

  else
  {
    if (usageContext == 1)
    {
      +[LTUIHostedDownloadViewBridge accessibilityViewController];
    }

    else
    {
      +[LTUIHostedDownloadViewBridge viewController];
    }
    v4 = ;
  }

  v7 = v4;
LABEL_10:
  bridge = self->_bridge;
  self->_bridge = v7;
}

- (void)viewDidAppear:(BOOL)appear
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = LTUITranslateSettingsDownloadController;
  [(LTUITranslateSettingsDownloadController *)&v21 viewDidAppear:appear];
  v20 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.Translate/DOWNLOADED_LANGUAGES_SPECIFIER"];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v6 bundleURL];
  v8 = [v4 initWithKey:@"ON_DEVICE_LANGUAGES_TITLE" table:@"Localizable" locale:currentLocale bundleURL:bundleURL];

  v9 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL2 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"TRANSLATE" table:@"Localizable" locale:currentLocale2 bundleURL:bundleURL2];

  v14 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL3 = [v16 bundleURL];
  v18 = [v14 initWithKey:@"APPS" table:@"Localizable" locale:currentLocale3 bundleURL:bundleURL3];

  v22[0] = v18;
  v22[1] = v13;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [(LTUITranslateSettingsDownloadController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.Translate" title:v8 localizedNavigationComponents:v19 deepLink:v20];
}

@end