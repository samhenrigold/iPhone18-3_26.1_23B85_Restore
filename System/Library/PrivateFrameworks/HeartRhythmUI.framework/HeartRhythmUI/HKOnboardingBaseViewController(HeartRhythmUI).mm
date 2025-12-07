@interface HKOnboardingBaseViewController(HeartRhythmUI)
- (void)configureNavigationButtonWithTypeCancelWithConfirmForAtrialFibrillation;
- (void)configureNavigationButtonWithTypeCancelWithConfirmForElectrocardiogram;
@end

@implementation HKOnboardingBaseViewController(HeartRhythmUI)

- (void)configureNavigationButtonWithTypeCancelWithConfirmForElectrocardiogram
{
  [self setRightButtonType:1];
  v2 = HRUIECGLocalizedString(@"ECG_ONBOARDING_CANCEL_DESCRIPTION");
  [self setCancelWithConfirmAlertTitle:v2];

  v4 = HRHeartRhythmUIFrameworkBundle(v3);
  v5 = [v4 localizedStringForKey:@"ONBOARDING_CANCEL" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];
  [self setCancelWithConfirmAlertContinueActionTitle:v5];

  v8 = HRHeartRhythmUIFrameworkBundle(v6);
  v7 = [v8 localizedStringForKey:@"ONBOARDING_SET_UP_LATER" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];
  [self setCancelWithConfirmAlertAbortActionTitle:v7];
}

- (void)configureNavigationButtonWithTypeCancelWithConfirmForAtrialFibrillation
{
  v2 = HRHeartRhythmUIFrameworkBundle([self setRightButtonType:1]);
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_CANCEL_DESC" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  [self setCancelWithConfirmAlertTitle:v3];

  v5 = HRHeartRhythmUIFrameworkBundle(v4);
  v6 = [v5 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_CANCEL_CANCEL_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  [self setCancelWithConfirmAlertContinueActionTitle:v6];

  v9 = HRHeartRhythmUIFrameworkBundle(v7);
  v8 = [v9 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_CANCEL_LATER_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  [self setCancelWithConfirmAlertAbortActionTitle:v8];
}

@end