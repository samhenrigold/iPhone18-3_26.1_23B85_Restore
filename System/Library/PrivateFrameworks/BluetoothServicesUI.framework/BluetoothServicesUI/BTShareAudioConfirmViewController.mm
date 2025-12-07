@interface BTShareAudioConfirmViewController
- (void)_updateDeviceVisual:(id)visual;
- (void)eventCancel:(id)cancel;
- (void)eventPermanentButton:(id)button;
- (void)eventTemporarilyShareButton:(id)button;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BTShareAudioConfirmViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(BTShareAudioConfirmViewController *)self viewWillAppear:a2, appear];
    }
  }

  v11.receiver = selfCopy;
  v11.super_class = BTShareAudioConfirmViewController;
  [(BTShareAudioBaseViewController *)&v11 viewWillAppear:appearCopy];
  if (selfCopy->_deviceName)
  {
    [(UILabel *)selfCopy->super._titleLabel setText:?];
  }

  else
  {
    if (selfCopy->_colorCode)
    {
      mainBundle = SFLocalizedNameForBluetoothProductID();
      [(UILabel *)selfCopy->super._titleLabel setText:mainBundle];
    }

    else
    {
      mainBundle = [(BTShareAudioViewController *)selfCopy->super._mainController mainBundle];
      v6 = CULocalizedStringEx();
      [(UILabel *)selfCopy->super._titleLabel setText:v6];
    }
  }

  [(UILabel *)selfCopy->super._titleLabel setNumberOfLines:2];
  colorCode = selfCopy->_colorCode;
  if (!colorCode)
  {
    [(BTShareAudioConfirmViewController *)selfCopy _updateDeviceVisual:0];
    return;
  }

  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      colorCode = selfCopy->_colorCode;
    }

    LogPrintF(&gLogCategory_BTShareAudioViewController, "[BTShareAudioConfirmViewController viewWillAppear:]", 30, "Movie getting: PID 0x%04X, Color %u", colorCode, *(&selfCopy->super._viewActive + 1));
  }

LABEL_16:
  v8 = objc_alloc_init(MEMORY[0x277D54C38]);
  [v8 setBluetoothProductID:LOWORD(selfCopy->_colorCode)];
  [v8 setColorCode:*(&selfCopy->super._viewActive + 1)];
  [v8 setTimeoutSeconds:5.0];
  v9 = objc_alloc_init(MEMORY[0x277D54C30]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__BTShareAudioConfirmViewController_viewWillAppear___block_invoke;
  v10[3] = &unk_278D12C70;
  v10[4] = v9;
  v10[5] = selfCopy;
  [v9 getDeviceAssets:v8 completion:v10];
}

void __52__BTShareAudioConfirmViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  [*(a1 + 32) invalidate];
  v7 = *(a1 + 40);
  v6 = (a1 + 40);
  if (*(v7 + 1016) == 1)
  {
    v8 = [v9 assetBundlePath];
    if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
    {
      __52__BTShareAudioConfirmViewController_viewWillAppear___block_invoke_cold_1();
    }

    [*v6 _updateDeviceVisual:v8];
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
      [(BTShareAudioConfirmViewController *)self viewWillDisappear:a2, disappear];
    }
  }

  v5.receiver = selfCopy;
  v5.super_class = BTShareAudioConfirmViewController;
  [(BTShareAudioBaseViewController *)&v5 viewWillDisappear:disappearCopy];
  [(BTMediaPlayerView *)selfCopy->_productMovieView stop];
}

- (void)eventTemporarilyShareButton:(id)button
{
  buttonCopy = button;
  v8 = buttonCopy;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (buttonCopy = _LogCategory_Initialize(), buttonCopy))
    {
      [(BTShareAudioConfirmViewController *)buttonCopy eventTemporarilyShareButton:v5, v6];
    }
  }

  shareAudioSession = [(BTShareAudioViewController *)self->super._mainController shareAudioSession];
  [shareAudioSession userConfirmed:0];
}

- (void)eventPermanentButton:(id)button
{
  buttonCopy = button;
  v8 = buttonCopy;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (buttonCopy = _LogCategory_Initialize(), buttonCopy))
    {
      [(BTShareAudioConfirmViewController *)buttonCopy eventPermanentButton:v5, v6];
    }
  }

  shareAudioSession = [(BTShareAudioViewController *)self->super._mainController shareAudioSession];
  [shareAudioSession userConfirmed:1];
}

- (void)eventCancel:(id)cancel
{
  cancelCopy = cancel;
  v7 = cancelCopy;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (cancelCopy = _LogCategory_Initialize(), cancelCopy))
    {
      [(BTShareAudioConfirmViewController *)cancelCopy eventCancel:v5, v6];
    }
  }

  [(BTShareAudioViewController *)self->super._mainController reportUserCancelled];
}

- (void)_updateDeviceVisual:(id)visual
{
  v15 = [(BTShareAudioViewController *)self->super._mainController _moviePathForPID:self->_colorCode colorCode:*(&self->super._viewActive + 1)];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-Loop", v15];
  mainBundle = [(BTShareAudioViewController *)self->super._mainController mainBundle];
  v6 = [mainBundle pathForResource:v4 ofType:@"mov"];

  if (v6)
  {
    if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
    {
      [BTShareAudioConfirmViewController _updateDeviceVisual:v6];
    }

    [(BTMediaPlayerView *)self->_productMovieView startMovieLoopWithPath:v6];
    [(BTMediaPlayerView *)self->_productMovieView setHidden:0];
  }

  else
  {
    v7 = [(BTShareAudioViewController *)self->super._mainController _imageForPID:self->_colorCode colorCode:*(&self->super._viewActive + 1)];
    v10 = v7;
    if (v7)
    {
      if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
      {
        [BTShareAudioConfirmViewController _updateDeviceVisual:];
      }

      p_productImageView = &self->_productImageView;
      [(UIImageView *)*p_productImageView setImage:v10];
    }

    else
    {
      if (gLogCategory_BTShareAudioViewController <= 30)
      {
        if (gLogCategory_BTShareAudioViewController != -1 || (v7 = _LogCategory_Initialize(), v7))
        {
          [(BTShareAudioConfirmViewController *)v7 _updateDeviceVisual:v8, v9];
        }
      }

      v12 = MEMORY[0x277D755B8];
      mainBundle2 = [(BTShareAudioViewController *)self->super._mainController mainBundle];
      v14 = [v12 imageNamed:@"ShareAudioAirPods" inBundle:mainBundle2 compatibleWithTraitCollection:0];
      p_productImageView = &self->_shareImageView;
      [(UIImageView *)*p_productImageView setImage:v14];
    }

    [(UIImageView *)*p_productImageView setHidden:0];
  }
}

@end