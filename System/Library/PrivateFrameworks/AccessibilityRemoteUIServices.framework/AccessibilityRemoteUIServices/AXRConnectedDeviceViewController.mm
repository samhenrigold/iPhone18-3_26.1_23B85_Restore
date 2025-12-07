@interface AXRConnectedDeviceViewController
- (AXRConnectedDeviceViewController)initWithRemoteDevice:(id)device;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_dismissCurrentPresentedViewController;
- (void)_moreButtonPressed;
- (void)_performDeviceRemoteAction:(id)action;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)remoteDeviceDidUnexpectedlyDisconnect:(id)disconnect;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)voiceOverTouchPadView:(id)view didReceiveCommand:(id)command;
@end

@implementation AXRConnectedDeviceViewController

- (AXRConnectedDeviceViewController)initWithRemoteDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = AXRConnectedDeviceViewController;
  v5 = [(AXRConnectedDeviceViewController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(AXRConnectedDeviceViewController *)v5 setActiveDevice:deviceCopy];
    activeDevice = [(AXRConnectedDeviceViewController *)v6 activeDevice];
    [activeDevice setConnectionDelegate:v6];
  }

  return v6;
}

- (void)dealloc
{
  activeDevice = [(AXRConnectedDeviceViewController *)self activeDevice];
  [activeDevice disconnect];

  [(AXRConnectedDeviceViewController *)self setActiveDevice:0];
  eventProcessor = [(AXRConnectedDeviceViewController *)self eventProcessor];
  [eventProcessor endHandlingHIDEventsForReason:@"AXRemoteDeviceConnection"];

  eventProcessor2 = [(AXRConnectedDeviceViewController *)self eventProcessor];
  [eventProcessor2 cleanup];

  v6.receiver = self;
  v6.super_class = AXRConnectedDeviceViewController;
  [(AXRConnectedDeviceViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v97[3] = *MEMORY[0x277D85DE8];
  v94.receiver = self;
  v94.super_class = AXRConnectedDeviceViewController;
  [(AXRConnectedDeviceViewController *)&v94 viewDidLoad];
  activeDevice = [(AXRConnectedDeviceViewController *)self activeDevice];
  displayName = [activeDevice displayName];
  [(AXRConnectedDeviceViewController *)self setTitle:displayName];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(AXRConnectedDeviceViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v7 = objc_alloc_init(MEMORY[0x277D752F0]);
  [(AXRConnectedDeviceViewController *)self setCollectionViewFlowLayout:v7];

  v8 = [AXRActionsCollectionView alloc];
  view2 = [(AXRConnectedDeviceViewController *)self view];
  [view2 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  collectionViewFlowLayout = [(AXRConnectedDeviceViewController *)self collectionViewFlowLayout];
  v19 = [(AXRActionsCollectionView *)v8 initWithFrame:collectionViewFlowLayout collectionViewLayout:v11, v13, v15, v17];
  [(AXRConnectedDeviceViewController *)self setActionsCollectionView:v19];

  actionsCollectionView = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  [actionsCollectionView setDelegate:self];

  actionsCollectionView2 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  [actionsCollectionView2 setDataSource:self];

  actionsCollectionView3 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  [actionsCollectionView3 setBounces:0];

  actionsCollectionView4 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  [actionsCollectionView4 setScrollEnabled:0];

  actionsCollectionView5 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  [actionsCollectionView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  actionsCollectionView6 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  [actionsCollectionView6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CellReuseIdentifier"];

  view3 = [(AXRConnectedDeviceViewController *)self view];
  actionsCollectionView7 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  [view3 addSubview:actionsCollectionView7];

  v73 = MEMORY[0x277CCAAD0];
  actionsCollectionView8 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  leadingAnchor = [actionsCollectionView8 leadingAnchor];
  view4 = [(AXRConnectedDeviceViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v81 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v97[0] = v81;
  actionsCollectionView9 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  trailingAnchor = [actionsCollectionView9 trailingAnchor];
  view5 = [(AXRConnectedDeviceViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v97[1] = v29;
  actionsCollectionView10 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  bottomAnchor = [actionsCollectionView10 bottomAnchor];
  view6 = [(AXRConnectedDeviceViewController *)self view];
  safeAreaLayoutGuide = [view6 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v97[2] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:3];
  [v73 activateConstraints:v36];

  activeDevice2 = [(AXRConnectedDeviceViewController *)self activeDevice];
  if ([activeDevice2 contextType] == 1)
  {
    v38 = _AXSVoiceOverTouchEnabled() == 0;

    if (!v38)
    {
      v39 = [AXRVoiceOverTouchPadView alloc];
      view7 = [(AXRConnectedDeviceViewController *)self view];
      [view7 frame];
      actionsCollectionView13 = [(AXRVoiceOverTouchPadView *)v39 initWithFrame:?];

      [(AXRVoiceOverTouchPadView *)actionsCollectionView13 setDelegate:self];
      secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      [(AXRVoiceOverTouchPadView *)actionsCollectionView13 setBackgroundColor:secondarySystemBackgroundColor];

      [(AXRVoiceOverTouchPadView *)actionsCollectionView13 _setContinuousCornerRadius:42.0];
      [(AXRVoiceOverTouchPadView *)actionsCollectionView13 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(AXRVoiceOverTouchPadView *)actionsCollectionView13 setAutoresizingMask:18];
      view8 = [(AXRConnectedDeviceViewController *)self view];
      actionsCollectionView11 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
      [view8 insertSubview:actionsCollectionView13 belowSubview:actionsCollectionView11];

      v69 = MEMORY[0x277CCAAD0];
      leadingAnchor3 = [(AXRVoiceOverTouchPadView *)actionsCollectionView13 leadingAnchor];
      view9 = [(AXRConnectedDeviceViewController *)self view];
      safeAreaLayoutGuide2 = [view9 safeAreaLayoutGuide];
      leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
      v46 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:8.0];
      v96[0] = v46;
      trailingAnchor3 = [(AXRVoiceOverTouchPadView *)actionsCollectionView13 trailingAnchor];
      view10 = [(AXRConnectedDeviceViewController *)self view];
      safeAreaLayoutGuide3 = [view10 safeAreaLayoutGuide];
      trailingAnchor4 = [safeAreaLayoutGuide3 trailingAnchor];
      v78 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-8.0];
      v96[1] = v78;
      topAnchor = [(AXRVoiceOverTouchPadView *)actionsCollectionView13 topAnchor];
      view11 = [(AXRConnectedDeviceViewController *)self view];
      safeAreaLayoutGuide4 = [view11 safeAreaLayoutGuide];
      topAnchor2 = [safeAreaLayoutGuide4 topAnchor];
      v70 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
      v96[2] = v70;
      bottomAnchor3 = [(AXRVoiceOverTouchPadView *)actionsCollectionView13 bottomAnchor];
      actionsCollectionView12 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
      topAnchor3 = [actionsCollectionView12 topAnchor];
      v51 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:-12.0];
      v96[3] = v51;
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:4];
      [v69 activateConstraints:v52];

      contextType = 0;
      v54 = 3;
      goto LABEL_6;
    }
  }

  else
  {
  }

  activeDevice3 = [(AXRConnectedDeviceViewController *)self activeDevice];
  contextType = [activeDevice3 contextType];

  v56 = MEMORY[0x277CCAAD0];
  actionsCollectionView13 = [(AXRConnectedDeviceViewController *)self actionsCollectionView];
  leadingAnchor3 = [(AXRVoiceOverTouchPadView *)actionsCollectionView13 topAnchor];
  view9 = [(AXRConnectedDeviceViewController *)self view];
  safeAreaLayoutGuide2 = [view9 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide2 topAnchor];
  v46 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v95 = v46;
  trailingAnchor3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v95 count:1];
  [v56 activateConstraints:trailingAnchor3];
  v54 = 8;
LABEL_6:

  activeDevice4 = [(AXRConnectedDeviceViewController *)self activeDevice];
  v58 = [activeDevice4 remoteActionsForPreferredContextType:contextType];

  if (v54 > [v58 count])
  {
    v54 = [v58 count];
  }

  v59 = [v58 subarrayWithRange:{0, v54}];
  remoteActionsToShow = self->_remoteActionsToShow;
  self->_remoteActionsToShow = v59;

  v61 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v62 = dispatch_queue_attr_make_with_qos_class(v61, QOS_CLASS_USER_INTERACTIVE, 0);

  v63 = dispatch_queue_create("com.apple.AXRemoteUIServices.EventSenderQueue", v62);
  eventSenderQueue = self->_eventSenderQueue;
  self->_eventSenderQueue = v63;

  v65 = [objc_alloc(MEMORY[0x277CE7D68]) initWithHIDTapIdentifier:@"com.apple.AXRemoteUIServices.EventProcessor" HIDEventTapPriority:70 systemEventTapIdentifier:0 systemEventTapPriority:30];
  [(AXRConnectedDeviceViewController *)self setEventProcessor:v65];

  eventProcessor = [(AXRConnectedDeviceViewController *)self eventProcessor];
  [eventProcessor setHIDEventFilterMask:40];

  objc_initWeak(&location, self);
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __47__AXRConnectedDeviceViewController_viewDidLoad__block_invoke;
  v91[3] = &unk_278BED628;
  objc_copyWeak(&v92, &location);
  eventProcessor2 = [(AXRConnectedDeviceViewController *)self eventProcessor];
  [eventProcessor2 setHIDEventHandler:v91];

  eventProcessor3 = [(AXRConnectedDeviceViewController *)self eventProcessor];
  [eventProcessor3 beginHandlingHIDEventsForReason:@"AXRemoteDeviceConnection"];

  objc_destroyWeak(&v92);
  objc_destroyWeak(&location);
}

uint64_t __47__AXRConnectedDeviceViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 senderID] != 0x8000000817319372)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = WeakRetained;
    if (!WeakRetained)
    {
      goto LABEL_5;
    }

    v7 = [WeakRetained presentedViewController];

    if (v7)
    {
      goto LABEL_5;
    }

    if ([v3 type] == 5000 && (objc_msgSend(v3, "accessibilityData"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "page"), v9, v10 == 2))
    {
      v11 = [v3 accessibilityData];
      v12 = [v11 usage];

      if (v12 == 2)
      {
        v25 = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = __47__AXRConnectedDeviceViewController_viewDidLoad__block_invoke_2;
        v28 = &unk_278BED5B0;
        v29 = v6;
        AXPerformBlockAsynchronouslyOnMainThread();
LABEL_14:
        v4 = 1;
        goto LABEL_6;
      }

      v14 = [v6 activeDevice];
      v15 = [v14 customizedRemoteActionForHandGestureEventUsage:v12];

      if (v15 && ([v15 isEqualToString:*MEMORY[0x277CE74E8]] & 1) == 0)
      {
        v16 = v6[124];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __47__AXRConnectedDeviceViewController_viewDidLoad__block_invoke_3;
        v20[3] = &unk_278BED5D8;
        v21 = v15;
        v22 = v6;
        v24 = v12;
        v23 = v3;
        v17 = v15;
        dispatch_async(v16, v20);

        goto LABEL_14;
      }
    }

    else if ([v3 type] == 1100)
    {
      v13 = v6[124];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__AXRConnectedDeviceViewController_viewDidLoad__block_invoke_4;
      block[3] = &unk_278BED600;
      block[4] = v6;
      v19 = v3;
      dispatch_async(v13, block);

      goto LABEL_14;
    }

LABEL_5:
    v4 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

void __47__AXRConnectedDeviceViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  v29[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) activeDevice];
  [v2 deviceType];
  v3 = AXRLocalizedStringForRemoteActionWithDeviceType();

  v4 = AXLocalizedStringForHandGestureEventUsage();
  v5 = [MEMORY[0x277CE7D38] sharedInstance];
  v20 = v3;
  [v5 presentBannerWithTitle:v3 message:v4 duration:1.0];

  v19 = [*(a1 + 40) activeDevice];
  v28[0] = *MEMORY[0x277CE74F8];
  v6 = *(a1 + 32);
  v26 = *MEMORY[0x277CE74E0];
  v27 = v6;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v29[0] = v21;
  v28[1] = *MEMORY[0x277CE7488];
  v7 = *MEMORY[0x277CE7490];
  v24[0] = *MEMORY[0x277CE7498];
  v24[1] = v7;
  v25[0] = v3;
  v25[1] = v4;
  v24[2] = *MEMORY[0x277CE7480];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
  v25[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v29[1] = v9;
  v28[2] = *MEMORY[0x277CE75B0];
  v22[0] = *MEMORY[0x277CE75A8];
  v10 = [MEMORY[0x277CCABB0] numberWithLong:*(a1 + 56)];
  v23[0] = v10;
  v22[1] = *MEMORY[0x277CE75C0];
  v11 = MEMORY[0x277CCABB0];
  v12 = [*(a1 + 48) accessibilityData];
  [v12 eventValue1];
  v13 = [v11 numberWithFloat:?];
  v23[1] = v13;
  v22[2] = *MEMORY[0x277CE75B8];
  v14 = MEMORY[0x277CCABB0];
  v15 = [*(a1 + 48) accessibilityData];
  [v15 eventValue2];
  v16 = [v14 numberWithFloat:?];
  v23[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v29[2] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  [v19 sendPayload:v18 withEventID:*MEMORY[0x277CE7478]];
}

void __47__AXRConnectedDeviceViewController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeDevice];
  v8 = *MEMORY[0x277CE75D0];
  v6 = *MEMORY[0x277CE75C8];
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 40), "scrollAmount")}];
  v7 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 sendPayload:v5 withEventID:*MEMORY[0x277CE7478]];
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = AXRConnectedDeviceViewController;
  [(AXRConnectedDeviceViewController *)&v11 viewWillAppear:appear];
  view = [(AXRConnectedDeviceViewController *)self view];
  [view frame];
  v6 = v5 + -80.0;

  collectionViewFlowLayout = [(AXRConnectedDeviceViewController *)self collectionViewFlowLayout];
  [collectionViewFlowLayout setSectionInset:{16.0, 16.0, 16.0, 16.0}];

  collectionViewFlowLayout2 = [(AXRConnectedDeviceViewController *)self collectionViewFlowLayout];
  [collectionViewFlowLayout2 setMinimumInteritemSpacing:16.0];

  collectionViewFlowLayout3 = [(AXRConnectedDeviceViewController *)self collectionViewFlowLayout];
  [collectionViewFlowLayout3 setItemSize:{v6 * 0.25, v6 * 0.25}];

  collectionViewFlowLayout4 = [(AXRConnectedDeviceViewController *)self collectionViewFlowLayout];
  [collectionViewFlowLayout4 invalidateLayout];
}

- (void)_moreButtonPressed
{
  v3 = [AXRDeviceActionsViewController alloc];
  activeDevice = [(AXRConnectedDeviceViewController *)self activeDevice];
  v8 = [(AXRDeviceActionsViewController *)v3 initWithRemoteDevice:activeDevice delegate:self];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:self action:sel__dismissCurrentPresentedViewController];
  navigationItem = [(AXRDeviceActionsViewController *)v8 navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [(AXRConnectedDeviceViewController *)self presentViewController:v7 animated:1 completion:&__block_literal_global_0];
}

- (void)_dismissCurrentPresentedViewController
{
  presentedViewController = [(AXRConnectedDeviceViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_performDeviceRemoteAction:(id)action
{
  actionCopy = action;
  activeDevice = [(AXRConnectedDeviceViewController *)self activeDevice];
  eventSenderQueue = self->_eventSenderQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__AXRConnectedDeviceViewController__performDeviceRemoteAction___block_invoke;
  v9[3] = &unk_278BED600;
  v10 = activeDevice;
  v11 = actionCopy;
  v7 = actionCopy;
  v8 = activeDevice;
  dispatch_async(eventSenderQueue, v9);
}

void __63__AXRConnectedDeviceViewController__performDeviceRemoteAction___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CE74F8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v5 = *MEMORY[0x277CE74E0];
  v6 = v1;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 sendPayload:v4 withEventID:*MEMORY[0x277CE7478]];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  remoteActionsToShow = [(AXRConnectedDeviceViewController *)self remoteActionsToShow];
  v7 = [remoteActionsToShow count];

  if (item == v7)
  {
    [(AXRConnectedDeviceViewController *)self _moreButtonPressed];
  }

  else
  {
    remoteActionsToShow2 = [(AXRConnectedDeviceViewController *)self remoteActionsToShow];
    v9 = [remoteActionsToShow2 objectAtIndex:{objc_msgSend(pathCopy, "item")}];

    [(AXRConnectedDeviceViewController *)self _performDeviceRemoteAction:v9];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(AXRConnectedDeviceViewController *)self remoteActionsToShow:view];
  v5 = [v4 count];

  return v5 + 1;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"CellReuseIdentifier" forIndexPath:pathCopy];
  item = [pathCopy item];
  remoteActionsToShow = [(AXRConnectedDeviceViewController *)self remoteActionsToShow];
  v10 = [remoteActionsToShow count];

  if (item == v10)
  {
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis.circle"];
    v12 = AXRLocalizedStringForKey();
    [v7 setImage:v11 title:v12];
  }

  else
  {
    remoteActionsToShow2 = [(AXRConnectedDeviceViewController *)self remoteActionsToShow];
    v11 = [remoteActionsToShow2 objectAtIndex:{objc_msgSend(pathCopy, "item")}];

    activeDevice = [(AXRConnectedDeviceViewController *)self activeDevice];
    v12 = AXRUIImageForRemoteActionWithDeviceType(v11, [activeDevice deviceType]);

    activeDevice2 = [(AXRConnectedDeviceViewController *)self activeDevice];
    [activeDevice2 deviceType];
    v16 = AXRLocalizedStringForRemoteActionWithDeviceType();
    [v7 setImage:v12 title:v16];
  }

  return v7;
}

- (void)remoteDeviceDidUnexpectedlyDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__AXRConnectedDeviceViewController_remoteDeviceDidUnexpectedlyDisconnect___block_invoke;
  v6[3] = &unk_278BED5B0;
  v7 = disconnectCopy;
  v5 = disconnectCopy;
  [(AXRConnectedDeviceViewController *)self dismissViewControllerAnimated:1 completion:v6];
}

void __74__AXRConnectedDeviceViewController_remoteDeviceDidUnexpectedlyDisconnect___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CE7D38] sharedInstance];
  v2 = [*(a1 + 32) displayName];
  v3 = AXRLocalizedStringForKey();
  [v4 presentBannerWithTitle:v2 message:v3 duration:3.0];
}

- (void)voiceOverTouchPadView:(id)view didReceiveCommand:(id)command
{
  commandCopy = command;
  eventSenderQueue = self->_eventSenderQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__AXRConnectedDeviceViewController_voiceOverTouchPadView_didReceiveCommand___block_invoke;
  v8[3] = &unk_278BED600;
  v8[4] = self;
  v9 = commandCopy;
  v7 = commandCopy;
  dispatch_async(eventSenderQueue, v8);
}

void __76__AXRConnectedDeviceViewController_voiceOverTouchPadView_didReceiveCommand___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeDevice];
  v8 = *MEMORY[0x277CE75E0];
  v3 = *(a1 + 40);
  v6 = *MEMORY[0x277CE75D8];
  v7 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 sendPayload:v5 withEventID:*MEMORY[0x277CE7478]];
}

@end