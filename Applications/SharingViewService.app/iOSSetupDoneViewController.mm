@interface iOSSetupDoneViewController
- (void)handleDismissButton:(id)button;
- (void)handleReportBugButton:(id)button;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation iOSSetupDoneViewController

- (void)handleReportBugButton:(id)button
{
  v22[0] = @"Classification";
  v22[1] = @"ComponentID";
  v23[0] = @"Serious Bug";
  v23[1] = @"768684";
  v22[2] = @"ComponentName";
  v22[3] = @"ComponentVersion";
  v23[2] = @"Proximity Setup";
  v23[3] = @"all";
  v22[4] = @"ExtensionIdentifiers";
  v22[5] = @"Keywords";
  v23[4] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v23[5] = @"758122";
  v23[6] = @"I Didn't Try";
  v22[6] = @"Reproducibility";
  v22[7] = @"Title";
  v3 = NSPrintF("OOBE: Proximity Setup Failed: %{error}", a2, button, *(&self->_doneButton + 1));
  v23[7] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:8];

  v5 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        v13 = [NSURLQueryItem queryItemWithName:v11 value:v12];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  [v14 setQueryItems:v5];
  v15 = UIApp;
  v16 = [v14 URL];
  [v15 openURL:v16 withCompletionHandler:0];

  if (dword_1001BE6C8 <= 50 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupDoneViewController handleReportBugButton:]", 50, "Report Bug\n");
  }
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupDoneViewController handleDismissButton:]", 30, "Dismiss button\n");
  }

  [self->super.super._mainController dismiss:5];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupDoneViewController viewDidDisappear:]", 30, "Done ViewDidDisappear\n");
  }

  v5.receiver = self;
  v5.super_class = iOSSetupDoneViewController;
  [(iOSSetupDoneViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupDoneViewController viewWillAppear:]", 30, "Done ViewWillAppear\n");
  }

  v29.receiver = self;
  v29.super_class = iOSSetupDoneViewController;
  [(SVSBaseViewController *)&v29 viewWillAppear:appearCopy];
  if (*(&self->_doneButton + 1))
  {
    v5 = NSErrorToOSStatus();
    v13 = sub_100127B60(@"SETUP_FAILED_FORMAT", v6, v7, v8, v9, v10, v11, v12, v5);
    [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:v13];

    if (IsAppleInternalBuild())
    {
      v14 = NSPrintF("%{error}", *(&self->_doneButton + 1));
      [*(&self->_titleLabel + 1) setText:v14];
    }

    else
    {
      [*(&self->_titleLabel + 1) setHidden:1];
    }
  }

  else
  {
    v15 = [self->super.super._mainController otherDeviceClassCode] - 1;
    if (v15 > 6)
    {
      v16 = @"_IPHONE";
    }

    else
    {
      v16 = off_100195818[v15];
    }

    v17 = [@"IOS_SETUP_FINISH_TITLE" stringByAppendingString:v16];
    v18 = sub_10012794C(@"Localizable", v17);
    [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:v18];

    myAppleID = [self->super.super._mainController myAppleID];
    v20 = [myAppleID length];
    v21 = @"IOS_SETUP_FINISH_INFO";
    if (!v20)
    {
      v21 = @"IOS_SETUP_FINISH_INFO_NO_ID";
    }

    v22 = v21;

    v23 = [self->super.super._mainController otherDeviceClassCode] - 1;
    if (v23 > 6)
    {
      v24 = @"_IPHONE";
    }

    else
    {
      v24 = off_100195818[v23];
    }

    v25 = [(__CFString *)v22 stringByAppendingString:v24];

    v26 = sub_10012794C(@"Localizable", v25);
    [*(&self->_titleLabel + 1) setText:v26];
  }

  if (IsAppleInternalBuild())
  {
    v27 = *(&self->_doneButton + 1) == 0;
  }

  else
  {
    v27 = 1;
  }

  [*(&self->_infoLabel + 1) setHidden:v27];
  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];
}

@end