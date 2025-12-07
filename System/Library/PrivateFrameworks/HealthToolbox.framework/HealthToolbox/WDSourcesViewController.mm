@interface WDSourcesViewController
+ (id)tableViewSectionClasses;
- (HKHealthSettingsNavigationDonating)settingsNavigationDonatingDelegate;
- (WDSourcesViewController)initWithProfile:(id)profile usingInsetStyling:(BOOL)styling;
- (void)applicationWillEnterForeground;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WDSourcesViewController

+ (id)tableViewSectionClasses
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

- (WDSourcesViewController)initWithProfile:(id)profile usingInsetStyling:(BOOL)styling
{
  stylingCopy = styling;
  profileCopy = profile;
  v24.receiver = self;
  v24.super_class = WDSourcesViewController;
  v7 = [(WDHealthTableViewController *)&v24 initWithProfile:profileCopy usingInsetStyling:stylingCopy];
  if (v7)
  {
    v8 = WDBundle();
    v9 = [v8 localizedStringForKey:@"SOURCES" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    [(WDSourcesViewController *)v7 setTitle:v9];

    v10 = MEMORY[0x277D755B8];
    v11 = WDBundle();
    v12 = [v10 imageNamed:@"sources" inBundle:v11];
    _imageThatSuppressesAccessibilityHairlineThickening = [v12 _imageThatSuppressesAccessibilityHairlineThickening];
    tabBarItem = [(WDSourcesViewController *)v7 tabBarItem];
    [tabBarItem setImage:_imageThatSuppressesAccessibilityHairlineThickening];

    v15 = objc_alloc(MEMORY[0x277D12AD0]);
    healthStore = [profileCopy healthStore];
    v17 = [v15 initWithHealthStore:healthStore];
    appsDataSource = v7->_appsDataSource;
    v7->_appsDataSource = v17;

    [(HKSourceListDataSource *)v7->_appsDataSource setDeliverUpdates:1];
    [(HKSourceListDataSource *)v7->_appsDataSource setShouldFetchAppIcons:0];
    [(HKSourceListDataSource *)v7->_appsDataSource setShouldFetchPurposeStrings:1];
    [(HKSourceListDataSource *)v7->_appsDataSource setShouldIncludeSpecialSources:1];
    v19 = objc_alloc(MEMORY[0x277D12AD0]);
    healthStore2 = [profileCopy healthStore];
    v21 = [v19 initWithHealthStore:healthStore2];
    devicesDataSource = v7->_devicesDataSource;
    v7->_devicesDataSource = v21;

    [(HKSourceListDataSource *)v7->_devicesDataSource setDeliverUpdates:1];
    [(HKSourceListDataSource *)v7->_devicesDataSource setShouldIncludeSpecialSources:1];
  }

  return v7;
}

- (void)viewDidLoad
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = WDSourcesViewController;
  [(WDTableViewController *)&v20 viewDidLoad];
  tableView = [(WDSourcesViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[WDSpinnerTableViewCell defaultReuseIdentifier];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(WDTableViewController *)self tableSections];
  v6 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        tableSections = [(WDTableViewController *)self tableSections];
        [v10 setShouldHideHeader:{objc_msgSend(tableSections, "count") == 1}];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = &OBJC_IVAR___WDSourcesViewController__devicesDataSource;
        }

        else
        {
          v12 = &OBJC_IVAR___WDSourcesViewController__appsDataSource;
        }

        restorationSourceBundleIdentifier = self->_restorationSourceBundleIdentifier;
        v14 = *(&self->super.super.super.super.super.super.super.isa + *v12);
        [v10 setRestorationSourceBundleIdentifier:restorationSourceBundleIdentifier];
        [v10 setSourceListDataSource:v14];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WDSourcesViewController;
  [(WDTableViewController *)&v4 viewWillAppear:appear];
  [(HKSourceListDataSource *)self->_appsDataSource fetchSources];
  [(HKSourceListDataSource *)self->_devicesDataSource fetchSources];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = WDSourcesViewController;
  [(WDSourcesViewController *)&v8 viewDidAppear:appear];
  settingsNavigationDonatingDelegate = [(WDSourcesViewController *)self settingsNavigationDonatingDelegate];
  v5 = MEMORY[0x277D0FD48];
  healthSettingsSourcesSpecifier = [MEMORY[0x277D0FD48] healthSettingsSourcesSpecifier];
  v7 = [v5 internalHealthSettingsURLTo:healthSettingsSourcesSpecifier];
  [settingsNavigationDonatingDelegate donateWithDeepLink:v7 andTitle:@"Sources"];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  navigationItem = [controllerCopy navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  v8.receiver = self;
  v8.super_class = WDSourcesViewController;
  [(WDSourcesViewController *)&v8 hk_showViewController:controllerCopy animated:animatedCopy];
}

- (void)applicationWillEnterForeground
{
  v3.receiver = self;
  v3.super_class = WDSourcesViewController;
  [(WDTableViewController *)&v3 applicationWillEnterForeground];
  [(HKSourceListDataSource *)self->_appsDataSource fetchSources];
  [(HKSourceListDataSource *)self->_devicesDataSource fetchSources];
}

- (HKHealthSettingsNavigationDonating)settingsNavigationDonatingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsNavigationDonatingDelegate);

  return WeakRetained;
}

@end