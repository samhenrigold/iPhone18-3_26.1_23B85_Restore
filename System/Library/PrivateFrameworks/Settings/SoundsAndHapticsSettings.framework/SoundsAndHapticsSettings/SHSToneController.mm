@interface SHSToneController
- (SHSToneController)init;
- (id)_defaultToneIdentifierForTonePickerWithAlertType:(int64_t)type topic:(id)topic;
- (id)_defaultVibrationIdentifierForVibrationPickerWithAlertType:(int64_t)type topic:(id)topic;
- (void)_handleAlertOverridePolicyDidChangeNotification:(id)notification;
- (void)_insertTonePickerView;
- (void)_updateReloadSpecifierInParentController;
- (void)dealloc;
- (void)setSpecifier:(id)specifier;
- (void)tonePickerViewController:(id)controller didDismissVibrationPickerViewController:(id)viewController;
- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier;
- (void)tonePickerViewController:(id)controller willPresentVibrationPickerViewController:(id)viewController;
- (void)vibrationPickerViewController:(id)controller selectedVibrationWithIdentifier:(id)identifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation SHSToneController

- (SHSToneController)init
{
  v5.receiver = self;
  v5.super_class = SHSToneController;
  v2 = [(SHSToneController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleAlertOverridePolicyDidChangeNotification_ name:*MEMORY[0x277D72080] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D72080] object:0];
  tonePickerViewController = [(SHSToneController *)self tonePickerViewController];
  [tonePickerViewController willMoveToParentViewController:0];
  if ([tonePickerViewController isViewLoaded])
  {
    view = [tonePickerViewController view];
    [view removeFromSuperview];
  }

  [tonePickerViewController removeFromParentViewController];
  [tonePickerViewController setDelegate:0];

  v6.receiver = self;
  v6.super_class = SHSToneController;
  [(SHSToneController *)&v6 dealloc];
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v17.receiver = self;
  v17.super_class = SHSToneController;
  [(SHSToneController *)&v17 setSpecifier:specifierCopy];
  name = [specifierCopy name];
  [(SHSToneController *)self setTitle:name];

  v6 = [specifierCopy propertyForKey:@"alertType"];
  if (v6)
  {
    tonePickerViewController = [(SHSToneController *)self tonePickerViewController];

    if (!tonePickerViewController)
    {
      v8 = TLAlertTypeFromString();
      view = [(SHSToneController *)self view];
      v10 = PSShouldInsetListView();

      if (v10)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      v12 = [objc_alloc(MEMORY[0x277D71F40]) _initWithAlertType:v8 tableViewStyle:v11];
      v13 = [specifierCopy propertyForKey:@"accountIdentifier"];
      if (v13)
      {
        [v12 setTopic:v13];
      }

      if (v8 == 1)
      {
        [v12 setShowsNone:0];
      }

      else
      {
        [v12 setShowsNone:1];
        [v12 setNoneAtTop:1];
      }

      v14 = [(SHSToneController *)self _defaultToneIdentifierForTonePickerWithAlertType:v8 topic:v13];
      [v12 setDefaultToneIdentifier:v14];

      mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
      v16 = [mEMORY[0x277D71F78] currentToneIdentifierForAlertType:v8 topic:v13];
      [v12 setSelectedToneIdentifier:v16];

      [v12 setShowsVibrations:1];
      [v12 setDelegate:self];
      [(SHSToneController *)self setTonePickerViewController:v12];
      [(SHSToneController *)self addChildViewController:v12];
      if ([(SHSToneController *)self isViewLoaded])
      {
        [(SHSToneController *)self _insertTonePickerView];
      }

      [v12 didMoveToParentViewController:self];
    }
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SHSToneController;
  [(SHSToneController *)&v5 viewDidLoad];
  specifier = [(SHSToneController *)self specifier];
  name = [specifier name];
  [(SHSToneController *)self setTitle:name];

  [(SHSToneController *)self _insertTonePickerView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v33.receiver = self;
  v33.super_class = SHSToneController;
  [(SHSToneController *)&v33 viewDidAppear:appear];
  array = [MEMORY[0x277CBEB18] array];
  shs_rootPaneComponent = [MEMORY[0x277CCAEB8] shs_rootPaneComponent];
  [array addObject:shs_rootPaneComponent];

  parentViewController = [(SHSToneController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = MEMORY[0x277CCAEB8];
  if (isKindOfClass)
  {
    parentController = [(SHSToneController *)self parentController];
    specifier = [parentController specifier];
    specifier6 = [v8 shs_localizedPathComponentForTonePickerSpecifier:specifier];

    if (specifier6)
    {
      [array addObject:specifier6];
    }

    v12 = objc_alloc(MEMORY[0x277CCAEB8]);
    specifier2 = [(SHSToneController *)self specifier];
    name = [specifier2 name];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    SHS_BundleForSoundsAndHapticsSettingsFramework(currentLocale);
    v16 = v32 = array;
    bundleURL = [v16 bundleURL];
    v18 = [v12 initWithKey:&stru_28772CD00 defaultValue:name table:0 locale:currentLocale bundleURL:bundleURL];

    v19 = MEMORY[0x277CBEBC0];
    v20 = MEMORY[0x277CCACA8];
    parentController2 = [(SHSToneController *)self parentController];
    specifier3 = [parentController2 specifier];
    identifier = [specifier3 identifier];
    specifier4 = [(SHSToneController *)self specifier];
    identifier2 = [specifier4 identifier];
    v26 = [v20 stringWithFormat:@"settings-navigation://com.apple.Settings.Sounds/%@/%@", identifier, identifier2];
    v27 = [v19 URLWithString:v26];

    array = v32;
  }

  else
  {
    specifier5 = [(SHSToneController *)self specifier];
    v18 = [v8 shs_localizedPathComponentForTonePickerSpecifier:specifier5];

    if (!v18)
    {
      v29 = SHSLogForCategory(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(SHSToneController *)self viewDidAppear:v29];
      }
    }

    v30 = MEMORY[0x277CBEBC0];
    v31 = MEMORY[0x277CCACA8];
    specifier6 = [(SHSToneController *)self specifier];
    parentController2 = [specifier6 identifier];
    specifier3 = [v31 stringWithFormat:@"settings-navigation://com.apple.Settings.Sounds/%@", parentController2];
    v27 = [v30 URLWithString:specifier3];
  }

  if ([(SHSToneController *)self isMemberOfClass:objc_opt_class()]&& v18)
  {
    [(SHSToneController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.sound" title:v18 localizedNavigationComponents:array deepLink:v27];
  }
}

- (void)_insertTonePickerView
{
  view = [(SHSToneController *)self view];
  tonePickerViewController = [(SHSToneController *)self tonePickerViewController];
  view2 = [tonePickerViewController view];
  [view bounds];
  [view2 setFrame:?];
  [view2 setAutoresizingMask:18];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  if (sf_isiPad)
  {
    PSTableViewSideInset();
    v8 = v7;
    v9 = *MEMORY[0x277D76F30];
    tableView = [tonePickerViewController tableView];
    [tableView _setSectionContentInset:{v9, v8, v9, v8}];
  }

  [view addSubview:view2];
}

- (void)_updateReloadSpecifierInParentController
{
  parentController = [(SHSToneController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = parentController;
    specifier = [(SHSToneController *)self specifier];
    [v3 reloadSpecifier:specifier];
  }
}

- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier
{
  v6 = MEMORY[0x277D71F78];
  identifierCopy = identifier;
  controllerCopy = controller;
  sharedToneManager = [v6 sharedToneManager];
  alertType = [controllerCopy alertType];
  topic = [controllerCopy topic];

  [sharedToneManager setCurrentToneIdentifier:identifierCopy forAlertType:alertType topic:topic];

  [(SHSToneController *)self _updateReloadSpecifierInParentController];
}

- (void)tonePickerViewController:(id)controller willPresentVibrationPickerViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  [viewControllerCopy setShowsDefault:0];
  [viewControllerCopy setShowsUserGenerated:1];
  [viewControllerCopy setShowsNone:1];
  [viewControllerCopy setShowsEditButtonInNavigationBar:1];
  alertType = [controllerCopy alertType];
  topic = [controllerCopy topic];

  v9 = [(SHSToneController *)self _defaultVibrationIdentifierForVibrationPickerWithAlertType:alertType topic:topic];
  [viewControllerCopy setDefaultVibrationIdentifier:v9];

  [viewControllerCopy setAllowsDeletingDefaultVibration:1];
  [viewControllerCopy setDelegate:self];
  [(SHSToneController *)self setVibrationPickerViewController:viewControllerCopy];
}

- (void)tonePickerViewController:(id)controller didDismissVibrationPickerViewController:(id)viewController
{
  [viewController setDelegate:0];

  [(SHSToneController *)self setVibrationPickerViewController:0];
}

- (void)vibrationPickerViewController:(id)controller selectedVibrationWithIdentifier:(id)identifier
{
  v6 = MEMORY[0x277D71F88];
  identifierCopy = identifier;
  controllerCopy = controller;
  sharedVibrationManager = [v6 sharedVibrationManager];
  alertType = [controllerCopy alertType];
  topic = [controllerCopy topic];

  [sharedVibrationManager setCurrentVibrationIdentifier:identifierCopy forAlertType:alertType topic:topic];

  [(SHSToneController *)self _updateReloadSpecifierInParentController];
}

- (void)_handleAlertOverridePolicyDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SHSToneController__handleAlertOverridePolicyDidChangeNotification___block_invoke;
  block[3] = &unk_279BA66D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__SHSToneController__handleAlertOverridePolicyDidChangeNotification___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) tonePickerViewController];
  v2 = [v9 alertType];
  v3 = [v9 topic];
  v4 = [*(a1 + 32) _defaultToneIdentifierForTonePickerWithAlertType:v2 topic:v3];
  [v9 setDefaultToneIdentifier:v4];

  v5 = [MEMORY[0x277D71F78] sharedToneManager];
  v6 = [v5 currentToneIdentifierForAlertType:v2 topic:v3];
  [v9 setSelectedToneIdentifier:v6];

  if (v3)
  {
    v7 = [*(a1 + 32) vibrationPickerViewController];
    v8 = [*(a1 + 32) _defaultVibrationIdentifierForVibrationPickerWithAlertType:v2 topic:v3];
    [v7 setDefaultVibrationIdentifier:v8];
  }
}

- (id)_defaultToneIdentifierForTonePickerWithAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
  v7 = [mEMORY[0x277D71F78] defaultToneIdentifierForAlertType:type];

  if (topicCopy)
  {
    mEMORY[0x277D71F78]2 = [MEMORY[0x277D71F78] sharedToneManager];
    v9 = [mEMORY[0x277D71F78]2 hasSpecificDefaultToneIdentifierForAlertType:type topic:topicCopy];

    mEMORY[0x277D71F78]3 = [MEMORY[0x277D71F78] sharedToneManager];
    v11 = mEMORY[0x277D71F78]3;
    if (v9)
    {
      [mEMORY[0x277D71F78]3 defaultToneIdentifierForAlertType:type topic:topicCopy];
    }

    else
    {
      [mEMORY[0x277D71F78]3 currentToneIdentifierForAlertType:type];
    }
    v12 = ;

    v7 = v12;
  }

  return v7;
}

- (id)_defaultVibrationIdentifierForVibrationPickerWithAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  mEMORY[0x277D71F88] = [MEMORY[0x277D71F88] sharedVibrationManager];
  v7 = [mEMORY[0x277D71F88] defaultVibrationIdentifierForAlertType:type];

  if (topicCopy)
  {
    mEMORY[0x277D71F88]2 = [MEMORY[0x277D71F88] sharedVibrationManager];
    v9 = [mEMORY[0x277D71F88]2 hasSpecificDefaultVibrationIdentifierForAlertType:type topic:topicCopy];

    mEMORY[0x277D71F88]3 = [MEMORY[0x277D71F88] sharedVibrationManager];
    v11 = mEMORY[0x277D71F88]3;
    if (v9)
    {
      [mEMORY[0x277D71F88]3 defaultVibrationIdentifierForAlertType:type topic:topicCopy];
    }

    else
    {
      [mEMORY[0x277D71F88]3 currentVibrationIdentifierForAlertType:type];
    }
    v12 = ;

    v7 = v12;
  }

  return v7;
}

- (void)viewDidAppear:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 specifier];
  v4 = 136315394;
  v5 = "[SHSToneController viewDidAppear:]";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_265896000, a2, OS_LOG_TYPE_ERROR, "%s shs_localizedPathComponentForTonePickerSpecifier returned nil for specifier: %@", &v4, 0x16u);
}

@end