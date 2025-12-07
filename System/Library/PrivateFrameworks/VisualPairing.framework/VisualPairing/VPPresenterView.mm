@interface VPPresenterView
- (VPPresenterView)init;
- (VPPresenterView)initWithCoder:(id)coder;
- (VPPresenterView)initWithFrame:(CGRect)frame;
- (void)_watermarkStep;
- (void)layoutSubviews;
- (void)setVerificationCode:(id)code;
- (void)start;
- (void)stop;
@end

@implementation VPPresenterView

- (VPPresenterView)init
{
  v5.receiver = self;
  v5.super_class = VPPresenterView;
  v2 = [(VPPresenterView *)&v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v3 = v2;
  if (v2)
  {
    [(VPPresenterView *)v2 _initCommon];
  }

  return v3;
}

- (VPPresenterView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VPPresenterView;
  v3 = [(VPPresenterView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VPPresenterView *)v3 _initCommon];
  }

  return v4;
}

- (VPPresenterView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = VPPresenterView;
  v3 = [(VPPresenterView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(VPPresenterView *)v3 _initCommon];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VPPresenterView;
  [(VPPresenterView *)&v3 layoutSubviews];
  if (self->_watermarkLayer)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(VPPresenterView *)self bounds];
    [(CALayer *)self->_watermarkLayer setFrame:?];
    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)setVerificationCode:(id)code
{
  codeCopy = code;
  if (gLogCategory_PV <= 30 && (gLogCategory_PV != -1 || _LogCategory_Initialize()))
  {
    v5 = IsAppleInternalBuild();
    v6 = @"*";
    if (v5)
    {
      v6 = codeCopy;
    }

    LogPrintF(&gLogCategory_PV, "[VPPresenterView setVerificationCode:]", 30, "Change verification code: '%@'\n", v6);
  }

  verificationCode = self->_verificationCode;
  self->_verificationCode = codeCopy;
  v8 = codeCopy;

  watermarkPixelBuffers = self->_watermarkPixelBuffers;
  self->_watermarkPixelBuffers = 0;

  if (self->_started)
  {

    [(VPPresenterView *)self start];
  }
}

- (void)start
{
  if (gLogCategory_PV <= 30 && (gLogCategory_PV != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_PV, "[VPPresenterView start]", 30, "Start\n");
  }

  self->_started = 1;
  if ([(NSString *)self->_verificationCode length])
  {
    *&v3 = self->_watermarkOpacityMultiplier;
    v21 = 0;
    if (self->_watermarkPixelBuffers || (v13 = [(NSString *)self->_verificationCode UTF8String], [(VPPresenterView *)self bounds], v15 = v14, [(VPPresenterView *)self bounds], v17 = VPCreateWatermarkPixelBuffers(v13, 0xFFFFFFFFFFFFFFFFLL, v15, v16, 32, self->_watermarkScaleFactor, &v21), watermarkPixelBuffers = self->_watermarkPixelBuffers, self->_watermarkPixelBuffers = v17, watermarkPixelBuffers, (v19 = v21) == 0))
    {
      if (!self->_watermarkLayer)
      {
        layer = [MEMORY[0x277CD9ED0] layer];
        watermarkLayer = self->_watermarkLayer;
        self->_watermarkLayer = layer;

        [(CALayer *)self->_watermarkLayer setContentsDither:0];
        [(VPPresenterView *)self bounds];
        [(CALayer *)self->_watermarkLayer setFrame:?];
        layer2 = [(VPPresenterView *)self layer];
        [layer2 addSublayer:self->_watermarkLayer];
      }

      if (!self->_moviePlayer)
      {
        v7 = objc_alloc_init(MEMORY[0x277CE6598]);
        moviePlayer = self->_moviePlayer;
        self->_moviePlayer = v7;
      }

      if (!self->_watermarkStepTimer)
      {
        self->_watermarkStepIndex = 0;
        v9 = CUMainQueue();
        v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v9);
        watermarkStepTimer = self->_watermarkStepTimer;
        self->_watermarkStepTimer = v10;

        v12 = self->_watermarkStepTimer;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __24__VPPresenterView_start__block_invoke;
        handler[3] = &unk_279E320C8;
        handler[4] = self;
        dispatch_source_set_event_handler(v12, handler);
        CUDispatchTimerSet();
        dispatch_resume(self->_watermarkStepTimer);
      }
    }

    else if (gLogCategory_PV <= 60)
    {
      if (gLogCategory_PV != -1)
      {
LABEL_16:
        LogPrintF(&gLogCategory_PV, "[VPPresenterView start]", 60, "### Start failed: %#m\n", v19);
        return;
      }

      if (_LogCategory_Initialize())
      {
        v19 = v21;
        goto LABEL_16;
      }
    }
  }
}

- (void)stop
{
  if (self->_started && gLogCategory_PV <= 30 && (gLogCategory_PV != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_PV, "[VPPresenterView stop]", 30, "Stop\n");
  }

  self->_started = 0;
  moviePlayer = self->_moviePlayer;
  if (moviePlayer)
  {
    [(AVPlayer *)moviePlayer pause];
    v4 = self->_moviePlayer;
    self->_moviePlayer = 0;
  }

  watermarkStepTimer = self->_watermarkStepTimer;
  if (watermarkStepTimer)
  {
    v6 = watermarkStepTimer;
    dispatch_source_cancel(v6);
    v7 = self->_watermarkStepTimer;
    self->_watermarkStepTimer = 0;
  }

  watermarkLayer = self->_watermarkLayer;
  if (watermarkLayer)
  {
    [(CALayer *)watermarkLayer removeFromSuperlayer];
    v9 = self->_watermarkLayer;
    self->_watermarkLayer = 0;
  }

  watermarkPixelBuffers = self->_watermarkPixelBuffers;
  self->_watermarkPixelBuffers = 0;
}

- (void)_watermarkStep
{
  watermarkStepIndex = self->_watermarkStepIndex;
  self->_watermarkStepIndex = watermarkStepIndex + 1;
  v4 = [(NSArray *)self->_watermarkPixelBuffers objectAtIndexedSubscript:watermarkStepIndex % [(NSArray *)self->_watermarkPixelBuffers count]];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(CALayer *)self->_watermarkLayer setContents:v4];
  v5 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5C0]];
  [(CALayer *)self->_watermarkLayer setCompositingFilter:v5];

  v6 = MEMORY[0x277CD9FF0];

  [v6 commit];
}

@end