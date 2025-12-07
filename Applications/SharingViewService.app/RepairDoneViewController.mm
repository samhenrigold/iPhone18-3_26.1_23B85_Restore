@interface RepairDoneViewController
- (void)handleActionButton:(id)button;
- (void)handleDismissButton:(id)button;
- (void)handleReportBugButton:(id)button;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RepairDoneViewController

- (void)handleReportBugButton:(id)button
{
  buttonCopy = button;
  v24[0] = @"Classification";
  v24[1] = @"ComponentID";
  v25[0] = @"Serious Bug";
  v25[1] = @"768684";
  v24[2] = @"ComponentName";
  v24[3] = @"ComponentVersion";
  v25[2] = @"Proximity Setup";
  v25[3] = @"all";
  v24[4] = @"ExtensionIdentifiers";
  v24[5] = @"Keywords";
  v25[4] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v25[5] = @"794979";
  v25[6] = @"I Didn't Try";
  v24[6] = @"Reproducibility";
  v24[7] = @"Title";
  if (*(&self->_status + 1))
  {
    NSPrintF("TTF: Failed: %{error}", *(&self->_status + 1));
  }

  else
  {
    NSPrintF("TTF: Failed: %#m", *(&self->_doneButton + 1));
  }
  v5 = ;
  v25[7] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:8];

  v7 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:v13];
        v15 = [NSURLQueryItem queryItemWithName:v13 value:v14];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  [v16 setQueryItems:v7];
  v17 = UIApp;
  v18 = [v16 URL];
  [v17 openURL:v18 withCompletionHandler:0];

  if (dword_1001BED68 <= 50 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BED68, "[RepairDoneViewController handleReportBugButton:]", 50, "Report Bug\n");
  }
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BED68, "[RepairDoneViewController handleDismissButton:]", 30, "Dismiss button\n");
  }

  [self->super._mainController dismiss:5];
}

- (void)handleActionButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BED68, "[RepairDoneViewController handleActionButton:]", 30, "Action button\n");
  }

  if ((*(&self->_doneButton + 1) | 4) == 0x497CC)
  {
    v5 = @"prefs:root=WIFI";
    v6 = 12;
  }

  else
  {
    v5 = UIApplicationOpenSettingsURLString;
    v6 = 5;
  }

  mainController = self->super._mainController;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100116C34;
  v9[3] = &unk_100195AC0;
  v10 = v5;
  v8 = v5;
  [mainController dismiss:v6 completion:v9];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BED68, "[RepairDoneViewController viewDidDisappear:]", 30, "Done ViewDidDisappear\n");
  }

  v5.receiver = self;
  v5.super_class = RepairDoneViewController;
  [(RepairDoneViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BED68, "[RepairDoneViewController viewWillAppear:]", 30, "Done ViewWillAppear\n");
  }

  v22.receiver = self;
  v22.super_class = RepairDoneViewController;
  [(SVSBaseViewController *)&v22 viewWillAppear:appearCopy];
  v12 = *(&self->_doneButton + 1);
  if (!v12)
  {
    goto LABEL_12;
  }

  if (v12 == 301004)
  {
    v15 = sub_10012794C(@"Localizable", @"WIFI_INCOMPATIBLE_TITLE");
    [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setText:v15];

    v14 = @"AS_WIFI_INCOMPATIBLE_DETAIL";
    goto LABEL_10;
  }

  if (v12 != 301000)
  {
    v17 = sub_100127B60(@"REPAIR_FAILED_TITLE_FORMAT", v5, v6, v7, v8, v9, v10, v11, *(&self->_doneButton + 1));
    [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setText:v17];

    v18 = *(&self->_reportBugButton + 1);
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"OK_BUTTON_TITLE" value:&stru_100195CA8 table:@"Localizable"];
    [v18 setTitle:v20 forState:0];

    [*(&self->_imageView + 1) setHidden:IsAppleInternalBuild() == 0];
LABEL_12:
    productImage = [self->super._mainController productImage];
    [*(&self->_infoLabel + 1) setImage:productImage];
    goto LABEL_13;
  }

  v13 = sub_10012794C(@"Localizable", @"WIFI_NOT_CONNECTED_TITLE");
  [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setText:v13];

  v14 = @"AS_WIFI_NOT_CONNECTED_DETAIL";
LABEL_10:
  productImage = sub_10012794C(@"Localizable", v14);
  [*(&self->_titleLabel + 1) setText:productImage];
LABEL_13:

  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];
}

@end