@interface CKKeyboardViewController
- (void)doneButtonPressed;
- (void)updatePrompt:(id)prompt;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CKKeyboardViewController

- (void)doneButtonPressed
{
  selfCopy = self;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100005D68(self, a2, v2);
    }
  }

  v6 = SFRemoteTextInputPayloadFromLegacyAPI();
  v4 = SFTextInputDataForRTIDataPayload();
  riSession = [selfCopy->super._mainController riSession];
  [riSession sendPayload:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100005D84(self, a2, appear);
    }
  }

  v5.receiver = selfCopy;
  v5.super_class = CKKeyboardViewController;
  [(CKKeyboardViewController *)&v5 viewDidAppear:appearCopy];
  [(CRTextField *)selfCopy->_textField becomeFirstResponder];
  [selfCopy->super._mainController refreshRTI];
  [(CRTextField *)selfCopy->_textField reloadInputViews];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CKKeyboardViewController;
  [(CKKeyboardViewController *)&v7 viewWillAppear:appear];
  [(CRTextField *)self->_textField setKeyboardAppearance:1];
  rtiClient = [self->super._mainController rtiClient];
  [(CRTextField *)self->_textField setRtiClient:rtiClient];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003C80;
  v6[3] = &unk_10000C2C0;
  v6[4] = self;
  [(CRTextField *)self->_textField setDoneButtonPressedHandler:v6];
  view = [(CKKeyboardViewController *)self view];
  [view setNeedsLayout];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(CRTextField *)self->_textField setRtiClient:0];
  [(CRTextField *)self->_textField setDoneButtonPressedHandler:0];
  v5.receiver = self;
  v5.super_class = CKKeyboardViewController;
  [(CKKeyboardViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)updatePrompt:(id)prompt
{
  promptCopy = prompt;
  v6 = promptCopy;
  if (gLogCategory_ContinuityKeyboard > 30 || gLogCategory_ContinuityKeyboard == -1 && (v5 = _LogCategory_Initialize(), promptCopy = v6, !v5))
  {
    if (!promptCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100005DA0(promptCopy);
  if (v6)
  {
LABEL_5:
    [(CRTextField *)self->_textField setPlaceholder:v6];
  }

LABEL_6:

  _objc_release_x1();
}

@end