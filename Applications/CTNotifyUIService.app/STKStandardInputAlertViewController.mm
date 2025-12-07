@interface STKStandardInputAlertViewController
- (BOOL)validateAction:(id)action;
- (void)leftNavigationButtonPressed;
- (void)rightNavigationButtonPressed;
- (void)sendButtonPressed;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation STKStandardInputAlertViewController

- (BOOL)validateAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)leftNavigationButtonPressed
{
  sessionAction = [(STKBaseAlertViewController *)self sessionAction];
  [sessionAction sendResponse:4];

  [(STKBaseAlertViewController *)self dismiss];
}

- (void)rightNavigationButtonPressed
{
  sessionAction = [(STKBaseAlertViewController *)self sessionAction];
  [sessionAction sendResponse:1];

  [(STKBaseAlertViewController *)self dismiss];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  sessionAction = [(STKBaseAlertViewController *)self sessionAction];
  sessionData = [sessionAction sessionData];

  if (sessionData)
  {
    text = [sessionData text];
    sessionAction2 = [(STKBaseAlertViewController *)self sessionAction];
    sessionData2 = [sessionAction2 sessionData];
    simLabel = [sessionData2 simLabel];

    if (simLabel)
    {
      sessionAction3 = [(STKBaseAlertViewController *)self sessionAction];
      sessionData3 = [sessionAction3 sessionData];
      simLabel2 = [sessionData3 simLabel];
      v14 = simLabel2;
      v15 = &stru_100018670;
      if (text)
      {
        v15 = text;
      }

      v16 = [NSString stringWithFormat:@"(%@) %@", simLabel2, v15];
    }

    else
    {
      v17 = &stru_100018670;
      if (text)
      {
        v17 = text;
      }

      v16 = [NSString stringWithFormat:@"%@", v17];
    }

    [(STKBaseInputAlertViewController *)self setText:v16];
    inputTextField = [(STKBaseInputAlertViewController *)self inputTextField];
    [inputTextField setSecureTextEntry:{objc_msgSend(sessionData, "isSecure")}];

    inputTextField2 = [(STKBaseInputAlertViewController *)self inputTextField];
    defaultText = [sessionData defaultText];
    [inputTextField2 setText:defaultText];

    -[STKBaseInputAlertViewController setDigitsOnly:](self, "setDigitsOnly:", [sessionData isDigitsOnly]);
    -[STKBaseInputAlertViewController setMinLength:](self, "setMinLength:", [sessionData minimumInputLength]);
    -[STKBaseInputAlertViewController setMaxLength:](self, "setMaxLength:", [sessionData maximumInputLength]);
  }

  [(STKBaseAlertViewController *)self startTimeoutTimerIfNecessary];
  v21.receiver = self;
  v21.super_class = STKStandardInputAlertViewController;
  [(STKStandardInputAlertViewController *)&v21 viewWillAppear:appearCopy];
}

- (void)sendButtonPressed
{
  sessionAction = [(STKBaseAlertViewController *)self sessionAction];
  inputTextField = [(STKBaseInputAlertViewController *)self inputTextField];
  text = [inputTextField text];
  [sessionAction sendSuccessWithResponse:text];

  [(STKBaseAlertViewController *)self dismiss];
}

@end