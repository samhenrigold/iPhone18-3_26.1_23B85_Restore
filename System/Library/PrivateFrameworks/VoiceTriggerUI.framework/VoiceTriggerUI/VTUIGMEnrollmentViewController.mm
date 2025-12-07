@interface VTUIGMEnrollmentViewController
- (VTUIGMEnrollmentViewController)initWithCSFAvailability:(id)availability delegate:(id)delegate;
- (VTUIGMEnrollmentViewController)initWithDelegate:(id)delegate;
- (VTUIGMEnrollmentViewController)initWithEnrollmentType:(unint64_t)type delegate:(id)delegate;
- (void)_continueFromGMEnrollment;
- (void)_enrollUserIntoWaitlist;
- (void)_presentEnrollmentErrorWithCompletion:(id)completion;
- (void)_pushVisualIntelligenceIntro;
- (void)_setupContent;
- (void)_userDidTapContinueButton;
- (void)_userDidTapSetupLaterButton;
- (void)onboardingController:(id)controller requestsPushingTo:(id)to;
- (void)onboardingControllerDidFinish:(id)finish;
- (void)onboardingControllerRequestsCancellation:(id)cancellation;
- (void)onboardingControllerRequestsGoingBack:(id)back;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VTUIGMEnrollmentViewController

- (VTUIGMEnrollmentViewController)initWithCSFAvailability:(id)availability delegate:(id)delegate
{
  objc_storeStrong(&self->_availability, availability);
  delegateCopy = delegate;
  v7 = [(VTUIGMEnrollmentViewController *)self initWithDelegate:delegateCopy];

  return v7;
}

- (VTUIGMEnrollmentViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = objc_alloc_init(_TtC14VoiceTriggerUI23GMAvailabilityViewModel);
  viewModel = self->_viewModel;
  self->_viewModel = v5;

  v7 = [(VTUIGMEnrollmentViewController *)self initWithEnrollmentType:[(GMAvailabilityViewModel *)self->_viewModel enrollmentType] delegate:delegateCopy];
  return v7;
}

- (VTUIGMEnrollmentViewController)initWithEnrollmentType:(unint64_t)type delegate:(id)delegate
{
  delegateCopy = delegate;
  v7 = +[VTUIStyle sharedStyle];
  self->_enrollmentType = type;
  v8 = [(GMAvailabilityViewModel *)self->_viewModel titleKeyWithEnrollmentType:type];
  v9 = [(GMAvailabilityViewModel *)self->_viewModel subtitleKeyWithEnrollmentType:type];
  v10 = +[VTUIStyle sharedStyle];
  v11 = [v10 VTUIDeviceSpecificString:v8];

  v12 = +[VTUIStyle sharedStyle];
  v13 = [v12 VTUIDeviceSpecificString:v9];

  v14 = objc_alloc_init(_TtC14VoiceTriggerUI20GMHeaderIconProvider);
  headerIconProvider = self->_headerIconProvider;
  self->_headerIconProvider = v14;

  if (+[_TtC14VoiceTriggerUI23GMAvailabilityViewModel isBuddy])
  {
    v16 = objc_alloc_init(MEMORY[0x277CFB468]);
    self->_isSkippingIntroduction = [v16 isOptedIn];
  }

  else
  {
    self->_isSkippingIntroduction = 0;
  }

  v20.receiver = self;
  v20.super_class = VTUIGMEnrollmentViewController;
  v17 = [(VTUIGMEnrollmentViewController *)&v20 initWithTitle:v11 detailText:v13 icon:0];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, delegateCopy);
  }

  return v18;
}

- (void)_setupContent
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[VTUIGMEnrollmentViewController _setupContent]";
  _os_log_error_impl(&dword_2728BC000, log, OS_LOG_TYPE_ERROR, "%s #gmenrollment Failed to acquire icon for header view", &v1, 0xCu);
}

- (void)_userDidTapSetupLaterButton
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    enrollmentType = self->_enrollmentType;
    v9 = 136315394;
    v10 = "[VTUIGMEnrollmentViewController _userDidTapSetupLaterButton]";
    v11 = 2048;
    v12 = enrollmentType;
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment User did tap SetupLater button with enrollmentType: %lu", &v9, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CFB468]);
  [v5 setIsOptedIn:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 siriGMIntroViewControllerNotNowPressed:self];
  }

  else
  {
    [(VTUIGMEnrollmentViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(VTUIGMEnrollmentViewController *)self userDidCancel];
}

- (void)_presentEnrollmentErrorWithCompletion:(id)completion
{
  completionCopy = completion;
  v12 = +[VTUIStyle sharedStyle];
  v5 = [v12 VTUIDeviceSpecificString:@"GM_JOIN_WAITLIST_ERROR_MESSAGE"];
  v6 = MEMORY[0x277D75110];
  v7 = [v12 VTUIDeviceSpecificString:@"GM_JOIN_WAITLIST_ERROR_TITLE"];
  v8 = [v6 alertControllerWithTitle:v7 message:v5 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = [v12 VTUIDeviceSpecificString:@"GM_JOIN_WAITLIST_ERROR_BUTTON_TITLE"];
  v11 = [v9 actionWithTitle:v10 style:1 handler:0];

  [v8 addAction:v11];
  [(VTUIGMEnrollmentViewController *)self presentViewController:v8 animated:1 completion:completionCopy];
}

- (void)_enrollUserIntoWaitlist
{
  objc_initWeak(&location, self);
  [(OBTrayButton *)self->continueButton showsBusyIndicator];
  v3 = MEMORY[0x277CFB450];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__VTUIGMEnrollmentViewController__enrollUserIntoWaitlist__block_invoke;
  v4[3] = &unk_279E54B98;
  objc_copyWeak(&v5, &location);
  [v3 getTicketForFeature:@"cloud.llm" withCompletionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__VTUIGMEnrollmentViewController__enrollUserIntoWaitlist__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__VTUIGMEnrollmentViewController__enrollUserIntoWaitlist__block_invoke_2;
  block[3] = &unk_279E54298;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __57__VTUIGMEnrollmentViewController__enrollUserIntoWaitlist__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = VTUILogContextFacility;
    v5 = os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 32);
        *buf = 136315394;
        v11 = "[VTUIGMEnrollmentViewController _enrollUserIntoWaitlist]_block_invoke";
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment Enrollment from buddy getTicketForFeature: received an error. Bailing! Error: %@", buf, 0x16u);
      }

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __57__VTUIGMEnrollmentViewController__enrollUserIntoWaitlist__block_invoke_68;
      v9[3] = &unk_279E54220;
      v9[4] = WeakRetained;
      [WeakRetained _presentEnrollmentErrorWithCompletion:v9];
    }

    else
    {
      if (v5)
      {
        v8 = *(a1 + 40);
        *buf = 136315394;
        v11 = "[VTUIGMEnrollmentViewController _enrollUserIntoWaitlist]_block_invoke_2";
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment Enrollment from buddy getTicketForFeature: cloud.llm ticket: %@", buf, 0x16u);
      }

      [WeakRetained[159] hidesBusyIndicator];
      [WeakRetained _continueFromGMEnrollment];
    }
  }

  else
  {
    v7 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[VTUIGMEnrollmentViewController _enrollUserIntoWaitlist]_block_invoke_2";
      _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment Enrollment from buddy getTicketForFeature: self in unavailable. Bailing!", buf, 0xCu);
    }
  }
}

- (void)_userDidTapContinueButton
{
  v18 = *MEMORY[0x277D85DE8];
  isSkippingIntroduction = self->_isSkippingIntroduction;
  v4 = VTUILogContextFacility;
  v5 = os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT);
  if (isSkippingIntroduction)
  {
    if (v5)
    {
      enrollmentType = self->_enrollmentType;
      v14 = 136315394;
      v15 = "[VTUIGMEnrollmentViewController _userDidTapContinueButton]";
      v16 = 2048;
      v17 = enrollmentType;
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment Enrollment skipped with enrollmentType: %lu", &v14, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v7 = self->_enrollmentType;
      v14 = 136315394;
      v15 = "[VTUIGMEnrollmentViewController _userDidTapContinueButton]";
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment User did tap continue button with enrollmentType: %lu", &v14, 0x16u);
    }

    if ((self->_enrollmentType | 2) == 3)
    {
      [(GMAvailabilityViewModel *)self->_viewModel optInGM];
      [MEMORY[0x277CFB460] setHasEngagedWithCFU:1];
    }
  }

  v8 = [MEMORY[0x277D77E80] isEligibleForExperience:0];
  v9 = AFVisualIntelligenceCameraRestricted();
  if (!+[_TtC14VoiceTriggerUI23GMAvailabilityViewModel isBuddy]|| ((self->_enrollmentType | 2) == 3 ? (v10 = v8 == 0) : (v10 = 1), v10))
  {
    if (+[_TtC14VoiceTriggerUI23GMAvailabilityViewModel isBuddy]&& (self->_enrollmentType | 2) == 3 && (v9 & 1) == 0 && [(GMAvailabilityViewModel *)self->_viewModel shouldShowVisualIntelligenceIntro])
    {
      [(VTUIGMEnrollmentViewController *)self _pushVisualIntelligenceIntro];
    }

    else if (+[_TtC14VoiceTriggerUI23GMAvailabilityViewModel isBuddy]&& !self->_enrollmentType)
    {
      [(VTUIGMEnrollmentViewController *)self _enrollUserIntoWaitlist];
    }

    else
    {
      [(VTUIGMEnrollmentViewController *)self _continueFromGMEnrollment];
    }
  }

  else
  {
    v11 = [MEMORY[0x277D77E80] onboardingControllerForExperience:0];
    summarizationOnboardingController = self->_summarizationOnboardingController;
    self->_summarizationOnboardingController = v11;

    [(UNNotificationOnboardingController *)self->_summarizationOnboardingController setDelegate:self];
    navigationController = [(VTUIGMEnrollmentViewController *)self navigationController];
    [navigationController pushViewController:self->_summarizationOnboardingController animated:1];
  }

  if (!self->_isSkippingIntroduction)
  {
    [(GMAvailabilityViewModel *)self->_viewModel sendContinueEventWithEnrollmentType:self->_enrollmentType];
  }
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = VTUIGMEnrollmentViewController;
  [(OBBaseWelcomeController *)&v10 viewDidLoad];
  if (self->_isSkippingIntroduction)
  {
    headerView = [(VTUIGMEnrollmentViewController *)self headerView];
    [headerView setHidden:1];

    buttonTray = [(VTUIGMEnrollmentViewController *)self buttonTray];
    [buttonTray setHidden:1];
  }

  else
  {
    [(VTUIGMEnrollmentViewController *)self _setupContent];
  }

  v5 = +[VTUIStyle sharedStyle];
  if (![v5 isIpad] && -[GMAvailabilityViewModel isBuddyOrCFU](self->_viewModel, "isBuddyOrCFU") && self->_enrollmentType == 1)
  {

LABEL_10:
    [(VTUIGMEnrollmentViewController *)self setOverrideUserInterfaceStyle:2];
    goto LABEL_12;
  }

  if (self->_enrollmentType == 1)
  {
    hasCameraButton = [(GMAvailabilityViewModel *)self->_viewModel hasCameraButton];

    if (!hasCameraButton)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_12:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 siriGMIntroViewControllerPresented:self withEnrollmentType:self->_enrollmentType];
  }

  [(GMAvailabilityViewModel *)self->_viewModel sendViewDidLoadEventWithEnrollmentType:self->_enrollmentType];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VTUIGMEnrollmentViewController;
  [(VTUIGMEnrollmentViewController *)&v4 viewWillAppear:appear];
  if (self->_isSkippingIntroduction)
  {
    [(VTUIGMEnrollmentViewController *)self _userDidTapContinueButton];
  }
}

- (void)_continueFromGMEnrollment
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 siriGMIntroViewControllerContinuePressed:self];
  }

  else
  {

    [(VTUIGMEnrollmentViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)onboardingControllerRequestsCancellation:(id)cancellation
{
  if ((AFVisualIntelligenceCameraRestricted() & 1) != 0 || ![(GMAvailabilityViewModel *)self->_viewModel shouldShowVisualIntelligenceIntro])
  {

    [(VTUIGMEnrollmentViewController *)self _continueFromGMEnrollment];
  }

  else
  {

    [(VTUIGMEnrollmentViewController *)self _pushVisualIntelligenceIntro];
  }
}

- (void)onboardingControllerRequestsGoingBack:(id)back
{
  v27 = *MEMORY[0x277D85DE8];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  hidesBackButton = [navigationItem hidesBackButton];

  navigationController = [(VTUIGMEnrollmentViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v8 = [viewControllers count];

  v9 = v8 - 3;
  if (hidesBackButton)
  {
    v9 = v8 - 2;
  }

  if (self->_isSkippingIntroduction)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8 - 2;
  }

  if (v10 < 0)
  {
    v20 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[VTUIGMEnrollmentViewController onboardingControllerRequestsGoingBack:]";
      v25 = 2048;
      v26 = v10;
      _os_log_impl(&dword_2728BC000, v20, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment Unexpected view controller index that we can't pop to: %ld", buf, 0x16u);
    }
  }

  else
  {
    if (hidesBackButton)
    {
      navigationController2 = [(VTUIGMEnrollmentViewController *)self navigationController];
      viewControllers2 = [navigationController2 viewControllers];
      v13 = [viewControllers2 indexOfObject:self];

      if (v10 <= v13)
      {
        v10 = v13;
      }
    }

    navigationController3 = [(VTUIGMEnrollmentViewController *)self navigationController];
    viewControllers3 = [navigationController3 viewControllers];
    v22 = [viewControllers3 objectAtIndex:v10];

    navigationController4 = [(VTUIGMEnrollmentViewController *)self navigationController];
    v17 = [navigationController4 popToViewController:v22 animated:1];

    navigationController5 = [(VTUIGMEnrollmentViewController *)self navigationController];
    topViewController = [navigationController5 topViewController];

    if ([topViewController conformsToProtocol:&unk_288214D88])
    {
      objc_storeStrong(&self->_summarizationOnboardingController, topViewController);
      [(UNNotificationOnboardingController *)self->_summarizationOnboardingController setDelegate:self];
    }

    else
    {
      summarizationOnboardingController = self->_summarizationOnboardingController;
      self->_summarizationOnboardingController = 0;
    }
  }
}

- (void)onboardingController:(id)controller requestsPushingTo:(id)to
{
  toCopy = to;
  [(UNNotificationOnboardingController *)self->_summarizationOnboardingController setDelegate:0];
  [toCopy setDelegate:self];
  summarizationOnboardingController = self->_summarizationOnboardingController;
  self->_summarizationOnboardingController = toCopy;
  v7 = toCopy;

  navigationController = [(VTUIGMEnrollmentViewController *)self navigationController];
  [navigationController pushViewController:v7 animated:1];
}

- (void)onboardingControllerDidFinish:(id)finish
{
  if ((AFVisualIntelligenceCameraRestricted() & 1) != 0 || ![(GMAvailabilityViewModel *)self->_viewModel shouldShowVisualIntelligenceIntro])
  {

    [(VTUIGMEnrollmentViewController *)self _continueFromGMEnrollment];
  }

  else
  {

    [(VTUIGMEnrollmentViewController *)self _pushVisualIntelligenceIntro];
  }
}

- (void)_pushVisualIntelligenceIntro
{
  v5 = [[_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController alloc] initWithDelegate:self];
  if (self->_isSkippingIntroduction)
  {
    navigationItem = [(OBBaseWelcomeController *)v5 navigationItem];
    [navigationItem setHidesBackButton:1];
  }

  navigationController = [(VTUIGMEnrollmentViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

@end