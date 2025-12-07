@interface BTShareAudioConnectingViewController
- (void)_updateDeviceVisual:(id)visual;
- (void)_updateForDeviceInfo;
- (void)eventCancel:(id)cancel;
- (void)sessionProgressEvent:(int)event info:(id)info;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BTShareAudioConnectingViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(BTShareAudioConnectingViewController *)self viewWillAppear:a2, appear];
    }
  }

  v7.receiver = selfCopy;
  v7.super_class = BTShareAudioConnectingViewController;
  [(BTShareAudioBaseViewController *)&v7 viewWillAppear:appearCopy];
  [(BTShareAudioConnectingViewController *)selfCopy _updateForDeviceInfo];
  mainBundle = [(BTShareAudioViewController *)selfCopy->super._mainController mainBundle];
  [(UIView *)selfCopy->_progressView startAnimating];
  v6 = CULocalizedStringEx();
  [(UIActivityIndicatorView *)selfCopy->_progressActivity setText:v6];

  [(UILabel *)selfCopy->_progressLabel setHidden:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(BTShareAudioConnectingViewController *)self viewWillDisappear:a2, disappear];
    }
  }

  v5.receiver = selfCopy;
  v5.super_class = BTShareAudioConnectingViewController;
  [(BTShareAudioBaseViewController *)&v5 viewWillDisappear:disappearCopy];
  [(BTShareAudioViewController *)selfCopy->super._mainController setVcConnecting:0];
  [(UIImageView *)selfCopy->_productImageView stop];
}

- (void)eventCancel:(id)cancel
{
  cancelCopy = cancel;
  v7 = cancelCopy;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (cancelCopy = _LogCategory_Initialize(), cancelCopy))
    {
      [(BTShareAudioConnectingViewController *)cancelCopy eventCancel:v5, v6];
    }
  }

  [(BTShareAudioViewController *)self->super._mainController reportUserCancelled];
}

- (void)sessionProgressEvent:(int)event info:(id)info
{
  infoCopy = info;
  if (event == 200 || event == 300 || event == 220)
  {
    v9 = infoCopy;
    [(BTShareAudioConnectingViewController *)self _updateForDeviceInfo];
    mainBundle = [(BTShareAudioViewController *)self->super._mainController mainBundle];
    v8 = CULocalizedStringEx();
    [(UIActivityIndicatorView *)self->_progressActivity setText:v8];

    infoCopy = v9;
  }
}

- (void)_updateForDeviceInfo
{
  v3 = self->_cancelButton;
  if (v3)
  {
    [(UILabel *)self->super._titleLabel setText:v3];
  }

  else
  {
    mainBundle = [(BTShareAudioViewController *)self->super._mainController mainBundle];
    if (self->_colorCode)
    {
      SFLocalizedNameForBluetoothProductID();
    }

    else
    {
      CULocalizedStringEx();
    }
    v5 = ;
    [(UILabel *)self->super._titleLabel setText:v5];
  }

  [(UILabel *)self->super._titleLabel setNumberOfLines:2];
  colorCode = self->_colorCode;
  if (colorCode)
  {
    if (colorCode != *(&self->super._viewActive + 1))
    {
      *(&self->super._viewActive + 1) = colorCode;
      if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
      {
        [(BTShareAudioConnectingViewController *)&self->_colorCode _updateForDeviceInfo];
      }

      v7 = objc_alloc_init(MEMORY[0x277D54C38]);
      [v7 setBluetoothProductID:LOWORD(self->_colorCode)];
      [v7 setColorCode:self->_productIDActive];
      [v7 setTimeoutSeconds:5.0];
      v8 = objc_alloc_init(MEMORY[0x277D54C30]);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __60__BTShareAudioConnectingViewController__updateForDeviceInfo__block_invoke;
      v9[3] = &unk_278D12C70;
      v9[4] = v8;
      v9[5] = self;
      [v8 getDeviceAssets:v7 completion:v9];
    }
  }

  else
  {
    [(BTShareAudioConnectingViewController *)self _updateDeviceVisual:0];
  }
}

void __60__BTShareAudioConnectingViewController__updateForDeviceInfo__block_invoke(uint64_t a1, void *a2, void *a3)
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
      __60__BTShareAudioConnectingViewController__updateForDeviceInfo__block_invoke_cold_1();
    }

    [*v6 _updateDeviceVisual:v8];
  }
}

- (void)_updateDeviceVisual:(id)visual
{
  v15 = [(BTShareAudioViewController *)self->super._mainController _moviePathForPID:self->_colorCode colorCode:self->_productIDActive];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-Loop", v15];
  mainBundle = [(BTShareAudioViewController *)self->super._mainController mainBundle];
  v6 = [mainBundle pathForResource:v4 ofType:@"mov"];

  if (v6)
  {
    if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
    {
      [BTShareAudioConnectingViewController _updateDeviceVisual:v6];
    }

    [(UIImageView *)self->_productImageView startMovieLoopWithPath:v6];
    [(UIImageView *)self->_productImageView setHidden:0];
  }

  else
  {
    v7 = [(BTShareAudioViewController *)self->super._mainController _imageForPID:self->_colorCode colorCode:self->_productIDActive];
    v10 = v7;
    if (v7)
    {
      if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
      {
        [BTShareAudioConnectingViewController _updateDeviceVisual:];
      }

      p_productID = &self->_productID;
      [*p_productID setImage:v10];
    }

    else
    {
      if (gLogCategory_BTShareAudioViewController <= 30)
      {
        if (gLogCategory_BTShareAudioViewController != -1 || (v7 = _LogCategory_Initialize(), v7))
        {
          [(BTShareAudioConnectingViewController *)v7 _updateDeviceVisual:v8, v9];
        }
      }

      v12 = MEMORY[0x277D755B8];
      mainBundle2 = [(BTShareAudioViewController *)self->super._mainController mainBundle];
      v14 = [v12 imageNamed:@"ShareAudioAirPods" inBundle:mainBundle2 compatibleWithTraitCollection:0];
      p_productID = &self->_productMovieView;
      [*p_productID setImage:v14];
    }

    [*p_productID setHidden:0];
  }
}

@end