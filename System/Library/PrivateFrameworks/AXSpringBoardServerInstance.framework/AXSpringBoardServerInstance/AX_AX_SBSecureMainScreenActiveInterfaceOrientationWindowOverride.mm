@interface AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityTripleClickElementHitTest:(id)test;
- (void)_processEventForVOSpeakage:(id)speakage;
- (void)_tripleClickSpeakMenuProcessTouch:(id)touch;
- (void)sendEvent:(id)event;
@end

@implementation AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_UIAlertControllerActionView" hasInstanceMethod:@"action" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIAlertControllerActionView" hasInstanceVariable:@"_checkView" withType:"UIImageView"];
  [validationsCopy validateClass:@"UIWindow" hasInstanceMethod:@"sendEvent:" withFullSignature:{"v", "@", 0}];
}

- (id)_accessibilityTripleClickElementHitTest:(id)test
{
  testCopy = test;
  array = [MEMORY[0x277CBEB18] array];
  [array addObject:self];
  while ([array count])
  {
    firstObject = [array firstObject];
    [array removeObjectAtIndex:0];
    [testCopy locationInView:firstObject];
    if ([firstObject pointInside:0 withEvent:?])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_8;
      }

      NSClassFromString(&cfstr_Uialertcontrol.isa);
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_8;
      }

      subviews = [firstObject subviews];
      [array addObjectsFromArray:subviews];
    }
  }

  firstObject = 0;
LABEL_8:

  return firstObject;
}

- (void)_tripleClickSpeakMenuProcessTouch:(id)touch
{
  v33 = *MEMORY[0x277D85DE8];
  touchCopy = touch;
  v5 = [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilityValueForKey:@"TripleClickTitle"];
  v6 = [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilityTripleClickElementHitTest:touchCopy];
  NSClassFromString(&cfstr_Uialertcontrol.isa);
  if (objc_opt_isKindOfClass())
  {
    buf[0] = 0;
    objc_opt_class();
    v7 = [v6 safeValueForKey:@"action"];
    v8 = __UIAccessibilityCastAsClass();

    title = [v8 title];
    v10 = [v6 safeUIViewForKey:@"_checkView"];
    v11 = v10;
    if (v10 && ([v10 isHidden] & 1) == 0)
    {
      v29 = SBAXLocalizedString(@"selected");
      v30 = @"__AXStringForVariablesSentinel";
      v12 = __AXStringForVariables();

      title = v12;
    }

    if (!title)
    {
      goto LABEL_16;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 text], (title = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_16:
      mEMORY[0x277D65370] = [MEMORY[0x277D65370] sharedInstance];
      [mEMORY[0x277D65370] notifySpeakServicesToStopSpeaking];

      mEMORY[0x277CE69A0] = [MEMORY[0x277CE69A0] sharedInstance];
      ignoreLogging = [mEMORY[0x277CE69A0] ignoreLogging];

      if ((ignoreLogging & 1) == 0)
      {
        identifier = [MEMORY[0x277CE69A0] identifier];
        v25 = AXLoggerForFacility();

        v26 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = AXColorizeFormatLog();
          v28 = _AXStringForArgs();
          if (os_log_type_enabled(v25, v26))
          {
            *buf = 138543362;
            v32 = v28;
            _os_log_impl(&dword_21FE6B000, v25, v26, "%{public}@", buf, 0xCu);
          }
        }
      }

      [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilityRemoveValueForKey:@"TripleClickTitle"];
      title = 0;
      goto LABEL_23;
    }
  }

  if (([v5 isEqualToString:{title, v29, v30}] & 1) == 0)
  {
    mEMORY[0x277D65370]2 = [MEMORY[0x277D65370] sharedInstance];
    _AXSVoiceOverTouchSpeakingRate();
    [mEMORY[0x277D65370]2 notifySpeakServicesForSpeechOutput:title volume:1.0 speakingRate:v14];

    [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilitySetRetainedValue:title forKey:@"TripleClickTitle"];
    mEMORY[0x277CE69A0]2 = [MEMORY[0x277CE69A0] sharedInstance];
    LOBYTE(mEMORY[0x277D65370]2) = [mEMORY[0x277CE69A0]2 ignoreLogging];

    if ((mEMORY[0x277D65370]2 & 1) == 0)
    {
      identifier2 = [MEMORY[0x277CE69A0] identifier];
      v17 = AXLoggerForFacility();

      v18 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = AXColorizeFormatLog();
        v20 = _AXStringForArgs();
        if (os_log_type_enabled(v17, v18))
        {
          *buf = 138543362;
          v32 = v20;
          _os_log_impl(&dword_21FE6B000, v17, v18, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

LABEL_23:
}

- (void)_processEventForVOSpeakage:(id)speakage
{
  speakageCopy = speakage;
  v5 = [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilityValueForKey:@"AXDispatchTimer"];
  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CE6950]);
    v5 = [v6 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    [v5 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilitySetRetainedValue:v5 forKey:@"AXDispatchTimer"];
  }

  if ([(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilityBoolValueForKey:@"TripleClickSpeakWaited"])
  {
    [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _tripleClickSpeakMenuProcessTouch:speakageCopy];
  }

  else if (![v5 isPending] || objc_msgSend(v5, "isCancelled"))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __95__AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride__processEventForVOSpeakage___block_invoke;
    v7[3] = &unk_27842BBF8;
    v7[4] = self;
    v8 = speakageCopy;
    [v5 afterDelay:v7 processBlock:0.300000012];
  }
}

- (void)sendEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  accessibilityIdentifier = [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self accessibilityIdentifier];
  v6 = [accessibilityIdentifier isEqualToString:@"TripleClickAskWindow"];

  if (v6 && ![eventCopy type])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = eventCopy;
    allTouches = [eventCopy allTouches];
    v8 = [allTouches countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = v8;
    v10 = *v17;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(allTouches);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (![v12 phase] || objc_msgSend(v12, "phase") == 1)
        {
          v13 = _AXSTripleClickCopyOptions();
          if ([v13 containsObject:&unk_2833B1510])
          {
            [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _processEventForVOSpeakage:v12];
          }

          goto LABEL_15;
        }

        if ([v12 phase] == 3 || objc_msgSend(v12, "phase") == 4)
        {
          v13 = [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilityValueForKey:@"AXDispatchTimer"];
          [v13 cancel];
          [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilitySetBoolValue:0 forKey:@"TripleClickSpeakWaited"];
          [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilityRemoveValueForKey:@"TripleClickTitle"];
LABEL_15:

          continue;
        }
      }

      v9 = [allTouches countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v9)
      {
LABEL_18:

        eventCopy = v14;
        break;
      }
    }
  }

  v15.receiver = self;
  v15.super_class = AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride;
  [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)&v15 sendEvent:eventCopy];
}

@end