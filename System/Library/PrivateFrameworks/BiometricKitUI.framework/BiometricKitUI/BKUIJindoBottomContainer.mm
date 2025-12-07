@interface BKUIJindoBottomContainer
- (BOOL)showStartOverForState:(int)state;
- (id)escapeHatchButtonForState:(int)state;
- (void)_updateButtonVisibilityForScrollView:(id)view state:(int)state subState:(int)subState;
- (void)buttonSelectedWithButtonTrayPosition:(int64_t)position;
- (void)setupInitialUI;
@end

@implementation BKUIJindoBottomContainer

- (void)setupInitialUI
{
  v7.receiver = self;
  v7.super_class = BKUIJindoBottomContainer;
  [(BKUIPearlEnrollViewBottomContainer *)&v7 setupInitialUI];
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  buttonTray = [onScreenScrollview buttonTray];
  [buttonTray setActionDelegate:self];

  offScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self offScreenScrollview];
  buttonTray2 = [offScreenScrollview buttonTray];
  [buttonTray2 setActionDelegate:self];
}

- (void)_updateButtonVisibilityForScrollView:(id)view state:(int)state subState:(int)subState
{
  v5 = *&subState;
  v6 = *&state;
  v54 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v9 = _BKUILoggingFacility(viewCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v51[0] = 67109376;
    v51[1] = v6;
    v52 = 1024;
    v53 = v5;
    _os_log_impl(&dword_241B0A000, v9, OS_LOG_TYPE_DEFAULT, "Will update button visibility for state: %i, subState: %i", v51, 0xEu);
  }

  delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  v11 = [delegate _nextStateButtonTitleForState:v6 subState:v5];

  delegate2 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  state = [delegate2 state];

  if (v11)
  {
    canStartEnrollmentOperation = state != 2;
  }

  else
  {
    canStartEnrollmentOperation = 0;
  }

  if (state == 2 && v11)
  {
    delegate3 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    currentOperationHandler = [delegate3 currentOperationHandler];
    canStartEnrollmentOperation = [currentOperationHandler canStartEnrollmentOperation];
  }

  buttonTray = [viewCopy buttonTray];
  nextStateButton = [buttonTray nextStateButton];
  [nextStateButton setEnabled:canStartEnrollmentOperation];

  buttonTray2 = [viewCopy buttonTray];
  if (_os_feature_enabled_impl())
  {
    v20 = _os_feature_enabled_impl();
  }

  else
  {
    v20 = 0;
  }

  if (v6 > 5)
  {
    if (v6 > 7)
    {
      switch(v6)
      {
        case 8:
          topLinkButton = [buttonTray2 topLinkButton];
          [topLinkButton setAlpha:0.0];

          nextStateButton2 = [buttonTray2 nextStateButton];
          [nextStateButton2 setAlpha:canStartEnrollmentOperation];

          bottomLinkButton = [buttonTray2 bottomLinkButton];
          delegate4 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
          currentOperationHandler2 = [delegate4 currentOperationHandler];
          glassesFound = [currentOperationHandler2 glassesFound];
          break;
        case 9:
          topLinkButton2 = [buttonTray2 topLinkButton];
          [topLinkButton2 setAlpha:0.0];

          nextStateButton3 = [buttonTray2 nextStateButton];
          [nextStateButton3 setAlpha:canStartEnrollmentOperation];

          bottomLinkButton2 = [buttonTray2 bottomLinkButton];
          bottomLinkButton = bottomLinkButton2;
          v34 = 1.0;
          if (!v5)
          {
            v34 = 0.0;
          }

          goto LABEL_30;
        case 0xA:
          topLinkButton3 = [buttonTray2 topLinkButton];
          [topLinkButton3 setAlpha:0.0];

          nextStateButton4 = [buttonTray2 nextStateButton];
          [nextStateButton4 setAlpha:canStartEnrollmentOperation];

          bottomLinkButton = [buttonTray2 bottomLinkButton];
          delegate4 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
          currentOperationHandler2 = [delegate4 currentOperationHandler];
          glassesFound = [currentOperationHandler2 showAddGlassesButton];
          break;
        default:
          goto LABEL_43;
      }

      [bottomLinkButton setAlpha:glassesFound];

LABEL_41:
      goto LABEL_42;
    }

    if (v6 != 6)
    {
LABEL_25:
      topLinkButton4 = [buttonTray2 topLinkButton];
      [topLinkButton4 setAlpha:1.0];

      if (v20)
      {
        topLinkButton5 = [buttonTray2 topLinkButton];
        [topLinkButton5 setEnabled:1];
      }

      nextStateButton5 = [buttonTray2 nextStateButton];
      [nextStateButton5 setAlpha:0.0];

      bottomLinkButton2 = [buttonTray2 bottomLinkButton];
      bottomLinkButton = bottomLinkButton2;
      v34 = 1.0;
      goto LABEL_30;
    }

LABEL_23:
    topLinkButton6 = [buttonTray2 topLinkButton];
    [topLinkButton6 setAlpha:0.0];

    nextStateButton6 = [buttonTray2 nextStateButton];
    [nextStateButton6 setAlpha:canStartEnrollmentOperation];

    bottomLinkButton2 = [buttonTray2 bottomLinkButton];
    bottomLinkButton = bottomLinkButton2;
    v34 = 0.0;
LABEL_30:
    [bottomLinkButton2 setAlpha:v34];
LABEL_42:

    goto LABEL_43;
  }

  if (v6 < 3)
  {
    goto LABEL_23;
  }

  if ((v6 - 3) < 2)
  {
    delegate5 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    if ([delegate5 state] == 3)
    {
      delegate6 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      currentOperationHandler3 = [delegate6 currentOperationHandler];
      shouldShowRetryUI = [currentOperationHandler3 shouldShowRetryUI];
    }

    else
    {
      shouldShowRetryUI = 0;
    }

    bottomLinkButton = [buttonTray2 topLinkButton];
    if (shouldShowRetryUI)
    {
      v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v43 = [v42 localizedStringForKey:@"TRY_AGAIN" value:&stru_2853BB280 table:@"Pearl-periocular"];
      [bottomLinkButton setTitle:v43 forState:0];

      bottomLinkButton3 = [buttonTray2 bottomLinkButton];
      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = [v45 localizedStringForKey:@"SET_UP_LATER_IN_SETTINGS" value:&stru_2853BB280 table:@"Pearl-periocular"];
      [bottomLinkButton3 setTitle:v46 forState:0];

      [bottomLinkButton setAlpha:1.0];
      if (v20)
      {
        topLinkButton7 = [buttonTray2 topLinkButton];
        [topLinkButton7 setEnabled:1];
LABEL_39:
      }
    }

    else
    {
      delegate7 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      [bottomLinkButton setAlpha:{objc_msgSend(delegate7, "inBuddy")}];

      if (v20)
      {
        topLinkButton7 = [buttonTray2 topLinkButton];
        delegate8 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
        [topLinkButton7 setEnabled:{objc_msgSend(delegate8, "inBuddy")}];

        goto LABEL_39;
      }
    }

    nextStateButton7 = [buttonTray2 nextStateButton];
    [nextStateButton7 setAlpha:canStartEnrollmentOperation];

    delegate4 = [buttonTray2 bottomLinkButton];
    [delegate4 setAlpha:1.0];
    goto LABEL_41;
  }

  if (v6 == 5)
  {
    goto LABEL_25;
  }

LABEL_43:
  [(BKUIPearlEnrollViewBottomContainer *)self _updateButtonLayoutForScrollView:viewCopy];
}

- (void)buttonSelectedWithButtonTrayPosition:(int64_t)position
{
  if (position == 3)
  {
    delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    v10 = -[BKUIJindoBottomContainer escapeHatchButtonForState:](self, "escapeHatchButtonForState:", [delegate state]);
    buttonTray = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
    bottomLinkButton = [buttonTray bottomLinkButton];

    delegate2 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    delegate3 = delegate2;
    if (v10 != bottomLinkButton)
    {
      [delegate2 cancelEnroll];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (position == 2)
  {
    delegate3 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    [delegate3 nextStateButtonPressed:self];
    goto LABEL_11;
  }

  if (position != 1)
  {
    return;
  }

  delegate4 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  v5 = -[BKUIJindoBottomContainer escapeHatchButtonForState:](self, "escapeHatchButtonForState:", [delegate4 state]);
  buttonTray2 = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
  topLinkButton = [buttonTray2 topLinkButton];

  delegate2 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  delegate3 = delegate2;
  if (v5 == topLinkButton)
  {
LABEL_10:
    [delegate2 escapeHatchButtonPressed];
    goto LABEL_11;
  }

  [delegate2 retryPressed];
LABEL_11:
}

- (id)escapeHatchButtonForState:(int)state
{
  if (state > 0xA)
  {
    bottomLinkButton = 0;
  }

  else
  {
    if (((1 << state) & 0x747) != 0)
    {
      buttonTray = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
      bottomLinkButton = [buttonTray bottomLinkButton];
    }

    else
    {
      buttonTray = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      currentOperationHandler = [buttonTray currentOperationHandler];
      if ([currentOperationHandler shouldShowRetryUI])
      {
        bottomLinkButton = [(BKUIPearlEnrollViewBottomContainer *)self bottomLinkButton];
      }

      else
      {
        buttonTray2 = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
        bottomLinkButton = [buttonTray2 topLinkButton];
      }
    }
  }

  return bottomLinkButton;
}

- (BOOL)showStartOverForState:(int)state
{
  delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  if ([delegate state] == 3)
  {
    delegate2 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    currentOperationHandler = [delegate2 currentOperationHandler];
    shouldShowRetryUI = [currentOperationHandler shouldShowRetryUI];

    if (shouldShowRetryUI)
    {
      v9 = 0;
      return v9 & 1;
    }
  }

  else
  {
  }

  if (state <= 0xA)
  {
    v9 = 0x1F8u >> state;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

@end