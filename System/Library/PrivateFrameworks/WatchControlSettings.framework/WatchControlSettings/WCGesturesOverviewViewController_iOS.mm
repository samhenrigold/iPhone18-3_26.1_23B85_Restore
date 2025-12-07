@interface WCGesturesOverviewViewController_iOS
+ (id)createGesturesOverviewViewController;
- (WCOnboardingObserver)onboardingObserver;
- (void)_tryItOutOnAppleWatch;
- (void)viewDidLoad;
@end

@implementation WCGesturesOverviewViewController_iOS

+ (id)createGesturesOverviewViewController
{
  v2 = [WCGesturesOverviewViewController_iOS alloc];
  v3 = WCLocalizedString(@"grey.onboarding.title");
  v4 = [(WCGesturesOverviewViewController_iOS *)v2 initWithTitle:v3 detailText:0 icon:0];

  return v4;
}

- (void)viewDidLoad
{
  v27 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = WCGesturesOverviewViewController_iOS;
  viewDidLoad = [(OBBaseWelcomeController *)&v25 viewDidLoad];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = WCAvailableGreyEvents(viewDidLoad);
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        integerValue = [*(*(&v21 + 1) + 8 * v8) integerValue];
        v10 = WCNameForGreyEvent(integerValue);
        v11 = WCOnboardingDescriptionForGreyEvent(integerValue);
        v12 = WCOnboardingImageForGreyEvent(integerValue, 1);
        [(WCGesturesOverviewViewController_iOS *)self addBulletedListItemWithTitle:v10 description:v11 image:v12];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  boldButton = [MEMORY[0x277D37618] boldButton];
  v14 = WCLocalizedString(@"grey.onboarding.try.it.out.on.watch.action");
  [boldButton setTitle:v14 forState:0];

  [boldButton addTarget:self action:sel__tryItOutOnAppleWatch forControlEvents:64];
  buttonTray = [(WCGesturesOverviewViewController_iOS *)self buttonTray];
  [buttonTray addButton:boldButton];

  navigationController = [(WCGesturesOverviewViewController_iOS *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v18 = [viewControllers count];

  if (v18 == 1)
  {
    v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissOnboarding];
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v19];
  }
}

- (void)_tryItOutOnAppleWatch
{
  v2 = +[WatchControlSettings sharedInstance];
  [v2 setRequestToShowPracticeGrey:1];
}

- (WCOnboardingObserver)onboardingObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_onboardingObserver);

  return WeakRetained;
}

@end