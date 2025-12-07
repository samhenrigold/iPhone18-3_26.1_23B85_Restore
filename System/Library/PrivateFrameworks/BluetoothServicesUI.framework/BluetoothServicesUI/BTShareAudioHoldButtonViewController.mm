@interface BTShareAudioHoldButtonViewController
- (id)_holdImageForPID:(unsigned int)d colorCode:(unsigned int)code;
- (void)_updateDeviceVisual:(id)visual;
- (void)eventCancel:(id)cancel;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BTShareAudioHoldButtonViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(BTShareAudioHoldButtonViewController *)self viewWillAppear:a2, appear];
    }
  }

  v11.receiver = selfCopy;
  v11.super_class = BTShareAudioHoldButtonViewController;
  [(BTShareAudioBaseViewController *)&v11 viewWillAppear:appearCopy];
  mainBundle = [(BTShareAudioViewController *)selfCopy->super._mainController mainBundle];
  v6 = CULocalizedStringEx();
  [(UILabel *)selfCopy->_infoLabel setText:v6];

  colorCode = selfCopy->_colorCode;
  if (colorCode)
  {
    if (gLogCategory_BTShareAudioViewController <= 30)
    {
      if (gLogCategory_BTShareAudioViewController == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_10;
        }

        colorCode = selfCopy->_colorCode;
      }

      LogPrintF(&gLogCategory_BTShareAudioViewController, "[BTShareAudioHoldButtonViewController viewWillAppear:]", 30, "Movie getting: PID 0x%04X, Color %u", colorCode, *(&selfCopy->super._viewActive + 1));
    }

LABEL_10:
    v8 = objc_alloc_init(MEMORY[0x277D54C38]);
    [v8 setBluetoothProductID:LOWORD(selfCopy->_colorCode)];
    [v8 setColorCode:*(&selfCopy->super._viewActive + 1)];
    [v8 setTimeoutSeconds:5.0];
    v9 = objc_alloc_init(MEMORY[0x277D54C30]);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__BTShareAudioHoldButtonViewController_viewWillAppear___block_invoke;
    v10[3] = &unk_278D12C70;
    v10[4] = v9;
    v10[5] = selfCopy;
    [v9 getDeviceAssets:v8 completion:v10];

    goto LABEL_11;
  }

  [(BTShareAudioHoldButtonViewController *)selfCopy _updateDeviceVisual:0];
LABEL_11:
}

void __55__BTShareAudioHoldButtonViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
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
      __55__BTShareAudioHoldButtonViewController_viewWillAppear___block_invoke_cold_1();
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
      [(BTShareAudioHoldButtonViewController *)self viewWillDisappear:a2, disappear];
    }
  }

  v5.receiver = selfCopy;
  v5.super_class = BTShareAudioHoldButtonViewController;
  [(BTShareAudioBaseViewController *)&v5 viewWillDisappear:disappearCopy];
  [(BTMediaPlayerView *)selfCopy->_productMovieView stop];
}

- (void)viewDidLayoutSubviews
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = BTShareAudioHoldButtonViewController;
  [(BTShareAudioHoldButtonViewController *)&v12 viewDidLayoutSubviews];
  layer = [(UIView *)self->_productMovieContainerView layer];
  mask = [layer mask];
  if (mask)
  {
    layer2 = mask;
  }

  else
  {
    colorCode = self->_colorCode;

    if (colorCode != 8202)
    {
      return;
    }

    layer = [MEMORY[0x277CD9EB0] layer];
    [(UIView *)self->_productMovieContainerView bounds];
    [layer setFrame:?];
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
    v13[0] = [v7 CGColor];
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
    v13[1] = [v8 CGColor];
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
    v13[2] = [v9 CGColor];
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
    v13[3] = [v10 CGColor];
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
    [layer setColors:v11];

    [layer setLocations:&unk_2853D58C8];
    [layer setStartPoint:{0.5, 0.0}];
    [layer setEndPoint:{0.5, 1.0}];
    layer2 = [(UIView *)self->_productMovieContainerView layer];
    [layer2 setMask:layer];
  }
}

- (void)eventCancel:(id)cancel
{
  cancelCopy = cancel;
  v7 = cancelCopy;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (cancelCopy = _LogCategory_Initialize(), cancelCopy))
    {
      [(BTShareAudioHoldButtonViewController *)cancelCopy eventCancel:v5, v6];
    }
  }

  [(BTShareAudioViewController *)self->super._mainController reportUserCancelled];
}

- (id)_holdImageForPID:(unsigned int)d colorCode:(unsigned int)code
{
  v5 = d - 8194;
  if (v5 <= 0x26)
  {
    if (((1 << (d - 2)) & 0x6472863101) != 0)
    {
      8203 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ShareAudioDetail-PID-%u-CL_0-Hold", *&d];
LABEL_4:
      v7 = 8203;
      v8 = MEMORY[0x277D755B8];
      mainBundle = [(BTShareAudioViewController *)self->super._mainController mainBundle];
      v10 = [v8 imageNamed:v7 inBundle:mainBundle compatibleWithTraitCollection:0];

      goto LABEL_5;
    }

    if (v5 == 9)
    {
      8203 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ShareAudioDetail-PID-%u-CL_1-Hold", 8203];
      goto LABEL_4;
    }
  }

  v10 = [(BTShareAudioViewController *)self->super._mainController _imageForPID:*&d colorCode:*&code];
LABEL_5:

  return v10;
}

- (void)_updateDeviceVisual:(id)visual
{
  v15 = [(BTShareAudioViewController *)self->super._mainController _moviePathForPID:self->_colorCode colorCode:*(&self->super._viewActive + 1)];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-Hold", v15];
  mainBundle = [(BTShareAudioViewController *)self->super._mainController mainBundle];
  v6 = [mainBundle pathForResource:v4 ofType:@"mov"];

  if (v6)
  {
    if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
    {
      [BTShareAudioHoldButtonViewController _updateDeviceVisual:v6];
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
        [BTShareAudioHoldButtonViewController _updateDeviceVisual:];
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
          [(BTShareAudioHoldButtonViewController *)v7 _updateDeviceVisual:v8, v9];
        }
      }

      [(UIImageView *)self->_productImageView setHidden:1];
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