@interface HPSSpatialProfileEnrollmentController
- (BOOL)checkAndShowInEarPopup;
- (BOOL)isEarMovingFast;
- (BOOL)isEarOccluded;
- (BOOL)isEarTooClose;
- (BOOL)isEarTooFar;
- (BOOL)isPresentingWrongEar;
- (HPSSpatialProfileEnrollmentController)init;
- (id)angleArrayToBinaryString:(id)string;
- (id)getBudsInEarString;
- (void)alertEarDistanceWarning:(int)warning;
- (void)alertEarEnrollWarning;
- (void)alertOcclusionWarning;
- (void)bluetoothDidBecomeAvailable;
- (void)cancelBlur;
- (void)cancelSpatialAudioProfile;
- (void)captureViewTimerDidFire;
- (void)checkVolume;
- (void)cleanUpSpinner;
- (void)clearBoundingBox;
- (void)continueButtonTapped;
- (void)continueEarDistanceWarning;
- (void)continueOcclusionWarning;
- (void)didReceiveCaptureVideo:(id)video colorImage:(id)image depthImage:(id)depthImage faceObject:(id)object;
- (void)didReceiveStateUpdateForSession:(id)session stateInfo:(id)info;
- (void)earCentralPartCaptured;
- (void)earLeftPartCaptured;
- (void)earRightPartCaptured;
- (void)fillFacePillsByDirection:(int)direction;
- (void)forceBlur;
- (void)hideContinueButton;
- (void)hideEarDistanceWarningContinueButton;
- (void)hideEarPillsDots;
- (void)hideOcclusionContinueButton;
- (void)moveToStep:(int)step;
- (void)nudgeEar;
- (void)pauseEnrollment;
- (void)playEarCaptureSoundWithCompletion:(id)completion;
- (void)prepareSpinner;
- (void)pulseEarBoundingBox;
- (void)resetVolume;
- (void)restartOcclusionWarnCoolDownTimer;
- (void)resumeEnrollment;
- (void)retrieveProfile;
- (void)sendTipKitSignal;
- (void)setupAudioVideo;
- (void)setupEarBoundingBox;
- (void)setupEarTutorialView;
- (void)setupEnrollController;
- (void)setupEnrollViewUI;
- (void)setupWelcomeContentView;
- (void)showBudsInEarPopUp:(id)up;
- (void)showContinueButton;
- (void)showEarDistanceWarningContinueButton;
- (void)showEarPillsDots;
- (void)showLandscapeAlert;
- (void)showOcclusionContinueButton;
- (void)startCaptureViewTimer;
- (void)startEarDistanceWarnCoolDownTimer;
- (void)startEarEnrollWarningTimer;
- (void)startEarEnrollmentNudgeTimer;
- (void)startEnrollGuidanceTimer;
- (void)startEnrollment;
- (void)startFaceInFrameHandlerTimer;
- (void)startOcclusionWarnCoolDownTimer;
- (void)startPostProcessSpinner;
- (void)startPostProcessTimer;
- (void)startTutorialResumeEnrollTimer;
- (void)startWelcomeSpinner;
- (void)stopCaptureViewTimer;
- (void)stopEarDistanceWarnCoolDownTimer;
- (void)stopEarEnrollmentNudgeTimer;
- (void)stopEnrollGuidanceTimer;
- (void)stopEnrollment;
- (void)stopFaceInFrameHandlerTimer;
- (void)stopOcclusionWarnCoolDownTimer;
- (void)stopPostProcessSpinner;
- (void)stopPostProcessTimer;
- (void)stopTimers;
- (void)stopTutorialResumeEnrollTimer;
- (void)stopWelcomeSpinner;
- (void)syncProfile;
- (void)translateEarBoundingBox:(CGRect)box previewLayerBoundingBox:(CGRect)boundingBox;
- (void)triggerEarDistanceWarnCoolDownTimer;
- (void)triggerEarEnrollmentNudgeTimer;
- (void)triggerEnrollGuidanceTimer;
- (void)triggerFaceInFrameHandlerTimeout;
- (void)triggerOcclusionWarnCoolDownTimer;
- (void)triggerPostProcessTimeout;
- (void)triggerstartEarEnrollWarningTimer;
- (void)tutorialResumeEnrollTimerDidFire;
- (void)updateBoundingBoxHiddenStatus;
- (void)updateCurrentTrackingEar:(id)ear rightEarPoseStatus:(id)status earBoundingBox:(CGRect)box earStatus:(int)earStatus;
- (void)updateEarEnrollText;
- (void)updateFaceTrackingStatus:(CGRect)status;
- (void)userCancelEnrollment;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation HPSSpatialProfileEnrollmentController

- (HPSSpatialProfileEnrollmentController)init
{
  if (!self)
  {
    return 0;
  }

  v41.receiver = self;
  v41.super_class = HPSSpatialProfileEnrollmentController;
  v2 = [(HPSSpatialProfileEnrollmentController *)&v41 init];
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  v4 = *(v2 + 177);
  *(v2 + 177) = mEMORY[0x277CF3248];

  v2[1424] = 0;
  v2[1425] = 0;
  v2[1426] = 0;
  v5 = *(v2 + 138);
  *(v2 + 138) = 0;

  v6 = *(v2 + 131);
  *(v2 + 131) = 0;

  v7 = *(v2 + 132);
  *(v2 + 132) = 0;

  v8 = *(v2 + 133);
  *(v2 + 133) = 0;

  v9 = *(v2 + 145);
  *(v2 + 145) = 0;

  v10 = *(v2 + 143);
  *(v2 + 143) = 0;

  *(v2 + 313) = 0;
  *(v2 + 314) = 0;
  v11 = *(v2 + 163);
  *(v2 + 163) = 0;

  v2[1317] = 0;
  v2[1318] = 0;
  v2[1319] = 0;
  v2[1320] = 0;
  v2[1321] = 0;
  v2[1232] = 0;
  v2[1233] = 0;
  *(v2 + 328) = 0;
  v2[1316] = 0;
  *(v2 + 166) = 0;
  v2[1352] = 0;
  v2[1353] = 0;
  v2[1354] = 0;
  v2[1355] = 0;
  v2[1356] = 0;
  v2[1357] = 0;
  v2[1358] = 0;
  *(v2 + 334) = 0;
  v2[1359] = 0;
  v2[1360] = 0;
  v2[1361] = 0;
  v2[1362] = 0;
  v2[1363] = 0;
  v2[1364] = 0;
  v2[1365] = 0;
  v2[1366] = 0;
  *(v2 + 342) = 0;
  v2[1372] = 0;
  v2[1373] = 0;
  v2[1374] = 0;
  v2[1375] = 0;
  v2[1376] = 0;
  v2[1377] = 0;
  v2[1378] = 0;
  v2[1380] = 0;
  v2[1379] = 0;
  *(v2 + 346) = 0;
  v2[1408] = 0;
  *(v2 + 347) = 0;
  v2[1512] = 0;
  v2[1513] = 0;
  v12 = *(v2 + 190);
  *(v2 + 190) = 0;

  v13 = *(v2 + 191);
  *(v2 + 191) = 0;

  v2[1427] = 0;
  v2[1440] = 0;
  v2[1441] = 10;
  *(v2 + 1464) = 0u;
  *(v2 + 1480) = 0u;
  v2[1442] = 0;
  v2[1460] = 0;
  v2[1443] = 0;
  v2[1456] = 0;
  v2[1457] = 0;
  v2[1458] = 0;
  v2[1459] = 0;
  *(v2 + 188) = 0;
  v14 = *(v2 + 187);
  *(v2 + 187) = 0;

  *(v2 + 192) = 0xC059000000000000;
  *(v2 + 193) = 0xC059000000000000;
  *(v2 + 194) = 0xC059000000000000;
  *(v2 + 195) = 0xC059000000000000;
  *(v2 + 197) = 0x3FE0000000000000;
  *(v2 + 198) = 0xC059000000000000;
  *(v2 + 199) = 0xC059000000000000;
  v15 = *(v2 + 200);
  *(v2 + 200) = 0;

  v16 = dispatch_queue_create("com.apple.HeadphoneSettings.stepSerialQueue", 0);
  v17 = *(v2 + 174);
  *(v2 + 174) = v16;

  v18 = dispatch_queue_create("com.apple.HeadphoneSettings.visualDetectionQueue", 0);
  v19 = *(v2 + 175);
  *(v2 + 175) = v18;

  *(v2 + 158) = 0;
  v20 = objc_alloc(MEMORY[0x277CBEA60]);
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:30.0];
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:25.0];
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:20.0];
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:15.0];
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:10.0];
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:5.0];
  v27 = [v20 initWithObjects:{v21, v22, v23, v24, v25, v26, 0}];
  v28 = *(v2 + 201);
  *(v2 + 201) = v27;

  v29 = objc_alloc(MEMORY[0x277CBEA60]);
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:0.5];
  v31 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:1.5];
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:2.0];
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:2.5];
  v35 = [MEMORY[0x277CCABB0] numberWithDouble:3.0];
  v36 = [v29 initWithObjects:{v30, v31, v32, v33, v34, v35, 0}];
  v37 = *(v2 + 202);
  *(v2 + 202) = v36;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel_cancelSpatialAudioProfile name:*MEMORY[0x277D76660] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v2 selector:sel_bluetoothDidBecomeAvailable name:*MEMORY[0x277CF3168] object:0];

  return v2;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HPSSpatialProfileEnrollmentController;
  [(HPSSpatialProfileEnrollmentController *)&v9 viewDidLoad];
  view = [(HPSSpatialProfileEnrollmentController *)self view];
  [view size];
  v5 = v4;
  view2 = [(HPSSpatialProfileEnrollmentController *)self view];
  [view2 size];
  v8 = v7;

  if (v5 <= v8)
  {
    [(HPSSpatialProfileEnrollmentController *)self setupEnrollController];
    [(HPSSpatialProfileEnrollmentController *)self setupWelcomeContentView];
    [(HPSSpatialProfileEnrollmentController *)self setupAudioVideo];
    [(HPSSpatialProfileEnrollmentController *)self setupEarTutorialView];
    [(HPSSpatialProfileEnrollmentController *)self setupEarBoundingBox];
    [(HPSSpatialProfileEnrollmentController *)self moveToStep:0];
  }

  else
  {
    [(HPSSpatialProfileEnrollmentController *)self showLandscapeAlert];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = HPSSpatialProfileEnrollmentController;
  [(HPSSpatialProfileEnrollmentController *)&v3 viewDidAppear:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Enrollment Controller viewDidDisappear", v5, 2u);
  }

  [(HPSSpatialProfileEnrollmentController *)self cancelSpatialAudioProfile];
}

- (void)setupEnrollController
{
  v235[47] = *MEMORY[0x277D85DE8];
  if (!self->_enrollmentSession)
  {
    v3 = objc_alloc_init(MEMORY[0x277D0F968]);
    enrollmentSession = self->_enrollmentSession;
    self->_enrollmentSession = v3;

    [(HRTFEnrollmentSession *)self->_enrollmentSession setDelegate:self];
  }

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_userCancelEnrollment];
  navigationItem = [(HPSSpatialProfileEnrollmentController *)self navigationItem];
  v229 = v5;
  [navigationItem setLeftBarButtonItem:v5];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(HPSSpatialProfileEnrollmentController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v9 = objc_alloc(MEMORY[0x277D75D18]);
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
  enrollContentView = self->_enrollContentView;
  self->_enrollContentView = v14;

  [(UIView *)self->_enrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v10, v11, v12, v13}];
  scrollContentView = self->_scrollContentView;
  self->_scrollContentView = v16;

  [(UIView *)self->_scrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{v10, v11, v12, v13}];
  scrollView = self->_scrollView;
  self->_scrollView = v18;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = objc_alloc_init(MEMORY[0x277D75D18]);
  scrollInnerContentView = self->_scrollInnerContentView;
  self->_scrollInnerContentView = v20;

  [(UIView *)self->_scrollInnerContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = objc_alloc_init(MEMORY[0x277D75A68]);
  scrollInnerStackView = self->_scrollInnerStackView;
  self->_scrollInnerStackView = v22;

  [(UIStackView *)self->_scrollInnerStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_scrollInnerStackView setAxis:1];
  [(UIStackView *)self->_scrollInnerStackView setAlignment:3];
  [(UIStackView *)self->_scrollInnerStackView setDistribution:3];
  v24 = objc_alloc(MEMORY[0x277D37640]);
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v29 = [v24 initWithTitle:v26 detailText:v28 icon:0];
  infoView = self->_infoView;
  self->_infoView = v29;

  [(OBHeaderView *)self->_infoView setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = objc_alloc_init(MEMORY[0x277D756B8]);
  learnMoreView = self->_learnMoreView;
  self->_learnMoreView = v31;

  [(UILabel *)self->_learnMoreView setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [v33 localizedStringForKey:@"WELCOME_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [(UILabel *)self->_learnMoreView setText:v34];

  [(UILabel *)self->_learnMoreView setLineBreakMode:0];
  [(UILabel *)self->_learnMoreView setNumberOfLines:0];
  v35 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [(UILabel *)self->_learnMoreView setFont:v35];

  [(UILabel *)self->_learnMoreView setAdjustsFontForContentSizeCategory:1];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_learnMoreView setTextColor:systemGrayColor];

  [(UILabel *)self->_learnMoreView setTextAlignment:1];
  boldButton = [MEMORY[0x277D37618] boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = boldButton;

  v39 = self->_continueButton;
  v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v41 = [v40 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [(OBTrayButton *)v39 setTitle:v41 forState:0];

  [(OBTrayButton *)self->_continueButton addTarget:self action:sel_continueButtonTapped forControlEvents:64];
  boldButton2 = [MEMORY[0x277D37618] boldButton];
  occlusionContinueButton = self->_occlusionContinueButton;
  self->_occlusionContinueButton = boldButton2;

  v44 = self->_occlusionContinueButton;
  v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v46 = [v45 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [(OBTrayButton *)v44 setTitle:v46 forState:0];

  [(OBTrayButton *)self->_occlusionContinueButton addTarget:self action:sel_continueOcclusionWarning forControlEvents:64];
  boldButton3 = [MEMORY[0x277D37618] boldButton];
  earDistanceWarnContinueButton = self->_earDistanceWarnContinueButton;
  self->_earDistanceWarnContinueButton = boldButton3;

  v49 = self->_earDistanceWarnContinueButton;
  v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v51 = [v50 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [(OBTrayButton *)v49 setTitle:v51 forState:0];

  [(OBTrayButton *)self->_earDistanceWarnContinueButton addTarget:self action:sel_continueEarDistanceWarning forControlEvents:64];
  v52 = objc_alloc(MEMORY[0x277D75D68]);
  v53 = [MEMORY[0x277D75210] effectWithStyle:6];
  v54 = [v52 initWithEffect:v53];
  buttonTrayEffectView = self->_buttonTrayEffectView;
  self->_buttonTrayEffectView = v54;

  [(UIVisualEffectView *)self->_buttonTrayEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
  v56 = objc_alloc_init(MEMORY[0x277D75D18]);
  spacerViewFirst = self->_spacerViewFirst;
  self->_spacerViewFirst = v56;

  [(UIView *)self->_spacerViewFirst setTranslatesAutoresizingMaskIntoConstraints:0];
  v58 = objc_alloc_init(MEMORY[0x277D75D18]);
  spacerViewSecond = self->_spacerViewSecond;
  self->_spacerViewSecond = v58;

  [(UIView *)self->_spacerViewSecond setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_debugMode)
  {
    layer = [(UIView *)self->_enrollContentView layer];
    [layer setBorderWidth:1.0];

    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    cGColor = [systemRedColor CGColor];
    layer2 = [(UIView *)self->_enrollContentView layer];
    [layer2 setBorderColor:cGColor];

    layer3 = [(UIView *)self->_scrollContentView layer];
    [layer3 setBorderWidth:1.0];

    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    cGColor2 = [systemBlueColor CGColor];
    layer4 = [(UIView *)self->_scrollContentView layer];
    [layer4 setBorderColor:cGColor2];

    layer5 = [(UIScrollView *)self->_scrollView layer];
    [layer5 setBorderWidth:1.0];

    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
    cGColor3 = [systemYellowColor CGColor];
    layer6 = [(UIScrollView *)self->_scrollView layer];
    [layer6 setBorderColor:cGColor3];

    layer7 = [(OBHeaderView *)self->_infoView layer];
    [layer7 setBorderWidth:2.0];

    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    cGColor4 = [systemGreenColor CGColor];
    layer8 = [(OBHeaderView *)self->_infoView layer];
    [layer8 setBorderColor:cGColor4];

    layer9 = [(UIVisualEffectView *)self->_buttonTrayEffectView layer];
    [layer9 setBorderWidth:2.0];

    systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
    cGColor5 = [systemGrayColor2 CGColor];
    layer10 = [(UIVisualEffectView *)self->_buttonTrayEffectView layer];
    [layer10 setBorderColor:cGColor5];
  }

  view2 = [(HPSSpatialProfileEnrollmentController *)self view];
  [view2 addSubview:self->_enrollContentView];

  view3 = [(HPSSpatialProfileEnrollmentController *)self view];
  [view3 addSubview:self->_scrollContentView];

  [(UIView *)self->_scrollContentView addSubview:self->_scrollView];
  [(UIView *)self->_scrollContentView addSubview:self->_buttonTrayEffectView];
  [(UIView *)self->_scrollContentView addSubview:self->_continueButton];
  [(UIView *)self->_scrollContentView addSubview:self->_occlusionContinueButton];
  [(UIView *)self->_scrollContentView addSubview:self->_earDistanceWarnContinueButton];
  [(UIScrollView *)self->_scrollView addSubview:self->_scrollInnerContentView];
  [(UIView *)self->_scrollInnerContentView addSubview:self->_scrollInnerStackView];
  [(UIStackView *)self->_scrollInnerStackView addArrangedSubview:self->_infoView];
  [(UIStackView *)self->_scrollInnerStackView addArrangedSubview:self->_spacerViewFirst];
  [(UIStackView *)self->_scrollInnerStackView addArrangedSubview:self->_learnMoreView];
  [(UIStackView *)self->_scrollInnerStackView addArrangedSubview:self->_spacerViewSecond];
  [(HPSSpatialProfileEnrollmentController *)self hideOcclusionContinueButton];
  [(HPSSpatialProfileEnrollmentController *)self hideEarDistanceWarningContinueButton];
  v169 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIView *)self->_enrollContentView topAnchor];
  view4 = [(HPSSpatialProfileEnrollmentController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v224 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v235[0] = v224;
  heightAnchor = [(UIView *)self->_enrollContentView heightAnchor];
  view5 = [(HPSSpatialProfileEnrollmentController *)self view];
  [view5 frame];
  v221 = [heightAnchor constraintEqualToConstant:v82];
  v235[1] = v221;
  leadingAnchor = [(UIView *)self->_enrollContentView leadingAnchor];
  view6 = [(HPSSpatialProfileEnrollmentController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v217 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v235[2] = v217;
  trailingAnchor = [(UIView *)self->_enrollContentView trailingAnchor];
  view7 = [(HPSSpatialProfileEnrollmentController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v213 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v235[3] = v213;
  topAnchor3 = [(UIView *)self->_scrollContentView topAnchor];
  bottomAnchor = [(UIView *)self->_enrollContentView bottomAnchor];
  v211 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:24.0];
  v235[4] = v211;
  leadingAnchor3 = [(UIView *)self->_scrollContentView leadingAnchor];
  view8 = [(HPSSpatialProfileEnrollmentController *)self view];
  leadingAnchor4 = [view8 leadingAnchor];
  v207 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:24.0];
  v235[5] = v207;
  trailingAnchor3 = [(UIView *)self->_scrollContentView trailingAnchor];
  view9 = [(HPSSpatialProfileEnrollmentController *)self view];
  trailingAnchor4 = [view9 trailingAnchor];
  v203 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-24.0];
  v235[6] = v203;
  bottomAnchor2 = [(UIView *)self->_scrollContentView bottomAnchor];
  view10 = [(HPSSpatialProfileEnrollmentController *)self view];
  safeAreaLayoutGuide2 = [view10 safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide2 bottomAnchor];
  v198 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v235[7] = v198;
  leadingAnchor5 = [(OBTrayButton *)self->_continueButton leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_scrollContentView leadingAnchor];
  v195 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v235[8] = v195;
  trailingAnchor5 = [(OBTrayButton *)self->_continueButton trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_scrollContentView trailingAnchor];
  v192 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v235[9] = v192;
  bottomAnchor4 = [(OBTrayButton *)self->_continueButton bottomAnchor];
  bottomAnchor5 = [(UIView *)self->_scrollContentView bottomAnchor];
  v189 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v235[10] = v189;
  leadingAnchor7 = [(OBTrayButton *)self->_occlusionContinueButton leadingAnchor];
  leadingAnchor8 = [(UIView *)self->_scrollContentView leadingAnchor];
  v186 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v235[11] = v186;
  trailingAnchor7 = [(OBTrayButton *)self->_occlusionContinueButton trailingAnchor];
  trailingAnchor8 = [(UIView *)self->_scrollContentView trailingAnchor];
  v183 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v235[12] = v183;
  bottomAnchor6 = [(OBTrayButton *)self->_occlusionContinueButton bottomAnchor];
  bottomAnchor7 = [(UIView *)self->_scrollContentView bottomAnchor];
  v180 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v235[13] = v180;
  leadingAnchor9 = [(OBTrayButton *)self->_earDistanceWarnContinueButton leadingAnchor];
  leadingAnchor10 = [(UIView *)self->_scrollContentView leadingAnchor];
  v176 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v235[14] = v176;
  trailingAnchor9 = [(OBTrayButton *)self->_earDistanceWarnContinueButton trailingAnchor];
  trailingAnchor10 = [(UIView *)self->_scrollContentView trailingAnchor];
  v173 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v235[15] = v173;
  bottomAnchor8 = [(OBTrayButton *)self->_earDistanceWarnContinueButton bottomAnchor];
  bottomAnchor9 = [(UIView *)self->_scrollContentView bottomAnchor];
  v168 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
  v235[16] = v168;
  leadingAnchor11 = [(UIVisualEffectView *)self->_buttonTrayEffectView leadingAnchor];
  view11 = [(HPSSpatialProfileEnrollmentController *)self view];
  leadingAnchor12 = [view11 leadingAnchor];
  v164 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v235[17] = v164;
  trailingAnchor11 = [(UIVisualEffectView *)self->_buttonTrayEffectView trailingAnchor];
  view12 = [(HPSSpatialProfileEnrollmentController *)self view];
  trailingAnchor12 = [view12 trailingAnchor];
  v160 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  v235[18] = v160;
  topAnchor4 = [(UIVisualEffectView *)self->_buttonTrayEffectView topAnchor];
  topAnchor5 = [(OBTrayButton *)self->_continueButton topAnchor];
  v158 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:-24.0];
  v235[19] = v158;
  topAnchor6 = [(UIVisualEffectView *)self->_buttonTrayEffectView topAnchor];
  topAnchor7 = [(OBTrayButton *)self->_occlusionContinueButton topAnchor];
  v155 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:-24.0];
  v235[20] = v155;
  topAnchor8 = [(UIVisualEffectView *)self->_buttonTrayEffectView topAnchor];
  topAnchor9 = [(OBTrayButton *)self->_earDistanceWarnContinueButton topAnchor];
  v153 = [topAnchor8 constraintEqualToAnchor:topAnchor9 constant:-24.0];
  v235[21] = v153;
  bottomAnchor10 = [(UIVisualEffectView *)self->_buttonTrayEffectView bottomAnchor];
  view13 = [(HPSSpatialProfileEnrollmentController *)self view];
  bottomAnchor11 = [view13 bottomAnchor];
  v149 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
  v235[22] = v149;
  topAnchor10 = [(UIScrollView *)self->_scrollView topAnchor];
  topAnchor11 = [(UIView *)self->_scrollContentView topAnchor];
  v146 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
  v235[23] = v146;
  bottomAnchor12 = [(UIScrollView *)self->_scrollView bottomAnchor];
  topAnchor12 = [(UIVisualEffectView *)self->_buttonTrayEffectView topAnchor];
  v143 = [bottomAnchor12 constraintEqualToAnchor:topAnchor12 constant:24.0];
  v235[24] = v143;
  leadingAnchor13 = [(UIScrollView *)self->_scrollView leadingAnchor];
  leadingAnchor14 = [(UIView *)self->_scrollContentView leadingAnchor];
  v140 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
  v235[25] = v140;
  trailingAnchor13 = [(UIScrollView *)self->_scrollView trailingAnchor];
  trailingAnchor14 = [(UIView *)self->_scrollContentView trailingAnchor];
  v137 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
  v235[26] = v137;
  topAnchor13 = [(UIView *)self->_scrollInnerContentView topAnchor];
  topAnchor14 = [(UIScrollView *)self->_scrollView topAnchor];
  v134 = [topAnchor13 constraintEqualToAnchor:topAnchor14];
  v235[27] = v134;
  bottomAnchor13 = [(UIView *)self->_scrollInnerContentView bottomAnchor];
  bottomAnchor14 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v131 = [bottomAnchor13 constraintEqualToAnchor:bottomAnchor14];
  v235[28] = v131;
  leadingAnchor15 = [(UIView *)self->_scrollInnerContentView leadingAnchor];
  leadingAnchor16 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v128 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16];
  v235[29] = v128;
  trailingAnchor15 = [(UIView *)self->_scrollInnerContentView trailingAnchor];
  trailingAnchor16 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v125 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16];
  v235[30] = v125;
  widthAnchor = [(UIView *)self->_scrollInnerContentView widthAnchor];
  widthAnchor2 = [(UIScrollView *)self->_scrollView widthAnchor];
  v123 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v235[31] = v123;
  topAnchor15 = [(UIStackView *)self->_scrollInnerStackView topAnchor];
  topAnchor16 = [(UIScrollView *)self->_scrollView topAnchor];
  v120 = [topAnchor15 constraintEqualToAnchor:topAnchor16];
  v235[32] = v120;
  bottomAnchor15 = [(UIStackView *)self->_scrollInnerStackView bottomAnchor];
  bottomAnchor16 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v117 = [bottomAnchor15 constraintEqualToAnchor:bottomAnchor16];
  v235[33] = v117;
  leadingAnchor17 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  leadingAnchor18 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v114 = [leadingAnchor17 constraintEqualToAnchor:leadingAnchor18];
  v235[34] = v114;
  trailingAnchor17 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  trailingAnchor18 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v111 = [trailingAnchor17 constraintEqualToAnchor:trailingAnchor18];
  v235[35] = v111;
  leadingAnchor19 = [(OBHeaderView *)self->_infoView leadingAnchor];
  leadingAnchor20 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  v108 = [leadingAnchor19 constraintEqualToAnchor:leadingAnchor20];
  v235[36] = v108;
  trailingAnchor19 = [(OBHeaderView *)self->_infoView trailingAnchor];
  trailingAnchor20 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  v106 = [trailingAnchor19 constraintEqualToAnchor:trailingAnchor20];
  v235[37] = v106;
  leadingAnchor21 = [(UILabel *)self->_learnMoreView leadingAnchor];
  leadingAnchor22 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  v103 = [leadingAnchor21 constraintEqualToAnchor:leadingAnchor22];
  v235[38] = v103;
  trailingAnchor21 = [(UILabel *)self->_learnMoreView trailingAnchor];
  trailingAnchor22 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  v100 = [trailingAnchor21 constraintEqualToAnchor:trailingAnchor22];
  v235[39] = v100;
  heightAnchor2 = [(UILabel *)self->_learnMoreView heightAnchor];
  v99 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:50.0];
  v235[40] = v99;
  leadingAnchor23 = [(UIView *)self->_spacerViewFirst leadingAnchor];
  leadingAnchor24 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  v96 = [leadingAnchor23 constraintEqualToAnchor:leadingAnchor24];
  v235[41] = v96;
  trailingAnchor23 = [(UIView *)self->_spacerViewFirst trailingAnchor];
  trailingAnchor24 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  v93 = [trailingAnchor23 constraintEqualToAnchor:trailingAnchor24];
  v235[42] = v93;
  heightAnchor3 = [(UIView *)self->_spacerViewFirst heightAnchor];
  v83 = [heightAnchor3 constraintEqualToConstant:24.0];
  v235[43] = v83;
  leadingAnchor25 = [(UIView *)self->_spacerViewSecond leadingAnchor];
  leadingAnchor26 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  v86 = [leadingAnchor25 constraintEqualToAnchor:leadingAnchor26];
  v235[44] = v86;
  trailingAnchor25 = [(UIView *)self->_spacerViewSecond trailingAnchor];
  trailingAnchor26 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  v89 = [trailingAnchor25 constraintEqualToAnchor:trailingAnchor26];
  v235[45] = v89;
  heightAnchor4 = [(UIView *)self->_spacerViewSecond heightAnchor];
  v91 = [heightAnchor4 constraintEqualToConstant:24.0];
  v235[46] = v91;
  v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v235 count:47];
  [v169 activateConstraints:v92];
}

- (void)setupWelcomeContentView
{
  v34[8] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  welcomeContentView = self->_welcomeContentView;
  self->_welcomeContentView = v3;

  [(UIView *)self->_welcomeContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_enrollContentView addSubview:self->_welcomeContentView];
  v5 = MEMORY[0x277D755B8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v33 = [v5 imageNamed:@"SpatialProfileIcon" inBundle:v6 compatibleWithTraitCollection:0];

  v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v33];
  welcomeImageView = self->_welcomeImageView;
  self->_welcomeImageView = v7;

  [(UIImageView *)self->_welcomeImageView setContentMode:1];
  [(UIImageView *)self->_welcomeImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_welcomeContentView addSubview:self->_welcomeImageView];
  v23 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UIView *)self->_welcomeContentView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_enrollContentView leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v34[0] = v30;
  trailingAnchor = [(UIView *)self->_welcomeContentView trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_enrollContentView trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v34[1] = v27;
  topAnchor = [(UIView *)self->_welcomeContentView topAnchor];
  topAnchor2 = [(UIView *)self->_enrollContentView topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v34[2] = v24;
  bottomAnchor = [(UIView *)self->_welcomeContentView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_enrollContentView bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v34[3] = v20;
  widthAnchor = [(UIImageView *)self->_welcomeImageView widthAnchor];
  v9 = [widthAnchor constraintEqualToConstant:240.0];
  v34[4] = v9;
  heightAnchor = [(UIImageView *)self->_welcomeImageView heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:240.0];
  v34[5] = v11;
  centerXAnchor = [(UIImageView *)self->_welcomeImageView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_welcomeContentView centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v34[6] = v14;
  centerYAnchor = [(UIImageView *)self->_welcomeImageView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_welcomeContentView centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v34[7] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:8];
  [v23 activateConstraints:v18];
}

- (void)setupAudioVideo
{
  v3 = objc_alloc_init(HPSSpatialProfileSoundHapticManager);
  soundHapticManager = self->_soundHapticManager;
  self->_soundHapticManager = v3;

  [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager start];
  v5 = objc_alloc_init(HPSSpatialProfileVideoCaptureSession);
  videoCaptureSession = self->videoCaptureSession;
  self->videoCaptureSession = v5;

  [(HPSSpatialProfileEnrollmentController *)self checkVolume];
}

- (void)checkVolume
{
  v16 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  p_initialVolume = &self->_initialVolume;
  v5 = [mEMORY[0x277D26E58] getVolume:&self->_initialVolume forCategory:@"Audio/Video"];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *p_initialVolume;
      v14 = 134217984;
      v15 = v9;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Initial Volume: %f", &v14, 0xCu);
    }

    if (*p_initialVolume < 0.5)
    {
      v11 = sharedBluetoothSettingsLogComponent(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        v15 = 0.5;
        _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Initial Volume Too Low, Changing to Min Volume: %f", &v14, 0xCu);
      }

      mEMORY[0x277D26E58]2 = [MEMORY[0x277D26E58] sharedAVSystemController];
      LODWORD(v13) = 0.5;
      [mEMORY[0x277D26E58]2 setVolumeTo:@"Audio/Video" forCategory:v13];

      self->_volumeChanged = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSingeStepEnrollmentController checkVolume];
    }
  }
}

- (void)resetVolume
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_volumeChanged)
  {
    v3 = sharedBluetoothSettingsLogComponent(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      initialVolume = self->_initialVolume;
      v7 = 134217984;
      v8 = initialVolume;
      _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Volume Changed, Reset to Initial Volume: %f", &v7, 0xCu);
    }

    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    *&v6 = self->_initialVolume;
    [mEMORY[0x277D26E58] setVolumeTo:@"Audio/Video" forCategory:v6];
  }
}

- (void)setupEnrollViewUI
{
  v51[12] = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Setting up Enroll View UI", buf, 2u);
  }

  [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BKUIPearlEnrollView *)self->_enrollView setDelegate:self];
  [(BKUIPearlEnrollView *)self->_enrollView preEnrollActivate];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(BKUIPearlEnrollView *)self->_enrollView setBackgroundColor:systemBackgroundColor];

  v5 = objc_alloc_init(HPSSpatialProfileEarPillContainerView);
  earPillContainer = self->_earPillContainer;
  self->_earPillContainer = v5;

  [(HPSSpatialProfileEarPillContainerView *)self->_earPillContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HPSSpatialProfileEarPillContainerView *)self->_earPillContainer setAlpha:0.0];
  view = [(HPSSpatialProfileEnrollmentController *)self view];
  [view frame];
  v9 = v8 / 390.0;

  v10 = v9 < 1.0;
  if (v9 >= 1.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 10.0;
  }

  if (v10)
  {
    v12 = 85.0;
  }

  else
  {
    v12 = 100.0;
  }

  v13 = [[HPSSpatialProfileEarDotsMovieView alloc] initWithFrame:0.0, 0.0, 345.0, v12];
  earDotsMovieView = self->_earDotsMovieView;
  self->_earDotsMovieView = v13;

  [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView setAlpha:0.0];
  [(UIView *)self->_enrollContentView addSubview:self->_enrollView];
  [(UIView *)self->_enrollContentView addSubview:self->_earPillContainer];
  [(UIView *)self->_enrollContentView addSubview:self->_earDotsMovieView];
  v37 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_enrollContentView leadingAnchor];
  v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v51[0] = v47;
  trailingAnchor = [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_enrollContentView trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v51[1] = v44;
  topAnchor = [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView topAnchor];
  topAnchor2 = [(UIView *)self->_enrollContentView topAnchor];
  v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v51[2] = v41;
  bottomAnchor = [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_enrollContentView bottomAnchor];
  v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v51[3] = v38;
  widthAnchor = [(HPSSpatialProfileEarPillContainerView *)self->_earPillContainer widthAnchor];
  v35 = [widthAnchor constraintEqualToConstant:172.5];
  v51[4] = v35;
  heightAnchor = [(HPSSpatialProfileEarPillContainerView *)self->_earPillContainer heightAnchor];
  v33 = [heightAnchor constraintEqualToConstant:25.0];
  v51[5] = v33;
  centerXAnchor = [(HPSSpatialProfileEarPillContainerView *)self->_earPillContainer centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_enrollContentView centerXAnchor];
  v30 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v51[6] = v30;
  bottomAnchor3 = [(HPSSpatialProfileEarPillContainerView *)self->_earPillContainer bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_enrollContentView bottomAnchor];
  v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:v11];
  v51[7] = v27;
  widthAnchor2 = [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView widthAnchor];
  v25 = [widthAnchor2 constraintEqualToConstant:345.0];
  v51[8] = v25;
  heightAnchor2 = [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView heightAnchor];
  v15 = [heightAnchor2 constraintEqualToConstant:v12];
  v51[9] = v15;
  centerXAnchor3 = [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_enrollContentView centerXAnchor];
  v18 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v51[10] = v18;
  bottomAnchor5 = [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView bottomAnchor];
  bottomAnchor6 = [(UIView *)self->_enrollContentView bottomAnchor];
  v21 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v51[11] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:12];
  [v37 activateConstraints:v22];

  [(BKUIPearlEnrollView *)self->_enrollView setState:0 completion:&__block_literal_global_11];
  if (!self->_currentStep)
  {
    [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView setHidden:1];
  }

  view2 = [(HPSSpatialProfileEnrollmentController *)self view];
  [view2 setNeedsLayout];
}

- (void)setupEarTutorialView
{
  v33[8] = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Setting up Ear Tutorial", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  tutorialContentView = self->_tutorialContentView;
  self->_tutorialContentView = v4;

  [(UIView *)self->_tutorialContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_enrollContentView addSubview:self->_tutorialContentView];
  v6 = objc_alloc_init(HPSSpatialProfileEarTutorialView);
  earTutorialView = self->_earTutorialView;
  self->_earTutorialView = v6;

  [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_tutorialContentView addSubview:self->_earTutorialView];
  v22 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UIView *)self->_tutorialContentView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_enrollContentView leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v33[0] = v29;
  trailingAnchor = [(UIView *)self->_tutorialContentView trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_enrollContentView trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v33[1] = v26;
  topAnchor = [(UIView *)self->_tutorialContentView topAnchor];
  topAnchor2 = [(UIView *)self->_enrollContentView topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v33[2] = v23;
  bottomAnchor = [(UIView *)self->_tutorialContentView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_enrollContentView bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v33[3] = v19;
  widthAnchor = [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView widthAnchor];
  v17 = [widthAnchor constraintEqualToConstant:240.0];
  v33[4] = v17;
  heightAnchor = [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:106.666664];
  v33[5] = v8;
  centerXAnchor = [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_tutorialContentView centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v33[6] = v11;
  centerYAnchor = [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_tutorialContentView centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v33[7] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:8];
  [v22 activateConstraints:v15];

  [(UIView *)self->_tutorialContentView setHidden:1];
}

- (void)setupEarBoundingBox
{
  v3 = objc_alloc_init(MEMORY[0x277CF7E58]);
  earBoundingBoxView = self->_earBoundingBoxView;
  self->_earBoundingBoxView = v3;

  [(CEKSubjectIndicatorView *)self->_earBoundingBoxView setPulsing:0];
  [(CEKSubjectIndicatorView *)self->_earBoundingBoxView setInactive:1];
  [(CEKSubjectIndicatorView *)self->_earBoundingBoxView setHidden:1];
  enrollContentView = self->_enrollContentView;
  v6 = self->_earBoundingBoxView;

  [(UIView *)enrollContentView addSubview:v6];
}

- (void)startEnrollment
{
  enrollmentStarted = self->_enrollmentStarted;
  v4 = sharedBluetoothSettingsLogComponent(self);
  v5 = v4;
  if (enrollmentStarted)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSingeStepEnrollmentController startEnrollment];
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting Enrollment", v6, 2u);
    }

    self->_enrollmentStarted = 1;
    [(HRTFEnrollmentSession *)self->_enrollmentSession startSession:1 then:&__block_literal_global_90];
  }
}

void __56__HPSSpatialProfileEnrollmentController_startEnrollment__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    __56__HPSSpatialProfileEnrollmentController_startEnrollment__block_invoke_cold_1();
  }

  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Enrollment Started", v3, 2u);
  }
}

- (void)stopEnrollment
{
  enrollmentStarted = self->_enrollmentStarted;
  v4 = sharedBluetoothSettingsLogComponent(self);
  v5 = v4;
  if (enrollmentStarted)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Enrollment", v6, 2u);
    }

    self->_enrollmentStarted = 0;
    [(HRTFEnrollmentSession *)self->_enrollmentSession stopSession:&__block_literal_global_94];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSingeStepEnrollmentController stopEnrollment];
    }
  }
}

void __55__HPSSpatialProfileEnrollmentController_stopEnrollment__block_invoke(uint64_t a1)
{
  v1 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_251143000, v1, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Enrollment Stopped", v2, 2u);
  }
}

- (void)pauseEnrollment
{
  if (self->_enrollmentStarted)
  {
    if (self->_enrollmentPaused)
    {
      v3 = sharedBluetoothSettingsLogComponent(self);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [HPSSpatialProfileSingeStepEnrollmentController pauseEnrollment];
      }
    }

    else
    {
      pauseSession = [(HRTFEnrollmentSession *)self->_enrollmentSession pauseSession];
      self->_enrollmentPaused = 1;
      v3 = sharedBluetoothSettingsLogComponent(pauseSession);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Enrollment Paused", v5, 2u);
      }
    }
  }

  else
  {
    v3 = sharedBluetoothSettingsLogComponent(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSingeStepEnrollmentController pauseEnrollment];
    }
  }
}

- (void)resumeEnrollment
{
  if (self->_enrollmentStarted)
  {
    if (self->_enrollmentPaused)
    {
      resumeSession = [(HRTFEnrollmentSession *)self->_enrollmentSession resumeSession];
      self->_enrollmentPaused = 0;
      v4 = sharedBluetoothSettingsLogComponent(resumeSession);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 0;
        v5 = "Spatial Profile: Enrollment Resumed";
        v6 = &v7;
LABEL_7:
        _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      }
    }

    else
    {
      v4 = sharedBluetoothSettingsLogComponent(self);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [HPSSpatialProfileSingeStepEnrollmentController resumeEnrollment];
      }
    }
  }

  else
  {
    v4 = sharedBluetoothSettingsLogComponent(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Spatial Profile: Cannot Resume Enrollment, NOT Started";
      v6 = buf;
      goto LABEL_7;
    }
  }
}

- (void)moveToStep:(int)step
{
  stepSerialQueue = self->_stepSerialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke;
  v4[3] = &unk_2796ADDD0;
  v4[4] = self;
  stepCopy = step;
  dispatch_async(stepSerialQueue, v4);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = dispatch_group_create();
  NSLog(&cfstr_SpatialProfile_17.isa);
  dispatch_group_enter(v2);
  objc_initWeak(&location, *(a1 + 32));
  *(*(a1 + 32) + 1256) = *(*(a1 + 32) + 1252);
  *(*(a1 + 32) + 1252) = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2;
  block[3] = &unk_2796AD618;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v5 = *(a1 + 32);
  switch(*(v5 + 1252))
  {
    case 0:
      v6 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Welcome", buf, 2u);
      }

      v148[0] = MEMORY[0x277D85DD0];
      v148[1] = 3221225472;
      v148[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_98;
      v148[3] = &unk_2796AD750;
      v148[4] = *(a1 + 32);
      v149 = v2;
      v7 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v148);

      v8 = v149;
      goto LABEL_61;
    case 1:
      v26 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v26, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontView", buf, 2u);
      }

      v27 = *(a1 + 32);
      if (!*(v27 + 1296))
      {
        v28 = objc_alloc_init(HPSSpatialProfileAnalytics);
        v29 = *(a1 + 32);
        v30 = *(v29 + 1296);
        *(v29 + 1296) = v28;

        v27 = *(a1 + 32);
      }

      v145[0] = MEMORY[0x277D85DD0];
      v145[1] = 3221225472;
      v145[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_101;
      v145[3] = &unk_2796ADE70;
      v145[4] = v27;
      v146 = v3;
      v147 = v2;
      v31 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v145);

      v8 = v146;
      goto LABEL_61;
    case 2:
      v44 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v44, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCapturePositionFace", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) initFrameRateDetection];
      [*(*(a1 + 32) + 1296) updateFaceEnrollStart];
      v141[0] = MEMORY[0x277D85DD0];
      v141[1] = 3221225472;
      v141[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_112;
      v141[3] = &unk_2796ADE70;
      v45 = v3;
      v46 = *(a1 + 32);
      v142 = v45;
      v143 = v46;
      v144 = v2;
      v47 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v141);

      v8 = v142;
      goto LABEL_61;
    case 3:
      v40 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v40, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureMoveHead", buf, 2u);
      }

      v137[0] = MEMORY[0x277D85DD0];
      v137[1] = 3221225472;
      v137[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_118;
      v137[3] = &unk_2796ADE70;
      v41 = v3;
      v42 = *(a1 + 32);
      v138 = v41;
      v139 = v42;
      v140 = v2;
      v43 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v137);

      v8 = v138;
      goto LABEL_61;
    case 4:
      v18 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v18, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureCompleted", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateFaceEnrollDuration];
      v133[0] = MEMORY[0x277D85DD0];
      v133[1] = 3221225472;
      v133[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_122;
      v133[3] = &unk_2796ADE70;
      v19 = v3;
      v20 = *(a1 + 32);
      v134 = v19;
      v135 = v20;
      v136 = v2;
      v21 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v133);

      v8 = v134;
      goto LABEL_61;
    case 5:
      v32 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v32, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEar", buf, 2u);
      }

      v129[0] = MEMORY[0x277D85DD0];
      v129[1] = 3221225472;
      v129[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_129;
      v129[3] = &unk_2796ADE70;
      v33 = v3;
      v34 = *(a1 + 32);
      v130 = v33;
      v131 = v34;
      v132 = v2;
      v35 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v129);

      v8 = v130;
      goto LABEL_61;
    case 6:
      v48 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v48, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureHoldPhone", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateRightEarEnrollStart];
      v125[0] = MEMORY[0x277D85DD0];
      v125[1] = 3221225472;
      v125[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_142;
      v125[3] = &unk_2796ADE70;
      v49 = v3;
      v50 = *(a1 + 32);
      v126 = v49;
      v127 = v50;
      v128 = v2;
      v51 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v125);

      v8 = v126;
      goto LABEL_61;
    case 7:
      v52 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v52, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureRotateHead", buf, 2u);
      }

      [*(a1 + 32) startEarEnrollmentNudgeTimer];
      v120[0] = MEMORY[0x277D85DD0];
      v120[1] = 3221225472;
      v120[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_147;
      v120[3] = &unk_2796AE4D0;
      v53 = v3;
      v54 = *(a1 + 32);
      v121 = v53;
      v122 = v54;
      objc_copyWeak(&v124, &location);
      v123 = v2;
      v55 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v120);

      objc_destroyWeak(&v124);
      v8 = v121;
      goto LABEL_61;
    case 8:
      v64 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v64, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureCompleted", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateRightEarEnrollDuration];
      [*(a1 + 32) stopEarEnrollmentNudgeTimer];
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_151;
      v115[3] = &unk_2796AE4D0;
      v65 = v3;
      v66 = *(a1 + 32);
      v116 = v65;
      v117 = v66;
      objc_copyWeak(&v119, &location);
      v118 = v2;
      v67 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v115);

      objc_destroyWeak(&v119);
      v8 = v116;
      goto LABEL_61;
    case 9:
      v60 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v60, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEar", buf, 2u);
      }

      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_158;
      v111[3] = &unk_2796ADE70;
      v61 = v3;
      v62 = *(a1 + 32);
      v112 = v61;
      v113 = v62;
      v114 = v2;
      v63 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v111);

      v8 = v112;
      goto LABEL_61;
    case 0xA:
      v14 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureHoldPhone", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateLeftEarEnrollStart];
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_170;
      v107[3] = &unk_2796ADE70;
      v15 = v3;
      v16 = *(a1 + 32);
      v108 = v15;
      v109 = v16;
      v110 = v2;
      v17 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v107);

      v8 = v108;
      goto LABEL_61;
    case 0xB:
      v36 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v36, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureRotateHead", buf, 2u);
      }

      [*(a1 + 32) startEarEnrollmentNudgeTimer];
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_175;
      v102[3] = &unk_2796AE4D0;
      v37 = v3;
      v38 = *(a1 + 32);
      v103 = v37;
      v104 = v38;
      objc_copyWeak(&v106, &location);
      v105 = v2;
      v39 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v102);

      objc_destroyWeak(&v106);
      v8 = v103;
      goto LABEL_61;
    case 0xC:
      v22 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v22, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureCompleted", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateLeftEarEnrollDuration];
      [*(a1 + 32) stopEarEnrollmentNudgeTimer];
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_179;
      v97[3] = &unk_2796AE4D0;
      v23 = v3;
      v24 = *(a1 + 32);
      v98 = v23;
      v99 = v24;
      objc_copyWeak(&v101, &location);
      v100 = v2;
      v25 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v97);

      objc_destroyWeak(&v101);
      v8 = v98;
      goto LABEL_61;
    case 0xE:
      v13 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RetrieveProfile", buf, 2u);
      }

      [*(a1 + 32) retrieveProfile];
      goto LABEL_66;
    case 0xF:
      v56 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v56, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> SyncProfile", buf, 2u);
      }

      [*(a1 + 32) syncProfile];
      goto LABEL_66;
    case 0x10:
      v57 = sharedBluetoothSettingsLogComponent([*(v5 + 1296) updateStatus:1 EnrollmentResult:@"Success"]);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v57, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Completed", buf, 2u);
      }

      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_189;
      v95[3] = &unk_2796AD750;
      v95[4] = *(a1 + 32);
      v58 = v3;
      v96 = v58;
      v59 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v95);

      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_201;
      v93[3] = &unk_2796AD618;
      v94 = v2;
      dispatch_group_notify(v58, v59, v93);

      v8 = v96;
      goto LABEL_61;
    case 0x11:
      v72 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v72, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> CouldntScanEar", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateStatus:0 EnrollmentResult:@"Failed"];
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_205;
      v90[3] = &unk_2796AD750;
      v73 = v3;
      v74 = *(a1 + 32);
      v91 = v73;
      v92 = v74;
      v75 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v90);

      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_215;
      v88[3] = &unk_2796AD618;
      v89 = v2;
      dispatch_group_notify(v73, v75, v88);

      v8 = v91;
      goto LABEL_61;
    case 0x12:
      v68 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v68, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> HairCoveringEar", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateStatus:0 EnrollmentResult:@"Failed"];
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_216;
      v85[3] = &unk_2796AD750;
      v69 = v3;
      v70 = *(a1 + 32);
      v86 = v69;
      v87 = v70;
      v71 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v85);

      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_223;
      v83[3] = &unk_2796AD618;
      v84 = v2;
      dispatch_group_notify(v69, v71, v83);

      v8 = v86;
      goto LABEL_61;
    case 0x13:
      v9 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> GeneralFailure", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateStatus:0 EnrollmentResult:@"Failed"];
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_224;
      v80[3] = &unk_2796AD750;
      v10 = v3;
      v11 = *(a1 + 32);
      v81 = v10;
      v82 = v11;
      v12 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v80);

      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_232;
      v78[3] = &unk_2796AD618;
      v79 = v2;
      dispatch_group_notify(v10, v12, v78);

      v8 = v81;
LABEL_61:

      break;
    default:
      v77 = sharedBluetoothSettingsLogComponent(v4);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_cold_1();
      }

LABEL_66:
      dispatch_group_leave(v2);
      break;
  }

  v76 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v2, v76);
  objc_destroyWeak(&location);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_98(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1048);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4 forState:0];

  if (!+[HPSSpatialProfileManager isProxCardShowed])
  {
    [HPSSpatialProfileManager setProxCardShowed:1];
  }

  [*(a1 + 32) startEnrollment];
  [*(a1 + 32) showContinueButton];
  [*(*(a1 + 32) + 1160) setAlpha:0.0];
  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_101(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FRONT_VIEW" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 32) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FRONT_VIEW_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 32) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"START_FRONT_VIEW_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(*(a1 + 32) + 1096) removeFromSuperview];
  [*(*(a1 + 32) + 1040) removeFromSuperview];
  [*(*(a1 + 32) + 1088) removeFromSuperview];
  [*(*(a1 + 32) + 1152) setHidden:0];
  [*(*(a1 + 32) + 1152) setFaceCaptured:0];
  dispatch_group_enter(*(a1 + 40));
  v11 = *(*(a1 + 32) + 1152);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_111;
  v15[3] = &unk_2796AD618;
  v16 = *(a1 + 40);
  [v11 setState:2 completion:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3;
  v13[3] = &unk_2796AD618;
  v12 = *(a1 + 40);
  v14 = *(a1 + 48);
  dispatch_group_notify(v12, MEMORY[0x277D85CD0], v13);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontView Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_112(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FRONT_VIEW_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FRONT_VIEW_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  *(*(a1 + 40) + 1336) = 5;
  [*(a1 + 40) startCaptureViewTimer];
  [*(a1 + 40) hideContinueButton];
  dispatch_group_enter(*(a1 + 32));
  v8 = *(*(a1 + 40) + 1152);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_116;
  v17[3] = &unk_2796AD618;
  v18 = *(a1 + 32);
  [v8 setState:3 completion:v17];
  dispatch_group_enter(*(a1 + 32));
  v9 = *(a1 + 40);
  v10 = *(v9 + 1144);
  v11 = *(v9 + 1252);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_117;
  v15[3] = &unk_2796AD618;
  v16 = *(a1 + 32);
  [v10 triggerSoundHapticForEnrollmentState:v11 completion:v15];
  [*(a1 + 40) resumeEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v12 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4;
  block[3] = &unk_2796AD618;
  v14 = *(a1 + 48);
  dispatch_group_notify(v12, MEMORY[0x277D85CD0], block);
  [*(a1 + 40) startFaceInFrameHandlerTimer];
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCapturePositionFace Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_118(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1152);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_119;
  v11[3] = &unk_2796AD618;
  v12 = *(a1 + 32);
  [v2 setState:5 completion:v11];
  dispatch_group_enter(*(a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(v3 + 1144);
  v5 = *(v3 + 1252);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_120;
  v9[3] = &unk_2796AD618;
  v10 = *(a1 + 32);
  [v4 triggerSoundHapticForEnrollmentState:v5 completion:v9];
  v6 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_121;
  block[3] = &unk_2796AD618;
  v8 = *(a1 + 48);
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_121(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureMoveHead Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_122(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FRONT_VIEW_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FRONT_VIEW_CAPTURED" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(a1 + 40) stopCaptureViewTimer];
  [*(*(a1 + 40) + 1152) setFaceCaptured:1];
  [*(a1 + 40) showContinueButton];
  [*(a1 + 40) forceBlur];
  dispatch_group_enter(*(a1 + 32));
  v11 = *(*(a1 + 40) + 1152);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_126;
  v20[3] = &unk_2796AD618;
  v21 = *(a1 + 32);
  [v11 setState:6 completion:v20];
  dispatch_group_enter(*(a1 + 32));
  v12 = *(a1 + 40);
  v13 = *(v12 + 1144);
  v14 = *(v12 + 1252);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_127;
  v18[3] = &unk_2796AD618;
  v19 = *(a1 + 32);
  [v13 triggerSoundHapticForEnrollmentState:v14 completion:v18];
  [*(a1 + 40) pauseEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v15 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_128;
  block[3] = &unk_2796AD618;
  v17 = *(a1 + 48);
  dispatch_group_notify(v15, MEMORY[0x277D85CD0], block);
  [*(a1 + 40) stopFaceInFrameHandlerTimer];
  [*(a1 + 40) sendTipKitSignal];
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_128(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureCompleted Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_129(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RIGHT_EAR" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"RIGHT_EAR_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"START_RIGHT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(*(a1 + 40) + 1168) setHidden:0];
  [*(*(a1 + 40) + 1176) startPlayerRightEar];
  v11 = [*(*(a1 + 40) + 1152) pillContainer];
  [v11 setHidden:1];

  [*(*(a1 + 40) + 1152) setCrosshairsHidden:1];
  [*(*(a1 + 40) + 1152) setPauseBlur:1];
  [*(*(a1 + 40) + 1152) setForceBlur:0];
  [*(*(a1 + 40) + 1152) setHidden:1];
  *(*(a1 + 40) + 1368) = 2;
  *(*(a1 + 40) + 1576) = 0x3FE0000000000000;
  *(*(a1 + 40) + 1584) = 0xC059000000000000;
  *(*(a1 + 40) + 1592) = 0xC059000000000000;
  v12 = *(a1 + 40);
  v13 = *(v12 + 1600);
  *(v12 + 1600) = 0;

  [*(*(a1 + 40) + 1152) setCameraBlurAmount:0 useShade:0 duration:0.0 completion:0.5];
  dispatch_group_enter(*(a1 + 32));
  v14 = *(*(a1 + 40) + 1152);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_139;
  v26[3] = &unk_2796AD618;
  v27 = *(a1 + 32);
  [v14 setState:3 completion:v26];
  dispatch_group_enter(*(a1 + 32));
  v15 = *(a1 + 40);
  v16 = *(v15 + 1144);
  v17 = *(v15 + 1252);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_140;
  v24[3] = &unk_2796AD618;
  v25 = *(a1 + 32);
  [v16 triggerSoundHapticForEnrollmentState:v17 completion:v24];
  dispatch_group_leave(*(a1 + 32));
  v18 = *(a1 + 32);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_141;
  v21[3] = &unk_2796AD750;
  v19 = *(a1 + 48);
  v20 = *(a1 + 40);
  v22 = v19;
  v23 = v20;
  dispatch_group_notify(v18, MEMORY[0x277D85CD0], v21);
}

uint64_t __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_141(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEar Done", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  return [*(a1 + 40) startTutorialResumeEnrollTimer];
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_142(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(a1 + 40) stopTutorialResumeEnrollTimer];
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RIGHT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  [*(*(a1 + 40) + 1168) setHidden:1];
  [*(*(a1 + 40) + 1176) stopPlayerRightEar];
  [*(a1 + 40) startCaptureViewTimer];
  [*(a1 + 40) hideContinueButton];
  [*(*(a1 + 40) + 1152) setHidden:0];
  *(*(a1 + 40) + 1426) = 0;
  *(*(a1 + 40) + 1427) = 0;
  *(*(a1 + 40) + 1442) = 0;
  *(*(a1 + 40) + 1443) = 0;
  *(*(a1 + 40) + 1458) = 0;
  *(*(a1 + 40) + 1459) = 0;
  *(*(a1 + 40) + 1544) = 0xC059000000000000;
  *(*(a1 + 40) + 1456) = 0;
  *(*(a1 + 40) + 1457) = 0;
  *(*(a1 + 40) + 1441) = 10;
  [*(a1 + 40) startOcclusionWarnCoolDownTimer];
  [*(a1 + 40) startEarDistanceWarnCoolDownTimer];
  [*(a1 + 40) startEnrollGuidanceTimer];
  [*(*(a1 + 40) + 1296) initFrameRateDetection];
  [*(a1 + 40) resumeEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v5 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_146;
  block[3] = &unk_2796AD618;
  v7 = *(a1 + 48);
  dispatch_group_notify(v5, MEMORY[0x277D85CD0], block);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_146(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureHoldPhone Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_147(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RIGHT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  [*(*(a1 + 40) + 992) bringSubviewToFront:*(*(a1 + 40) + 1192)];
  [*(*(a1 + 40) + 1192) setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [*(*(a1 + 40) + 1184) setAlpha:1.0];
  dispatch_group_enter(*(a1 + 32));
  v5 = *(*(a1 + 40) + 1152);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_148;
  v14[3] = &unk_2796AD818;
  objc_copyWeak(&v16, (a1 + 56));
  v15 = *(a1 + 32);
  [v5 setState:5 completion:v14];
  dispatch_group_enter(*(a1 + 32));
  v6 = *(a1 + 40);
  v7 = *(v6 + 1144);
  v8 = *(v6 + 1252);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_149;
  v12[3] = &unk_2796AD618;
  v13 = *(a1 + 32);
  [v7 triggerSoundHapticForEnrollmentState:v8 completion:v12];
  dispatch_group_leave(*(a1 + 32));
  v9 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_150;
  v10[3] = &unk_2796AD618;
  v11 = *(a1 + 48);
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], v10);

  objc_destroyWeak(&v16);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_148(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained showEarPillsDots];

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_150(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureRotateHead Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_151(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(a1 + 40) hideEarDistanceWarningContinueButton];
  [*(a1 + 40) hideOcclusionContinueButton];
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RIGHT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"RIGHT_EAR_CAPTURED" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(a1 + 40) stopCaptureViewTimer];
  [*(a1 + 40) stopEnrollGuidanceTimer];
  [*(*(a1 + 40) + 1192) setHidden:1];
  [*(a1 + 40) showContinueButton];
  [*(a1 + 40) forceBlur];
  [*(a1 + 40) hideEarPillsDots];
  dispatch_group_enter(*(a1 + 32));
  v11 = *(*(a1 + 40) + 1152);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_155;
  v20[3] = &unk_2796AD818;
  objc_copyWeak(&v22, (a1 + 56));
  v21 = *(a1 + 32);
  [v11 setState:6 completion:v20];
  dispatch_group_enter(*(a1 + 32));
  v12 = *(a1 + 40);
  v13 = *(v12 + 1144);
  v14 = *(v12 + 1252);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_156;
  v18[3] = &unk_2796AD618;
  v19 = *(a1 + 32);
  [v13 triggerSoundHapticForEnrollmentState:v14 completion:v18];
  [*(a1 + 40) pauseEnrollment];
  *(*(a1 + 40) + 1368) = 3;
  dispatch_group_leave(*(a1 + 32));
  v15 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_157;
  v16[3] = &unk_2796AD618;
  v17 = *(a1 + 48);
  dispatch_group_notify(v15, MEMORY[0x277D85CD0], v16);

  objc_destroyWeak(&v22);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_155(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained[144] pillContainer];
  [v2 setHidden:0];

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_157(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureCompleted Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_158(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LEFT_EAR" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"LEFT_EAR_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"START_LEFT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(*(a1 + 40) + 1168) setHidden:0];
  [*(*(a1 + 40) + 1176) startPlayerLeftEar];
  dispatch_group_enter(*(a1 + 32));
  v11 = *(*(a1 + 40) + 1152);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_168;
  v19[3] = &unk_2796AD618;
  v20 = *(a1 + 32);
  [v11 setState:3 completion:v19];
  v12 = [*(*(a1 + 40) + 1152) pillContainer];
  [v12 setHidden:1];

  [*(*(a1 + 40) + 1152) setHidden:1];
  [*(a1 + 40) cancelBlur];
  [*(*(a1 + 40) + 1160) setAlpha:0.0];
  [*(*(a1 + 40) + 1160) resetPillsAnimated:1];
  *(*(a1 + 40) + 1359) = 0;
  *(*(a1 + 40) + 1384) = 2;
  dispatch_group_leave(*(a1 + 32));
  v13 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_169;
  block[3] = &unk_2796AD750;
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  v17 = v14;
  v18 = v15;
  dispatch_group_notify(v13, MEMORY[0x277D85CD0], block);
}

uint64_t __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_169(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEar Done", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  return [*(a1 + 40) startTutorialResumeEnrollTimer];
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_170(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LEFT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  [*(*(a1 + 40) + 1168) setHidden:1];
  [*(*(a1 + 40) + 1176) stopPlayerLeftEar];
  [*(a1 + 40) stopTutorialResumeEnrollTimer];
  [*(a1 + 40) startCaptureViewTimer];
  [*(a1 + 40) hideContinueButton];
  [*(*(a1 + 40) + 1152) setPauseBlur:1];
  [*(*(a1 + 40) + 1152) setHidden:0];
  v5 = [*(*(a1 + 40) + 1152) pillContainer];
  [v5 setHidden:1];

  *(*(a1 + 40) + 1426) = 0;
  *(*(a1 + 40) + 1442) = 0;
  *(*(a1 + 40) + 1443) = 0;
  *(*(a1 + 40) + 1427) = 0;
  *(*(a1 + 40) + 1456) = 0;
  *(*(a1 + 40) + 1457) = 0;
  *(*(a1 + 40) + 1458) = 0;
  *(*(a1 + 40) + 1459) = 0;
  *(*(a1 + 40) + 1536) = 0xC059000000000000;
  *(*(a1 + 40) + 1441) = 10;
  *(*(a1 + 40) + 1576) = 0x3FE0000000000000;
  *(*(a1 + 40) + 1584) = 0xC059000000000000;
  *(*(a1 + 40) + 1592) = 0xC059000000000000;
  v6 = *(a1 + 40);
  v7 = *(v6 + 1600);
  *(v6 + 1600) = 0;

  v8 = *(a1 + 40);
  v9 = *(v8 + 1576);
  *&v9 = v9;
  [*(v8 + 1144) setEnrollGuidancePitch:v9];
  [*(a1 + 40) startOcclusionWarnCoolDownTimer];
  [*(a1 + 40) startEarDistanceWarnCoolDownTimer];
  [*(a1 + 40) startEnrollGuidanceTimer];
  [*(*(a1 + 40) + 1296) initFrameRateDetection];
  [*(a1 + 40) resumeEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v10 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_174;
  block[3] = &unk_2796AD618;
  v12 = *(a1 + 48);
  dispatch_group_notify(v10, MEMORY[0x277D85CD0], block);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_174(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureHoldPhone Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_175(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LEFT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  dispatch_group_enter(*(a1 + 32));
  v5 = [*(*(a1 + 40) + 1152) pillContainer];
  [v5 setHidden:1];

  v6 = *(*(a1 + 40) + 1152);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_176;
  v15[3] = &unk_2796AD818;
  objc_copyWeak(&v17, (a1 + 56));
  v16 = *(a1 + 32);
  [v6 setState:5 completion:v15];
  [*(*(a1 + 40) + 1192) setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  *(*(a1 + 40) + 1380) = 0;
  *(*(a1 + 40) + 1379) = 0;
  dispatch_group_enter(*(a1 + 32));
  v7 = *(a1 + 40);
  v8 = *(v7 + 1144);
  v9 = *(v7 + 1252);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_177;
  v13[3] = &unk_2796AD618;
  v14 = *(a1 + 32);
  [v8 triggerSoundHapticForEnrollmentState:v9 completion:v13];
  [*(a1 + 40) resumeEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v10 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_178;
  v11[3] = &unk_2796AD618;
  v12 = *(a1 + 48);
  dispatch_group_notify(v10, MEMORY[0x277D85CD0], v11);

  objc_destroyWeak(&v17);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_176(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained showEarPillsDots];

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_178(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureRotateHead Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_179(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(*(a1 + 40) + 1192) setHidden:1];
  [*(a1 + 40) hideEarDistanceWarningContinueButton];
  [*(a1 + 40) hideOcclusionContinueButton];
  [*(a1 + 40) stopEnrollGuidanceTimer];
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LEFT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"LEFT_EAR_CAPTURED" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  [*(a1 + 40) stopCaptureViewTimer];
  [*(a1 + 40) startPostProcessTimer];
  [*(a1 + 40) hideEarPillsDots];
  [*(a1 + 40) forceBlur];
  *(*(a1 + 40) + 1384) = 3;
  dispatch_group_enter(*(a1 + 32));
  v8 = *(*(a1 + 40) + 1152);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_183;
  v17[3] = &unk_2796AD818;
  objc_copyWeak(&v19, (a1 + 56));
  v18 = *(a1 + 32);
  [v8 setState:6 completion:v17];
  dispatch_group_enter(*(a1 + 32));
  v9 = *(a1 + 40);
  v10 = *(v9 + 1144);
  v11 = *(v9 + 1252);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_184;
  v15[3] = &unk_2796AD618;
  v16 = *(a1 + 32);
  [v10 triggerSoundHapticForEnrollmentState:v11 completion:v15];
  dispatch_group_leave(*(a1 + 32));
  v12 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_185;
  v13[3] = &unk_2796AD618;
  v14 = *(a1 + 48);
  dispatch_group_notify(v12, MEMORY[0x277D85CD0], v13);

  objc_destroyWeak(&v19);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_183(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained[144] pillContainer];
  [v2 setHidden:0];

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_185(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureCompleted Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_189(uint64_t a1)
{
  [*(a1 + 32) stopTimers];
  dispatch_group_enter(*(a1 + 40));
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 32) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_COMPLETE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 32) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DONE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  v11 = *(a1 + 32);
  if (v11[1233] == 1)
  {
    [v11 stopPostProcessSpinner];
    v11 = *(a1 + 32);
  }

  [v11 stopPostProcessTimer];
  dispatch_group_enter(*(a1 + 40));
  v12 = *(*(a1 + 32) + 1152);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_199;
  v21[3] = &unk_2796AD618;
  v22 = *(a1 + 40);
  [v12 setState:10 completion:v21];
  dispatch_group_enter(*(a1 + 40));
  v13 = *(a1 + 32);
  v14 = *(v13 + 1144);
  v15 = *(v13 + 1252);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_200;
  v19 = &unk_2796AD618;
  v20 = *(a1 + 40);
  [v14 triggerSoundHapticForEnrollmentState:v15 completion:&v16];
  [*(*(a1 + 32) + 1160) setAlpha:{0.0, v16, v17, v18, v19}];
  [*(a1 + 32) stopEnrollment];
  [*(a1 + 32) showContinueButton];
  [*(*(a1 + 32) + 1048) removeTarget:*(a1 + 32) action:sel_continueButtonTapped forControlEvents:64];
  [*(*(a1 + 32) + 1048) addTarget:*(a1 + 32) action:sel_cancelSpatialAudioProfile forControlEvents:64];
  *(*(a1 + 32) + 1320) = 1;
  dispatch_group_leave(*(a1 + 40));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_201(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Completed Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_205(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"COULDNT_SCAN_EAR" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"COULDNT_SCAN_EAR_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  [*(a1 + 40) showContinueButton];
  [*(*(a1 + 40) + 1048) removeTarget:*(a1 + 40) action:sel_continueButtonTapped forControlEvents:64];
  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SCAN_AGAIN" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(*(a1 + 40) + 1048) addTarget:*(a1 + 40) action:sel_cancelSpatialAudioProfile forControlEvents:64];
  v11 = *(a1 + 32);

  dispatch_group_leave(v11);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_215(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> CouldntScanEar Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_216(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HAIR_COVERING_EAR" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"HAIR_COVERING_EAR_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  [*(a1 + 40) showContinueButton];
  [*(*(a1 + 40) + 1048) removeTarget:*(a1 + 40) action:sel_continueButtonTapped forControlEvents:64];
  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SCAN_AGAIN" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(*(a1 + 40) + 1048) addTarget:*(a1 + 40) action:sel_cancelSpatialAudioProfile forControlEvents:64];
  v11 = *(a1 + 32);

  dispatch_group_leave(v11);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_223(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> HairCoveringEar Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_224(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"GENERAL_FAILURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"GENERAL_FAILURE_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DONE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  v11 = *(a1 + 40);
  if (*(v11 + 1304))
  {
    [v11 cleanUpSpinner];
    v11 = *(a1 + 40);
  }

  if (*(v11 + 1233) == 1)
  {
    [v11 stopPostProcessSpinner];
    v11 = *(a1 + 40);
  }

  [v11 stopPostProcessTimer];
  [*(*(a1 + 40) + 1160) setAlpha:0.0];
  [*(*(a1 + 40) + 1152) setHidden:1];
  [*(a1 + 40) stopEnrollment];
  [*(a1 + 40) showContinueButton];
  [*(*(a1 + 40) + 1048) removeTarget:*(a1 + 40) action:sel_continueButtonTapped forControlEvents:64];
  [*(*(a1 + 40) + 1048) addTarget:*(a1 + 40) action:sel_cancelSpatialAudioProfile forControlEvents:64];
  dispatch_group_leave(*(a1 + 32));
  dispatch_group_enter(*(a1 + 32));
  v12 = *(*(a1 + 40) + 1144);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_231;
  v13[3] = &unk_2796AD618;
  v14 = *(a1 + 32);
  [v12 triggerSoundHapticForEnrollmentState:19 completion:v13];
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_232(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> GeneralFailure Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)continueButtonTapped
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentStep = self->_currentStep;
    sessionState = self->_sessionState;
    v13[0] = 67109376;
    v13[1] = currentStep;
    v14 = 1024;
    v15 = sessionState;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: ContinueButton Tapped Current Step %d, Currente Session %d ", v13, 0xEu);
  }

  if (!self->_currentStep)
  {
    if ([(HPSSpatialProfileEnrollmentController *)self checkAndShowInEarPopup])
    {
      return;
    }

    available = [(BluetoothManager *)self->_btManager available];
    if ((available & 1) == 0)
    {
      v10 = sharedBluetoothSettingsLogComponent(available);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13[0]) = 0;
        _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "Spatial Profile: btManager is not available", v13, 2u);
      }

      if (!self->_welcomeSpinnerOn)
      {
        v12 = sharedBluetoothSettingsLogComponent(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v13[0]) = 0;
          _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: btManager is not available starting welcome spinner", v13, 2u);
        }

        [(HPSSpatialProfileEnrollmentController *)self startWelcomeSpinner];
      }
    }
  }

  if (self->_enrollmentReady)
  {
    v6 = self->_currentStep;
    if (v6 > 13)
    {
      return;
    }

    if (self->_sessionState == 3)
    {
      if (v6 == 12)
      {
        return;
      }

      selfCopy2 = self;
      v8 = 12;
    }

    else
    {
      v8 = (v6 + 1);
      selfCopy2 = self;
    }

    [(HPSSpatialProfileEnrollmentController *)selfCopy2 moveToStep:v8];
  }

  else if (!self->_welcomeSpinnerOn)
  {
    [(HPSSpatialProfileEnrollmentController *)self startWelcomeSpinner];
  }
}

- (void)userCancelEnrollment
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: User Cancelled Spatial Audio Profile", v4, 2u);
  }

  [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateStatus:0 EnrollmentResult:@"Cancel"];
  [(HPSSpatialProfileEnrollmentController *)self cancelSpatialAudioProfile];
}

- (void)stopTimers
{
  [(HPSSpatialProfileEnrollmentController *)self stopFaceInFrameHandlerTimer];
  [(HPSSpatialProfileEnrollmentController *)self stopOcclusionWarnCoolDownTimer];
  [(HPSSpatialProfileEnrollmentController *)self stopEarDistanceWarnCoolDownTimer];
  [(HPSSpatialProfileEnrollmentController *)self stopEnrollGuidanceTimer];
  [(HPSSpatialProfileEnrollmentController *)self stopCaptureViewTimer];
  [(HPSSpatialProfileEnrollmentController *)self stopPostProcessTimer];

  [(HPSSpatialProfileEnrollmentController *)self stopEarEnrollmentNudgeTimer];
}

- (void)cancelSpatialAudioProfile
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Cancel Spatial Audio Profile", &v15, 2u);
  }

  v5 = sharedBluetoothSettingsLogComponent(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    x = self->_currentEarBB.origin.x;
    y = self->_currentEarBB.origin.y;
    width = self->_currentEarBB.size.width;
    height = self->_currentEarBB.size.height;
    leftLastReceivedYaw = self->_leftLastReceivedYaw;
    rightLastReceivedYaw = self->_rightLastReceivedYaw;
    v15 = 134219264;
    v16 = x;
    v17 = 2048;
    v18 = y;
    v19 = 2048;
    v20 = width;
    v21 = 2048;
    v22 = height;
    v23 = 2048;
    v24 = leftLastReceivedYaw;
    v25 = 2048;
    v26 = rightLastReceivedYaw;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: _currentEarBB.origin.x %f , _currentEarBB.origin.y %f , _currentEarBB.size.width %f , _currentEarBB.size.height %f Left Ear Last Yaw %f Right Ear Last Yaw %f", &v15, 0x3Eu);
  }

  if (self->_enrollmentStarted)
  {
    [(HPSSpatialProfileEnrollmentController *)self stopEnrollment];
  }

  [(HPSSpatialProfileEnrollmentController *)self stopTimers];
  [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager stop];
  [(HPSSpatialProfileEnrollmentController *)self resetVolume];
  [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView stopPlayers];
  v12 = [(HPSSpatialProfileEnrollmentController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_237];
  if (self->_enrollmentCompleted)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"HPSSpatialAudioProfileUpdated" object:0];
  }

  if (self->dismissalHandler)
  {
    v14 = sharedBluetoothSettingsLogComponent(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Executing : Dismiss handler", &v15, 2u);
    }

    (*(self->dismissalHandler + 2))();
  }

  [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics submitHPSSpatialProfileEnrollAnalytics];
}

- (void)bluetoothDidBecomeAvailable
{
  self->_bluetoothBecameAvailable = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HPSSpatialProfileEnrollmentController_bluetoothDidBecomeAvailable__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__68__HPSSpatialProfileEnrollmentController_bluetoothDidBecomeAvailable__block_invoke(void *result)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(result[4] + 1232) == 1)
  {
    v1 = result;
    v2 = sharedBluetoothSettingsLogComponent(result);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[4];
      v4 = *(v3 + 1318);
      v5 = [*(v3 + 1416) available];
      v6[0] = 67109376;
      v6[1] = v4;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: bluetoothDidBecomeAvailable -> stopWelcomeSpinner, _enrollmentReady %d [_btManager available] %d", v6, 0xEu);
    }

    return [v1[4] stopWelcomeSpinner];
  }

  return result;
}

- (void)retrieveProfile
{
  [self code];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void __56__HPSSpatialProfileEnrollmentController_retrieveProfile__block_invoke_244(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sharedBluetoothSettingsLogComponent(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[6];
    v6 = a1[7];
    v7 = 134218240;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Retrive completion : requestedSize = %lu profileSize = %lu", &v7, 0x16u);
  }

  [*(a1[4] + 1288) appendData:v3];
  dispatch_group_leave(*(*(a1[5] + 8) + 40));
}

uint64_t __56__HPSSpatialProfileEnrollmentController_retrieveProfile__block_invoke_246(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 1288) length];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Retrieved Profile Size: %lu", &v5, 0xCu);
  }

  return [*(a1 + 32) moveToStep:15];
}

- (void)syncProfile
{
  v13 = *MEMORY[0x277D85DE8];
  profileData = self->_profileData;
  if (profileData && (profileData = [(NSMutableData *)profileData length]) != 0)
  {
    v4 = sharedBluetoothSettingsLogComponent(profileData);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSMutableData *)self->_profileData length];
      *buf = 134217984;
      v12 = v5;
      _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Syncing Profile, Size: %lu", buf, 0xCu);
    }

    v6 = [MEMORY[0x277CF3268] soundProfileRecordWithCustomData:self->_profileData];
    v7 = objc_alloc_init(MEMORY[0x277CF3260]);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__HPSSpatialProfileEnrollmentController_syncProfile__block_invoke;
    v9[3] = &unk_2796ADE20;
    v9[4] = self;
    v10 = v7;
    v8 = v7;
    [v8 createSoundProfileRecord:v6 completion:v9];
  }

  else
  {
    v6 = sharedBluetoothSettingsLogComponent(profileData);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Cannot Sync Profile, Invalid Profile Data", buf, 2u);
    }
  }
}

void __52__HPSSpatialProfileEnrollmentController_syncProfile__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sharedBluetoothSettingsLogComponent(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v5)
    {
      __61__HPSSpatialProfileSingeStepEnrollmentController_syncProfile__block_invoke_cold_1(v3, v4);
    }
  }

  else if (v5)
  {
    __61__HPSSpatialProfileSingeStepEnrollmentController_syncProfile__block_invoke_cold_2();
  }

  [*(a1 + 32) moveToStep:16];
  [*(a1 + 40) invalidate];
}

- (id)angleArrayToBinaryString:(id)string
{
  v17 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [stringCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = &stru_286339F58;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(stringCopy);
        }

        if ([*(*(&v12 + 1) + 8 * v8) captured])
        {
          v10 = @"1%@";
        }

        else
        {
          v10 = @"0%@";
        }

        v6 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v9];

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [stringCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = &stru_286339F58;
  }

  return v6;
}

- (void)startTutorialResumeEnrollTimer
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Tutorial automatic Delay Transition timer", buf, 2u);
  }

  if (self->_tutorialResumeEnrollTimer)
  {
    v5 = sharedBluetoothSettingsLogComponent(stopTutorialResumeEnrollTimer);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Tutorial automatic Delay Transition timer…", v10, 2u);
    }

    stopTutorialResumeEnrollTimer = [(HPSSpatialProfileEnrollmentController *)self stopTutorialResumeEnrollTimer];
  }

  v6 = sharedBluetoothSettingsLogComponent(stopTutorialResumeEnrollTimer);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting Tutorial automatic Delay Transition timer", v9, 2u);
  }

  v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_tutorialResumeEnrollTimerDidFire selector:0 userInfo:0 repeats:3.0];
  tutorialResumeEnrollTimer = self->_tutorialResumeEnrollTimer;
  self->_tutorialResumeEnrollTimer = v7;
}

- (void)tutorialResumeEnrollTimerDidFire
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Tutorial automatic Delay Transition Timer did Fire", v10, 2u);
  }

  currentStep = self->_currentStep;
  if (currentStep == 9 || currentStep == 5)
  {
    v7 = sharedBluetoothSettingsLogComponent(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_currentStep;
      enrollmentPaused = self->_enrollmentPaused;
      v10[0] = 67109376;
      v10[1] = v8;
      v11 = 1024;
      v12 = enrollmentPaused;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting enrollment while in Ear tutorial %d Enrollment Status %d", v10, 0xEu);
    }

    if (self->_enrollmentPaused)
    {
      [(HPSSpatialProfileEnrollmentController *)self resumeEnrollment];
    }
  }
}

- (void)stopTutorialResumeEnrollTimer
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping capture view timer", v5, 2u);
  }

  [(NSTimer *)self->_tutorialResumeEnrollTimer invalidate];
  tutorialResumeEnrollTimer = self->_tutorialResumeEnrollTimer;
  self->_tutorialResumeEnrollTimer = 0;
}

- (void)startCaptureViewTimer
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Restart capture view timer", buf, 2u);
  }

  if (self->_captureViewTimer)
  {
    v5 = sharedBluetoothSettingsLogComponent(stopCaptureViewTimer);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping capture view timer…", v10, 2u);
    }

    stopCaptureViewTimer = [(HPSSpatialProfileEnrollmentController *)self stopCaptureViewTimer];
  }

  v6 = sharedBluetoothSettingsLogComponent(stopCaptureViewTimer);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting capture view timer", v9, 2u);
  }

  v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_captureViewTimerDidFire selector:0 userInfo:0 repeats:180.0];
  captureViewTimer = self->_captureViewTimer;
  self->_captureViewTimer = v7;
}

- (void)stopCaptureViewTimer
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping capture view timer", v5, 2u);
  }

  [(NSTimer *)self->_captureViewTimer invalidate];
  captureViewTimer = self->_captureViewTimer;
  self->_captureViewTimer = 0;
}

- (void)captureViewTimerDidFire
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: captureViewTimerDidFire canceling spatial audio profile", buf, 2u);
  }

  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CANCEL_ENROLLMENT_ALERT_PROMPT" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v7 = [v4 alertControllerWithTitle:v6 message:&stru_286339F58 preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CANCEL_ENROLLMENT_ALERT_PROMPT_BUTTON" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__HPSSpatialProfileEnrollmentController_captureViewTimerDidFire__block_invoke;
  v12[3] = &unk_2796AD708;
  v12[4] = self;
  v11 = [v8 actionWithTitle:v10 style:0 handler:v12];
  [v7 addAction:v11];

  [(HPSSpatialProfileEnrollmentController *)self presentViewController:v7 animated:1 completion:0];
}

- (BOOL)isEarOccluded
{
  currentStep = self->_currentStep;
  v3 = currentStep > 0xB;
  v4 = (1 << currentStep) & 0xCC0;
  v5 = v3 || v4 == 0;
  return !v5 && !self->_supressEarOcclusionWarning && self->_isEarOccluded;
}

- (BOOL)isPresentingWrongEar
{
  v27 = *MEMORY[0x277D85DE8];
  if (!self->_supressEarEnrollWarning)
  {
    leftEarStatus = self->_leftEarStatus;
    v4 = leftEarStatus < 1 || leftEarStatus == 3;
    if (!v4 && self->_currentTrackingEar == 2)
    {
      v5 = sharedBluetoothSettingsLogComponent(self);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        supressEarEnrollWarning = self->_supressEarEnrollWarning;
        rightEarStatus = self->_rightEarStatus;
        v8 = self->_leftEarStatus;
        leftEarCaptureCount = self->_leftEarCaptureCount;
        v19 = 67109888;
        v20 = supressEarEnrollWarning;
        v21 = 1024;
        v22 = rightEarStatus;
        v23 = 1024;
        v24 = v8;
        v25 = 1024;
        v26 = leftEarCaptureCount;
        v10 = "Spatial Profile: Detecting right ear during left enrollment Timeout: %d Right ear status %d Left ear status %d Threshold %d";
        v11 = v5;
        v12 = 26;
LABEL_16:
        _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, v10, &v19, v12);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v13 = self->_rightEarStatus;
    v14 = v13 < 1 || v13 == 3;
    if (!v14 && self->_currentTrackingEar == 1)
    {
      v5 = sharedBluetoothSettingsLogComponent(self);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_supressEarEnrollWarning;
        v16 = self->_rightEarStatus;
        v17 = self->_leftEarCaptureCount;
        v19 = 67109632;
        v20 = v15;
        v21 = 1024;
        v22 = v16;
        v23 = 1024;
        v24 = v17;
        v10 = "Spatial Profile: Detectin left ear during right enrollment Timeout: %d Right ear status %d Threshold %d";
        v11 = v5;
        v12 = 20;
        goto LABEL_16;
      }

LABEL_17:

      return 1;
    }
  }

  return 0;
}

- (void)alertEarEnrollWarning
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentYaw = self->_currentYaw;
    candidateYaw = self->_candidateYaw;
    *buf = 134218240;
    v23 = currentYaw;
    v24 = 2048;
    v25 = candidateYaw;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Error Message *** Enrolling Left ear while right ear enroll is still pending Current yaw %f Candidate Yaw %f ", buf, 0x16u);
  }

  [(HPSSpatialProfileEnrollmentController *)self pauseEnrollment];
  [(HPSSpatialProfileEnrollmentController *)self forceBlur];
  [(CEKSubjectIndicatorView *)self->_earBoundingBoxView setHidden:1];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WRONG_EAR_LEFT_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WRONG_EAR_LEFT_TEXT" value:&stru_286339F58 table:@"SpatialAudioProfile"];

  if (self->_currentTrackingEar == 1)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WRONG_EAR_RIGHT_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WRONG_EAR_RIGHT_TEXT" value:&stru_286339F58 table:@"SpatialAudioProfile"];

    v9 = v13;
    v7 = v11;
  }

  v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v9 preferredStyle:1];
  v15 = MEMORY[0x277D750F8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"CANCEL_ENROLLMENT_ALERT_PROMPT_BUTTON" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__HPSSpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke;
  v21[3] = &unk_2796AD708;
  v21[4] = self;
  v18 = [v15 actionWithTitle:v17 style:0 handler:v21];
  [v14 addAction:v18];

  [(HPSSpatialProfileEnrollmentController *)self presentViewController:v14 animated:1 completion:0];
  stepSerialQueue = self->_stepSerialQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__HPSSpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke_3;
  v20[3] = &unk_2796AD618;
  v20[4] = self;
  dispatch_async(stepSerialQueue, v20);
}

void __62__HPSSpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke(uint64_t a1)
{
  [*(a1 + 32) startEarEnrollWarningTimer];
  [*(a1 + 32) cancelBlur];
  [*(a1 + 32) resumeEnrollment];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HPSSpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke_2;
  block[3] = &unk_2796AD618;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__HPSSpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke_3(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = *(*(a1 + 32) + 1144);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__HPSSpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke_4;
  v5[3] = &unk_2796AD618;
  v6 = v2;
  v4 = v2;
  [v3 triggerSoundHapticForEnrollmentState:19 completion:v5];
}

- (id)getBudsInEarString
{
  v40 = *MEMORY[0x277D85DE8];
  [(BluetoothManager *)self->_btManager connectedDevices];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = v36 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v34;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v33 + 1) + 8 * i);
        if (+[HPSProductUtils isAppleHeadphone:](HPSProductUtils, "isAppleHeadphone:", v7) && ([v7 isTemporaryPaired] & 1) == 0)
        {
          isGenuineAirPods = [v7 isGenuineAirPods];
          if (isGenuineAirPods)
          {
            v9 = [BTSDeviceClassic deviceWithDevice:v7];
            v10 = v9;
            if (v9)
            {
              v29 = 3;
              v30 = 3;
              classicDevice = [v9 classicDevice];
              [classicDevice inEarStatusPrimary:&v30 secondary:&v29];

              if (!v30 || !v29)
              {
                classicDevice2 = [v10 classicDevice];
                productId = [classicDevice2 productId];

                0x2000 = [MEMORY[0x277CCACA8] stringWithFormat:@"ACCESSORY_MODEL_NAME_%d", productId - 0x2000];
                v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v17 = [v16 localizedStringForKey:0x2000 value:&stru_286339F58 table:@"SpatialAudioProfile"];
                if ([v17 length] && productId >= 0x200A)
                {

                  if (productId >> 4 <= 0x200)
                  {
                    v19 = 0;
LABEL_31:
                    v20 = sharedBluetoothSettingsLogComponent(v18);
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      classicDevice3 = [v10 classicDevice];
                      name = [classicDevice3 name];
                      *buf = 138412290;
                      v38 = name;
                      _os_log_impl(&dword_251143000, v20, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Device %@, bud in ear", buf, 0xCu);
                    }

                    uppercaseString = [MGGetStringAnswer() uppercaseString];
                    v12 = [@"SPATIAL_AUDIO_PROFILE_IED_WARN_" stringByAppendingFormat:@"%@_%@", uppercaseString, 0x2000];

                    if (productId == 8215)
                    {
                      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                      v25 = [v24 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_23" value:&stru_286339F58 table:@"DeviceConfig-B453"];

                      v12 = v25;
                    }

                    if (v19)
                    {
                      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                      v27 = [v26 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_180" value:&stru_286339F58 table:@"DeviceConfig-B453"];

                      v12 = v27;
                    }

                    goto LABEL_38;
                  }
                }

                else
                {
                }

                if (productId == 8239)
                {
                  0x2000 = @"ACCESSORY_MODEL_NAME_180";
                  v19 = 1;
                }

                else if (productId == 8223)
                {
                  v19 = 0;
                  0x2000 = @"ACCESSORY_MODEL_NAME_10";
                }

                else
                {
                  v19 = 0;
                  if (productId == 8210)
                  {
                    0x2000 = @"ACCESSORY_MODEL_NAME_18";
                  }

                  else
                  {
                    0x2000 = @"ACCESSORY_MODEL_NAME_15";
                  }
                }

                goto LABEL_31;
              }
            }
          }

          else
          {
            v10 = sharedBluetoothSettingsLogComponent(isGenuineAirPods);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              [(HPSSpatialProfileSingeStepEnrollmentController *)&v31 getBudsInEarString];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_38:

  return v12;
}

- (void)triggerFaceInFrameHandlerTimeout
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    faceBoundingBoxStatus = self->_faceBoundingBoxStatus;
    *buf = 67109120;
    v12 = faceBoundingBoxStatus;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Update Face Capture %d ", buf, 8u);
  }

  if ((self->_currentStep & 0xFFFFFFFE) == 2)
  {
    if (self->_faceBoundingBoxStatus == 1 && !self->_faceCaptured)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__HPSSpatialProfileEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke;
      block[3] = &unk_2796AD618;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v5 = MEMORY[0x277CBEBB8];
      v6 = 1.0;
    }

    else
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __73__HPSSpatialProfileEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke_2;
      v9[3] = &unk_2796AD618;
      v9[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v9);
      v5 = MEMORY[0x277CBEBB8];
      v6 = 3.0;
    }

    v7 = [v5 scheduledTimerWithTimeInterval:self target:sel_triggerFaceInFrameHandlerTimeout selector:0 userInfo:0 repeats:v6];
    faceInFrameHandlerTimer = self->_faceInFrameHandlerTimer;
    self->_faceInFrameHandlerTimer = v7;
  }

  else
  {
    [(HPSSpatialProfileEnrollmentController *)self stopFaceInFrameHandlerTimer];
  }
}

void __73__HPSSpatialProfileEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke(uint64_t a1)
{
  v12 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = [v12 objectForKey:*MEMORY[0x277CBE718]];
  v3 = [v2 BOOLValue];

  v4 = *(*(a1 + 32) + 1032);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FACE_TOO_CLOSE_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v4 setTitle:v6];

  v7 = *(*(a1 + 32) + 1032);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v3)
  {
    v10 = @"FACE_TOO_CLOSE_DETAIL_METRICS";
  }

  else
  {
    v10 = @"FACE_TOO_CLOSE_DETAIL_IMPERIAL";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v7 setDetailText:v11];
}

void __73__HPSSpatialProfileEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FRONT_VIEW_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 32) + 1032);
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"FRONT_VIEW_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v6];
}

- (void)startFaceInFrameHandlerTimer
{
  selfCopy = self;
  if (self->_faceInFrameHandlerTimer)
  {
    v3 = sharedBluetoothSettingsLogComponent(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Face Tracker Timer already started, stopping it first", buf, 2u);
    }

    self = [(HPSSpatialProfileEnrollmentController *)selfCopy stopFaceInFrameHandlerTimer];
  }

  v4 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Face Tracker Timer", v7, 2u);
  }

  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:selfCopy target:sel_triggerFaceInFrameHandlerTimeout selector:0 userInfo:0 repeats:3.0];
  faceInFrameHandlerTimer = selfCopy->_faceInFrameHandlerTimer;
  selfCopy->_faceInFrameHandlerTimer = v5;
}

- (void)stopFaceInFrameHandlerTimer
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Face Tracker Timer", v5, 2u);
  }

  [(NSTimer *)self->_faceInFrameHandlerTimer invalidate];
  faceInFrameHandlerTimer = self->_faceInFrameHandlerTimer;
  self->_faceInFrameHandlerTimer = 0;
}

- (void)startOcclusionWarnCoolDownTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HPSSpatialProfileEnrollmentController_startOcclusionWarnCoolDownTimer__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__HPSSpatialProfileEnrollmentController_startOcclusionWarnCoolDownTimer__block_invoke(uint64_t a1, double a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (*(v3 + 1432))
  {
    [v3 stopOcclusionWarnCoolDownTimer];
    v3 = *(a1 + 32);
  }

  *(v3 + 1440) = 1;
  LOBYTE(a2) = *(*(a1 + 32) + 1441);
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*&a2 target:? selector:? userInfo:? repeats:?];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1432);
  *(v5 + 1432) = v4;

  v8 = sharedBluetoothSettingsLogComponent(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 1441);
    v12[0] = 67109120;
    v12[1] = v9;
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Start Occlusion timer for %dSec", v12, 8u);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 1441);
  if (v11 <= 0x1E)
  {
    *(v10 + 1441) = v11 + 5;
  }
}

- (void)restartOcclusionWarnCoolDownTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HPSSpatialProfileEnrollmentController_restartOcclusionWarnCoolDownTimer__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__HPSSpatialProfileEnrollmentController_restartOcclusionWarnCoolDownTimer__block_invoke(uint64_t a1, double a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (*(v3 + 1432))
  {
    [v3 stopOcclusionWarnCoolDownTimer];
    v3 = *(a1 + 32);
  }

  *(v3 + 1440) = 1;
  LOBYTE(a2) = *(*(a1 + 32) + 1441);
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*&a2 target:? selector:? userInfo:? repeats:?];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1432);
  *(v5 + 1432) = v4;

  v8 = sharedBluetoothSettingsLogComponent(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 1441);
    v10[0] = 67109120;
    v10[1] = v9;
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Restart Occlusion warning timer to  %dSec", v10, 8u);
  }
}

- (void)triggerOcclusionWarnCoolDownTimer
{
  v7 = *MEMORY[0x277D85DE8];
  self->_supressEarOcclusionWarning = 0;
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isLookingAtPhone)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Ready to show occlusion error %@", &v5, 0xCu);
  }
}

- (void)stopOcclusionWarnCoolDownTimer
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isLookingAtPhone)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Occlusion Timer Attention %@", &v6, 0xCu);
  }

  [(NSTimer *)self->_occlusionWarnCoolDownTimer invalidate];
  occlusionWarnCoolDownTimer = self->_occlusionWarnCoolDownTimer;
  self->_occlusionWarnCoolDownTimer = 0;
}

- (void)alertOcclusionWarning
{
  [(HPSSpatialProfileEnrollmentController *)self updateBoundingBoxHiddenStatus];
  currentStep = self->_currentStep;
  if ((currentStep & 0xFFFFFFFE) == 6)
  {
    [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics incrementRightEarOcclusionCount];
    currentStep = self->_currentStep;
  }

  if ((currentStep & 0xFFFFFFFE) == 0xA)
  {
    [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics incrementLeftEarOcclusionCount];
  }

  [(HPSSpatialProfileEnrollmentController *)self pauseEnrollment];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HPSSpatialProfileEnrollmentController_alertOcclusionWarning__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__HPSSpatialProfileEnrollmentController_alertOcclusionWarning__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getBudsInEarString];
  [*(a1 + 32) clearBoundingBox];
  [*(*(a1 + 32) + 1144) pauseProgressPlayer];
  [*(*(a1 + 32) + 1144) pauseEnrollGuidancePlayer];
  [*(a1 + 32) forceBlur];
  v3 = *(*(a1 + 32) + 1032);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"OCCLUSION_EAR" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v3 setTitle:v5];

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"Buds In ear";
    if (!v2)
    {
      v8 = @"General";
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 1584);
    v11 = *(v9 + 1592);
    *buf = 138412802;
    v25 = v8;
    v26 = 2048;
    v27 = v10;
    v28 = 2048;
    v29 = v11;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Error Message *** Occlusion detection warning shown to user : %@ Current Yaw %f Candidate Yaw %f", buf, 0x20u);
  }

  v12 = *(a1 + 32);
  if (v2)
  {
    v13 = *(v12 + 1032);
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = v14;
    v16 = v2;
LABEL_11:
    v18 = [v14 localizedStringForKey:v16 value:&stru_286339F58 table:@"SpatialAudioProfile"];
    [v13 setDetailText:v18];

    goto LABEL_12;
  }

  v17 = *(v12 + 1252) & 0xFFFFFFFE;
  if (v17 == 6)
  {
    v13 = *(v12 + 1032);
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = v14;
    v16 = @"OCCLUSION_EAR_DETAIL_RIGHT";
    goto LABEL_11;
  }

  if (v17 == 10)
  {
    v13 = *(v12 + 1032);
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = v14;
    v16 = @"OCCLUSION_EAR_DETAIL_LEFT";
    goto LABEL_11;
  }

LABEL_12:
  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  v20 = *(*(a1 + 32) + 1144);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__HPSSpatialProfileEnrollmentController_alertOcclusionWarning__block_invoke_353;
  v22[3] = &unk_2796AD618;
  v23 = v19;
  v21 = v19;
  [v20 triggerSoundHapticForEnrollmentState:19 completion:v22];
  [*(a1 + 32) showOcclusionContinueButton];
}

- (void)continueOcclusionWarning
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Occlusion Continue Button Tapped", buf, 2u);
  }

  [(HPSSpatialProfileEnrollmentController *)self resumeEnrollment];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HPSSpatialProfileEnrollmentController_continueOcclusionWarning__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  self->_isEarOccluded = 0;
  self->_earOcclusionDetectTracker = 0;
  [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager playProgressPlayer:self->_currentStep];
  [(HPSSpatialProfileEnrollmentController *)self startOcclusionWarnCoolDownTimer];
}

uint64_t __65__HPSSpatialProfileEnrollmentController_continueOcclusionWarning__block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancelBlur];
  [*(a1 + 32) hideOcclusionContinueButton];
  v2 = *(a1 + 32);

  return [v2 updateEarEnrollText];
}

- (void)updateEarEnrollText
{
  v3 = self->_currentStep - 6;
  if (v3 <= 5 && ((0x33u >> v3) & 1) != 0)
  {
    v5 = off_2796AE4F0[v3];
    v6 = off_2796AE520[v3];
    infoView = self->_infoView;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:v5 value:&stru_286339F58 table:@"SpatialAudioProfile"];
    [(OBHeaderView *)infoView setTitle:v9];

    v10 = self->_infoView;
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v12 localizedStringForKey:v6 value:&stru_286339F58 table:@"SpatialAudioProfile"];
    [(OBHeaderView *)v10 setDetailText:v11];
  }
}

- (void)startEarEnrollWarningTimer
{
  if (self->_startEarEnrollWarningCoolDownTimer)
  {
    v3 = sharedBluetoothSettingsLogComponent(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Wrong ear check", buf, 2u);
    }

    [(NSTimer *)self->_startEarEnrollWarningCoolDownTimer invalidate];
    startEarEnrollWarningCoolDownTimer = self->_startEarEnrollWarningCoolDownTimer;
    self->_startEarEnrollWarningCoolDownTimer = 0;
  }

  self->_supressEarEnrollWarning = 1;
  v5 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Wrong ear check shown, wait some time before showing again", v8, 2u);
  }

  v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_triggerstartEarEnrollWarningTimer selector:0 userInfo:0 repeats:3.0];
  v7 = self->_startEarEnrollWarningCoolDownTimer;
  self->_startEarEnrollWarningCoolDownTimer = v6;
}

- (void)triggerstartEarEnrollWarningTimer
{
  self->_supressEarEnrollWarning = 0;
  v2 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Wrong Ear warning Process Timeout", v3, 2u);
  }
}

- (void)startPostProcessTimer
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_postProcessTimer)
  {
    v3 = sharedBluetoothSettingsLogComponent(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Post Process Timer already started, stopping it first", &v11, 2u);
    }

    [(HPSSpatialProfileEnrollmentController *)self stopPostProcessTimer];
  }

  v4 = MGGetBoolAnswer();
  if (v4)
  {
    v5 = 120.0;
  }

  else
  {
    v5 = 240.0;
  }

  v6 = sharedBluetoothSettingsLogComponent(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v5;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting Post Process Timer %f", &v11, 0xCu);
  }

  v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_triggerPostProcessTimeout selector:0 userInfo:0 repeats:v5];
  postProcessTimer = self->_postProcessTimer;
  self->_postProcessTimer = v7;

  v9 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_startPostProcessSpinner selector:0 userInfo:0 repeats:2.0];
  postProcessSpinnerTimer = self->_postProcessSpinnerTimer;
  self->_postProcessSpinnerTimer = v9;
}

- (void)stopPostProcessTimer
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Post Process Timer", v6, 2u);
  }

  [(NSTimer *)self->_postProcessTimer invalidate];
  postProcessTimer = self->_postProcessTimer;
  self->_postProcessTimer = 0;

  [(NSTimer *)self->_postProcessSpinnerTimer invalidate];
  postProcessSpinnerTimer = self->_postProcessSpinnerTimer;
  self->_postProcessSpinnerTimer = 0;
}

- (void)triggerPostProcessTimeout
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Triggering Post Process Timeout", v4, 2u);
  }

  [(HPSSpatialProfileEnrollmentController *)self moveToStep:19];
}

- (void)didReceiveStateUpdateForSession:(id)session stateInfo:(id)info
{
  v255 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  infoCopy = info;
  v8 = MEMORY[0x277D0F9A0];
  v9 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0F9A0]];
  if (!v9 || (v10 = v9, [infoCopy objectForKeyedSubscript:*v8], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [HPSSpatialProfileEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
  }

  v12 = [infoCopy objectForKeyedSubscript:*v8];
  *&v13 = COERCE_DOUBLE([v12 integerValue]);

  v14 = MEMORY[0x277D0F978];
  v15 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0F978]];

  if (v15)
  {
    [infoCopy objectForKeyedSubscript:*v14];
    v17 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v18 = v17;
    if (v17 != 0.0)
    {
      v19 = sharedBluetoothSettingsLogComponent([*&v17 code]);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v229 = v18;
        _os_log_impl(&dword_251143000, v19, OS_LOG_TYPE_DEFAULT, "Spatial Profile: didReceiveStateUpdateForSession  ERROR: %@ ", buf, 0xCu);
      }

      if (self->_currentStep != 19)
      {
        v20 = [(HPSSpatialProfileEnrollmentController *)self moveToStep:19];
      }

      v21 = sharedBluetoothSettingsLogComponent(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [HPSSpatialProfileSingeStepEnrollmentController didReceiveStateUpdateForSession:? stateInfo:?];
      }
    }
  }

  if (self->_sessionState != v13)
  {
    v22 = sharedBluetoothSettingsLogComponent(v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v229 = *&v13;
      _os_log_impl(&dword_251143000, v22, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Frame Rate : Update Session %lu", buf, 0xCu);
    }

    self->_sessionState = v13;
  }

  if ((v13 - 1) <= 1)
  {
    [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics incrementFrameCount];
  }

  v23 = MEMORY[0x277D0F990];
  v24 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0F990]];

  if (v24)
  {
    v26 = [infoCopy objectForKeyedSubscript:*v23];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HPSSpatialProfileEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
    }

    v27 = [infoCopy objectForKeyedSubscript:*v23];
    [v27 doubleValue];
    v29 = v28;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = 0x27F421000;
  if (v13 <= 2)
  {
    if (*&v13 == 0.0)
    {
      v49 = sharedBluetoothSettingsLogComponent(v25);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v49, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Idle", buf, 2u);
      }

      goto LABEL_276;
    }

    if (v13 != 1)
    {
      if (v13 != 2)
      {
        goto LABEL_276;
      }

      v31 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0F970]];
      v32 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0F988]];
      v33 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0F998]];
      earCaptureStatus = [v31 earCaptureStatus];
      [v31 earBoundingBox];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v200 = v33;
      v43 = [(HPSSpatialProfileEnrollmentController *)self updateCurrentTrackingEar:v32 rightEarPoseStatus:v33 earBoundingBox:earCaptureStatus earStatus:?];
      currentStep = self->_currentStep;
      if (currentStep == 9)
      {
        if (self->_currentTrackingEar == 1)
        {
          v45 = v32;
          v46 = sharedBluetoothSettingsLogComponent(v43);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v47 = "Spatial Profile: Deteceted Left Ear when in Tutorial View, Pivot to enrollment ";
            goto LABEL_164;
          }

LABEL_165:

          [(HPSSpatialProfileEnrollmentController *)self continueButtonTapped];
          v32 = v45;
        }

LABEL_275:

        v30 = 0x27F421000uLL;
        goto LABEL_276;
      }

      if (currentStep == 5)
      {
        if (self->_currentTrackingEar == 2)
        {
          v45 = v32;
          v46 = sharedBluetoothSettingsLogComponent(v43);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v47 = "Spatial Profile: Deteceted Right Ear when in Tutorial View, Pivot to right ear enrollment ";
LABEL_164:
            _os_log_impl(&dword_251143000, v46, OS_LOG_TYPE_DEFAULT, v47, buf, 2u);
            goto LABEL_165;
          }

          goto LABEL_165;
        }

        goto LABEL_275;
      }

      v112 = sharedBluetoothSettingsLogComponent(v43);
      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
      {
        v192 = v31;
        v175 = sessionCopy;
        v176 = v32;
        *&v177 = COERCE_DOUBLE(@"NO");
        v178 = v176;
        if (v176 && [v176 hasYawAngle])
        {
          *&v177 = COERCE_DOUBLE(@"YES");
        }

        v179 = @"NO";
        if (v33)
        {
          if ([v33 hasYawAngle])
          {
            v179 = @"YES";
          }

          else
          {
            v179 = @"NO";
          }
        }

        if (v178)
        {
          if ([v178 hasYawAngle])
          {
            [v178 currentYawAngle];
            v180 = v186;
          }

          else
          {
            v180 = 0xC059000000000000;
          }

          if ([v178 hasPitchAngle])
          {
            [v178 currentPitchAngle];
            v181 = v187;
          }

          else
          {
            v181 = 0xC059000000000000;
          }
        }

        else
        {
          v180 = 0xC059000000000000;
          v181 = 0xC059000000000000;
        }

        if (v33)
        {
          if ([v33 hasYawAngle])
          {
            [v33 currentYawAngle];
            v188 = v190;
          }

          else
          {
            v188 = 0xC059000000000000;
          }

          if ([v33 hasPitchAngle])
          {
            [v33 currentPitchAngle];
          }

          else
          {
            v189 = 0xC059000000000000;
          }
        }

        else
        {
          v188 = 0xC059000000000000;
          v189 = 0xC059000000000000;
        }

        v191 = @"YES";
        if (!self->_earBoundingBoxDetected)
        {
          v191 = @"NO";
        }

        *buf = 138415106;
        v229 = *&v177;
        v230 = 2112;
        v231 = v179;
        v232 = 2048;
        v233 = v180;
        v234 = 2048;
        v235 = v181;
        v236 = 2048;
        v237 = v188;
        v238 = 2048;
        v239 = v189;
        v240 = 2112;
        v241 = v191;
        v242 = 2048;
        v243 = v36;
        v244 = 2048;
        v245 = v38;
        v246 = 2048;
        v247 = v40;
        v248 = 2048;
        v249 = v42;
        v250 = 1024;
        v251 = earCaptureStatus;
        _os_log_debug_impl(&dword_251143000, v112, OS_LOG_TYPE_DEBUG, "Spatial Profile: Left :%@ Right:%@ Yaw-Pitch left (%f ,%f) Right (%f ,%f)Ear Bounding Box: : %@ origin(%f, %f), size(%f, %f) Status %d", buf, 0x76u);
        sessionCopy = v175;
        v31 = v192;
        v32 = v178;
      }

      if (self->_enrollmentPaused)
      {
LABEL_188:
        if (v33)
        {
          isPresentingWrongEar = [(HPSSpatialProfileEnrollmentController *)self isPresentingWrongEar];
          if (isPresentingWrongEar)
          {
            v124 = v32;
            v125 = sharedBluetoothSettingsLogComponent(isPresentingWrongEar);
            if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_251143000, v125, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Seeing Left ear When Right is not completed", buf, 2u);
            }

            if (!self->_enrollmentPaused)
            {
              v212[0] = MEMORY[0x277D85DD0];
              v212[1] = 3221225472;
              v212[2] = __83__HPSSpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_365;
              v212[3] = &unk_2796AD618;
              v212[4] = self;
              dispatch_async(MEMORY[0x277D85CD0], v212);
            }

            v126 = 0;
            v32 = v124;
            goto LABEL_229;
          }

          v193 = v32;
          v195 = sessionCopy;
          v198 = infoCopy;
          v210 = 0u;
          v211 = 0u;
          v208 = 0u;
          v209 = 0u;
          yawAngles = [v33 yawAngles];
          v128 = [yawAngles countByEnumeratingWithState:&v208 objects:v227 count:16];
          if (v128)
          {
            v129 = v128;
            v126 = 0;
            v130 = *v209;
            do
            {
              for (i = 0; i != v129; ++i)
              {
                if (*v209 != v130)
                {
                  objc_enumerationMutation(yawAngles);
                }

                v132 = *(*(&v208 + 1) + 8 * i);
                [v132 angle];
                v134 = -v133;
                if (v133 <= -11.0)
                {
                  v139 = v133;
                  captured = [v132 captured];
                  if (v139 >= -13.0)
                  {
                    if (captured && !self->_rightEarMidCaptured)
                    {
                      v144 = sharedBluetoothSettingsLogComponent(captured);
                      if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
                      {
                        [v132 angle];
                        *buf = 134218240;
                        v229 = v134;
                        v230 = 2048;
                        v231 = v145;
                        _os_log_impl(&dword_251143000, v144, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Right Ear: Mid Captured: %f (%f)", buf, 0x16u);
                      }

                      v126 = 1;
                      self->_rightEarMidCaptured = 1;
                      v146 = CACurrentMediaTime();
                      self->_lastEarCaptureTime = v146;
                      self->_enrollGuidancePitch = 0.5;
                      LODWORD(v146) = 0.5;
                      [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v146];
                      [(HPSSpatialProfileEnrollmentController *)self earCentralPartCaptured];
                      [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateRightEarMidAnglelDuration];
                    }
                  }

                  else if (captured && !self->_rightEarFrontCaptured)
                  {
                    v141 = sharedBluetoothSettingsLogComponent(captured);
                    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
                    {
                      [v132 angle];
                      *buf = 134218240;
                      v229 = v134;
                      v230 = 2048;
                      v231 = v142;
                      _os_log_impl(&dword_251143000, v141, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Right Ear: Front Captured: %f (%f)", buf, 0x16u);
                    }

                    v126 = 1;
                    self->_rightEarFrontCaptured = 1;
                    v143 = CACurrentMediaTime();
                    self->_lastEarCaptureTime = v143;
                    self->_enrollGuidancePitch = 0.5;
                    LODWORD(v143) = 0.5;
                    [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v143];
                    [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateRightEarFrontAnglelDuration];
                    [(HPSSpatialProfileEnrollmentController *)self earLeftPartCaptured];
                  }
                }

                else
                {
                  captured2 = [v132 captured];
                  if (captured2 && !self->_rightEarRearCaptured)
                  {
                    v136 = sharedBluetoothSettingsLogComponent(captured2);
                    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
                    {
                      [v132 angle];
                      *buf = 134218240;
                      v229 = v134;
                      v230 = 2048;
                      v231 = v137;
                      _os_log_impl(&dword_251143000, v136, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Right Ear: Rear Captured: %f (%f)", buf, 0x16u);
                    }

                    v126 = 1;
                    self->_rightEarRearCaptured = 1;
                    self->_lastEarCaptureTime = CACurrentMediaTime();
                    [(HPSSpatialProfileEnrollmentController *)self earRightPartCaptured];
                    self->_enrollGuidancePitch = 0.5;
                    LODWORD(v138) = 0.5;
                    [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v138];
                    [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateRightEarBackAnglelDuration];
                  }
                }
              }

              v129 = [yawAngles countByEnumeratingWithState:&v208 objects:v227 count:16];
            }

            while (v129);
          }

          else
          {
            v126 = 0;
          }

          remainingYawAngles = [v200 remainingYawAngles];
          if ([remainingYawAngles count])
          {

            sessionCopy = v195;
            infoCopy = v198;
LABEL_228:
            v32 = v193;
            goto LABEL_229;
          }

          rightEarCaptured = self->_rightEarCaptured;

          sessionCopy = v195;
          infoCopy = v198;
          v32 = v193;
          if (!rightEarCaptured)
          {
            v150 = sharedBluetoothSettingsLogComponent(v149);
            if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_251143000, v150, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Right Ear Captured", buf, 2u);
            }

            self->_rightEarCaptured = 1;
            [(HPSSpatialProfileEnrollmentController *)self moveToStep:8];
            v126 = 0;
            goto LABEL_228;
          }
        }

        else
        {
          v126 = 0;
        }

LABEL_229:
        if (v32)
        {
          isPresentingWrongEar2 = [(HPSSpatialProfileEnrollmentController *)self isPresentingWrongEar];
          if (isPresentingWrongEar2)
          {
            v152 = v32;
            v153 = sharedBluetoothSettingsLogComponent(isPresentingWrongEar2);
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_251143000, v153, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Seeing Left ear When Right is not completed", buf, 2u);
            }

            if (!self->_enrollmentPaused)
            {
              v207[0] = MEMORY[0x277D85DD0];
              v207[1] = 3221225472;
              v207[2] = __83__HPSSpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_366;
              v207[3] = &unk_2796AD618;
              v207[4] = self;
              dispatch_async(MEMORY[0x277D85CD0], v207);
            }

            v32 = v152;
          }

          else if (self->_rightEarStatus == 3)
          {
            v194 = v32;
            v196 = sessionCopy;
            v199 = infoCopy;
            v205 = 0u;
            v206 = 0u;
            v203 = 0u;
            v204 = 0u;
            yawAngles2 = [v32 yawAngles];
            v155 = [yawAngles2 countByEnumeratingWithState:&v203 objects:v226 count:16];
            if (v155)
            {
              v156 = v155;
              v157 = *v204;
              do
              {
                for (j = 0; j != v156; ++j)
                {
                  if (*v204 != v157)
                  {
                    objc_enumerationMutation(yawAngles2);
                  }

                  v159 = *(*(&v203 + 1) + 8 * j);
                  [v159 angle];
                  v161 = -v160;
                  if (v160 >= -13.0)
                  {
                    v166 = v160;
                    captured3 = [v159 captured];
                    if (v166 <= -11.0)
                    {
                      if (captured3 && !self->_leftEarMidCaptured)
                      {
                        v171 = sharedBluetoothSettingsLogComponent(captured3);
                        if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
                        {
                          [v159 angle];
                          *buf = 134218240;
                          v229 = v161;
                          v230 = 2048;
                          v231 = v172;
                          _os_log_impl(&dword_251143000, v171, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Left Ear: Mid Captured: %f (%f)", buf, 0x16u);
                        }

                        v126 = 1;
                        self->_leftEarMidCaptured = 1;
                        v173 = CACurrentMediaTime();
                        self->_lastEarCaptureTime = v173;
                        self->_enrollGuidancePitch = 0.5;
                        LODWORD(v173) = 0.5;
                        [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v173];
                        [(HPSSpatialProfileEnrollmentController *)self earCentralPartCaptured];
                        [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateLeftEarMidAnglelDuration];
                      }
                    }

                    else if (captured3 && !self->_leftEarFrontCaptured)
                    {
                      v168 = sharedBluetoothSettingsLogComponent(captured3);
                      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
                      {
                        [v159 angle];
                        *buf = 134218240;
                        v229 = v161;
                        v230 = 2048;
                        v231 = v169;
                        _os_log_impl(&dword_251143000, v168, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Left Ear: Rear Captured: %f (%f)", buf, 0x16u);
                      }

                      v126 = 1;
                      self->_leftEarFrontCaptured = 1;
                      v170 = CACurrentMediaTime();
                      self->_lastEarCaptureTime = v170;
                      self->_enrollGuidancePitch = 0.5;
                      LODWORD(v170) = 0.5;
                      [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v170];
                      [(HPSSpatialProfileEnrollmentController *)self earLeftPartCaptured];
                      [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateLeftEarBackAnglelDuration];
                    }
                  }

                  else
                  {
                    captured4 = [v159 captured];
                    if (captured4 && !self->_leftEarRearCaptured)
                    {
                      v163 = sharedBluetoothSettingsLogComponent(captured4);
                      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                      {
                        [v159 angle];
                        *buf = 134218240;
                        v229 = v161;
                        v230 = 2048;
                        v231 = v164;
                        _os_log_impl(&dword_251143000, v163, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Left Ear: Front Captured: %f (%f)", buf, 0x16u);
                      }

                      v126 = 1;
                      self->_leftEarRearCaptured = 1;
                      v165 = CACurrentMediaTime();
                      self->_lastEarCaptureTime = v165;
                      self->_enrollGuidancePitch = 0.5;
                      LODWORD(v165) = 0.5;
                      [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v165];
                      [(HPSSpatialProfileEnrollmentController *)self earRightPartCaptured];
                      [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateLeftEarFrontAnglelDuration];
                    }
                  }
                }

                v156 = [yawAngles2 countByEnumeratingWithState:&v203 objects:v226 count:16];
              }

              while (v156);
            }

            remainingYawAngles2 = [v194 remainingYawAngles];
            if ([remainingYawAngles2 count])
            {

              sessionCopy = v196;
              infoCopy = v199;
              v32 = v194;
            }

            else
            {
              leftEarCaptured = self->_leftEarCaptured;

              sessionCopy = v196;
              infoCopy = v199;
              v32 = v194;
              if (!leftEarCaptured)
              {
                v185 = sharedBluetoothSettingsLogComponent(v183);
                if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_251143000, v185, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Left Ear Captured", buf, 2u);
                }

                self->_leftEarCaptured = 1;
                [(HPSSpatialProfileEnrollmentController *)self moveToStep:12];
                v32 = v194;
                goto LABEL_275;
              }
            }
          }
        }

        if (v126)
        {
          [(HPSSpatialProfileEnrollmentController *)self startOcclusionWarnCoolDownTimer];
          [(HPSSpatialProfileEnrollmentController *)self startEarDistanceWarnCoolDownTimer];
        }

        goto LABEL_275;
      }

      v257.origin.x = v36;
      v257.origin.y = v38;
      v257.size.width = v40;
      v257.size.height = v42;
      if (!CGRectEqualToRect(v257, *MEMORY[0x277CBF3A0]))
      {
        v113 = v32;
        previewLayer = [(HPSSpatialProfileVideoCaptureSession *)self->videoCaptureSession previewLayer];
        [previewLayer frame];
        [(HPSSpatialProfileEnrollmentController *)self translateEarBoundingBox:v36 previewLayerBoundingBox:v38, v40, v42, v115, v116, v117, v118];

        if (!self->_rightEarDetected && self->_currentStep == 6)
        {
          v120 = sharedBluetoothSettingsLogComponent(v119);
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_251143000, v120, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Right Ear Detected", buf, 2u);
          }

          self->_rightEarDetected = 1;
          v119 = [(HPSSpatialProfileEnrollmentController *)self moveToStep:7];
        }

        v32 = v113;
        if (!self->_leftEarDetected && self->_currentStep == 10)
        {
          v121 = sharedBluetoothSettingsLogComponent(v119);
          if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_251143000, v121, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Left Ear Detected", buf, 2u);
          }

          [(HPSSpatialProfileEnrollmentController *)self pauseEnrollment];
          self->_leftEarDetected = 1;
          [(HPSSpatialProfileEnrollmentController *)self moveToStep:11];
          v32 = v113;
        }
      }

      [(HPSSpatialProfileEnrollmentController *)self updateBoundingBoxHiddenStatus];
      if ([(HPSSpatialProfileEnrollmentController *)self isEarTooClose])
      {
        v122 = 3;
      }

      else if ([(HPSSpatialProfileEnrollmentController *)self isEarTooFar])
      {
        v122 = 4;
      }

      else
      {
        if (![(HPSSpatialProfileEnrollmentController *)self isEarMovingFast])
        {
          goto LABEL_186;
        }

        v122 = 5;
      }

      [(HPSSpatialProfileEnrollmentController *)self alertEarDistanceWarning:v122];
LABEL_186:
      if ([(HPSSpatialProfileEnrollmentController *)self isEarOccluded])
      {
        [(HPSSpatialProfileEnrollmentController *)self alertOcclusionWarning];
      }

      goto LABEL_188;
    }

    v56 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0F980]];
    v54 = v56;
    if (!v56)
    {
      goto LABEL_155;
    }

    [v56 faceBoundingBox];
    if (!CGRectEqualToRect(v256, *MEMORY[0x277CBF3A0]) && !self->_faceCaptured)
    {
      [v54 faceBoundingBox];
      [(HPSSpatialProfileEnrollmentController *)self updateFaceTrackingStatus:?];
    }

    v197 = infoCopy;
    v201 = v54;
    if (!self->_faceStraightZeroAngleCaptured)
    {
      v224 = 0u;
      v225 = 0u;
      v222 = 0u;
      v223 = 0u;
      yawAngles3 = [v54 yawAngles];
      v58 = [yawAngles3 countByEnumeratingWithState:&v222 objects:v254 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v223;
        do
        {
          for (k = 0; k != v59; ++k)
          {
            if (*v223 != v60)
            {
              objc_enumerationMutation(yawAngles3);
            }

            v62 = *(*(&v222 + 1) + 8 * k);
            [v62 angle];
            if (v63 == 0.0)
            {
              captured5 = [v62 captured];
              if (captured5)
              {
                self->_faceStraightZeroAngleCaptured = 1;
                v65 = sharedBluetoothSettingsLogComponent(captured5);
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  [v62 angle];
                  v67 = v66;
                  captured6 = [v62 captured];
                  *buf = 134218240;
                  v229 = v67;
                  v230 = 1024;
                  LODWORD(v231) = captured6;
                  _os_log_impl(&dword_251143000, v65, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Captured straight face angle %f ->  %d", buf, 0x12u);
                }
              }
            }
          }

          v59 = [yawAngles3 countByEnumeratingWithState:&v222 objects:v254 count:16];
        }

        while (v59);
      }
    }

    hasYawAngle = [v54 hasYawAngle];
    if (hasYawAngle && (hasYawAngle = [v54 hasPitchAngle], hasYawAngle))
    {
      if (self->_faceDetected || !self->_faceStraightZeroAngleCaptured || self->_currentStep != 2)
      {
        goto LABEL_96;
      }

      v70 = sharedBluetoothSettingsLogComponent(hasYawAngle);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v70, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Straight angle: Transition to View CaptureMoveHead", buf, 2u);
      }

      self->_faceDetected = 1;
      v71 = 3;
    }

    else
    {
      if (!self->_faceDetected || self->_currentStep != 3)
      {
        goto LABEL_96;
      }

      v76 = sharedBluetoothSettingsLogComponent(hasYawAngle);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v76, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Face NOT Detected, Return to previous step", buf, 2u);
      }

      self->_faceDetected = 0;
      v71 = 2;
    }

    [(HPSSpatialProfileEnrollmentController *)self moveToStep:v71];
LABEL_96:
    v220 = 0u;
    v221 = 0u;
    v218 = 0u;
    v219 = 0u;
    yawAngles4 = [v54 yawAngles];
    v78 = [yawAngles4 countByEnumeratingWithState:&v218 objects:v253 count:16];
    if (!v78)
    {
      goto LABEL_125;
    }

    v79 = v78;
    v80 = *v219;
    while (1)
    {
      for (m = 0; m != v79; ++m)
      {
        if (*v219 != v80)
        {
          objc_enumerationMutation(yawAngles4);
        }

        v82 = *(*(&v218 + 1) + 8 * m);
        if (self->_faceDetected)
        {
          [*(*(&v218 + 1) + 8 * m) angle];
          if (v83 > 0.0)
          {
            captured7 = [v82 captured];
            if (captured7)
            {
              if (!self->_faceRightFilled)
              {
                v91 = sharedBluetoothSettingsLogComponent(captured7);
                if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                {
                  [v82 angle];
                  *buf = 134217984;
                  v229 = v92;
                  _os_log_impl(&dword_251143000, v91, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Right with Yaw: %f", buf, 0xCu);
                }

                self->_faceRightFilled = 1;
                if (self->_faceUpFilled)
                {
                  [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:1];
                }

                v89 = 0;
                if (self->_faceDownFilled)
                {
                  v90 = 7;
LABEL_121:
                  [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:v90];
                }

LABEL_122:
                [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:v89];
                continue;
              }
            }
          }
        }

        if (self->_faceDetected)
        {
          [v82 angle];
          if (v85 < 0.0)
          {
            captured8 = [v82 captured];
            if (captured8)
            {
              if (!self->_faceLeftFilled)
              {
                v87 = sharedBluetoothSettingsLogComponent(captured8);
                if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                {
                  [v82 angle];
                  *buf = 134217984;
                  v229 = v88;
                  _os_log_impl(&dword_251143000, v87, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Left with Yaw: %f", buf, 0xCu);
                }

                self->_faceLeftFilled = 1;
                if (self->_faceUpFilled)
                {
                  [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:3];
                }

                v89 = 4;
                if (self->_faceDownFilled)
                {
                  v90 = 5;
                  goto LABEL_121;
                }

                goto LABEL_122;
              }
            }
          }
        }
      }

      v79 = [yawAngles4 countByEnumeratingWithState:&v218 objects:v253 count:16];
      if (!v79)
      {
LABEL_125:

        v216 = 0u;
        v217 = 0u;
        v214 = 0u;
        v215 = 0u;
        pitchAngles = [v201 pitchAngles];
        v94 = [pitchAngles countByEnumeratingWithState:&v214 objects:v252 count:16];
        if (!v94)
        {
          goto LABEL_154;
        }

        v95 = v94;
        v96 = *v215;
        while (1)
        {
          for (n = 0; n != v95; ++n)
          {
            if (*v215 != v96)
            {
              objc_enumerationMutation(pitchAngles);
            }

            v98 = *(*(&v214 + 1) + 8 * n);
            if (self->_faceDetected)
            {
              [*(*(&v214 + 1) + 8 * n) angle];
              if (v99 > 0.0)
              {
                captured9 = [v98 captured];
                if (captured9)
                {
                  if (!self->_faceUpFilled)
                  {
                    v107 = sharedBluetoothSettingsLogComponent(captured9);
                    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                    {
                      [v98 angle];
                      *buf = 134217984;
                      v229 = v108;
                      _os_log_impl(&dword_251143000, v107, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Up with Pitch: %f", buf, 0xCu);
                    }

                    self->_faceUpFilled = 1;
                    if (self->_faceLeftFilled)
                    {
                      [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:3];
                    }

                    v105 = 2;
                    if (self->_faceRightFilled)
                    {
                      v106 = 1;
LABEL_150:
                      [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:v106];
                    }

LABEL_151:
                    [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:v105];
                    continue;
                  }
                }
              }
            }

            if (self->_faceDetected)
            {
              [v98 angle];
              if (v101 < 0.0)
              {
                captured10 = [v98 captured];
                if (captured10)
                {
                  if (!self->_faceDownFilled)
                  {
                    v103 = sharedBluetoothSettingsLogComponent(captured10);
                    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                    {
                      [v98 angle];
                      *buf = 134217984;
                      v229 = v104;
                      _os_log_impl(&dword_251143000, v103, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Down with Pitch: %f", buf, 0xCu);
                    }

                    self->_faceDownFilled = 1;
                    if (self->_faceLeftFilled)
                    {
                      [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:5];
                    }

                    v105 = 6;
                    if (self->_faceRightFilled)
                    {
                      v106 = 7;
                      goto LABEL_150;
                    }

                    goto LABEL_151;
                  }
                }
              }
            }
          }

          v95 = [pitchAngles countByEnumeratingWithState:&v214 objects:v252 count:16];
          if (!v95)
          {
LABEL_154:

            infoCopy = v197;
            v30 = 0x27F421000uLL;
            v54 = v201;
LABEL_155:
            if (v29 == 1.0 && !self->_faceCaptured)
            {
              v109 = sharedBluetoothSettingsLogComponent(v56);
              if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
              {
                [(BKUIPearlEnrollView *)self->_enrollView percentOfPillsCompleted];
                *buf = 134217984;
                v229 = v110;
                _os_log_impl(&dword_251143000, v109, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Face Captured %f", buf, 0xCu);
              }

              self->_faceCaptured = 1;
              *(&self->super.super.super.isa + *(v30 + 4060)) = 0;
              v111 = dispatch_get_global_queue(21, 0);
              v213[0] = MEMORY[0x277D85DD0];
              v213[1] = 3221225472;
              v213[2] = __83__HPSSpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke;
              v213[3] = &unk_2796AD618;
              v213[4] = self;
              dispatch_async(v111, v213);
            }

LABEL_160:

            goto LABEL_276;
          }
        }
      }
    }
  }

  switch(v13)
  {
    case 3:
      updateSoundProfileCreationDurationStart = [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateSoundProfileCreationDurationStart];
      v51 = self->_currentStep;
      if (v51 <= 11 && (v51 == 9 || v51 == 5))
      {
        v52 = sharedBluetoothSettingsLogComponent(updateSoundProfileCreationDurationStart);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_251143000, v52, OS_LOG_TYPE_DEFAULT, "Spatial Profile: detected Post Process when in  Tutorial View, Pivot to next step. ", buf, 2u);
        }

        v53 = self->_currentStep;
        if (v53 != 12)
        {
          if (v53 <= 10)
          {
            [(HPSSpatialProfileEnrollmentController *)self moveToStep:11];
          }

          updateSoundProfileCreationDurationStart = [(HPSSpatialProfileEnrollmentController *)self moveToStep:12];
        }
      }

      v54 = sharedBluetoothSettingsLogComponent(updateSoundProfileCreationDurationStart);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = self->_currentStep;
        *buf = 67109120;
        LODWORD(v229) = v55;
        _os_log_impl(&dword_251143000, v54, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Post Process : %d", buf, 8u);
      }

      goto LABEL_160;
    case 4:
      v72 = sharedBluetoothSettingsLogComponent(v25);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v72, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Retrieve Profile", buf, 2u);
      }

      v74 = self->_currentStep;
      if (v74 == 9 || v74 == 5)
      {
        v75 = sharedBluetoothSettingsLogComponent(v73);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_251143000, v75, OS_LOG_TYPE_DEFAULT, "Spatial Profile: detected Post Process when in  Tutorial View, Pivot to next step. ", buf, 2u);
        }

        [(HPSSpatialProfileEnrollmentController *)self continueButtonTapped];
        v74 = self->_currentStep;
      }

      if (v74 != 12)
      {
        if (v74 <= 10)
        {
          [(HPSSpatialProfileEnrollmentController *)self moveToStep:11];
        }

        [(HPSSpatialProfileEnrollmentController *)self moveToStep:12];
      }

      [(HPSSpatialProfileEnrollmentController *)self moveToStep:14];
      [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateSoundProfileCreationDuration];
      break;
    case 5:
      v48 = sharedBluetoothSettingsLogComponent(v25);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [HPSSpatialProfileSingeStepEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
      }

      [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateStatus:0 EnrollmentResult:@"Failed"];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83__HPSSpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_367;
      block[3] = &unk_2796AD618;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
      break;
  }

LABEL_276:
  v184 = *(v30 + 4060);
  if (*(&self->super.super.super.isa + v184) != v29)
  {
    *(&self->super.super.super.isa + v184) = v29;
  }
}

uint64_t __83__HPSSpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke(uint64_t a1)
{
  sleep(1u);
  v2 = *(a1 + 32);

  return [v2 moveToStep:4];
}

uint64_t __83__HPSSpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_365(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Enrolling Wrong ear", v4, 2u);
  }

  return [*(a1 + 32) alertEarEnrollWarning];
}

uint64_t __83__HPSSpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_366(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Enrolling Wrong ear", v4, 2u);
  }

  return [*(a1 + 32) alertEarEnrollWarning];
}

- (void)didReceiveCaptureVideo:(id)video colorImage:(id)image depthImage:(id)depthImage faceObject:(id)object
{
  videoCopy = video;
  imageCopy = image;
  v10 = imageCopy;
  if (self->_enrollViewInitialized)
  {
    visualDetectionQueue = self->_visualDetectionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__HPSSpatialProfileEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke_372;
    block[3] = &unk_2796AD750;
    v12 = v14;
    v14[0] = imageCopy;
    v14[1] = self;
    dispatch_async(visualDetectionQueue, block);
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __97__HPSSpatialProfileEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke;
    v15[3] = &unk_2796ADE70;
    v12 = v16;
    v16[0] = videoCopy;
    v16[1] = self;
    v17 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

void __97__HPSSpatialProfileEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke(uint64_t a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = sharedBluetoothSettingsLogComponent(a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Update Preview Layer", &v33, 2u);
    }

    *(*(a1 + 40) + 1321) = 1;
    [*(*(a1 + 40) + 1272) setPreviewLayer:*(a1 + 32)];
    v5 = [MEMORY[0x277CBF740] contextWithOptions:0];
    v6 = *(a1 + 40);
    v7 = *(v6 + 1520);
    *(v6 + 1520) = v5;

    v8 = MEMORY[0x277CBF748];
    v9 = *MEMORY[0x277CBF710];
    v10 = *(*(a1 + 40) + 1520);
    v36 = *MEMORY[0x277CBF6E0];
    v37[0] = *MEMORY[0x277CBF6D8];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v12 = [v8 detectorOfType:v9 context:v10 options:v11];
    v13 = *(a1 + 40);
    v14 = *(v13 + 1528);
    *(v13 + 1528) = v12;

    v15 = [*(*(a1 + 40) + 1272) previewLayer];
    [v15 setOpacity:0.0];

    v16 = [[HPSSpatialProfileUIPearlEnrollView alloc] initWithVideoCaptureSession:*(*(a1 + 40) + 1272) inSheet:0 squareNeedsPositionLayout:0];
    v17 = *(a1 + 40);
    v18 = *(v17 + 1152);
    *(v17 + 1152) = v16;

    [*(a1 + 40) setupEnrollViewUI];
    [*(a1 + 40) pauseEnrollment];
    v19 = *(a1 + 40) + 1112;
    Width = CVPixelBufferGetWidth([*(a1 + 48) pixelBuffer]);
    Height = CVPixelBufferGetHeight([*(a1 + 48) pixelBuffer]);
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = Width;
    *(v19 + 24) = Height;
    v22 = sharedBluetoothSettingsLogComponent(Height);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(*(a1 + 40) + 1128);
      v23 = *(*(a1 + 40) + 1136);
      v33 = 134218240;
      *v34 = v24;
      *&v34[8] = 2048;
      v35 = v23;
      _os_log_impl(&dword_251143000, v22, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Frame Size  %f %f", &v33, 0x16u);
    }

    v26 = sharedBluetoothSettingsLogComponent(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 40) + 1232))
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v33 = 138412290;
      *v34 = v27;
      _os_log_impl(&dword_251143000, v26, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Checking enrollment viewer Spinner %@", &v33, 0xCu);
    }

    *(*(a1 + 40) + 1318) = 1;
    if (*(*(a1 + 40) + 1232) == 1)
    {
      v29 = sharedBluetoothSettingsLogComponent(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 40);
        v31 = *(v30 + 1318);
        v32 = [*(v30 + 1416) available];
        v33 = 67109376;
        *v34 = v31;
        *&v34[4] = 1024;
        *&v34[6] = v32;
        _os_log_impl(&dword_251143000, v29, OS_LOG_TYPE_DEFAULT, "Spatial Profile: didReceiveCaptureVideo -> stopWelcomeSpinner, _enrollmentReady %d [_btManager available] %d", &v33, 0xEu);
      }

      [*(a1 + 40) stopWelcomeSpinner];
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __106__HPSSpatialProfileSingeStepEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke_cold_1();
    }
  }
}

void __97__HPSSpatialProfileEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke_372(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 1512);
    v3 = MEMORY[0x277CBEAC0];
    v4 = [MEMORY[0x277CCABB0] numberWithInt:6];
    v5 = [v3 dictionaryWithObject:v4 forKey:*MEMORY[0x277CBF700]];

    v6 = [*(*(a1 + 40) + 1528) featuresInImage:*(a1 + 32) options:v5];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = v7;
    v23 = v2;
    v24 = v5;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        v11 |= [v14 hasLeftEyePosition];
        v10 |= [v14 hasRightEyePosition];
        v9 |= [v14 hasMouthPosition];
        ++v13;
      }

      while (v8 != v13);
      v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
      v8 = v7;
    }

    while (v7);
    v5 = v24;
    v2 = v23;
    if (v11 & v10 & v9)
    {
      v15 = *(a1 + 40);
      v16 = *(v15 + 1513);
      if (v16 <= 0x63)
      {
        *(v15 + 1513) = v16 + 1;
      }
    }

    else
    {
LABEL_12:
      *(*(a1 + 40) + 1513) = 0;
    }

    *(*(a1 + 40) + 1512) = *(*(a1 + 40) + 1513) > 0x63u;
    if (v2 != *(*(a1 + 40) + 1512))
    {
      v17 = sharedBluetoothSettingsLogComponent(v7);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 40);
        v19 = *(v18 + 1512);
        v20 = *(v18 + 1513);
        if (v19)
        {
          v21 = @"At Phone";
        }

        else
        {
          v21 = @"away";
        }

        *buf = 138412546;
        v30 = v21;
        v31 = 1024;
        v32 = v20;
        _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "Spatial Profile: 2 User attention status %@ Count %d", buf, 0x12u);
      }

      v22 = *(a1 + 40);
      if (*(v22 + 1512) == 1)
      {
        *(v22 + 1427) = 0;
        *(*(a1 + 40) + 1426) = 0;
      }
    }
  }
}

- (void)playEarCaptureSoundWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  if (self->_earCaptureSoundStep == 1)
  {
    soundHapticManager = self->_soundHapticManager;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__HPSSpatialProfileEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_2;
    v12[3] = &unk_2796AD618;
    v13 = v5;
    [(HPSSpatialProfileSoundHapticManager *)soundHapticManager triggerSoundHapticForEarCaptureState:1 completion:v12];
    v7 = v13;
  }

  else
  {
    if (self->_earCaptureSoundStep)
    {
      dispatch_group_leave(v5);
      goto LABEL_7;
    }

    v6 = self->_soundHapticManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __75__HPSSpatialProfileEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke;
    v14[3] = &unk_2796AD618;
    v15 = v5;
    [(HPSSpatialProfileSoundHapticManager *)v6 triggerSoundHapticForEarCaptureState:0 completion:v14];
    v7 = v15;
  }

LABEL_7:
  ++self->_earCaptureSoundStep;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HPSSpatialProfileEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_3;
  block[3] = &unk_2796AD5A0;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_group_notify(v5, MEMORY[0x277D85CD0], block);
}

uint64_t __75__HPSSpatialProfileEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)showBudsInEarPopUp:(id)up
{
  v35 = *MEMORY[0x277D85DE8];
  upCopy = up;
  classicDevice = [upCopy classicDevice];
  productId = [classicDevice productId];

  0x2000 = [MEMORY[0x277CCACA8] stringWithFormat:@"ACCESSORY_MODEL_NAME_%d", productId - 0x2000];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:0x2000 value:&stru_286339F58 table:@"SpatialAudioProfile"];
  if ([v9 length])
  {
    v10 = productId >= 0x200A;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {

    if (productId >> 4 <= 0x200)
    {
      v12 = 0;
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (productId == 8239)
  {
    0x2000 = @"ACCESSORY_MODEL_NAME_180";
    v12 = 1;
  }

  else if (productId == 8223)
  {
    v12 = 0;
    0x2000 = @"ACCESSORY_MODEL_NAME_10";
  }

  else
  {
    v12 = 0;
    if (productId == 8210)
    {
      0x2000 = @"ACCESSORY_MODEL_NAME_18";
    }

    else
    {
      0x2000 = @"ACCESSORY_MODEL_NAME_15";
    }
  }

LABEL_15:
  v13 = sharedBluetoothSettingsLogComponent(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    classicDevice2 = [upCopy classicDevice];
    name = [classicDevice2 name];
    *buf = 138412290;
    v34 = name;
    _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Device %@, bud in ear", buf, 0xCu);
  }

  uppercaseString = [MGGetStringAnswer() uppercaseString];
  v17 = [@"SPATIAL_AUDIO_PROFILE_IED_WARN_" stringByAppendingFormat:@"%@_%@", uppercaseString, 0x2000];

  if (productId == 8215)
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_23" value:&stru_286339F58 table:@"DeviceConfig-B453"];

    v17 = v19;
  }

  v32 = upCopy;
  if (v12)
  {
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_180" value:&stru_286339F58 table:@"DeviceConfig-B453"];

    v17 = v21;
  }

  v22 = MEMORY[0x277D75110];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:v17 value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IN_EAR_TEXT" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v27 = [v22 alertControllerWithTitle:v24 message:v26 preferredStyle:1];

  v28 = MEMORY[0x277D750F8];
  v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v30 = [v29 localizedStringForKey:@"OK" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v31 = [v28 actionWithTitle:v30 style:0 handler:&__block_literal_global_386];
  [v27 addAction:v31];

  [(HPSSpatialProfileEnrollmentController *)self presentViewController:v27 animated:1 completion:0];
}

- (BOOL)checkAndShowInEarPopup
{
  v27 = *MEMORY[0x277D85DE8];
  [(BluetoothManager *)self->_btManager connectedDevices];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = v25 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    selfCopy = self;
    v6 = *v23;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if (+[HPSProductUtils isAppleHeadphone:](HPSProductUtils, "isAppleHeadphone:", v8, selfCopy) && ([v8 isTemporaryPaired] & 1) == 0)
        {
          isGenuineAirPods = [v8 isGenuineAirPods];
          if (isGenuineAirPods)
          {
            v10 = [BTSDeviceClassic deviceWithDevice:v8];
            inEarDetectEnabled = [v8 inEarDetectEnabled];
            if (inEarDetectEnabled)
            {
              if (v10)
              {
                v18 = 3;
                *buf = 3;
                classicDevice = [v10 classicDevice];
                [classicDevice inEarStatusPrimary:buf secondary:&v18];

                if (!*buf || !v18)
                {
                  [(HPSSpatialProfileEnrollmentController *)selfCopy showBudsInEarPopUp:v10];
                  v14 = 1;
LABEL_27:

                  goto LABEL_28;
                }
              }
            }

            else
            {
              v13 = sharedBluetoothSettingsLogComponent(inEarDetectEnabled);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Please enable the Automatic Ear Detection in Bluetooth Settings", buf, 2u);
              }

              if (v10)
              {
                inEarDetectDisabledPopUpShown = selfCopy->_inEarDetectDisabledPopUpShown;
                if (!inEarDetectDisabledPopUpShown)
                {
                  selfCopy->_inEarDetectDisabledPopUpShown = 1;
                  [(HPSSpatialProfileEnrollmentController *)selfCopy showBudsInEarPopUp:v10];
                }

                v14 = !inEarDetectDisabledPopUpShown;
                goto LABEL_27;
              }
            }
          }

          else
          {
            v10 = sharedBluetoothSettingsLogComponent(isGenuineAirPods);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              [(HPSSpatialProfileSingeStepEnrollmentController *)&v20 getBudsInEarString];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_28:

  return v14;
}

- (void)showLandscapeAlert
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Landscape Mode Detected, not supported, show pop up alert", buf, 2u);
  }

  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"LANDSCAPE_MODE_ALERT_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"LANDSCAPE_MODE_ALERT_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__HPSSpatialProfileEnrollmentController_showLandscapeAlert__block_invoke;
  v14[3] = &unk_2796AD708;
  v14[4] = self;
  v13 = [v10 actionWithTitle:v12 style:0 handler:v14];
  [v9 addAction:v13];

  [(HPSSpatialProfileEnrollmentController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)fillFacePillsByDirection:(int)direction
{
  v5 = 0;
  if ((direction - 1) <= 6)
  {
    v5 = qword_251217D40[direction - 1];
  }

  v7[6] = v3;
  v7[7] = v4;
  stepSerialQueue = self->_stepSerialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HPSSpatialProfileEnrollmentController_fillFacePillsByDirection___block_invoke;
  v7[3] = &unk_2796AD640;
  v7[4] = self;
  v7[5] = v5;
  dispatch_async(stepSerialQueue, v7);
}

void __66__HPSSpatialProfileEnrollmentController_fillFacePillsByDirection___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __66__HPSSpatialProfileEnrollmentController_fillFacePillsByDirection___block_invoke_2;
  v1[3] = &unk_2796AD640;
  v1[4] = *(a1 + 32);
  v1[5] = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v1);
}

void __66__HPSSpatialProfileEnrollmentController_fillFacePillsByDirection___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1152) pillContainer];
  [v2 fillPillsAroundAngle:*(a1 + 40)];
}

- (void)showEarPillsDots
{
  earPillContainer = self->_earPillContainer;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__HPSSpatialProfileEnrollmentController_showEarPillsDots__block_invoke;
  v4[3] = &unk_2796AD618;
  v4[4] = self;
  [MEMORY[0x277D75D18] transitionWithView:earPillContainer duration:5242880 options:v4 animations:0 completion:0.4];
  [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView showDots];
}

- (void)hideEarPillsDots
{
  earPillContainer = self->_earPillContainer;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__HPSSpatialProfileEnrollmentController_hideEarPillsDots__block_invoke;
  v4[3] = &unk_2796AD618;
  v4[4] = self;
  [MEMORY[0x277D75D18] transitionWithView:earPillContainer duration:5242880 options:v4 animations:0 completion:0.4];
  [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView hideDots];
}

- (void)prepareSpinner
{
  if (!self->_spinner)
  {
    v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v3;

    [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)self->_spinner setActivityIndicatorViewStyle:100];
    [(OBTrayButton *)self->_continueButton bounds];
    v6 = v5 * 0.5;
    [(OBTrayButton *)self->_continueButton bounds];
    [(UIActivityIndicatorView *)self->_spinner setCenter:v6, v7 * 0.5];
    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    continueButton = self->_continueButton;
    v9 = self->_spinner;

    [(OBTrayButton *)continueButton addSubview:v9];
  }
}

- (void)cleanUpSpinner
{
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
  spinner = self->_spinner;
  self->_spinner = 0;
}

- (void)startWelcomeSpinner
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Welcome Spinner", v7, 2u);
  }

  self->_welcomeSpinnerOn = 1;
  titleLabel = [(OBTrayButton *)self->_continueButton titleLabel];
  [titleLabel setHidden:1];

  [(OBTrayButton *)self->_continueButton setUserInteractionEnabled:0];
  [(HPSSpatialProfileEnrollmentController *)self prepareSpinner];
  spinner = self->_spinner;
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [(UIActivityIndicatorView *)spinner setColor:systemWhiteColor];
}

- (void)stopWelcomeSpinner
{
  selfCopy = self;
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_enrollmentReady || (self = [(BluetoothManager *)self->_btManager available], !self))
  {
    v5 = sharedBluetoothSettingsLogComponent(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      enrollmentReady = selfCopy->_enrollmentReady;
      available = [(BluetoothManager *)selfCopy->_btManager available];
      v9[0] = 67109376;
      v9[1] = enrollmentReady;
      v10 = 1024;
      v11 = available;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: stopWelcomeSpinner failed _enrollmentReady %d [_btManager available] %d", v9, 0xEu);
    }

    goto LABEL_11;
  }

  welcomeSpinnerOn = selfCopy->_welcomeSpinnerOn;
  v4 = sharedBluetoothSettingsLogComponent(self);
  v5 = v4;
  if (!welcomeSpinnerOn)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSingeStepEnrollmentController stopWelcomeSpinner];
    }

LABEL_11:

    return;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stop Welcome Spinner", v9, 2u);
  }

  selfCopy->_welcomeSpinnerOn = 0;
  titleLabel = [(OBTrayButton *)selfCopy->_continueButton titleLabel];
  [titleLabel setHidden:0];

  [(OBTrayButton *)selfCopy->_continueButton setUserInteractionEnabled:1];
  [(HPSSpatialProfileEnrollmentController *)selfCopy cleanUpSpinner];
  [(HPSSpatialProfileEnrollmentController *)selfCopy continueButtonTapped];
}

- (void)startPostProcessSpinner
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Post Process Spinner", v8, 2u);
  }

  self->_postProcessSpinnerOn = 1;
  titleLabel = [(OBTrayButton *)self->_continueButton titleLabel];
  [titleLabel setHidden:1];

  [(OBTrayButton *)self->_continueButton setUserInteractionEnabled:0];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(OBTrayButton *)self->_continueButton setTintColor:systemBackgroundColor];

  [(HPSSpatialProfileEnrollmentController *)self showContinueButton];
  [(HPSSpatialProfileEnrollmentController *)self prepareSpinner];
  spinner = self->_spinner;
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(UIActivityIndicatorView *)spinner setColor:systemGrayColor];
}

- (void)stopPostProcessSpinner
{
  postProcessSpinnerOn = self->_postProcessSpinnerOn;
  v4 = sharedBluetoothSettingsLogComponent(self);
  v5 = v4;
  if (postProcessSpinnerOn)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stop Post Process Spinner", v8, 2u);
    }

    self->_postProcessSpinnerOn = 0;
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(OBTrayButton *)self->_continueButton setTintColor:systemBlueColor];

    titleLabel = [(OBTrayButton *)self->_continueButton titleLabel];
    [titleLabel setHidden:0];

    [(OBTrayButton *)self->_continueButton setUserInteractionEnabled:1];
    [(HPSSpatialProfileEnrollmentController *)self cleanUpSpinner];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSingeStepEnrollmentController stopWelcomeSpinner];
    }
  }
}

- (void)earLeftPartCaptured
{
  stepSerialQueue = self->_stepSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HPSSpatialProfileEnrollmentController_earLeftPartCaptured__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(stepSerialQueue, block);
}

void __60__HPSSpatialProfileEnrollmentController_earLeftPartCaptured__block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  [*(a1 + 32) pulseEarBoundingBox];
  v3 = *(*(a1 + 32) + 1160);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__HPSSpatialProfileEnrollmentController_earLeftPartCaptured__block_invoke_2;
  v10[3] = &unk_2796AD618;
  v4 = v2;
  v11 = v4;
  [v3 fillLeftPillsWithCompletion:v10];
  dispatch_group_enter(v4);
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HPSSpatialProfileEnrollmentController_earLeftPartCaptured__block_invoke_3;
  v8[3] = &unk_2796AD618;
  v9 = v4;
  v6 = v4;
  [v5 playEarCaptureSoundWithCompletion:v8];
  v7 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v6, v7);
}

- (void)earCentralPartCaptured
{
  stepSerialQueue = self->_stepSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HPSSpatialProfileEnrollmentController_earCentralPartCaptured__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(stepSerialQueue, block);
}

void __63__HPSSpatialProfileEnrollmentController_earCentralPartCaptured__block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  [*(a1 + 32) pulseEarBoundingBox];
  v3 = *(*(a1 + 32) + 1160);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HPSSpatialProfileEnrollmentController_earCentralPartCaptured__block_invoke_2;
  v10[3] = &unk_2796AD618;
  v4 = v2;
  v11 = v4;
  [v3 fillCentralPillsWithCompletion:v10];
  dispatch_group_enter(v4);
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HPSSpatialProfileEnrollmentController_earCentralPartCaptured__block_invoke_3;
  v8[3] = &unk_2796AD618;
  v9 = v4;
  v6 = v4;
  [v5 playEarCaptureSoundWithCompletion:v8];
  v7 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v6, v7);
}

- (void)earRightPartCaptured
{
  stepSerialQueue = self->_stepSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HPSSpatialProfileEnrollmentController_earRightPartCaptured__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(stepSerialQueue, block);
}

void __61__HPSSpatialProfileEnrollmentController_earRightPartCaptured__block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  [*(a1 + 32) pulseEarBoundingBox];
  v3 = *(*(a1 + 32) + 1160);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HPSSpatialProfileEnrollmentController_earRightPartCaptured__block_invoke_2;
  v10[3] = &unk_2796AD618;
  v4 = v2;
  v11 = v4;
  [v3 fillRightPillsWithCompletion:v10];
  dispatch_group_enter(v4);
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HPSSpatialProfileEnrollmentController_earRightPartCaptured__block_invoke_3;
  v8[3] = &unk_2796AD618;
  v9 = v4;
  v6 = v4;
  [v5 playEarCaptureSoundWithCompletion:v8];
  v7 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v6, v7);
}

- (void)pulseEarBoundingBox
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HPSSpatialProfileEnrollmentController_pulseEarBoundingBox__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__HPSSpatialProfileEnrollmentController_pulseEarBoundingBox__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1192) setInactive:0];
  [*(*(a1 + 32) + 1192) startScalingWithExpansionWidth:1 duration:10.0 repeatCount:0.1];
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HPSSpatialProfileEnrollmentController_pulseEarBoundingBox__block_invoke_2;
  block[3] = &unk_2796AD618;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

- (void)clearBoundingBox
{
  self->_earBoundingBoxDetectTracker = 0;
  self->_earBoundingBoxDetected = 0;
  [(HPSSpatialProfileEnrollmentController *)self updateBoundingBoxHiddenStatus];
}

- (void)updateBoundingBoxHiddenStatus
{
  v13 = *MEMORY[0x277D85DE8];
  isHidden = [(CEKSubjectIndicatorView *)self->_earBoundingBoxView isHidden];
  currentStep = self->_currentStep;
  if (currentStep == 7 || currentStep == 11)
  {
    if (isHidden != self->_earBoundingBoxDetected)
    {
      return;
    }

    if (self->_earBoundingBoxDetected)
    {
      [(CEKSubjectIndicatorView *)self->_earBoundingBoxView bounds];
      isHidden = CGRectEqualToRect(v14, *MEMORY[0x277CBF3A0]);
      if (isHidden)
      {
        return;
      }

      v6 = 0;
      goto LABEL_12;
    }
  }

  else if (isHidden)
  {
    return;
  }

  v6 = 1;
LABEL_12:
  v7 = sharedBluetoothSettingsLogComponent(isHidden);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"Showing";
    if (v6)
    {
      v8 = @"Hidden";
    }

    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Bouding Box Updated : %@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HPSSpatialProfileEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke;
  v9[3] = &unk_2796ADEC0;
  v9[4] = self;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __70__HPSSpatialProfileEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __70__HPSSpatialProfileEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke_2;
  v2[3] = &unk_2796ADEC0;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.3];
}

- (void)translateEarBoundingBox:(CGRect)box previewLayerBoundingBox:(CGRect)boundingBox
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__HPSSpatialProfileEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke;
  block[3] = &unk_2796ADE98;
  block[4] = self;
  v4.f64[0] = boundingBox.size.width;
  v4.f64[1] = boundingBox.size.height;
  _Q7 = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(v4, self->_visageFrame.size)));
  height = box.size.height;
  v7 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(box.size, _Q7))), xmmword_251217C60));
  v8 = (0.5 * v7.f32[0]) + _Q7.f64[0] * box.origin.x;
  __asm { FMLA            D3, D1, V7.D[1] }

  v14.f64[0] = boundingBox.size.width - v8;
  v14.f64[1] = _D3;
  y = boundingBox.origin.y;
  block[5] = v7;
  block[6] = vcvt_f32_f64(vaddq_f64(boundingBox.origin, vcvtq_f64_f32(vcvt_f32_f64(v14))));
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __89__HPSSpatialProfileEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __89__HPSSpatialProfileEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke_2;
  v2[3] = &unk_2796ADE98;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.1];
}

uint64_t __89__HPSSpatialProfileEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1192) setBounds:{0.0, 0.0, *(a1 + 40), *(a1 + 44)}];
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);
  v4 = *(*(a1 + 32) + 1192);

  return [v4 setCenter:{v2, v3}];
}

- (void)updateFaceTrackingStatus:(CGRect)status
{
  height = status.size.height;
  width = status.size.width;
  y = status.origin.y;
  x = status.origin.x;
  v30 = *MEMORY[0x277D85DE8];
  faceBoundingBoxStatus = self->_faceBoundingBoxStatus;
  v9 = self->_visageFrame.size.height;
  v10 = status.size.width / self->_visageFrame.size.width;
  if (faceBoundingBoxStatus == 1)
  {
    if (v10 >= 0.45)
    {
      return;
    }

    v11 = 5;
  }

  else
  {
    if (faceBoundingBoxStatus != 5 || v10 <= 0.55)
    {
      return;
    }

    v11 = 1;
  }

  self->_faceBoundingBoxStatus = v11;
  v12 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = height / v9;
    v14 = self->_faceBoundingBoxStatus;
    v15[0] = 67110912;
    v15[1] = faceBoundingBoxStatus;
    v16 = 1024;
    v17 = v14;
    v18 = 2048;
    v19 = (v10 * 100.0);
    v20 = 2048;
    v21 = (v13 * 100.0);
    v22 = 2048;
    v23 = width;
    v24 = 2048;
    v25 = height;
    v26 = 2048;
    v27 = x;
    v28 = 2048;
    v29 = y;
    _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Face Status changed from %d -> %d Status Ratio [ %f %f ] Face BB [ %f %f , %f %f]", v15, 0x4Au);
  }
}

- (void)updateCurrentTrackingEar:(id)ear rightEarPoseStatus:(id)status earBoundingBox:(CGRect)box earStatus:(int)earStatus
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v91 = *MEMORY[0x277D85DE8];
  earCopy = ear;
  statusCopy = status;
  v15 = statusCopy;
  if (earCopy)
  {
    v80 = [earCopy hasYawAngle] != 0;
    if (v15)
    {
LABEL_3:
      v79 = [v15 hasYawAngle] != 0;
      goto LABEL_6;
    }
  }

  else
  {
    v80 = 0;
    if (statusCopy)
    {
      goto LABEL_3;
    }
  }

  v79 = 0;
LABEL_6:
  currentTrackingEar = self->_currentTrackingEar;
  earTooClose = self->_earTooClose;
  earTooFar = self->_earTooFar;
  isEarOccluded = self->_isEarOccluded;
  currentStep = self->_currentStep;
  v19 = currentStep > 0xB;
  v20 = (1 << currentStep) & 0xCC0;
  if (v19 || v20 == 0)
  {
    goto LABEL_40;
  }

  if (earStatus > 2)
  {
    switch(earStatus)
    {
      case 3:
        if (self->_isLookingAtPhone)
        {
          goto LABEL_29;
        }

        v22 = 1443;
        earTooCloseDetectTracker = self->_earTooCloseDetectTracker;
        if (earTooCloseDetectTracker >= 6)
        {
          v24 = 5;
          goto LABEL_28;
        }

        break;
      case 4:
        v22 = 1457;
        earTooCloseDetectTracker = self->_earTooFarDetectTracker;
        if (earTooCloseDetectTracker >= 0xB)
        {
          v24 = 10;
          goto LABEL_28;
        }

        break;
      case 5:
        v22 = 1459;
        earTooCloseDetectTracker = self->_motionBlurrTracker;
        if (earTooCloseDetectTracker >= 0x1F)
        {
          v24 = 30;
LABEL_28:
          *(&self->super.super.super.isa + v22) = v24;
          goto LABEL_29;
        }

        break;
      default:
        goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (earStatus)
  {
    if (earStatus == 2 && !self->_isLookingAtPhone && !earTooClose)
    {
      v22 = 1427;
      earTooCloseDetectTracker = self->_earOcclusionDetectTracker;
      if (earTooCloseDetectTracker >= 0x15)
      {
        v24 = 20;
        goto LABEL_28;
      }

LABEL_27:
      v24 = earTooCloseDetectTracker + 1;
      goto LABEL_28;
    }
  }

  else
  {
    if (self->_earOcclusionDetectTracker)
    {
      --self->_earOcclusionDetectTracker;
    }

    if (self->_earTooCloseDetectTracker)
    {
      --self->_earTooCloseDetectTracker;
    }

    if (self->_earTooFarDetectTracker)
    {
      --self->_earTooFarDetectTracker;
    }

    if (self->_motionBlurrTracker)
    {
      self->_motionBlurrTracker = 0;
    }
  }

LABEL_29:
  self->_isEarOccluded = self->_earOcclusionDetectTracker > 0x13u;
  if (self->_earTooFarDetectTracker < 0xAu)
  {
    if (!self->_earTooCloseDetectTracker)
    {
      self->_earTooFar = 0;
    }
  }

  else
  {
    self->_earTooFar = 1;
  }

  v25 = self->_earTooCloseDetectTracker;
  if (v25 > 4)
  {
    LOBYTE(v25) = 1;
LABEL_36:
    self->_earTooClose = v25;
    goto LABEL_37;
  }

  if (!self->_earTooCloseDetectTracker)
  {
    goto LABEL_36;
  }

LABEL_37:
  self->_motionBlurr = self->_motionBlurrTracker > 0x1Du;
  if (self->_earTooClose || self->_earTooFar)
  {
    self->_earOcclusionDetectTracker = 0;
    self->_isEarOccluded = 0;
  }

LABEL_40:
  v92.origin.x = x;
  v92.origin.y = y;
  v92.size.width = width;
  v92.size.height = height;
  currentYawAngle = CGRectEqualToRect(v92, *MEMORY[0x277CBF3A0]);
  earBoundingBoxDetectTracker = self->_earBoundingBoxDetectTracker;
  if (currentYawAngle)
  {
    v28 = earBoundingBoxDetectTracker >= 3;
    v29 = earBoundingBoxDetectTracker - 3;
    if (!v28)
    {
      v29 = 0;
    }

    self->_earBoundingBoxDetectTracker = v29;
  }

  else
  {
    self->_earBoundingBoxDetectTracker = earBoundingBoxDetectTracker + 1;
    self->_currentEarBB.origin.x = x;
    self->_currentEarBB.origin.y = y;
    self->_currentEarBB.size.width = width;
    self->_currentEarBB.size.height = height;
    v29 = self->_earBoundingBoxDetectTracker;
  }

  if (v29 >= 0x15u)
  {
    v29 = 20;
    self->_earBoundingBoxDetectTracker = 20;
  }

  self->_earBoundingBoxDetected = v29 != 0;
  if (v80)
  {
    currentYawAngle = [earCopy currentYawAngle];
    if (v30 != -100.0)
    {
      [earCopy currentYawAngle];
      self->_leftEarLastYaw = v31;
      [earCopy currentYawAngle];
      self->_leftLastReceivedYaw = v32;
      [earCopy currentYawAngle];
      self->_currentYaw = v33;
      remainingYawAngles = [earCopy remainingYawAngles];
      pendingYaw = self->_pendingYaw;
      self->_pendingYaw = remainingYawAngles;
    }

    self->_rightEarLastYaw = -100.0;
    ++self->_leftEarCaptureCount;
    leftEarInViewCount = self->_leftEarInViewCount;
    if (leftEarInViewCount <= 0x13)
    {
      self->_leftEarInViewCount = leftEarInViewCount + 1;
    }

    self->_rightEarCaptureCount = 0;
  }

  else
  {
    self->_leftEarCaptureCount = 0;
    if (self->_leftEarInViewCount)
    {
      --self->_leftEarInViewCount;
    }
  }

  if (v79)
  {
    currentYawAngle = [v15 currentYawAngle];
    if (v37 != -100.0)
    {
      [v15 currentYawAngle];
      self->_rightEarLastYaw = v38;
      [v15 currentYawAngle];
      self->_rightLastReceivedYaw = v39;
      [v15 currentYawAngle];
      self->_currentYaw = v40;
      remainingYawAngles2 = [v15 remainingYawAngles];
      v42 = self->_pendingYaw;
      self->_pendingYaw = remainingYawAngles2;
    }

    self->_leftEarLastYaw = -100.0;
    ++self->_rightEarCaptureCount;
    rightEarInViewCount = self->_rightEarInViewCount;
    if (rightEarInViewCount <= 0x13)
    {
      self->_rightEarInViewCount = rightEarInViewCount + 1;
    }

    v44 = 1377;
  }

  else
  {
    if (self->_rightEarInViewCount)
    {
      --self->_rightEarInViewCount;
    }

    v44 = 1365;
  }

  *(&self->super.super.super.isa + v44) = 0;
  if (earCopy)
  {
    currentYawAngle = [earCopy hasYawAngle];
    if (currentYawAngle)
    {
      leftEarStatus = self->_leftEarStatus;
      if (leftEarStatus >= 1 && leftEarStatus != 3)
      {
        [earCopy currentYawAngle];
        self->_currentYaw = v46;
        remainingYawAngles3 = [earCopy remainingYawAngles];
        v48 = self->_pendingYaw;
        self->_pendingYaw = remainingYawAngles3;
      }
    }
  }

  if (v15)
  {
    currentYawAngle = [v15 hasYawAngle];
    if (currentYawAngle)
    {
      rightEarStatus = self->_rightEarStatus;
      if (rightEarStatus >= 1 && rightEarStatus != 3)
      {
        [v15 currentYawAngle];
        self->_currentYaw = v50;
        remainingYawAngles4 = [v15 remainingYawAngles];
        v52 = self->_pendingYaw;
        self->_pendingYaw = remainingYawAngles4;
      }
    }
  }

  v53 = sharedBluetoothSettingsLogComponent(currentYawAngle);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    currentYaw = self->_currentYaw;
    candidateYaw = self->_candidateYaw;
    v56 = @"NO";
    if (self->_earTooClose)
    {
      v57 = @"YES";
    }

    else
    {
      v57 = @"NO";
    }

    if (self->_earTooFar)
    {
      v58 = @"YES";
    }

    else
    {
      v58 = @"NO";
    }

    if (self->_motionBlurr)
    {
      v59 = @"YES";
    }

    else
    {
      v59 = @"NO";
    }

    if (self->_isEarOccluded)
    {
      v56 = @"YES";
    }

    *buf = 134219266;
    *v82 = currentYaw;
    *&v82[8] = 2048;
    *v83 = candidateYaw;
    *&v83[8] = 2112;
    v84 = v57;
    v85 = 2112;
    v86 = v58;
    v87 = 2112;
    v88 = v59;
    v89 = 2112;
    v90 = v56;
    _os_log_impl(&dword_251143000, v53, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Current yaw : %f  < %f >  :  Too Close: %@ Too Far : %@ Motion Blurr: %@ Occlusion (Note other param affect this) : %@", buf, 0x3Eu);
  }

  if (self->_leftEarCaptureCount >= 5u)
  {
    self->_leftEarCaptureCount = 1;
    self->_currentTrackingEar = 1;
  }

  if (self->_rightEarCaptureCount >= 5u)
  {
    self->_rightEarCaptureCount = 1;
    self->_currentTrackingEar = 2;
  }

  if (v80 || v79)
  {
    v61 = self->_currentTrackingEar;
  }

  else
  {
    v61 = 0;
    self->_currentTrackingEar = 0;
  }

  if (v61 != currentTrackingEar)
  {
    v62 = sharedBluetoothSettingsLogComponent(v60);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = self->_currentTrackingEar;
      v64 = self->_currentStep;
      *buf = 67109376;
      *v82 = v63;
      *&v82[4] = 1024;
      *&v82[6] = v64;
      _os_log_impl(&dword_251143000, v62, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Tracking Changed to %d Current State %d", buf, 0xEu);
    }
  }

  if (earTooClose != self->_earTooClose || earTooFar != self->_earTooFar || isEarOccluded != self->_isEarOccluded || self->_currentTrackingEar != currentTrackingEar)
  {
    v65 = sharedBluetoothSettingsLogComponent(v60);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = @"NO";
      if (self->_earTooClose)
      {
        v67 = @"YES";
      }

      else
      {
        v67 = @"NO";
      }

      motionBlurr = self->_motionBlurr;
      v69 = self->_isEarOccluded;
      if (self->_earTooFar)
      {
        v70 = @"YES";
      }

      else
      {
        v70 = @"NO";
      }

      *buf = 138413058;
      if (motionBlurr)
      {
        v71 = @"YES";
      }

      else
      {
        v71 = @"NO";
      }

      *v82 = v67;
      *&v82[8] = 2112;
      if (v69)
      {
        v66 = @"YES";
      }

      *v83 = v70;
      *&v83[8] = 2112;
      v84 = v71;
      v85 = 2112;
      v86 = v66;
      _os_log_impl(&dword_251143000, v65, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Aggressor parameter Changes Too Close: %@ Too Far : %@ Motion Blurr: %@ Occlusion (Note other param affect this) : %@ ", buf, 0x2Au);
    }

    if (isEarOccluded != self->_isEarOccluded)
    {
      v73 = sharedBluetoothSettingsLogComponent(v72);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_isEarOccluded)
        {
          v74 = "YES";
        }

        else
        {
          v74 = "NO";
        }

        earOcclusionDetectTracker = self->_earOcclusionDetectTracker;
        supressEarOcclusionWarning = self->_supressEarOcclusionWarning;
        *buf = 136315650;
        *v82 = v74;
        *&v82[8] = 1024;
        *v83 = earOcclusionDetectTracker;
        *&v83[4] = 1024;
        *&v83[6] = supressEarOcclusionWarning;
        _os_log_impl(&dword_251143000, v73, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Occlusion changed to %s current number of entries %d UI supressed = %d", buf, 0x18u);
      }
    }
  }
}

- (void)hideContinueButton
{
  [(OBTrayButton *)self->_continueButton setHidden:1];
  buttonTrayEffectView = self->_buttonTrayEffectView;

  [(UIVisualEffectView *)buttonTrayEffectView setHidden:1];
}

- (void)showContinueButton
{
  [(OBTrayButton *)self->_continueButton setHidden:0];
  buttonTrayEffectView = self->_buttonTrayEffectView;

  [(UIVisualEffectView *)buttonTrayEffectView setHidden:0];
}

- (void)hideOcclusionContinueButton
{
  [(OBTrayButton *)self->_occlusionContinueButton setHidden:1];
  buttonTrayEffectView = self->_buttonTrayEffectView;

  [(UIVisualEffectView *)buttonTrayEffectView setHidden:1];
}

- (void)showOcclusionContinueButton
{
  [(OBTrayButton *)self->_occlusionContinueButton setHidden:0];
  buttonTrayEffectView = self->_buttonTrayEffectView;

  [(UIVisualEffectView *)buttonTrayEffectView setHidden:0];
}

- (BOOL)isEarTooClose
{
  currentStep = self->_currentStep;
  v3 = currentStep > 0xB;
  v4 = (1 << currentStep) & 0xCC0;
  v5 = v3 || v4 == 0;
  return !v5 && !self->_supressEarDistanceWarning && self->_earTooClose;
}

- (BOOL)isEarTooFar
{
  currentStep = self->_currentStep;
  v3 = currentStep > 0xB;
  v4 = (1 << currentStep) & 0xCC0;
  v5 = v3 || v4 == 0;
  return !v5 && !self->_supressEarDistanceWarning && self->_earTooFar;
}

- (BOOL)isEarMovingFast
{
  currentStep = self->_currentStep;
  v3 = currentStep > 0xB;
  v4 = (1 << currentStep) & 0xCC0;
  v5 = v3 || v4 == 0;
  return !v5 && !self->_supressEarDistanceWarning && self->_motionBlurr && !self->_earTooClose && !self->_earTooFar;
}

- (void)startEarDistanceWarnCoolDownTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HPSSpatialProfileEnrollmentController_startEarDistanceWarnCoolDownTimer__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__HPSSpatialProfileEnrollmentController_startEarDistanceWarnCoolDownTimer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1448))
  {
    [v2 stopEarDistanceWarnCoolDownTimer];
    v2 = *(a1 + 32);
  }

  *(v2 + 1460) = 1;
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_triggerEarDistanceWarnCoolDownTimer selector:0 userInfo:0 repeats:9.0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1448);
  *(v4 + 1448) = v3;

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Ear distance Cool down timer", v8, 2u);
  }
}

- (void)triggerEarDistanceWarnCoolDownTimer
{
  self->_supressEarDistanceWarning = 0;
  v2 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ready to show ear too close error", v3, 2u);
  }
}

- (void)stopEarDistanceWarnCoolDownTimer
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    x = self->_currentEarBB.origin.x;
    y = self->_currentEarBB.origin.y;
    width = self->_currentEarBB.size.width;
    height = self->_currentEarBB.size.height;
    v9 = 134218752;
    v10 = x;
    v11 = 2048;
    v12 = y;
    v13 = 2048;
    v14 = width;
    v15 = 2048;
    v16 = height;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping ear too close  Timer Current Bounding Box [ %f %f %f %f", &v9, 0x2Au);
  }

  [(NSTimer *)self->_earTooCloseWarnCoolDownTimer invalidate];
  earTooCloseWarnCoolDownTimer = self->_earTooCloseWarnCoolDownTimer;
  self->_earTooCloseWarnCoolDownTimer = 0;
}

- (void)startEnrollGuidanceTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HPSSpatialProfileEnrollmentController_startEnrollGuidanceTimer__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__HPSSpatialProfileEnrollmentController_startEnrollGuidanceTimer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1568))
  {
    [*(a1 + 32) stopEnrollGuidanceTimer];
    v2 = *(a1 + 32);
  }

  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v2 target:sel_triggerEnrollGuidanceTimer selector:0 userInfo:0 repeats:5.0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1568);
  *(v4 + 1568) = v3;

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Progress Player", v8, 2u);
  }
}

- (void)triggerEnrollGuidanceTimer
{
  *(&v76[2] + 6) = *MEMORY[0x277D85DE8];
  pendingYaw = self->_pendingYaw;
  if (pendingYaw)
  {
    enrollGuidancePitch = self->_enrollGuidancePitch;
    if ([(NSArray *)pendingYaw count])
    {
      candidateYaw = self->_candidateYaw;
      self->_candidateYaw = -100.0;
      firstObject = [(NSArray *)self->_pendingYaw firstObject];
      v7 = firstObject;
      if (firstObject)
      {
        firstObject = [firstObject floatValue];
        v9 = -v8;
        self->_candidateYaw = v9;
        if (candidateYaw != v9)
        {
          v10 = sharedBluetoothSettingsLogComponent(firstObject);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = self->_candidateYaw;
            *buf = 134218240;
            v71 = candidateYaw;
            v72 = 2048;
            v73 = v11;
            _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Candidate angle updated %f --> %f", buf, 0x16u);
          }
        }
      }

      leftEarStatus = self->_leftEarStatus;
      v13 = leftEarStatus < 1 || leftEarStatus == 3;
      if (v13 || !self->_leftEarInViewCount)
      {
        rightEarStatus = self->_rightEarStatus;
        v14 = rightEarStatus >= 1 && rightEarStatus != 3 && self->_rightEarInViewCount != 0;
      }

      else
      {
        v14 = 1;
      }

      v17 = sharedBluetoothSettingsLogComponent(firstObject);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        currentYaw = self->_currentYaw;
        v19 = self->_candidateYaw;
        leftEarInViewCount = self->_leftEarInViewCount;
        rightEarInViewCount = self->_rightEarInViewCount;
        v22 = @"NO";
        if (v14)
        {
          v22 = @"YES";
        }

        *buf = 134219010;
        v71 = currentYaw;
        v72 = 2048;
        v73 = v19;
        v74 = 1024;
        *v75 = leftEarInViewCount;
        *&v75[4] = 1024;
        *&v75[6] = rightEarInViewCount;
        LOWORD(v76[0]) = 2112;
        *(v76 + 2) = v22;
        _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance evaluating Feedback Current Yaw %f Target Yaw %f Ear Tracking [L %d R %d] %@", buf, 0x2Cu);
      }

      v23 = self->_candidateYaw;
      if (v23 != -100.0)
      {
        if (v14)
        {
          v62 = 1584;
          v24 = vabdd_f64(v23, self->_currentYaw);
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v63 = v7;
          v25 = self->_feedBackBinning;
          v26 = [(NSArray *)v25 countByEnumeratingWithState:&v65 objects:v69 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = 0;
            v29 = *v66;
            while (2)
            {
              v30 = 0;
              v31 = v28;
              v28 += v27;
              do
              {
                if (*v66 != v29)
                {
                  objc_enumerationMutation(v25);
                }

                v32 = *(*(&v65 + 1) + 8 * v30);
                [v32 floatValue];
                if (v24 > v33)
                {
                  v36 = [(NSArray *)self->_feedBackPitch objectAtIndex:v31];
                  floatValue = [v36 floatValue];
                  self->_enrollGuidancePitch = v38;
                  v39 = sharedBluetoothSettingsLogComponent(floatValue);
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                  {
                    v40 = self->_enrollGuidancePitch;
                    [v32 floatValue];
                    *buf = 134218240;
                    v71 = v40;
                    v72 = 2048;
                    v73 = v41;
                    _os_log_impl(&dword_251143000, v39, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Calcuated new Pitch %f based on Bin %f ", buf, 0x16u);
                  }

                  v28 = v31;
                  goto LABEL_42;
                }

                ++v31;
                ++v30;
              }

              while (v27 != v30);
              v27 = [(NSArray *)v25 countByEnumeratingWithState:&v65 objects:v69 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v28 = 0;
          }

LABEL_42:

          v42 = [(NSArray *)self->_feedBackBinning count];
          v7 = v63;
          if (v28 > v42)
          {
            lastObject = [(NSArray *)self->_feedBackPitch lastObject];
            floatValue2 = [lastObject floatValue];
            self->_enrollGuidancePitch = v45;
            v46 = sharedBluetoothSettingsLogComponent(floatValue2);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v47 = self->_enrollGuidancePitch;
              *buf = 134217984;
              v71 = v47;
              _os_log_impl(&dword_251143000, v46, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Calcuated new Pitch as lowest %f", buf, 0xCu);
            }
          }

          v48 = sharedBluetoothSettingsLogComponent(v42);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = self->_candidateYaw;
            v50 = *(&self->super.super.super.isa + v62);
            v51 = self->_enrollGuidancePitch;
            *buf = 134218752;
            v71 = v49;
            v72 = 2048;
            v73 = v50;
            v74 = 2048;
            *v75 = v24;
            *&v75[8] = 2048;
            *v76 = v51;
            _os_log_impl(&dword_251143000, v48, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Candidate %f  _currentYaw %f : evaluating Delta %f New Pitch %f ", buf, 0x2Au);
          }

          if (enrollGuidancePitch != self->_enrollGuidancePitch || (v52 = [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager isEnrollGuidancePlaying], (v52 & 1) == 0))
          {
            v53 = sharedBluetoothSettingsLogComponent(v52);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              v54 = self->_enrollGuidancePitch;
              isEnrollGuidancePlaying = [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager isEnrollGuidancePlaying];
              v56 = @"YES";
              *buf = 134218498;
              v71 = enrollGuidancePitch;
              if (isEnrollGuidancePlaying)
              {
                v56 = @"NO";
              }

              v72 = 2048;
              v73 = v54;
              v74 = 2112;
              *v75 = v56;
              _os_log_impl(&dword_251143000, v53, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Update Dynamic audio feedback pitch %f -> %f Restart Play %@", buf, 0x20u);
            }

            v57 = self->_enrollGuidancePitch;
            *&v57 = v57;
            [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v57];
            if (![(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager isEnrollGuidancePlaying])
            {
              [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager playEnrollGuidance:self->_currentStep];
            }
          }
        }

        else
        {
          self->_enrollGuidancePitch = 0.5;
          LODWORD(v23) = 0.5;
          v34 = sharedBluetoothSettingsLogComponent([(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v23]);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = self->_enrollGuidancePitch;
            *buf = 134218240;
            v71 = enrollGuidancePitch;
            v72 = 2048;
            v73 = v35;
            _os_log_impl(&dword_251143000, v34, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Not tracking ear, reset Pitch + Pause Play .%f -> %f", buf, 0x16u);
          }

          [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager pauseEnrollGuidancePlayer];
          self->_currentYaw = -100.0;
        }
      }
    }
  }

  v58 = self->_leftEarStatus;
  v59 = v58 < 1 || v58 == 3;
  if (!v59 || ((v60 = self->_rightEarStatus, v60 >= 1) ? (v61 = v60 == 3) : (v61 = 1), !v61))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HPSSpatialProfileEnrollmentController_triggerEnrollGuidanceTimer__block_invoke;
    block[3] = &unk_2796AD618;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __67__HPSSpatialProfileEnrollmentController_triggerEnrollGuidanceTimer__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_triggerEnrollGuidanceTimer selector:0 userInfo:0 repeats:0.5];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1568);
  *(v3 + 1568) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)stopEnrollGuidanceTimer
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Stopping Timer", v6, 2u);
  }

  enrollGuidanceTimer = self->_enrollGuidanceTimer;
  if (enrollGuidanceTimer)
  {
    [(NSTimer *)enrollGuidanceTimer invalidate];
    v5 = self->_enrollGuidanceTimer;
    self->_enrollGuidanceTimer = 0;
  }
}

- (void)alertEarDistanceWarning:(int)warning
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentYaw = self->_currentYaw;
    candidateYaw = self->_candidateYaw;
    *buf = 67109632;
    warningCopy = warning;
    v17 = 2048;
    v18 = currentYaw;
    v19 = 2048;
    v20 = candidateYaw;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Error Message *** Ear distance detection warning shown to user %d Current yaw %f Candidate Yaw %f ", buf, 0x1Cu);
  }

  self->_earOcclusionDetectTracker = 0;
  self->_isEarOccluded = 0;
  [(HPSSpatialProfileEnrollmentController *)self restartOcclusionWarnCoolDownTimer];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  switch(warning)
  {
    case 5:
      [(HPSSpatialProfileEnrollmentController *)self pauseEnrollment];
      v8 = v11;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v9 = __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_6;
      break;
    case 4:
      [(HPSSpatialProfileEnrollmentController *)self pauseEnrollment];
      v8 = v12;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v9 = __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_4;
      break;
    case 3:
      [(HPSSpatialProfileEnrollmentController *)self pauseEnrollment];
      v8 = v13;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v9 = __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_2;
      break;
    default:
      return;
  }

  v8[2] = v9;
  v8[3] = &unk_2796AD618;
  v8[4] = self;
  v10 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1144) pauseProgressPlayer];
  v2 = *(*(a1 + 32) + 1144);

  return [v2 pauseEnrollGuidancePlayer];
}

void __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) clearBoundingBox];
  [*(a1 + 32) forceBlur];
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"EAR_TOO_CLOSE_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v5 objectForKey:*MEMORY[0x277CBE718]];
  LODWORD(v4) = [v6 BOOLValue];

  v7 = *(*(a1 + 32) + 1032);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v4)
  {
    v10 = @"EAR_TOO_CLOSE_DETAIL_METRICS";
  }

  else
  {
    v10 = @"EAR_TOO_CLOSE_DETAIL_IMPERIAL";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v7 setDetailText:v11];

  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = *(*(a1 + 32) + 1144);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_3;
  v15[3] = &unk_2796AD618;
  v16 = v12;
  v14 = v12;
  [v13 triggerSoundHapticForEnrollmentState:19 completion:v15];
  [*(a1 + 32) showEarDistanceWarningContinueButton];
}

void __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) clearBoundingBox];
  [*(a1 + 32) forceBlur];
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"EAR_TOO_FAR_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v5 objectForKey:*MEMORY[0x277CBE718]];
  LODWORD(v4) = [v6 BOOLValue];

  v7 = *(*(a1 + 32) + 1032);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v4)
  {
    v10 = @"EAR_TOO_CLOSE_DETAIL_METRICS";
  }

  else
  {
    v10 = @"EAR_TOO_CLOSE_DETAIL_IMPERIAL";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v7 setDetailText:v11];

  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = *(*(a1 + 32) + 1144);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_5;
  v15[3] = &unk_2796AD618;
  v16 = v12;
  v14 = v12;
  [v13 triggerSoundHapticForEnrollmentState:19 completion:v15];
  [*(a1 + 32) showEarDistanceWarningContinueButton];
}

void __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) clearBoundingBox];
  [*(a1 + 32) forceBlur];
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"EAR_TOO_FAST_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setDetailText:v4];

  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = *(*(a1 + 32) + 1144);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_7;
  v8[3] = &unk_2796AD618;
  v9 = v5;
  v7 = v5;
  [v6 triggerSoundHapticForEnrollmentState:19 completion:v8];
  [*(a1 + 32) showEarDistanceWarningContinueButton];
}

- (void)continueEarDistanceWarning
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Too close ContinueButton Tapped", buf, 2u);
  }

  [(HPSSpatialProfileEnrollmentController *)self resumeEnrollment];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HPSSpatialProfileEnrollmentController_continueEarDistanceWarning__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  self->_isEarOccluded = 0;
  self->_earOcclusionDetectTracker = 0;
  self->_earTooClose = 0;
  self->_earTooCloseDetectTracker = 0;
  self->_earTooFar = 0;
  self->_earTooFarDetectTracker = 0;
  [(HPSSpatialProfileEnrollmentController *)self startEarDistanceWarnCoolDownTimer];
}

uint64_t __67__HPSSpatialProfileEnrollmentController_continueEarDistanceWarning__block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancelBlur];
  [*(a1 + 32) hideEarDistanceWarningContinueButton];
  [*(a1 + 32) updateEarEnrollText];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1144);
  v4 = *(v2 + 1252);

  return [v3 playProgressPlayer:v4];
}

- (void)hideEarDistanceWarningContinueButton
{
  [(OBTrayButton *)self->_earDistanceWarnContinueButton setHidden:1];
  buttonTrayEffectView = self->_buttonTrayEffectView;

  [(UIVisualEffectView *)buttonTrayEffectView setHidden:1];
}

- (void)showEarDistanceWarningContinueButton
{
  [(OBTrayButton *)self->_earDistanceWarnContinueButton setHidden:0];
  buttonTrayEffectView = self->_buttonTrayEffectView;

  [(UIVisualEffectView *)buttonTrayEffectView setHidden:0];
}

- (void)startEarEnrollmentNudgeTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HPSSpatialProfileEnrollmentController_startEarEnrollmentNudgeTimer__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__HPSSpatialProfileEnrollmentController_startEarEnrollmentNudgeTimer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1496))
  {
    [*(a1 + 32) stopEarEnrollmentNudgeTimer];
    v2 = *(a1 + 32);
  }

  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v2 target:sel_triggerEarEnrollmentNudgeTimer selector:0 userInfo:1 repeats:20.0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1496);
  *(v4 + 1496) = v3;

  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Checking ear enrollment nudge", v8, 2u);
  }
}

- (void)triggerEarEnrollmentNudgeTimer
{
  if (self->_rightEarStatus == 3 && self->_leftEarStatus == 3)
  {
    [(HPSSpatialProfileEnrollmentController *)self stopEarEnrollmentNudgeTimer];
  }

  else
  {
    [(HPSSpatialProfileEnrollmentController *)self nudgeEar];
  }
}

- (void)nudgeEar
{
  v52 = *MEMORY[0x277D85DE8];
  if (CACurrentMediaTime() - self->_lastEarCaptureTime < 3.0 || self->_enrollmentPaused)
  {
    v4 = sharedBluetoothSettingsLogComponent(v3);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:

      return;
    }

    v5 = CACurrentMediaTime() - self->_lastEarCaptureTime;
    enrollmentPaused = self->_enrollmentPaused;
    *buf = 134218240;
    *v39 = v5;
    *&v39[8] = 1024;
    LODWORD(v40) = enrollmentPaused;
    v7 = "Spatial Profile:got frame within last %f sec Enrollment Pause status: %d";
    v8 = v4;
    v9 = 18;
LABEL_5:
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    goto LABEL_6;
  }

  v10 = sharedBluetoothSettingsLogComponent(v3);
  v11 = &OBJC_IVAR___HPSSpatialProfileEnrollmentController__earCaptureSoundStep;
  v12 = &OBJC_IVAR___HPSSpatialProfileEnrollmentController__earCaptureSoundStep;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    leftEarStatus = self->_leftEarStatus;
    leftEarRearCaptured = self->_leftEarRearCaptured;
    leftEarFrontCaptured = self->_leftEarFrontCaptured;
    rightEarStatus = self->_rightEarStatus;
    rightEarFrontCaptured = self->_rightEarFrontCaptured;
    rightEarRearCaptured = self->_rightEarRearCaptured;
    v19 = CACurrentMediaTime() - self->_lastEarCaptureTime;
    candidateYaw = self->_candidateYaw;
    currentYaw = self->_currentYaw;
    *buf = 67111168;
    *v39 = leftEarStatus;
    *&v39[4] = 1024;
    *&v39[6] = leftEarRearCaptured;
    LOWORD(v40) = 1024;
    *(&v40 + 2) = leftEarFrontCaptured;
    HIWORD(v40) = 1024;
    v41 = rightEarStatus;
    v42 = 1024;
    v43 = rightEarFrontCaptured;
    v11 = &OBJC_IVAR___HPSSpatialProfileEnrollmentController__earCaptureSoundStep;
    v44 = 1024;
    v45 = rightEarRearCaptured;
    v12 = &OBJC_IVAR___HPSSpatialProfileEnrollmentController__earCaptureSoundStep;
    v46 = 2048;
    v47 = v19;
    v48 = 2048;
    v49 = candidateYaw;
    v50 = 2048;
    v51 = currentYaw;
    _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Trigger nudge Left ear Status %d : [ Rear captured : %d Fron Captured : %d ] right ear  Status %d: [ Rear captured : %d Fron Captured : %d ] Time From last detection %f Candidate Yaw %f Current Yaw %f", buf, 0x44u);
  }

  v23 = v12[43];
  v24 = *(&self->super.super.super.isa + v23);
  if (v24 == -100.0 || (v25 = v11[44], v26 = *(&self->super.super.super.isa + v25), v26 == -100.0))
  {
    v28 = sharedBluetoothSettingsLogComponent(v22);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v28, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ignore Trigger nudge Left ear due to missing yaw", buf, 2u);
    }

    return;
  }

  if (vabdd_f64(v26, v24) <= 10.0)
  {
    v4 = sharedBluetoothSettingsLogComponent(v22);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v29 = *(&self->super.super.super.isa + v25);
    v30 = *(&self->super.super.super.isa + v23);
    *buf = 134218240;
    *v39 = v29;
    *&v39[8] = 2048;
    v40 = v30;
    v7 = "Spatial Profile: Ignore Trigger nudge Left ear due to lower threshold : Candiate %f - Current %f";
    v8 = v4;
    v9 = 22;
    goto LABEL_5;
  }

  if (self->_rightEarStatus != 2)
  {
    if (self->_leftEarStatus != 2)
    {
      return;
    }

    if (v26 > v24)
    {
LABEL_24:
      v31 = dispatch_time(0, 300000000);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_5;
      v35[3] = &unk_2796AD618;
      v35[4] = self;
      v32 = MEMORY[0x277D85CD0];
      v33 = v35;
LABEL_27:
      dispatch_after(v31, v32, v33);
      return;
    }

    goto LABEL_26;
  }

  v27 = dispatch_time(0, 300000000);
  if (v26 <= v24)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_3;
    v36[3] = &unk_2796AD618;
    v36[4] = self;
    dispatch_after(v27, MEMORY[0x277D85CD0], v36);
    if (self->_leftEarStatus != 2)
    {
      return;
    }

LABEL_26:
    v31 = dispatch_time(0, 300000000);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_7;
    v34[3] = &unk_2796AD618;
    v34[4] = self;
    v32 = MEMORY[0x277D85CD0];
    v33 = v34;
    goto LABEL_27;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_after(v27, MEMORY[0x277D85CD0], block);
  if (self->_leftEarStatus == 2)
  {
    goto LABEL_24;
  }
}

uint64_t __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke(uint64_t a1)
{
  [*(a1 + 32) forceBlur];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_2;
  v5[3] = &unk_2796AD618;
  v5[4] = v2;
  return [v3 nudgeRight:v5];
}

_DWORD *__49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[342] == 2 || result[346] == 2)
  {
    return [result cancelBlur];
  }

  return result;
}

uint64_t __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) forceBlur];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_4;
  v5[3] = &unk_2796AD618;
  v5[4] = v2;
  return [v3 nudgeLeft:v5];
}

_DWORD *__49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[342] == 2 || result[346] == 2)
  {
    return [result cancelBlur];
  }

  return result;
}

uint64_t __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) forceBlur];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_6;
  v5[3] = &unk_2796AD618;
  v5[4] = v2;
  return [v3 nudgeLeft:v5];
}

_DWORD *__49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[342] == 2 || result[346] == 2)
  {
    return [result cancelBlur];
  }

  return result;
}

uint64_t __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) forceBlur];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_8;
  v5[3] = &unk_2796AD618;
  v5[4] = v2;
  return [v3 nudgeRight:v5];
}

_DWORD *__49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[342] == 2 || result[346] == 2)
  {
    return [result cancelBlur];
  }

  return result;
}

- (void)stopEarEnrollmentNudgeTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HPSSpatialProfileEnrollmentController_stopEarEnrollmentNudgeTimer__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __68__HPSSpatialProfileEnrollmentController_stopEarEnrollmentNudgeTimer__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1496) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1496);
  *(v2 + 1496) = 0;
}

- (void)cancelBlur
{
  [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView setPauseBlur:1];
  [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView setForceBlur:0];
  enrollView = self->_enrollView;

  [(HPSSpatialProfileUIPearlEnrollView *)enrollView setCameraBlurAmount:0 useShade:0 duration:0.0 completion:0.5];
}

- (void)forceBlur
{
  [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView setPauseBlur:0];
  [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView setForceBlur:1];
  enrollView = self->_enrollView;

  [(HPSSpatialProfileUIPearlEnrollView *)enrollView setCameraBlurAmount:0 useShade:0 duration:15.0 completion:0.5];
}

- (void)sendTipKitSignal
{
  discoverabilitySignal = [MEMORY[0x277CF1B58] discoverabilitySignal];
  source = [discoverabilitySignal source];
  v4 = objc_alloc(MEMORY[0x277CF1938]);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [v4 initWithIdentifier:@"com.apple.HeadphoneSettings.spatial-profile-enrollment-triggered" bundleID:bundleIdentifier context:0];

  v8 = sharedBluetoothSettingsLogComponent([source sendEvent:v7]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Signal Sent to TipKit", v9, 2u);
  }
}

@end