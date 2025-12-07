@interface BluetoothUIServiceBanner
+ (id)_bundleID;
- (BOOL)checkifVideoAssetExists;
- (BluetoothUIServiceBanner)initWithXPCObject:(id)object error:(id *)error;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (SBUISystemApertureAccessoryView)leadingView;
- (SBUISystemApertureAccessoryView)minimalView;
- (SBUISystemApertureAccessoryView)trailingView;
- (UIEdgeInsets)bannerContentOutsets;
- (id)_systemApertureLeadingAccessoryView;
- (id)_systemApertureTrailingAccessoryView;
- (id)createInUseConnectButton;
- (id)createMuteUnmuteButton:(id)button;
- (id)createReverseButton;
- (id)getAppIcon:(id)icon;
- (id)removedAccessoryColorCode:(id)code;
- (id)userInfoForPosting;
- (int64_t)preferredLayoutMode;
- (void)_activateConstraintsForBatteryLevelIndicator;
- (void)_checkValidBatteryRange;
- (void)_createBatteryView;
- (void)_createConstraintsForInUseBannerIfNeeded;
- (void)_createConstraintsForReverseBannerIfNeeded;
- (void)_createConstraintsIfNeeded;
- (void)_createInUseBannerTextLabel:(id)label bottomLabel:(id)bottomLabel;
- (void)_createccBottomViewLabel:(id)label;
- (void)_createccBottomViewLabel:(id)label labelString:(id)string;
- (void)_createccTopViewLabel:(id)label labelString:(id)string;
- (void)_fillBatteryPercentage;
- (void)_showHIDConnectedBanner;
- (void)_showInUseBanner;
- (void)_showMuteBanner;
- (void)_stopPlayback;
- (void)activateWithActionHandler:(id)handler;
- (void)bannerDidDismiss:(id)dismiss;
- (void)createCustomAVPlayerLayerView:(id)view WithCustomIconName:(id)name;
- (void)createCustomStaticImageView:(id)view WithCustomIconName:(id)name;
- (void)createCustomStaticImageView:(id)view withIcon:(id)icon;
- (void)createCustomView:(id)view WithCustomIconName:(id)name;
- (void)createCustomView:(id)view WithCustomIconPath:(id)path;
- (void)createCustomView:(id)view WithImage:(id)image;
- (void)createCustomView:(id)view WithImage:(id)image WithMode:(int64_t)mode;
- (void)createCustomViewForNativeReverseSymbol:(id)symbol;
- (void)createCustomViewFromUILabel:(id)label WithStr:(id)str;
- (void)createGenericHeadphoneView:(id)view;
- (void)createGenericSpeakerView:(id)view;
- (void)dismissBanner;
- (void)handleTap:(id)tap;
- (void)invalidate;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setBannerTimer;
- (void)setCanRequestAlertingAssertion:(BOOL)assertion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation BluetoothUIServiceBanner

- (void)setCanRequestAlertingAssertion:(BOOL)assertion
{
  if (self->_canRequestAlertingAssertion != assertion)
  {
    self->_canRequestAlertingAssertion = assertion;
    if (assertion && (self->_isReverseRouteBanner || self->_isInUseBanner))
    {
      systemApertureElementContext = [(BluetoothUIServiceBanner *)self systemApertureElementContext];
      requestAlertingAssertion = [systemApertureElementContext requestAlertingAssertion];
      [requestAlertingAssertion setAutomaticallyInvalidatable:0];

      if (dword_10001EA10 <= 50 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
      {
        sub_10000D670(&self->_canRequestAlertingAssertion);
      }

      v6 = dispatch_time(0, 6000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100003B8C;
      block[3] = &unk_1000185C8;
      block[4] = self;
      dispatch_after(v6, &_dispatch_main_q, block);
    }
  }
}

- (id)_systemApertureLeadingAccessoryView
{
  if (SBUIIsSystemApertureEnabled())
  {
    leadingAccessoryView = self->_leadingAccessoryView;
  }

  else
  {
    leadingAccessoryView = 0;
  }

  return leadingAccessoryView;
}

- (id)_systemApertureTrailingAccessoryView
{
  if (SBUIIsSystemApertureEnabled())
  {
    trailingAccessoryView = self->_trailingAccessoryView;
  }

  else
  {
    trailingAccessoryView = 0;
  }

  return trailingAccessoryView;
}

- (id)userInfoForPosting
{
  v4 = kSBUIPresentableSystemApertureSupportingUserInfoKey;
  v5 = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (SBUISystemApertureAccessoryView)leadingView
{
  if (self->_isReverseRouteBanner || self->_isInUseBanner)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_leadingView;
  }

  return v3;
}

- (SBUISystemApertureAccessoryView)trailingView
{
  if (self->_isReverseRouteBanner || self->_isInUseBanner)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_trailingView;
  }

  return v3;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  if (self->_isReverseRouteBanner || self->_isInUseBanner)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_minimalAccessoryView;
  }

  return v3;
}

- (int64_t)preferredLayoutMode
{
  if (self->_isInvalidated)
  {
    return -1;
  }

  if (self->_isReverseRouteBanner)
  {
    return 4;
  }

  if (self->_isInUseBanner)
  {
    return 4;
  }

  return 3;
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  self->_activeLayoutMode = mode;
  if (mode == -1)
  {
    [(BluetoothUIServiceBanner *)self _stopPlayback];
    self->_bannerActive = 0;
    bannerTransaction = self->_bannerTransaction;
    self->_bannerTransaction = 0;

    actionHandler = self->_actionHandler;
    if (actionHandler)
    {
      v6 = objc_retainBlock(actionHandler);
      v7 = v6;
      if (v6)
      {
        (*(v6 + 2))(v6, 6, 0);
      }

      v8 = self->_actionHandler;
      self->_actionHandler = 0;
    }
  }
}

- (void)_showInUseBanner
{
  selfCopy = self;
  if (dword_10001EA10 <= 30)
  {
    if (dword_10001EA10 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10000D6B4(self, a2, v2);
    }
  }

  selfCopy->_isInUseBanner = 1;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:selfCopy->_ccText value:&stru_1000188D8 table:0];

  if ([(NSString *)selfCopy->_ccItemsText containsString:@"Mac"]|| [(NSString *)selfCopy->_ccItemsText containsString:@"iPad"]|| [(NSString *)selfCopy->_ccItemsText containsString:@"iPhone"])
  {
    GestaltProductTypeStringToDeviceClass();
    v6 = CUAddSuffixForDeviceClass();
  }

  else
  {
    v6 = @"IN_USE_BY_OTHER_DEVICE";
  }

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:v6 value:&stru_1000188D8 table:0];

  v9 = SBUIIsSystemApertureEnabled();
  if (v9)
  {
    [(BluetoothUIServiceBanner *)selfCopy _createInUseBannerTextLabel:v5 bottomLabel:v8];
    if ([(BluetoothUIServiceBanner *)selfCopy checkifVideoAssetExists])
    {
      selfCopy->_isFirstInstance = 1;
      [(BluetoothUIServiceBanner *)selfCopy createCustomAVPlayerLayerView:selfCopy->_leadingAccessoryView WithCustomIconName:selfCopy->_leadingAccessoryIconName];
    }

    else
    {
      [(BluetoothUIServiceBanner *)selfCopy createCustomStaticImageView:selfCopy->_leadingAccessoryView WithCustomIconName:selfCopy->_leadingAccessoryIconName];
    }

    if (SBUIIsSystemApertureEnabled())
    {
      createInUseConnectButton = [(BluetoothUIServiceBanner *)selfCopy createInUseConnectButton];
      [(UIView *)selfCopy->_trailingAccessoryView addSubview:createInUseConnectButton];
      [createInUseConnectButton setTranslatesAutoresizingMaskIntoConstraints:0];
      widthAnchor = [createInUseConnectButton widthAnchor];
      widthAnchor2 = [(UIView *)selfCopy->_trailingAccessoryView widthAnchor];
      v22 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      [v22 setActive:1];

      heightAnchor = [createInUseConnectButton heightAnchor];
      heightAnchor2 = [(UIView *)selfCopy->_trailingAccessoryView heightAnchor];
      v25 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      [v25 setActive:1];

      centerXAnchor = [createInUseConnectButton centerXAnchor];
      centerXAnchor2 = [(UIView *)selfCopy->_trailingAccessoryView centerXAnchor];
      v28 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v28 setActive:1];

      centerYAnchor = [createInUseConnectButton centerYAnchor];
      centerYAnchor2 = [(UIView *)selfCopy->_trailingAccessoryView centerYAnchor];
      v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [v31 setActive:1];
    }

    objc_storeStrong(&selfCopy->_leadingView, selfCopy->_leadingAccessoryView);
    objc_storeStrong(&selfCopy->_trailingView, selfCopy->_trailingAccessoryView);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004540;
    block[3] = &unk_1000185C8;
    block[4] = selfCopy;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    if (dword_10001EA10 <= 90)
    {
      if (dword_10001EA10 != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        sub_10000D6D0(v9, v10, v11);
      }
    }

    v12 = [[PLPillContentItem alloc] initWithText:v5 style:1];
    v13 = [[PLPillContentItem alloc] initWithText:v8 style:2];
    if (v12)
    {
      [(NSMutableArray *)selfCopy->_centerContentItems addObject:v12];
    }

    if (v13)
    {
      [(NSMutableArray *)selfCopy->_centerContentItems addObject:v13];
    }

    [(BluetoothUIServiceBanner *)selfCopy createCustomView:selfCopy->_leadingAccessoryView WithCustomIconName:selfCopy->_leadingAccessoryIconName];
    createInUseConnectButton2 = [(BluetoothUIServiceBanner *)selfCopy createInUseConnectButton];
    [createInUseConnectButton2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [[PLPillView alloc] initWithLeadingAccessoryView:selfCopy->_leadingAccessoryView trailingAccessoryView:createInUseConnectButton2];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&selfCopy->_pillView, v15);
    centerContentItems = selfCopy->_centerContentItems;
    if (centerContentItems)
    {
      [(PLPillView *)selfCopy->_pillView setCenterContentItems:?];
    }

    else if (dword_10001EA10 <= 90)
    {
      if (dword_10001EA10 != -1 || (v16 = _LogCategory_Initialize(), v16))
      {
        sub_10000D6EC(v16, v17, centerContentItems);
      }
    }
  }
}

- (void)_showMuteBanner
{
  selfCopy = self;
  if (dword_10001EA10 <= 50)
  {
    if (dword_10001EA10 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10000D708(self, a2, v2);
    }
  }

  objc_storeStrong(&selfCopy->_receivedMuteAction, selfCopy->_ccItemsText);
  if ([(NSString *)selfCopy->_ccItemsText isEqualToString:@"mute"])
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"MICROPHONE_OFF";
LABEL_8:
    v8 = [v4 localizedStringForKey:v6 value:&stru_1000188D8 table:0];
    goto LABEL_12;
  }

  v7 = [(NSString *)selfCopy->_ccItemsText isEqualToString:@"unmute"];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v7)
  {
    v6 = @"MICROPHONE_ON";
    goto LABEL_8;
  }

  v8 = &stru_1000188D8;
  v9 = [v4 localizedStringForKey:@"REJECTED_WITH_DEVICE_FORMAT" value:&stru_1000188D8 table:0];

  if (v9)
  {
    v8 = [NSString stringWithFormat:v9, selfCopy->_ccItemsText];
  }

  v5 = v9;
LABEL_12:
  ccItemsText = selfCopy->_ccItemsText;
  selfCopy->_ccItemsText = &v8->isa;

  if (SBUIIsSystemApertureEnabled())
  {
    v11 = selfCopy->_ccItemsText;
    v12 = v11;
    objc_storeStrong(&selfCopy->_ccItemsText, selfCopy->_ccText);
    objc_storeStrong(&selfCopy->_ccText, v11);
    v13 = +[UIColor systemWhiteColor];
    [(BluetoothUIServiceBanner *)selfCopy _createccBottomViewLabel:v13 labelString:selfCopy->_ccText];
    v14 = +[UIColor systemGrayColor];

    [(BluetoothUIServiceBanner *)selfCopy _createccTopViewLabel:v14 labelString:selfCopy->_ccItemsText];
    v15 = [(BluetoothUIServiceBanner *)selfCopy getAppIcon:selfCopy->_bannerAppID];
    v16 = [[UIView alloc] initWithFrame:{0.0, 0.0, 28.0, 28.0}];
    leadingAccessoryView = selfCopy->_leadingAccessoryView;
    selfCopy->_leadingAccessoryView = v16;

    [(BluetoothUIServiceBanner *)selfCopy createCustomView:selfCopy->_leadingAccessoryView WithImage:v15];
    v18 = [[UIView alloc] initWithFrame:{0.0, 0.0, 28.0, 28.0}];
    trailingAccessoryView = selfCopy->_trailingAccessoryView;
    selfCopy->_trailingAccessoryView = v18;

    if ([(NSString *)selfCopy->_receivedMuteAction isEqualToString:@"mute"]|| [(NSString *)selfCopy->_receivedMuteAction isEqualToString:@"unmute"])
    {
      v20 = [(BluetoothUIServiceBanner *)selfCopy createMuteUnmuteButton:selfCopy->_receivedMuteAction];
      muteUnmuteButton = selfCopy->_muteUnmuteButton;
      selfCopy->_muteUnmuteButton = v20;

      [(UIView *)selfCopy->_trailingAccessoryView addSubview:selfCopy->_muteUnmuteButton];
      [(UIButton *)selfCopy->_muteUnmuteButton setTranslatesAutoresizingMaskIntoConstraints:0];
      widthAnchor = [(UIButton *)selfCopy->_muteUnmuteButton widthAnchor];
      widthAnchor2 = [(UIView *)selfCopy->_trailingAccessoryView widthAnchor];
      v24 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      [v24 setActive:1];

      heightAnchor = [(UIButton *)selfCopy->_muteUnmuteButton heightAnchor];
      heightAnchor2 = [(UIView *)selfCopy->_trailingAccessoryView heightAnchor];
      v27 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      [v27 setActive:1];

      centerXAnchor = [(UIButton *)selfCopy->_muteUnmuteButton centerXAnchor];
      centerXAnchor2 = [(UIView *)selfCopy->_trailingAccessoryView centerXAnchor];
      v30 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v30 setActive:1];

      centerYAnchor = [(UIButton *)selfCopy->_muteUnmuteButton centerYAnchor];
      centerYAnchor2 = [(UIView *)selfCopy->_trailingAccessoryView centerYAnchor];
      v33 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [v33 setActive:1];
    }

    [(BluetoothUIServiceBanner *)selfCopy createCustomStaticImageView:selfCopy->_leadingAccessoryView withIcon:v15];
    [(BluetoothUIServiceBanner *)selfCopy createCustomStaticImageView:selfCopy->_minimalAccessoryView withIcon:v15];
    objc_storeStrong(&selfCopy->_leadingView, selfCopy->_leadingAccessoryView);
    objc_storeStrong(&selfCopy->_trailingView, selfCopy->_trailingAccessoryView);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004DEC;
    block[3] = &unk_1000185C8;
    block[4] = selfCopy;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v34 = [[PLPillContentItem alloc] initWithText:selfCopy->_ccText style:1];
    centerContentText = selfCopy->_centerContentText;
    selfCopy->_centerContentText = v34;

    [(NSMutableArray *)selfCopy->_centerContentItems addObject:selfCopy->_centerContentText];
    v36 = [[PLPillContentItem alloc] initWithText:selfCopy->_ccItemsText style:2 accessoryView:selfCopy->_customView];
    customItems = selfCopy->_customItems;
    selfCopy->_customItems = v36;

    if (selfCopy->_customItems)
    {
      [(NSMutableArray *)selfCopy->_centerContentItems addObject:?];
    }

    v59 = [(BluetoothUIServiceBanner *)selfCopy getAppIcon:selfCopy->_bannerAppID];
    v38 = [[UIView alloc] initWithFrame:{0.0, 0.0, 28.0, 28.0}];
    v39 = selfCopy->_leadingAccessoryView;
    selfCopy->_leadingAccessoryView = v38;

    [(BluetoothUIServiceBanner *)selfCopy createCustomView:selfCopy->_leadingAccessoryView WithImage:v59];
    v40 = [[UIView alloc] initWithFrame:{0.0, 0.0, 28.0, 28.0}];
    v41 = selfCopy->_trailingAccessoryView;
    selfCopy->_trailingAccessoryView = v40;

    if ([(NSString *)selfCopy->_receivedMuteAction isEqualToString:@"mute"]|| [(NSString *)selfCopy->_receivedMuteAction isEqualToString:@"unmute"])
    {
      v42 = [(BluetoothUIServiceBanner *)selfCopy createMuteUnmuteButton:selfCopy->_receivedMuteAction];
      [(UIView *)selfCopy->_trailingAccessoryView addSubview:v42];
      [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
      widthAnchor3 = [v42 widthAnchor];
      widthAnchor4 = [(UIView *)selfCopy->_trailingAccessoryView widthAnchor];
      v45 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
      [v45 setActive:1];

      heightAnchor3 = [v42 heightAnchor];
      heightAnchor4 = [(UIView *)selfCopy->_trailingAccessoryView heightAnchor];
      v48 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
      [v48 setActive:1];

      centerXAnchor3 = [v42 centerXAnchor];
      centerXAnchor4 = [(UIView *)selfCopy->_trailingAccessoryView centerXAnchor];
      v51 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      [v51 setActive:1];

      centerYAnchor3 = [v42 centerYAnchor];
      centerYAnchor4 = [(UIView *)selfCopy->_trailingAccessoryView centerYAnchor];
      v54 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      [v54 setActive:1];

      [v42 addTarget:selfCopy action:"handleTap:" forControlEvents:64];
    }

    v55 = [[PLPillView alloc] initWithLeadingAccessoryView:selfCopy->_leadingAccessoryView trailingAccessoryView:selfCopy->_trailingAccessoryView];
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&selfCopy->_pillView, v55);
    centerContentItems = selfCopy->_centerContentItems;
    if (centerContentItems)
    {
      [(PLPillView *)selfCopy->_pillView setCenterContentItems:?];
    }

    else if (dword_10001EA10 <= 90)
    {
      if (dword_10001EA10 != -1 || (v56 = _LogCategory_Initialize(), v56))
      {
        sub_10000D724(v56, v57, centerContentItems);
      }
    }
  }
}

- (void)_showHIDConnectedBanner
{
  selfCopy = self;
  if (dword_10001EA10 <= 50)
  {
    if (dword_10001EA10 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10000D740(self, a2, v2);
    }
  }

  v4 = SBUIIsSystemApertureEnabled();
  if (v4)
  {
    if (selfCopy->_ccItemsText)
    {
      v7 = +[UIColor systemGrayColor];
      [(BluetoothUIServiceBanner *)selfCopy _createccTopViewLabel:v7 labelString:selfCopy->_ccItemsText];
      v8 = +[UIColor systemWhiteColor];

      [(BluetoothUIServiceBanner *)selfCopy _createccBottomViewLabel:v8 labelString:selfCopy->_ccText];
      v9 = [UIImage systemImageNamed:selfCopy->_leadingAccessoryIconName];
      v10 = [[UIView alloc] initWithFrame:{0.0, 0.0, 28.0, 28.0}];
      leadingAccessoryView = selfCopy->_leadingAccessoryView;
      selfCopy->_leadingAccessoryView = v10;

      v12 = selfCopy->_leadingAccessoryView;
      v13 = +[UIColor whiteColor];
      [(UIView *)v12 setTintColor:v13];

      [(BluetoothUIServiceBanner *)selfCopy createCustomView:selfCopy->_leadingAccessoryView WithImage:v9 WithMode:1];
      v14 = [[UIView alloc] initWithFrame:{0.0, 0.0, 28.0, 28.0}];
      trailingAccessoryView = selfCopy->_trailingAccessoryView;
      selfCopy->_trailingAccessoryView = v14;

      [(BluetoothUIServiceBanner *)selfCopy _createBatteryView];
      v16 = [NSString stringWithFormat:@"%.2f", *&selfCopy->_batteryLevel];
      [v16 doubleValue];
      v18 = v17;
      batteryLevelIndicator = [(BluetoothUIServiceBanner *)selfCopy batteryLevelIndicator];
      [batteryLevelIndicator setPercentageLevel:v18];

      [(BluetoothUIServiceBanner *)selfCopy _checkValidBatteryRange];
      [(BluetoothUIServiceBanner *)selfCopy _fillBatteryPercentage];
      v20 = [UIColor colorWithRed:0.2728 green:0.9028 blue:0.4567 alpha:1.0];
      batteryLevelIndicator2 = [(BluetoothUIServiceBanner *)selfCopy batteryLevelIndicator];
      [batteryLevelIndicator2 percentageLevel];
      v23 = v22;

      batteryLevelIndicator3 = [(BluetoothUIServiceBanner *)selfCopy batteryLevelIndicator];
      v25 = batteryLevelIndicator3;
      if (v23 <= 0.2)
      {
        v26 = +[UIColor systemRedColor];
        [v25 setColorforPercentageLabel:v26];
      }

      else
      {
        [batteryLevelIndicator3 setColorforPercentageLabel:v20];
      }

      batteryLevelIndicator4 = [(BluetoothUIServiceBanner *)selfCopy batteryLevelIndicator];
      [batteryLevelIndicator4 setShowsPercentageLabel:0];

      [(BluetoothUIServiceBanner *)selfCopy createCustomView:selfCopy->_minimalAccessoryView WithImage:v9 WithMode:1];
      objc_storeStrong(&selfCopy->_leadingView, selfCopy->_leadingAccessoryView);
      objc_storeStrong(&selfCopy->_trailingView, selfCopy->_trailingAccessoryView);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000051E8;
      block[3] = &unk_1000185C8;
      block[4] = selfCopy;
      dispatch_async(&_dispatch_main_q, block);
    }

    else if (dword_10001EA10 <= 50)
    {
      if (dword_10001EA10 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_10000D75C(v4, v5, v6);
      }
    }
  }
}

- (void)_createccBottomViewLabel:(id)label
{
  labelCopy = label;
  v7 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 30.0, 30.0}];
  [v7 setText:labelCopy];

  v5 = +[UIColor whiteColor];
  [v7 setTextColor:v5];

  v6 = [UIFont systemFontOfSize:16.0 weight:UIFontWeightMedium];
  [v7 setFont:v6];

  [v7 setMarqueeEnabled:1];
  [(BluetoothUIServiceBanner *)self setCcBottomViewLabel:v7];
}

- (void)_createccBottomViewLabel:(id)label labelString:(id)string
{
  labelCopy = label;
  stringCopy = string;
  v7 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 30.0, 30.0}];
  [v7 setText:stringCopy];

  v10 = labelCopy;
  if (labelCopy)
  {
    [v7 setTextColor:labelCopy];
  }

  else
  {
    if (dword_10001EA10 <= 90)
    {
      if (dword_10001EA10 != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        sub_10000D778(v8, v10, v9);
      }
    }

    v11 = +[UIColor whiteColor];
    [v7 setTextColor:v11];
  }

  v12 = [UIFont systemFontOfSize:16.0 weight:UIFontWeightMedium];
  [v7 setFont:v12];

  [v7 setMarqueeEnabled:1];
  [(BluetoothUIServiceBanner *)self setCcBottomViewLabel:v7];
}

- (void)_createccTopViewLabel:(id)label labelString:(id)string
{
  stringCopy = string;
  labelCopy = label;
  v9 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  [v9 setText:stringCopy];

  [v9 setTextColor:labelCopy];
  [v9 setAlpha:0.8];
  v8 = [UIFont systemFontOfSize:13.0 weight:UIFontWeightMedium];
  [v9 setFont:v8];

  [(BluetoothUIServiceBanner *)self setCcTopViewLabel:v9];
}

- (void)_createInUseBannerTextLabel:(id)label bottomLabel:(id)bottomLabel
{
  bottomLabelCopy = bottomLabel;
  labelCopy = label;
  v13 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  [v13 setText:labelCopy];

  v8 = +[UIColor systemGrayColor];
  [v13 setTextColor:v8];

  [v13 setAlpha:0.8];
  v9 = [UIFont systemFontOfSize:13.0 weight:UIFontWeightMedium];
  [v13 setFont:v9];

  [v13 setMarqueeEnabled:1];
  [(BluetoothUIServiceBanner *)self setCcTopViewLabel:v13];
  v10 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 30.0, 30.0}];
  [v10 setText:bottomLabelCopy];

  v11 = +[UIColor whiteColor];
  [v10 setTextColor:v11];

  v12 = [UIFont systemFontOfSize:15.0 weight:UIFontWeightMedium];
  [v10 setFont:v12];

  [v10 setMarqueeEnabled:1];
  [(BluetoothUIServiceBanner *)self setCcBottomViewLabel:v10];
}

- (void)_createBatteryView
{
  v3 = objc_alloc_init(BTUIBatteryLevelIndicator);
  [(BluetoothUIServiceBanner *)self setBatteryLevelIndicator:v3];

  trailingAccessoryView = self->_trailingAccessoryView;
  batteryLevelIndicator = [(BluetoothUIServiceBanner *)self batteryLevelIndicator];
  [(UIView *)trailingAccessoryView addSubview:batteryLevelIndicator];

  [(BluetoothUIServiceBanner *)self _activateConstraintsForBatteryLevelIndicator];
}

- (void)_checkValidBatteryRange
{
  batteryLevelIndicator = [(BluetoothUIServiceBanner *)self batteryLevelIndicator];
  [batteryLevelIndicator percentageLevel];
  if (v4 < 0.0)
  {

LABEL_6:
    if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D794(self);
    }

    batteryLevelIndicator2 = [(BluetoothUIServiceBanner *)self batteryLevelIndicator];
    [batteryLevelIndicator2 setPercentageLevel:0.0];
    goto LABEL_10;
  }

  batteryLevelIndicator3 = [(BluetoothUIServiceBanner *)self batteryLevelIndicator];
  [batteryLevelIndicator3 percentageLevel];
  v7 = v6;

  if (v7 > 1.0)
  {
    goto LABEL_6;
  }

  batteryLevelIndicator4 = [(BluetoothUIServiceBanner *)self batteryLevelIndicator];
  [batteryLevelIndicator4 percentageLevel];
  v10 = v9;

  if (v10 != 0.0)
  {
    return;
  }

  batteryLevelIndicator2 = [(BluetoothUIServiceBanner *)self batteryLevelIndicator];
  [batteryLevelIndicator2 setAlpha:0.0];
LABEL_10:
}

- (void)_activateConstraintsForBatteryLevelIndicator
{
  batteryLevelIndicator = [(BluetoothUIServiceBanner *)self batteryLevelIndicator];
  [batteryLevelIndicator setTranslatesAutoresizingMaskIntoConstraints:0];

  batteryLevelIndicator2 = [(BluetoothUIServiceBanner *)self batteryLevelIndicator];
  widthAnchor = [batteryLevelIndicator2 widthAnchor];
  widthAnchor2 = [(UIView *)self->_trailingAccessoryView widthAnchor];
  v7 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v7 setActive:1];

  batteryLevelIndicator3 = [(BluetoothUIServiceBanner *)self batteryLevelIndicator];
  heightAnchor = [batteryLevelIndicator3 heightAnchor];
  heightAnchor2 = [(UIView *)self->_trailingAccessoryView heightAnchor];
  v11 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v11 setActive:1];

  batteryLevelIndicator4 = [(BluetoothUIServiceBanner *)self batteryLevelIndicator];
  centerXAnchor = [batteryLevelIndicator4 centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_trailingAccessoryView centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v15 setActive:1];

  batteryLevelIndicator5 = [(BluetoothUIServiceBanner *)self batteryLevelIndicator];
  centerYAnchor = [batteryLevelIndicator5 centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_trailingAccessoryView centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v18 setActive:1];
}

- (void)_fillBatteryPercentage
{
  batteryLevelIndicator = [(BluetoothUIServiceBanner *)self batteryLevelIndicator];
  micaRootLayer = [batteryLevelIndicator micaRootLayer];
  v8 = [micaRootLayer publishedObjectWithName:@"progress fill"];

  batteryLevelIndicator2 = [(BluetoothUIServiceBanner *)self batteryLevelIndicator];
  [batteryLevelIndicator2 percentageLevel];
  [v8 setStrokeStart:1.0 - v6 + 0.001];

  batteryLevelIndicator3 = [(BluetoothUIServiceBanner *)self batteryLevelIndicator];
  [batteryLevelIndicator3 setMicaProgressFill:v8];
}

- (void)_createConstraintsForInUseBannerIfNeeded
{
  ccTopViewLabel = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
  if (ccTopViewLabel)
  {
    v4 = ccTopViewLabel;
    ccBottomViewLabel = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];

    if (ccBottomViewLabel)
    {
      v6 = [(NSMutableDictionary *)self->_constraintsForLayoutMode objectForKeyedSubscript:&off_100019370];

      if (!v6)
      {
        if (!self->_constraintsForLayoutMode)
        {
          v7 = +[NSMutableDictionary dictionary];
          constraintsForLayoutMode = self->_constraintsForLayoutMode;
          self->_constraintsForLayoutMode = v7;
        }

        widthAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView widthAnchor];
        v95 = [widthAnchor constraintEqualToConstant:48.0];
        v97[0] = v95;
        heightAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView heightAnchor];
        v93 = [heightAnchor constraintEqualToConstant:48.0];
        v97[1] = v93;
        leadingAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView leadingAnchor];
        view = [(BluetoothUIServiceBanner *)self view];
        leadingAnchor2 = [view leadingAnchor];
        v89 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
        v97[2] = v89;
        centerYAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView centerYAnchor];
        view2 = [(BluetoothUIServiceBanner *)self view];
        centerYAnchor2 = [view2 centerYAnchor];
        v85 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v97[3] = v85;
        view3 = [(BluetoothUIServiceBanner *)self view];
        widthAnchor2 = [view3 widthAnchor];
        view4 = [(BluetoothUIServiceBanner *)self view];
        window = [view4 window];
        widthAnchor3 = [window widthAnchor];
        v79 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
        v97[4] = v79;
        view5 = [(BluetoothUIServiceBanner *)self view];
        heightAnchor2 = [view5 heightAnchor];
        view6 = [(BluetoothUIServiceBanner *)self view];
        sBUISA_systemApertureTrailingConcentricContentLayoutGuide = [view6 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
        heightAnchor3 = [sBUISA_systemApertureTrailingConcentricContentLayoutGuide heightAnchor];
        v73 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
        v97[5] = v73;
        trailingAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView trailingAnchor];
        view7 = [(BluetoothUIServiceBanner *)self view];
        sBUISA_systemApertureObstructedAreaLayoutGuide = [view7 SBUISA_systemApertureObstructedAreaLayoutGuide];
        leadingAnchor3 = [sBUISA_systemApertureObstructedAreaLayoutGuide leadingAnchor];
        v68 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor3];
        v97[6] = v68;
        heightAnchor4 = [(SBUISystemApertureAccessoryView *)self->_trailingView heightAnchor];
        v66 = [heightAnchor4 constraintEqualToConstant:35.0];
        v97[7] = v66;
        widthAnchor4 = [(SBUISystemApertureAccessoryView *)self->_trailingView widthAnchor];
        v64 = [widthAnchor4 constraintGreaterThanOrEqualToConstant:100.0];
        v97[8] = v64;
        centerYAnchor3 = [(SBUISystemApertureAccessoryView *)self->_trailingView centerYAnchor];
        view8 = [(BluetoothUIServiceBanner *)self view];
        centerYAnchor4 = [view8 centerYAnchor];
        v60 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
        v97[9] = v60;
        leadingAnchor4 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        view9 = [(BluetoothUIServiceBanner *)self view];
        sBUISA_systemApertureObstructedAreaLayoutGuide2 = [view9 SBUISA_systemApertureObstructedAreaLayoutGuide];
        trailingAnchor2 = [sBUISA_systemApertureObstructedAreaLayoutGuide2 trailingAnchor];
        v55 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
        v97[10] = v55;
        trailingAnchor3 = [(SBUISystemApertureAccessoryView *)self->_trailingView trailingAnchor];
        view10 = [(BluetoothUIServiceBanner *)self view];
        trailingAnchor4 = [view10 trailingAnchor];
        v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
        v97[11] = v51;
        ccTopViewLabel2 = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
        leadingAnchor5 = [ccTopViewLabel2 leadingAnchor];
        ccBottomViewLabel2 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
        leadingAnchor6 = [ccBottomViewLabel2 leadingAnchor];
        v46 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
        v97[12] = v46;
        ccTopViewLabel3 = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
        _tightBoundingBoxLayoutGuide = [ccTopViewLabel3 _tightBoundingBoxLayoutGuide];
        topAnchor = [_tightBoundingBoxLayoutGuide topAnchor];
        view11 = [(BluetoothUIServiceBanner *)self view];
        sBUISA_systemApertureObstructedAreaLayoutGuide3 = [view11 SBUISA_systemApertureObstructedAreaLayoutGuide];
        bottomAnchor = [sBUISA_systemApertureObstructedAreaLayoutGuide3 bottomAnchor];
        v39 = [topAnchor constraintEqualToAnchor:bottomAnchor];
        v97[13] = v39;
        ccTopViewLabel4 = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
        trailingAnchor5 = [ccTopViewLabel4 trailingAnchor];
        leadingAnchor7 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        view12 = [(BluetoothUIServiceBanner *)self view];
        [view12 SBUISA_standardInteritemPadding];
        v34 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor7 constant:-v9];
        v97[14] = v34;
        ccBottomViewLabel3 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
        firstBaselineAnchor = [ccBottomViewLabel3 firstBaselineAnchor];
        view13 = [(BluetoothUIServiceBanner *)self view];
        sBUISA_systemApertureLegibleContentLayoutMarginsGuide = [view13 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];
        bottomAnchor2 = [sBUISA_systemApertureLegibleContentLayoutMarginsGuide bottomAnchor];
        v28 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor2 constant:2.0];
        v97[15] = v28;
        ccBottomViewLabel4 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
        leadingAnchor8 = [ccBottomViewLabel4 leadingAnchor];
        view14 = [(BluetoothUIServiceBanner *)self view];
        leadingAnchor9 = [view14 leadingAnchor];
        v23 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9 constant:78.0];
        v97[16] = v23;
        ccBottomViewLabel5 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
        _tightBoundingBoxLayoutGuide2 = [ccBottomViewLabel5 _tightBoundingBoxLayoutGuide];
        topAnchor2 = [_tightBoundingBoxLayoutGuide2 topAnchor];
        ccTopViewLabel5 = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
        bottomAnchor3 = [ccTopViewLabel5 bottomAnchor];
        v12 = [topAnchor2 constraintEqualToAnchor:bottomAnchor3];
        v97[17] = v12;
        ccBottomViewLabel6 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
        trailingAnchor6 = [ccBottomViewLabel6 trailingAnchor];
        leadingAnchor10 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        view15 = [(BluetoothUIServiceBanner *)self view];
        [view15 SBUISA_standardInteritemPadding];
        v18 = [trailingAnchor6 constraintEqualToAnchor:leadingAnchor10 constant:-v17];
        v97[18] = v18;
        v19 = [NSArray arrayWithObjects:v97 count:19];
        [(NSMutableDictionary *)self->_constraintsForLayoutMode setObject:v19 forKeyedSubscript:&off_100019370];
      }
    }
  }
}

- (void)_createConstraintsForReverseBannerIfNeeded
{
  ccTopViewLabel = [(BluetoothUIServiceBanner *)self ccTopViewLabel];

  if (ccTopViewLabel)
  {
    v4 = [(NSMutableDictionary *)self->_constraintsForLayoutMode objectForKeyedSubscript:&off_100019370];

    if (!v4)
    {
      if (!self->_constraintsForLayoutMode)
      {
        v5 = +[NSMutableDictionary dictionary];
        constraintsForLayoutMode = self->_constraintsForLayoutMode;
        self->_constraintsForLayoutMode = v5;
      }

      widthAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView widthAnchor];
      v61 = [widthAnchor constraintEqualToConstant:118.0];
      v63[0] = v61;
      heightAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView heightAnchor];
      v59 = [heightAnchor constraintEqualToConstant:48.0];
      v63[1] = v59;
      leadingAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView leadingAnchor];
      view = [(BluetoothUIServiceBanner *)self view];
      leadingAnchor2 = [view leadingAnchor];
      v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-15.0];
      v63[2] = v55;
      centerYAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView centerYAnchor];
      view2 = [(BluetoothUIServiceBanner *)self view];
      centerYAnchor2 = [view2 centerYAnchor];
      v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v63[3] = v51;
      view3 = [(BluetoothUIServiceBanner *)self view];
      heightAnchor2 = [view3 heightAnchor];
      v48 = [heightAnchor2 constraintEqualToConstant:65.33];
      v63[4] = v48;
      trailingAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView trailingAnchor];
      view4 = [(BluetoothUIServiceBanner *)self view];
      sBUISA_systemApertureObstructedAreaLayoutGuide = [view4 SBUISA_systemApertureObstructedAreaLayoutGuide];
      leadingAnchor3 = [sBUISA_systemApertureObstructedAreaLayoutGuide leadingAnchor];
      v43 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor3];
      v63[5] = v43;
      ccTopViewLabel2 = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
      leadingAnchor4 = [ccTopViewLabel2 leadingAnchor];
      view5 = [(BluetoothUIServiceBanner *)self view];
      leadingAnchor5 = [view5 leadingAnchor];
      v38 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:78.0];
      v63[6] = v38;
      ccTopViewLabel3 = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
      _tightBoundingBoxLayoutGuide = [ccTopViewLabel3 _tightBoundingBoxLayoutGuide];
      topAnchor = [_tightBoundingBoxLayoutGuide topAnchor];
      view6 = [(BluetoothUIServiceBanner *)self view];
      sBUISA_systemApertureObstructedAreaLayoutGuide2 = [view6 SBUISA_systemApertureObstructedAreaLayoutGuide];
      bottomAnchor = [sBUISA_systemApertureObstructedAreaLayoutGuide2 bottomAnchor];
      v31 = [topAnchor constraintEqualToAnchor:bottomAnchor];
      v63[7] = v31;
      ccTopViewLabel4 = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
      trailingAnchor2 = [ccTopViewLabel4 trailingAnchor];
      leadingAnchor6 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
      view7 = [(BluetoothUIServiceBanner *)self view];
      [view7 SBUISA_standardInteritemPadding];
      v26 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor6 constant:-v7];
      v63[8] = v26;
      heightAnchor3 = [(SBUISystemApertureAccessoryView *)self->_trailingView heightAnchor];
      v24 = [heightAnchor3 constraintEqualToConstant:30.0];
      v63[9] = v24;
      widthAnchor2 = [(SBUISystemApertureAccessoryView *)self->_trailingView widthAnchor];
      v22 = [widthAnchor2 constraintEqualToConstant:64.0];
      v63[10] = v22;
      centerYAnchor3 = [(SBUISystemApertureAccessoryView *)self->_trailingView centerYAnchor];
      view8 = [(BluetoothUIServiceBanner *)self view];
      centerYAnchor4 = [view8 centerYAnchor];
      v18 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v63[11] = v18;
      leadingAnchor7 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
      view9 = [(BluetoothUIServiceBanner *)self view];
      sBUISA_systemApertureObstructedAreaLayoutGuide3 = [view9 SBUISA_systemApertureObstructedAreaLayoutGuide];
      trailingAnchor3 = [sBUISA_systemApertureObstructedAreaLayoutGuide3 trailingAnchor];
      v11 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:trailingAnchor3];
      v63[12] = v11;
      trailingAnchor4 = [(SBUISystemApertureAccessoryView *)self->_trailingView trailingAnchor];
      view10 = [(BluetoothUIServiceBanner *)self view];
      trailingAnchor5 = [view10 trailingAnchor];
      v15 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-16.0];
      v63[13] = v15;
      v16 = [NSArray arrayWithObjects:v63 count:14];
      [(NSMutableDictionary *)self->_constraintsForLayoutMode setObject:v16 forKeyedSubscript:&off_100019370];
    }
  }
}

- (void)_createConstraintsIfNeeded
{
  ccTopViewLabel = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
  if (ccTopViewLabel)
  {
    v4 = ccTopViewLabel;
    ccBottomViewLabel = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];

    if (ccBottomViewLabel)
    {
      trailingView = [(BluetoothUIServiceBanner *)self trailingView];
      widthAnchor = [trailingView widthAnchor];
      v8 = [widthAnchor constraintEqualToConstant:20.0];
      trailingViewWidth = self->_trailingViewWidth;
      self->_trailingViewWidth = v8;

      trailingView2 = [(BluetoothUIServiceBanner *)self trailingView];
      heightAnchor = [trailingView2 heightAnchor];
      v12 = [heightAnchor constraintEqualToConstant:20.0];
      trailingViewHeight = self->_trailingViewHeight;
      self->_trailingViewHeight = v12;

      v14 = [(NSMutableDictionary *)self->_constraintsForLayoutMode objectForKeyedSubscript:&off_100019388];
      if (v14)
      {
        v15 = v14;
        v16 = [(NSMutableDictionary *)self->_constraintsForLayoutMode objectForKeyedSubscript:&off_100019370];
        if (v16)
        {
          v17 = v16;
          v18 = [(NSMutableDictionary *)self->_constraintsForLayoutMode objectForKeyedSubscript:&off_1000193A0];

          if (v18)
          {
            return;
          }
        }

        else
        {
        }
      }

      if (!self->_constraintsForLayoutMode)
      {
        v19 = +[NSMutableDictionary dictionary];
        constraintsForLayoutMode = self->_constraintsForLayoutMode;
        self->_constraintsForLayoutMode = v19;
      }

      if (self->_muteUnmuteButton)
      {
        if ([(NSString *)self->_receivedMuteAction containsString:@"mute"])
        {
          v21 = 28.0;
        }

        else
        {
          v21 = 30.0;
        }
      }

      else
      {
        v21 = 30.0;
      }

      minimalView = [(BluetoothUIServiceBanner *)self minimalView];
      widthAnchor2 = [minimalView widthAnchor];
      v24 = [widthAnchor2 constraintEqualToConstant:v21];
      v161[0] = v24;
      minimalView2 = [(BluetoothUIServiceBanner *)self minimalView];
      heightAnchor2 = [minimalView2 heightAnchor];
      v27 = [heightAnchor2 constraintEqualToConstant:v21];
      v161[1] = v27;
      v28 = [NSArray arrayWithObjects:v161 count:2];
      [(NSMutableDictionary *)self->_constraintsForLayoutMode setObject:v28 forKeyedSubscript:&off_100019388];

      leadingView = [(BluetoothUIServiceBanner *)self leadingView];
      widthAnchor3 = [leadingView widthAnchor];
      v152 = [widthAnchor3 constraintEqualToConstant:v21];
      v160[0] = v152;
      leadingView2 = [(BluetoothUIServiceBanner *)self leadingView];
      heightAnchor3 = [leadingView2 heightAnchor];
      v146 = [heightAnchor3 constraintEqualToConstant:v21];
      v160[1] = v146;
      leadingView3 = [(BluetoothUIServiceBanner *)self leadingView];
      leadingAnchor = [leadingView3 leadingAnchor];
      view = [(BluetoothUIServiceBanner *)self view];
      leadingAnchor2 = [view leadingAnchor];
      v136 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
      v160[2] = v136;
      leadingView4 = [(BluetoothUIServiceBanner *)self leadingView];
      centerYAnchor = [leadingView4 centerYAnchor];
      view2 = [(BluetoothUIServiceBanner *)self view];
      centerYAnchor2 = [view2 centerYAnchor];
      v126 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v29 = self->_trailingViewWidth;
      v160[3] = v126;
      v160[4] = v29;
      v160[5] = self->_trailingViewHeight;
      trailingView3 = [(BluetoothUIServiceBanner *)self trailingView];
      centerXAnchor = [trailingView3 centerXAnchor];
      view3 = [(BluetoothUIServiceBanner *)self view];
      sBUISA_systemApertureTrailingConcentricContentLayoutGuide = [view3 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
      centerXAnchor2 = [sBUISA_systemApertureTrailingConcentricContentLayoutGuide centerXAnchor];
      v114 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v160[6] = v114;
      trailingView4 = [(BluetoothUIServiceBanner *)self trailingView];
      centerYAnchor3 = [trailingView4 centerYAnchor];
      view4 = [(BluetoothUIServiceBanner *)self view];
      sBUISA_systemApertureTrailingConcentricContentLayoutGuide2 = [view4 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
      centerYAnchor4 = [sBUISA_systemApertureTrailingConcentricContentLayoutGuide2 centerYAnchor];
      v102 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v160[7] = v102;
      ccTopViewLabel2 = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
      leadingAnchor3 = [ccTopViewLabel2 leadingAnchor];
      ccBottomViewLabel2 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
      leadingAnchor4 = [ccBottomViewLabel2 leadingAnchor];
      v92 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v160[8] = v92;
      ccTopViewLabel3 = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
      firstBaselineAnchor = [ccTopViewLabel3 firstBaselineAnchor];
      ccBottomViewLabel3 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
      topAnchor = [ccBottomViewLabel3 topAnchor];
      v82 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
      v160[9] = v82;
      ccBottomViewLabel4 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
      firstBaselineAnchor2 = [ccBottomViewLabel4 firstBaselineAnchor];
      view5 = [(BluetoothUIServiceBanner *)self view];
      sBUISA_systemApertureLegibleContentLayoutMarginsGuide = [view5 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];
      bottomAnchor = [sBUISA_systemApertureLegibleContentLayoutMarginsGuide bottomAnchor];
      v31 = [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor];
      v160[10] = v31;
      ccBottomViewLabel5 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
      leadingAnchor5 = [ccBottomViewLabel5 leadingAnchor];
      view6 = [(BluetoothUIServiceBanner *)self view];
      sBUISA_systemApertureObstructedAreaLayoutGuide = [view6 SBUISA_systemApertureObstructedAreaLayoutGuide];
      leadingAnchor6 = [sBUISA_systemApertureObstructedAreaLayoutGuide leadingAnchor];
      v37 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v160[11] = v37;
      v38 = [NSArray arrayWithObjects:v160 count:12];
      [(NSMutableDictionary *)self->_constraintsForLayoutMode setObject:v38 forKeyedSubscript:&off_1000193A0];

      if (self->_muteUnmuteButton)
      {
        if ([(NSString *)self->_receivedMuteAction containsString:@"mute"])
        {
          v39 = 48.0;
        }

        else
        {
          v39 = 60.0;
        }
      }

      else
      {
        v39 = 60.0;
      }

      leadingView5 = [(BluetoothUIServiceBanner *)self leadingView];
      widthAnchor4 = [leadingView5 widthAnchor];
      v155 = [widthAnchor4 constraintEqualToConstant:v39];
      v159[0] = v155;
      leadingView6 = [(BluetoothUIServiceBanner *)self leadingView];
      heightAnchor4 = [leadingView6 heightAnchor];
      v149 = [heightAnchor4 constraintEqualToConstant:v39];
      v159[1] = v149;
      trailingView5 = [(BluetoothUIServiceBanner *)self trailingView];
      widthAnchor5 = [trailingView5 widthAnchor];
      v143 = [widthAnchor5 constraintEqualToConstant:49.5];
      v159[2] = v143;
      trailingView6 = [(BluetoothUIServiceBanner *)self trailingView];
      heightAnchor5 = [trailingView6 heightAnchor];
      v137 = [heightAnchor5 constraintEqualToConstant:49.5];
      v159[3] = v137;
      view7 = [(BluetoothUIServiceBanner *)self view];
      widthAnchor6 = [view7 widthAnchor];
      view8 = [(BluetoothUIServiceBanner *)self view];
      window = [view8 window];
      widthAnchor7 = [window widthAnchor];
      v125 = [widthAnchor6 constraintEqualToAnchor:widthAnchor7];
      v159[4] = v125;
      view9 = [(BluetoothUIServiceBanner *)self view];
      heightAnchor6 = [view9 heightAnchor];
      view10 = [(BluetoothUIServiceBanner *)self view];
      sBUISA_systemApertureTrailingConcentricContentLayoutGuide3 = [view10 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
      heightAnchor7 = [sBUISA_systemApertureTrailingConcentricContentLayoutGuide3 heightAnchor];
      v113 = [heightAnchor6 constraintEqualToAnchor:heightAnchor7];
      v159[5] = v113;
      leadingView7 = [(BluetoothUIServiceBanner *)self leadingView];
      leadingAnchor7 = [leadingView7 leadingAnchor];
      view11 = [(BluetoothUIServiceBanner *)self view];
      leadingAnchor8 = [view11 leadingAnchor];
      v103 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:20.0];
      v159[6] = v103;
      leadingView8 = [(BluetoothUIServiceBanner *)self leadingView];
      centerYAnchor5 = [leadingView8 centerYAnchor];
      view12 = [(BluetoothUIServiceBanner *)self view];
      centerYAnchor6 = [view12 centerYAnchor];
      v93 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
      v159[7] = v93;
      trailingView7 = [(BluetoothUIServiceBanner *)self trailingView];
      centerXAnchor3 = [trailingView7 centerXAnchor];
      view13 = [(BluetoothUIServiceBanner *)self view];
      sBUISA_systemApertureTrailingConcentricContentLayoutGuide4 = [view13 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
      centerXAnchor4 = [sBUISA_systemApertureTrailingConcentricContentLayoutGuide4 centerXAnchor];
      v81 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      v159[8] = v81;
      trailingView8 = [(BluetoothUIServiceBanner *)self trailingView];
      centerYAnchor7 = [trailingView8 centerYAnchor];
      view14 = [(BluetoothUIServiceBanner *)self view];
      sBUISA_systemApertureTrailingConcentricContentLayoutGuide5 = [view14 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
      centerYAnchor8 = [sBUISA_systemApertureTrailingConcentricContentLayoutGuide5 centerYAnchor];
      v71 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
      v159[9] = v71;
      ccTopViewLabel4 = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
      leadingAnchor9 = [ccTopViewLabel4 leadingAnchor];
      ccBottomViewLabel6 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
      leadingAnchor10 = [ccBottomViewLabel6 leadingAnchor];
      v66 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
      v159[10] = v66;
      ccTopViewLabel5 = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
      _tightBoundingBoxLayoutGuide = [ccTopViewLabel5 _tightBoundingBoxLayoutGuide];
      topAnchor2 = [_tightBoundingBoxLayoutGuide topAnchor];
      view15 = [(BluetoothUIServiceBanner *)self view];
      sBUISA_systemApertureObstructedAreaLayoutGuide2 = [view15 SBUISA_systemApertureObstructedAreaLayoutGuide];
      bottomAnchor2 = [sBUISA_systemApertureObstructedAreaLayoutGuide2 bottomAnchor];
      v59 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2];
      v159[11] = v59;
      ccBottomViewLabel7 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
      firstBaselineAnchor3 = [ccBottomViewLabel7 firstBaselineAnchor];
      view16 = [(BluetoothUIServiceBanner *)self view];
      sBUISA_systemApertureLegibleContentLayoutMarginsGuide2 = [view16 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];
      bottomAnchor3 = [sBUISA_systemApertureLegibleContentLayoutMarginsGuide2 bottomAnchor];
      v53 = [firstBaselineAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:-2.5];
      v159[12] = v53;
      ccBottomViewLabel8 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
      trailingAnchor = [ccBottomViewLabel8 trailingAnchor];
      trailingView9 = [(BluetoothUIServiceBanner *)self trailingView];
      leadingAnchor11 = [trailingView9 leadingAnchor];
      view17 = [(BluetoothUIServiceBanner *)self view];
      [view17 SBUISA_standardInteritemPadding];
      v43 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor11 constant:-v42];
      v159[13] = v43;
      ccBottomViewLabel9 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
      leadingAnchor12 = [ccBottomViewLabel9 leadingAnchor];
      leadingView9 = [(BluetoothUIServiceBanner *)self leadingView];
      trailingAnchor2 = [leadingView9 trailingAnchor];
      v48 = [leadingAnchor12 constraintEqualToAnchor:trailingAnchor2 constant:13.0];
      v159[14] = v48;
      v49 = [NSArray arrayWithObjects:v159 count:15];
      [(NSMutableDictionary *)self->_constraintsForLayoutMode setObject:v49 forKeyedSubscript:&off_100019370];
    }
  }
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  minimalView = [(BluetoothUIServiceBanner *)self minimalView];
  [minimalView setHidden:0];

  view = [(BluetoothUIServiceBanner *)self view];
  [view addSubview:self->_leadingAccessoryView];

  view2 = [(BluetoothUIServiceBanner *)self view];
  [view2 addSubview:self->_minimalAccessoryView];

  view3 = [(BluetoothUIServiceBanner *)self view];
  [view3 addSubview:self->_trailingAccessoryView];

  view4 = [(BluetoothUIServiceBanner *)self view];
  ccTopViewLabel = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
  [view4 addSubview:ccTopViewLabel];

  if (self->_isReverseRouteBanner || self->_isInUseBanner)
  {
    [(SBUISystemApertureAccessoryView *)self->_leadingView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBUISystemApertureAccessoryView *)self->_trailingView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    leadingView = [(BluetoothUIServiceBanner *)self leadingView];
    [leadingView setTranslatesAutoresizingMaskIntoConstraints:0];

    trailingView = [(BluetoothUIServiceBanner *)self trailingView];
    [trailingView setTranslatesAutoresizingMaskIntoConstraints:0];

    minimalView2 = [(BluetoothUIServiceBanner *)self minimalView];
    [minimalView2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  ccTopViewLabel2 = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
  [ccTopViewLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (self->_isInUseBanner)
  {
    view5 = [(BluetoothUIServiceBanner *)self view];
    ccBottomViewLabel = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
    [view5 addSubview:ccBottomViewLabel];

    [(BluetoothUIServiceBanner *)self _createConstraintsForInUseBannerIfNeeded];
LABEL_10:
    ccBottomViewLabel2 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
    [ccBottomViewLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    goto LABEL_11;
  }

  if (!self->_isReverseRouteBanner)
  {
    view6 = [(BluetoothUIServiceBanner *)self view];
    ccBottomViewLabel3 = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
    [view6 addSubview:ccBottomViewLabel3];

    [(BluetoothUIServiceBanner *)self _createConstraintsIfNeeded];
    goto LABEL_10;
  }

  [(BluetoothUIServiceBanner *)self _createConstraintsForReverseBannerIfNeeded];
LABEL_11:
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100007D84;
  v20[3] = &unk_1000185F0;
  v20[4] = self;
  [coordinatorCopy animateAlongsideTransition:v20 completion:0];
}

- (void)activateWithActionHandler:(id)handler
{
  v4 = objc_retainBlock(handler);
  actionHandler = self->_actionHandler;
  self->_actionHandler = v4;

  v6 = os_transaction_create();
  bannerTransaction = self->_bannerTransaction;
  self->_bannerTransaction = v6;

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  bundleIdentifier = [v8 bundleIdentifier];
  v10 = [BNBannerSource bannerSourceForDestination:0 forRequesterIdentifier:bundleIdentifier];
  bannerSource = self->_bannerSource;
  self->_bannerSource = v10;

  v12 = self->_bannerSource;
  v29 = 0;
  v13 = [(BNBannerSource *)v12 layoutDescriptionWithError:&v29];
  v14 = v29;
  if (v13)
  {
    [v13 presentationSize];
    v16 = v15;
    v18 = v17;
    [v13 containerSize];
    [(BluetoothUIServiceBanner *)self preferredContentSizeWithPresentationSize:v16 containerSize:v18, v19, v20];
    [(BluetoothUIServiceBanner *)self setPreferredContentSize:?];
    v21 = SBUIIsSystemApertureEnabled();
    v22 = self->_bannerSource;
    if (v21)
    {
      v32[0] = kSBUIPresentableShouldBypassScreenSharingUserInfoKey;
      v32[1] = kSBUIPresentableSystemApertureSupportingUserInfoKey;
      v33[0] = &__kCFBooleanTrue;
      v33[1] = &__kCFBooleanTrue;
      v23 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
      v28 = 0;
      v24 = &v28;
      v25 = &v28;
    }

    else
    {
      v30 = kSBUIPresentableShouldBypassScreenSharingUserInfoKey;
      v31 = &__kCFBooleanTrue;
      v23 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v27 = 0;
      v24 = &v27;
      v25 = &v27;
    }

    [(BNBannerSource *)v22 postPresentable:self options:1 userInfo:v23 error:v25, v27, v28];
    v26 = *v24;

    if (v26)
    {
      if (dword_10001EA10 <= 90 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
      {
        sub_10000D7E0(v26);
      }
    }

    else
    {
      self->_bannerActive = 1;
    }
  }

  else
  {
    if (dword_10001EA10 <= 90 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D820(v14);
    }

    v26 = v14;
  }
}

- (void)invalidate
{
  self->_isInvalidated = 1;
  self->_isFirstInstance = 0;
  if (self->_bannerActive)
  {
    [(BluetoothUIServiceBanner *)self dismissBanner];
  }

  accessoryView = self->_accessoryView;
  self->_accessoryView = 0;

  self->_bannerActive = 0;
  bannerSource = self->_bannerSource;
  self->_bannerSource = 0;

  bannerTimer = self->_bannerTimer;
  if (bannerTimer)
  {
    v6 = bannerTimer;
    dispatch_source_cancel(v6);
    v7 = self->_bannerTimer;
    self->_bannerTimer = 0;
  }

  self->_bannerTimeoutInSeconds = 0.0;
  ccText = self->_ccText;
  self->_ccText = 0;

  ccItemsIcon = self->_ccItemsIcon;
  self->_ccItemsIcon = 0;

  ccItemsText = self->_ccItemsText;
  self->_ccItemsText = 0;

  centerContentItems = self->_centerContentItems;
  self->_centerContentItems = 0;

  self->_connectedBanner = 0;
  identifier = self->_identifier;
  self->_identifier = 0;

  pillView = self->_pillView;
  self->_pillView = 0;

  leadingAccessoryView = self->_leadingAccessoryView;
  self->_leadingAccessoryView = 0;

  leadingAccessoryIconName = self->_leadingAccessoryIconName;
  self->_leadingAccessoryIconName = 0;

  leadingAccessoryIconPath = self->_leadingAccessoryIconPath;
  self->_leadingAccessoryIconPath = 0;

  centerContentText = self->_centerContentText;
  self->_centerContentText = 0;

  trailingAccessoryIconName = self->_trailingAccessoryIconName;
  self->_trailingAccessoryIconName = 0;

  trailingAccessoryIconPath = self->_trailingAccessoryIconPath;
  self->_trailingAccessoryIconPath = 0;

  trailingAccessoryView = self->_trailingAccessoryView;
  self->_trailingAccessoryView = 0;

  xpcCon = self->_xpcCon;
  self->_xpcCon = 0;

  self->_bannerType = 0;
  bannerAppID = self->_bannerAppID;
  self->_bannerAppID = 0;

  receivedMuteAction = self->_receivedMuteAction;
  self->_receivedMuteAction = 0;

  muteUnmuteButton = self->_muteUnmuteButton;
  self->_muteUnmuteButton = 0;

  mediaPlayerView = self->_mediaPlayerView;
  if (mediaPlayerView)
  {
    [(SRBannerMediaPlayerView *)mediaPlayerView stop];
    v26 = self->_mediaPlayerView;
    self->_mediaPlayerView = 0;
  }

  mediaPlayerViewFirstInstance = self->_mediaPlayerViewFirstInstance;
  if (mediaPlayerViewFirstInstance)
  {
    [(SRBannerMediaPlayerView *)mediaPlayerViewFirstInstance stop];
    v28 = self->_mediaPlayerViewFirstInstance;
    self->_mediaPlayerViewFirstInstance = 0;
  }
}

- (id)getAppIcon:(id)icon
{
  iconCopy = icon;
  if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D860(iconCopy);
  }

  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v5 = [UIImage _applicationIconImageForBundleIdentifier:iconCopy format:0 scale:?];

  return v5;
}

- (void)createCustomViewFromUILabel:(id)label WithStr:(id)str
{
  strCopy = str;
  labelCopy = label;
  v11 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 40.0, 40.0}];
  v7 = +[UIColor clearColor];
  [v11 setBackgroundColor:v7];

  v8 = +[UIColor systemBlueColor];
  [v11 setTextColor:v8];

  v9 = +[BSUIFontProvider defaultFontProvider];
  v10 = [v9 preferredFontForTextStyle:UIFontTextStyleFootnote hiFontStyle:4];
  [v11 setFont:v10];

  [v11 setTextAlignment:1];
  [v11 setText:strCopy];

  [labelCopy addSubview:v11];
}

- (void)createCustomViewForNativeReverseSymbol:(id)symbol
{
  symbolCopy = symbol;
  v8 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:12.0];
  v4 = [UIImage systemImageNamed:@"arrow.uturn.backward.circle.fill"];
  v5 = [v4 imageWithSymbolConfiguration:v8];
  v6 = [v5 imageWithRenderingMode:2];

  v7 = [[UIImageView alloc] initWithImage:v6];
  [symbolCopy bounds];
  [v7 setFrame:?];
  [v7 setAutoresizingMask:18];
  [symbolCopy addSubview:v7];
}

- (void)createGenericSpeakerView:(id)view
{
  viewCopy = view;
  v8 = [UIImage _systemImageNamed:@"speaker.bluetooth.fill"];
  v4 = [[UIImageView alloc] initWithImage:v8];
  v5 = +[UIColor systemGrayColor];
  [v4 setTintColor:v5];

  v6 = [UIFont systemFontOfSize:18.0];
  v7 = [UIImageSymbolConfiguration configurationWithFont:v6];
  [v4 setPreferredSymbolConfiguration:v7];

  [v4 setContentMode:4];
  [viewCopy bounds];
  [v4 setFrame:?];
  [v4 setAutoresizingMask:18];
  [viewCopy addSubview:v4];
}

- (void)createGenericHeadphoneView:(id)view
{
  viewCopy = view;
  v8 = [UIImage _systemImageNamed:@"headphones"];
  v4 = [[UIImageView alloc] initWithImage:v8];
  v5 = +[UIColor systemGrayColor];
  [v4 setTintColor:v5];

  v6 = [UIFont systemFontOfSize:18.0];
  v7 = [UIImageSymbolConfiguration configurationWithFont:v6];
  [v4 setPreferredSymbolConfiguration:v7];

  [v4 setContentMode:4];
  [viewCopy bounds];
  [v4 setFrame:?];
  [v4 setAutoresizingMask:18];
  [viewCopy addSubview:v4];
}

- (void)createCustomView:(id)view WithCustomIconName:(id)name
{
  nameCopy = name;
  viewCopy = view;
  v7 = [UIImageView alloc];
  v8 = [UIImage imageNamed:nameCopy];

  v9 = [v7 initWithImage:v8];
  [v9 setContentMode:2];
  [viewCopy bounds];
  [v9 setFrame:?];
  [v9 setAutoresizingMask:18];
  [viewCopy addSubview:v9];
}

- (void)createCustomView:(id)view WithCustomIconPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [[UIImage alloc] initWithContentsOfFile:pathCopy];

  v7 = [[UIImageView alloc] initWithImage:v8];
  [v7 setContentMode:2];
  [viewCopy bounds];
  [v7 setFrame:?];
  [v7 setAutoresizingMask:18];
  [viewCopy addSubview:v7];
}

- (void)createCustomView:(id)view WithImage:(id)image
{
  imageCopy = image;
  viewCopy = view;
  v7 = [[UIImageView alloc] initWithImage:imageCopy];

  [v7 setContentMode:2];
  [viewCopy bounds];
  [v7 setFrame:?];
  [v7 setAutoresizingMask:18];
  [viewCopy addSubview:v7];
}

- (void)createCustomView:(id)view WithImage:(id)image WithMode:(int64_t)mode
{
  imageCopy = image;
  viewCopy = view;
  v9 = [[UIImageView alloc] initWithImage:imageCopy];

  [v9 setContentMode:mode];
  [viewCopy bounds];
  [v9 setFrame:?];
  [v9 setAutoresizingMask:18];
  [viewCopy addSubview:v9];
}

- (void)createCustomAVPlayerLayerView:(id)view WithCustomIconName:(id)name
{
  viewCopy = view;
  v6 = objc_alloc_init(SRBannerMediaPlayerView);
  v7 = objc_alloc_init(AVPlayer);
  [v7 setAllowsExternalPlayback:0];
  [v7 setPreventsDisplaySleepDuringVideoPlayback:0];
  [v7 _setDisallowsAutoPauseOnRouteRemovalIfNoAudio:1];
  v37 = v7;
  [(SRBannerMediaPlayerView *)v6 setAvPlayer:v7];
  v38 = v6;
  objc_storeStrong(&self->_mediaPlayerView, v6);
  [(SRBannerMediaPlayerView *)self->_mediaPlayerView setBackgroundColor:0];
  [viewCopy addSubview:self->_mediaPlayerView];
  [(SRBannerMediaPlayerView *)self->_mediaPlayerView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_isFirstInstance)
  {
    objc_storeStrong(&self->_mediaPlayerViewFirstInstance, self->_mediaPlayerView);
    self->_isFirstInstance = 0;
  }

  centerXAnchor = [(SRBannerMediaPlayerView *)self->_mediaPlayerView centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v40[0] = v34;
  centerYAnchor = [(SRBannerMediaPlayerView *)self->_mediaPlayerView centerYAnchor];
  centerYAnchor2 = [viewCopy centerYAnchor];
  v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v40[1] = v9;
  widthAnchor = [(SRBannerMediaPlayerView *)self->_mediaPlayerView widthAnchor];
  widthAnchor2 = [viewCopy widthAnchor];
  v12 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v40[2] = v12;
  heightAnchor = [(SRBannerMediaPlayerView *)self->_mediaPlayerView heightAnchor];
  v39 = viewCopy;
  heightAnchor2 = [viewCopy heightAnchor];
  v15 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v40[3] = v15;
  v16 = [NSArray arrayWithObjects:v40 count:4];

  v17 = v16;
  [NSLayoutConstraint activateConstraints:v16];
  if ([(BluetoothUIServiceBanner *)self checkifVideoAssetExists])
  {
    v18 = [[NSString alloc] initWithFormat:@"%@", self->_leadingAccessoryIconName];
    v19 = [[NSString alloc] initWithFormat:@"%@-Loop", v18];
    v20 = sub_100009354(self->_leadingAccessoryIconName);
    v21 = [NSString alloc];
    v22 = [(BluetoothUIServiceBanner *)self removedAccessoryColorCode:self->_leadingAccessoryIconName];
    v23 = v22;
    if (v20)
    {
      v24 = @"%@-Seed-mov";
    }

    else
    {
      v24 = @"%@-mov";
    }

    v25 = [v21 initWithFormat:v24, v22];

    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [v26 pathForResource:v19 ofType:@"mov" inDirectory:v25];

    if (!v27)
    {
      leadingAccessoryIconName = self->_leadingAccessoryIconName;
      self->_leadingAccessoryIconName = @"Banner-PID-8206";

      v29 = [[NSString alloc] initWithFormat:@"%@", self->_leadingAccessoryIconName];
      v30 = [[NSString alloc] initWithFormat:@"%@-Loop", v29];
      v31 = [[NSString alloc] initWithFormat:@"%@-mov", self->_leadingAccessoryIconName];
      v32 = [NSBundle bundleForClass:objc_opt_class()];
      v27 = [v32 pathForResource:v30 ofType:@"mov" inDirectory:v31];
    }

    [(SRBannerMediaPlayerView *)self->_mediaPlayerView loadMovieLoopWithPath:v27 bannerInstance:self];
  }
}

- (void)createCustomStaticImageView:(id)view WithCustomIconName:(id)name
{
  viewCopy = view;
  v30 = objc_alloc_init(UIImageView);
  [viewCopy addSubview:v30];
  [v30 setBackgroundColor:0];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_imageView, v30);
  v6 = sub_100009354(self->_leadingAccessoryIconName);
  v7 = [NSString alloc];
  if (v6)
  {
    v8 = @"%@-Seed";
  }

  else
  {
    v8 = @"%@";
  }

  v29 = [v7 initWithFormat:v8, self->_leadingAccessoryIconName];
  v9 = [NSString alloc];
  v10 = [(BluetoothUIServiceBanner *)self removedAccessoryColorCode:self->_leadingAccessoryIconName];
  v28 = [v9 initWithFormat:v8, v10];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v27 = [v11 pathForResource:v29 ofType:@"png" inDirectory:v28];

  v12 = [UIImage imageWithContentsOfFile:v27];
  [(UIImageView *)self->_imageView setImage:v12];

  centerXAnchor = [(UIImageView *)self->_imageView centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v31[0] = v24;
  centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
  centerYAnchor2 = [viewCopy centerYAnchor];
  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v31[1] = v15;
  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  v23 = viewCopy;
  widthAnchor2 = [viewCopy widthAnchor];
  v18 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v31[2] = v18;
  heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
  heightAnchor2 = [viewCopy heightAnchor];
  v21 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v31[3] = v21;
  v22 = [NSArray arrayWithObjects:v31 count:4];

  [NSLayoutConstraint activateConstraints:v22];
}

- (void)createCustomStaticImageView:(id)view withIcon:(id)icon
{
  iconCopy = icon;
  viewCopy = view;
  v8 = objc_alloc_init(UIImageView);
  [viewCopy addSubview:v8];
  [(UIImageView *)v8 setBackgroundColor:0];
  [(UIImageView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  imageView = self->_imageView;
  self->_imageView = v8;
  v23 = v8;

  [(UIImageView *)self->_imageView setImage:iconCopy];
  centerXAnchor = [(UIImageView *)self->_imageView centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v24[0] = v20;
  centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
  centerYAnchor2 = [viewCopy centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v24[1] = v12;
  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  widthAnchor2 = [viewCopy widthAnchor];
  v15 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v24[2] = v15;
  heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
  heightAnchor2 = [viewCopy heightAnchor];

  v18 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v24[3] = v18;
  v19 = [NSArray arrayWithObjects:v24 count:4];

  [NSLayoutConstraint activateConstraints:v19];
}

- (id)createInUseConnectButton
{
  selfCopy = self;
  if (dword_10001EA10 <= 30)
  {
    if (dword_10001EA10 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10000D8A0(self, a2, v2);
    }
  }

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"CONNECT" value:&stru_1000188D8 table:0];

  v6 = SBUIIsSystemApertureEnabled();
  v7 = [UIButton buttonWithType:1];
  [v7 setTitle:v5 forState:0];
  v8 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  titleLabel = [v7 titleLabel];
  [titleLabel setFont:v8];

  if (v6)
  {
    titleLabel2 = [v7 titleLabel];
    [titleLabel2 setAdjustsFontSizeToFitWidth:1];

    titleLabel3 = [v7 titleLabel];
    [titleLabel3 setMinimumScaleFactor:0.5];

    v12 = +[UIColor systemBlueColor];
    v13 = [v12 colorWithAlphaComponent:0.4];
    [v7 setBackgroundColor:v13];

    [v7 _setCornerRadius:15.0];
    [v7 setUserInteractionEnabled:1];
    [v7 setContentEdgeInsets:{8.0, 16.0, 8.0, 16.0}];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor = [v7 widthAnchor];
    [v7 intrinsicContentSize];
    v15 = [widthAnchor constraintEqualToConstant:?];
    v22 = v15;
    v16 = &v22;
  }

  else
  {
    v17 = +[UIColor labelColor];
    [v7 setTintColor:v17];

    v18 = +[UIColor secondarySystemFillColor];
    [v7 setBackgroundColor:v18];

    [v7 _setCornerRadius:15.0];
    [v7 setUserInteractionEnabled:1];
    [v7 setContentEdgeInsets:{8.0, 16.0, 8.0, 16.0}];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor = [v7 widthAnchor];
    [v7 intrinsicContentSize];
    v15 = [widthAnchor constraintEqualToConstant:?];
    v21 = v15;
    v16 = &v21;
  }

  v19 = [NSArray arrayWithObjects:v16 count:1];
  [NSLayoutConstraint activateConstraints:v19];

  [v7 addTarget:selfCopy action:"handleTap:" forControlEvents:64];

  return v7;
}

- (id)createReverseButton
{
  v3 = +[UIButtonConfiguration tintedButtonConfiguration];
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:13.0];
  v5 = [UIImage systemImageNamed:@"arrow.uturn.backward"];
  v6 = [v5 imageWithRenderingMode:2];

  [v3 setImage:v6];
  [v3 setPreferredSymbolConfigurationForImage:v4];
  v7 = +[UIColor systemBlueColor];
  v8 = [v7 colorWithAlphaComponent:0.4];
  background = [v3 background];
  [background setBackgroundColor:v8];

  background2 = [v3 background];
  [background2 setCornerRadius:15.0];

  v11 = [SBUISystemApertureButton buttonWithConfiguration:v3 primaryAction:0];
  [v11 setConfiguration:v3];
  [v11 setUserInteractionEnabled:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [v11 widthAnchor];
  [v11 intrinsicContentSize];
  v14 = [widthAnchor constraintEqualToConstant:v13 + 30.0];
  v17 = v14;
  v15 = [NSArray arrayWithObjects:&v17 count:1];
  [NSLayoutConstraint activateConstraints:v15];

  [v11 addTarget:self action:"handleTap:" forControlEvents:64];

  return v11;
}

- (id)removedAccessoryColorCode:(id)code
{
  codeCopy = code;
  v4 = objc_alloc_init(NSString);
  v5 = [codeCopy componentsSeparatedByString:@"-"];
  v6 = [NSMutableArray arrayWithArray:v5];
  lastObject = [v5 lastObject];
  if ([lastObject length] <= 3)
  {
  }

  else
  {
    lastObject2 = [v5 lastObject];
    v9 = [lastObject2 containsString:@"default"];

    if (!v9)
    {
      lastObject3 = [v5 lastObject];
      if ([lastObject3 containsString:@"Case"])
      {
        v11 = [v6 objectAtIndex:{objc_msgSend(v6, "count") - 2}];
        v12 = [v11 length];

        if (v12 <= 2)
        {
          [v6 removeObjectAtIndex:{objc_msgSend(v6, "count") - 2}];
          v13 = [v6 componentsJoinedByString:@"-"];

          if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
          {
            sub_10000D8BC(v13);
          }

          goto LABEL_16;
        }
      }

      else
      {
      }

      v13 = codeCopy;

      goto LABEL_16;
    }
  }

  [v6 removeLastObject];
  v13 = [v6 componentsJoinedByString:@"-"];

  if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D8FC(v13);
  }

LABEL_16:

  return v13;
}

- (BOOL)checkifVideoAssetExists
{
  leadingAccessoryIconName = self->_leadingAccessoryIconName;
  if (leadingAccessoryIconName)
  {
    LOBYTE(leadingAccessoryIconName) = ![(NSString *)leadingAccessoryIconName containsString:@"8197"]&& ![(NSString *)self->_leadingAccessoryIconName containsString:@"8205"]&& ![(NSString *)self->_leadingAccessoryIconName containsString:@"8208"]&& ![(NSString *)self->_leadingAccessoryIconName containsString:@"8218"]&& ![(NSString *)self->_leadingAccessoryIconName containsString:@"8195"];
  }

  return leadingAccessoryIconName;
}

- (id)createMuteUnmuteButton:(id)button
{
  buttonCopy = button;
  v4 = +[UIButtonConfiguration tintedButtonConfiguration];
  v5 = [buttonCopy isEqualToString:@"mute"];

  if (v5)
  {
    v6 = @"mic.slash.fill";
  }

  else
  {
    v6 = @"mic.fill";
  }

  v7 = [UIImage systemImageNamed:v6];
  [v4 setImage:v7];
  v8 = [UIImageView alloc];
  [v7 size];
  v10 = v9;
  [v7 size];
  v12 = [v8 initWithFrame:{0.0, 0.0, v10, v11}];
  if (SBUIIsSystemApertureEnabled())
  {
    v13 = +[UIColor systemGray6Color];
    background = [v4 background];
    [background setBackgroundColor:v13];

    [v4 setCornerStyle:4];
    v15 = +[UIColor whiteColor];
    v16 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v15];

    [v7 size];
    v18 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:2 scale:v17];
    v19 = [v16 configurationByApplyingConfiguration:v18];
    [v12 setPreferredSymbolConfiguration:v19];
    v20 = +[UIColor whiteColor];
    [v12 setTintColor:v20];

    [v4 setPreferredSymbolConfigurationForImage:v19];
  }

  else
  {
    v21 = [UIBlurEffect effectWithStyle:8];
    v16 = [UIVibrancyEffect effectForBlurEffect:v21 style:6];

    v22 = +[UIColor systemGray6Color];
    background2 = [v4 background];
    [background2 setBackgroundColor:v22];

    background3 = [v4 background];
    [background3 setVisualEffect:v16];

    background4 = [v4 background];
    [background4 setCornerRadius:15.0];

    v26 = +[UIColor blackColor];
    v18 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v26];

    v19 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:2 scale:16.0];
    v27 = [v18 configurationByApplyingConfiguration:v19];
    [v12 setPreferredSymbolConfiguration:v27];
    v28 = +[UIColor blackColor];
    [v12 setTintColor:v28];

    [v4 setPreferredSymbolConfigurationForImage:v27];
  }

  v29 = [SBUISystemApertureButton buttonWithConfiguration:v4 primaryAction:0];
  [v29 setConfiguration:v4];
  [v29 setUserInteractionEnabled:1];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [v29 widthAnchor];
  [v29 intrinsicContentSize];
  v32 = [widthAnchor constraintEqualToConstant:v31 + 30.0];
  v35 = v32;
  v33 = [NSArray arrayWithObjects:&v35 count:1];
  [NSLayoutConstraint activateConstraints:v33];

  return v29;
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = BluetoothUIServiceBanner;
  [(BluetoothUIServiceBanner *)&v23 viewDidLoad];
  view = [(BluetoothUIServiceBanner *)self view];
  if ((SBUIIsSystemApertureEnabled() & 1) == 0)
  {
    [view addSubview:self->_pillView];
    leadingAnchor = [(PLPillView *)self->_pillView leadingAnchor];
    leadingAnchor2 = [view leadingAnchor];
    v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v6 setActive:1];

    trailingAnchor = [(PLPillView *)self->_pillView trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v9 setActive:1];

    topAnchor = [(PLPillView *)self->_pillView topAnchor];
    topAnchor2 = [view topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v12 setActive:1];

    bottomAnchor = [(PLPillView *)self->_pillView bottomAnchor];
    bottomAnchor2 = [view bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v15 setActive:1];
  }

  v16 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
  [v16 setNumberOfTapsRequired:1];
  [v16 setNumberOfTouchesRequired:1];
  if (!SBUIIsSystemApertureEnabled())
  {
    if (self->_bannerType == 2)
    {
      goto LABEL_11;
    }

    pillView = self->_pillView;
LABEL_10:
    [(PLPillView *)pillView addGestureRecognizer:v16];
    goto LABEL_11;
  }

  ccTopViewLabel = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
  [ccTopViewLabel setMarqueeRunning:1];

  ccBottomViewLabel = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
  [ccBottomViewLabel setMarqueeRunning:1];

  view2 = [(BluetoothUIServiceBanner *)self view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = os_transaction_create();
  bannerAssetTransaction = self->_bannerAssetTransaction;
  self->_bannerAssetTransaction = v20;

  [(SRBannerMediaPlayerView *)self->_mediaPlayerView setHidden:0];
  if (!self->_isReverseRouteBanner && !self->_isInUseBanner)
  {
    pillView = view;
    if (self->_bannerType != 2)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  if (dword_10001EA10 <= 30)
  {
    if (dword_10001EA10 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10000D93C(self, a2, v2);
    }
  }

  v4.receiver = selfCopy;
  v4.super_class = BluetoothUIServiceBanner;
  [(BluetoothUIServiceBanner *)&v4 viewWillLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = BluetoothUIServiceBanner;
  [(BluetoothUIServiceBanner *)&v3 viewWillAppear:appear];
  if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D958();
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BluetoothUIServiceBanner;
  [(BluetoothUIServiceBanner *)&v4 viewDidAppear:appear];
  if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D98C();
  }

  [(BluetoothUIServiceBanner *)self setBannerTimer];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = BluetoothUIServiceBanner;
  [(BluetoothUIServiceBanner *)&v3 viewWillDisappear:disappear];
  if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D9C0();
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = BluetoothUIServiceBanner;
  [(BluetoothUIServiceBanner *)&v8 viewDidDisappear:disappear];
  if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D9F4();
  }

  if ((SBUIIsSystemApertureEnabled() & 1) == 0)
  {
    if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
    {
      sub_10000DA28();
    }

    if (self->_bannerActive)
    {
      self->_bannerActive = 0;
      actionHandler = self->_actionHandler;
      if (actionHandler)
      {
        v5 = objc_retainBlock(actionHandler);
        v6 = v5;
        if (v5)
        {
          (*(v5 + 2))(v5, 2, 0);
        }

        v7 = self->_actionHandler;
        self->_actionHandler = 0;
      }
    }
  }
}

- (void)handleTap:(id)tap
{
  actionHandler = tap;
  v6 = actionHandler;
  if (dword_10001EA10 <= 50)
  {
    v10 = actionHandler;
    if (dword_10001EA10 != -1 || (actionHandler = _LogCategory_Initialize(), v6 = v10, actionHandler))
    {
      actionHandler = sub_10000DA5C(actionHandler, v6, v5);
      v6 = v10;
    }
  }

  if (self->_bannerActive)
  {
    actionHandler = self->_actionHandler;
    if (actionHandler)
    {
      v11 = v6;
      v7 = objc_retainBlock(actionHandler);
      v8 = v7;
      if (v7)
      {
        (*(v7 + 2))(v7, 1, 0);
      }

      v9 = self->_actionHandler;
      self->_actionHandler = 0;

      v6 = v11;
    }
  }

  _objc_release_x1(actionHandler, v6);
}

- (void)bannerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  v5 = dismissCopy;
  if (dword_10001EA10 <= 50)
  {
    v6 = dismissCopy;
    if (dword_10001EA10 != -1 || (dismissCopy = _LogCategory_Initialize(), v5 = v6, dismissCopy))
    {
      dismissCopy = sub_10000DA78(dismissCopy, v5, v4);
      v5 = v6;
    }
  }

  _objc_release_x1(dismissCopy, v5);
}

- (void)dismissBanner
{
  if (self->_bannerActive)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    bundleIdentifier = [v3 bundleIdentifier];
    v5 = [BNBannerSource bannerSourceForDestination:0 forRequesterIdentifier:bundleIdentifier];

    requestIdentifier = [(BluetoothUIServiceBanner *)self requestIdentifier];
    v17 = @"Key";
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v18 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v16 = 0;
    [v5 revokePresentableWithRequestIdentifier:requestIdentifier animated:1 reason:@"_BUISScheduledTimeout" userInfo:v9 error:&v16];
    v10 = v16;

    if (v10)
    {
      if (dword_10001EA10 <= 90 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
      {
        sub_10000DA94(v10);
      }
    }

    else
    {
      if (dword_10001EA10 <= 50 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
      {
        sub_10000DAD4();
      }

      self->_bannerActive = 0;
      bannerTransaction = self->_bannerTransaction;
      self->_bannerTransaction = 0;

      actionHandler = self->_actionHandler;
      if (actionHandler)
      {
        v13 = objc_retainBlock(actionHandler);
        v14 = v13;
        if (v13)
        {
          (*(v13 + 2))(v13, 6, 0);
        }

        v15 = self->_actionHandler;
        self->_actionHandler = 0;
      }
    }
  }
}

- (void)setBannerTimer
{
  if ((SBUIIsSystemApertureEnabled() & 1) == 0)
  {
    bannerTimeoutInSeconds = self->_bannerTimeoutInSeconds;
    if (bannerTimeoutInSeconds != 0.0)
    {
      if (dword_10001EA10 <= 50)
      {
        if (dword_10001EA10 != -1 || (v4 = _LogCategory_Initialize(), bannerTimeoutInSeconds = self->_bannerTimeoutInSeconds, v4))
        {
          LogPrintF(&dword_10001EA10, "[BluetoothUIServiceBanner setBannerTimer]", 50, "Starting timer of %.0f", bannerTimeoutInSeconds);
          bannerTimeoutInSeconds = self->_bannerTimeoutInSeconds;
        }
      }

      v5 = dispatch_time(0, (bannerTimeoutInSeconds * 1000000000.0));
      bannerTimer = self->_bannerTimer;
      if (bannerTimer)
      {

        dispatch_source_set_timer(bannerTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      else
      {
        v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
        v8 = self->_bannerTimer;
        self->_bannerTimer = v7;

        v9 = self->_bannerTimer;
        if (v9)
        {
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_10000B218;
          handler[3] = &unk_1000185C8;
          handler[4] = self;
          dispatch_source_set_event_handler(v9, handler);
          dispatch_source_set_timer(self->_bannerTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
          dispatch_resume(self->_bannerTimer);
        }

        else
        {
          v10 = sub_10000DB08();
          sub_10000B218(v10);
        }
      }
    }
  }
}

- (void)_stopPlayback
{
  if (SBUIIsSystemApertureEnabled())
  {
    [(SRBannerMediaPlayerView *)self->_mediaPlayerView stop];
    mediaPlayerViewFirstInstance = self->_mediaPlayerViewFirstInstance;
    if (mediaPlayerViewFirstInstance)
    {
      [(SRBannerMediaPlayerView *)mediaPlayerViewFirstInstance stop];
    }

    ccTopViewLabel = [(BluetoothUIServiceBanner *)self ccTopViewLabel];
    [ccTopViewLabel setMarqueeRunning:0];

    ccBottomViewLabel = [(BluetoothUIServiceBanner *)self ccBottomViewLabel];
    [ccBottomViewLabel setMarqueeRunning:0];

    bannerAssetTransaction = self->_bannerAssetTransaction;
    self->_bannerAssetTransaction = 0;
  }
}

- (UIEdgeInsets)bannerContentOutsets
{
  [(BluetoothUIServiceBanner *)self loadViewIfNeeded];
  pillView = self->_pillView;

  [(PLPillView *)pillView shadowOutsets];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  [(PLPillView *)self->_pillView intrinsicContentSize:size.width];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (id)_bundleID
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B3C0;
  block[3] = &unk_100018610;
  block[4] = self;
  if (qword_10001EDE8 != -1)
  {
    dispatch_once(&qword_10001EDE8, block);
  }

  v2 = qword_10001EDE0;

  return v2;
}

- (NSString)requesterIdentifier
{
  v2 = objc_opt_class();

  return [v2 _bundleID];
}

- (NSString)requestIdentifier
{
  if (!self->_requestIdentifier)
  {
    identifier = self->_identifier;
    if (identifier)
    {
      v4 = identifier;
      requestIdentifier = self->_requestIdentifier;
      self->_requestIdentifier = v4;
    }

    else
    {
      requestIdentifier = +[NSUUID UUID];
      uUIDString = [requestIdentifier UUIDString];
      v7 = self->_requestIdentifier;
      self->_requestIdentifier = uUIDString;
    }
  }

  if (dword_10001EA10 <= 30 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
  {
    sub_10000DB20(&self->_requestIdentifier);
  }

  v8 = self->_requestIdentifier;

  return v8;
}

- (BluetoothUIServiceBanner)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v218.receiver = self;
  v218.super_class = BluetoothUIServiceBanner;
  v7 = [(BluetoothUIServiceBanner *)&v218 initWithNibName:0 bundle:0];
  if (!v7)
  {
LABEL_182:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003F94;
    block[3] = &unk_1000185C8;
    v142 = v7;
    v217 = v142;
    dispatch_async(&_dispatch_main_q, block);
    v32 = v142;

    goto LABEL_183;
  }

  if (xpc_get_type(objectCopy) != &_xpc_type_dictionary)
  {
    if (error)
    {
      NSErrorF(NSOSStatusErrorDomain, 4294960540, "XPC non-dict");
      *error = v32 = 0;
      goto LABEL_183;
    }

    goto LABEL_120;
  }

  if (SBUIIsSystemApertureEnabled())
  {
    v8 = *(v7 + 45);
    if (!v8)
    {
      v8 = sub_10000BA14([SRHostedJindoPresentableAccessoryView alloc], 100.0);
      if (*(v7 + 42))
      {
        v9 = [*(v7 + 43) containsString:@"mute"];
        v10 = 30.0;
        if (v9)
        {
          v10 = 28.0;
        }
      }

      else
      {
        v10 = 30.0;
      }

      [v8 setCompactSize:{v10, v10}];
    }

    v17 = *(v7 + 46);
    if (!v17)
    {
      v17 = sub_10000BA14([SRHostedJindoPresentableAccessoryView alloc], 100.0);
      [v17 setCompactSize:{20.0, 20.0}];
    }

    v18 = *(v7 + 25);
    *(v7 + 25) = v8;
    v16 = v8;

    v19 = *(v7 + 35);
    LODWORD(v213) = 280;
    *(v7 + 35) = v17;
    v20 = v17;

    v21 = sub_10000BA14([SRHostedJindoPresentableAccessoryView alloc], 100.0);
    v22 = *(v7 + 31);
    *(v7 + 31) = v21;

    [*(v7 + 31) setCompactSize:{20.0, 20.0}];
  }

  else
  {
    v11 = sub_10000BA14([UIView alloc], 44.0);
    v12 = *(v7 + 25);
    *(v7 + 25) = v11;

    v13 = sub_10000BA14([UIView alloc], 40.0);
    v14 = *(v7 + 35);
    *(v7 + 35) = v13;

    v15 = objc_alloc_init(NSMutableArray);
    v16 = *(v7 + 14);
    *(v7 + 14) = v15;
    LODWORD(v213) = 280;
  }

  batteryLevelIndicator2 = 320;
  v219 = 0;
  v24 = CUXPCDecodeUInt64RangedEx();
  if (v24 == 6)
  {
    v7[80] = v219;
  }

  else if (v24 == 5)
  {
    goto LABEL_120;
  }

  sub_10000BA34();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_120;
  }

  sub_10000BA34();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_120;
  }

  sub_10000BA44();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_120;
  }

  sub_10000BA44();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_120;
  }

  sub_10000BA44();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_120;
  }

  v219 = 0;
  v25 = CUXPCDecodeSInt64RangedEx();
  if (v25 != 6)
  {
    if (v25 != 5)
    {
      v26 = 0;
      goto LABEL_27;
    }

LABEL_120:
    v32 = 0;
    goto LABEL_183;
  }

  v26 = v219;
LABEL_27:
  v7[8] = v26;
  sub_10000BA34();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_120;
  }

  v215 = 208;
  sub_10000BA34();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_120;
  }

  sub_10000BA44();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_120;
  }

  v214 = 256;
  sub_10000BA34();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_120;
  }

  v211 = 216;
  sub_10000BA44();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_120;
  }

  v210 = 264;
  sub_10000BA44();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_120;
  }

  LODWORD(v212) = 200;
  sub_10000BA44();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_120;
  }

  v27 = 80;
  sub_10000BA44();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_120;
  }

  v28 = &selRef_setBannerTimer;
  if (dword_10001EA10 <= 50 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
  {
    v29 = v7[80];
    if (v29 > 4)
    {
      v30 = "?";
    }

    else
    {
      v30 = (&off_100018630)[v29];
    }

    v182 = *(v7 + 32);
    v189 = v30;
    v168 = *(v7 + 26);
    v175 = *(v7 + 34);
    v154 = *(v7 + 12);
    v161 = *(v7 + 13);
    LogPrintF(&dword_10001EA10, "[BluetoothUIServiceBanner initWithXPCObject:error:]", 50, "Post Banner ccText %@, ccItemsIcon %@ ccItemsText %@ leadingAccessoryIconName %@ trailingAccessoryText %@ trailingAccessoryIconName %@ bannerType: %s", *(v7 + 11));
  }

  v31 = v7[80];
  if (v31 == 3)
  {
    [v7 _showHIDConnectedBanner];
    goto LABEL_49;
  }

  if (v31 != 2)
  {
    if ([*(v7 + 34) containsString:@"InUse"])
    {
      [v7 _showInUseBanner];
      goto LABEL_49;
    }

    v33 = *(v7 + 11);
    if (!v33)
    {
      HIDWORD(v203) = 0;
      goto LABEL_62;
    }

    HIDWORD(v203) = [v33 isEqualToString:@"AirPods Case"];
    if (!HIDWORD(v203))
    {
LABEL_57:
      if (SBUIIsSystemApertureEnabled())
      {
        if (([*(v7 + 34) containsString:@"Reverse"] & 1) == 0)
        {
          [v7 _createccBottomViewLabel:*(v7 + 11)];
        }
      }

      else
      {
        v40 = [[PLPillContentItem alloc] initWithText:*(v7 + 11) style:1];
        v41 = *(v7 + 15);
        *(v7 + 15) = v40;

        v28 = &selRef_setBannerTimer;
        [*(v7 + 14) addObject:*(v7 + 15)];
      }

LABEL_62:
      v42 = *(v7 + 12);
      v43 = *(v7 + 13);
      if (v42)
      {
        if (v43)
        {
          v27 = &off_100011000;
          batteryLevelIndicator2 = &NSStringFromClass_ptr;
          if ([v42 isEqualToString:@"LowBattery"])
          {
            v44 = [[_UIStaticBatteryView alloc] initWithSizeCategory:0];
            [v44 setChargingState:0];
            [v44 setChargePercent:*(v7 + 28)];
            v45 = 0.2;
            if (HIDWORD(v203))
            {
              v45 = 0.25;
            }

            [v44 setLowBatteryChargePercentThreshold:v45];
            if (SBUIIsSystemApertureEnabled())
            {
              sub_10000BA88(195);
              v46 = +[NSBundle mainBundle];
              v47 = [v46 localizedStringForKey:@"LOW_BATTERY" value:&stru_1000188D8 table:0];

              v27 = +[UIColor systemRedColor];
              [v7 _createccTopViewLabel:v27 labelString:v47];
              [v7 _createBatteryView];
              [*(v7 + 13) doubleValue];
              v49 = v48 / 100.0;
              batteryLevelIndicator = [v7 batteryLevelIndicator];
              [batteryLevelIndicator setPercentageLevel:v49];

              [v7 _checkValidBatteryRange];
              [v7 _fillBatteryPercentage];
              batteryLevelIndicator2 = [v7 batteryLevelIndicator];
              v51 = +[UIColor systemRedColor];
              [batteryLevelIndicator2 setColorforPercentageLabel:v51];

              [v7 batteryLevelIndicator];
              objc_claimAutoreleasedReturnValue();
              sub_10000BA7C();
              [v52 setShowsPercentageLabel:?];
            }

            else
            {
              v66 = [[PLPillContentItem alloc] initWithText:*(v7 + 13) style:2 accessoryView:v44];
              v47 = *(v7 + 20);
              *(v7 + 20) = v66;
            }

            goto LABEL_147;
          }

LABEL_148:
          if (*(v7 + 20))
          {
            [*(v7 + 14) addObject:?];
          }

          v133 = *&v7[v215 / 4];
          if (v133)
          {
            if ([v133 containsString:@"Headset"])
            {
              [v7 createGenericHeadphoneView:*(v7 + v212)];
            }

            else if ([*&v7[v215 / 4] containsString:@"Speaker"])
            {
              [v7 createGenericSpeakerView:*(v7 + v212)];
            }

            else if (SBUIIsSystemApertureEnabled())
            {
              if ([v7 checkifVideoAssetExists])
              {
                sub_10000BA88(192);
                [sub_10000BA6C() createCustomAVPlayerLayerView:? WithCustomIconName:?];
                if ((v7[49] & 1) == 0)
                {
                  [v7 createCustomAVPlayerLayerView:*(v7 + 31) WithCustomIconName:*&v7[v215 / 4]];
                }
              }

              else
              {
                [sub_10000BA6C() createCustomStaticImageView:? WithCustomIconName:?];
                if ((v7[49] & 1) == 0)
                {
                  [v7 createCustomStaticImageView:*(v7 + 31) WithCustomIconName:*&v7[v215 / 4]];
                }
              }
            }

            else
            {
              [sub_10000BA6C() createCustomView:? WithCustomIconName:?];
            }
          }

          else if (*&v7[v211 / 4])
          {
            [v7 createCustomView:*(v7 + v212) WithCustomIconPath:?];
          }

          if (*&v7[v214 / 4])
          {
            [v7 createCustomView:*(v7 + v213) WithCustomIconName:?];
          }

          else if (*&v7[v210 / 4])
          {
            [v7 createCustomView:*(v7 + v213) WithCustomIconPath:?];
          }

          else
          {
            v136 = *(v7 + 34);
            if (v136)
            {
              if ([v136 containsString:@"Reverse"])
              {
                if (SBUIIsSystemApertureEnabled())
                {
                  createReverseButton = [v7 createReverseButton];
                  [*(v7 + v213) addSubview:createReverseButton];
                  [createReverseButton setTranslatesAutoresizingMaskIntoConstraints:0];
                  [createReverseButton widthAnchor];
                  objc_claimAutoreleasedReturnValue();
                  [sub_10000BA94() widthAnchor];
                  objc_claimAutoreleasedReturnValue();
                  [sub_10000BA50() constraintEqualToAnchor:?];
                  objc_claimAutoreleasedReturnValue();
                  sub_10000BA7C();
                  [v138 setActive:?];

                  [createReverseButton heightAnchor];
                  objc_claimAutoreleasedReturnValue();
                  [sub_10000BA94() heightAnchor];
                  objc_claimAutoreleasedReturnValue();
                  [sub_10000BA50() constraintEqualToAnchor:?];
                  objc_claimAutoreleasedReturnValue();
                  sub_10000BA7C();
                  [v139 setActive:?];

                  [createReverseButton centerXAnchor];
                  objc_claimAutoreleasedReturnValue();
                  [sub_10000BA94() centerXAnchor];
                  objc_claimAutoreleasedReturnValue();
                  [sub_10000BA50() constraintEqualToAnchor:?];
                  objc_claimAutoreleasedReturnValue();
                  sub_10000BA7C();
                  [v140 setActive:?];

                  [createReverseButton centerYAnchor];
                  objc_claimAutoreleasedReturnValue();
                  [sub_10000BA94() centerYAnchor];
                  objc_claimAutoreleasedReturnValue();
                  [sub_10000BA50() constraintEqualToAnchor:?];
                  objc_claimAutoreleasedReturnValue();
                  sub_10000BA7C();
                  [v141 setActive:?];
                }

                else
                {
                  v144 = [[UIView alloc] initWithFrame:{0.0, 0.0, 22.0, 22.0}];
                  v145 = *(v7 + v213);
                  *(v7 + v213) = v144;

                  [v7 createCustomViewForNativeReverseSymbol:*(v7 + v213)];
                }
              }

              else
              {
                [v7 createCustomViewFromUILabel:*(v7 + v213) WithStr:*(v7 + 34)];
              }
            }
          }

          if (SBUIIsSystemApertureEnabled())
          {
            objc_storeStrong(v7 + 45, *(v7 + v212));
            v134 = *(v7 + v213);
            v135 = *(v7 + 46);
            *(v7 + 46) = v134;
          }

          else
          {
            v135 = [[PLPillView alloc] initWithLeadingAccessoryView:*(v7 + v212) trailingAccessoryView:*(v7 + v213)];
            [v135 setTranslatesAutoresizingMaskIntoConstraints:0];
            objc_storeStrong(v7 + 38, v135);
            if (*(v7 + 14))
            {
              [*(v7 + 38) setCenterContentItems:?];
            }

            else if (dword_10001EA10 <= 90 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_10001EA10, "[BluetoothUIServiceBanner initWithXPCObject:error:]", 90, "PLPillView center items are empty");
            }
          }

          goto LABEL_182;
        }

        v62 = sub_10000BA14([UIView alloc], 40.0);
        v63 = *(v7 + 21);
        *(v7 + 21) = v62;

        [v7 createCustomView:*(v7 + 21) WithCustomIconName:*(v7 + 12)];
        [*(v7 + 21) intrinsicContentSize];
        v64 = [[PLPillContentItem alloc] initWithAccessoryView:*(v7 + 21)];
        goto LABEL_98;
      }

      if (!v43)
      {
        goto LABEL_148;
      }

      if (![*(v7 + 13) containsString:@"Connected"])
      {
        if ([*(v7 + 34) containsString:@"Reverse"])
        {
          sub_10000BA88(196);
          GestaltProductTypeStringToDeviceClass();
          v44 = CUAddSuffixForDeviceClass();
          if (SBUIIsSystemApertureEnabled())
          {
            v65 = +[UIColor systemWhiteColor];
            v27 = +[NSBundle mainBundle];
            batteryLevelIndicator2 = [v27 localizedStringForKey:v44 value:&stru_1000188D8 table:0];
            [v7 _createccTopViewLabel:v65 labelString:batteryLevelIndicator2];
          }

          else
          {
            v67 = [PLPillContentItem alloc];
            v65 = +[NSBundle mainBundle];
            v27 = [v65 localizedStringForKey:v44 value:&stru_1000188D8 table:0];
            v68 = [v67 initWithText:v27 style:2 accessoryView:*(v7 + 21)];
            batteryLevelIndicator2 = *(v7 + 20);
            *(v7 + 20) = v68;
          }

          goto LABEL_147;
        }

        v64 = [[PLPillContentItem alloc] initWithText:*(v7 + 13) style:2];
LABEL_98:
        v44 = *(v7 + 20);
        *(v7 + 20) = v64;
LABEL_147:

        goto LABEL_148;
      }

      if (*(v7 + 11))
      {
        if (([*(v7 + 26) containsString:@"8194"] & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8207") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8206") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8197") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8195") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8205") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8208") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8210") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8221") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8209") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8211") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8212") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8228") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8214") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8230") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8217") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8219") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8222") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8224") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8239") & 1) != 0 || (objc_msgSend(*(v7 + 26), "containsString:", @"8231") & 1) != 0 || (v53 = objc_msgSend(*(v7 + 26), "containsString:", @"8203"), v53))
        {
          v61 = *(v28 + 644);
          if (v61 <= 50 && (v61 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_10001EA10, "[BluetoothUIServiceBanner initWithXPCObject:error:]", 50, "CONNECTED_EARBUDS");
          }

          v69 = +[NSBundle mainBundle];
          v70 = v69;
          v71 = @"CONNECTED_EARBUDS";
LABEL_139:
          batteryLevelIndicator2 = [(__CFString *)v69 localizedStringForKey:v71 value:&stru_1000188D8 table:0];
          v44 = [NSString stringWithFormat:batteryLevelIndicator2, *(v7 + 13)];
LABEL_140:

          if (SBUIIsSystemApertureEnabled())
          {
            sub_10000BA88(136);
            v121 = +[UIColor systemGrayColor];
            [v7 _createccTopViewLabel:v121 labelString:v44];
            [v7 _createBatteryView];
            v122 = [NSString stringWithFormat:@"%.2f", *(v7 + 10)];
            [v122 doubleValue];
            v124 = v123;
            batteryLevelIndicator3 = [v7 batteryLevelIndicator];
            [batteryLevelIndicator3 setPercentageLevel:v124];

            [v7 _checkValidBatteryRange];
            [v7 _fillBatteryPercentage];
            v27 = [UIColor colorWithRed:0.2728 green:0.9028 blue:0.4567 alpha:1.0];
            batteryLevelIndicator4 = [v7 batteryLevelIndicator];
            [batteryLevelIndicator4 percentageLevel];
            v128 = v127;

            batteryLevelIndicator5 = [v7 batteryLevelIndicator];
            v130 = batteryLevelIndicator5;
            if (v128 <= 0.2)
            {
              v132 = +[UIColor systemRedColor];
              [v130 setColorforPercentageLabel:v132];
            }

            else
            {
              [batteryLevelIndicator5 setColorforPercentageLabel:v27];
            }

            batteryLevelIndicator2 = [v7 batteryLevelIndicator];
            [batteryLevelIndicator2 setShowsPercentageLabel:0];
          }

          else
          {
            v131 = [[PLPillContentItem alloc] initWithText:v44 style:2 accessoryView:*(v7 + 21)];
            v121 = *(v7 + 20);
            *(v7 + 20) = v131;
          }

          goto LABEL_147;
        }

        if (*(v7 + 11))
        {
          v72 = [sub_10000BA60(v53 v54];
          if (v72 & 1) != 0 || (v80 = [sub_10000BA60(v72 v73], (v80) || (v88 = objc_msgSend(sub_10000BA60(v80, v81, v82, v83, v84, v85, v86, v87, v149, v156, v163, v170, v177, v184, v191, v198, v205, v210, v211, v212, v213, v214, v215), "containsString:", @"8204"), (v88) || (v96 = objc_msgSend(sub_10000BA60(v88, v89, v90, v91, v92, v93, v94, v95, v150, v157, v164, v171, v178, v185, v192, v199, v206, v210, v211, v212, v213, v214, v215), "containsString:", @"8202"), (v96) || (v104 = objc_msgSend(sub_10000BA60(v96, v97, v98, v99, v100, v101, v102, v103, v151, v158, v165, v172, v179, v186, v193, v200, v207, v210, v211, v212, v213, v214, v215), "containsString:", @"8223"), (v104) || (v112 = objc_msgSend(sub_10000BA60(v104, v105, v106, v107, v108, v109, v110, v111, v152, v159, v166, v173, v180, v187, v194, v201, v208, v210, v211, v212, v213, v214, v215), "containsString:", @"8229"), (v112) || objc_msgSend(sub_10000BA60(v112, v113, v114, v115, v116, v117, v118, v119, v153, v160, v167, v174, v181, v188, v195, v202, v209, v210, v211, v212, v213, v214, v215), "containsString:", @"8201"))
          {
            v70 = @"CONNECTED_OVEREAR_HEADPHONES";
            if (v7[80] == 4)
            {
              v70 = [NSString stringWithFormat:@"%@_%@", @"CONNECTED_OVEREAR_HEADPHONES", @"VIA_USB"];
            }

            if (dword_10001EA10 <= 50 && (dword_10001EA10 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_10001EA10, "[BluetoothUIServiceBanner initWithXPCObject:error:]", 50, "Getting localization from key %@", v70);
            }

            batteryLevelIndicator2 = +[NSBundle mainBundle];
            v146 = [batteryLevelIndicator2 localizedStringForKey:v70 value:&stru_1000188D8 table:0];
            v44 = [NSString stringWithFormat:v146, *(v7 + 13)];

            goto LABEL_140;
          }
        }
      }

      v120 = *(v28 + 644);
      if (v120 <= 50 && (v120 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_10001EA10, "[BluetoothUIServiceBanner initWithXPCObject:error:]", 50, "CONNECTED");
      }

      v69 = +[NSBundle mainBundle];
      v70 = v69;
      v71 = @"CONNECTED";
      goto LABEL_139;
    }

    if (([*(v7 + 26) containsString:@"8203"] & 1) != 0 || objc_msgSend(*(v7 + 26), "containsString:", @"8221"))
    {
      v34 = +[NSBundle mainBundle];
      v35 = v34;
      v36 = @"POWERBEATS_PRO_CASE";
    }

    else if ([*(v7 + 26) containsString:@"8210"])
    {
      v34 = +[NSBundle mainBundle];
      v35 = v34;
      v36 = @"BEATS_FIT_PRO_CASE";
    }

    else if ([*(v7 + 26) containsString:@"8209"])
    {
      v34 = +[NSBundle mainBundle];
      v35 = v34;
      v36 = @"BEATS_STUDIO_BUDS_CASE";
    }

    else if ([*(v7 + 26) containsString:@"8214"])
    {
      v34 = +[NSBundle mainBundle];
      v35 = v34;
      v36 = @"BEATS_STUDIO_BUDS_PLUS_CASE";
    }

    else
    {
      LODWORD(v203) = [*(v7 + 26) containsString:@"8239"];
      v34 = +[NSBundle mainBundle];
      v35 = v34;
      if (v203)
      {
        v36 = @"POWERBEATS_FIT_CASE";
        v37 = @"Localizable-B494b";
        goto LABEL_56;
      }

      v36 = @"AIRPODS_CASE";
    }

    v37 = 0;
LABEL_56:
    v38 = [v34 localizedStringForKey:v36 value:&stru_1000188D8 table:v37];
    v39 = *(v7 + 11);
    *(v7 + 11) = v38;

    v28 = &selRef_setBannerTimer;
    goto LABEL_57;
  }

  [v7 _showMuteBanner];
LABEL_49:
  v32 = v7;
LABEL_183:

  return v32;
}

@end