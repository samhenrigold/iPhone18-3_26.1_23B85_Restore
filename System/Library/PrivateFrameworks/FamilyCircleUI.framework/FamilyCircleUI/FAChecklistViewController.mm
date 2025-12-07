@interface FAChecklistViewController
- (FAChecklistViewController)initWithAccountManager:(id)manager familyCircle:(id)circle profilePictureStore:(id)store checklistStore:(id)checklistStore;
- (FAChecklistViewControllerDelegate)delegate;
- (id)_childCommunicationLimitsForContactManagement:(id)management;
- (id)_childContactsRecord:(id)record;
- (id)_childPresetSpecifiers:(id)specifiers;
- (id)_childrenRecord;
- (id)_custodianContactSpecifiers;
- (id)_getOrganizer;
- (id)_icloudPlusSpecifiers:(id)specifiers;
- (id)_locationSpecifiersWithSharedCount:(unint64_t)count;
- (id)_medicalSpecifiersWithMedicalIDData;
- (id)specifiers;
- (int)_contactsStatusForChild:(id)child;
- (void)_checkAndReloadAllSpecifiers;
- (void)_checklistHeaderView;
- (void)_dismissMedicalID;
- (void)_fetchCommunicationLimitsModifiedDate:(id)date completionHandler:(id)handler;
- (void)_fetchPresetsForChild:(id)child andCompletionHandler:(id)handler;
- (void)_fetchScreenTimeModifiedDate:(id)date completionHandler:(id)handler;
- (void)_manageChildContactsWasTapped:(id)tapped;
- (void)_reviewPresetsWasTapped:(id)tapped;
- (void)_setupCustodianTapped:(id)tapped;
- (void)_setupIcloudPlusWasTapped:(id)tapped;
- (void)_setupNavigationBarTitleView;
- (void)_shareMyLocationButtonWasTapped:(id)tapped;
- (void)_updateCommunicationLimitsSpecifierThen:(id)then;
- (void)_updateCustodianSpecifierThen:(id)then;
- (void)_updateICloudPlusSpecifierThen:(id)then;
- (void)_updateLocationSpecifierThen:(id)then;
- (void)_updateMedicalIDButtonWasTapped:(id)tapped;
- (void)_updateMedicalSpecifierThen:(id)then;
- (void)_updateScreenTimeSpecifierThen:(id)then;
- (void)custodianSetupFlowControllerDidFinish:(id)finish;
- (void)doneButtonTapped:(id)tapped;
- (void)emergencyContactFlow:(id)flow didSelectContact:(id)contact;
- (void)loadView;
- (void)reloadSpecifiers;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation FAChecklistViewController

- (FAChecklistViewController)initWithAccountManager:(id)manager familyCircle:(id)circle profilePictureStore:(id)store checklistStore:(id)checklistStore
{
  managerCopy = manager;
  circleCopy = circle;
  storeCopy = store;
  checklistStoreCopy = checklistStore;
  v69.receiver = self;
  v69.super_class = FAChecklistViewController;
  v15 = [(FAChecklistViewController *)&v69 init];
  if (v15)
  {
    v68 = checklistStoreCopy;
    v75 = 0;
    v76 = &v75;
    v77 = 0x2050000000;
    v16 = getHKHealthStoreClass_softClass_2;
    v78 = getHKHealthStoreClass_softClass_2;
    if (!getHKHealthStoreClass_softClass_2)
    {
      v70 = MEMORY[0x277D85DD0];
      v71 = 3221225472;
      v72 = __getHKHealthStoreClass_block_invoke_2;
      v73 = &unk_2782F2988;
      v74 = &v75;
      __getHKHealthStoreClass_block_invoke_2(&v70);
      v16 = v76[3];
    }

    v17 = v16;
    _Block_object_dispose(&v75, 8);
    v18 = objc_alloc_init(v16);
    healthStore = v15->_healthStore;
    v15->_healthStore = v18;

    v75 = 0;
    v76 = &v75;
    v77 = 0x2050000000;
    v20 = getHKMedicalIDStoreClass_softClass_2;
    v78 = getHKMedicalIDStoreClass_softClass_2;
    if (!getHKMedicalIDStoreClass_softClass_2)
    {
      v70 = MEMORY[0x277D85DD0];
      v71 = 3221225472;
      v72 = __getHKMedicalIDStoreClass_block_invoke_2;
      v73 = &unk_2782F2988;
      v74 = &v75;
      __getHKMedicalIDStoreClass_block_invoke_2(&v70);
      v20 = v76[3];
    }

    v21 = v20;
    _Block_object_dispose(&v75, 8);
    v22 = [[v20 alloc] initWithHealthStore:v15->_healthStore];
    medicalIDStore = v15->_medicalIDStore;
    v15->_medicalIDStore = v22;

    v75 = 0;
    v76 = &v75;
    v77 = 0x2050000000;
    v24 = get_HKMedicalIDDataClass_softClass_1;
    v78 = get_HKMedicalIDDataClass_softClass_1;
    if (!get_HKMedicalIDDataClass_softClass_1)
    {
      v70 = MEMORY[0x277D85DD0];
      v71 = 3221225472;
      v72 = __get_HKMedicalIDDataClass_block_invoke_1;
      v73 = &unk_2782F2988;
      v74 = &v75;
      __get_HKMedicalIDDataClass_block_invoke_1(&v70);
      v24 = v76[3];
    }

    v25 = v24;
    _Block_object_dispose(&v75, 8);
    v26 = objc_alloc_init(v24);
    medicalIDData = v15->_medicalIDData;
    v15->_medicalIDData = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEA60]);
    currEmergencyContacts = v15->_currEmergencyContacts;
    v15->_currEmergencyContacts = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    childPresetRecord = v15->_childPresetRecord;
    v15->_childPresetRecord = v30;

    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    existingChildPresetRecord = v15->_existingChildPresetRecord;
    v15->_existingChildPresetRecord = v32;

    objc_storeStrong(&v15->_accountManager, manager);
    v34 = objc_alloc_init(MEMORY[0x277CCABD8]);
    networkActivityQueue = v15->_networkActivityQueue;
    v15->_networkActivityQueue = v34;

    [(NSOperationQueue *)v15->_networkActivityQueue setQualityOfService:33];
    v36 = objc_alloc_init(MEMORY[0x277D46220]);
    remoteUIViewController = v15->_remoteUIViewController;
    v15->_remoteUIViewController = v36;

    accounts = [(AIDAAccountManager *)v15->_accountManager accounts];
    v39 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
    appleAccount = v15->_appleAccount;
    v15->_appleAccount = v39;

    v41 = objc_alloc_init(MEMORY[0x277CEC798]);
    custodianController = v15->_custodianController;
    v15->_custodianController = v41;

    v75 = 0;
    v76 = &v75;
    v77 = 0x2050000000;
    v43 = getSTSetupClientClass_softClass_0;
    v78 = getSTSetupClientClass_softClass_0;
    if (!getSTSetupClientClass_softClass_0)
    {
      v70 = MEMORY[0x277D85DD0];
      v71 = 3221225472;
      v72 = __getSTSetupClientClass_block_invoke_0;
      v73 = &unk_2782F2988;
      v74 = &v75;
      __getSTSetupClientClass_block_invoke_0(&v70);
      v43 = v76[3];
    }

    v44 = v43;
    _Block_object_dispose(&v75, 8);
    v45 = objc_opt_new();
    setupClient = v15->_setupClient;
    v15->_setupClient = v45;

    v47 = objc_alloc_init(MEMORY[0x277CBEA60]);
    custodians = v15->_custodians;
    v15->_custodians = v47;

    objc_storeStrong(&v15->_familyCircle, circle);
    objc_storeStrong(&v15->_profilePictureStore, store);
    objc_storeStrong(&v15->_checklistStore, checklistStore);
    v15->_isMissingParentContact = 0;
    v49 = objc_alloc_init(MEMORY[0x277CBEB98]);
    membersWithLocation = v15->_membersWithLocation;
    v15->_membersWithLocation = v49;

    v51 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    screenTimeModifiedDate = v15->_screenTimeModifiedDate;
    v15->_screenTimeModifiedDate = v51;

    v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
    screenTimeModifiedRecord = v15->_screenTimeModifiedRecord;
    v15->_screenTimeModifiedRecord = v53;

    v55 = objc_alloc_init(MEMORY[0x277CBEB38]);
    commLimitsModifiedRecord = v15->_commLimitsModifiedRecord;
    v15->_commLimitsModifiedRecord = v55;

    v57 = +[_TtC14FamilyCircleUI17LocationViewModel shared];
    locationViewModel = v15->_locationViewModel;
    v15->_locationViewModel = v57;

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v15->_deviceType = [currentDevice userInterfaceIdiom];

    v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
    parentalControlsForChildren = v15->_parentalControlsForChildren;
    v15->_parentalControlsForChildren = v60;

    v62 = objc_alloc_init(MEMORY[0x277CBEB38]);
    commLimitsForChildren = v15->_commLimitsForChildren;
    v15->_commLimitsForChildren = v62;

    familyCircle = [(FAChecklistViewController *)v15 familyCircle];

    checklistStoreCopy = v68;
    if (familyCircle)
    {
      objc_storeStrong(&v15->_familyCircle, circle);
      v65 = +[_TtC14FamilyCircleUI17LocationViewModel createModel];
      v66 = v15->_locationViewModel;
      v15->_locationViewModel = v65;
    }
  }

  return v15;
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = FAChecklistViewController;
  [(FAChecklistViewController *)&v7 loadView];
  _childrenRecord = [(FAChecklistViewController *)self _childrenRecord];
  listOfChildren = self->_listOfChildren;
  self->_listOfChildren = _childrenRecord;

  _getOrganizer = [(FAChecklistViewController *)self _getOrganizer];
  organizerName = self->_organizerName;
  self->_organizerName = _getOrganizer;
}

- (void)viewDidLoad
{
  v37.receiver = self;
  v37.super_class = FAChecklistViewController;
  [(FAChecklistViewController *)&v37 viewDidLoad];
  v3 = +[_TtC14FamilyCircleUI24FamilyChecklistAnalytics shared];
  [v3 sendTotalChecklistViewsAnalyticsEvent];

  self->_isFirstSpecifierLoad = 1;
  +[FATipKitSignaler sendSignalForFamilyChecklistTapped];
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:self selector:sel__gotLocationChangedNotification name:*MEMORY[0x277D08110] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 postNotificationName:@"FAChecklistTipUpdateNotification" object:0];

  navigationItem = [(FAChecklistViewController *)self navigationItem];
  navItem = self->_navItem;
  self->_navItem = navigationItem;

  v8 = objc_alloc(MEMORY[0x277D751E0]);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DONE" value:&stru_282D9AA68 table:@"Localizable"];
  v11 = [v8 initWithTitle:v10 style:2 target:self action:sel_doneButtonTapped_];

  [(UINavigationItem *)self->_navItem setRightBarButtonItem:v11];
  [(UINavigationItem *)self->_navItem setLeftBarButtonItem:0];
  [(UINavigationItem *)self->_navItem setLargeTitleDisplayMode:2];
  self->_isNavigationTitleViewDisplayed = 0;
  [(FAChecklistViewController *)self _setupNavigationBarTitleView];
  v12 = [_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider getCheckListControllerWithSpecifiers:self->_specifiers];
  checklistHostController = self->_checklistHostController;
  self->_checklistHostController = v12;

  [(FAChecklistViewController *)self addChildViewController:self->_checklistHostController];
  view = [(FAChecklistViewController *)self view];
  view2 = [(FACheckListHostControllerProtocol *)self->_checklistHostController view];
  [view addSubview:view2];

  view3 = [(FACheckListHostControllerProtocol *)self->_checklistHostController view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(FACheckListHostControllerProtocol *)self->_checklistHostController view];
  topAnchor = [view4 topAnchor];
  view5 = [(FAChecklistViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v21 setActive:1];

  view6 = [(FACheckListHostControllerProtocol *)self->_checklistHostController view];
  leadingAnchor = [view6 leadingAnchor];
  view7 = [(FAChecklistViewController *)self view];
  leadingAnchor2 = [view7 leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v26 setActive:1];

  view8 = [(FACheckListHostControllerProtocol *)self->_checklistHostController view];
  trailingAnchor = [view8 trailingAnchor];
  view9 = [(FAChecklistViewController *)self view];
  trailingAnchor2 = [view9 trailingAnchor];
  v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v31 setActive:1];

  view10 = [(FACheckListHostControllerProtocol *)self->_checklistHostController view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(FAChecklistViewController *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v36 setActive:1];

  [(FACheckListHostControllerProtocol *)self->_checklistHostController didMoveToParentViewController:self];
}

- (void)_setupNavigationBarTitleView
{
  v3 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 100.0, 20.0}];
  navigationBarTitleLabel = self->_navigationBarTitleLabel;
  self->_navigationBarTitleLabel = v3;

  v5 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74420]];
  [(UILabel *)self->_navigationBarTitleLabel setFont:v5];

  [(UILabel *)self->_navigationBarTitleLabel setTextAlignment:1];
  v6 = self->_navigationBarTitleLabel;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FAMILY_CHECKLIST" value:&stru_282D9AA68 table:@"Localizable"];
  [(UILabel *)v6 setText:v8];

  v9 = self->_navigationBarTitleLabel;

  [(UILabel *)v9 setAlpha:0.0];
}

- (void)doneButtonTapped:(id)tapped
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__FAChecklistViewController_doneButtonTapped___block_invoke;
  block[3] = &unk_2782F29E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__FAChecklistViewController_doneButtonTapped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2 && (v3 = v2, [*(a1 + 32) delegate], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, v3, (v5 & 1) != 0))
  {
    v7 = [*(a1 + 32) delegate];
    v6 = [*(a1 + 32) navigationController];
    [v7 checklistViewControllerDone:v6];
  }

  else
  {
    v7 = [*(a1 + 32) navigationController];
    [v7 dismissViewControllerAnimated:1 completion:&__block_literal_global_20];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = FAChecklistViewController;
  [(FAChecklistViewController *)&v4 viewWillAppear:1];
  [(FAChecklistViewController *)self _checkAndReloadAllSpecifiers];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = FAChecklistViewController;
  [(FAChecklistViewController *)&v3 viewDidAppear:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = FAChecklistViewController;
  [(FAChecklistViewController *)&v3 viewWillDisappear:1];
}

- (void)_checkAndReloadAllSpecifiers
{
  if (!self->_isFirstSpecifierLoad)
  {
    checklistStore = [(FAChecklistViewController *)self checklistStore];
    [checklistStore clearChecklistCounts];
  }

  self->_isFirstSpecifierLoad = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke;
  v15[3] = &unk_2782F2AF8;
  v15[4] = self;
  v5 = v4;
  v16 = v5;
  [(FAChecklistViewController *)self _updateLocationSpecifierThen:v15];
  if (!self->_deviceType)
  {
    dispatch_group_enter(v5);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke_3;
    v13[3] = &unk_2782F29E8;
    v14 = v5;
    [(FAChecklistViewController *)self _updateMedicalSpecifierThen:v13];
  }

  dispatch_group_enter(v5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke_4;
  v11[3] = &unk_2782F29E8;
  v6 = v5;
  v12 = v6;
  [(FAChecklistViewController *)self _updateCustodianSpecifierThen:v11];
  dispatch_group_enter(v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke_5;
  v9[3] = &unk_2782F29E8;
  v10 = v6;
  v7 = v6;
  [(FAChecklistViewController *)self _updateCommunicationLimitsSpecifierThen:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke_6;
  v8[3] = &unk_2782F29E8;
  v8[4] = self;
  dispatch_group_notify(v7, MEMORY[0x277D85CD0], v8);
}

void __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke_2;
  v2[3] = &unk_2782F29E8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _updateScreenTimeSpecifierThen:v2];
}

void __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke_6(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) reloadSpecifiers];
  v2 = [*(a1 + 32) checklistStore];
  [v2 notifyObservable];

  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) checklistStore];
    v6 = [v5 incompleteItems];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "FAChecklistViewController _checkAndReloadAllSpecifiers end count %@", &v7, 0xCu);
  }
}

- (void)_updateLocationSpecifierThen:(id)then
{
  thenCopy = then;
  checklistStore = [(FAChecklistViewController *)self checklistStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__FAChecklistViewController__updateLocationSpecifierThen___block_invoke;
  v7[3] = &unk_2782F41E8;
  v7[4] = self;
  v8 = thenCopy;
  v6 = thenCopy;
  [checklistStore familyLocationSharingStatus:v7];
}

void __58__FAChecklistViewController__updateLocationSpecifierThen___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__FAChecklistViewController__updateLocationSpecifierThen___block_invoke_2;
  v8[3] = &unk_2782F41C0;
  v11 = a2;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __58__FAChecklistViewController__updateLocationSpecifierThen___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1008) = *(a1 + 56);
  objc_storeStrong((*(a1 + 32) + 1160), *(a1 + 40));
  v2 = [*(a1 + 32) checklistStore];
  [v2 setIncompleteCountFor:2 count:*(a1 + 56) == 0];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)_updateMedicalSpecifierThen:(id)then
{
  thenCopy = then;
  checklistStore = [(FAChecklistViewController *)self checklistStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__FAChecklistViewController__updateMedicalSpecifierThen___block_invoke;
  v7[3] = &unk_2782F4210;
  v7[4] = self;
  v8 = thenCopy;
  v6 = thenCopy;
  [checklistStore fetchMedicalIDData:v7];
}

void __57__FAChecklistViewController__updateMedicalSpecifierThen___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  objc_storeStrong((*(a1 + 32) + 1024), a2);
  v10 = a2;
  v6 = [v10 emergencyContacts];
  v7 = *(a1 + 32);
  v8 = *(v7 + 1032);
  *(v7 + 1032) = v6;

  *(*(a1 + 32) + 1016) = a3;
  v9 = [*(a1 + 32) checklistStore];
  [v9 setIncompleteCountFor:1 count:a3 == 0];

  (*(*(a1 + 40) + 16))();
}

- (void)_updateCustodianSpecifierThen:(id)then
{
  thenCopy = then;
  checklistStore = [(FAChecklistViewController *)self checklistStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__FAChecklistViewController__updateCustodianSpecifierThen___block_invoke;
  v7[3] = &unk_2782F4238;
  v7[4] = self;
  v8 = thenCopy;
  v6 = thenCopy;
  [checklistStore fetchMyCustodians:v7];
}

void __59__FAChecklistViewController__updateCustodianSpecifierThen___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 1144), a2);
  v5 = a2;
  v4 = [*(a1 + 32) checklistStore];
  [v4 setIncompleteCountFor:3 count:{objc_msgSend(v5, "count") == 0}];

  (*(*(a1 + 40) + 16))();
}

- (void)_updateICloudPlusSpecifierThen:(id)then
{
  thenCopy = then;
  checklistStore = [(FAChecklistViewController *)self checklistStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__FAChecklistViewController__updateICloudPlusSpecifierThen___block_invoke;
  v7[3] = &unk_2782F3DC8;
  v7[4] = self;
  v8 = thenCopy;
  v6 = thenCopy;
  [checklistStore fetchIcloudPlusMembership:v7];
}

void __60__FAChecklistViewController__updateICloudPlusSpecifierThen___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__FAChecklistViewController__updateICloudPlusSpecifierThen___block_invoke_2;
  block[3] = &unk_2782F4260;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = a2;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __60__FAChecklistViewController__updateICloudPlusSpecifierThen___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) checklistStore];
  [v3 setCountMembersIcloudPlus:v2];

  if ([*(*(a1 + 32) + 1104) aa_isCloudSubscriber])
  {
    v4 = *(a1 + 48) == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) checklistStore];
  [v5 setIncompleteCountFor:6 count:v4];

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (void)_updateScreenTimeSpecifierThen:(id)then
{
  v32 = *MEMORY[0x277D85DE8];
  thenCopy = then;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_listOfChildren;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    LODWORD(v7) = 0;
    v22 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        dispatch_group_enter(v4);
        checklistStore = [(FAChecklistViewController *)self checklistStore];
        if ([checklistStore screenTimeEnabledForChild:v9] & 1) != 0 || (objc_msgSend(v9, "hasAskToBuyEnabled"))
        {
          v11 = 1;
        }

        else if ([(NSSet *)self->_membersWithLocation count])
        {
          membersWithLocation = self->_membersWithLocation;
          appleID = [v9 appleID];
          v11 = [(NSSet *)membersWithLocation containsObject:appleID];
        }

        else
        {
          v11 = 0;
        }

        parentalControlsForChildren = self->_parentalControlsForChildren;
        v13 = [MEMORY[0x277CCABB0] numberWithBool:v11 & 1];
        appleID2 = [v9 appleID];
        [(NSMutableDictionary *)parentalControlsForChildren setObject:v13 forKey:appleID2];

        v7 = v7 + ((v11 & 1) == 0);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __60__FAChecklistViewController__updateScreenTimeSpecifierThen___block_invoke;
        v25[3] = &unk_2782F4288;
        v25[4] = self;
        v25[5] = v9;
        v26 = v4;
        [(FAChecklistViewController *)self _fetchScreenTimeModifiedDate:v9 completionHandler:v25];

        ++v8;
      }

      while (v6 != v8);
      v17 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      v6 = v17;
    }

    while (v17);
  }

  else
  {
    v7 = 0;
  }

  checklistStore2 = [(FAChecklistViewController *)self checklistStore];
  [checklistStore2 setIncompleteCountFor:4 count:v7];

  dispatch_group_leave(v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__FAChecklistViewController__updateScreenTimeSpecifierThen___block_invoke_2;
  block[3] = &unk_2782F3088;
  block[4] = self;
  v24 = thenCopy;
  v19 = thenCopy;
  dispatch_group_notify(v4, MEMORY[0x277D85CD0], block);
}

void __60__FAChecklistViewController__updateScreenTimeSpecifierThen___block_invoke(void *a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = a1[5];
    v5 = *(a1[4] + 1208);
    v6 = a2;
    v7 = [v4 dsid];
    [v5 setObject:v6 forKey:v7];
  }

  v8 = a1[6];

  dispatch_group_leave(v8);
}

uint64_t __60__FAChecklistViewController__updateScreenTimeSpecifierThen___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 1208) count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = *(*(a1 + 32) + 1208);
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [*(*(a1 + 32) + 1208) objectForKey:{*(*(&v10 + 1) + 8 * i), v10}];
          v8 = v7;
          if (v7 && ([v7 isEqualToDate:*(*(a1 + 32) + 1192)] & 1) == 0)
          {
            objc_storeStrong((*(a1 + 32) + 1192), v8);
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_updateCommunicationLimitsSpecifierThen:(id)then
{
  v37 = *MEMORY[0x277D85DE8];
  thenCopy = then;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_listOfChildren;
  v27 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  v5 = 0;
  if (v27)
  {
    v6 = *v33;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        dispatch_group_enter(v4);
        checklistStore = [(FAChecklistViewController *)self checklistStore];
        v10 = [checklistStore contactManagementEnabledForChild:v8];

        checklistStore2 = [(FAChecklistViewController *)self checklistStore];
        v12 = [checklistStore2 screenTimeEnabledForChild:v8];

        checklistStore3 = [(FAChecklistViewController *)self checklistStore];
        v14 = [checklistStore3 screenTimeEnabledForChild:v8];

        if (v14)
        {
          commLimitsForChildren = self->_commLimitsForChildren;
          v15 = [MEMORY[0x277CCABB0] numberWithBool:v10 == 0];
          [v8 appleID];
          v16 = v12;
          selfCopy = self;
          v18 = v4;
          v20 = v19 = v6;
          [(NSMutableDictionary *)commLimitsForChildren setObject:v15 forKey:v20];

          v6 = v19;
          v4 = v18;
          self = selfCopy;
          v12 = v16;
        }

        if (v10)
        {
          v21 = 0;
        }

        else
        {
          v21 = v12;
        }

        v5 = (v5 + v21);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __69__FAChecklistViewController__updateCommunicationLimitsSpecifierThen___block_invoke;
        v30[3] = &unk_2782F4288;
        v30[4] = self;
        v30[5] = v8;
        v31 = v4;
        [(FAChecklistViewController *)self _fetchCommunicationLimitsModifiedDate:v8 completionHandler:v30];
      }

      v27 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v27);
  }

  checklistStore4 = [(FAChecklistViewController *)self checklistStore];
  [checklistStore4 setIncompleteCountFor:5 count:v5];

  dispatch_group_leave(v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__FAChecklistViewController__updateCommunicationLimitsSpecifierThen___block_invoke_2;
  block[3] = &unk_2782F3088;
  block[4] = self;
  v29 = thenCopy;
  v23 = thenCopy;
  dispatch_group_notify(v4, MEMORY[0x277D85CD0], block);
}

void __69__FAChecklistViewController__updateCommunicationLimitsSpecifierThen___block_invoke(void *a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = a1[5];
    v5 = *(a1[4] + 1216);
    v6 = a2;
    v7 = [v4 dsid];
    [v5 setObject:v6 forKey:v7];
  }

  v8 = a1[6];

  dispatch_group_leave(v8);
}

uint64_t __69__FAChecklistViewController__updateCommunicationLimitsSpecifierThen___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 1216) count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = *(*(a1 + 32) + 1216);
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [*(*(a1 + 32) + 1216) objectForKey:{*(*(&v10 + 1) + 8 * i), v10}];
          v8 = v7;
          if (v7 && ([v7 isEqualToDate:*(*(a1 + 32) + 1200)] & 1) == 0)
          {
            objc_storeStrong((*(a1 + 32) + 1200), v8);
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)_childrenRecord
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  familyCircle = [(FAChecklistViewController *)self familyCircle];
  members = [familyCircle members];

  v6 = [members countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(members);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 memberType] == 1 || objc_msgSend(v10, "memberType") == 2)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [members countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  return v11;
}

- (id)_getOrganizer
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  familyCircle = [(FAChecklistViewController *)self familyCircle];
  members = [familyCircle members];

  v4 = [members countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(members);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 isOrganizer])
        {
          firstName = [v10 firstName];

          contact = [v10 contact];
          givenName = [contact givenName];

          v6 = firstName;
          v7 = givenName;
        }
      }

      v5 = [members countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if ([v6 length])
  {
    v14 = v6;
  }

  else
  {
    v14 = v7;
  }

  v15 = v14;

  return v14;
}

- (void)_checklistHeaderView
{
  v4 = +[_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider getFamilyChecklistHeaderView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [v4 view];
  [view setBackgroundColor:clearColor];
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = FAChecklistViewController;
  [(FAChecklistViewController *)&v2 viewWillLayoutSubviews];
}

- (id)_childCommunicationLimitsForContactManagement:(id)management
{
  v78[3] = *MEMORY[0x277D85DE8];
  managementCopy = management;
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FAMILY_CHECKLIST_COMMUNICATION_LIMITS_CARD" value:&stru_282D9AA68 table:@"Localizable"];
  firstName = [managementCopy firstName];
  v76 = [v5 localizedStringWithFormat:v7, firstName];

  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"FAMILY_CHECKLIST_COMMUNICATION_LIMITS_CARD_SET" value:&stru_282D9AA68 table:@"Localizable"];
  firstName2 = [managementCopy firstName];
  v13 = [v9 localizedStringWithFormat:v11, firstName2];

  v14 = MEMORY[0x277D755B8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v75 = [v14 imageNamed:@"communicationLimitsIcon" inBundle:v15];

  fa_checklistDateFormatter = [MEMORY[0x277CCA968] fa_checklistDateFormatter];
  v64 = [(FAChecklistViewController *)self _contactsStatusForChild:managementCopy];
  checklistStore = [(FAChecklistViewController *)self checklistStore];
  v69 = [checklistStore contactManagementEnabledForChild:managementCopy];

  v72 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"commLimits"];
  v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v76 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v73 = v13;
  v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v19 = *MEMORY[0x277D76F30];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
  v21 = *MEMORY[0x277D40140];
  [v17 setProperty:v20 forKey:*MEMORY[0x277D40140]];

  v22 = *MEMORY[0x277D40170];
  [v17 setProperty:v76 forKey:*MEMORY[0x277D40170]];
  v23 = *MEMORY[0x277D40160];
  [v17 setProperty:0 forKey:*MEMORY[0x277D40160]];
  v24 = *MEMORY[0x277D3FFC0];
  v71 = v17;
  [v17 setProperty:v75 forKey:*MEMORY[0x277D3FFC0]];
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
  v67 = v21;
  [v18 setProperty:v25 forKey:v21];

  v65 = v22;
  v26 = v22;
  v27 = v23;
  v28 = v18;
  [v18 setProperty:v76 forKey:v26];
  [v18 setProperty:0 forKey:v27];
  [v18 setProperty:v75 forKey:v24];
  commLimitsModifiedRecord = self->_commLimitsModifiedRecord;
  dsid = [managementCopy dsid];
  v31 = [(NSMutableDictionary *)commLimitsModifiedRecord objectForKeyedSubscript:dsid];

  switch(v69)
  {
    case 2:
      v66 = v27;
      if (!v31)
      {
LABEL_13:
        v43 = 0;
        v70 = 0;
        goto LABEL_14;
      }

      v48 = MEMORY[0x277CCACA8];
      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = [v45 localizedStringForKey:@"FAMILY_CHECKLIST_SECTION_UPDATED_DATE" value:&stru_282D9AA68 table:@"Localizable"];
      firstName4 = [fa_checklistDateFormatter stringFromDate:v31];
      v43 = [v48 localizedStringWithFormat:v46, firstName4];
      v70 = 0;
      break;
    case 1:
      v66 = v27;
      v39 = MEMORY[0x277CCACA8];
      v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"FAMILY_CHECKLIST_COMMUNICATION_SUBTITLE_PENDING" value:&stru_282D9AA68 table:@"Localizable"];
      firstName3 = [managementCopy firstName];
      v43 = [v39 localizedStringWithFormat:v41, firstName3];

      v44 = MEMORY[0x277CCACA8];
      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = [v45 localizedStringForKey:@"FAMILY_CHECKLIST_COMMUNICATION_LIMITS_SETUP_APPROVAL" value:&stru_282D9AA68 table:@"Localizable"];
      firstName4 = [managementCopy firstName];
      v70 = [v44 localizedStringWithFormat:v46, firstName4];
      break;
    case 0:
      v68 = v31;
      v32 = MEMORY[0x277CCACA8];
      v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"FAMILY_CHECKLIST_COMMUNICATION_LIMIT_DESCRIPTION" value:&stru_282D9AA68 table:@"Localizable"];
      firstName5 = [managementCopy firstName];
      v36 = [v32 localizedStringWithFormat:v34, firstName5];

      v37 = @"FAMILY_CHECKLIST_COMMUNICATION_LIMITS_SETUP";
      if (v64 == 2)
      {
        v38 = v71;
      }

      else
      {
        v38 = v71;
        if (v64 != 4)
        {
          if (v64 != 5)
          {
            v58 = 0;
            goto LABEL_20;
          }

          v37 = @"FAMILY_CHECKLIST_COMMUNICATION_LIMITS_SETUP_APPROVAL";
        }
      }

      v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v58 = [v57 localizedStringForKey:v37 value:&stru_282D9AA68 table:@"Localizable"];

LABEL_20:
      v59 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v58 target:self set:0 get:0 detail:0 cell:13 edit:0];
      v60 = objc_opt_class();
      v61 = *MEMORY[0x277D3FE58];
      [v38 setProperty:v60 forKey:*MEMORY[0x277D3FE58]];
      [v38 setProperty:v36 forKey:v27];
      [v59 setProperty:&unk_282DC0798 forKey:*MEMORY[0x277D3FD78]];
      dsid2 = [managementCopy dsid];
      [v59 setProperty:dsid2 forKey:@"childDsidKey"];

      v70 = v58;
      [v59 setProperty:v58 forKey:v65];
      [v59 setProperty:objc_opt_class() forKey:v61];
      [v59 setButtonAction:sel__manageChildContactsWasTapped_];
      v55 = v72;
      v78[0] = v72;
      v78[1] = v38;
      v78[2] = v59;
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:3];

      v43 = 0;
      v31 = v68;
      goto LABEL_21;
    default:
      v66 = v27;
      goto LABEL_13;
  }

LABEL_14:
  v49 = MEMORY[0x277CCACA8];
  v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v51 = [v50 localizedStringForKey:@"FAMILY_CHECKLIST_COMMUNICATION_LIMIT_DESCRIPTION_SETUP" value:&stru_282D9AA68 table:@"Localizable"];
  firstName6 = [managementCopy firstName];
  v36 = [v49 localizedStringWithFormat:v51, firstName6];

  [v28 setCellType:1];
  v53 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
  [v28 setProperty:v53 forKey:v67];

  [v28 setProperty:v36 forKey:v66];
  if (v43)
  {
    [v28 setProperty:v43 forKey:*MEMORY[0x277D3FFA8]];
  }

  [v28 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  dsid3 = [managementCopy dsid];
  [v28 setProperty:dsid3 forKey:@"childDsidKey"];

  [v28 setButtonAction:sel__manageChildContactsWasTapped_];
  v55 = v72;
  v77[0] = v72;
  v77[1] = v28;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
  v38 = v71;
LABEL_21:

  return v56;
}

- (id)_locationSpecifiersWithSharedCount:(unint64_t)count
{
  v45[2] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v43 = [v5 localizedStringForKey:@"FAMILY_CHECKLIST_LOCATION_CARD" value:&stru_282D9AA68 table:@"Localizable"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FAMILY_CHECKLIST_LOCATION_SET" value:&stru_282D9AA68 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FAMILY_CHECKLIST_LOCATION_SETUP" value:&stru_282D9AA68 table:@"Localizable"];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"FAMILY_CHECKLIST_LOCATION_SHARING_INFO" value:&stru_282D9AA68 table:@"Localizable"];
  familyCircle = [(FAChecklistViewController *)self familyCircle];
  members = [familyCircle members];
  v40 = [v10 localizedStringWithFormat:v12, count, objc_msgSend(members, "count") - 1];

  v15 = MEMORY[0x277D755B8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v15 imageNamed:@"fmfNewIcon" inBundle:v16];

  v39 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"location"];
  v41 = v9;
  v37 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v43 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v42 = v7;
  v19 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v20 = *MEMORY[0x277D40170];
  [v18 setProperty:v43 forKey:*MEMORY[0x277D40170]];
  v21 = *MEMORY[0x277D3FFC0];
  v38 = v17;
  [v18 setProperty:v17 forKey:*MEMORY[0x277D3FFC0]];
  v22 = objc_opt_class();
  v23 = *MEMORY[0x277D3FE58];
  [v18 setProperty:v22 forKey:*MEMORY[0x277D3FE58]];
  countMembersWithLocation = self->_countMembersWithLocation;
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = v25;
  if (countMembersWithLocation)
  {
    v27 = [v25 localizedStringForKey:@"FAMILY_CHECKLIST_LOCATION_CARD_DESCRIPTION_SET" value:&stru_282D9AA68 table:@"Localizable"];

    v28 = v43;
    [v19 setProperty:v43 forKey:v20];
    v29 = v38;
    [v19 setProperty:v38 forKey:v21];
    [v19 setProperty:objc_opt_class() forKey:v23];
    [v19 setCellType:1];
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    [v19 setProperty:v30 forKey:*MEMORY[0x277D40140]];

    [v19 setButtonAction:sel__shareMyLocationButtonWasTapped_];
    v31 = v40;
    [v19 setProperty:v40 forKey:*MEMORY[0x277D3FFA8]];
    [v19 setProperty:v27 forKey:*MEMORY[0x277D40160]];
    v32 = v39;
    v45[0] = v39;
    v45[1] = v19;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v34 = v41;
    v35 = v37;
  }

  else
  {
    v27 = [v25 localizedStringForKey:@"FAMILY_CHECKLIST_LOCATION_CARD_DESCRIPTION" value:&stru_282D9AA68 table:@"Localizable"];

    [v18 setProperty:v27 forKey:*MEMORY[0x277D40160]];
    v34 = v41;
    [v18 setProperty:v41 forKey:*MEMORY[0x277D3FE10]];
    v35 = v37;
    [v37 setProperty:&unk_282DC0798 forKey:*MEMORY[0x277D3FD78]];
    [v37 setProperty:v41 forKey:v20];
    [v37 setProperty:objc_opt_class() forKey:v23];
    [v37 setButtonAction:sel__shareMyLocationButtonWasTapped_];
    v32 = v39;
    v44[0] = v39;
    v44[1] = v18;
    v44[2] = v37;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
    v28 = v43;
    v31 = v40;
    v29 = v38;
  }

  return v33;
}

- (id)_medicalSpecifiersWithMedicalIDData
{
  v47[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v36 = [v3 localizedStringForKey:@"FAMILY_CHECKLIST_MEDICAL_CARD" value:&stru_282D9AA68 table:@"Localizable"];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FAMILY_CHECKLIST_MEDICAL_SET" value:&stru_282D9AA68 table:@"Localizable"];

  fa_checklistDateFormatter = [MEMORY[0x277CCA968] fa_checklistDateFormatter];
  emergencyContactsModifiedDate = [(_HKMedicalIDData *)self->_medicalIDData emergencyContactsModifiedDate];
  medicalIDData = self->_medicalIDData;
  if (emergencyContactsModifiedDate)
  {
    [(_HKMedicalIDData *)medicalIDData emergencyContactsModifiedDate];
  }

  else
  {
    [(_HKMedicalIDData *)medicalIDData dateSaved];
  }
  v9 = ;

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"FAMILY_CHECKLIST_SECTION_UPDATED_DATE" value:&stru_282D9AA68 table:@"Localizable"];
  v42 = v9;
  v43 = fa_checklistDateFormatter;
  v13 = [fa_checklistDateFormatter stringFromDate:v9];
  v41 = [v10 localizedStringWithFormat:v12, v13];

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"FAMILY_CHECKLIST_MEDICAL_SETUP" value:&stru_282D9AA68 table:@"Localizable"];

  v40 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:35.0];
  v16 = [MEMORY[0x277D755B8] systemImageNamed:@"staroflife.fill" withConfiguration:?];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  v18 = [v16 imageWithTintColor:systemRedColor renderingMode:1];

  v37 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"medical"];
  v19 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v36 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v44 = v5;
  v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v39 = v15;
  v45 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v21 = *MEMORY[0x277D40170];
  [v19 setProperty:v36 forKey:*MEMORY[0x277D40170]];
  v22 = *MEMORY[0x277D3FFC0];
  v38 = v18;
  [v19 setProperty:v18 forKey:*MEMORY[0x277D3FFC0]];
  v23 = objc_opt_class();
  v24 = *MEMORY[0x277D3FE58];
  [v19 setProperty:v23 forKey:*MEMORY[0x277D3FE58]];
  countEmergencyContacts = self->_countEmergencyContacts;
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = v26;
  if (countEmergencyContacts)
  {
    v28 = [v26 localizedStringForKey:@"FAMILY_CHECKLIST_MEDICAL_CARD_DESCRIPTION_SET" value:&stru_282D9AA68 table:@"Localizable"];

    [v20 setProperty:v36 forKey:v21];
    v29 = v38;
    [v20 setProperty:v38 forKey:v22];
    [v20 setProperty:objc_opt_class() forKey:v24];
    [v20 setCellType:1];
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    [v20 setProperty:v30 forKey:*MEMORY[0x277D40140]];

    [v20 setButtonAction:sel__updateMedicalIDButtonWasTapped_];
    v31 = v41;
    [v20 setProperty:v41 forKey:*MEMORY[0x277D3FFA8]];
    [v20 setProperty:v28 forKey:*MEMORY[0x277D40160]];
    v32 = v37;
    v47[0] = v37;
    v47[1] = v20;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v34 = v39;
  }

  else
  {
    v28 = [v26 localizedStringForKey:@"FAMILY_CHECKLIST_MEDICAL_CARD_DESCRIPTION_NOT_SET" value:&stru_282D9AA68 table:@"Localizable"];

    [v19 setProperty:v28 forKey:*MEMORY[0x277D40160]];
    [v45 setProperty:&unk_282DC0798 forKey:*MEMORY[0x277D3FD78]];
    [v45 setProperty:v39 forKey:v21];
    [v45 setProperty:objc_opt_class() forKey:v24];
    [v45 setButtonAction:sel__updateMedicalIDButtonWasTapped_];
    v32 = v37;
    v46[0] = v37;
    v46[1] = v19;
    v46[2] = v45;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
    v31 = v41;
    v34 = v39;
    v29 = v38;
  }

  return v33;
}

- (id)_childPresetSpecifiers:(id)specifiers
{
  v88[2] = *MEMORY[0x277D85DE8];
  specifiersCopy = specifiers;
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FAMILY_CHECKLIST_CHILD_CARD" value:&stru_282D9AA68 table:@"Localizable"];
  firstName = [specifiersCopy firstName];
  v9 = [v5 localizedStringWithFormat:v7, firstName];

  v10 = v9;
  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"FAMILY_CHECKLIST_CHILD_CARD_REVIEW" value:&stru_282D9AA68 table:@"Localizable"];
  v14 = [v11 localizedStringWithFormat:v13];

  v80 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"children"];
  dsid = [specifiersCopy dsid];
  stringValue = [dsid stringValue];

  profilePictureStore = [(FAChecklistViewController *)self profilePictureStore];
  v17 = [profilePictureStore profilePictureForFamilyMember:specifiersCopy pictureDiameter:40.0];

  v18 = MEMORY[0x277D755B8];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v78 = v17;
  v84 = [v18 imageWithData:v17 scale:?];

  v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v81 = v14;
  v77 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:4 edit:0];
  fa_checklistDateFormatter = [MEMORY[0x277CCA968] fa_checklistDateFormatter];
  v22 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v22 setMonth:-6];
  v23 = objc_alloc(MEMORY[0x277CBEA80]);
  v24 = [v23 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  date = [MEMORY[0x277CBEAA8] date];
  v74 = v24;
  v75 = v22;
  v83 = [v24 dateByAddingComponents:v22 toDate:date options:0];

  screenTimeModifiedRecord = self->_screenTimeModifiedRecord;
  dsid2 = [specifiersCopy dsid];
  v28 = [(NSMutableDictionary *)screenTimeModifiedRecord objectForKeyedSubscript:dsid2];

  v85 = v28;
  v76 = fa_checklistDateFormatter;
  if (v28)
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v30 localizedStringForKey:@"FAMILY_CHECKLIST_SECTION_UPDATED_DATE" value:&stru_282D9AA68 table:@"Localizable"];
    v32 = v31 = v10;
    v33 = [fa_checklistDateFormatter stringFromDate:v85];
    v82 = [v29 localizedStringWithFormat:v32, v33];

    v10 = v31;
    v28 = v85;
  }

  else
  {
    v82 = 0;
  }

  v73 = *MEMORY[0x277D40170];
  [v20 setProperty:v10 forKey:?];
  v34 = *MEMORY[0x277D3FFC0];
  [v20 setProperty:v84 forKey:*MEMORY[0x277D3FFC0]];
  v35 = objc_opt_class();
  v36 = *MEMORY[0x277D3FE58];
  [v20 setProperty:v35 forKey:*MEMORY[0x277D3FE58]];
  if (!v28 || [v28 compare:v83] != -1)
  {
    checklistStore = [(FAChecklistViewController *)self checklistStore];
    if ([checklistStore screenTimeEnabledForChild:specifiersCopy] & 1) != 0 || (objc_msgSend(specifiersCopy, "hasAskToBuyEnabled"))
    {

LABEL_9:
      v38 = MEMORY[0x277CCACA8];
      v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v40 = [v39 localizedStringForKey:@"FAMILY_CHECKLIST_CHILD_SETUP_DONE" value:&stru_282D9AA68 table:@"Localizable"];
      firstName2 = [specifiersCopy firstName];
      v42 = [v38 stringWithFormat:v40, firstName2];

      [v20 setCellType:1];
      v43 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
      [v20 setProperty:v43 forKey:*MEMORY[0x277D40140]];

      v44 = stringValue;
      [v20 setProperty:stringValue forKey:@"childDsidKey"];
      altDSID = [specifiersCopy altDSID];
      [v20 setProperty:altDSID forKey:@"childAltDsidKey"];

      v46 = v82;
      if (v82)
      {
        [v20 setProperty:v82 forKey:*MEMORY[0x277D3FFA8]];
      }

      [v20 setProperty:v42 forKey:*MEMORY[0x277D40160]];
      [v20 setButtonAction:sel__reviewPresetsWasTapped_];
      v47 = v80;
      v88[0] = v80;
      v88[1] = v20;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
      v49 = v77;
      goto LABEL_22;
    }

    v72 = v36;
    if ([(NSSet *)self->_membersWithLocation count])
    {
      membersWithLocation = self->_membersWithLocation;
      appleID = [specifiersCopy appleID];
      LODWORD(membersWithLocation) = [(NSSet *)membersWithLocation containsObject:appleID];

      if (membersWithLocation)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_21:
    v61 = MEMORY[0x277CCACA8];
    v62 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v63 = [v62 localizedStringForKey:@"FAMILY_CHECKLIST_CHILD_CARD_DESCRIPTION_UNSET" value:&stru_282D9AA68 table:@"Localizable"];
    firstName3 = [specifiersCopy firstName];
    v42 = [v61 localizedStringWithFormat:v63, firstName3];

    v65 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v66 = [v65 localizedStringForKey:@"FAMILY_CHECKLIST_CHILD_SETUP" value:&stru_282D9AA68 table:@"Localizable"];

    v67 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v66 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v20 setProperty:v42 forKey:*MEMORY[0x277D40160]];
    [v67 setProperty:&unk_282DC0798 forKey:*MEMORY[0x277D3FD78]];
    v44 = stringValue;
    [v67 setProperty:stringValue forKey:@"childDsidKey"];
    altDSID2 = [specifiersCopy altDSID];
    [v67 setProperty:altDSID2 forKey:@"childAltDsidKey"];

    [v67 setProperty:v66 forKey:v73];
    [v67 setProperty:objc_opt_class() forKey:v72];
    [v67 setButtonAction:sel__reviewPresetsWasTapped_];
    v47 = v80;
    v86[0] = v80;
    v86[1] = v20;
    v86[2] = v67;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:3];

    v49 = v77;
    v46 = v82;
    goto LABEL_22;
  }

  v72 = v36;
  if ([v28 compare:v83] != -1)
  {
    goto LABEL_21;
  }

  checklistStore2 = [(FAChecklistViewController *)self checklistStore];
  v51 = [checklistStore2 screenTimeEnabledForChild:specifiersCopy];

  if (!v51)
  {
    goto LABEL_21;
  }

  v52 = MEMORY[0x277CCACA8];
  v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v53 = [v70 localizedStringForKey:@"FAMILY_CHECKLIST_CHILD_CARD_DESCRIPTION_OLD" value:&stru_282D9AA68 table:@"Localizable"];
  firstName4 = [specifiersCopy firstName];
  v42 = [v52 stringWithFormat:v53, firstName4, objc_msgSend(specifiersCopy, "age")];

  v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v56 = [v55 localizedStringForKey:@"FAMILY_CHECKLIST_CHILD_SETUP_UPDATE" value:&stru_282D9AA68 table:@"Localizable"];

  v71 = v56;
  v57 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v56 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v49 = v77;
  [v77 setProperty:v10 forKey:v73];
  [v77 setProperty:v84 forKey:v34];
  [v77 setProperty:objc_opt_class() forKey:v72];
  [v77 setProperty:v42 forKey:*MEMORY[0x277D40160]];
  [v77 setIdentifier:@"checkScreenTimeSettings"];
  if (v82)
  {
    [v77 setProperty:v82 forKey:*MEMORY[0x277D3FFA8]];
  }

  [v57 setProperty:&unk_282DC0798 forKey:*MEMORY[0x277D3FD78]];
  v44 = stringValue;
  [v57 setProperty:stringValue forKey:@"childDsidKey"];
  altDSID3 = [specifiersCopy altDSID];
  [v57 setProperty:altDSID3 forKey:@"childAltDsidKey"];

  v46 = v82;
  [v57 setProperty:v71 forKey:v73];
  [v57 setProperty:objc_opt_class() forKey:v72];
  [v57 setButtonAction:sel__reviewPresetsWasTapped_];
  v47 = v80;
  v87[0] = v80;
  v87[1] = v77;
  v87[2] = v57;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:3];

LABEL_22:

  return v48;
}

- (id)_custodianContactSpecifiers
{
  v65[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FAMILY_CHECKLIST_CUSTODIAN_TITLE" value:&stru_282D9AA68 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FAMILY_CHECKLIST_CUSTODIAN_CONTACT_DESCRIPTION" value:&stru_282D9AA68 table:@"Localizable"];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FAMILY_CHECKLIST_CUSTODIAN_CONTACTS_SETUP" value:&stru_282D9AA68 table:@"Localizable"];

  v9 = MEMORY[0x277D755B8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v62 = [v9 imageNamed:@"RecoveryContactsIcon" inBundle:v10];

  fa_checklistDateFormatter = [MEMORY[0x277CCA968] fa_checklistDateFormatter];
  v11 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"custodian"];
  v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v61 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[NSArray count](self->_custodians, "count")}];
  stringValue = [v14 stringValue];

  custodians = self->_custodians;
  if (custodians && [(NSArray *)custodians count])
  {
    mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
    primaryAuthKitAccount = [mEMORY[0x277CF0130] primaryAuthKitAccount];
    v54 = mEMORY[0x277CF0130];
    v17 = [mEMORY[0x277CF0130] custodianLastModifiedForAccount:?];
    v55 = v11;
    v52 = v17;
    if (v17)
    {
      v18 = MEMORY[0x277CBEAA8];
      [v17 doubleValue];
      v59 = [v18 dateWithTimeIntervalSince1970:v19 / 1000.0];
    }

    else
    {
      v59 = 0;
    }

    v56 = v8;
    v58 = v4;
    v28 = [(NSArray *)self->_custodians count];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = v29;
    v57 = v6;
    if (v28 == 1)
    {
      v51 = [v29 localizedStringForKey:@"FAMILY_CHECKLIST_CUSTODIAN_SINGLE_TITLE" value:&stru_282D9AA68 table:@"Localizable"];

      lastObject = [(NSArray *)self->_custodians lastObject];
      firstName = [lastObject firstName];

      v33 = MEMORY[0x277CCACA8];
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = v34;
      if (firstName)
      {
        v36 = [v34 localizedStringForKey:@"FAMILY_CHECKLIST_CUSTODIAN_UPDATED" value:&stru_282D9AA68 table:@"Localizable"];
        v37 = [fa_checklistDateFormatter stringFromDate:v59];
        [v33 localizedStringWithFormat:v36, firstName, v37];
      }

      else
      {
        v36 = [v34 localizedStringForKey:@"FAMILY_CHECKLIST_SECTION_UPDATED_DATE" value:&stru_282D9AA68 table:@"Localizable"];
        v37 = [fa_checklistDateFormatter stringFromDate:v59];
        [v33 localizedStringWithFormat:v36, v37, v49];
      }
      v41 = ;

      v39 = v59;
      v40 = v41;
    }

    else
    {
      v51 = [v29 localizedStringForKey:@"FAMILY_CHECKLIST_CUSTODIAN_ALTERNATE_TITLE" value:&stru_282D9AA68 table:@"Localizable"];

      v38 = MEMORY[0x277CCACA8];
      firstName = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [firstName localizedStringForKey:@"FAMILY_CHECKLIST_SECTION_UPDATED_DATE" value:&stru_282D9AA68 table:@"Localizable"];
      v39 = v59;
      v36 = [fa_checklistDateFormatter stringFromDate:v59];
      v40 = [v38 localizedStringWithFormat:v35, v36];
    }

    if (v39)
    {
      v50 = v40;
    }

    else
    {

      v50 = &stru_282D9AA68;
    }

    v42 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v51 target:self set:0 get:0 detail:0 cell:4 edit:0];
    v43 = MEMORY[0x277CCACA8];
    v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v45 = [v44 localizedStringForKey:@"FAMILY_CHECKLIST_CUSTODIAN_DESCRIPTION" value:&stru_282D9AA68 table:@"Localizable"];
    v46 = [v43 localizedStringWithFormat:v45, -[NSArray count](self->_custodians, "count")];

    v20 = v62;
    [v42 setProperty:v62 forKey:*MEMORY[0x277D3FFC0]];
    [v42 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v42 setProperty:v51 forKey:*MEMORY[0x277D40170]];
    [v42 setCellType:1];
    v47 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    [v42 setProperty:v47 forKey:*MEMORY[0x277D40140]];

    [v42 setProperty:v50 forKey:*MEMORY[0x277D3FFA8]];
    [v42 setProperty:v46 forKey:*MEMORY[0x277D40160]];
    [v42 setButtonAction:sel__setupCustodianTapped_];
    v26 = v55;
    v65[0] = v55;
    v65[1] = v42;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];

    v6 = v57;
    v4 = v58;
    v8 = v56;
  }

  else
  {
    v20 = v62;
    [v12 setProperty:v62 forKey:*MEMORY[0x277D3FFC0]];
    v21 = objc_opt_class();
    v22 = *MEMORY[0x277D3FE58];
    [v12 setProperty:v21 forKey:*MEMORY[0x277D3FE58]];
    v23 = v11;
    v24 = *MEMORY[0x277D40170];
    [v12 setProperty:v4 forKey:*MEMORY[0x277D40170]];
    [v12 setProperty:v6 forKey:*MEMORY[0x277D40160]];
    [v13 setProperty:&unk_282DC0798 forKey:*MEMORY[0x277D3FD78]];
    v25 = v24;
    v26 = v23;
    [v13 setProperty:v8 forKey:v25];
    [v13 setProperty:objc_opt_class() forKey:v22];
    [v13 setButtonAction:sel__setupCustodianTapped_];
    v64[0] = v23;
    v64[1] = v12;
    v64[2] = v13;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:3];
  }

  return v27;
}

- (id)_icloudPlusSpecifiers:(id)specifiers
{
  v62[2] = *MEMORY[0x277D85DE8];
  specifiersCopy = specifiers;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_CARD" value:&stru_282D9AA68 table:@"Localizable"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_SHARED" value:&stru_282D9AA68 table:@"Localizable"];

  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_NON_SUBSCRIBER" value:&stru_282D9AA68 table:@"Localizable"];
  v11 = [v8 localizedStringWithFormat:v10, self->_organizerName];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_SETUP" value:&stru_282D9AA68 table:@"Localizable"];

  v14 = MEMORY[0x277D755B8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v14 imageNamed:@"iCloudStorageIcon" inBundle:v15];

  v55 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"icloudPlus"];
  v59 = v5;
  v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v57 = v7;
  v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v56 = v11;
  v19 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:13 edit:0];
  checklistStore = [(FAChecklistViewController *)self checklistStore];
  countMembersIcloudPlus = [checklistStore countMembersIcloudPlus];

  if (countMembersIcloudPlus)
  {
    v52 = v20;
    v53 = v16;
    v54 = v13;
    isOrganizer = [specifiersCopy isOrganizer];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = v24;
    if (isOrganizer)
    {
      v26 = [v24 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_DESCRIPTION_SHARED" value:&stru_282D9AA68 table:@"Localizable"];

      v51 = v19;
      v27 = MEMORY[0x277CCACA8];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_SHARING_INFO" value:&stru_282D9AA68 table:@"Localizable"];
      checklistStore2 = [(FAChecklistViewController *)self checklistStore];
      v31 = [checklistStore2 countMembersIcloudPlus] - 1;
      familyCircle = [(FAChecklistViewController *)self familyCircle];
      members = [familyCircle members];
      v34 = [v27 localizedStringWithFormat:v29, v31, objc_msgSend(members, "count") - 1];

      v35 = v26;
      v36 = v53;
      [v18 setProperty:v53 forKey:*MEMORY[0x277D3FFC0]];
      [v18 setProperty:v59 forKey:*MEMORY[0x277D40170]];
      [v18 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      [v18 setCellType:1];
      v37 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
      [v18 setProperty:v37 forKey:*MEMORY[0x277D40140]];

      v38 = specifiersCopy;
      [v18 setProperty:v34 forKey:*MEMORY[0x277D3FFA8]];
      [v18 setProperty:v26 forKey:*MEMORY[0x277D40160]];
      [v18 setButtonAction:sel__setupIcloudPlusWasTapped_];
      v39 = v55;
      v62[0] = v55;
      v62[1] = v18;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];

      v41 = v51;
      v20 = v52;
      v13 = v54;
      goto LABEL_7;
    }

    v35 = [v24 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_DESCRIPTION_NON_SUBSCRIBER" value:&stru_282D9AA68 table:@"Localizable"];

    v36 = v16;
    [v19 setProperty:v16 forKey:*MEMORY[0x277D3FFC0]];
    [v19 setProperty:v59 forKey:*MEMORY[0x277D40170]];
    [v19 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v19 setCellType:1];
    [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    v49 = v48 = v19;
    [v48 setProperty:v49 forKey:*MEMORY[0x277D40140]];

    v41 = v48;
    [v48 setProperty:v35 forKey:*MEMORY[0x277D40160]];
    [v48 setButtonAction:sel__setupIcloudPlusWasTapped_];
    v39 = v55;
    v61[0] = v55;
    v61[1] = v48;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
  }

  else
  {
    v42 = v19;
    v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v43 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_DESCRIPTION" value:&stru_282D9AA68 table:@"Localizable"];

    v36 = v16;
    [v17 setProperty:v16 forKey:*MEMORY[0x277D3FFC0]];
    v44 = *MEMORY[0x277D40170];
    [v17 setProperty:v59 forKey:*MEMORY[0x277D40170]];
    v45 = objc_opt_class();
    v46 = *MEMORY[0x277D3FE58];
    [v17 setProperty:v45 forKey:*MEMORY[0x277D3FE58]];
    [v17 setProperty:v35 forKey:*MEMORY[0x277D40160]];
    [v20 setProperty:&unk_282DC0798 forKey:*MEMORY[0x277D3FD78]];
    v47 = v44;
    v41 = v42;
    [v20 setProperty:v13 forKey:v47];
    [v20 setProperty:objc_opt_class() forKey:v46];
    [v20 setButtonAction:sel__setupIcloudPlusWasTapped_];
    v39 = v55;
    v60[0] = v55;
    v60[1] = v17;
    v60[2] = v20;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
  }

  v38 = specifiersCopy;
LABEL_7:

  return v40;
}

- (id)specifiers
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  familyCircle = [(FAChecklistViewController *)self familyCircle];
  members = [familyCircle members];

  v6 = [members countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    v40 = *v56;
    v41 = members;
    do
    {
      v9 = 0;
      v42 = v7;
      do
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(members);
        }

        v10 = *(*(&v55 + 1) + 8 * v9);
        if ([v10 isMe] && objc_msgSend(v10, "isParent"))
        {
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v11 = self->_listOfChildren;
          v12 = [(NSArray *)v11 countByEnumeratingWithState:&v51 objects:v61 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v52;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v52 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v51 + 1) + 8 * i);
                checklistStore = [(FAChecklistViewController *)self checklistStore];
                v18 = [checklistStore screenTimeEnabledForChild:v16];

                if (v18)
                {
                  v19 = [(FAChecklistViewController *)self _childCommunicationLimitsForContactManagement:v16];
                  [v3 addObjectsFromArray:v19];
                }

                v20 = [(FAChecklistViewController *)self _childPresetSpecifiers:v16];
                [v3 addObjectsFromArray:v20];
              }

              v13 = [(NSArray *)v11 countByEnumeratingWithState:&v51 objects:v61 count:16];
            }

            while (v13);
          }

          v8 = v40;
          members = v41;
          v7 = v42;
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [members countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v7);
  }

  if (!self->_deviceType)
  {
    _medicalSpecifiersWithMedicalIDData = [(FAChecklistViewController *)self _medicalSpecifiersWithMedicalIDData];
    [v3 addObjectsFromArray:_medicalSpecifiersWithMedicalIDData];
  }

  v22 = [(FAChecklistViewController *)self _locationSpecifiersWithSharedCount:self->_countMembersWithLocation];
  [v3 addObjectsFromArray:v22];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  familyCircle2 = [(FAChecklistViewController *)self familyCircle];
  members2 = [familyCircle2 members];

  v25 = [members2 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v48;
    while (2)
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(members2);
        }

        v29 = *(*(&v47 + 1) + 8 * j);
        if (-[ACAccount aa_isCloudSubscriber](self->_appleAccount, "aa_isCloudSubscriber") && [v29 isMe])
        {
          v30 = [(FAChecklistViewController *)self _icloudPlusSpecifiers:v29];
          [v3 addObjectsFromArray:v30];

          goto LABEL_33;
        }
      }

      v26 = [members2 countByEnumeratingWithState:&v47 objects:v60 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  familyCircle3 = [(FAChecklistViewController *)self familyCircle];
  members3 = [familyCircle3 members];

  v33 = [members3 countByEnumeratingWithState:&v43 objects:v59 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v44;
    while (2)
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v44 != v35)
        {
          objc_enumerationMutation(members3);
        }

        v37 = *(*(&v43 + 1) + 8 * k);
        if ([v37 isMe] && (!objc_msgSend(v37, "memberType") || objc_msgSend(v37, "memberType") == 1))
        {
          _custodianContactSpecifiers = [(FAChecklistViewController *)self _custodianContactSpecifiers];
          [v3 addObjectsFromArray:_custodianContactSpecifiers];

          goto LABEL_45;
        }
      }

      v34 = [members3 countByEnumeratingWithState:&v43 objects:v59 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

LABEL_45:

  objc_storeStrong(&self->_specifiers, v3);

  return v3;
}

- (void)_fetchScreenTimeModifiedDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  v7 = objc_alloc_init(getSTManagementStateClass());
  dsid = [dateCopy dsid];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__FAChecklistViewController__fetchScreenTimeModifiedDate_completionHandler___block_invoke;
  v10[3] = &unk_2782F42D8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v7 lastModifcationDateForDSID:dsid completionHandler:v10];
}

void __76__FAChecklistViewController__fetchScreenTimeModifiedDate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__FAChecklistViewController__fetchScreenTimeModifiedDate_completionHandler___block_invoke_2;
  block[3] = &unk_2782F42B0;
  v11 = v6;
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __76__FAChecklistViewController__fetchScreenTimeModifiedDate_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _FALogSystem(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __76__FAChecklistViewController__fetchScreenTimeModifiedDate_completionHandler___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_fetchCommunicationLimitsModifiedDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  v7 = objc_alloc_init(getSTManagementStateClass());
  dsid = [dateCopy dsid];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__FAChecklistViewController__fetchCommunicationLimitsModifiedDate_completionHandler___block_invoke;
  v10[3] = &unk_2782F42D8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v7 lastCommunicationLimitsModifcationDateForDSID:dsid completionHandler:v10];
}

void __85__FAChecklistViewController__fetchCommunicationLimitsModifiedDate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__FAChecklistViewController__fetchCommunicationLimitsModifiedDate_completionHandler___block_invoke_2;
  block[3] = &unk_2782F42B0;
  v11 = v6;
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __85__FAChecklistViewController__fetchCommunicationLimitsModifiedDate_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _FALogSystem(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __85__FAChecklistViewController__fetchCommunicationLimitsModifiedDate_completionHandler___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (id)_childContactsRecord:(id)record
{
  v14[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBDAB8] storeForFamilyMember:record];
  v4 = *MEMORY[0x277CBCFF8];
  v14[0] = *MEMORY[0x277CBD000];
  v14[1] = v4;
  v5 = *MEMORY[0x277CBCFC0];
  v14[2] = *MEMORY[0x277CBD098];
  v14[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  v7 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v8 = [v6 arrayByAddingObject:v7];

  v9 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v8];
  v13 = 0;
  v10 = [v3 executeFetchRequest:v9 error:&v13];
  value = [v10 value];

  return value;
}

- (int)_contactsStatusForChild:(id)child
{
  v3 = [MEMORY[0x277CBDAB8] storeForFamilyMember:child];
  v4 = objc_alloc(MEMORY[0x277CBDA70]);
  v5 = [v4 initWithKeysToFetch:MEMORY[0x277CBEBF8]];
  v22 = 0;
  v6 = [v3 contactCountForFetchRequest:v5 error:&v22];
  v7 = v22;
  unsignedIntValue = [v6 unsignedIntValue];
  v9 = unsignedIntValue != 0;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = unsignedIntValue == 0;
  }

  if (v10)
  {
    [v5 setShouldFailIfAccountNotYetSynced:1];
    v21 = 0;
    v11 = [v3 contactCountForFetchRequest:v5 error:&v21];
    v7 = v21;

    unsignedIntValue2 = [v11 unsignedIntValue];
    v13 = unsignedIntValue2;
    v9 = unsignedIntValue2 != 0;
    v14 = _FALogSystem(unsignedIntValue2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(FAChecklistViewController *)v13 != 0 _contactsStatusForChild:v7, v14];
    }

    v6 = v11;
  }

  if (v7 || !v9)
  {
    if (v7 == 0 && !v9)
    {
      v15 = 4;
      goto LABEL_23;
    }

    domain = [v7 domain];
    if ([domain isEqual:*MEMORY[0x277CBD198]])
    {
      code = [v7 code];

      if (code == 1007)
      {
        v19 = _FALogSystem(v18);
        v15 = 2;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [FAChecklistViewController _contactsStatusForChild:v19];
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
    }

    v19 = _FALogSystem(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FAChecklistViewController _contactsStatusForChild:];
    }

    v15 = 3;
    goto LABEL_22;
  }

  v15 = 5;
LABEL_23:

  return v15;
}

- (void)_fetchPresetsForChild:(id)child andCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = MEMORY[0x277D08328];
  childCopy = child;
  v8 = [[v6 alloc] initWithFamilyMemberAltDSID:childCopy];

  fetchPresets = [v8 fetchPresets];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__FAChecklistViewController__fetchPresetsForChild_andCompletionHandler___block_invoke;
  v11[3] = &unk_2782F4300;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [fetchPresets onComplete:v11];
}

void __72__FAChecklistViewController__fetchPresetsForChild_andCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__FAChecklistViewController__fetchPresetsForChild_andCompletionHandler___block_invoke_2;
  block[3] = &unk_2782F42B0;
  v11 = v6;
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __72__FAChecklistViewController__fetchPresetsForChild_andCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _FALogSystem(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __72__FAChecklistViewController__fetchPresetsForChild_andCompletionHandler___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_manageChildContactsWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[_TtC14FamilyCircleUI24FamilyChecklistAnalytics shared];
  [v5 sendCommLimitsAnalyticsEvent];

  v6 = [tappedCopy propertyForKey:@"childDsidKey"];

  v8 = [FAScreenTimeCommunicationLimitsViewControllerProvider communicationLimitsViewControllerForDSID:v6];

  navigationController = [(FAChecklistViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];
}

- (void)_shareMyLocationButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[_TtC14FamilyCircleUI24FamilyChecklistAnalytics shared];
  [v5 sendLocationSharingAnalyticsEvent];

  locationViewModel = self->_locationViewModel;
  profilePictureStore = [(FAChecklistViewController *)self profilePictureStore];
  v8 = [_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider getLocationViewControllerWithViewModel:locationViewModel pictureStore:profilePictureStore hackfromObjC:1];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"LOCATION" value:&stru_282D9AA68 table:@"Localizable"];
  navigationItem = [v8 navigationItem];
  [navigationItem setTitle:v10];

  navigationItem2 = [v8 navigationItem];
  [navigationItem2 setStyle:0];

  v13 = [[FACircleContext alloc] initWithEventType:@"FACircleEventTypeSharedService"];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = objc_alloc_init(FACircleStateController);
  v14 = MEMORY[0x277CBEBC0];
  checklistStore = [(FAChecklistViewController *)self checklistStore];
  locationSharedService = [checklistStore locationSharedService];
  actionURLString = [locationSharedService actionURLString];
  v18 = [v14 URLWithString:actionURLString];

  [v24[5] setPresenter:self];
  [v24[5] setModalPresentationStyle:-2];
  familyCircle = [(FAChecklistStore *)self->_checklistStore familyCircle];
  LODWORD(locationSharedService) = [familyCircle showLocationSplashScreen];

  if (locationSharedService)
  {
    [(FACircleContext *)v13 setUrlForContext:v18];
    v20 = v24[5];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __61__FAChecklistViewController__shareMyLocationButtonWasTapped___block_invoke;
    v22[3] = &unk_2782F4328;
    v22[4] = &v23;
    [v20 performWithContext:v13 completion:v22];
  }

  else
  {
    navigationController = [(FAChecklistViewController *)self navigationController];
    [navigationController pushViewController:v8 animated:1];
  }

  _Block_object_dispose(&v23, 8);
}

void __61__FAChecklistViewController__shareMyLocationButtonWasTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = [v3 loadSuccess];
  if ((v6 & 1) == 0)
  {
    v7 = _FALogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__FAChecklistViewController__shareMyLocationButtonWasTapped___block_invoke_cold_1(v3);
    }
  }
}

- (void)_updateMedicalIDButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[_TtC14FamilyCircleUI24FamilyChecklistAnalytics shared];
  [v5 sendEmergencyContactsAnalyticsEvent];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v6 = getMIUIDisplayConfigurationClass_softClass_0;
  v24 = getMIUIDisplayConfigurationClass_softClass_0;
  if (!getMIUIDisplayConfigurationClass_softClass_0)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __getMIUIDisplayConfigurationClass_block_invoke_0;
    v19 = &unk_2782F2988;
    v20 = &v21;
    __getMIUIDisplayConfigurationClass_block_invoke_0(&v16);
    v6 = v22[3];
  }

  v7 = v6;
  _Block_object_dispose(&v21, 8);
  standardConfiguration = [v6 standardConfiguration];
  [standardConfiguration setIsDeletionAvailable:0];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v9 = getMIUIMedicalIDViewControllerClass_softClass_0;
  v24 = getMIUIMedicalIDViewControllerClass_softClass_0;
  if (!getMIUIMedicalIDViewControllerClass_softClass_0)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __getMIUIMedicalIDViewControllerClass_block_invoke_0;
    v19 = &unk_2782F2988;
    v20 = &v21;
    __getMIUIMedicalIDViewControllerClass_block_invoke_0(&v16);
    v9 = v22[3];
  }

  v10 = v9;
  _Block_object_dispose(&v21, 8);
  v11 = [[v9 alloc] initWithHealthStore:self->_healthStore medicalIDData:self->_medicalIDData displayConfiguration:standardConfiguration];
  medicalIDViewController = self->_medicalIDViewController;
  self->_medicalIDViewController = v11;

  v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_medicalIDViewController];
  [v13 setModalInPresentation:1];
  v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__dismissMedicalID];
  navigationItem = [(MIUIMedicalIDViewController *)self->_medicalIDViewController navigationItem];
  [navigationItem setRightBarButtonItem:v14];

  [(FAChecklistViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (void)_reviewPresetsWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[_TtC14FamilyCircleUI24FamilyChecklistAnalytics shared];
  [v5 sendChildSettingsAnalyticsEvent];

  v6 = [[FACircleContext alloc] initWithEventType:@"FACircleEventTypeFamilyRepair"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = objc_alloc_init(FACircleStateController);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v13[5] setPresenter:self];
  [v13[5] setModalPresentationStyle:-2];
  v8 = [tappedCopy propertyForKey:@"childDsidKey"];
  [v7 setObject:v8 forKeyedSubscript:@"memberId"];

  v9 = [tappedCopy propertyForKey:@"childAltDsidKey"];
  [v7 setObject:v9 forKeyedSubscript:@"altDSID"];

  [v7 setObject:@"FamilyChecklist" forKeyedSubscript:@"requester"];
  if ([v7 count])
  {
    [(FACircleContext *)v6 setAdditionalParameters:v7];
  }

  v10 = v13[5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__FAChecklistViewController__reviewPresetsWasTapped___block_invoke;
  v11[3] = &unk_2782F4198;
  v11[4] = self;
  v11[5] = &v12;
  [v10 performWithContext:v6 completion:v11];

  _Block_object_dispose(&v12, 8);
}

void __53__FAChecklistViewController__reviewPresetsWasTapped___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = [v3 loadSuccess];
  if (v6)
  {
    v7 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__FAChecklistViewController__reviewPresetsWasTapped___block_invoke_695;
    v10[3] = &unk_2782F29E8;
    v10[4] = v7;
    [v7 _updateScreenTimeSpecifierThen:v10];
  }

  else
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 error];
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Failed to fetch family repair flow %@", buf, 0xCu);
    }
  }
}

uint64_t __53__FAChecklistViewController__reviewPresetsWasTapped___block_invoke_695(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__FAChecklistViewController__reviewPresetsWasTapped___block_invoke_2;
  v4[3] = &unk_2782F29E8;
  v4[4] = v2;
  return [v2 _updateCommunicationLimitsSpecifierThen:v4];
}

void __53__FAChecklistViewController__reviewPresetsWasTapped___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) checklistStore];
  [v1 notifyObservable];
}

- (void)_setupCustodianTapped:(id)tapped
{
  v4 = +[_TtC14FamilyCircleUI24FamilyChecklistAnalytics shared];
  [v4 sendRecoveryContactsAnalyticsEvent];

  v5 = [objc_alloc(MEMORY[0x277CECA10]) initWithAccountManager:self->_accountManager];
  custodianSetupFlowController = self->_custodianSetupFlowController;
  self->_custodianSetupFlowController = v5;

  [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController setDelegate:self];
  [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController start];
  navigationController = [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController navigationController];
  [(FAChecklistViewController *)self presentViewController:navigationController animated:1 completion:0];
}

- (void)_setupIcloudPlusWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[_TtC14FamilyCircleUI24FamilyChecklistAnalytics shared];
  [v5 sendIcloudPlusSharingAnalyticsEvent];

  checklistStore = [(FAChecklistViewController *)self checklistStore];
  icloudPlusUrl = [checklistStore icloudPlusUrl];

  if (icloudPlusUrl)
  {
    identifier = [tappedCopy identifier];
    [(FACheckListHostControllerProtocol *)self->_checklistHostController setActiveSpecifierID:identifier];

    v9 = [[FACircleContext alloc] initWithEventType:@"FACircleEventTypeSharedService"];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__6;
    v20 = __Block_byref_object_dispose__6;
    v21 = objc_alloc_init(FACircleStateController);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v10 setObject:@"FamilyChecklist" forKeyedSubscript:@"requester"];
    if ([v10 count])
    {
      [(FACircleContext *)v9 setAdditionalParameters:v10];
    }

    checklistStore2 = [(FAChecklistViewController *)self checklistStore];
    icloudPlusUrl2 = [checklistStore2 icloudPlusUrl];
    [(FACircleContext *)v9 setUrlForContext:icloudPlusUrl2];

    navigationController = [(FAChecklistViewController *)self navigationController];
    [v17[5] setPresenter:navigationController];

    [v17[5] setModalPresentationStyle:-2];
    v14 = v17[5];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__FAChecklistViewController__setupIcloudPlusWasTapped___block_invoke;
    v15[3] = &unk_2782F4198;
    v15[4] = self;
    v15[5] = &v16;
    [v14 performWithContext:v9 completion:v15];

    _Block_object_dispose(&v16, 8);
  }
}

void __55__FAChecklistViewController__setupIcloudPlusWasTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  [*(*(a1 + 32) + 1232) setActiveSpecifierID:0];
  v6 = [v3 loadSuccess];
  if (v6)
  {
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__FAChecklistViewController__setupIcloudPlusWasTapped___block_invoke_697;
    v9[3] = &unk_2782F29E8;
    v9[4] = v7;
    [v7 _updateICloudPlusSpecifierThen:v9];
  }

  else
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__FAChecklistViewController__setupIcloudPlusWasTapped___block_invoke_cold_1(v3);
    }
  }
}

void __55__FAChecklistViewController__setupIcloudPlusWasTapped___block_invoke_697(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = [*(a1 + 32) checklistStore];
  [v2 notifyObservable];
}

- (void)_dismissMedicalID
{
  navigationController = [(MIUIMedicalIDViewController *)self->_medicalIDViewController navigationController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__FAChecklistViewController__dismissMedicalID__block_invoke;
  v4[3] = &unk_2782F29E8;
  v4[4] = self;
  [navigationController dismissViewControllerAnimated:1 completion:v4];
}

uint64_t __46__FAChecklistViewController__dismissMedicalID__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__FAChecklistViewController__dismissMedicalID__block_invoke_2;
  v3[3] = &unk_2782F29E8;
  v3[4] = v1;
  return [v1 _updateMedicalSpecifierThen:v3];
}

void __46__FAChecklistViewController__dismissMedicalID__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = [*(a1 + 32) checklistStore];
  [v2 notifyObservable];
}

- (void)emergencyContactFlow:(id)flow didSelectContact:(id)contact
{
  v12[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  if (([getSOSUtilitiesClass_0() isAllowedToMessageSOSContacts] & 1) == 0)
  {
    [getSOSUtilitiesClass_0() setAllowedToMessageSOSContacts:1];
  }

  emergencyContacts = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
  if (emergencyContacts)
  {
    emergencyContacts2 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
    v8 = [emergencyContacts2 arrayByAddingObject:contactCopy];
  }

  else
  {
    v12[0] = contactCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  [(_HKMedicalIDData *)self->_medicalIDData setEmergencyContacts:v8];
  medicalIDStore = self->_medicalIDStore;
  medicalIDData = self->_medicalIDData;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__FAChecklistViewController_emergencyContactFlow_didSelectContact___block_invoke;
  v11[3] = &unk_2782F3568;
  v11[4] = self;
  [(HKMedicalIDStore *)medicalIDStore updateMedicalIDData:medicalIDData completion:v11];
}

void __67__FAChecklistViewController_emergencyContactFlow_didSelectContact___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = _FALogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__FAChecklistViewController_emergencyContactFlow_didSelectContact___block_invoke_cold_1();
    }
  }

  if (a2)
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__FAChecklistViewController_emergencyContactFlow_didSelectContact___block_invoke_698;
    v9[3] = &unk_2782F29E8;
    v9[4] = v8;
    [v8 _updateMedicalSpecifierThen:v9];
  }
}

void __67__FAChecklistViewController_emergencyContactFlow_didSelectContact___block_invoke_698(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = [*(a1 + 32) checklistStore];
  [v2 notifyObservable];
}

- (void)custodianSetupFlowControllerDidFinish:(id)finish
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__FAChecklistViewController_custodianSetupFlowControllerDidFinish___block_invoke;
  v5[3] = &unk_2782F29E8;
  v5[4] = self;
  finishCopy = finish;
  [(FAChecklistViewController *)self _updateCustodianSpecifierThen:v5];
  [finishCopy dismissViewControllerAnimated:1 completion:&__block_literal_global_701];
}

void __67__FAChecklistViewController_custodianSetupFlowControllerDidFinish___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__FAChecklistViewController_custodianSetupFlowControllerDidFinish___block_invoke_2;
  block[3] = &unk_2782F29E8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__FAChecklistViewController_custodianSetupFlowControllerDidFinish___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = [*(a1 + 32) checklistStore];
  [v2 notifyObservable];
}

- (void)reloadSpecifiers
{
  specifiers = [(FAChecklistViewController *)self specifiers];
  [(FACheckListHostControllerProtocol *)self->_checklistHostController setSpecifiers:specifiers];
}

- (FAChecklistViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __76__FAChecklistViewController__fetchScreenTimeModifiedDate_completionHandler___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_4(&dword_21BB35000, a2, a3, "Failed to retrieve Screen Time state for last modified date: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __85__FAChecklistViewController__fetchCommunicationLimitsModifiedDate_completionHandler___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_4(&dword_21BB35000, a2, a3, "Failed to retrieve Screen Time state for communication limits: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_contactsStatusForChild:(os_log_t)log .cold.1(char a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_debug_impl(&dword_21BB35000, log, OS_LOG_TYPE_DEBUG, "RETRIED with shouldFailIfAccountNotYetSynced childHasContacts %i,error %@", v3, 0x12u);
}

- (void)_contactsStatusForChild:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_21BB35000, v1, OS_LOG_TYPE_ERROR, "contactCountForFetchRequest: %@ Error: %@", v2, 0x16u);
}

void __72__FAChecklistViewController__fetchPresetsForChild_andCompletionHandler___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_4(&dword_21BB35000, a2, a3, "Failed to fetch age appropriate preset for the child with error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __61__FAChecklistViewController__shareMyLocationButtonWasTapped___block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_21BB35000, v2, v3, "Failed to fetch location flow %@", v4, v5, v6, v7);
}

void __55__FAChecklistViewController__setupIcloudPlusWasTapped___block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_21BB35000, v3, v4, "Failed to fetch iCloud+ view %@", v5, v6, v7, v8);
}

@end