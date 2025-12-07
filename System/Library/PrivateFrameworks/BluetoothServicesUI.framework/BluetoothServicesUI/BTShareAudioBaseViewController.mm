@interface BTShareAudioBaseViewController
- (void)_handleMenuButton:(id)button;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BTShareAudioBaseViewController

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = BTShareAudioBaseViewController;
  [(BTShareAudioBaseViewController *)&v8 viewWillAppear:appear];
  [(BTShareAudioBaseViewController *)self setTitle:0];
  self->_viewActive = 1;
  flags = [(BTShareAudioViewController *)self->_mainController flags];
  if ((flags & 2) != 0)
  {
    darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
    [(UIView *)self->_cardView setBackgroundColor:darkGrayColor];
  }

  if (flags)
  {
    [(UIView *)self->_cardView _setContinuousCornerRadius:0.0];
  }

  v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleMenuButton_];
  [v6 setAllowedPressTypes:&unk_2853D5880];
  [v6 setNumberOfTapsRequired:1];
  view = [(BTShareAudioBaseViewController *)self view];
  [view addGestureRecognizer:v6];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BTShareAudioBaseViewController;
  [(BTShareAudioBaseViewController *)&v4 viewWillDisappear:disappear];
  self->_viewActive = 0;
}

- (void)_handleMenuButton:(id)button
{
  buttonCopy = button;
  v7 = buttonCopy;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (buttonCopy = _LogCategory_Initialize(), buttonCopy))
    {
      [(BTShareAudioBaseViewController *)buttonCopy _handleMenuButton:v5, v6];
    }
  }

  [(BTShareAudioViewController *)self->_mainController reportUserCancelled];
}

@end