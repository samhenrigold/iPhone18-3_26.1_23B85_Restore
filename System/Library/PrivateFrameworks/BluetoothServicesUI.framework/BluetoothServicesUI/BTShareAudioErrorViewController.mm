@interface BTShareAudioErrorViewController
- (void)eventDismiss:(id)dismiss;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BTShareAudioErrorViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(BTShareAudioErrorViewController *)self viewWillAppear:a2, appear];
    }
  }

  v9.receiver = selfCopy;
  v9.super_class = BTShareAudioErrorViewController;
  [(BTShareAudioBaseViewController *)&v9 viewWillAppear:appearCopy];
  mainBundle = [(BTShareAudioViewController *)selfCopy->super._mainController mainBundle];
  v6 = CULocalizedStringEx();
  [(UILabel *)selfCopy->super._titleLabel setText:v6];

  v7 = CULocalizedStringEx();
  [(UILabel *)selfCopy->_infoLabel setText:v7];

  if (IsAppleInternalBuild())
  {
    v8 = NSPrintF("Internal: %{error}", selfCopy->_error);
    [(UILabel *)selfCopy->_internalLabel setText:v8];

    [(UILabel *)selfCopy->_internalLabel setHidden:0];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(BTShareAudioErrorViewController *)self viewWillDisappear:a2, disappear];
    }
  }

  v5.receiver = selfCopy;
  v5.super_class = BTShareAudioErrorViewController;
  [(BTShareAudioBaseViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)eventDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  v7 = dismissCopy;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (dismissCopy = _LogCategory_Initialize(), dismissCopy))
    {
      [(BTShareAudioErrorViewController *)dismissCopy eventDismiss:v5, v6];
    }
  }

  [(BTShareAudioViewController *)self->super._mainController reportError:self->_error];
}

@end