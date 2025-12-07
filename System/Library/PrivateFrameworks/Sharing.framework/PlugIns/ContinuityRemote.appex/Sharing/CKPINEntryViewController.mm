@interface CKPINEntryViewController
- (void)_handlePairingSucceededWithCompletion:(id)completion;
- (void)handlePINEntered:(id)entered;
- (void)handlePasscodeFieldTextChanged;
- (void)handleTap:(id)tap;
- (void)showWithFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CKPINEntryViewController

- (void)showWithFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  [(UIImageView *)self->_checkmarkView setAlpha:0.0];
  [(UIView *)self->_pinEntryView setAlpha:1.0];
  if ((flags & 0x10000) != 0)
  {
    [(UIView *)self->_pinEntryView size];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003F94;
    v13[3] = &unk_10000C4C8;
    v13[4] = self;
    *&v13[5] = v8 * 0.5;
    v9 = [[UIViewPropertyAnimator alloc] initWithDuration:v13 dampingRatio:0.7 animations:0.12];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003FF4;
    v12[3] = &unk_10000C2C0;
    v12[4] = self;
    [v9 addAnimations:v12 delayFactor:0.01];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100004054;
    v10[3] = &unk_10000C4F0;
    v10[4] = self;
    secondsCopy = seconds;
    [v9 addCompletion:v10];
    [v9 startAnimation];
  }

  else
  {
    passcodeField = self->_passcodeField;

    [(TVRPasscodeField *)passcodeField clear];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100005DFC(self, a2, appear);
    }
  }

  v16.receiver = selfCopy;
  v16.super_class = CKPINEntryViewController;
  [(CKPINEntryViewController *)&v16 viewWillAppear:appearCopy];
  v5 = SFLocalizedStringForKey();
  [(UILabel *)selfCopy->_infoLabel setText:v5];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v6 = qword_100011F10;
  v21 = qword_100011F10;
  if (!qword_100011F10)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100004DA0;
    v17[3] = &unk_10000C568;
    v17[4] = &v18;
    sub_100004DA0(v17);
    v6 = v19[3];
  }

  v7 = v6;
  _Block_object_dispose(&v18, 8);
  v8 = objc_alloc_init(v6);
  passcodeField = selfCopy->_passcodeField;
  selfCopy->_passcodeField = v8;

  [(TVRPasscodeField *)selfCopy->_passcodeField setAutoresizingMask:2];
  [(TVRPasscodeField *)selfCopy->_passcodeField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TVRPasscodeField *)selfCopy->_passcodeField setUseSystemColors:1];
  [(UIView *)selfCopy->_pinEntryView addSubview:selfCopy->_passcodeField];
  pinEntryView = selfCopy->_pinEntryView;
  v11 = [NSLayoutConstraint constraintWithItem:selfCopy->_passcodeField attribute:3 relatedBy:0 toItem:pinEntryView attribute:3 multiplier:1.0 constant:0.0];
  v22[0] = v11;
  v12 = [NSLayoutConstraint constraintWithItem:selfCopy->_passcodeField attribute:4 relatedBy:0 toItem:selfCopy->_pinEntryView attribute:4 multiplier:1.0 constant:0.0];
  v22[1] = v12;
  v13 = [NSLayoutConstraint constraintWithItem:selfCopy->_passcodeField attribute:1 relatedBy:0 toItem:selfCopy->_pinEntryView attribute:1 multiplier:1.0 constant:0.0];
  v22[2] = v13;
  v14 = [NSLayoutConstraint constraintWithItem:selfCopy->_passcodeField attribute:2 relatedBy:0 toItem:selfCopy->_pinEntryView attribute:2 multiplier:1.0 constant:0.0];
  v22[3] = v14;
  v15 = [NSArray arrayWithObjects:v22 count:4];
  [(UIView *)pinEntryView addConstraints:v15];

  [(TVRPasscodeField *)selfCopy->_passcodeField addTarget:selfCopy action:"handlePasscodeFieldTextChanged" forControlEvents:0x20000];
  [(CKPINEntryViewController *)selfCopy showWithFlags:0 throttleSeconds:0xFFFFFFFFLL];
  [(TVRPasscodeField *)selfCopy->_passcodeField becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100005E18(self, a2, disappear);
    }
  }

  [(TVRPasscodeField *)selfCopy->_passcodeField removeTarget:selfCopy forEvents:0x20000];
  v5.receiver = selfCopy;
  v5.super_class = CKPINEntryViewController;
  [(CKPINEntryViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100005E34(self, a2, appear);
    }
  }

  v5.receiver = selfCopy;
  v5.super_class = CKPINEntryViewController;
  [(CKPINEntryViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)handlePasscodeFieldTextChanged
{
  selfCopy = self;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100005E50(self, a2, v2);
    }
  }

  text = [(TVRPasscodeField *)selfCopy->_passcodeField text];
  if ([text length] == 4)
  {
    [(CKPINEntryViewController *)selfCopy handlePINEntered:text];
  }
}

- (void)handlePINEntered:(id)entered
{
  enteredCopy = entered;
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005E6C(enteredCopy);
  }

  if ([self->super._mainController testFlags])
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100004710;
    handler[3] = &unk_10000C518;
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v8 = enteredCopy;
    selfCopy = self;
    rafHelper = v7;
    dispatch_source_set_event_handler(rafHelper, handler);
    SFDispatchTimerSet();
    dispatch_resume(rafHelper);
  }

  else
  {
    rafHelper = [self->super._mainController rafHelper];
    [rafHelper serverTryPIN:enteredCopy];
  }
}

- (void)_handlePairingSucceededWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      sub_100005EAC(completionCopy, v5, v6);
    }
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000048B4;
  v11[3] = &unk_10000C2C0;
  v11[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004910;
  v9[3] = &unk_10000C540;
  v10 = v7;
  v8 = v7;
  [UIView animateWithDuration:v11 animations:v9 completion:0.4];
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  v7 = tapCopy;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (tapCopy = _LogCategory_Initialize(), tapCopy))
    {
      sub_100005EC8(tapCopy, v5, v6);
    }
  }

  [(TVRPasscodeField *)self->_passcodeField becomeFirstResponder];
}

@end