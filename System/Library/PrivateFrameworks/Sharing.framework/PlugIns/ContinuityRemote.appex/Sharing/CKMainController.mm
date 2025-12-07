@interface CKMainController
- (void)_handleRemoteTextEvent:(id)event;
- (void)_textSessionDidBegin:(id)begin;
- (void)_textSessionDidEnd:(id)end;
- (void)_updateTextField:(id)field;
- (void)activateUILockTimer;
- (void)autoFillEnsureActive;
- (void)didReceiveNotification:(id)notification;
- (void)dismissWithDeferral;
- (void)keyboardEnsureActive;
- (void)refreshRTI;
- (void)showContinuityKeyboardUI;
- (void)showPINEntryUIWithFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (void)showPickerUIWithURLString:(id)string bundleID:(id)d localizedAppName:(id)name unlocalizedAppName:(id)appName handler:(id)handler;
- (void)transitionToViewControllerWhenReady:(id)ready;
- (void)update;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CKMainController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1000058F4(self, a2, appear);
    }
  }

  v30.receiver = selfCopy;
  v30.super_class = CKMainController;
  [(CKMainController *)&v30 viewDidAppear:appearCopy];
  selfCopy->_uiLockActive = 1;
  v5 = [UIStoryboard storyboardWithName:@"ContinuityKeyboard" bundle:0];
  mainStoryboard = selfCopy->_mainStoryboard;
  selfCopy->_mainStoryboard = v5;

  instantiateInitialViewController = [(UIStoryboard *)selfCopy->_mainStoryboard instantiateInitialViewController];
  vcNav = selfCopy->_vcNav;
  selfCopy->_vcNav = instantiateInitialViewController;

  [(CKCommonNavController *)selfCopy->_vcNav setModalPresentationStyle:2];
  [(CKCommonNavController *)selfCopy->_vcNav setModalTransitionStyle:2];
  viewControllers = [(CKCommonNavController *)selfCopy->_vcNav viewControllers];
  firstObject = [viewControllers firstObject];
  vcConnecting = selfCopy->_vcConnecting;
  selfCopy->_vcConnecting = firstObject;

  [(CKBaseViewController *)selfCopy->_vcConnecting setMainController:selfCopy];
  [(CKMainController *)selfCopy addChildViewController:selfCopy->_vcNav];
  view = [(CKMainController *)selfCopy view];
  [view frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  view2 = [(CKCommonNavController *)selfCopy->_vcNav view];
  [view2 setFrame:{v14, v16, v18, v20}];

  view3 = [(CKMainController *)selfCopy view];
  view4 = [(CKCommonNavController *)selfCopy->_vcNav view];
  [view3 addSubview:view4];

  [(CKCommonNavController *)selfCopy->_vcNav didMoveToParentViewController:selfCopy];
  view5 = [(CKConnectingViewController *)selfCopy->_vcConnecting view];
  [view5 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v26 = v25;

  view6 = [(CKMainController *)selfCopy view];
  [view6 size];
  v29 = v28;

  [(CKMainController *)selfCopy setPreferredContentSize:v29, v26];
  [(CKCommonNavController *)selfCopy->_vcNav setPreferredContentSize:v29, v26];
  [(CKMainController *)selfCopy activateUILockTimer];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100005910(self, a2, disappear);
    }
  }

  [(SFRemoteTextInputClient *)selfCopy->_rtiClient invalidate];
  [(SFRemoteInteractionSession *)selfCopy->_riSession invalidate];
  if (!selfCopy->_paired)
  {
    [(SFRemoteAutoFillSessionHelper *)selfCopy->_rafHelper serverUserNotificationDidDismiss:selfCopy->_deviceID];
  }

  [(SFRemoteAutoFillSessionHelper *)selfCopy->_rafHelper invalidate];
  uiLockTimer = selfCopy->_uiLockTimer;
  if (uiLockTimer)
  {
    v6 = uiLockTimer;
    dispatch_source_cancel(v6);
    v7 = selfCopy->_uiLockTimer;
    selfCopy->_uiLockTimer = 0;
  }

  [(CKBaseViewController *)selfCopy->_vcConnecting setMainController:0];
  vcConnecting = selfCopy->_vcConnecting;
  selfCopy->_vcConnecting = 0;

  vcDeferred = selfCopy->_vcDeferred;
  selfCopy->_vcDeferred = 0;

  [(CKBaseViewController *)selfCopy->_vcKeyboard setMainController:0];
  vcKeyboard = selfCopy->_vcKeyboard;
  selfCopy->_vcKeyboard = 0;

  vcNav = selfCopy->_vcNav;
  selfCopy->_vcNav = 0;

  v12.receiver = selfCopy;
  v12.super_class = CKMainController;
  [(CKMainController *)&v12 viewWillDisappear:disappearCopy];
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [CRSessionInfo sessionInfoWithNotification:notificationCopy];
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_10000592C(v5);
  }

  request = [notificationCopy request];
  content = [request content];
  userInfo = [content userInfo];

  Int64 = CFDictionaryGetInt64();
  if (v5)
  {
    objc_storeStrong(&self->_sessionInfo, v5);
    self->_testFlags = 0;
    deviceIdentifier = [(CRSessionInfo *)self->_sessionInfo deviceIdentifier];
    if ([deviceIdentifier isEqualToString:@"00000000-0000-0000-0000-000000000001"])
    {
      self->_testFlags |= 1u;
    }

    if ([deviceIdentifier isEqualToString:@"00000000-0000-0000-0000-000000000002"])
    {
      self->_testFlags |= 2u;
    }

    v11 = [[NSUUID alloc] initWithUUIDString:deviceIdentifier];
    v12 = v11;
    if (!v11)
    {
      v12 = +[NSUUID UUID];
    }

    objc_storeStrong(&self->_deviceID, v12);
    if (!v11)
    {
    }
  }

  else if (gLogCategory_ContinuityKeyboard <= 60 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005988(notificationCopy);
  }

  if (Int64)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  self->_displayMode = v13;
  [(CKMainController *)self update];
}

- (void)dismissWithDeferral
{
  selfCopy = self;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1000059C8(self, a2, v2);
    }
  }

  dismissTimer = selfCopy->_dismissTimer;
  if (dismissTimer)
  {
    v5 = dismissTimer;
    dispatch_source_cancel(v5);
    v6 = selfCopy->_dismissTimer;
    selfCopy->_dismissTimer = 0;
  }

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v8 = selfCopy->_dismissTimer;
  selfCopy->_dismissTimer = v7;

  v9 = selfCopy->_dismissTimer;
  v10 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
  v11 = selfCopy->_dismissTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000219C;
  handler[3] = &unk_10000C2C0;
  handler[4] = selfCopy;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_resume(selfCopy->_dismissTimer);
}

- (void)update
{
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005A00(self);
  }

  displayMode = self->_displayMode;
  if (displayMode == 2)
  {

    [(CKMainController *)self keyboardEnsureActive];
  }

  else
  {
    if (displayMode != 1)
    {
      if (gLogCategory_ContinuityKeyboard > 60)
      {
        return;
      }

      if (gLogCategory_ContinuityKeyboard == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        displayMode = self->_displayMode;
      }

      LogPrintF(&gLogCategory_ContinuityKeyboard, "[CKMainController update]", 60, "### Unsupported display mode: %d", displayMode);
      return;
    }

    [(CKMainController *)self autoFillEnsureActive];
  }
}

- (void)refreshRTI
{
  selfCopy = self;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100005B9C(self, a2, v2);
    }
  }

  rtiClient = selfCopy->_rtiClient;
  cachedRTIData = selfCopy->_cachedRTIData;

  [(SFRemoteTextInputClient *)rtiClient handleTextInputData:cachedRTIData];
}

- (void)activateUILockTimer
{
  if (!self->_uiLockTimer)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    uiLockTimer = self->_uiLockTimer;
    self->_uiLockTimer = v3;

    v5 = self->_uiLockTimer;
    v6 = dispatch_time(0, 400000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
    v7 = self->_uiLockTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100002A24;
    handler[3] = &unk_10000C2C0;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(self->_uiLockTimer);
  }
}

- (void)showContinuityKeyboardUI
{
  selfCopy = self;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100005BD4(self, a2, v2);
    }
  }

  vcKeyboard = selfCopy->_vcKeyboard;
  if (!vcKeyboard)
  {
    v5 = [(UIStoryboard *)selfCopy->_mainStoryboard instantiateViewControllerWithIdentifier:@"Keyboard"];
    v6 = selfCopy->_vcKeyboard;
    selfCopy->_vcKeyboard = v5;

    [(CKBaseViewController *)selfCopy->_vcKeyboard setMainController:selfCopy];
    vcKeyboard = selfCopy->_vcKeyboard;
  }

  [(CKMainController *)selfCopy transitionToViewControllerWhenReady:vcKeyboard];
}

- (void)showPickerUIWithURLString:(id)string bundleID:(id)d localizedAppName:(id)name unlocalizedAppName:(id)appName handler:(id)handler
{
  stringCopy = string;
  dCopy = d;
  nameCopy = name;
  appNameCopy = appName;
  handlerCopy = handler;
  v17 = stringCopy;
  if (v17)
  {
    v18 = [NSURL URLWithString:v17];
  }

  else
  {
    v18 = 0;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v19 = qword_100011EF0;
  v29 = qword_100011EF0;
  if (!qword_100011EF0)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100004A30;
    v25[3] = &unk_10000C568;
    v25[4] = &v26;
    sub_100004A30(v25);
    v19 = v27[3];
  }

  v20 = v19;
  _Block_object_dispose(&v26, 8);
  v21 = objc_alloc_init(v19);
  vcPicker = self->_vcPicker;
  self->_vcPicker = v21;

  [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setDelegate:self];
  if (v18)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setWebViewURL:v18];
  }

  if (dCopy)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteAppID:dCopy];
  }

  if (nameCopy)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteLocalizedAppName:nameCopy];
  }

  if (appNameCopy)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteUnlocalizedAppName:appNameCopy];
  }

  [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setAuthenticationGracePeriod:45.0];
  v23 = self->_vcPicker;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100002DF8;
  v24[3] = &unk_10000C478;
  v24[4] = self;
  [(_SFAppAutoFillPasswordViewController *)v23 authenticateToPresentInPopover:0 completion:v24];
}

- (void)showPINEntryUIWithFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  v4 = *&seconds;
  v5 = *&flags;
  selfCopy = self;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100005C48(self, a2, *&flags);
    }
  }

  vcPINEntry = selfCopy->_vcPINEntry;
  if (vcPINEntry)
  {

    [(CKPINEntryViewController *)vcPINEntry showWithFlags:v5 throttleSeconds:v4];
  }

  else
  {
    v8 = [(UIStoryboard *)selfCopy->_mainStoryboard instantiateViewControllerWithIdentifier:@"AuthEntry"];
    v9 = selfCopy->_vcPINEntry;
    selfCopy->_vcPINEntry = v8;

    [(CKBaseViewController *)selfCopy->_vcPINEntry setMainController:selfCopy];
    v10 = selfCopy->_vcPINEntry;

    [(CKMainController *)selfCopy transitionToViewControllerWhenReady:v10];
  }
}

- (void)transitionToViewControllerWhenReady:(id)ready
{
  readyCopy = ready;
  v6 = readyCopy;
  v9 = readyCopy;
  if (self->_uiLockActive)
  {
    if (gLogCategory_ContinuityKeyboard <= 30)
    {
      if (gLogCategory_ContinuityKeyboard != -1 || (readyCopy = _LogCategory_Initialize(), v6 = v9, readyCopy))
      {
        sub_100005C64(readyCopy, v6, v5);
        v6 = v9;
      }
    }

    v7 = v6;
    vcDeferred = self->_vcDeferred;
    self->_vcDeferred = v7;
  }

  else
  {
    CKTransitionToViewController(self->_vcNav, readyCopy, self);
    vcDeferred = self->_vcDeferred;
    self->_vcDeferred = 0;
  }
}

- (void)_handleRemoteTextEvent:(id)event
{
  eventCopy = event;
  dismissTimer = self->_dismissTimer;
  if (dismissTimer)
  {
    v6 = dismissTimer;
    dispatch_source_cancel(v6);
    v7 = self->_dismissTimer;
    self->_dismissTimer = 0;
  }

  v8 = [eventCopy copy];
  cachedRTIData = self->_cachedRTIData;
  self->_cachedRTIData = v8;

  [(SFRemoteTextInputClient *)self->_rtiClient handleTextInputData:eventCopy];
  v10 = SFRTIDataPayloadForData();
  v13 = v10;
  if (!v10)
  {
    if (gLogCategory_ContinuityKeyboard <= 60)
    {
      if (gLogCategory_ContinuityKeyboard != -1 || (v10 = _LogCategory_Initialize(), v10))
      {
        sub_100005CB4(v10, v11, v12);
      }
    }

    goto LABEL_24;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v14 = qword_100011F00;
  v28 = qword_100011F00;
  if (!qword_100011F00)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100004BE8;
    v24[3] = &unk_10000C568;
    v24[4] = &v25;
    sub_100004BE8(v24);
    v14 = v26[3];
  }

  v15 = v14;
  _Block_object_dispose(&v25, 8);
  data = [v13 data];
  v17 = [v14 payloadWithData:data version:{objc_msgSend(v13, "version")}];

  if (!v17)
  {
    if (gLogCategory_ContinuityKeyboard <= 60 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
    {
      sub_100005C80();
    }

LABEL_24:
    v22 = 0;
    prompt = 0;
    v17 = 0;
    title = 0;
    goto LABEL_16;
  }

  documentTraits = [v17 documentTraits];
  prompt = [documentTraits prompt];

  documentTraits2 = [v17 documentTraits];
  title = [documentTraits2 title];

  if (!prompt)
  {
    v22 = 0;
LABEL_11:
    if (title)
    {
      v22 = [title copy];
    }

    goto LABEL_13;
  }

  v22 = [prompt copy];
  if (!v22)
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v22)
  {
    vcKeyboard = self->_vcKeyboard;
    if (vcKeyboard)
    {
      [(CKKeyboardViewController *)vcKeyboard updatePrompt:v22];
    }
  }

LABEL_16:
}

- (void)_textSessionDidBegin:(id)begin
{
  [(CKMainController *)self _updateTextField:begin];
  dismissTimer = self->_dismissTimer;
  if (dismissTimer)
  {
    v6 = dismissTimer;
    dispatch_source_cancel(v6);
    v5 = self->_dismissTimer;
    self->_dismissTimer = 0;
  }
}

- (void)_textSessionDidEnd:(id)end
{
  endCopy = end;
  v7 = endCopy;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (endCopy = _LogCategory_Initialize(), endCopy))
    {
      sub_100005CD0(endCopy, v5, v6);
    }
  }

  [(CKMainController *)self dismissWithDeferral];
}

- (void)_updateTextField:(id)field
{
  fieldCopy = field;
  textField = [(CKKeyboardViewController *)self->_vcKeyboard textField];
  if (textField)
  {
    [textField setKeyboardType:{objc_msgSend(fieldCopy, "keyboardType")}];
    [textField setReturnKeyType:{objc_msgSend(fieldCopy, "returnKeyType")}];
    [textField setSecureTextEntry:{objc_msgSend(fieldCopy, "secureTextEntry")}];
    text = [fieldCopy text];
    [textField setText:text];

    prompt = [fieldCopy prompt];
    if (prompt)
    {
      [textField setPlaceholder:prompt];
    }

    else
    {
      title = [fieldCopy title];
      [textField setPlaceholder:title];
    }

    [textField becomeFirstResponder];
  }

  else
  {
    sub_100005CEC(0, v4, v5);
  }
}

- (void)autoFillEnsureActive
{
  deviceIdentifier = [(CRSessionInfo *)self->_sessionInfo deviceIdentifier];
  v4 = [[NSUUID alloc] initWithUUIDString:deviceIdentifier];
  if (!self->_rafHelper)
  {
    v5 = objc_alloc_init(SFRemoteAutoFillSessionHelper);
    rafHelper = self->_rafHelper;
    self->_rafHelper = v5;

    [(SFRemoteAutoFillSessionHelper *)self->_rafHelper setInterruptionHandler:&stru_10000C300];
    [(SFRemoteAutoFillSessionHelper *)self->_rafHelper setInvalidationHandler:&stru_10000C320];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100002428;
    v15[3] = &unk_10000C2C0;
    v15[4] = self;
    [(SFRemoteAutoFillSessionHelper *)self->_rafHelper setDismissUserNotificationHandler:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100002430;
    v14[3] = &unk_10000C370;
    v14[4] = self;
    [(SFRemoteAutoFillSessionHelper *)self->_rafHelper setPairingResponseHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000025CC;
    v13[3] = &unk_10000C398;
    v13[4] = self;
    [(SFRemoteAutoFillSessionHelper *)self->_rafHelper setPromptForPINHandler:v13];
    sub_100004F60();
    v9 = sub_1000025DC;
    v10 = &unk_10000C3C0;
    selfCopy = self;
    v12 = v4;
    [v7 activateWithCompletion:v8];
  }
}

- (void)keyboardEnsureActive
{
  deviceIdentifier = [(CRSessionInfo *)self->_sessionInfo deviceIdentifier];
  v4 = [[NSUUID alloc] initWithUUIDString:deviceIdentifier];
  v5 = v4;
  if (!self->_riSession)
  {
    if (self->_sessionInfo)
    {
      if (v4)
      {
        if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_ContinuityKeyboard, "[CKMainController keyboardEnsureActive]", 30, "Activating...");
        }

        if ([deviceIdentifier isEqualToString:@"00000000-0000-0000-0000-000000000001"])
        {
          self->_testFlags |= 4u;
        }

        v6 = objc_alloc_init(SFDevice);
        [v6 setIdentifier:v5];
        v7 = objc_alloc_init(SFRemoteInteractionSession);
        riSession = self->_riSession;
        self->_riSession = v7;

        [(SFRemoteInteractionSession *)self->_riSession setPeerDevice:v6];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100002670;
        v18[3] = &unk_10000C3E8;
        v18[4] = self;
        [(SFRemoteInteractionSession *)self->_riSession setRemoteTextEventHandler:v18];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000026E0;
        v17[3] = &unk_10000C410;
        v17[4] = self;
        [(SFRemoteInteractionSession *)self->_riSession setTextSessionDidBegin:v17];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100002750;
        v16[3] = &unk_10000C410;
        v16[4] = self;
        [(SFRemoteInteractionSession *)self->_riSession setTextSessionDidEnd:v16];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10000275C;
        v15[3] = &unk_10000C410;
        v15[4] = self;
        [(SFRemoteInteractionSession *)self->_riSession setTextSessionDidChange:v15];
        [(SFRemoteInteractionSession *)self->_riSession activateWithCompletion:&stru_10000C450];
        v9 = objc_alloc_init(SFRemoteTextInputClient);
        rtiClient = self->_rtiClient;
        self->_rtiClient = v9;

        sub_100004F60();
        v12 = sub_100002818;
        v13 = &unk_10000C3E8;
        selfCopy = self;
        [(SFRemoteTextInputClient *)self->_rtiClient setEventHandler:v11];
        [(SFRemoteTextInputClient *)self->_rtiClient activate];
      }

      else if (gLogCategory_ContinuityKeyboard <= 60 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_ContinuityKeyboard, "[CKMainController keyboardEnsureActive]", 60, "### Bad device ID?\n");
      }
    }

    else if (gLogCategory_ContinuityKeyboard <= 10 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_ContinuityKeyboard, "[CKMainController keyboardEnsureActive]", 10, "No session info\n");
    }
  }
}

@end