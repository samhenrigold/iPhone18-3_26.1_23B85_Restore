@interface BTShareAudioBringCloseViewController
- (void)_cycleProductImage;
- (void)eventCancel:(id)cancel;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BTShareAudioBringCloseViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(BTShareAudioBringCloseViewController *)self viewWillAppear:a2, appear];
    }
  }

  v9.receiver = selfCopy;
  v9.super_class = BTShareAudioBringCloseViewController;
  [(BTShareAudioBaseViewController *)&v9 viewWillAppear:appearCopy];
  mainBundle = [(BTShareAudioViewController *)selfCopy->super._mainController mainBundle];
  v6 = CULocalizedStringEx();
  [(UILabel *)selfCopy->super._titleLabel setText:v6];

  [(BTShareAudioBringCloseViewController *)selfCopy _cycleProductImage];
  mainBundle2 = [(BTShareAudioViewController *)selfCopy->super._mainController mainBundle];
  v8 = CULocalizedStringEx();

  [(UIButton *)selfCopy->_cancelButton setTitle:v8 forState:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  if (gLogCategory_BTShareAudioViewController <= 30)
  {
    if (gLogCategory_BTShareAudioViewController != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(BTShareAudioBringCloseViewController *)self viewWillDisappear:a2, disappear];
    }
  }

  v8.receiver = selfCopy;
  v8.super_class = BTShareAudioBringCloseViewController;
  [(BTShareAudioBaseViewController *)&v8 viewWillDisappear:disappearCopy];
  cycleImageTimer = selfCopy->_cycleImageTimer;
  if (cycleImageTimer)
  {
    v6 = cycleImageTimer;
    dispatch_source_cancel(v6);
    v7 = selfCopy->_cycleImageTimer;
    selfCopy->_cycleImageTimer = 0;
  }
}

- (void)viewDidLayoutSubviews
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = BTShareAudioBringCloseViewController;
  [(BTShareAudioBringCloseViewController *)&v10 viewDidLayoutSubviews];
  layer = [(UIView *)self->_productImageContainerView layer];
  mask = [layer mask];

  if (!mask)
  {
    layer2 = [MEMORY[0x277CD9EB0] layer];
    [(UIView *)self->_productImageContainerView bounds];
    [layer2 setFrame:?];
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
    v11[0] = [v6 CGColor];
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
    v11[1] = [v7 CGColor];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    [layer2 setColors:v8];

    [layer2 setLocations:&unk_2853D5898];
    [layer2 setStartPoint:{0.0, 0.5}];
    [layer2 setEndPoint:{1.0, 0.5}];
    layer3 = [(UIView *)self->_productImageContainerView layer];
    [layer3 setMask:layer2];
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
      [(BTShareAudioBringCloseViewController *)cancelCopy eventCancel:v5, v6];
    }
  }

  [(BTShareAudioViewController *)self->super._mainController reportUserCancelled];
}

- (void)_cycleProductImage
{
  v30 = *MEMORY[0x277D85DE8];
  if (!self->_cycleImageArray)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cycleImageArray = self->_cycleImageArray;
    self->_cycleImageArray = v3;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [&unk_2853D58B0 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      do
      {
        v8 = 0;
        do
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(&unk_2853D58B0);
          }

          v9 = [MEMORY[0x277D755B8] systemImageNamed:*(*(&v25 + 1) + 8 * v8)];
          [(NSMutableArray *)self->_cycleImageArray addObject:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [&unk_2853D58B0 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v6);
    }

    v10 = MEMORY[0x277D755D0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v12 = [v10 configurationWithHierarchicalColor:whiteColor];

    v13 = [MEMORY[0x277D755D0] configurationWithPointSize:3 weight:2 scale:160.0];
    v14 = [v12 configurationByApplyingConfiguration:v13];
    [(UIImageView *)self->_shareImageView setPreferredSymbolConfiguration:v14];
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(UIImageView *)self->_shareImageView setTintColor:whiteColor2];
  }

  [(UIImageView *)self->_shareImageView setContentMode:4];
  if (self->_cycleImageTimer)
  {
    animation = [MEMORY[0x277CDA000] animation];
    [animation setDuration:0.5];
    [animation setType:*MEMORY[0x277CDA958]];
    [animation setSubtype:*MEMORY[0x277CDA940]];
    v17 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [animation setTimingFunction:v17];

    layer = [(UIImageView *)self->_shareImageView layer];
    [layer addAnimation:animation forKey:0];
  }

  else
  {
    v19 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    cycleImageTimer = self->_cycleImageTimer;
    self->_cycleImageTimer = v19;
    animation = v19;

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __58__BTShareAudioBringCloseViewController__cycleProductImage__block_invoke;
    handler[3] = &unk_278D12C48;
    handler[4] = self;
    dispatch_source_set_event_handler(animation, handler);
    CUDispatchTimerSet();
    dispatch_activate(animation);
  }

  cycleNextIndex = self->_cycleNextIndex;
  if ([(NSMutableArray *)self->_cycleImageArray count]> cycleNextIndex)
  {
    v22 = self->_cycleImageArray;
    ++self->_cycleNextIndex;
    v23 = [(NSMutableArray *)v22 objectAtIndexedSubscript:?];
    [(UIImageView *)self->_shareImageView setImage:v23];

    self->_cycleNextIndex %= [(NSMutableArray *)self->_cycleImageArray count];
  }
}

@end