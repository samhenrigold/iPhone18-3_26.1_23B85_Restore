@interface BTSFitTestController
- (BOOL)isCallActive;
- (BOOL)isDebugModeEnabled;
- (BOOL)isiPad;
- (BTSFitTestController)initWithDevice:(id)device;
- (float)getConfidenceThreshold;
- (float)getSealThreshold;
- (id)getImageFileName:(unsigned int)name forSide:(BOOL)side;
- (void)callCompletionHandler;
- (void)cleanupAudio;
- (void)copyToClipboard;
- (void)dealloc;
- (void)deviceDisconnectedHandler:(id)handler;
- (void)dismissFitTest;
- (void)fitTestStopped;
- (void)handleAudioSessionInterruption:(id)interruption;
- (void)handleCallIsActiveDidChangeNotification:(id)notification;
- (void)handleMediaServerConnectionDied:(id)died;
- (void)inEarStatusChanged:(id)changed;
- (void)loadView;
- (void)powerChangedHandler:(id)handler;
- (void)removeDoneButton;
- (void)resetVolume;
- (void)sealValueChanged:(id)changed;
- (void)setCancelAction;
- (void)setCompletionHandler:(id)handler;
- (void)setupConstraints;
- (void)setupFitTestContentView;
- (void)startFitTest;
- (void)updateFitTestActiveState;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation BTSFitTestController

- (BTSFitTestController)initWithDevice:(id)device
{
  v119 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (self)
  {
    v110 = deviceCopy;
    v113.receiver = self;
    v113.super_class = BTSFitTestController;
    self = [(BTSFitTestController *)&v113 init];
    objc_storeStrong(&self->currentDevice, device);
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    fitTestContentView = self->_fitTestContentView;
    self->_fitTestContentView = v6;

    v8 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackViewImages = self->_stackViewImages;
    self->_stackViewImages = v8;

    v10 = objc_alloc_init(MEMORY[0x277D26E58]);
    avSystemController = self->_avSystemController;
    self->_avSystemController = v10;

    self->_testActive = 0;
    self->_initialVolume = 0.0;
    self->_volumeModified = 0;
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    v13 = [mEMORY[0x277D26E58] getVolume:&self->_initialVolume forCategory:@"Audio/Video"];

    if ((v13 & 1) == 0)
    {
      v15 = sharedBluetoothSettingsLogComponent(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [BTSFitTestController initWithDevice:];
      }
    }

    v16 = sharedBluetoothSettingsLogComponent(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      initialVolume = self->_initialVolume;
      *buf = 134217984;
      *v116 = initialVolume;
      _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "Fit Test: Volume before fit test : %0.9f", buf, 0xCu);
    }

    v18 = objc_alloc(MEMORY[0x277D75D18]);
    v19 = *MEMORY[0x277CBF3A0];
    v20 = *(MEMORY[0x277CBF3A0] + 8);
    v21 = *(MEMORY[0x277CBF3A0] + 16);
    v22 = *(MEMORY[0x277CBF3A0] + 24);
    v23 = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], v20, v21, v22}];
    leftBudLabel = self->_leftBudLabel;
    self->_leftBudLabel = v23;

    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v19, v20, v21, v22}];
    rightBudLabel = self->_rightBudLabel;
    self->_rightBudLabel = v25;

    v27 = objc_alloc(MEMORY[0x277D755E8]);
    v28 = [MEMORY[0x277D755B8] systemImageNamed:@"left.circle.fill"];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    v30 = [v28 imageWithTintColor:systemGrayColor renderingMode:1];
    v31 = [v27 initWithImage:v30];
    leftBudLabelImageView = self->_leftBudLabelImageView;
    self->_leftBudLabelImageView = v31;

    v33 = objc_alloc(MEMORY[0x277D755E8]);
    v34 = [MEMORY[0x277D755B8] systemImageNamed:@"right.circle.fill"];
    systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
    v36 = [v34 imageWithTintColor:systemGrayColor2 renderingMode:1];
    v37 = [v33 initWithImage:v36];
    rightBudLabelImageView = self->_rightBudLabelImageView;
    self->_rightBudLabelImageView = v37;

    [(UIView *)self->_leftBudLabel setSize:18.0, 18.0];
    [(UIView *)self->_leftBudLabel _setContinuousCornerRadius:9.0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)self->_leftBudLabel setBackgroundColor:clearColor];

    [(UIView *)self->_rightBudLabel setSize:18.0, 18.0];
    [(UIView *)self->_rightBudLabel _setContinuousCornerRadius:9.0];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)self->_rightBudLabel setBackgroundColor:clearColor2];

    [(UIView *)self->_leftBudLabel addSubview:self->_leftBudLabelImageView];
    [(UIView *)self->_rightBudLabel addSubview:self->_rightBudLabelImageView];
    v41 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v19, v20, v21, v22}];
    leftBudResultLabel = self->_leftBudResultLabel;
    self->_leftBudResultLabel = v41;

    v43 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v19, v20, v21, v22}];
    rightBudResultLabel = self->_rightBudResultLabel;
    self->_rightBudResultLabel = v43;

    v45 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v19, v20, v21, v22}];
    resultDetailLabel = self->_resultDetailLabel;
    self->_resultDetailLabel = v45;

    [(UILabel *)self->_leftBudResultLabel setText:&stru_286339F58];
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [(UILabel *)self->_leftBudResultLabel setTextColor:systemBlackColor];

    [(UILabel *)self->_leftBudResultLabel setTextAlignment:1];
    [(UILabel *)self->_leftBudResultLabel setNumberOfLines:0];
    [(UILabel *)self->_leftBudResultLabel setLineBreakMode:0];
    v48 = *MEMORY[0x277D76918];
    v49 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)self->_leftBudResultLabel setFont:v49];

    [(UILabel *)self->_leftBudResultLabel setAlpha:1.0];
    [(UILabel *)self->_rightBudResultLabel setText:&stru_286339F58];
    systemBlackColor2 = [MEMORY[0x277D75348] systemBlackColor];
    [(UILabel *)self->_rightBudResultLabel setTextColor:systemBlackColor2];

    [(UILabel *)self->_rightBudResultLabel setTextAlignment:1];
    [(UILabel *)self->_rightBudResultLabel setNumberOfLines:0];
    [(UILabel *)self->_rightBudResultLabel setLineBreakMode:0];
    v51 = [MEMORY[0x277D74300] preferredFontForTextStyle:v48];
    [(UILabel *)self->_rightBudResultLabel setFont:v51];

    [(UILabel *)self->_rightBudResultLabel setAlpha:1.0];
    [(UILabel *)self->_resultDetailLabel setText:&stru_286339F58];
    systemBlackColor3 = [MEMORY[0x277D75348] systemBlackColor];
    [(UILabel *)self->_resultDetailLabel setTextColor:systemBlackColor3];

    [(UILabel *)self->_resultDetailLabel setTextAlignment:1];
    [(UILabel *)self->_resultDetailLabel setNumberOfLines:0];
    [(UILabel *)self->_resultDetailLabel setLineBreakMode:0];
    v53 = [MEMORY[0x277D74300] preferredFontForTextStyle:v48];
    [(UILabel *)self->_resultDetailLabel setFont:v53];

    [(UILabel *)self->_resultDetailLabel setAlpha:1.0];
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    if (self->_darkMode)
    {
      v55 = "dark";
    }

    else
    {
      v55 = "light";
    }

    v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"FitTest-Left-%s", v55];
    if (self->_darkMode)
    {
      v57 = "dark";
    }

    else
    {
      v57 = "light";
    }

    v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"FitTest-Right-%s", v57];
    if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
    {
      *buf = 17;
      [(BluetoothDevice *)self->currentDevice getDeviceColor:buf];
      v59 = [(BTSFitTestController *)self getImageFileName:*buf forSide:0];

      v60 = [(BTSFitTestController *)self getImageFileName:*buf forSide:1];

      v58 = v60;
      v56 = v59;
    }

    if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
    {
      *buf = 17;
      [(BluetoothDevice *)self->currentDevice getDeviceColor:buf];
      v61 = MEMORY[0x277CCACA8];
      v62 = [(BTSFitTestController *)self getImageFileName:*buf forSide:0];
      v63 = [v61 stringWithFormat:@"B494b-%@", v62];

      v64 = MEMORY[0x277CCACA8];
      v65 = [(BTSFitTestController *)self getImageFileName:*buf forSide:1];
      v66 = [v64 stringWithFormat:@"B494b-%@", v65];

      v58 = v66;
      v56 = v63;
    }

    if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
    {
      *buf = 17;
      [(BluetoothDevice *)self->currentDevice getDeviceColor:buf];
      v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"B498-Left-FitTest-CL%d", *buf];

      v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"B498-Right-FitTest-CL%d", *buf];

      v69 = v67;
    }

    else
    {
      v69 = v56;
      v68 = v58;
    }

    v70 = MEMORY[0x277D755B8];
    v71 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v109 = v69;
    v72 = [v70 imageNamed:v69 inBundle:v71 compatibleWithTraitCollection:0];

    v108 = v72;
    v73 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v72];
    leftImView = self->_leftImView;
    self->_leftImView = v73;

    v75 = MEMORY[0x277D755B8];
    v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v77 = [v75 imageNamed:v68 inBundle:v76 compatibleWithTraitCollection:0];

    v78 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v77];
    rightImView = self->_rightImView;
    self->_rightImView = v78;

    traitCollection = [(BTSFitTestController *)self traitCollection];
    self->_darkMode = [traitCollection userInterfaceStyle] == 2;

    if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
    {
      v81 = [MEMORY[0x277D755E8] _headphoneGetAssetsDictionary:{-[BluetoothDevice productId](self->currentDevice, "productId")}];
      productId = [(BluetoothDevice *)self->currentDevice productId];
      v112 = 17;
      v83 = sharedBluetoothSettingsLogComponent([(BluetoothDevice *)self->currentDevice getDeviceColor:&v112]);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        darkMode = self->_darkMode;
        *buf = 67109632;
        *v116 = productId;
        *&v116[4] = 1024;
        *&v116[6] = darkMode;
        v117 = 1024;
        v118 = v112;
        _os_log_impl(&dword_251143000, v83, OS_LOG_TYPE_DEFAULT, "Initialized filter paramters: pid - %d, darkMode - %d, deviceColor - %d", buf, 0x14u);
      }

      [(UIImageView *)self->_leftImView _headphoneApplyFilters:v81 pid:productId darkMode:self->_darkMode deviceColor:v112];
      [(UIImageView *)self->_rightImView _headphoneApplyFilters:v81 pid:productId darkMode:self->_darkMode deviceColor:v112];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_inEarStatusChanged_ name:*MEMORY[0x277CF3150] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_sealValueChanged_ name:*MEMORY[0x277CF3158] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF31A0] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel_powerChangedHandler_ name:*MEMORY[0x277CF3168] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter6 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

    defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
    v92 = *MEMORY[0x277CB8068];
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    [defaultCenter7 addObserver:self selector:sel_handleAudioSessionInterruption_ name:v92 object:mEMORY[0x277CB83F8]];

    defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
    v95 = *MEMORY[0x277D26D40];
    mEMORY[0x277CB83F8]2 = [MEMORY[0x277CB83F8] sharedInstance];
    [defaultCenter8 addObserver:self selector:sel_handleMediaServerConnectionDied_ name:v95 object:mEMORY[0x277CB83F8]2];

    mEMORY[0x277D26E58]2 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v98 = MEMORY[0x277D26B50];
    v114 = *MEMORY[0x277D26B50];
    v99 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
    v100 = *MEMORY[0x277D26DD0];
    v111 = 0;
    LOBYTE(mEMORY[0x277CB83F8]2) = [mEMORY[0x277D26E58]2 setAttribute:v99 forKey:v100 error:&v111];
    v101 = v111;

    v103 = sharedBluetoothSettingsLogComponent(v102);
    defaultCenter9 = v103;
    if (mEMORY[0x277CB83F8]2)
    {
      if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, defaultCenter9, OS_LOG_TYPE_INFO, "Fit Test: Successfully set AVSC attribute. Register listener for Call Active notification", buf, 2u);
      }

      defaultCenter9 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter9 addObserver:self selector:sel_handleCallIsActiveDidChangeNotification_ name:*v98 object:0];
    }

    else if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      [BTSFitTestController initWithDevice:];
    }

    v105 = objc_alloc_init(HPSDeviceAnalytics);
    deviceAnalytics = self->_deviceAnalytics;
    self->_deviceAnalytics = v105;

    deviceCopy = v110;
  }

  return self;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  fitTestController = self->_fitTestController;
  self->_fitTestController = 0;

  playButton = self->_playButton;
  self->_playButton = 0;

  avSystemController = self->_avSystemController;
  self->_avSystemController = 0;

  player = self->_player;
  self->_player = 0;

  fitTestContentView = self->_fitTestContentView;
  self->_fitTestContentView = 0;

  stackViewImages = self->_stackViewImages;
  self->_stackViewImages = 0;

  leftBudLabel = self->_leftBudLabel;
  self->_leftBudLabel = 0;

  leftBudLabelImageView = self->_leftBudLabelImageView;
  self->_leftBudLabelImageView = 0;

  rightBudLabelImageView = self->_rightBudLabelImageView;
  self->_rightBudLabelImageView = 0;

  rightBudLabel = self->_rightBudLabel;
  self->_rightBudLabel = 0;

  leftImView = self->_leftImView;
  self->_leftImView = 0;

  rightImView = self->_rightImView;
  self->_rightImView = 0;

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  v17.receiver = self;
  v17.super_class = BTSFitTestController;
  [(BTSFitTestController *)&v17 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = BTSFitTestController;
  [(BTSFitTestController *)&v6 viewDidLoad];
  navigationItem = [(BTSFitTestController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  view = [(BTSFitTestController *)self view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  [(UIView *)self->_fitTestContentView sizeToFit];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = BTSFitTestController;
  [(BTSFitTestController *)&v4 viewWillLayoutSubviews];
  [(BTSFitTestController *)self setupConstraints];
  view = [(BTSFitTestController *)self view];
  [view layoutIfNeeded];
}

- (void)loadView
{
  v36.receiver = self;
  v36.super_class = BTSFitTestController;
  [(BTSFitTestController *)&v36 loadView];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FIT_TEST_INIT_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];

  if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];

    v6 = v8;
  }

  if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];

    v6 = v10;
  }

  if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];

    v6 = v12;
  }

  v13 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:v4 detailText:v6 icon:0 contentLayout:2];
  fitTestController = self->_fitTestController;
  self->_fitTestController = v13;

  view = [(BTSFitTestController *)self view];
  [view bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  view2 = [(OBWelcomeController *)self->_fitTestController view];
  [view2 setFrame:{v17, v19, v21, v23}];

  view3 = [(OBWelcomeController *)self->_fitTestController view];
  [view3 setAutoresizingMask:18];

  [(BTSFitTestController *)self setupFitTestContentView];
  boldButton = [MEMORY[0x277D37618] boldButton];
  playButton = self->_playButton;
  self->_playButton = boldButton;

  [(OBTrayButton *)self->_playButton addTarget:self action:sel_startFitTest forControlEvents:64];
  v28 = self->_playButton;
  v29 = [MEMORY[0x277D755B8] systemImageNamed:@"play.fill"];
  [(OBTrayButton *)v28 setImage:v29 forState:0];

  [(BTSFitTestController *)self updateFitTestActiveState];
  buttonTray = [(OBWelcomeController *)self->_fitTestController buttonTray];
  [buttonTray addButton:self->_playButton];

  if ([(BTSFitTestController *)self isDebugModeEnabled])
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    debugCopyResultsButton = self->_debugCopyResultsButton;
    self->_debugCopyResultsButton = linkButton;

    [(OBLinkTrayButton *)self->_debugCopyResultsButton setTitle:@"Copy Results" forState:0];
    [(OBLinkTrayButton *)self->_debugCopyResultsButton setClipsToBounds:1];
    layer = [(OBLinkTrayButton *)self->_debugCopyResultsButton layer];
    [layer setMasksToBounds:1];

    [(OBLinkTrayButton *)self->_debugCopyResultsButton addTarget:self action:sel_copyToClipboard forControlEvents:64];
    [(OBLinkTrayButton *)self->_debugCopyResultsButton setUserInteractionEnabled:1];
  }

  [(BTSFitTestController *)self addChildViewController:self->_fitTestController];
  view4 = [(BTSFitTestController *)self view];
  view5 = [(OBWelcomeController *)self->_fitTestController view];
  [view4 addSubview:view5];
}

- (void)copyToClipboard
{
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  text = [(UILabel *)self->_resultDetailLabel text];
  [generalPasteboard setString:text];
}

- (void)setupFitTestContentView
{
  [(UIStackView *)self->_stackViewImages setAxis:0];
  [(UIStackView *)self->_stackViewImages setAlignment:3];
  [(UIStackView *)self->_stackViewImages setDistribution:2];
  [(UIStackView *)self->_stackViewImages setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackViewImages setSemanticContentAttribute:3];
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  [(UIImageView *)self->_leftBudLabelImageView setFrame:*MEMORY[0x277CBF3A0], v4, 22.0, 22.0];
  [(UIView *)self->_leftBudLabel center];
  [(UIImageView *)self->_leftBudLabelImageView setCenter:?];
  [(UIImageView *)self->_rightBudLabelImageView setFrame:v3, v4, 22.0, 22.0];
  [(UIView *)self->_rightBudLabel center];
  [(UIImageView *)self->_rightBudLabelImageView setCenter:?];
  [(UIImageView *)self->_leftImView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_rightImView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_leftBudLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_rightBudLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_leftBudResultLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_rightBudResultLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_resultDetailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v5) = 1148846080;
  [(UILabel *)self->_leftBudResultLabel setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [(UILabel *)self->_rightBudResultLabel setContentHuggingPriority:1 forAxis:v6];
  v10 = objc_alloc_init(MEMORY[0x277D75D18]);
  widthAnchor = [v10 widthAnchor];
  v8 = [widthAnchor constraintEqualToConstant:40.0];
  [v8 setActive:1];

  [(UIStackView *)self->_stackViewImages addArrangedSubview:self->_leftImView];
  [(UIStackView *)self->_stackViewImages addArrangedSubview:v10];
  [(UIStackView *)self->_stackViewImages addArrangedSubview:self->_rightImView];
  [(UIView *)self->_fitTestContentView addSubview:self->_leftBudLabel];
  [(UIView *)self->_fitTestContentView addSubview:self->_rightBudLabel];
  [(UIView *)self->_fitTestContentView addSubview:self->_leftBudResultLabel];
  [(UIView *)self->_fitTestContentView addSubview:self->_rightBudResultLabel];
  [(UIView *)self->_fitTestContentView addSubview:self->_resultDetailLabel];
  [(UIView *)self->_fitTestContentView addSubview:self->_stackViewImages];
  [(UIView *)self->_fitTestContentView bringSubviewToFront:self->_leftBudLabel];
  [(UIView *)self->_fitTestContentView bringSubviewToFront:self->_rightBudLabel];
  contentView = [(OBWelcomeController *)self->_fitTestController contentView];
  [contentView addSubview:self->_fitTestContentView];
}

- (BOOL)isiPad
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

- (void)setupConstraints
{
  v97 = objc_opt_new();
  topAnchor = [(UIView *)self->_fitTestContentView topAnchor];
  contentView = [(OBWelcomeController *)self->_fitTestController contentView];
  topAnchor2 = [contentView topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v97 addObject:v6];

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

  v96 = preferredContentSizeCategory;
  v9 = ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76858]] & 1) == 0 && (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x277D76840]) & 1) == 0 && !objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x277D76838]);
  view = [(BTSFitTestController *)self view];
  [view bounds];
  v12 = v11;

  if ([(BTSFitTestController *)self isSmallScreenDevice])
  {
    view2 = [(BTSFitTestController *)self view];
    [view2 bounds];
    v15 = v14 * 0.35;
  }

  else
  {
    v15 = v12 * 0.3;
  }

  if ([(BTSFitTestController *)self isiPad])
  {
    topAnchor3 = [(UIStackView *)self->_stackViewImages topAnchor];
    headerView = [(OBWelcomeController *)self->_fitTestController headerView];
    bottomAnchor = [headerView bottomAnchor];
    v19 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:35.0];
  }

  else
  {
    view3 = [(BTSFitTestController *)self view];
    [view3 size];
    v22 = v21;
    view4 = [(BTSFitTestController *)self view];
    [view4 size];
    v25 = v24;

    topAnchor3 = [(UIStackView *)self->_stackViewImages topAnchor];
    fitTestController = self->_fitTestController;
    if (v22 <= v25)
    {
      headerView = [(OBWelcomeController *)fitTestController headerView];
      bottomAnchor = [headerView topAnchor];
      v27 = v15;
      [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:v27];
    }

    else
    {
      headerView = [(OBWelcomeController *)fitTestController contentView];
      bottomAnchor = [headerView topAnchor];
      [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    }
    v19 = ;
  }

  topSpacerConstraint = self->_topSpacerConstraint;
  self->_topSpacerConstraint = v19;

  traitCollection = [(BTSFitTestController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  if ((v9 | UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2)))
  {
  }

  else
  {
    v31 = isPreferredLanguageEnglish();

    if (v31)
    {
      contentView2 = [(OBWelcomeController *)self->_fitTestController contentView];
      heightAnchor = [contentView2 heightAnchor];
      v34 = [heightAnchor constraintGreaterThanOrEqualToConstant:403.0];
      [v97 addObject:v34];

      [v97 addObject:self->_topSpacerConstraint];
      goto LABEL_19;
    }
  }

  contentView3 = [(OBWelcomeController *)self->_fitTestController contentView];
  heightAnchor2 = [contentView3 heightAnchor];
  v37 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:403.0];
  [v97 addObject:v37];

  topAnchor4 = [(UIStackView *)self->_stackViewImages topAnchor];
  headerView2 = [(OBWelcomeController *)self->_fitTestController headerView];
  bottomAnchor2 = [headerView2 bottomAnchor];
  v41 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:100.0];
  [v97 addObject:v41];

LABEL_19:
  centerXAnchor = [(UIStackView *)self->_stackViewImages centerXAnchor];
  contentView4 = [(OBWelcomeController *)self->_fitTestController contentView];
  centerXAnchor2 = [contentView4 centerXAnchor];
  v45 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v97 addObject:v45];

  topAnchor5 = [(UILabel *)self->_leftBudResultLabel topAnchor];
  bottomAnchor3 = [(UIView *)self->_leftBudLabel bottomAnchor];
  v48 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:1.0];
  [v97 addObject:v48];

  topAnchor6 = [(UILabel *)self->_rightBudResultLabel topAnchor];
  bottomAnchor4 = [(UIView *)self->_rightBudLabel bottomAnchor];
  v51 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:1.0];
  [v97 addObject:v51];

  centerXAnchor3 = [(UILabel *)self->_leftBudResultLabel centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_leftBudLabel centerXAnchor];
  v54 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v97 addObject:v54];

  centerXAnchor5 = [(UILabel *)self->_rightBudResultLabel centerXAnchor];
  centerXAnchor6 = [(UIView *)self->_rightBudLabel centerXAnchor];
  v57 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v97 addObject:v57];

  widthAnchor = [(UIView *)self->_leftBudLabel widthAnchor];
  v59 = [widthAnchor constraintEqualToConstant:18.0];
  [v97 addObject:v59];

  heightAnchor3 = [(UIView *)self->_leftBudLabel heightAnchor];
  v61 = [heightAnchor3 constraintEqualToConstant:18.0];
  [v97 addObject:v61];

  widthAnchor2 = [(UIView *)self->_rightBudLabel widthAnchor];
  v63 = [widthAnchor2 constraintEqualToConstant:18.0];
  [v97 addObject:v63];

  heightAnchor4 = [(UIView *)self->_rightBudLabel heightAnchor];
  v65 = [heightAnchor4 constraintEqualToConstant:18.0];
  [v97 addObject:v65];

  widthAnchor3 = [(UILabel *)self->_leftBudResultLabel widthAnchor];
  v67 = [widthAnchor3 constraintLessThanOrEqualToConstant:113.0];
  [v97 addObject:v67];

  widthAnchor4 = [(UILabel *)self->_rightBudResultLabel widthAnchor];
  v69 = [widthAnchor4 constraintLessThanOrEqualToConstant:113.0];
  [v97 addObject:v69];

  topAnchor7 = [(UILabel *)self->_resultDetailLabel topAnchor];
  bottomAnchor5 = [(UILabel *)self->_leftBudResultLabel bottomAnchor];
  v72 = [topAnchor7 constraintGreaterThanOrEqualToAnchor:bottomAnchor5 constant:1.0];
  [v97 addObject:v72];

  topAnchor8 = [(UILabel *)self->_resultDetailLabel topAnchor];
  bottomAnchor6 = [(UILabel *)self->_rightBudResultLabel bottomAnchor];
  v75 = [topAnchor8 constraintGreaterThanOrEqualToAnchor:bottomAnchor6 constant:1.0];
  [v97 addObject:v75];

  leadingAnchor = [(UILabel *)self->_resultDetailLabel leadingAnchor];
  headerView3 = [(OBWelcomeController *)self->_fitTestController headerView];
  leadingAnchor2 = [headerView3 leadingAnchor];
  v79 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v97 addObject:v79];

  trailingAnchor = [(UILabel *)self->_resultDetailLabel trailingAnchor];
  headerView4 = [(OBWelcomeController *)self->_fitTestController headerView];
  trailingAnchor2 = [headerView4 trailingAnchor];
  v83 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v97 addObject:v83];

  topAnchor9 = [(UIView *)self->_leftBudLabel topAnchor];
  bottomAnchor7 = [(UIImageView *)self->_leftImView bottomAnchor];
  v86 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:20.0];
  [v97 addObject:v86];

  topAnchor10 = [(UIView *)self->_rightBudLabel topAnchor];
  bottomAnchor8 = [(UIImageView *)self->_rightImView bottomAnchor];
  v89 = [topAnchor10 constraintEqualToAnchor:bottomAnchor8 constant:20.0];
  [v97 addObject:v89];

  leftAnchor = [(UIView *)self->_leftBudLabel leftAnchor];
  leftAnchor2 = [(UIStackView *)self->_stackViewImages leftAnchor];
  v92 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:62.0];
  [v97 addObject:v92];

  rightAnchor = [(UIView *)self->_rightBudLabel rightAnchor];
  rightAnchor2 = [(UIStackView *)self->_stackViewImages rightAnchor];
  v95 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-62.0];
  [v97 addObject:v95];

  [MEMORY[0x277CCAAD0] activateConstraints:v97];
}

- (void)startFitTest
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *self;
  v4 = *(a2 + 1146);
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&dword_251143000, log, OS_LOG_TYPE_ERROR, "Fit Test: budsInEar: %d, callActive: %d", v5, 0xEu);
}

void __36__BTSFitTestController_startFitTest__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = sharedBluetoothSettingsLogComponent(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Fit Test: No action needed", v3, 2u);
  }
}

void __36__BTSFitTestController_startFitTest__block_invoke_138(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v30 = 0.0;
  v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v3 = [v2 getVolume:&v30 forCategory:@"Audio/Video"];

  v5 = sharedBluetoothSettingsLogComponent(v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v32 = v30;
      _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Fit Test: Current volume : %f", buf, 0xCu);
    }

    if (v30 < 0.5)
    {
      v8 = sharedBluetoothSettingsLogComponent(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Fit Test: Increase volume for AudioVideo for fit test", buf, 2u);
      }

      v9 = [MEMORY[0x277D26E58] sharedAVSystemController];
      LODWORD(v10) = 0.5;
      [v9 setVolumeTo:@"Audio/Video" forCategory:v10];

      *(*(a1 + 32) + 1148) = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __36__BTSFitTestController_startFitTest__block_invoke_138_cold_1();
    }
  }

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 pathForResource:@"E+D-US_ML" ofType:@"wav"];

  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
  v14 = [MEMORY[0x277CB83F8] sharedInstance];
  v29 = 0;
  [v14 setActive:1 error:&v29];
  v15 = v29;

  if (v15)
  {
    v17 = sharedBluetoothSettingsLogComponent(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __36__BTSFitTestController_startFitTest__block_invoke_138_cold_2();
    }
  }

  v18 = [MEMORY[0x277CB83F8] sharedInstance];
  v19 = *MEMORY[0x277CB8030];
  v28 = v15;
  [v18 setCategory:v19 error:&v28];
  v20 = v28;

  if (v20)
  {
    v22 = sharedBluetoothSettingsLogComponent(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __36__BTSFitTestController_startFitTest__block_invoke_138_cold_3();
    }

    v23 = 0;
  }

  else
  {
    v27 = 0;
    v24 = [objc_alloc(MEMORY[0x277CB83D0]) initWithContentsOfURL:v13 error:&v27];
    v23 = v27;
    v25 = *(a1 + 32);
    v26 = *(v25 + 1040);
    *(v25 + 1040) = v24;

    [*(*(a1 + 32) + 1040) setNumberOfLoops:5];
    [*(*(a1 + 32) + 1040) prepareToPlay];
    [*(*(a1 + 32) + 1040) play];
  }

  *(*(a1 + 32) + 1145) = 1;
}

- (void)setCancelAction
{
  navigationItem = [(BTSFitTestController *)self navigationItem];
  [navigationItem setLeftBarButtonItems:0 animated:1];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_dismissFitTest];
  navigationItem2 = [(BTSFitTestController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v5];
}

- (void)removeDoneButton
{
  navigationItem = [(BTSFitTestController *)self navigationItem];
  [navigationItem setRightBarButtonItem:0 animated:1];
}

- (void)dismissFitTest
{
  [(BTSFitTestController *)self cleanupAudio];
  [(BTSFitTestController *)self resetVolume];
  if (!self->_completionHandler)
  {

    [(BTSFitTestController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_152];
  }
}

- (void)inEarStatusChanged:(id)changed
{
  v25 = *MEMORY[0x277D85DE8];
  object = [changed object];
  v5 = [object objectForKeyedSubscript:@"primaryInEarStatus"];
  v6 = [object objectForKeyedSubscript:@"secondaryInEarStatus"];
  v7 = [object objectForKeyedSubscript:@"device"];
  address = [v7 address];
  address2 = [(BluetoothDevice *)self->currentDevice address];
  v10 = [address isEqualToString:address2];

  if (v10)
  {
    bOOLValue = [v5 BOOLValue];
    bOOLValue2 = [v6 BOOLValue];
    v13 = ((bOOLValue | bOOLValue2) & 1) == 0;
    v14 = sharedBluetoothSettingsLogComponent(bOOLValue2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412802;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      v23 = 1024;
      v24 = v13;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "Fit Test: PrimaryInEar: %@, secondaryInEar : %@. newBudsInEar: %d", &v19, 0x1Cu);
    }

    budsInEar = self->_budsInEar;
    self->_budsInEar = v13;
    v17 = sharedBluetoothSettingsLogComponent(v16);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (budsInEar == v13)
    {
      if (v18)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "Fit Test: No change needed based on in-ear status change", &v19, 2u);
      }
    }

    else
    {
      if (v18)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "Fit Test: Update UI since in-ear status has changed", &v19, 2u);
      }

      if (self->_testActive)
      {
        [(BTSFitTestController *)self fitTestStopped];
      }
    }
  }
}

- (void)sealValueChanged:(id)changed
{
  v127 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = changedCopy;
  if (self->_testActive)
  {
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissFitTest];
    navigationItem = [(BTSFitTestController *)self navigationItem];
    [navigationItem setLeftBarButtonItems:0 animated:1];

    navigationItem2 = [(BTSFitTestController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v6];

    object = [v5 object];
    v10 = [object objectForKeyedSubscript:@"sealLeft"];
    v11 = [object objectForKeyedSubscript:@"sealRight"];
    v108 = v10;
    [v10 floatValue];
    v13 = v12;
    v107 = v11;
    floatValue = [v11 floatValue];
    v16 = v15;
    v17 = sharedBluetoothSettingsLogComponent(floatValue);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v122 = v13;
      _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "Fit Test: leftSeal : %0.06f", buf, 0xCu);
    }

    v19 = sharedBluetoothSettingsLogComponent(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v122 = v16;
      _os_log_impl(&dword_251143000, v19, OS_LOG_TYPE_DEFAULT, "Fit Test: rightSeal : %0.06f", buf, 0xCu);
    }

    v20 = [object objectForKeyedSubscript:@"confidenceLeft"];
    v103 = object;
    v21 = [object objectForKeyedSubscript:@"confidenceRight"];
    v106 = v20;
    [v20 floatValue];
    v23 = v22;
    v105 = v21;
    [v21 floatValue];
    v25 = v24;
    productId = [(BluetoothDevice *)self->currentDevice productId];
    *&v27 = v13 + v23;
    if (productId == 8210)
    {
      v25 = v16 + v25;
      v23 = v13 + v23;
    }

    productId2 = [(BluetoothDevice *)self->currentDevice productId];
    *&v29 = v13 + v23;
    if (productId2 == 8239)
    {
      v25 = v16 + v25;
      v23 = v13 + v23;
    }

    productId3 = [(BluetoothDevice *)self->currentDevice productId];
    if (productId3 == 8221)
    {
      v31 = v16 + v25;
    }

    else
    {
      v31 = v25;
    }

    if (productId3 == 8221)
    {
      v32 = v13 + v23;
    }

    else
    {
      v32 = v23;
    }

    v33 = sharedBluetoothSettingsLogComponent(productId3);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v122 = v32;
      _os_log_impl(&dword_251143000, v33, OS_LOG_TYPE_DEFAULT, "Fit Test: confidenceL : %0.06f", buf, 0xCu);
    }

    v35 = sharedBluetoothSettingsLogComponent(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v122 = v31;
      _os_log_impl(&dword_251143000, v35, OS_LOG_TYPE_DEFAULT, "Fit Test: confidenceR : %0.06f", buf, 0xCu);
    }

    [(BTSFitTestController *)self fitTestStopped];
    headerView = [(OBWelcomeController *)self->_fitTestController headerView];
    [(BTSFitTestController *)self getSealThreshold];
    v37 = v36;
    getConfidenceThreshold = [(BTSFitTestController *)self getConfidenceThreshold];
    v40 = v39;
    if (v32 < v39 || v31 < v39)
    {
      v42 = sharedBluetoothSettingsLogComponent(getConfidenceThreshold);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [BTSFitTestController sealValueChanged:];
      }

      v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v44 = [v43 localizedStringForKey:@"FIT_TEST_RESULTS_FAILED_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
      [headerView setTitle:v44];

      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = [v45 localizedStringForKey:@"FIT_TEST_RESULTS_FAILED_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
      [headerView setDetailText:v46];

      [(BTSFitTestController *)self setupConstraints];
      view = [(BTSFitTestController *)self view];
      [view setNeedsLayout];

      view2 = [(BTSFitTestController *)self view];
      [view2 layoutIfNeeded];

      v102 = 0;
      v104 = 0;
      v49 = 1;
      v50 = 1;
      v51 = 0x277D75000uLL;
      v52 = object;
      v53 = v6;
      goto LABEL_70;
    }

    v104 = v13 < v37;
    v54 = MEMORY[0x277D75D18];
    if (v13 < v37)
    {
      v55 = v120;
      v120[0] = MEMORY[0x277D85DD0];
      v120[1] = 3221225472;
      v56 = __41__BTSFitTestController_sealValueChanged___block_invoke;
    }

    else
    {
      v55 = v119;
      v119[0] = MEMORY[0x277D85DD0];
      v119[1] = 3221225472;
      v56 = __41__BTSFitTestController_sealValueChanged___block_invoke_2;
    }

    v55[2] = v56;
    v55[3] = &unk_2796AD618;
    v55[4] = self;
    [v54 animateWithDuration:0.5 animations:?];
    v102 = v16 < v37;
    v57 = MEMORY[0x277D75D18];
    if (v16 < v37)
    {
      v58 = v118;
      v118[0] = MEMORY[0x277D85DD0];
      v118[1] = 3221225472;
      v59 = __41__BTSFitTestController_sealValueChanged___block_invoke_3;
    }

    else
    {
      v58 = v117;
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v59 = __41__BTSFitTestController_sealValueChanged___block_invoke_4;
    }

    v58[2] = v59;
    v58[3] = &unk_2796AD618;
    v58[4] = self;
    [v57 animateWithDuration:0.5 animations:?];
    v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v61 = [v60 localizedStringForKey:@"FIT_TEST_RESULTS_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
    [headerView setTitle:v61];

    if (v13 >= v37 && v16 >= v37)
    {
      v63 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v64 = [v63 localizedStringForKey:@"FIT_TEST_BOTH_GOOD_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
      [headerView setDetailText:v64];

      v53 = v6;
      if (self->_completionHandler)
      {
        playButton = self->_playButton;
        v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v67 = [v66 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"DeviceConfig"];
        [(OBTrayButton *)playButton setTitle:v67 forState:0];

        imageView = [(OBTrayButton *)self->_playButton imageView];
        [imageView setHidden:1];

        [(OBTrayButton *)self->_playButton removeTarget:self action:sel_startFitTest forControlEvents:64];
        [(OBTrayButton *)self->_playButton addTarget:self action:sel_callCompletionHandler forControlEvents:64];
      }

      v102 = 0;
      v49 = 0;
      v104 = 0;
      v50 = 0;
LABEL_41:
      v51 = 0x277D75000;
LABEL_69:
      v52 = v103;
LABEL_70:
      if ([(BTSFitTestController *)self isDebugModeEnabled])
      {
        v88 = *(v51 + 3352);
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = __41__BTSFitTestController_sealValueChanged___block_invoke_206;
        v110[3] = &unk_2796ADAB0;
        v110[4] = self;
        v111 = v37;
        v112 = v40;
        v113 = v13;
        v114 = v32;
        v115 = v16;
        v116 = v31;
        [v88 animateWithDuration:v110 animations:0.5];
      }

      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFitTestValue:6 value:v13];
      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFitTestValue:7 value:v16];
      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFitTestValue:1 value:v32];
      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFitTestValue:2 value:v31];
      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFitTestValue:5 value:[(BluetoothDevice *)self->currentDevice productId]];
      if (v49 || v50)
      {
        v89 = v102 || v104;
      }

      else
      {
        v89 = 2;
      }

      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFitTestValue:9 value:v89];
      date = [MEMORY[0x277CBEAA8] date];
      endFitTestTimestamp = self->_endFitTestTimestamp;
      self->_endFitTestTimestamp = date;

      deviceAnalytics = self->_deviceAnalytics;
      [(NSDate *)self->_endFitTestTimestamp timeIntervalSinceDate:self->_startFitTestTimestamp];
      [(HPSDeviceAnalytics *)deviceAnalytics updateFitTestValue:8 value:v93];
      [(HPSDeviceAnalytics *)self->_deviceAnalytics submitFitTestAnalytics];

      goto LABEL_76;
    }

    v53 = v6;
    if (v13 >= v37 || v16 >= v37)
    {
      if (v13 >= v37 && v16 < v37)
      {
        v80 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v81 = [v80 localizedStringForKey:@"FIT_TEST_LEFT_GOOD_RIGHT_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
        [headerView setDetailText:v81];

        if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
        {
          v82 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v83 = [v82 localizedStringForKey:@"FIT_TEST_LEFT_GOOD_RIGHT_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];
          [headerView setDetailText:v83];
        }

        v51 = 0x277D75000uLL;
        if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
        {
          v84 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v85 = [v84 localizedStringForKey:@"FIT_TEST_LEFT_GOOD_RIGHT_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];
          [headerView setDetailText:v85];
        }

        if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
        {
          v86 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v87 = [v86 localizedStringForKey:@"FIT_TEST_LEFT_GOOD_RIGHT_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];
          [headerView setDetailText:v87];
        }

        v104 = 0;
        v50 = 0;
        v49 = v16 < v37;
        goto LABEL_69;
      }

      if (v16 < v37 || v13 >= v37)
      {
        v71 = sharedBluetoothSettingsLogComponent(v62);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          *v122 = v13 >= v37;
          *&v122[4] = 1024;
          *&v122[6] = v13 < v37;
          v123 = 1024;
          v124 = v16 >= v37;
          v125 = 1024;
          v126 = v16 < v37;
          _os_log_impl(&dword_251143000, v71, OS_LOG_TYPE_DEFAULT, "Fit Test: leftSealGood: %d, leftSealPoor: %d, rightSealGood: %d, rightSealPoor: %d", buf, 0x1Au);
        }

        v49 = v16 < v37;
        v50 = v13 < v37;
        goto LABEL_41;
      }

      v94 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v95 = [v94 localizedStringForKey:@"FIT_TEST_LEFT_POOR_RIGHT_GOOD_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
      [headerView setDetailText:v95];

      if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
      {
        v96 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v97 = [v96 localizedStringForKey:@"FIT_TEST_LEFT_POOR_RIGHT_GOOD_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];
        [headerView setDetailText:v97];
      }

      v51 = 0x277D75000;
      if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
      {
        v98 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v99 = [v98 localizedStringForKey:@"FIT_TEST_LEFT_POOR_RIGHT_GOOD_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];
        [headerView setDetailText:v99];
      }

      if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
      {
        v100 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v101 = [v100 localizedStringForKey:@"FIT_TEST_LEFT_POOR_RIGHT_GOOD_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];
        [headerView setDetailText:v101];
      }

      v102 = 0;
      v49 = 0;
    }

    else
    {
      v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v73 = [v72 localizedStringForKey:@"FIT_TEST_BOTH_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
      [headerView setDetailText:v73];

      if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
      {
        v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v75 = [v74 localizedStringForKey:@"FIT_TEST_BOTH_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];
        [headerView setDetailText:v75];
      }

      v51 = 0x277D75000;
      if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
      {
        v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v77 = [v76 localizedStringForKey:@"FIT_TEST_BOTH_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];
        [headerView setDetailText:v77];
      }

      if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
      {
        v78 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v79 = [v78 localizedStringForKey:@"FIT_TEST_BOTH_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];
        [headerView setDetailText:v79];
      }

      v49 = v16 < v37;
    }

    v50 = v13 < v37;
    goto LABEL_69;
  }

  v53 = sharedBluetoothSettingsLogComponent(changedCopy);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v53, OS_LOG_TYPE_DEFAULT, "Fit Test: Discard results since test is not active", buf, 2u);
  }

LABEL_76:
}

void __41__BTSFitTestController_sealValueChanged___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"left.circle.fill"];
  v3 = [MEMORY[0x277D75348] systemYellowColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  [*(*(a1 + 32) + 1088) setImage:v4];

  v5 = [MEMORY[0x277D75348] systemYellowColor];
  [*(*(a1 + 32) + 1112) setTextColor:v5];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"FIT_TEST_POOR_RESULT" value:&stru_286339F58 table:@"DeviceConfig"];
  [*(*(a1 + 32) + 1112) setText:v6];
}

void __41__BTSFitTestController_sealValueChanged___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"left.circle.fill"];
  v3 = [MEMORY[0x277D75348] systemGreenColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  [*(*(a1 + 32) + 1088) setImage:v4];

  v5 = [MEMORY[0x277D75348] systemGreenColor];
  [*(*(a1 + 32) + 1112) setTextColor:v5];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"FIT_TEST_GOOD_RESULT" value:&stru_286339F58 table:@"DeviceConfig"];
  [*(*(a1 + 32) + 1112) setText:v6];
}

void __41__BTSFitTestController_sealValueChanged___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"right.circle.fill"];
  v3 = [MEMORY[0x277D75348] systemYellowColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  [*(*(a1 + 32) + 1104) setImage:v4];

  v5 = [MEMORY[0x277D75348] systemYellowColor];
  [*(*(a1 + 32) + 1120) setTextColor:v5];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"FIT_TEST_POOR_RESULT" value:&stru_286339F58 table:@"DeviceConfig"];
  [*(*(a1 + 32) + 1120) setText:v6];
}

void __41__BTSFitTestController_sealValueChanged___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"right.circle.fill"];
  v3 = [MEMORY[0x277D75348] systemGreenColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  [*(*(a1 + 32) + 1104) setImage:v4];

  v5 = [MEMORY[0x277D75348] systemGreenColor];
  [*(*(a1 + 32) + 1120) setTextColor:v5];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"FIT_TEST_GOOD_RESULT" value:&stru_286339F58 table:@"DeviceConfig"];
  [*(*(a1 + 32) + 1120) setText:v6];
}

void __41__BTSFitTestController_sealValueChanged___block_invoke_206(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1000) buttonTray];
  [v2 addButton:*(*(a1 + 32) + 1016)];

  v3 = [MEMORY[0x277D75348] systemGreenColor];
  [*(*(a1 + 32) + 1136) setTextColor:v3];

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Target Seal : %.2f  Confidence : %.2f\nLeft Seal : %.2f  Confidence : %.2f\nRight Seal : %.2f  Confidence : %.2f", *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60)];
  [*(*(a1 + 32) + 1136) setText:v4];
}

- (void)fitTestStopped
{
  self->_testActive = 0;
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__BTSFitTestController_fitTestStopped__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(v3, block);

  [(OBTrayButton *)self->_playButton hidesBusyIndicator];
  headerView = [(OBWelcomeController *)self->_fitTestController headerView];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FIT_TEST_INIT_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
  [headerView setTitle:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];

  if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];

    v8 = v10;
  }

  if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];

    v8 = v12;
  }

  if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];

    v8 = v14;
  }

  [headerView setDetailText:v8];
}

uint64_t __38__BTSFitTestController_fitTestStopped__block_invoke(uint64_t a1)
{
  [*(a1 + 32) resetVolume];
  v2 = *(a1 + 32);

  return [v2 cleanupAudio];
}

- (void)deviceDisconnectedHandler:(id)handler
{
  object = [handler object];
  address = [object address];
  address2 = [(BluetoothDevice *)self->currentDevice address];

  if (address == address2)
  {
    [(BTSFitTestController *)self dismissFitTest];
  }
}

- (void)powerChangedHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  enabled = [mEMORY[0x277CF3248] enabled];

  v8 = sharedBluetoothSettingsLogComponent(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    v10 = name;
    v11 = "off";
    if (enabled)
    {
      v11 = "on";
    }

    v12 = 138412546;
    v13 = name;
    v14 = 2080;
    v15 = v11;
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Fit Test: Received %@ with power state %s", &v12, 0x16u);
  }

  [(BTSFitTestController *)self dismissFitTest];
}

- (void)handleCallIsActiveDidChangeNotification:(id)notification
{
  callActive = self->_callActive;
  isCallActive = [(BTSFitTestController *)self isCallActive];
  isCallActive2 = [(BTSFitTestController *)self isCallActive];
  self->_callActive = isCallActive2;
  v7 = sharedBluetoothSettingsLogComponent(isCallActive2);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (callActive == isCallActive)
  {
    if (v8)
    {
      v11 = 0;
      v9 = "Fit Test: No change needed based on call status change";
      v10 = &v11;
LABEL_6:
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }
  }

  else if (v8)
  {
    *buf = 0;
    v9 = "Fit Test: Update UI since call status has changed";
    v10 = buf;
    goto LABEL_6;
  }
}

- (void)handleAudioSessionInterruption:(id)interruption
{
  v11 = *MEMORY[0x277D85DE8];
  userInfo = [interruption userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277CB8080]];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue == 1)
  {
    v8 = sharedBluetoothSettingsLogComponent(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      testActive = self->_testActive;
      v10[0] = 67109120;
      v10[1] = testActive;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Fit Test: Audio session interrupted. Reset Fit Test (Active: %d)", v10, 8u);
    }

    if (self->_testActive)
    {
      [(BTSFitTestController *)self fitTestStopped];
    }
  }
}

- (void)handleMediaServerConnectionDied:(id)died
{
  v4 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Fit Test: Audio session server connection died", v6, 2u);
  }

  avSystemController = self->_avSystemController;
  self->_avSystemController = 0;
}

- (void)updateFitTestActiveState
{
  v3 = 0x300000003;
  [(BluetoothDevice *)self->currentDevice inEarStatusPrimary:&v3 + 4 secondary:&v3];
  self->_budsInEar = v3 == 0;
  self->_callActive = [(BTSFitTestController *)self isCallActive];
}

- (void)resetVolume
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_volumeModified && self->_initialVolume <= 0.5)
  {
    v3 = sharedBluetoothSettingsLogComponent(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      initialVolume = self->_initialVolume;
      v7 = 134217984;
      v8 = initialVolume;
      _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Fit Test: Cleanup audio. Set audioVideo volume to: %f", &v7, 0xCu);
    }

    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    *&v6 = self->_initialVolume;
    [mEMORY[0x277D26E58] setVolumeTo:@"Audio/Video" forCategory:v6];

    self->_volumeModified = 0;
  }
}

- (void)cleanupAudio
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (BOOL)isCallActive
{
  v8 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  v3 = [mEMORY[0x277D26E58] attributeForKey:*MEMORY[0x277D26B48]];

  bOOLValue = [v3 BOOLValue];
  v5 = sharedBluetoothSettingsLogComponent(bOOLValue);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = bOOLValue;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Fit Test: Call is active : %d", v7, 8u);
  }

  return bOOLValue;
}

- (BOOL)isDebugModeEnabled
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  if (CFPreferencesGetAppBooleanValue(@"FitTestOptions", @"com.apple.BTServer", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (float)getSealThreshold
{
  v13 = *MEMORY[0x277D85DE8];
  productId = [(BluetoothDevice *)self->currentDevice productId];
  v4 = productId;
  v5 = productId == 8210 || productId == 8239;
  v6 = 4.3;
  if (!v5)
  {
    v6 = -5.0;
  }

  if (productId == 8221)
  {
    v7 = 5.0;
  }

  else
  {
    v7 = v6;
  }

  if (productId == 8212)
  {
    v7 = 0.0;
    if (self->_completionHandler)
    {
      v8 = sharedBluetoothSettingsLogComponent(productId);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Fit Test: getSealThreshold Hearing Test Threshold 6.0", &v11, 2u);
      }
    }
  }

  if (v4 == 8228)
  {
    v7 = 0.0;
  }

  v9 = sharedBluetoothSettingsLogComponent(productId);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v7;
    _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Fit Test: Target Seal Threshold: %.2f", &v11, 0xCu);
  }

  return v7;
}

- (float)getConfidenceThreshold
{
  v11 = *MEMORY[0x277D85DE8];
  productId = [(BluetoothDevice *)self->currentDevice productId];
  v3 = productId == 8210 || productId == 8239;
  v4 = 5.1;
  if (!v3)
  {
    v4 = 10.0;
  }

  if (productId == 8221)
  {
    v4 = 1.0;
  }

  if (productId == 8212 || productId == 8228)
  {
    v6 = -3.0;
  }

  else
  {
    v6 = v4;
  }

  v7 = sharedBluetoothSettingsLogComponent(productId);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = v6;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Fit Test: Target Confidence Threshold: %.2f", &v9, 0xCu);
  }

  return v6;
}

- (id)getImageFileName:(unsigned int)name forSide:(BOOL)side
{
  if (name > 118)
  {
    if (name > 169)
    {
      if (name > 203)
      {
        if (name == 204)
        {
          v6 = "light-CL12";
          v7 = "dark-CL12";
          goto LABEL_36;
        }

        if (name == 221)
        {
          v6 = "light-CL13";
          v7 = "dark-CL13";
          goto LABEL_36;
        }
      }

      else
      {
        if (name == 170)
        {
          v6 = "light-CL10";
          v7 = "dark-CL10";
          goto LABEL_36;
        }

        if (name == 187)
        {
          v6 = "light-CL11";
          v7 = "dark-CL11";
          goto LABEL_36;
        }
      }

      goto LABEL_26;
    }

    if (name == 119)
    {
      v6 = "light-CL7";
      goto LABEL_33;
    }

    if (name != 136)
    {
      if (name != 153)
      {
        goto LABEL_26;
      }

      v6 = "light-CL9";
LABEL_22:
      v7 = "dark-CL9";
      goto LABEL_36;
    }

    v6 = "light-CL8";
  }

  else
  {
    if (name <= 50)
    {
      if (!name)
      {
        v6 = "light-CL0";
        v7 = "dark-CL0";
        goto LABEL_36;
      }

      if (name == 34)
      {
        v6 = "light-CL2";
        v7 = "dark-CL2";
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (name <= 84)
    {
      if (name == 51)
      {
        v6 = "light-CL3";
        v7 = "dark-CL3";
        goto LABEL_36;
      }

      if (name == 68)
      {
        v6 = "light-CL4";
LABEL_33:
        v7 = "dark-CL7";
        goto LABEL_36;
      }

LABEL_26:
      v6 = "light-CL1";
      v7 = "dark-CL1";
      goto LABEL_36;
    }

    if (name != 85)
    {
      if (name != 102)
      {
        goto LABEL_26;
      }

      v6 = "light-CL6";
      goto LABEL_22;
    }

    v6 = "light-CL5";
  }

  v7 = "dark-CL8";
LABEL_36:
  if (self->_darkMode)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = "Left";
  if (side)
  {
    v9 = "Right";
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-FitTest-%s", v9, v8, v4];

  return v10;
}

- (void)setCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sharedBluetoothSettingsLogComponent(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Fit Test: Setting Completion Handler", v8, 2u);
  }

  v6 = _Block_copy(handlerCopy);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFitTestValue:4 value:1];
}

- (void)callCompletionHandler
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Fit Test: Call Completion Handler", v4, 2u);
  }

  (*(self->_completionHandler + 2))();
}

- (void)initWithDevice:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __36__BTSFitTestController_startFitTest__block_invoke_138_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __36__BTSFitTestController_startFitTest__block_invoke_138_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end