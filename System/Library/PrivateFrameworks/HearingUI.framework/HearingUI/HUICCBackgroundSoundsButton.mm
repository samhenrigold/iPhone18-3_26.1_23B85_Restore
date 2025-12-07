@interface HUICCBackgroundSoundsButton
- (BOOL)shouldIncludeIconViewInFooterViews;
- (HUICCBackgroundSoundsButton)initWithFrame:(CGRect)frame;
- (id)_subtitleAttributes;
- (id)accessibilityCustomActions;
- (void)_updateButtonView;
- (void)buttonTapped;
- (void)setSubtitleAttributedText:(id)text;
- (void)setSubtitleText:(id)text;
- (void)subscribeListeners;
- (void)unsubscribeListeners;
- (void)updateValue;
@end

@implementation HUICCBackgroundSoundsButton

- (HUICCBackgroundSoundsButton)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = HUICCBackgroundSoundsButton;
  v3 = [(HUICCCapsuleButton *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = HUICCButtonVCWithSystemImageName(@"music.quarternote.3");
    buttonVC = v3->_buttonVC;
    v3->_buttonVC = v4;

    v6 = hearingLocString();
    [(CCUILabeledRoundButtonViewController *)v3->_buttonVC setTitle:v6];

    button = [(CCUILabeledRoundButtonViewController *)v3->_buttonVC button];
    [button addTarget:v3 action:sel_buttonTapped forControlEvents:64];

    button2 = [(CCUILabeledRoundButtonViewController *)v3->_buttonVC button];
    [(HUICCCapsuleButton *)v3 setIconView:button2];

    v9 = objc_alloc(MEMORY[0x277CE6950]);
    v10 = [v9 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    [(HUICCBackgroundSoundsButton *)v3 setCountdownTimer:v10];

    countdownTimer = [(HUICCBackgroundSoundsButton *)v3 countdownTimer];
    [countdownTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  return v3;
}

- (void)setSubtitleText:(id)text
{
  textCopy = text;
  subtitleLabel = [(HUICCCapsuleButton *)self subtitleLabel];
  text = [subtitleLabel text];
  if (text)
  {
    subtitleLabel2 = [(HUICCCapsuleButton *)self subtitleLabel];
    text2 = [subtitleLabel2 text];
    v9 = [text2 isEqualToString:textCopy];
  }

  else
  {
    v9 = textCopy == 0;
  }

  v11.receiver = self;
  v11.super_class = HUICCBackgroundSoundsButton;
  [(HUICCCapsuleButton *)&v11 setSubtitleText:textCopy];
  if ((v9 & 1) == 0)
  {
    delegate = [(HUICCCapsuleButton *)self delegate];
    [delegate updateHeight];
  }
}

- (void)setSubtitleAttributedText:(id)text
{
  textCopy = text;
  subtitleLabel = [(HUICCCapsuleButton *)self subtitleLabel];
  text = [subtitleLabel text];
  if (text)
  {
    subtitleLabel2 = [(HUICCCapsuleButton *)self subtitleLabel];
    text2 = [subtitleLabel2 text];
    string = [textCopy string];
    v9 = [text2 isEqualToString:string];
  }

  else
  {
    v9 = textCopy == 0;
  }

  subtitleLabel3 = [(HUICCCapsuleButton *)self subtitleLabel];
  [subtitleLabel3 setAttributedText:textCopy];

  if ((v9 & 1) == 0)
  {
    delegate = [(HUICCCapsuleButton *)self delegate];
    [delegate updateHeight];
  }
}

- (id)_subtitleAttributes
{
  v13[3] = *MEMORY[0x277D85DE8];
  subtitleLabel = [(HUICCCapsuleButton *)self subtitleLabel];
  font = [subtitleLabel font];

  subtitleLabel2 = [(HUICCCapsuleButton *)self subtitleLabel];
  textColor = [subtitleLabel2 textColor];

  v7 = objc_alloc_init(MEMORY[0x277D74240]);
  subtitleLabel3 = [(HUICCCapsuleButton *)self subtitleLabel];
  [v7 setAlignment:{objc_msgSend(subtitleLabel3, "textAlignment")}];

  v9 = *MEMORY[0x277D740C0];
  v12[0] = *MEMORY[0x277D740A8];
  v12[1] = v9;
  v13[0] = font;
  v13[1] = textColor;
  v12[2] = *MEMORY[0x277D74118];
  v13[2] = v7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

- (void)updateValue
{
  v6.receiver = self;
  v6.super_class = HUICCBackgroundSoundsButton;
  [(HUICCCapsuleButton *)&v6 updateValue];
  mEMORY[0x277D12E38] = [MEMORY[0x277D12E38] sharedUtilities];
  routingQueue = [mEMORY[0x277D12E38] routingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HUICCBackgroundSoundsButton_updateValue__block_invoke;
  block[3] = &unk_2796F6D90;
  block[4] = self;
  dispatch_async(routingQueue, block);
}

void __42__HUICCBackgroundSoundsButton_updateValue__block_invoke(uint64_t a1, uint64_t a2)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v3 = hearingLocString();
  v4 = [MEMORY[0x277D12E38] sharedUtilities];
  v5 = [v4 backgroundSoundsRouteDecision];

  v6 = [MEMORY[0x277D12E18] sharedInstance];
  v7 = [v6 comfortSoundsEnabled];

  if (v7)
  {
    v8 = [MEMORY[0x277D12E18] sharedInstance];
    v9 = [v8 selectedComfortSound];
    v10 = [v9 localizedName];

    v11 = [MEMORY[0x277D12E18] sharedInstance];
    LODWORD(v9) = [v11 timerEnabled];

    if (v9)
    {
      v12 = [MEMORY[0x277D12E18] sharedInstance];
      [v12 activeTimerEndTimeStamp];
      v14 = v13;
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v16 = v14 - v15;

      if (v16 <= 0.0)
      {
        v31 = 0;
      }

      else
      {
        v17 = MEMORY[0x277CCACA8];
        v18 = comfortSoundsLocString();
        v19 = comfortSoundsCountdownString();
        v20 = [v17 stringWithFormat:v18, v10, v19];

        v21 = comfortSoundsCountdownString();
        v22 = [v20 rangeOfString:v21];
        v24 = v23;

        v25 = [*(a1 + 32) _subtitleAttributes];
        v26 = *MEMORY[0x277D740A8];
        v27 = [v25 valueForKey:*MEMORY[0x277D740A8]];
        v28 = [v27 fontDescriptor];
        [v28 pointSize];
        v30 = v29;

        v31 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v20 attributes:v25];
        v43 = v26;
        v32 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:v30 weight:*MEMORY[0x277D74418]];
        v44[0] = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
        [v31 setAttributes:v33 range:{v22, v24}];

        v10 = v20;
      }

      v35 = [*(a1 + 32) countdownTimer];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __42__HUICCBackgroundSoundsButton_updateValue__block_invoke_2;
      v42[3] = &unk_2796F6D90;
      v42[4] = *(a1 + 32);
      [v35 afterDelay:v42 processBlock:1.0];
    }

    else
    {
      v31 = 0;
    }

    v34 = 0;
    if (!v31 && v10)
    {
      v31 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v10];
      v34 = 0;
    }
  }

  else
  {
    if (v5 == 3 || v5 == 2)
    {
      v34 = hearingLocString();
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v34 = 0;
    }

    v31 = 0;
  }

  v39 = v3;
  v40 = v31;
  v41 = v34;
  v36 = v34;
  v37 = v31;
  v38 = v3;
  AXPerformBlockOnMainThread();
}

uint64_t __42__HUICCBackgroundSoundsButton_updateValue__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setTitleText:*(a1 + 40)];
  [*(a1 + 32) setSubtitleAttributedText:*(a1 + 48)];
  [*(a1 + 32) _updateButtonView];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);

  return [v3 setAxHintStr:v2];
}

- (void)buttonTapped
{
  v4.receiver = self;
  v4.super_class = HUICCBackgroundSoundsButton;
  [(HUICCCapsuleButton *)&v4 buttonTapped];
  countdownTimer = [(HUICCBackgroundSoundsButton *)self countdownTimer];
  [countdownTimer cancel];

  [(HUICCBackgroundSoundsButton *)self updateValue];
}

- (void)_updateButtonView
{
  v18[2] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D12E18] = [MEMORY[0x277D12E18] sharedInstance];
  comfortSoundsEnabled = [mEMORY[0x277D12E18] comfortSoundsEnabled];

  if (comfortSoundsEnabled)
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v18[0] = systemBlueColor;
    blackColor = [MEMORY[0x277D75348] blackColor];
    v18[1] = blackColor;
    v7 = v18;
  }

  else
  {
    systemBlueColor = [MEMORY[0x277D75348] whiteColor];
    v17[0] = systemBlueColor;
    blackColor = [MEMORY[0x277D75348] whiteColor];
    v17[1] = blackColor;
    v7 = v17;
  }

  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v9 = [MEMORY[0x277D755D0] configurationWithPaletteColors:v8];
  v10 = hearingLocString();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HUICCBackgroundSoundsButton__updateButtonView__block_invoke;
  block[3] = &unk_2796F7008;
  block[4] = self;
  v14 = v9;
  v16 = comfortSoundsEnabled;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__HUICCBackgroundSoundsButton__updateButtonView__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) buttonVC];
  v3 = [*(a1 + 32) buttonVC];
  v4 = [v3 glyphImage];
  v5 = [v4 imageByApplyingSymbolConfiguration:*(a1 + 40)];
  [v2 setGlyphImage:v5];

  v6 = [*(a1 + 32) buttonVC];
  [v6 setEnabled:*(a1 + 56)];

  v7 = [*(a1 + 32) iconView];
  v9[0] = *(a1 + 48);
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 setAccessibilityUserInputLabels:v8];
}

- (void)subscribeListeners
{
  v3 = HCLogComfortSounds();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_DEFAULT, "BS button: Registering Live Listen listener", buf, 2u);
  }

  objc_initWeak(buf, self);
  mEMORY[0x277D12DE8] = [MEMORY[0x277D12DE8] sharedInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HUICCBackgroundSoundsButton_subscribeListeners__block_invoke;
  v5[3] = &unk_2796F7898;
  objc_copyWeak(&v6, buf);
  [mEMORY[0x277D12DE8] registerListener:self forLiveListenLevelsHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __49__HUICCBackgroundSoundsButton_subscribeListeners__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained isListening];

  if (v5 != a2)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 setIsListening:a2];

    objc_copyWeak(&v7, (a1 + 32));
    AXPerformBlockOnMainThread();
    objc_destroyWeak(&v7);
  }
}

void __49__HUICCBackgroundSoundsButton_subscribeListeners__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateValue];
}

- (void)unsubscribeListeners
{
  v3 = HCLogComfortSounds();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_DEFAULT, "BS button: Unregistering Live Listen listener", v5, 2u);
  }

  mEMORY[0x277D12DE8] = [MEMORY[0x277D12DE8] sharedInstance];
  [mEMORY[0x277D12DE8] unregisterLiveListenLevelListener:self];

  [(HUICCBackgroundSoundsButton *)self setIsListening:0];
}

- (id)accessibilityCustomActions
{
  v3 = MEMORY[0x277CBEB18];
  v18.receiver = self;
  v18.super_class = HUICCBackgroundSoundsButton;
  accessibilityCustomActions = [(HUICCCapsuleButton *)&v18 accessibilityCustomActions];
  v5 = [v3 arrayWithArray:accessibilityCustomActions];

  iconView = [(HUICCCapsuleButton *)self iconView];

  if (iconView)
  {
    mEMORY[0x277D12E18] = [MEMORY[0x277D12E18] sharedInstance];
    [mEMORY[0x277D12E18] comfortSoundsEnabled];

    v8 = hearingLocString();
    objc_initWeak(&location, self);
    v9 = objc_alloc(MEMORY[0x277D75088]);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __57__HUICCBackgroundSoundsButton_accessibilityCustomActions__block_invoke;
    v15 = &unk_2796F6F90;
    objc_copyWeak(&v16, &location);
    v10 = [v9 initWithName:v8 actionHandler:&v12];
    [v5 addObject:{v10, v12, v13, v14, v15}];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v5;
}

uint64_t __57__HUICCBackgroundSoundsButton_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained buttonTapped];

  return 1;
}

- (BOOL)shouldIncludeIconViewInFooterViews
{
  iconView = [(HUICCCapsuleButton *)self iconView];
  v3 = iconView != 0;

  return v3;
}

@end