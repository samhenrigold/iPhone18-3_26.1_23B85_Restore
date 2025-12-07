@interface iOSSetupMainController
- (unint64_t)supportedInterfaceOrientations;
- (void)_handleHomeButtonPressed;
- (void)_handleMigrateStart;
- (void)_handleMigrateStartDemo;
- (void)_handleMigrateStartUI;
- (void)_handleVisualAuthEvent:(int64_t)event;
- (void)_handleVisualAuthScannedCode:(id)code;
- (void)_sessionHandleProgress:(unsigned int)progress info:(id)info;
- (void)_sessionStart:(id)start;
- (void)_tryPIN:(id)n;
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismiss:(int)dismiss animated:(BOOL)animated;
- (void)handleButtonActions:(id)actions;
- (void)logUsageDone:(int)done;
- (void)logUsageStart:(int)start;
- (void)showAuthUIWithFlags:(unsigned int)flags throttleSeconds:(int)seconds animated:(BOOL)animated;
- (void)showBackupSyncUI:(unsigned int)i info:(id)info;
- (void)showDoneUI:(id)i;
- (void)showFinishUI;
- (void)showStartUI;
- (void)showWiFi;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation iOSSetupMainController

- (void)showWiFi
{
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController showWiFi]", 30, "Show WiFi\n");
  }

  v3 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"WiFi"];
  [v3 setMainController:self];
  sub_100127D6C(self->_vcNav, v3, 1);
}

- (void)showFinishUI
{
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController showFinishUI]", 30, "Show finish UI\n");
  }

  vcFinish = self->_vcFinish;
  if (!vcFinish)
  {
    v4 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"Finish"];
    v5 = self->_vcFinish;
    self->_vcFinish = v4;

    [(SVSBaseViewController *)self->_vcFinish setMainController:self];
    vcFinish = self->_vcFinish;
  }

  vcNav = self->_vcNav;

  sub_100127D6C(vcNav, vcFinish, 1);
}

- (void)showDoneUI:(id)i
{
  iCopy = i;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController showDoneUI:]", 30, "Show done UI: %{error}\n", iCopy);
  }

  vcDone = self->_vcDone;
  if (!vcDone)
  {
    v5 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"Done"];
    v6 = self->_vcDone;
    self->_vcDone = v5;

    [(SVSBaseViewController *)self->_vcDone setMainController:self];
    vcDone = self->_vcDone;
  }

  [(iOSSetupDoneViewController *)vcDone setError:iCopy];
  [(SFDeviceSetupSessioniOS *)self->_setupSession invalidate];
  setupSession = self->_setupSession;
  self->_setupSession = 0;

  sub_100127D6C(self->_vcNav, self->_vcDone, 1);
  [(iOSSetupMainController *)self logUsageDone:NSErrorToOSStatus()];
}

- (void)showBackupSyncUI:(unsigned int)i info:(id)info
{
  v4 = *&i;
  infoCopy = info;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController showBackupSyncUI:info:]", 30, "Show BackupSync UI\n");
  }

  vcBackupSync = self->_vcBackupSync;
  if (!vcBackupSync)
  {
    v7 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"BackupSync"];
    v8 = self->_vcBackupSync;
    self->_vcBackupSync = v7;

    [(SVSBaseViewController *)self->_vcBackupSync setMainController:self];
    sub_100127D6C(self->_vcNav, self->_vcBackupSync, 1);
    vcBackupSync = self->_vcBackupSync;
  }

  [(iOSSetupBackupSyncViewController *)vcBackupSync handleProgressEvent:v4 info:infoCopy];
}

- (void)showStartUI
{
  [(iOSSetupStartViewController *)self->_vcStart setAutoStart:1];
  vcNav = self->_vcNav;
  vcStart = self->_vcStart;

  sub_100127D6C(vcNav, vcStart, 1);
}

- (void)_tryPIN:(id)n
{
  nCopy = n;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    v4 = IsAppleInternalBuild();
    v5 = @"*";
    if (v4)
    {
      v5 = nCopy;
    }

    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _tryPIN:]", 30, "Try PIN '%@'\n", v5);
  }

  [(SFDeviceSetupSessioniOS *)self->_setupSession tryPIN:nCopy];
}

- (void)_handleVisualAuthScannedCode:(id)code
{
  codeCopy = code;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _handleVisualAuthScannedCode:]", 30, "Visual Auth scanned code: '%@'\n", codeCopy);
  }

  if (mach_absolute_time() >= self->_visualAuthNextTicks)
  {
    if (self->_visualAuthTryingCode)
    {
      if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _handleVisualAuthScannedCode:]", 30, "Visual Auth ignore scanned code while trying previous code\n");
      }
    }

    else
    {
      self->_visualAuthTryingCode = 1;
      [(iOSSetupMainController *)self _tryPIN:codeCopy];
    }
  }

  else if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    UpTicksToSecondsF();
    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _handleVisualAuthScannedCode:]", 30, "Visual Auth wait for next allowed time (%.2f seconds)\n");
  }
}

- (void)_handleVisualAuthEvent:(int64_t)event
{
  if (event == 2)
  {
    if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _handleVisualAuthEvent:]", 30, "Visual Auth Event: pair manually\n");
    }

    [(VPScannerViewController *)self->_vcVisualAuth dismissViewControllerAnimated:1 completion:0];
    vcVisualAuth = self->_vcVisualAuth;
    self->_vcVisualAuth = 0;

    view = [(UIViewController *)self->_vcVisualAuthParent view];
    [view setHidden:0];

    vcVisualAuthParent = self->_vcVisualAuthParent;
    self->_vcVisualAuthParent = 0;

    [(SFDeviceSetupSessioniOS *)self->_setupSession setPairFlags:0];

    [(iOSSetupMainController *)self showAuthUIWithFlags:0 throttleSeconds:0xFFFFFFFFLL animated:0];
  }

  else if (event == 1)
  {
    if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _handleVisualAuthEvent:]", 30, "Visual Auth Event: cancel\n");
    }

    v5 = self->_vcVisualAuth;
    v6 = v5 == 0;
    [(VPScannerViewController *)v5 dismissViewControllerAnimated:1 completion:0];
    v7 = self->_vcVisualAuth;
    self->_vcVisualAuth = 0;

    [(iOSSetupMainController *)self dismiss:5 animated:v6];
  }

  else if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _handleVisualAuthEvent:]", 30, "Visual Auth Event: %ld\n", event);
  }
}

- (void)showAuthUIWithFlags:(unsigned int)flags throttleSeconds:(int)seconds animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_visualAuthTryingCode = 0;
  vcAuth = self->_vcAuth;
  if ((flags & 0x100) == 0 || vcAuth)
  {
    if (vcAuth)
    {

      [iOSSetupAuthViewController showWithFlags:"showWithFlags:throttleSeconds:" throttleSeconds:?];
    }

    else
    {
      v14 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"ManualAuth", *&seconds];
      v15 = self->_vcAuth;
      self->_vcAuth = v14;

      [(SVSBaseViewController *)self->_vcAuth setMainController:self];
      vcNav = self->_vcNav;
      v17 = self->_vcAuth;
      if (animatedCopy)
      {

        sub_100127D6C(vcNav, v17, 0);
      }

      else
      {
        v18 = self->_vcAuth;

        [(SVSCommonNavController *)vcNav pushViewController:v18 animated:0];
      }
    }
  }

  else
  {
    if (seconds >= 1)
    {
      v8 = mach_absolute_time();
      self->_visualAuthNextTicks = SecondsToUpTicks() + v8;
    }

    if (!self->_vcVisualAuth)
    {
      visibleViewController = [(SVSCommonNavController *)self->_vcNav visibleViewController];
      vcVisualAuthParent = self->_vcVisualAuthParent;
      self->_vcVisualAuthParent = visibleViewController;

      v11 = +[VPScannerViewController instantiateViewController];
      vcVisualAuth = self->_vcVisualAuth;
      self->_vcVisualAuth = v11;

      if (self->_otherDeviceClassCode - 1 > 6)
      {
        v13 = @"_IPHONE";
      }

      else
      {
        v13 = off_100195818[(self->_otherDeviceClassCode - 1)];
      }

      v19 = [@"IOS_SETUP_SCANNER_TITLE" stringByAppendingString:v13];
      v20 = sub_10012794C(@"Localizable", v19);
      [(VPScannerViewController *)self->_vcVisualAuth setTitleMessage:v20];

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000F07E8;
      v25[3] = &unk_100195610;
      v25[4] = self;
      [(VPScannerViewController *)self->_vcVisualAuth setEventHandler:v25];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000F07F4;
      v24[3] = &unk_100195A98;
      v24[4] = self;
      [(VPScannerViewController *)self->_vcVisualAuth setScannedCodeHandler:v24];
      v21 = self->_vcNav;
      v22 = self->_vcVisualAuth;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000F0800;
      v23[3] = &unk_100195AC0;
      v23[4] = self;
      [(SVSCommonNavController *)v21 presentViewController:v22 animated:0 completion:v23];
    }
  }
}

- (void)_sessionHandleProgress:(unsigned int)progress info:(id)info
{
  v4 = *&progress;
  infoCopy = info;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    v7 = sub_1000F0C00(v4);
    v8 = &stru_100195CA8;
    if (infoCopy)
    {
      v8 = infoCopy;
    }

    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _sessionHandleProgress:info:]", 30, "Progress: %s %##@\n", v7, v8);
  }

  setupSession = self->_setupSession;
  if (setupSession)
  {
    if (v4 <= 299)
    {
      if (v4 <= 96)
      {
        if (v4 == 20)
        {
          CFErrorGetTypeID();
          v10 = CFDictionaryGetTypedValue();
          [(iOSSetupMainController *)self showDoneUI:v10];
          _remoteViewControllerProxy = [(iOSSetupMainController *)self _remoteViewControllerProxy];
          [_remoteViewControllerProxy setIdleTimerDisabled:0 forReason:@"com.apple.SharingViewService.iOSSetup"];
        }

        else
        {
          if (v4 != 70 || !self->_vcVisualAuth)
          {
            goto LABEL_43;
          }

          v10 = objc_alloc_init(UINotificationFeedbackGenerator);
          [v10 notificationOccurred:0];
          vcVisualAuth = self->_vcVisualAuth;
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_1000F1494;
          v22[3] = &unk_100195AC0;
          v22[4] = self;
          [(VPScannerViewController *)vcVisualAuth dismissViewControllerAnimated:1 completion:v22];
          v12 = self->_vcVisualAuth;
          self->_vcVisualAuth = 0;

          view = [(UIViewController *)self->_vcVisualAuthParent view];
          [view setHidden:0];

          vcVisualAuthParent = self->_vcVisualAuthParent;
          self->_vcVisualAuthParent = 0;
        }

        goto LABEL_43;
      }

      if (v4 == 97)
      {
        fileTransferSessionTemplate = [(SFDeviceSetupSessioniOS *)setupSession fileTransferSessionTemplate];
        if (fileTransferSessionTemplate)
        {
          [(BYMigrationSourceController *)self->_migrationController setFileTransferSession:fileTransferSessionTemplate];
        }

        vcFinish = self->_vcFinish;
        v18 = 97;
      }

      else
      {
        if (v4 != 99)
        {
          if (v4 == 240)
          {
            [(iOSSetupMainController *)self showFinishUI];
          }

          goto LABEL_43;
        }

        vcFinish = self->_vcFinish;
        v18 = 99;
      }

      [(iOSSetupFinishViewController *)vcFinish handleProgressEvent:v18];
      goto LABEL_43;
    }

    if (v4 <= 399)
    {
      if (v4 == 300 || v4 == 310)
      {
        [(iOSSetupMainController *)self showBackupSyncUI:v4 info:infoCopy];
      }
    }

    else
    {
      switch(v4)
      {
        case 0x190:
          if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _sessionHandleProgress:info:]", 30, "Stop setup from target\n");
          }

          v19 = self->_vcVisualAuth;
          v20 = v19 == 0;
          [(VPScannerViewController *)v19 dismissViewControllerAnimated:1 completion:0];
          v21 = self->_vcVisualAuth;
          self->_vcVisualAuth = 0;

          [(iOSSetupMainController *)self dismiss:17 animated:v20];
          break;
        case 0x191:
          if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _sessionHandleProgress:info:]", 30, "PIN pair from target\n");
          }

          [(iOSSetupMainController *)self _handleVisualAuthEvent:2];
          break;
        case 0x19A:
          [(iOSSetupMainController *)self _handleMigrateStart];
          break;
      }
    }
  }

LABEL_43:
}

- (void)_sessionStart:(id)start
{
  startCopy = start;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _sessionStart:]", 30, "Start setup with %@\n", startCopy);
  }

  [(SFDeviceSetupSessioniOS *)self->_setupSession invalidate];
  v5 = objc_alloc_init(SFDeviceSetupSessioniOS);
  setupSession = self->_setupSession;
  self->_setupSession = v5;

  [(SFDeviceSetupSessioniOS *)self->_setupSession setPeerDevice:startCopy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F1688;
  v9[3] = &unk_1001959F8;
  v9[4] = self;
  [(SFDeviceSetupSessioniOS *)self->_setupSession setProgressHandler:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F1698;
  v8[3] = &unk_100195A48;
  v8[4] = self;
  [(SFDeviceSetupSessioniOS *)self->_setupSession setPromptForPINHandler:v8];
  [(SFDeviceSetupSessioniOS *)self->_setupSession activate];
  [(iOSSetupMainController *)self logUsageStart:9];
  _remoteViewControllerProxy = [(iOSSetupMainController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setIdleTimerDisabled:1 forReason:@"com.apple.SharingViewService.iOSSetup"];
}

- (void)logUsageDone:(int)done
{
  if (!self->_loggedUsageDone)
  {
    v3 = *&done;
    self->_loggedUsageDone = 1;
    CFStringGetTypeID();
    v5 = CFDictionaryGetTypedValue();
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = &stru_100195CA8;
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    mach_absolute_time();
    v8 = UpTicksToMilliseconds();
    v16[0] = v6;
    v15[0] = @"sid";
    v15[1] = @"smoothedRSSI";
    v14 = Int64Ranged;
    v9 = [NSNumber numberWithInt:Int64Ranged];
    v16[1] = v9;
    v15[2] = @"errorCode";
    v10 = [NSNumber numberWithInt:v3];
    v16[2] = v10;
    v15[3] = @"durationMs";
    v11 = [NSNumber numberWithUnsignedLongLong:v8];
    v16[3] = v11;
    v15[4] = @"badPINCount";
    v12 = [NSNumber numberWithUnsignedInt:self->_badPINCount];
    v16[4] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];
    SFMetricsLog();

    if (dword_1001BE6C8 <= 50 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController logUsageDone:]", 50, "iOSSetup: Done, ID %@, RSSI %ld, error %d, totalMs %llu, badPIN %u", v6, v14, v3, v8, self->_badPINCount);
    }
  }
}

- (void)logUsageStart:(int)start
{
  if (!self->_loggedUsageStart)
  {
    v3 = *&start;
    self->_loggedUsageStart = 1;
    CFStringGetTypeID();
    v5 = CFDictionaryGetTypedValue();
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = &stru_100195CA8;
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    mach_absolute_time();
    v8 = UpTicksToMilliseconds();
    v14[0] = v6;
    v13[0] = @"sid";
    v13[1] = @"smoothedRSSI";
    v9 = [NSNumber numberWithInt:Int64Ranged];
    v14[1] = v9;
    v13[2] = @"action";
    v10 = [NSNumber numberWithInt:v3];
    v14[2] = v10;
    v13[3] = @"userMs";
    v11 = [NSNumber numberWithUnsignedLongLong:v8];
    v14[3] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
    SFMetricsLog();

    if (dword_1001BE6C8 <= 50 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController logUsageStart:]", 50, "iOSSetup: Start, ID %@, RSSI %ld, action %d, userMs %llu, badPIN %u", v6, Int64Ranged, v3, v8, self->_badPINCount);
    }
  }
}

- (void)_handleMigrateStartUI
{
  fileTransferSessionTemplate = [(SFDeviceSetupSessioniOS *)self->_setupSession fileTransferSessionTemplate];
  if (fileTransferSessionTemplate)
  {
    v3 = objc_alloc_init(BYMigrationSourceController);
    migrationController = self->_migrationController;
    self->_migrationController = v3;

    if (self->_migrationController)
    {
      if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _handleMigrateStartUI]", 30, "Migration start UI: %@\n", fileTransferSessionTemplate);
      }

      [(BYMigrationSourceController *)self->_migrationController launchSetupForMigration:fileTransferSessionTemplate];
    }

    else if (dword_1001BE6C8 <= 90 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _handleMigrateStartUI]", 90, "### Migration start UI failed: create controller failed\n");
    }
  }

  else if (dword_1001BE6C8 <= 90 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _handleMigrateStartUI]", 90, "### Migration start UI failed: no file transfer session\n");
  }
}

- (void)_handleMigrateStartDemo
{
  if (!self->_fileTransferSession)
  {
    if (dword_1001BE6C8 <= 50 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _handleMigrateStartDemo]", 50, "FileTransfer start\n");
    }

    fileTransferSessionTemplate = [(SFDeviceSetupSessioniOS *)self->_setupSession fileTransferSessionTemplate];
    fileTransferSession = self->_fileTransferSession;
    self->_fileTransferSession = fileTransferSessionTemplate;
    v5 = fileTransferSessionTemplate;

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F2054;
    v16[3] = &unk_100195940;
    v16[4] = self;
    [(RPFileTransferSession *)v5 setCompletionHandler:v16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000F210C;
    v15[3] = &unk_100194D28;
    v15[4] = v5;
    [(RPFileTransferSession *)v5 setProgressHandler:v15];
    [(RPFileTransferSession *)v5 setReceivedItemHandler:&stru_100194D68];
    [(RPFileTransferSession *)v5 activate];
    v6 = [NSURL fileURLWithPath:@"/tmp/Test1.txt" relativeToURL:0];
    v7 = [NSData dataWithBytes:"Test1" length:5];
    [v7 writeToURL:v6 options:0 error:0];

    v8 = objc_alloc_init(RPFileTransferItem);
    [v8 setItemURL:v6];
    [(RPFileTransferSession *)v5 addItem:v8];
    v9 = [NSURL fileURLWithPath:@"/tmp/Test2.txt" relativeToURL:0];

    v10 = [NSData dataWithBytes:"Test2" length:5];
    [v10 writeToURL:v9 options:0 error:0];

    v11 = objc_alloc_init(RPFileTransferItem);
    [v11 setItemURL:v9];
    [(RPFileTransferSession *)v5 addItem:v11];
    v12 = [NSURL fileURLWithPath:@"/tmp/Test3.txt" relativeToURL:0];

    v13 = [NSData dataWithBytes:"Test3" length:5];
    [v13 writeToURL:v12 options:0 error:0];

    v14 = objc_alloc_init(RPFileTransferItem);
    [v14 setItemURL:v12];
    [(RPFileTransferSession *)v5 addItem:v14];
    [(RPFileTransferSession *)v5 finish];
  }
}

- (void)_handleMigrateStart
{
  if (CFPrefs_GetInt64())
  {

    [(iOSSetupMainController *)self _handleMigrateStartDemo];
  }

  else
  {

    [(iOSSetupMainController *)self _handleMigrateStartUI];
  }
}

- (void)_handleHomeButtonPressed
{
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _handleHomeButtonPressed]", 30, "Home button\n");
  }

  if (self->_homePressed || MKBGetDeviceLockState() - 1 > 1)
  {

    [(iOSSetupMainController *)self dismiss:4];
  }

  else
  {
    if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController _handleHomeButtonPressed]", 30, "Ignoring first home button press to unlock\n");
    }

    self->_homePressed = 1;
  }
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    if (self->_blockHardwareButtons)
    {
      v5 = "yes";
    }

    else
    {
      v5 = "no";
    }

    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController handleButtonActions:]", 30, "Button actions: %##@, blocked %s\n", actionsCopy, v5);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = actionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (!self->_blockHardwareButtons && ([*(*(&v12 + 1) + 8 * i) events] & 0x10) != 0)
        {
          [(iOSSetupMainController *)self _handleHomeButtonPressed];
        }

        [v11 sendResponseWithUnHandledEvents:0];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)dismiss:(int)dismiss animated:(BOOL)animated
{
  if (!self->_dismissed)
  {
    animatedCopy = animated;
    self->_dismissed = 1;
    [(iOSSetupMainController *)self logUsageStart:*&dismiss];
    [(iOSSetupMainController *)self _remoteViewControllerProxy];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F2700;
    v8 = v7[3] = &unk_100195AC0;
    v6 = v8;
    [(iOSSetupMainController *)self dismissViewControllerAnimated:animatedCopy completion:v7];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController viewDidDisappear:]", 30, "Main ViewDidDisappear\n");
  }

  _remoteViewControllerProxy = [(iOSSetupMainController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setIdleTimerDisabled:0 forReason:@"com.apple.SharingViewService.iOSSetup"];

  if (!self->_dismissed)
  {
    if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController viewDidDisappear:]", 30, "Main disappeared without dismiss (device locked?)...dismissing UI\n");
    }

    [(iOSSetupMainController *)self dismiss:21];
  }

  [(SFDeviceSetupSessioniOS *)self->_setupSession invalidate];
  setupSession = self->_setupSession;
  self->_setupSession = 0;

  storyboard = self->_storyboard;
  self->_storyboard = 0;

  [(SVSBaseViewController *)self->_vcAuth setMainController:0];
  vcAuth = self->_vcAuth;
  self->_vcAuth = 0;

  [(SVSBaseViewController *)self->_vcBackupSync setMainController:0];
  vcBackupSync = self->_vcBackupSync;
  self->_vcBackupSync = 0;

  [(SVSBaseViewController *)self->_vcDone setMainController:0];
  vcDone = self->_vcDone;
  self->_vcDone = 0;

  [(SVSBaseViewController *)self->_vcFinish setMainController:0];
  vcFinish = self->_vcFinish;
  self->_vcFinish = 0;

  vcNav = self->_vcNav;
  self->_vcNav = 0;

  [(SVSBaseViewController *)self->_vcStart setMainController:0];
  vcStart = self->_vcStart;
  self->_vcStart = 0;

  v14.receiver = self;
  v14.super_class = iOSSetupMainController;
  [(SVSBaseMainController *)&v14 viewDidDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController viewDidAppear:]", 30, "Main ViewDidAppear\n");
  }

  v14.receiver = self;
  v14.super_class = iOSSetupMainController;
  [(iOSSetupMainController *)&v14 viewDidAppear:appearCopy];
  self->_viewAppearedTicks = mach_absolute_time();
  v5 = [UIStoryboard storyboardWithName:@"iOSSetup" bundle:0];
  storyboard = self->_storyboard;
  self->_storyboard = v5;

  instantiateInitialViewController = [(UIStoryboard *)self->_storyboard instantiateInitialViewController];
  vcNav = self->_vcNav;
  self->_vcNav = instantiateInitialViewController;

  [(SVSCommonNavController *)self->_vcNav setDelegate:self];
  [(SVSCommonNavController *)self->_vcNav setModalPresentationStyle:4];
  v9 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v9 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SVSCommonNavController *)self->_vcNav setModalTransitionStyle:2];
  }

  [(SVSCommonNavController *)self->_vcNav setTransitioningDelegate:self->_vcNav];
  viewControllers = [(SVSCommonNavController *)self->_vcNav viewControllers];
  firstObject = [viewControllers firstObject];
  vcStart = self->_vcStart;
  self->_vcStart = firstObject;

  [(SVSBaseViewController *)self->_vcStart setMainController:self];
  [(iOSSetupMainController *)self presentViewController:self->_vcNav animated:1 completion:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(iOSSetupMainController *)self view];
  window = [view window];

  if (!window)
  {
    return 30;
  }

  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return (1 << [UIApp activeInterfaceOrientation]);
  }

  else
  {
    return 2;
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  userInfo = [context userInfo];
  userInfo = self->super._userInfo;
  self->super._userInfo = userInfo;

  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE6C8, "[iOSSetupMainController configureWithContext:completion:]", 30, "Main configuration: %@\n", self->super._userInfo);
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if ([v8 isEqual:@"00000000-0000-0000-0000-000000000001"])
  {
    v9 = 1;
  }

  else
  {
    if (![v8 isEqual:@"00000000-0000-0000-0000-000000000002"])
    {
      goto LABEL_10;
    }

    v9 = 2;
  }

  self->_testMode = v9;
LABEL_10:
  if (v8)
  {
    v10 = [[NSUUID alloc] initWithUUIDString:v8];
    deviceIdentifier = self->_deviceIdentifier;
    self->_deviceIdentifier = v10;
  }

  self->_otherDeviceClassCode = CFDictionaryGetInt64Ranged();
  self->_otherDeviceModelCode = CFDictionaryGetInt64Ranged();
  self->_otherDeviceColorCode = CFDictionaryGetInt64Ranged();
  v12 = SFLocalizedStringForKey();
  otherDeviceClassName = self->_otherDeviceClassName;
  self->_otherDeviceClassName = v12;

  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)_willAppearInRemoteViewController
{
  v4.receiver = self;
  v4.super_class = iOSSetupMainController;
  [(SVSBaseMainController *)&v4 _willAppearInRemoteViewController];
  _remoteViewControllerProxy = [(iOSSetupMainController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
}

@end