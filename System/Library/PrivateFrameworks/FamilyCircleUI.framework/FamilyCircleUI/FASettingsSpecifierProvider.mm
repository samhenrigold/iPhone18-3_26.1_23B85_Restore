@interface FASettingsSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)_isEnabled;
- (BOOL)handleURL:(id)l;
- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response;
- (BOOL)shouldUseModernNavigationForPresenter:(id)presenter;
- (FASettingsSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter;
- (NSArray)specifiers;
- (id)_acuPresenter;
- (id)_appleAccount;
- (id)_configureContextWithType:(id)type resourceDictionary:(id)dictionary;
- (id)_familyBaseSpecifierWithState:(unint64_t)state;
- (id)_familySpecifier;
- (id)_grandSlamSigner;
- (id)_invitationsCellSpecifier;
- (id)_requestConfigurator;
- (id)_valueForFamilySpecifier:(id)specifier;
- (id)getFamilyStatusText:(int64_t)text pendingMemberCount:(int64_t)count me:(id)me;
- (unint64_t)_familyState;
- (void)_clearFamilyState;
- (void)_handleFamilyDetailsResponse:(id)response error:(id)error completion:(id)completion;
- (void)_handleFamilyEligibilityResponse:(id)response completion:(id)completion;
- (void)_handleObjectModelChangeForController:(id)controller objectModel:(id)model isModal:(BOOL)modal;
- (void)_handleShowFamilySettingsURL:(id)l;
- (void)_handleShowFamilySettingsV2WithResourceDictionary:(id)dictionary;
- (void)_handleShowInviteActionURL:(id)l isChildTransfer:(BOOL)transfer;
- (void)_handleShowInvitesActionURL:(id)l;
- (void)_handleStartFamilySetupActionURL:(id)l;
- (void)_initiateFamilyWithResources:(id)resources;
- (void)_loadFamilyDetailsWithCompletion:(id)completion;
- (void)_loadFamilyEligibilityWithCompletion:(id)completion;
- (void)_pendingInvitationsSpecifierWasTapped:(id)tapped;
- (void)_presentFlowWithEventType:(id)type completion:(id)completion;
- (void)_presentPendingInvitesRemoteUI;
- (void)_presentViewController:(id)controller;
- (void)_reloadFamily;
- (void)_reloadFamilySpecifiersAnimated:(BOOL)animated;
- (void)_setUpFamilySpecifierWasTapped:(id)tapped;
- (void)_showUnderageAlertWithEligibilityResponse:(id)response;
- (void)_viewFamilySpecifierWasTapped;
- (void)_viewFamilyWithResourceDictionary:(id)dictionary;
- (void)dealloc;
- (void)familySettingsViewController2StopFamilySharing:(id)sharing;
- (void)familySetupViewController:(id)controller didCompleteWithSuccess:(BOOL)success;
- (void)presentFamilySettingsFromPresenter:(id)presenter;
- (void)remoteUIController:(id)controller didRefreshObjectModel:(id)model;
- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)setSpecifiers:(id)specifiers;
@end

@implementation FASettingsSpecifierProvider

- (FASettingsSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v9 = [(FASettingsSpecifierProvider *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_presenter, presenterCopy);
    objc_storeStrong(&v10->_accountManager, manager);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingFamilyDetailsCompletionBlocks = v10->_pendingFamilyDetailsCompletionBlocks;
    v10->_pendingFamilyDetailsCompletionBlocks = v11;

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__handleFamilyChanged_ name:*MEMORY[0x277D080E0] object:0];

    v14 = objc_alloc_init(MEMORY[0x277CCABD8]);
    networkActivityQueue = v10->_networkActivityQueue;
    v10->_networkActivityQueue = v14;

    v16 = v10->_networkActivityQueue;
    v17 = dispatch_get_global_queue(33, 0);
    [(NSOperationQueue *)v16 setUnderlyingQueue:v17];
  }

  return v10;
}

- (id)_appleAccount
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (id)_grandSlamSigner
{
  grandSlamSigner = self->_grandSlamSigner;
  if (!grandSlamSigner)
  {
    v4 = [(AIDAAccountManager *)self->_accountManager aidaAccountForService:*MEMORY[0x277CED1A0]];
    v5 = objc_alloc(MEMORY[0x277CEC808]);
    accountStore = [(AIDAAccountManager *)self->_accountManager accountStore];
    v7 = [v5 initWithAccountStore:accountStore grandSlamAccount:v4 appTokenID:*MEMORY[0x277CEC6F0]];
    v8 = self->_grandSlamSigner;
    self->_grandSlamSigner = v7;

    grandSlamSigner = self->_grandSlamSigner;
  }

  return grandSlamSigner;
}

- (id)_requestConfigurator
{
  requestConfigurator = self->_requestConfigurator;
  if (!requestConfigurator)
  {
    v4 = objc_alloc(MEMORY[0x277D082E8]);
    _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];
    v6 = [v4 initWithAccount:_appleAccount];
    v7 = self->_requestConfigurator;
    self->_requestConfigurator = v6;

    requestConfigurator = self->_requestConfigurator;
  }

  return requestConfigurator;
}

- (BOOL)_isEnabled
{
  _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];
  v3 = _appleAccount;
  if (_appleAccount)
  {
    if ([_appleAccount aa_needsToVerifyTerms])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      aa_suspensionInfo = [v3 aa_suspensionInfo];
      v4 = [aa_suspensionInfo isFamilySuspended] ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)setSpecifiers:(id)specifiers
{
  objc_storeStrong(&self->_specifiers, specifiers);
  if (!self->_specifiers && self->_didFailToGetFamilyDetails)
  {
    self->_didFailToGetFamilyDetails = 0;
  }
}

- (NSArray)specifiers
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  isMultiUserMode = [MEMORY[0x277CEC7B8] isMultiUserMode];
  if (isMultiUserMode)
  {
    _familySpecifier = _FALogSystem(isMultiUserMode);
    if (!os_log_type_enabled(_familySpecifier, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v6 = "Device is in multi-user mode, not showing Family Sharing specifiers.";
LABEL_12:
    _os_log_impl(&dword_21BB35000, _familySpecifier, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    goto LABEL_13;
  }

  _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];

  if (!_appleAccount)
  {
    _familySpecifier = _FALogSystem(v8);
    if (!os_log_type_enabled(_familySpecifier, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v6 = "User not signed in to AppleAccount, not showing family sharing specifiers.";
    goto LABEL_12;
  }

  _familySpecifier = [(FASettingsSpecifierProvider *)self _familySpecifier];
  if (_familySpecifier)
  {
    [v3 addObject:_familySpecifier];
  }

  _invitationsCellSpecifier = [(FASettingsSpecifierProvider *)self _invitationsCellSpecifier];
  if (_invitationsCellSpecifier)
  {
    [v3 insertObject:_invitationsCellSpecifier atIndex:0];
  }

LABEL_13:
  if ([v3 count] >= 2)
  {
    v10 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"Family"];
    [v3 insertObject:v10 atIndex:0];
  }

  if (![(FASettingsSpecifierProvider *)self _isEnabled])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v3;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      v15 = *MEMORY[0x277D3FF38];
      v16 = MEMORY[0x277CBEC28];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v23 + 1) + 8 * i) setProperty:v16 forKey:{v15, v23}];
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
    }
  }

  v18 = [v3 copy];
  specifiers = self->_specifiers;
  self->_specifiers = v18;

  v20 = self->_specifiers;
  v21 = v20;

  return v20;
}

- (unint64_t)_familyState
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_didFailToGetFamilyDetails)
  {
    v2 = 4;
    goto LABEL_10;
  }

  if (self->_isLoadingFamilyDetails)
  {
    v2 = 3;
    goto LABEL_10;
  }

  pendingMembers = [(FAFamilyCircle *)self->_familyCircle pendingMembers];
  if ([pendingMembers count])
  {

LABEL_8:
    v2 = 1;
LABEL_9:
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setInteger:v2 forKey:@"_FAFamilyCachedFamilyStateKey"];

    goto LABEL_10;
  }

  members = [(FAFamilyCircle *)self->_familyCircle members];
  v6 = [members count];

  if (v6)
  {
    goto LABEL_8;
  }

  if (self->_familyEligibilityStatus)
  {
    v2 = 2;
    goto LABEL_9;
  }

  v2 = 0;
LABEL_10:
  v8 = _FALogSystem(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v2;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Returning FAFamilySpecifierState - %lu", &v10, 0xCu);
  }

  return v2;
}

- (id)_invitationsCellSpecifier
{
  if (self->_invitationSummary || self->_isHandlingURLForInvite)
  {
    invitationsCellSpecifier = self->_invitationsCellSpecifier;
    if (!invitationsCellSpecifier)
    {
      v4 = MEMORY[0x277D3FAD8];
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [v5 localizedStringForKey:@"FAMILY_INVITATIONS_CELL" value:&stru_282D9AA68 table:@"Localizable"];
      v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:sel__valueForInvitiationsSpecifier_ detail:0 cell:2 edit:0];
      v8 = self->_invitationsCellSpecifier;
      self->_invitationsCellSpecifier = v7;

      [(PSSpecifier *)self->_invitationsCellSpecifier setControllerLoadAction:sel__pendingInvitationsSpecifierWasTapped_];
      [(PSSpecifier *)self->_invitationsCellSpecifier setIdentifier:@"INVITATIONS"];
      invitationsCellSpecifier = self->_invitationsCellSpecifier;
    }

    v9 = invitationsCellSpecifier;
  }

  else
  {
    v11 = _FALogSystem(self);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v11, OS_LOG_TYPE_DEFAULT, "No invitations returning nil invitations specfier", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)_familySpecifier
{
  v20 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults integerForKey:@"_FAFamilyCachedFamilyStateKey"];

  v6 = v4 && !self->_familyCircle && !self->_didFailToGetFamilyDetails;
  v7 = _FALogSystem(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v17 = v6;
    v18 = 2048;
    v19 = v4;
    _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Using cache - %d with state - %lu", buf, 0x12u);
  }

  if (self->_familyCircle || self->_didFailToGetFamilyDetails)
  {
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  _familyState = [(FASettingsSpecifierProvider *)self _loadFamilyDetailsWithCompletion:0];
  if (!v6)
  {
LABEL_10:
    _familyState = [(FASettingsSpecifierProvider *)self _familyState];
    v4 = _familyState;
  }

LABEL_11:
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v9 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
      goto LABEL_24;
    }

    if (v4 == 4)
    {
      v11 = MEMORY[0x277D3FAD8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"FAILED_TO_LOAD_FAMILY_STATUS" value:&stru_282D9AA68 table:@"Localizable"];
      v9 = [v11 preferenceSpecifierNamed:v13 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

      [v9 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
      goto LABEL_24;
    }
  }

  else
  {
    if (v4 == 1)
    {
      v9 = [(FASettingsSpecifierProvider *)self _familyBaseSpecifierWithState:1];
      [v9 setControllerLoadAction:sel__viewFamilySpecifierWasTapped];
      v10 = @"Family";
      goto LABEL_22;
    }

    if (v4 == 2)
    {
      v9 = [(FASettingsSpecifierProvider *)self _familyBaseSpecifierWithState:2];
      [v9 setButtonAction:sel__setUpFamilySpecifierWasTapped_];
      v10 = @"INITIATE_FAMILY";
LABEL_22:
      [v9 setIdentifier:v10];
      goto LABEL_24;
    }
  }

  v14 = _FALogSystem(_familyState);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v14, OS_LOG_TYPE_DEFAULT, "Invalid family state, returning nil specifier", buf, 2u);
  }

  v9 = 0;
LABEL_24:

  return v9;
}

- (id)_familyBaseSpecifierWithState:(unint64_t)state
{
  v5 = MEMORY[0x277D3FAD8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FAMILY_CELL_LABEL" value:&stru_282D9AA68 table:@"Localizable"];
  v8 = [v5 preferenceSpecifierNamed:v7 target:self set:0 get:sel__valueForFamilySpecifier_ detail:0 cell:2 edit:0];

  [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
  [v8 setObject:@"com.apple.application-icon.family" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  [v8 setProperty:v9 forKey:@"_FAFamilyCachedFamilyStateKey"];

  return v8;
}

- (void)_loadFamilyDetailsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];
  if (_appleAccount)
  {
    if (completionCopy)
    {
      pendingFamilyDetailsCompletionBlocks = self->_pendingFamilyDetailsCompletionBlocks;
      v7 = _Block_copy(completionCopy);
      [(NSMutableArray *)pendingFamilyDetailsCompletionBlocks addObject:v7];
    }

    if (!self->_isLoadingFamilyDetails)
    {
      self->_isLoadingFamilyDetails = 1;
      v8 = objc_opt_new();
      [v8 setCachePolicy:{-[FASettingsSpecifierProvider cachePolicy](self, "cachePolicy")}];
      [v8 setQualityOfService:33];
      v9 = _FALogSystem([v8 setPromptUserToResolveAuthenticatonFailure:1]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "Starting family request.", buf, 2u);
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __64__FASettingsSpecifierProvider__loadFamilyDetailsWithCompletion___block_invoke;
      v11[3] = &unk_2782F3A88;
      v11[4] = self;
      [v8 startRequestWithCompletionHandler:v11];
    }
  }

  else
  {
    v10 = _FALogSystem(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "Attempted to load family details without an Apple Account, bailing!", buf, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __64__FASettingsSpecifierProvider__loadFamilyDetailsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _FALogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "FACacheImageMarqueeOperationWrapper op being fired off", buf, 2u);
  }

  v8 = [[FACacheImageMarqueeOperationWrapper alloc] initWithFamilyCircle:v5];
  [(FACacheImageMarqueeOperationWrapper *)v8 generateMarqueeWith:1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FASettingsSpecifierProvider__loadFamilyDetailsWithCompletion___block_invoke_88;
  block[3] = &unk_2782F3190;
  block[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __64__FASettingsSpecifierProvider__loadFamilyDetailsWithCompletion___block_invoke_88(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__FASettingsSpecifierProvider__loadFamilyDetailsWithCompletion___block_invoke_2;
  v5[3] = &unk_2782F3A60;
  v5[4] = v2;
  return [v2 _handleFamilyDetailsResponse:v1 error:v3 completion:v5];
}

_BYTE *__64__FASettingsSpecifierProvider__loadFamilyDetailsWithCompletion___block_invoke_2(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(*(a1 + 32) + 64);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v11 + 1) + 8 * v8) + 16))(*(*(&v11 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 64) removeAllObjects];
  result = *(a1 + 32);
  if (result[160] == 1 && a2 != 0)
  {
    [result _setUpFamilySpecifierWasTapped:0];
    result = *(a1 + 32);
  }

  result[160] = 0;
  return result;
}

- (void)_handleFamilyDetailsResponse:(id)response error:(id)error completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  completionCopy = completion;
  v12 = completionCopy;
  self->_isLoadingFamilyDetails = 0;
  if (errorCopy)
  {
    self->_didFailToGetFamilyDetails = 1;
    v13 = _FALogSystem(completionCopy);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = errorCopy;
      _os_log_impl(&dword_21BB35000, v13, OS_LOG_TYPE_DEFAULT, "Failed to get family details: %@", buf, 0xCu);
    }

    [(FASettingsSpecifierProvider *)self reloadSpecifiers];
    v12[2](v12, 0);
  }

  else
  {
    objc_storeStrong(&self->_familyCircle, response);
    v15 = _FALogSystem(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      _serverResponse = [(FAFamilyCircle *)self->_familyCircle _serverResponse];
      *buf = 138412290;
      v37 = _serverResponse;
      _os_log_impl(&dword_21BB35000, v15, OS_LOG_TYPE_DEFAULT, "Family details response: %@", buf, 0xCu);
    }

    invites = [(FAFamilyCircle *)self->_familyCircle invites];
    v18 = [invites count];

    if (v18 >= 1 && [(FAFamilyCircle *)self->_familyCircle shouldShowInvites])
    {
      v19 = MEMORY[0x277CCABB8];
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
      v21 = [v19 localizedStringFromNumber:v20 numberStyle:0];
      invitationSummary = self->_invitationSummary;
      self->_invitationSummary = v21;

      invites2 = [(FAFamilyCircle *)self->_familyCircle invites];
      v24 = [invites2 mutableCopy];
      pendingInvites = self->_pendingInvites;
      self->_pendingInvites = v24;
    }

    members = [(FAFamilyCircle *)self->_familyCircle members];
    v27 = [members count];

    pendingMembers = [(FAFamilyCircle *)self->_familyCircle pendingMembers];
    v29 = [pendingMembers count];

    if (v29 | v27)
    {
      v31 = [(FAFamilyCircle *)self->_familyCircle me];
      v32 = [(FASettingsSpecifierProvider *)self getFamilyStatusText:v27 pendingMemberCount:v29 me:v31];
      familyStatusSummary = self->_familyStatusSummary;
      self->_familyStatusSummary = v32;

      [(FASettingsSpecifierProvider *)self reloadSpecifiers];
      v12[2](v12, 1);
    }

    else
    {
      v30 = self->_familyStatusSummary;
      self->_familyStatusSummary = 0;

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __77__FASettingsSpecifierProvider__handleFamilyDetailsResponse_error_completion___block_invoke;
      v34[3] = &unk_2782F3AB0;
      v34[4] = self;
      v35 = v12;
      [(FASettingsSpecifierProvider *)self _loadFamilyEligibilityWithCompletion:v34];
    }
  }
}

uint64_t __77__FASettingsSpecifierProvider__handleFamilyDetailsResponse_error_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)getFamilyStatusText:(int64_t)text pendingMemberCount:(int64_t)count me:(id)me
{
  v23 = *MEMORY[0x277D85DE8];
  meCopy = me;
  if ([meCopy hasLinkediTunesAccount])
  {
    if (text <= 1)
    {
      if (count < 1)
      {
        text = 0;
        goto LABEL_15;
      }

      if (count == 1)
      {
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        text = [v10 localizedStringForKey:@"FAMILY_SENT_INVITE_ONE" value:&stru_282D9AA68 table:@"Localizable"];
LABEL_14:

        goto LABEL_15;
      }

      v16 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"FAMILY_SENT_INVITES_MANY" value:&stru_282D9AA68 table:@"Localizable"];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:count];
      text = [v16 stringWithFormat:v11, v17];
    }

    else
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"FAMILY_MEMBERS_IN_FAMILY" value:&stru_282D9AA68 table:@"Localizable"];
      text = [v9 localizedStringWithFormat:v11, text];
    }

    goto LABEL_14;
  }

  text = [meCopy iTunesNotLinkedMessage];
  if (![text length])
  {
    v13 = _FALogSystem(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      appleID = [meCopy appleID];
      _serverResponse = [(FAFamilyCircle *)self->_familyCircle _serverResponse];
      *buf = 138412546;
      v20 = appleID;
      v21 = 2112;
      v22 = _serverResponse;
      _os_log_impl(&dword_21BB35000, v13, OS_LOG_TYPE_DEFAULT, "Member %@ is not sharing purchases but there is no iTunesNotLinkedMessage, response dictionary is %@", buf, 0x16u);
    }
  }

LABEL_15:

  return text;
}

- (void)_setUpFamilySpecifierWasTapped:(id)tapped
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = _FALogSystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    v10 = 138412290;
    v11 = WeakRetained;
    _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "Setup Family activated with presenter %@", &v10, 0xCu);
  }

  if (self->_familyEligibilityResponse)
  {
    familyEligibilityStatus = self->_familyEligibilityStatus;
    if (familyEligibilityStatus == 1)
    {
      v9 = _FALogSystem(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "Starting Family Setup Flow", &v10, 2u);
      }

      [(FASettingsSpecifierProvider *)self _initiateFamily];
    }

    else if (familyEligibilityStatus == 2)
    {
      [(FASettingsSpecifierProvider *)self _showUnderageAlertWithEligibilityResponse:?];
    }
  }

  else
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Error: The user tapped the Family setup specifier before we got a response from the server. We need to confirm eligibility prior.", &v10, 2u);
    }

    self->_delayedEnterInitiateFlow = 1;
  }
}

- (void)_reloadFamily
{
  [(FASettingsSpecifierProvider *)self _clearFamilyState];

  [(FASettingsSpecifierProvider *)self _reloadFamilySpecifiersAnimated:1];
}

- (void)_initiateFamilyWithResources:(id)resources
{
  resourcesCopy = resources;
  v5 = [(FASettingsSpecifierProvider *)self _configureContextWithType:@"FACircleEventTypeInitiate" resourceDictionary:resourcesCopy];
  context = self->_context;
  self->_context = v5;

  v7 = [(NSArray *)self->_specifiers specifierForID:@"INITIATE_FAMILY"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained specifierProvider:self willBeginLoadingSpecifier:v7];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v9 = [FACircleStateController alloc];
  v10 = objc_loadWeakRetained(&self->_presenter);
  v22 = [(FACircleStateController *)v9 initWithPresenter:v10];

  [v18[5] setPresentationType:2];
  v11 = v18[5];
  v12 = self->_context;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__FASettingsSpecifierProvider__initiateFamilyWithResources___block_invoke;
  v14[3] = &unk_2782F3AD8;
  v16 = &v17;
  v14[4] = self;
  v13 = v7;
  v15 = v13;
  [v11 performWithContext:v12 completion:v14];

  _Block_object_dispose(&v17, 8);
}

void __60__FASettingsSpecifierProvider__initiateFamilyWithResources___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__FASettingsSpecifierProvider__initiateFamilyWithResources___block_invoke_2;
  block[3] = &unk_2782F3190;
  v6 = a1[5];
  block[4] = a1[4];
  v9 = v6;
  v10 = v3;
  v7 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__60__FASettingsSpecifierProvider__initiateFamilyWithResources___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  [WeakRetained specifierProvider:*(a1 + 32) didFinishLoadingSpecifier:*(a1 + 40)];

  result = [*(a1 + 48) loadSuccess];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 _reloadFamily];
  }

  return result;
}

- (id)_configureContextWithType:(id)type resourceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  typeCopy = type;
  v7 = [[FACircleContext alloc] initWithEventType:typeCopy];

  [(FACircleContext *)v7 setClientName:@"Preferences"];
  if ([dictionaryCopy count])
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"clientAppContext"];

    if (v8)
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"clientAppContext"];
      [(FACircleContext *)v7 setClientName:v9];
    }
  }

  return v7;
}

- (void)_showUnderageAlertWithEligibilityResponse:(id)response
{
  responseCopy = response;
  v5 = _FALogSystem(responseCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "Error: showing underage alert.", buf, 2u);
  }

  underageEligibilityAlertTitle = [responseCopy underageEligibilityAlertTitle];
  underageEligibilityAlertMessage = [responseCopy underageEligibilityAlertMessage];

  if (underageEligibilityAlertTitle | underageEligibilityAlertMessage)
  {
    v10 = MEMORY[0x277D75110];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];
    v9 = [v10 alertWithTitle:underageEligibilityAlertTitle message:underageEligibilityAlertMessage buttonTitle:v12];

    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    [WeakRetained presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v9 = _FALogSystem(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "Server did not provide under alert title and message. Cannot show alert!", v14, 2u);
    }
  }
}

- (void)familySetupViewController:(id)controller didCompleteWithSuccess:(BOOL)success
{
  if (success)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __80__FASettingsSpecifierProvider_familySetupViewController_didCompleteWithSuccess___block_invoke;
    v5[3] = &unk_2782F3A60;
    v5[4] = self;
    [(FASettingsSpecifierProvider *)self _loadFamilyDetailsWithCompletion:v5];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }
}

void __80__FASettingsSpecifierProvider_familySetupViewController_didCompleteWithSuccess___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = *(a1 + 32);
  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    WeakRetained = objc_loadWeakRetained(v4 + 4);
    [WeakRetained dismissViewControllerAnimated:1 completion:0];

    v6 = *(a1 + 32);

    [v6 _viewFamilySpecifierWasTapped];
  }

  else
  {
    [v4 _viewFamilySpecifierWasTapped];
    v7 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_pendingInvitationsSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = tappedCopy;
  if (!self->_familyCircle)
  {
    v7 = _FALogSystem(tappedCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v8 = "Error: pending invites specifier cannot possibly be tapped when no family info is available!";
      v9 = &v11;
LABEL_8:
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (![(NSMutableArray *)self->_pendingInvites count])
  {
    v7 = _FALogSystem(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = "No invites to send to the Invitations VC.";
      v9 = &v10;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [(PSSpecifier *)self->_invitationsCellSpecifier setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  delegate = [(FASettingsSpecifierProvider *)self delegate];
  [delegate specifierProvider:self willBeginLoadingSpecifier:self->_invitationsCellSpecifier];

  [(FASettingsSpecifierProvider *)self _presentPendingInvitesRemoteUI];
LABEL_10:
}

- (void)_presentFlowWithEventType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v8 = completionCopy;
  if (typeCopy)
  {
    v9 = [[FACircleContext alloc] initWithEventType:typeCopy];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__2;
    v20 = __Block_byref_object_dispose__2;
    v10 = [FACircleStateController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    v21 = [(FACircleStateController *)v10 initWithPresenter:WeakRetained];

    v12 = v17[5];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__FASettingsSpecifierProvider__presentFlowWithEventType_completion___block_invoke;
    v13[3] = &unk_2782F3B00;
    v15 = &v16;
    v14 = v8;
    [v12 performWithContext:v9 completion:v13];

    _Block_object_dispose(&v16, 8);
LABEL_5:

    goto LABEL_6;
  }

  if (completionCopy)
  {
    v9 = [objc_alloc(MEMORY[0x277D08230]) initWithLoadSuccess:1 error:0 userInfo:0];
    (v8)[2](v8, v9);
    goto LABEL_5;
  }

LABEL_6:
}

void __68__FASettingsSpecifierProvider__presentFlowWithEventType_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

- (void)_presentPendingInvitesRemoteUI
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61__FASettingsSpecifierProvider__presentPendingInvitesRemoteUI__block_invoke;
  v2[3] = &unk_2782F3B28;
  v2[4] = self;
  [(FASettingsSpecifierProvider *)self _presentFlowWithEventType:@"FACircleEventTypeGetFamilyInvitationsUI" completion:v2];
}

void __61__FASettingsSpecifierProvider__presentPendingInvitesRemoteUI__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__FASettingsSpecifierProvider__presentPendingInvitesRemoteUI__block_invoke_2;
  block[3] = &unk_2782F29E8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __61__FASettingsSpecifierProvider__presentPendingInvitesRemoteUI__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _reloadFamily];
  [*(*(a1 + 32) + 48) setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  v2 = [*(a1 + 32) delegate];
  [v2 specifierProvider:*(a1 + 32) didFinishLoadingSpecifier:*(*(a1 + 32) + 48)];
}

- (id)_valueForFamilySpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"_FAFamilyCachedFamilyStateKey"];
  integerValue = [v4 integerValue];

  if (integerValue == 2)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SETUP_FAMILY" value:&stru_282D9AA68 table:@"Localizable"];
  }

  else
  {
    v7 = self->_familyStatusSummary;
  }

  return v7;
}

- (void)_viewFamilySpecifierWasTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v4 = [(FASettingsSpecifierProvider *)self shouldUseModernNavigationForPresenter:WeakRetained];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_presenter);
    [(FASettingsSpecifierProvider *)self presentFamilySettingsFromPresenter:v5];
  }

  else
  {
    [(FASettingsSpecifierProvider *)self _viewFamilyWithResourceDictionary:self->_cachedResourceDictionary];
  }

  cachedResourceDictionary = self->_cachedResourceDictionary;
  self->_cachedResourceDictionary = 0;
}

- (void)_viewFamilyWithResourceDictionary:(id)dictionary
{
  v36 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = _FALogSystem(dictionaryCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = dictionaryCopy;
    _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "_viewFamilyWithResourceDictionary: %@", buf, 0xCu);
  }

  v5 = [(NSArray *)self->_specifiers specifierForID:@"Family"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained specifierProvider:self didFinishLoadingSpecifier:v5];

  v7 = objc_loadWeakRetained(&self->_delegate);
  [v7 specifierProvider:self willBeginLoadingSpecifier:v5];

  if (!v5)
  {
    v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Family" target:0 set:0 get:0 detail:0 cell:13 edit:0];
    [v5 setIdentifier:@"Family"];
  }

  if (self->_familyCircle)
  {
    if (!self->_familyPictureStore)
    {
      v8 = [[FAProfilePictureStore alloc] initWithFamilyCircle:self->_familyCircle];
      familyPictureStore = self->_familyPictureStore;
      self->_familyPictureStore = v8;
    }

    v10 = [FAFamilySettingsMemberSpecifierProvider alloc];
    _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];
    v24 = [(FAFamilySettingsMemberSpecifierProvider *)v10 initWithAppleAccount:_appleAccount familyCircle:self->_familyCircle familyPictureStore:self->_familyPictureStore];

    v12 = [_TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2 alloc];
    _appleAccount2 = [(FASettingsSpecifierProvider *)self _appleAccount];
    _grandSlamSigner = [(FASettingsSpecifierProvider *)self _grandSlamSigner];
    familyCircle = self->_familyCircle;
    v16 = self->_familyPictureStore;
    accountManager = self->_accountManager;
    mEMORY[0x277D082D0] = [MEMORY[0x277D082D0] sharedInstance];
    v19 = [(FAFamilySettingsViewControllerV2 *)v12 initWithAppleAccount:_appleAccount2 grandSlamSigner:_grandSlamSigner familyCircle:familyCircle pictureStore:v16 accountManager:accountManager peopleDiscoveryService:mEMORY[0x277D082D0]];

    [(FAFamilySettingsViewControllerV2 *)v19 setDelegate:self];
    v20 = objc_loadWeakRetained(&self->_presenter);
    rootController = [v20 rootController];
    [(FARestorableViewController *)v19 setRootController:rootController];

    [(FARestorableViewController *)v19 setSpecifier:v5];
    objc_initWeak(buf, self);
    v22 = self->_familyPictureStore;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __65__FASettingsSpecifierProvider__viewFamilyWithResourceDictionary___block_invoke_3;
    v26[3] = &unk_2782F3B78;
    objc_copyWeak(&v31, buf);
    v23 = v19;
    v27 = v23;
    v28 = v5;
    selfCopy = self;
    v30 = dictionaryCopy;
    [(FAProfilePictureStore *)v22 fetchProfileImagesWithCompletion:v26];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  else
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __65__FASettingsSpecifierProvider__viewFamilyWithResourceDictionary___block_invoke;
    v32[3] = &unk_2782F3B50;
    v32[4] = self;
    v33 = dictionaryCopy;
    [(FASettingsSpecifierProvider *)self _loadFamilyDetailsWithCompletion:v32];
  }
}

void __65__FASettingsSpecifierProvider__viewFamilyWithResourceDictionary___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __65__FASettingsSpecifierProvider__viewFamilyWithResourceDictionary___block_invoke_2;
  v2[3] = &unk_2782F2AF8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __65__FASettingsSpecifierProvider__viewFamilyWithResourceDictionary___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 23);
    [v4 specifierProvider:v3 didFinishLoadingSpecifier:*(a1 + 40)];

    v5 = objc_loadWeakRetained(v3 + 4);
    [*(a1 + 32) set_presenter:v5];

    [*(a1 + 48) _presentViewController:*(a1 + 32)];
    v6 = *(a1 + 48);
    v7 = [*(a1 + 56) fa_eventTypeForFamilyActionURL];
    [v6 _presentFlowWithEventType:v7 completion:0];
  }

  else
  {
    v8 = _FALogSystem(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __65__FASettingsSpecifierProvider__viewFamilyWithResourceDictionary___block_invoke_3_cold_1(a1, v8);
    }
  }
}

- (void)_loadFamilyEligibilityWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke;
  aBlock[3] = &unk_2782F2B38;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_2;
  v14[3] = &unk_2782F3BC8;
  v14[4] = self;
  v15 = completionCopy;
  v6 = completionCopy;
  v7 = _Block_copy(v14);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_4;
  v11[3] = &unk_2782F3C18;
  v11[4] = self;
  v12 = v5;
  v13 = v7;
  v8 = v7;
  v9 = v5;
  v10 = _Block_copy(v11);
  v9[2](v9, v10);
}

void __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEC7E8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) _grandSlamSigner];
  v10 = [v5 initWithGrandSlamSigner:v6];

  v7 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v8 = [v7 ams_activeiTunesAccount];
  [v10 setITunesAccount:v8];

  v9 = [objc_alloc(MEMORY[0x277CEC840]) initWithRequest:v10 handler:v4];
  [*(*(a1 + 32) + 120) addOperation:v9];
}

void __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_3;
  block[3] = &unk_2782F3BA0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_4(id *a1, void *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] _appleAccount];
  if ([v3 statusCode] == 401 && v4)
  {
    v5 = _FALogSystem(401);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "Family eligibility check request returned 401. We need to re-auth...", buf, 2u);
    }

    v6 = *MEMORY[0x277CB90A0];
    v18[0] = MEMORY[0x277CBEC38];
    v7 = *MEMORY[0x277CB9090];
    v17[0] = v6;
    v17[1] = v7;
    v16 = *MEMORY[0x277CEC6F0];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v18[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

    v10 = [a1[4] _accountStore];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_126;
    v11[3] = &unk_2782F3BF0;
    v13 = a1[5];
    v14 = a1[6];
    v12 = v3;
    [v10 renewCredentialsForAccount:v4 options:v9 completion:v11];
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_126(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FALogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Result of renewing credentials for family eligibility check request: %ld. Error: %@", buf, 0x16u);
  }

  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__FASettingsSpecifierProvider__loadFamilyEligibilityWithCompletion___block_invoke_127;
    v7[3] = &unk_2782F2BD8;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

- (void)_handleFamilyEligibilityResponse:(id)response completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  completionCopy = completion;
  error = [responseCopy error];

  if (error)
  {
    v11 = _FALogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      error2 = [responseCopy error];
      v15 = 138412290;
      v16 = error2;
      v13 = "Failed to get family eligibility: %@";
LABEL_6:
      _os_log_impl(&dword_21BB35000, v11, OS_LOG_TYPE_DEFAULT, v13, &v15, 0xCu);
    }
  }

  else
  {
    self->_familyEligibilityStatus = [responseCopy eligibilityStatus];
    objc_storeStrong(&self->_familyEligibilityResponse, response);
    v11 = _FALogSystem(v14);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      error2 = [(AAFamilyEligibilityResponse *)self->_familyEligibilityResponse responseDictionary];
      v15 = 138412290;
      v16 = error2;
      v13 = "Family eligibility response: %@";
      goto LABEL_6;
    }
  }

  completionCopy[2](completionCopy, error == 0);
}

- (void)_reloadFamilySpecifiersAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v10 = *MEMORY[0x277D85DE8];
  v5 = _FALogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = animatedCopy;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "FASettingsSpecifierProvider _reloadFamilySpecifiersAnimated: %d", v9, 8u);
  }

  v6 = [(NSArray *)self->_specifiers copy];
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadSpecifiersForProvider:self oldSpecifiers:v6 animated:animatedCopy];
}

- (void)_clearFamilyState
{
  v3 = _FALogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "FASettingsSpecifierProvider _clearFamilyState", v9, 2u);
  }

  self->_didFailToGetFamilyDetails = 0;
  familyCircle = self->_familyCircle;
  self->_familyCircle = 0;

  pendingInvites = self->_pendingInvites;
  self->_pendingInvites = 0;

  self->_familyEligibilityStatus = 0;
  familyStatusSummary = self->_familyStatusSummary;
  self->_familyStatusSummary = 0;

  invitationSummary = self->_invitationSummary;
  self->_invitationSummary = 0;

  cachedResourceDictionary = self->_cachedResourceDictionary;
  self->_cachedResourceDictionary = 0;
}

- (BOOL)handleURL:(id)l
{
  v14 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [lCopy copy];
  cachedResourceDictionary = self->_cachedResourceDictionary;
  self->_cachedResourceDictionary = v5;

  v8 = _FALogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = lCopy;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Handle URL in: %@", &v12, 0xCu);
  }

  v9 = [lCopy objectForKeyedSubscript:@"aaaction"];
  if ([v9 isEqual:@"showFamilyInvite"])
  {
    [(FASettingsSpecifierProvider *)self _handleShowFamilyInviteActionURL:lCopy];
  }

  else if ([v9 isEqual:@"setupFamily"])
  {
    [(FASettingsSpecifierProvider *)self _handleStartFamilySetupActionURL:lCopy];
  }

  else if ([v9 isEqual:@"showFamilySettings"])
  {
    [(FASettingsSpecifierProvider *)self _handleShowFamilySettingsURL:lCopy];
  }

  else if ([v9 isEqual:@"showFamilySettingsV2"])
  {
    [(FASettingsSpecifierProvider *)self _handleShowFamilySettingsV2WithResourceDictionary:lCopy];
  }

  else if ([v9 isEqual:@"showChildTransferRequest"])
  {
    [(FASettingsSpecifierProvider *)self _handleShowChildTransferActionURL:lCopy];
  }

  else
  {
    if (![v9 isEqual:@"showAllInvites"])
    {
      v10 = 0;
      goto LABEL_16;
    }

    [(FASettingsSpecifierProvider *)self _handleShowInvitesActionURL:lCopy];
  }

  v10 = 1;
LABEL_16:

  return v10;
}

- (void)_handleShowFamilySettingsV2WithResourceDictionary:(id)dictionary
{
  v4 = [_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider getSettingsViewControllerWithResourceDictionary:dictionary];
  [(FASettingsSpecifierProvider *)self _presentViewController:v4];
}

- (void)_presentViewController:(id)controller
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  navigationController = [WeakRetained navigationController];
  viewControllers = [navigationController viewControllers];
  v8 = [viewControllers containsObject:controllerCopy];

  if (v8)
  {
    splitViewController = _FALogSystem(v9);
    if (os_log_type_enabled(splitViewController, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = controllerCopy;
      _os_log_impl(&dword_21BB35000, splitViewController, OS_LOG_TYPE_DEFAULT, "View Controller %@ already exists in Navigation stack, can't push another", &v20, 0xCu);
    }
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->_presenter);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = _FALogSystem(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_loadWeakRetained(&self->_presenter);
        v20 = 138412546;
        v21 = controllerCopy;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_21BB35000, v14, OS_LOG_TYPE_DEFAULT, "Calling showController with settingsViewController %@ for presenter %@", &v20, 0x16u);
      }

      splitViewController = objc_loadWeakRetained(&self->_presenter);
      [splitViewController showController:controllerCopy animate:1];
    }

    else
    {
      v16 = objc_loadWeakRetained(&self->_presenter);
      splitViewController = [v16 splitViewController];

      v18 = _FALogSystem(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_loadWeakRetained(&self->_presenter);
        v20 = 138412802;
        v21 = controllerCopy;
        v22 = 2112;
        v23 = v19;
        v24 = 2112;
        v25 = splitViewController;
        _os_log_impl(&dword_21BB35000, v18, OS_LOG_TYPE_DEFAULT, "Calling showInitialViewController with settingsViewController %@ for presenter %@ with splitViewController %@", &v20, 0x20u);
      }

      [splitViewController showInitialViewController:controllerCopy];
    }
  }
}

- (void)_handleShowInvitesActionURL:(id)l
{
  _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];
  v5 = _appleAccount;
  if (!_appleAccount)
  {
    v7 = _FALogSystem(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "User not signed in to an Apple Account. How did you even get here?";
LABEL_8:
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  aa_isPrimaryAccount = [_appleAccount aa_isPrimaryAccount];
  if ((aa_isPrimaryAccount & 1) == 0)
  {
    v7 = _FALogSystem(aa_isPrimaryAccount);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Non-primary accounts cannot see family invites. How did you even get here?";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__FASettingsSpecifierProvider__handleShowInvitesActionURL___block_invoke;
  v9[3] = &unk_2782F3A60;
  v9[4] = self;
  [(FASettingsSpecifierProvider *)self _loadFamilyDetailsWithCompletion:v9];
LABEL_10:
}

void __59__FASettingsSpecifierProvider__handleShowInvitesActionURL___block_invoke(uint64_t a1, char a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if ((a2 & 1) == 0)
  {
    v4 = [v3 _acuPresenter];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];
    v17[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"COULD_NOT_CONNECT_TO_ICLOUD" value:&stru_282D9AA68 table:@"Localizable"];
    [v4 showConfirmationWithButtons:v9 title:v11 message:0 destructive:0 completion:0];

LABEL_6:
    goto LABEL_7;
  }

  v4 = [v3[1] invites];
  v5 = [v4 count];
  v6 = *(a1 + 32);
  if (!v5)
  {
    v7 = [v6 _acuPresenter];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v8 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];
    v16 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"NO_INVITATIONS_MESSAGE" value:&stru_282D9AA68 table:@"Localizable"];
    [v7 showConfirmationWithButtons:v13 title:v15 message:0 destructive:0 completion:0];

    goto LABEL_6;
  }

  [v6 _presentPendingInvitesRemoteUI];
LABEL_7:
}

- (void)_handleShowFamilySettingsURL:(id)l
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__FASettingsSpecifierProvider__handleShowFamilySettingsURL___block_invoke;
  v3[3] = &unk_2782F3A60;
  v3[4] = self;
  [(FASettingsSpecifierProvider *)self _loadFamilyDetailsWithCompletion:v3];
}

void __60__FASettingsSpecifierProvider__handleShowFamilySettingsURL___block_invoke(uint64_t a1, char a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if ((a2 & 1) == 0)
  {
    v7 = [v3 _acuPresenter];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"COULD_NOT_CONNECT_TO_ICLOUD" value:&stru_282D9AA68 table:@"Localizable"];
    [v7 showConfirmationWithButtons:v11 title:v13 message:0 destructive:0 completion:0];

LABEL_7:
    return;
  }

  v4 = [v3[1] members];
  v5 = [v4 count];

  v7 = _FALogSystem(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v8)
    {
      *v14 = 0;
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "No family member found. Staying at spyglass.", v14, 2u);
    }

    goto LABEL_7;
  }

  if (v8)
  {
    *v14 = 0;
    _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Viewing family.", v14, 2u);
  }

  [*(a1 + 32) _viewFamilySpecifierWasTapped];
}

- (id)_acuPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)_handleShowInviteActionURL:(id)l isChildTransfer:(BOOL)transfer
{
  v29 = *MEMORY[0x277D85DE8];
  lCopy = l;
  _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];
  v8 = _appleAccount;
  if (!_appleAccount)
  {
    v10 = _FALogSystem(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v18 = "User not signed in to an Apple Account. How did you even get here?";
LABEL_11:
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
    goto LABEL_15;
  }

  aa_isPrimaryAccount = [_appleAccount aa_isPrimaryAccount];
  if ((aa_isPrimaryAccount & 1) == 0)
  {
    v10 = _FALogSystem(aa_isPrimaryAccount);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v18 = "Non-primary accounts cannot accept family invites. How did you even get here?";
    goto LABEL_11;
  }

  v10 = [lCopy objectForKeyedSubscript:@"inviteCode"];
  if (v10)
  {
    self->_isHandlingURLForInvite = 1;
    v11 = [lCopy objectForKeyedSubscript:@"organizerFirstName"];
    v12 = [lCopy objectForKeyedSubscript:@"organizerLastName"];
    v13 = [lCopy objectForKeyedSubscript:@"organizerEmail"];
    v14 = _FALogSystem(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v12;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_21BB35000, v14, OS_LOG_TYPE_DEFAULT, "About to present family invite coming from %@ %@", buf, 0x16u);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__FASettingsSpecifierProvider__handleShowInviteActionURL_isChildTransfer___block_invoke;
    v19[3] = &unk_2782F3C40;
    v19[4] = self;
    transferCopy = transfer;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    v15 = v13;
    v16 = v12;
    v17 = v11;
    [(FASettingsSpecifierProvider *)self _loadFamilyDetailsWithCompletion:v19];
  }

  else
  {
    v17 = _FALogSystem(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v17, OS_LOG_TYPE_DEFAULT, "Asked to show family invite details but no invite code was provided.", buf, 2u);
    }
  }

LABEL_15:
}

void __74__FASettingsSpecifierProvider__handleShowInviteActionURL_isChildTransfer___block_invoke(uint64_t a1, char a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 112) = 0;
  v3 = *(a1 + 32);
  if ((a2 & 1) == 0)
  {
    v4 = [v3 _acuPresenter];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];
    v23[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"COULD_NOT_CONNECT_TO_ICLOUD" value:&stru_282D9AA68 table:@"Localizable"];
    [v4 showConfirmationWithButtons:v11 title:v13 message:0 destructive:0 completion:0];

LABEL_14:
    goto LABEL_15;
  }

  v4 = [v3[1] invites];
  if ([v4 count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [v4 objectAtIndexedSubscript:v5];
      v7 = [v6 code];
      v8 = [v7 isEqualToString:*(a1 + 40)];

      if (v8)
      {
        break;
      }

      if (++v5 >= [v4 count])
      {
        goto LABEL_9;
      }
    }

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) _presentPendingInvitesRemoteUI];
      goto LABEL_15;
    }
  }

LABEL_9:
  if (*(a1 + 72) != 1)
  {
    v9 = objc_alloc_init(MEMORY[0x277D08260]);
    [v9 setCode:*(a1 + 40)];
    [v9 setOrganizerFirstName:*(a1 + 48)];
    [v9 setOrganizerLastName:*(a1 + 56)];
    [v9 setOrganizerEmail:*(a1 + 64)];
    v10 = [v4 mutableCopy];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    [v10 insertObject:v9 atIndex:0];
    [*(a1 + 32) _presentPendingInvitesRemoteUI];
    goto LABEL_14;
  }

  v21 = [*(a1 + 32) _acuPresenter];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];
  v22 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"INVALID_INVITE_TITLE" value:&stru_282D9AA68 table:@"Localizable"];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"INVALID_INVITE_MESSAGE" value:&stru_282D9AA68 table:@"Localizable"];
  [v21 showConfirmationWithButtons:v16 title:v18 message:v20 destructive:0 completion:0];

LABEL_15:
}

- (void)_handleStartFamilySetupActionURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  presentedViewController = [WeakRetained presentedViewController];

  if (presentedViewController)
  {
    v6 = objc_loadWeakRetained(&self->_presenter);
    [v6 dismissViewControllerAnimated:0 completion:0];
  }

  [(FASettingsSpecifierProvider *)self _initiateFamilyWithResources:lCopy];
}

- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response
{
  v13[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  _requestConfigurator = [(FASettingsSpecifierProvider *)self _requestConfigurator];
  [_requestConfigurator addFresnoHeadersToRequest:requestCopy];

  _requestConfigurator2 = [(FASettingsSpecifierProvider *)self _requestConfigurator];
  v12 = @"clientAppContext";
  clientName = [(FACircleContext *)self->_context clientName];
  v13[0] = clientName;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [_requestConfigurator2 addFresnoPayloadToRequest:requestCopy additionalPayload:v10];

  return 1;
}

- (void)remoteUIController:(id)controller didRefreshObjectModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(FASettingsSpecifierProvider *)self _handleObjectModelChangeForController:controllerCopy objectModel:modelCopy isModal:0];
  }
}

- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally
{
  modallyCopy = modally;
  controllerCopy = controller;
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(FASettingsSpecifierProvider *)self _handleObjectModelChangeForController:controllerCopy objectModel:modelCopy isModal:modallyCopy];
  }
}

- (void)_handleObjectModelChangeForController:(id)controller objectModel:(id)model isModal:(BOOL)modal
{
  v36 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v7 = _FALogSystem(modelCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [modelCopy identifier];
    v34 = 138412290;
    v35 = identifier;
    _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Handling an object model: %@", &v34, 0xCu);
  }

  clientInfo = [modelCopy clientInfo];
  v10 = [clientInfo objectForKeyedSubscript:@"needsProfilePhotoHeader"];
  v11 = [v10 isEqual:@"true"];

  if (v11)
  {
    defaultPages = [modelCopy defaultPages];
    firstObject = [defaultPages firstObject];

    hasTableView = [firstObject hasTableView];
    v15 = hasTableView;
    v16 = _FALogSystem(hasTableView);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_21BB35000, v16, OS_LOG_TYPE_DEFAULT, "Handing page over to FAFamilyMemberDetailsPageSurrogate...", &v34, 2u);
      }

      v16 = objc_alloc_init(MEMORY[0x277CEC7F0]);
      _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];
      aa_firstName = [_appleAccount aa_firstName];
      [v16 setFirstName:aa_firstName];

      _appleAccount2 = [(FASettingsSpecifierProvider *)self _appleAccount];
      aa_lastName = [_appleAccount2 aa_lastName];
      [v16 setLastName:aa_lastName];

      _appleAccount3 = [(FASettingsSpecifierProvider *)self _appleAccount];
      aa_appleId = [_appleAccount3 aa_appleId];
      [v16 setAppleID:aa_appleId];

      v24 = MEMORY[0x277CCABB0];
      _appleAccount4 = [(FASettingsSpecifierProvider *)self _appleAccount];
      aa_personID = [_appleAccount4 aa_personID];
      v27 = [v24 numberWithLongLong:{objc_msgSend(aa_personID, "longLongValue")}];
      [v16 setPersonID:v27];

      [v16 setIsMe:1];
      v28 = [FAProfileViewTableViewDecorator alloc];
      tableViewOM = [firstObject tableViewOM];
      tableView = [tableViewOM tableView];
      tableViewOM2 = [firstObject tableViewOM];
      v32 = [(FAProfileViewTableViewDecorator *)v28 initWithTableView:tableView ruiTableView:tableViewOM2 forPerson:v16 pictureStore:self->_familyPictureStore];
      remoteUIDecorator = self->_remoteUIDecorator;
      self->_remoteUIDecorator = v32;
    }

    else if (v17)
    {
      LOWORD(v34) = 0;
      _os_log_impl(&dword_21BB35000, v16, OS_LOG_TYPE_DEFAULT, "OM wants us to add a photo header, but it has no table view in its page.", &v34, 2u);
    }
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _FALogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "FASettingsSpecifierProvider dealloc %@", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = FASettingsSpecifierProvider;
  [(FASettingsSpecifierProvider *)&v5 dealloc];
}

- (void)familySettingsViewController2StopFamilySharing:(id)sharing
{
  sharingCopy = sharing;
  [(FASettingsSpecifierProvider *)self _clearFamilyState];
  [(FASettingsSpecifierProvider *)self _reloadFamilySpecifiersAnimated:0];
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationController = [sharingCopy navigationController];
    v8 = objc_loadWeakRetained(&self->_presenter);
    v9 = [navigationController popToViewController:v8 animated:1];
  }

  else
  {
    v12 = 0;
    v10 = [MEMORY[0x277D08358] urlDestinationTo:0 error:&v12];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace openSensitiveURL:v10 withOptions:0];
  }
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)shouldUseModernNavigationForPresenter:(id)presenter
{
  presenterCopy = presenter;
  selfCopy = self;
  v6 = sub_21BBF3664(presenterCopy);

  return v6;
}

- (void)presentFamilySettingsFromPresenter:(id)presenter
{
  v4 = sub_21BE2693C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BE293DC();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_21BE2886C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  presenterCopy = presenter;
  sub_21BE293CC();
  sub_21BE2885C();
  traitCollection = [presenterCopy traitCollection];
  sub_21BE2929C();

  sub_21BBF381C(&qword_27CDB66C0, MEMORY[0x277D4D798], MEMORY[0x277D4D7A0]);
  sub_21BE2691C();

  (*(v5 + 8))(v7, v4);
  (*(v10 + 8))(v12, v9);
}

void __65__FASettingsSpecifierProvider__viewFamilyWithResourceDictionary___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_21BB35000, a2, OS_LOG_TYPE_DEBUG, "Can't present %@, presenter seems deallocated.", &v3, 0xCu);
}

@end