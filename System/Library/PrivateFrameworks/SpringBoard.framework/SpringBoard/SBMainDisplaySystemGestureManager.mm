@interface SBMainDisplaySystemGestureManager
- (BOOL)_isGestureWithTypeAllowed:(unint64_t)allowed;
- (BOOL)_shouldEnableSystemGestureWithType:(unint64_t)type;
- (BOOL)shouldSystemGestureReceiveTouchWithLocation:(CGPoint)location ignoringUCB:(BOOL)b;
- (SBMainDisplaySystemGestureManager)initWithDisplayIdentity:(id)identity;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (void)dealloc;
- (void)setSystemGesturesDisabledForAccessibility:(BOOL)accessibility;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
@end

@implementation SBMainDisplaySystemGestureManager

- (SBMainDisplaySystemGestureManager)initWithDisplayIdentity:(id)identity
{
  identityCopy = identity;
  if (__sharedInstance_3)
  {
    [(SBMainDisplaySystemGestureManager *)a2 initWithDisplayIdentity:?];
  }

  v10.receiver = self;
  v10.super_class = SBMainDisplaySystemGestureManager;
  v7 = [(SBSystemGestureManager *)&v10 _initWithDisplayIdentity:identityCopy];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 23, identity);
    v8->_multitaskingGesturesEnabled = BSSystemHasCapability();
    [(SBSystemGestureManager *)v8 _evaluateEnablement];
  }

  objc_storeStrong(&__sharedInstance_3, v8);

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBMainDisplaySystemGestureManager;
  [(SBMainDisplaySystemGestureManager *)&v4 dealloc];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBMainDisplaySystemGestureManager;
  v4 = [(SBSystemGestureManager *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendBool:self->_multitaskingGesturesEnabled withName:@"_multitaskingGesturesEnabled"];

  return v4;
}

- (BOOL)_isGestureWithTypeAllowed:(unint64_t)allowed
{
  v39 = *MEMORY[0x277D85DE8];
  windowSceneManager = [SBApp windowSceneManager];
  v6 = [windowSceneManager windowSceneForDisplayIdentity:self->_displayIdentity];

  homeScreenController = [v6 homeScreenController];
  isIconListViewTornDown = [homeScreenController isIconListViewTornDown];
  iconManager = [homeScreenController iconManager];
  isFolderScrolling = [iconManager isFolderScrolling];

  if ((isIconListViewTornDown & 1) != 0 || !isFolderScrolling)
  {
    v34.receiver = self;
    v34.super_class = SBMainDisplaySystemGestureManager;
    v14 = [(SBSystemGestureManager *)&v34 _isGestureWithTypeAllowed:allowed];
    v15 = +[SBSetupManager sharedInstance];
    isInSetupMode = [v15 isInSetupMode];

    if (isInSetupMode)
    {
      v17 = +[SBSetupManager sharedInstance];
      isInSetupModeReadyToExit = [v17 isInSetupModeReadyToExit];

      v20 = allowed == 2 || allowed == 7;
      if (isInSetupModeReadyToExit)
      {
        v23 = allowed == 42 || allowed == 12 || (allowed & 0xFFFFFFFFFFFFFFFBLL) == 35;
      }

      else
      {
        v23 = 0;
      }

      v14 = v20 || v23;
    }

    else
    {
      v24 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
      policyAggregator = [v24 policyAggregator];
      v33 = 0;
      v26 = [policyAggregator allowsCapability:7 explanation:&v33];
      v27 = v33;

      if ((v26 & 1) == 0)
      {
        v29 = SBLogSystemGestureDetail(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          displayIdentity = self->_displayIdentity;
          v31 = @"(unknown reason)";
          if (v27)
          {
            v31 = v27;
          }

          *buf = 138543618;
          v36 = displayIdentity;
          v37 = 2112;
          v38 = v31;
          _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_INFO, "(Display - %{public}@) Not allowing system gestures because: %@", buf, 0x16u);
        }

        v14 = 0;
      }
    }
  }

  else
  {
    v12 = SBLogSystemGestureDetail(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = self->_displayIdentity;
      *buf = 138543362;
      v36 = v13;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "(Display - %{public}@) Not allowing system gestures because we are scrolling a folder", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)_shouldEnableSystemGestureWithType:(unint64_t)type
{
  multitaskingGesturesEnabled = 1;
  switch(type)
  {
    case 0uLL:
    case 0x44uLL:
    case 0x91uLL:
      goto LABEL_24;
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x3AuLL:
    case 0x3CuLL:
    case 0x3DuLL:
    case 0x3EuLL:
    case 0x3FuLL:
    case 0x47uLL:
    case 0x69uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x78uLL:
    case 0x79uLL:
    case 0x7AuLL:
    case 0x7BuLL:
      if (!__sb__runningInSpringBoard())
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        multitaskingGesturesEnabled = [currentDevice userInterfaceIdiom] == 1;
        goto LABEL_6;
      }

      v5 = SBFEffectiveDeviceClass() == 2;
LABEL_8:
      multitaskingGesturesEnabled = v5;
      return multitaskingGesturesEnabled & 1;
    case 0xCuLL:
    case 0xDuLL:
      if (__sb__runningInSpringBoard())
      {
        if (SBFEffectiveDeviceClass() != 2)
        {
          goto LABEL_24;
        }

        multitaskingGesturesEnabled = self->_multitaskingGesturesEnabled;
      }

      else
      {
        currentDevice2 = [MEMORY[0x277D75418] currentDevice];
        multitaskingGesturesEnabled = [currentDevice2 userInterfaceIdiom] == 1 && self->_multitaskingGesturesEnabled;
LABEL_37:
      }

      return multitaskingGesturesEnabled & 1;
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x33uLL:
      windowSceneManager = [SBApp windowSceneManager];
      v7 = [windowSceneManager windowSceneForDisplayIdentity:self->_displayIdentity];
      supportsMultitasking = [v7 supportsMultitasking];

      return supportsMultitasking;
    case 0x31uLL:
    case 0x32uLL:
      currentDevice2 = [SBApp windowSceneManager];
      v12 = [currentDevice2 windowSceneForDisplayIdentity:self->_displayIdentity];
      if ([v12 supportsMultitasking])
      {
        multitaskingGesturesEnabled = SBFIsChamoisOverflowGestureAvailable();
      }

      else
      {
        multitaskingGesturesEnabled = 0;
      }

      goto LABEL_37;
    case 0x35uLL:
    case 0x63uLL:
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x68uLL:
      v5 = SBFEffectiveHomeButtonType() == 2;
      goto LABEL_8;
    case 0x87uLL:
    case 0x88uLL:

      return SBUIIsSystemApertureEnabled();
    case 0x8AuLL:
      systemActionControl = [SBApp systemActionControl];
      multitaskingGesturesEnabled = systemActionControl != 0;

      return multitaskingGesturesEnabled & 1;
    case 0x8BuLL:
    case 0x8CuLL:
      if (!+[SBCaptureHardwareButton isCaptureFeatureEnabled])
      {
        goto LABEL_24;
      }

      if ((+[SBCaptureHardwareButton deviceSupportsCaptureButton]& 1) != 0)
      {
        multitaskingGesturesEnabled = 1;
        return multitaskingGesturesEnabled & 1;
      }

      return +[SBCaptureHardwareButton simulateCaptureButtonWithActionButton];
    case 0x8DuLL:
    case 0x8EuLL:
    case 0x8FuLL:
      if (!__sb__runningInSpringBoard())
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice userInterfaceIdiom] == 1)
        {
          multitaskingGesturesEnabled = _UIEnhancedMainMenuEnabled();
        }

        else
        {
          multitaskingGesturesEnabled = 0;
        }

LABEL_6:

        return multitaskingGesturesEnabled & 1;
      }

      if (SBFEffectiveDeviceClass() != 2)
      {
LABEL_24:
        multitaskingGesturesEnabled = 0;
        return multitaskingGesturesEnabled & 1;
      }

      return _UIEnhancedMainMenuEnabled();
    default:
      return multitaskingGesturesEnabled & 1;
  }
}

- (BOOL)shouldSystemGestureReceiveTouchWithLocation:(CGPoint)location ignoringUCB:(BOOL)b
{
  bCopy = b;
  y = location.y;
  x = location.x;
  v42 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = SBMainDisplaySystemGestureManager;
  v7 = [(SBSystemGestureManager *)&v30 shouldSystemGestureReceiveTouchWithLocation:?];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allVisiblePeripheralFrames = [MEMORY[0x277D75830] allVisiblePeripheralFrames];
  v9 = [allVisiblePeripheralFrames countByEnumeratingWithState:&v26 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(allVisiblePeripheralFrames);
        }

        [*(*(&v26 + 1) + 8 * i) CGRectValue];
        if (v13 > 60.0)
        {

          v15 = 0;
          goto LABEL_12;
        }
      }

      v10 = [allVisiblePeripheralFrames countByEnumeratingWithState:&v26 objects:v41 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
  v16 = 1;
  if (!bCopy)
  {
LABEL_12:
    v14 = [MEMORY[0x277D75830] pointIsWithinKeyboardContent:{x, y}];
    v16 = v14 ^ 1;
  }

  v17 = v7 & v16;
  v18 = SBLogSystemGestureAppSwitcher(v14);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v43.x = x;
    v43.y = y;
    v19 = NSStringFromPoint(v43);
    v20 = v19;
    v21 = @"NO";
    if (v17)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    *buf = 138413314;
    v32 = v19;
    if (bCopy)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v34 = v22;
    v33 = 2112;
    if (v15)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v35 = 2112;
    v36 = v23;
    if (!v16)
    {
      v21 = @"YES";
    }

    v37 = 2112;
    v38 = v24;
    v39 = 2112;
    v40 = v21;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Should system gesture recieve touch with location:%@ <%@> ignoringUCB:%@ keyboardIsUCB:%@ touchIsInsideKeyboard:%@", buf, 0x34u);
  }

  return v17;
}

- (void)setSystemGesturesDisabledForAccessibility:(BOOL)accessibility
{
  accessibilityCopy = accessibility;
  v11.receiver = self;
  v11.super_class = SBMainDisplaySystemGestureManager;
  [(SBSystemGestureManager *)&v11 setSystemGesturesDisabledForAccessibility:?];
  accessibilityZStackParticipant = [(SBMainDisplaySystemGestureManager *)self accessibilityZStackParticipant];

  if (!accessibilityCopy || accessibilityZStackParticipant)
  {
    if (!accessibilityCopy)
    {
      if (accessibilityZStackParticipant)
      {
        accessibilityZStackParticipant2 = [(SBMainDisplaySystemGestureManager *)self accessibilityZStackParticipant];
        [accessibilityZStackParticipant2 invalidate];

        [(SBMainDisplaySystemGestureManager *)self setAccessibilityZStackParticipant:0];
      }
    }
  }

  else
  {
    windowSceneManager = [SBApp windowSceneManager];
    v7 = [windowSceneManager windowSceneForDisplayIdentity:self->_displayIdentity];

    zStackResolver = [v7 zStackResolver];
    v9 = [zStackResolver acquireParticipantWithIdentifier:27 delegate:self];
    [(SBMainDisplaySystemGestureManager *)self setAccessibilityZStackParticipant:v9];
  }
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  [preferencesCopy setActivationPolicyForParticipantsBelow:0];
  [preferencesCopy setHomeGestureConsumption:1];
}

- (void)initWithDisplayIdentity:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMainDisplaySystemGestureManager.m" lineNumber:52 description:@"should have only one SBMainDisplaySystemGestureManager"];
}

@end