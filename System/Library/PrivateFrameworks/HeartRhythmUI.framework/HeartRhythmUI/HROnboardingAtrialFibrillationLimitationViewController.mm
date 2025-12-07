@interface HROnboardingAtrialFibrillationLimitationViewController
+ (id)makeSpeedBumpItem;
- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
@end

@implementation HROnboardingAtrialFibrillationLimitationViewController

- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version
{
  onboardingCopy = onboarding;
  v7 = +[HROnboardingAtrialFibrillationLimitationViewController makeSpeedBumpItem];
  v11.receiver = self;
  v11.super_class = HROnboardingAtrialFibrillationLimitationViewController;
  v8 = [(HRSpeedBumpViewController *)&v11 initWithSpeedBumpItem:v7 onboarding:onboardingCopy upgradingFromAlgorithmVersion:version];

  if (v8)
  {
    v9 = !onboardingCopy;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [(HKOnboardingBaseViewController *)v8 configureNavigationButtonWithTypeCancelWithConfirmForAtrialFibrillation];
  }

  return v8;
}

+ (id)makeSpeedBumpItem
{
  v29[4] = *MEMORY[0x277D85DE8];
  v2 = HRHeartRhythmUIFrameworkBundle(self);
  v26 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v4 = HRHeartRhythmUIFrameworkBundle(v3);
  v28 = [v4 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_BULLET_1_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v6 = HRHeartRhythmUIFrameworkBundle(v5);
  v27 = [v6 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_BULLET_1_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v7 = [[HRSpeedBumpBubble alloc] initWithTitle:v28 description:v27];
  v8 = HRHeartRhythmUIFrameworkBundle(v7);
  v25 = [v8 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_BULLET_2_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v10 = HRHeartRhythmUIFrameworkBundle(v9);
  v24 = [v10 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_BULLET_2_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v11 = [[HRSpeedBumpBubble alloc] initWithTitle:v25 description:v24];
  v12 = HRHeartRhythmUIFrameworkBundle(v11);
  v13 = [v12 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_BULLET_3_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v15 = HRHeartRhythmUIFrameworkBundle(v14);
  v16 = [v15 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_BULLET_3_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v17 = [[HRSpeedBumpBubble alloc] initWithTitle:v13 description:v16];
  v18 = HRHeartRhythmUIFrameworkBundle(v17);
  v19 = [v18 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_SHOULD_KNOW_BULLET_4_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v20 = [[HRSpeedBumpBubble alloc] initWithTitle:v19 description:0];
  v29[0] = v7;
  v29[1] = v11;
  v29[2] = v17;
  v29[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  v22 = [[HRSpeedBumpItem alloc] initWithTitle:v26 body:0 bubbles:v21 category:2];

  return v22;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __94__HROnboardingAtrialFibrillationLimitationViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796FB498;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  navigationItem = [(HROnboardingAtrialFibrillationLimitationViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __94__HROnboardingAtrialFibrillationLimitationViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  navigationItem = [(HROnboardingAtrialFibrillationLimitationViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
}

@end