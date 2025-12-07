@interface PABSTouchIDPasscodeController
- (BOOL)isBiometricIdentityMatchingGovernmentIDTemplate:(id)template;
- (LAContext)authContext;
- (PABSTouchIDPasscodeController)init;
- (id)_fingerprintSpecifierForIdentity:(id)identity;
- (id)biometricLogo;
- (id)fingerprintSpecifiers;
- (id)specifiers;
- (void)_cancelMatching;
- (void)_setupMatching;
- (void)addEnrollment:(id)enrollment;
- (void)addFooterToUseForGroup:(id)group;
- (void)backgrounded:(id)backgrounded;
- (void)biometricBindingDeleted;
- (void)cancelModalFlow;
- (void)cancelModalFlowWithCompletion:(id)completion;
- (void)configureBiometricTemplateMatching;
- (void)dealloc;
- (void)enrollResult:(int)result bkIdentity:(id)identity;
- (void)enrollmentControllerDidDismiss;
- (void)event:(int64_t)event params:(id)params reply:(id)reply;
- (void)highlightFingerprintSpecifier:(id)specifier;
- (void)learnMoreTapped:(id)tapped;
- (void)matchBiometricIdentitiesWithBiometricTemplates;
- (void)matchResult:(id)result;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)proceedToAddEnrollment:(id)enrollment;
- (void)statusMessage:(unsigned int)message;
- (void)suspend;
- (void)unhighlightFingerprintSpecifiersAfterDelay:(double)delay;
- (void)updateAddFingerprintSpecifier;
- (void)updateWithReplacedUUIDs:(id)ds;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PABSTouchIDPasscodeController

- (PABSTouchIDPasscodeController)init
{
  v9.receiver = self;
  v9.super_class = PABSTouchIDPasscodeController;
  v2 = [(PABSBiometricController *)&v9 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_reloadSpecifiers name:@"PSEnrollmentNameChanged" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_biometricBindingDeleted name:@"PSBiometricBindingDeleted" object:0];

    v5 = objc_opt_new();
    dtoController = v2->_dtoController;
    v2->_dtoController = v5;

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_backgrounded_ name:*MEMORY[0x277D76660] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  if ([(PABSBiometricController *)self isObservingBiometricTemplateFetchingStatus])
  {
    [(PABSTouchIDPasscodeController *)self removeObserver:self forKeyPath:@"currentBiometricTemplateFetchStatus"];
  }

  [(BiometricKit *)self->_highlightMatcher setDelegate:0];
  [(BiometricKit *)self->_highlightMatcher cancel];
  v4.receiver = self;
  v4.super_class = PABSTouchIDPasscodeController;
  [(PABSPasscodeLockController *)&v4 dealloc];
}

- (void)backgrounded:(id)backgrounded
{
  backgroundedCopy = backgrounded;
  presenter = [(PABSTouchIDPasscodeController *)self presenter];
  splashController = [presenter splashController];

  if (splashController)
  {
    objc_initWeak(&location, self);
    presenter2 = [(PABSTouchIDPasscodeController *)self presenter];
    splashController2 = [presenter2 splashController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__PABSTouchIDPasscodeController_backgrounded___block_invoke;
    v9[3] = &unk_279A031D0;
    objc_copyWeak(&v10, &location);
    [splashController2 dismissViewControllerAnimated:0 completion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __46__PABSTouchIDPasscodeController_backgrounded___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPresenter:0];
}

- (void)suspend
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__PABSTouchIDPasscodeController_suspend__block_invoke;
  v2[3] = &unk_279A03008;
  v2[4] = self;
  [(PABSTouchIDPasscodeController *)self cancelModalFlowWithCompletion:v2];
}

id __40__PABSTouchIDPasscodeController_suspend__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PABSTouchIDPasscodeController;
  return objc_msgSendSuper2(&v2, sel_suspend);
}

- (void)updateAddFingerprintSpecifier
{
  v3 = [(PABSTouchIDPasscodeController *)self specifierForID:@"ADD_FINGERPRINT"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[PABSBiometricController isEnrollmentAvailable](self, "isEnrollmentAvailable")}];
  [v3 setProperty:v4 forKey:*MEMORY[0x277D3FF38]];

  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "ADD_FINGERPRINT_ID: - Reloading -", v6, 2u);
  }

  [(PABSTouchIDPasscodeController *)self reloadSpecifier:v3 animated:1];
}

- (void)highlightFingerprintSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if ([(PABSTouchIDPasscodeController *)self containsSpecifier:specifierCopy])
  {
    v5 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];
    if (v5)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      [weakObjectsHashTable addObject:v5];
      highlightQueue = [(PABSTouchIDPasscodeController *)self highlightQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__PABSTouchIDPasscodeController_highlightFingerprintSpecifier___block_invoke;
      block[3] = &unk_279A03008;
      v10 = weakObjectsHashTable;
      v8 = weakObjectsHashTable;
      dispatch_async(highlightQueue, block);
    }
  }
}

void __63__PABSTouchIDPasscodeController_highlightFingerprintSpecifier___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PABSTouchIDPasscodeController_highlightFingerprintSpecifier___block_invoke_2;
  block[3] = &unk_279A03008;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__PABSTouchIDPasscodeController_highlightFingerprintSpecifier___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) anyObject];
  [v1 setHighlighted:1 animated:1];
}

- (void)unhighlightFingerprintSpecifiersAfterDelay:(double)delay
{
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  [weakObjectsHashTable addObject:self];
  highlightQueue = [(PABSTouchIDPasscodeController *)self highlightQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__PABSTouchIDPasscodeController_unhighlightFingerprintSpecifiersAfterDelay___block_invoke;
  v8[3] = &unk_279A03380;
  delayCopy = delay;
  v9 = weakObjectsHashTable;
  v7 = weakObjectsHashTable;
  dispatch_async(highlightQueue, v8);
}

void __76__PABSTouchIDPasscodeController_unhighlightFingerprintSpecifiersAfterDelay___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) > 0.0)
  {
    [MEMORY[0x277CCACC8] sleepForTimeInterval:?];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__PABSTouchIDPasscodeController_unhighlightFingerprintSpecifiersAfterDelay___block_invoke_2;
  block[3] = &unk_279A03008;
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __76__PABSTouchIDPasscodeController_unhighlightFingerprintSpecifiersAfterDelay___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [*(a1 + 32) anyObject];
  v2 = [v1 specifiers];

  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = *MEMORY[0x277D40148];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 propertyForKey:v6];
        if ([v9 isHighlighted])
        {
          v10 = [v8 propertyForKey:@"FingerprintIdentity"];

          if (v10)
          {
            [v9 setHighlighted:0 animated:1];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)_setupMatching
{
  objc_initWeak(&location, self);
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v3 = [mEMORY[0x277D75128] applicationState] == 0;

  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PABSTouchIDPasscodeController__setupMatching__block_invoke;
  block[3] = &unk_279A033A8;
  objc_copyWeak(&v6, &location);
  v7 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__PABSTouchIDPasscodeController__setupMatching__block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[PABSBiometrics identities];
  if ([v3 count])
  {
    v4 = *(a1 + 40);

    if (v4 == 1)
    {
      v5 = [WeakRetained highlightMatcher];
      [v5 setDelegate:0];

      v6 = [MEMORY[0x277CF1BF8] manager];
      [WeakRetained setHighlightMatcher:v6];

      v7 = [WeakRetained highlightMatcher];
      [v7 setDelegate:WeakRetained];

      v8 = [WeakRetained authorizationToken];
      v9 = [WeakRetained highlightMatcher];
      v10 = v9;
      if (v8)
      {
        v15 = @"BKOptionMatchAuthTokenToBypassPasscodeBiolockout";
        v16[0] = v8;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
        v12 = [v10 match:0 withOptions:v11];
      }

      else
      {
        v12 = [v9 match:0 withOptions:0];
      }

      if (v12)
      {
        v13 = PABSLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14[0] = 67109120;
          v14[1] = v12;
          _os_log_impl(&dword_25E0E9000, v13, OS_LOG_TYPE_DEFAULT, "Failed to start matching: %i", v14, 8u);
        }
      }
    }
  }

  else
  {
  }
}

- (void)_cancelMatching
{
  highlightMatcher = [(PABSTouchIDPasscodeController *)self highlightMatcher];
  [highlightMatcher setDelegate:0];

  highlightMatcher2 = [(PABSTouchIDPasscodeController *)self highlightMatcher];
  [highlightMatcher2 cancel];

  [(PABSTouchIDPasscodeController *)self setHighlightMatcher:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PABSTouchIDPasscodeController;
  [(PABSPasscodeLockController *)&v5 viewDidAppear:appear];
  enrollContainerController = [(PABSBiometricController *)self enrollContainerController];

  if (!enrollContainerController)
  {
    [(PABSTouchIDPasscodeController *)self _setupMatching];
  }

  [(PABSTouchIDPasscodeController *)self configureBiometricTemplateMatching];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PABSTouchIDPasscodeController;
  [(PABSTouchIDPasscodeController *)&v4 viewDidDisappear:disappear];
  [(PABSTouchIDPasscodeController *)self _cancelMatching];
}

- (void)enrollmentControllerDidDismiss
{
  v3.receiver = self;
  v3.super_class = PABSTouchIDPasscodeController;
  [(PABSBiometricController *)&v3 enrollmentControllerDidDismiss];
  [(PABSTouchIDPasscodeController *)self _setupMatching];
}

- (void)biometricBindingDeleted
{
  v2.receiver = self;
  v2.super_class = PABSTouchIDPasscodeController;
  [(PABSBiometricController *)&v2 deleteGlobalAuthACL];
}

- (void)configureBiometricTemplateMatching
{
  currentBiometricTemplateFetchStatus = [(PABSBiometricController *)self currentBiometricTemplateFetchStatus];
  if (currentBiometricTemplateFetchStatus > 2)
  {
    if (currentBiometricTemplateFetchStatus != 3)
    {
      if (currentBiometricTemplateFetchStatus != 4)
      {
        return;
      }

LABEL_7:

      [(PABSTouchIDPasscodeController *)self matchBiometricIdentitiesWithBiometricTemplates];
      return;
    }

    objc_initWeak(&location, self);
    v4 = MEMORY[0x277D85DD0];
    v5 = 3221225472;
    v6 = __67__PABSTouchIDPasscodeController_configureBiometricTemplateMatching__block_invoke;
    v7 = &unk_279A031D0;
    objc_copyWeak(&v8, &location);
    [(PABSBiometricController *)self fetchBiometricTemplateUUIDsWithCompletion:&v4];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else if (currentBiometricTemplateFetchStatus != 1)
  {
    if (currentBiometricTemplateFetchStatus != 2)
    {
      return;
    }

    goto LABEL_7;
  }

  if (![(PABSBiometricController *)self isObservingBiometricTemplateFetchingStatus:v4])
  {
    [(PABSTouchIDPasscodeController *)self addObserver:self forKeyPath:@"currentBiometricTemplateFetchStatus" options:1 context:@"BiometricTemplateFetchingState"];
    [(PABSBiometricController *)self setIsObservingBiometricTemplateFetchingStatus:1];
  }
}

void __67__PABSTouchIDPasscodeController_configureBiometricTemplateMatching__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    if ([v3 currentBiometricTemplateFetchStatus] == 3)
    {
      [v3 configureBiometricTemplateMatching];
    }

    else
    {
      [v3 matchBiometricIdentitiesWithBiometricTemplates];
    }
  }
}

- (void)updateWithReplacedUUIDs:(id)ds
{
  v4.receiver = self;
  v4.super_class = PABSTouchIDPasscodeController;
  [(PABSBiometricController *)&v4 updateWithReplacedUUIDs:ds];
  [(PABSTouchIDPasscodeController *)self matchBiometricIdentitiesWithBiometricTemplates];
}

- (void)matchBiometricIdentitiesWithBiometricTemplates
{
  v20 = *MEMORY[0x277D85DE8];
  storedBiometricTemplates = [(PABSBiometricController *)self storedBiometricTemplates];
  if ([storedBiometricTemplates count])
  {
    specifiers = [(PABSTouchIDPasscodeController *)self specifiers];
    v4 = [specifiers count];

    if (v4)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      specifiers2 = [(PABSTouchIDPasscodeController *)self specifiers];
      v6 = [specifiers2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(specifiers2);
            }

            v10 = *(*(&v15 + 1) + 8 * i);
            v11 = [v10 propertyForKey:@"FingerprintIdentity"];
            if (v11)
            {
              v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[PABSTouchIDPasscodeController isBiometricIdentityMatchingGovernmentIDTemplate:](self, "isBiometricIdentityMatchingGovernmentIDTemplate:", v11)}];
              [v10 setProperty:v12 forKey:@"BIOMETRIC_TEMPLATE_BINDING"];

              v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PABSBiometricController boundCredentialsCount](self, "boundCredentialsCount")}];
              [v10 setProperty:v13 forKey:@"BOUND_CREDENTIALS_COUNT_BINDING"];
            }
          }

          v7 = [specifiers2 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }
    }
  }

  else
  {
  }
}

- (id)biometricLogo
{
  v2 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:40.0];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"touchid" withConfiguration:v2];
  systemPinkColor = [MEMORY[0x277D75348] systemPinkColor];
  v5 = [v3 _flatImageWithColor:systemPinkColor];
  v6 = [v5 imageWithRenderingMode:1];

  return v6;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 6)
    {
      localizedPlacardTitle = [(PABSTouchIDPasscodeController *)self localizedPlacardTitle];
      localizedPlacardSubtitle = [(PABSTouchIDPasscodeController *)self localizedPlacardSubtitle];
      placardGraphicIconTypeIdentifier = [(PABSTouchIDPasscodeController *)self placardGraphicIconTypeIdentifier];
      v11 = [(PABSBiometricController *)self placardSpecifiersWithTitle:localizedPlacardTitle subtitle:localizedPlacardSubtitle icon:placardGraphicIconTypeIdentifier];
      [array addObjectsFromArray:v11];
    }

    v12 = dispatch_queue_create("com.apple.Preferences.highlighting", 0);
    [(PABSTouchIDPasscodeController *)self setHighlightQueue:v12];

    useBiometricForSpecifiers = [(PABSBiometricController *)self useBiometricForSpecifiers];
    firstObject = [useBiometricForSpecifiers firstObject];
    [(PABSTouchIDPasscodeController *)self addFooterToUseForGroup:firstObject];
    [array addObjectsFromArray:useBiometricForSpecifiers];
    fingerprintSpecifiers = [(PABSTouchIDPasscodeController *)self fingerprintSpecifiers];
    [array addObjectsFromArray:fingerprintSpecifiers];

    v20.receiver = self;
    v20.super_class = PABSTouchIDPasscodeController;
    specifiers = [(PABSPasscodeLockController *)&v20 specifiers];
    [array addObjectsFromArray:specifiers];

    v17 = PABS_LocalizedStringForPasscodeLock(@"PASSCODE_PLACARD_TITLE_TOUCH_ID");
    [(PABSTouchIDPasscodeController *)self setTitle:v17];

    v18 = *(&self->super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)addFooterToUseForGroup:(id)group
{
  v4 = MEMORY[0x277D37668];
  v5 = MEMORY[0x277D37630];
  groupCopy = group;
  v7 = [v5 bundleWithIdentifier:@"com.apple.onboarding.touchid"];
  v15 = [v4 flowWithBundle:v7];

  localizedButtonTitle = [v15 localizedButtonTitle];
  v9 = PABS_LocalizedStringForPasscodeLock(@"USE_TOUCHID_FOR_GROUP_FOOTER_PREFIX");
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9, localizedButtonTitle];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [groupCopy setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF48]];

  [groupCopy setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  v17.location = [v10 rangeOfString:localizedButtonTitle];
  v13 = NSStringFromRange(v17);
  [groupCopy setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FF58]];

  v14 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [groupCopy setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FF68]];

  [groupCopy setObject:@"learnMoreTapped:" forKeyedSubscript:*MEMORY[0x277D3FF50]];
}

- (void)learnMoreTapped:(id)tapped
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.touchid"];
  [(PABSTouchIDPasscodeController *)self setPresenter:v4];

  presenter = [(PABSTouchIDPasscodeController *)self presenter];
  [presenter setPresentingViewController:self];

  presenter2 = [(PABSTouchIDPasscodeController *)self presenter];
  [presenter2 present];
}

- (id)_fingerprintSpecifierForIdentity:(id)identity
{
  identityCopy = identity;
  name = [identityCopy name];
  v6 = name;
  v7 = &stru_286FD1EF8;
  if (name)
  {
    v7 = name;
  }

  v8 = v7;

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isFingerprintModificationAllowed = [mEMORY[0x277D262A0] isFingerprintModificationAllowed];

  if (isFingerprintModificationAllowed)
  {
    [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  }

  else
  {
    [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  }
  v11 = ;
  [v11 setProperty:identityCopy forKey:@"FingerprintIdentity"];
  if ([(PABSBiometricController *)self currentBiometricTemplateFetchStatus]== 2)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[PABSTouchIDPasscodeController isBiometricIdentityMatchingGovernmentIDTemplate:](self, "isBiometricIdentityMatchingGovernmentIDTemplate:", identityCopy)}];
    [v11 setProperty:v12 forKey:@"BIOMETRIC_TEMPLATE_BINDING"];
  }

  return v11;
}

- (BOOL)isBiometricIdentityMatchingGovernmentIDTemplate:(id)template
{
  v21 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  storedBiometricTemplates = [(PABSBiometricController *)self storedBiometricTemplates];
  if ([storedBiometricTemplates count])
  {
    currentBiometricTemplateFetchStatus = [(PABSBiometricController *)self currentBiometricTemplateFetchStatus];

    if (currentBiometricTemplateFetchStatus != 4)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      storedBiometricTemplates2 = [(PABSBiometricController *)self storedBiometricTemplates];
      v8 = [storedBiometricTemplates2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(storedBiometricTemplates2);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            uuid = [templateCopy uuid];
            LOBYTE(v12) = [v12 isEqual:uuid];

            if (v12)
            {

              v14 = 1;
              goto LABEL_14;
            }
          }

          v9 = [storedBiometricTemplates2 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else
  {
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (id)fingerprintSpecifiers
{
  v24 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [emptyGroupSpecifier setIdentifier:@"FINGERPRINTS"];
  v5 = PABS_LocalizedStringForPasscodeLock(@"FINGERPRINTS");
  [emptyGroupSpecifier setName:v5];

  [array addObject:emptyGroupSpecifier];
  v6 = +[PABSBiometrics sharedInstance];
  v7 = [v6 identitiesForIdentityType:1];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(PABSTouchIDPasscodeController *)self _fingerprintSpecifierForIdentity:*(*(&v19 + 1) + 8 * i)];
        [array addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = MEMORY[0x277D3FAD8];
  v15 = PABS_LocalizedStringForPasscodeLock(@"ADD_FINGERPRINT");
  v16 = [v14 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v16 setButtonAction:sel_addEnrollment_];
  [v16 setIdentifier:@"ADD_FINGERPRINT"];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[PABSBiometricController isEnrollmentAvailable](self, "isEnrollmentAvailable")}];
  [v16 setProperty:v17 forKey:*MEMORY[0x277D3FF38]];

  [array addObject:v16];

  return array;
}

- (LAContext)authContext
{
  v30 = *MEMORY[0x277D85DE8];
  specifier = [(PABSTouchIDPasscodeController *)self specifier];
  v4 = [specifier objectForKeyedSubscript:*MEMORY[0x277D40100]];

  authContext = self->_authContext;
  if (v4)
  {
    if (!authContext)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2050000000;
      v6 = getLAContextClass_softClass_0;
      v23 = getLAContextClass_softClass_0;
      if (!getLAContextClass_softClass_0)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v27 = __getLAContextClass_block_invoke_0;
        v28 = &unk_279A03148;
        v29 = &v20;
        __getLAContextClass_block_invoke_0(&buf);
        v6 = v21[3];
      }

      v7 = v6;
      _Block_object_dispose(&v20, 8);
      v8 = objc_opt_new();
      v9 = self->_authContext;
      self->_authContext = v8;

      [(LAContext *)self->_authContext setUiDelegate:self];
      v10 = self->_authContext;
      v24 = &unk_286FD6B40;
      v25 = &unk_286FD6B58;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v19 = 0;
      v12 = [(LAContext *)v10 evaluatePolicy:1007 options:v11 error:&v19];
      v13 = v19;

      if (v13)
      {
        v14 = PABSLogForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v13 description];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v15;
          _os_log_impl(&dword_25E0E9000, v14, OS_LOG_TYPE_DEFAULT, "LAContextClass evaluatePolicy failed: %@", &buf, 0xCu);
        }
      }

      authContext = self->_authContext;
    }

    v16 = authContext;
  }

  else
  {
    self->_authContext = 0;

    v17 = PABSLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PABSTouchIDPasscodeController authContext];
    }

    v16 = 0;
  }

  return v16;
}

- (void)event:(int64_t)event params:(id)params reply:(id)reply
{
  replyCopy = reply;
  if (event == 2)
  {
    v9 = [params objectForKey:&unk_286FD6B70];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
      specifier = [(PABSTouchIDPasscodeController *)self specifier];

      if (!specifier)
      {
        v12 = PABSLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [PABSPearlPasscodeController event:params:reply:];
        }
      }

      specifier2 = [(PABSTouchIDPasscodeController *)self specifier];
      v14 = *MEMORY[0x277D40100];
      v15 = [specifier2 objectForKeyedSubscript:*MEMORY[0x277D40100]];

      if (!v15)
      {
        v16 = PABSLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [PABSPearlPasscodeController event:params:reply:];
        }
      }

      authContext = [(PABSTouchIDPasscodeController *)self authContext];
      specifier3 = [(PABSTouchIDPasscodeController *)self specifier];
      v19 = [specifier3 objectForKeyedSubscript:v14];
      v20 = [v19 dataUsingEncoding:4];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __52__PABSTouchIDPasscodeController_event_params_reply___block_invoke;
      v21[3] = &unk_279A03300;
      v22 = replyCopy;
      [authContext setCredential:v20 forProcessedEvent:2 credentialType:-1 reply:v21];
    }
  }
}

- (void)addEnrollment:(id)enrollment
{
  enrollmentCopy = enrollment;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Touch ID: User pressed Add a Fingerprint", buf, 2u);
  }

  dtoController = [(PABSTouchIDPasscodeController *)self dtoController];
  isRatchetEnabled = [dtoController isRatchetEnabled];

  if (isRatchetEnabled)
  {
    objc_initWeak(buf, self);
    dtoController2 = [(PABSTouchIDPasscodeController *)self dtoController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__PABSTouchIDPasscodeController_addEnrollment___block_invoke;
    v9[3] = &unk_279A03248;
    objc_copyWeak(&v11, buf);
    v10 = enrollmentCopy;
    [dtoController2 gateWithRatchetForOperation:5 forPresentingVC:self completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    [(PABSTouchIDPasscodeController *)self proceedToAddEnrollment:enrollmentCopy];
  }
}

void __47__PABSTouchIDPasscodeController_addEnrollment___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v2 = PABSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __47__PABSTouchIDPasscodeController_addEnrollment___block_invoke_cold_1();
    }
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__PABSTouchIDPasscodeController_addEnrollment___block_invoke_113;
    v4[3] = &unk_279A030A8;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __47__PABSTouchIDPasscodeController_addEnrollment___block_invoke_113(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = PABSLogForCategory(0);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "Touch ID: Starting addition of fingerprint", v5, 2u);
    }

    [WeakRetained proceedToAddEnrollment:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __47__PABSTouchIDPasscodeController_addEnrollment___block_invoke_113_cold_1();
    }
  }
}

- (void)proceedToAddEnrollment:(id)enrollment
{
  v12 = *MEMORY[0x277D85DE8];
  enrollmentCopy = enrollment;
  [enrollmentCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [enrollmentCopy identifier];
    *buf = 138412290;
    v11 = identifier;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "%@: - Reloading -", buf, 0xCu);
  }

  [(PABSTouchIDPasscodeController *)self reloadSpecifier:enrollmentCopy];
  objc_initWeak(buf, self);
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__PABSTouchIDPasscodeController_proceedToAddEnrollment___block_invoke;
  block[3] = &unk_279A031D0;
  objc_copyWeak(&v9, buf);
  dispatch_async(v7, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __56__PABSTouchIDPasscodeController_proceedToAddEnrollment___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [MEMORY[0x277CF1C48] sharedInstance];
  v4 = [v3 getEnrollUIViewController:1 bundleName:0];
  if (v4)
  {
    [WeakRetained _cancelMatching];
    v5 = [MEMORY[0x277CF1BF8] manager];
    [v4 setBiometricKit:v5];

    [v4 setDelegate:WeakRetained];
    v6 = [WeakRetained authContext];
    v7 = [v6 externalizedContext];

    if (v7)
    {
      [v4 setProperty:v7 forKey:@"credset"];
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__PABSTouchIDPasscodeController_proceedToAddEnrollment___block_invoke_2;
    v8[3] = &unk_279A030A8;
    objc_copyWeak(&v10, (a1 + 32));
    v9 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v8);

    objc_destroyWeak(&v10);
  }
}

void __56__PABSTouchIDPasscodeController_proceedToAddEnrollment___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [[PSEnrollContainerViewController alloc] initWithNibName:0 bundle:0];
  [(PSEnrollContainerViewController *)v2 setEnrollController:*(a1 + 32)];
  [WeakRetained setEnrollContainerController:v2];
  v3 = [[PSEnrollmentNavigationController alloc] initWithRootViewController:v2];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:WeakRetained action:sel_cancelModalFlow];
  v5 = [objc_opt_class() shouldPresentInModalSheet];
  v6 = [(PSEnrollContainerViewController *)v2 navigationItem];
  v7 = v6;
  if (v5)
  {
    [v6 setLeftBarButtonItem:v4];

    [WeakRetained presentSheetForContentViewController:v3];
  }

  else
  {
    [v6 setRightBarButtonItem:v4];

    [(PSEnrollmentNavigationController *)v3 setModalPresentationStyle:0];
    [WeakRetained presentViewController:v3 animated:1 completion:0];
  }
}

- (void)cancelModalFlow
{
  v2.receiver = self;
  v2.super_class = PABSTouchIDPasscodeController;
  [(PABSBiometricController *)&v2 cancelModalFlowWithCompletion:0];
}

- (void)cancelModalFlowWithCompletion:(id)completion
{
  completionCopy = completion;
  [(PABSTouchIDPasscodeController *)self updateAddFingerprintSpecifier];
  v5.receiver = self;
  v5.super_class = PABSTouchIDPasscodeController;
  [(PABSBiometricController *)&v5 cancelModalFlowWithCompletion:completionCopy];
}

- (void)matchResult:(id)result
{
  v21 = *MEMORY[0x277D85DE8];
  if (result)
  {
    uuid = [result uuid];
    if (uuid)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      specifiers = [(PABSTouchIDPasscodeController *)self specifiers];
      v6 = [specifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(specifiers);
            }

            v10 = *(*(&v16 + 1) + 8 * i);
            v11 = [v10 propertyForKey:@"FingerprintIdentity"];
            v12 = v11;
            if (v11)
            {
              uuid2 = [v11 uuid];
              if (uuid2 && [uuid isEqual:uuid2])
              {
                [(PABSTouchIDPasscodeController *)self highlightFingerprintSpecifier:v10];
                highlightMatcher = [(PABSTouchIDPasscodeController *)self highlightMatcher];
                inUse = [highlightMatcher inUse];

                if ((inUse & 1) == 0)
                {
                  [(PABSTouchIDPasscodeController *)self unhighlightFingerprintSpecifiersAfterDelay:0.5];
                }

                goto LABEL_18;
              }
            }
          }

          v7 = [specifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }
  }
}

- (void)statusMessage:(unsigned int)message
{
  if (message == 64)
  {
    [(PABSTouchIDPasscodeController *)self unhighlightFingerprintSpecifiersAfterDelay:0.0];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v15 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (context == @"BiometricTemplateFetchingState")
  {
    v11 = PABSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      currentBiometricTemplateFetchStatus = [(PABSBiometricController *)self currentBiometricTemplateFetchStatus];
      _os_log_impl(&dword_25E0E9000, v11, OS_LOG_TYPE_DEFAULT, "In KVO, current biometric template fetch status: %ld", buf, 0xCu);
    }

    if ([(PABSBiometricController *)self currentBiometricTemplateFetchStatus]== 2)
    {
      [(PABSTouchIDPasscodeController *)self matchBiometricIdentitiesWithBiometricTemplates];
      [(PABSTouchIDPasscodeController *)self removeObserver:self forKeyPath:pathCopy];
      [(PABSBiometricController *)self setIsObservingBiometricTemplateFetchingStatus:0];
    }

    else if ([(PABSBiometricController *)self currentBiometricTemplateFetchStatus]== 3)
    {
      [(PABSBiometricController *)self fetchBiometricTemplateUUIDsWithCompletion:0];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PABSTouchIDPasscodeController;
    [(PABSTouchIDPasscodeController *)&v12 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
  }
}

- (void)enrollResult:(int)result bkIdentity:(id)identity
{
  v4 = *&result;
  v25 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v7 = PABSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "Finished Mesa enroll: Result [%@]", &buf, 0xCu);
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2050000000;
      v9 = getBYFlowSkipControllerClass_softClass;
      v20 = getBYFlowSkipControllerClass_softClass;
      if (!getBYFlowSkipControllerClass_softClass)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v22 = __getBYFlowSkipControllerClass_block_invoke;
        v23 = &unk_279A03148;
        v24 = &v17;
        __getBYFlowSkipControllerClass_block_invoke(&buf);
        v9 = v18[3];
      }

      v10 = v9;
      _Block_object_dispose(&v17, 8);
      v11 = objc_alloc_init(v9);
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v12 = getBYFlowSkipIdentifierTouchIDSymbolLoc_ptr;
      v20 = getBYFlowSkipIdentifierTouchIDSymbolLoc_ptr;
      if (!getBYFlowSkipIdentifierTouchIDSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v22 = __getBYFlowSkipIdentifierTouchIDSymbolLoc_block_invoke;
        v23 = &unk_279A03148;
        v24 = &v17;
        v13 = SetupAssistantLibrary();
        v14 = dlsym(v13, "BYFlowSkipIdentifierTouchID");
        *(v24[1] + 24) = v14;
        getBYFlowSkipIdentifierTouchIDSymbolLoc_ptr = *(v24[1] + 24);
        v12 = v18[3];
      }

      _Block_object_dispose(&v17, 8);
      if (!v12)
      {
        [PABSTouchIDPasscodeController enrollResult:bkIdentity:];
        __break(1u);
      }

      [v11 didCompleteFlow:*v12];

      if ([(PABSBiometricController *)self isPasscodeSet])
      {
        [(PABSBiometricController *)self completeModalFlow];
      }

      else
      {
        [(PABSBiometricController *)self pushPasscodePane];
      }
    }

    else if (v4 == 8)
    {
      [(PABSBiometricController *)self hideCancelButton];
    }
  }

  else if (v4 == 1)
  {
    if (identityCopy)
    {
      [(PABSBiometricController *)self enrollmentCompletedForIdentity:identityCopy];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __57__PABSTouchIDPasscodeController_enrollResult_bkIdentity___block_invoke;
      v15[3] = &unk_279A03008;
      v16 = identityCopy;
      [(PABSBiometricController *)self setModalFlowCancelCompletion:v15];
    }
  }

  else if (v4 == 3)
  {
    [(PABSTouchIDPasscodeController *)self cancelModalFlowWithCompletion:0];
  }
}

void __57__PABSTouchIDPasscodeController_enrollResult_bkIdentity___block_invoke(uint64_t a1)
{
  v2 = +[PABSBiometrics sharedInstance];
  [v2 removeIdentity:*(a1 + 32) completion:0];
}

- (void)enrollResult:bkIdentity:.cold.1()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  __79__PABSFingerprintController_fetchBiometricTemplateForCurrentBiometricIdentity___block_invoke_2_cold_1(v1, v2);
}

@end