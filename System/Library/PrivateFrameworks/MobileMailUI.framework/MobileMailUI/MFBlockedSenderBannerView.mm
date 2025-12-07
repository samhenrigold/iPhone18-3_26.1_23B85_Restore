@interface MFBlockedSenderBannerView
- (MFBlockedSenderBannerView)initWithFrame:(CGRect)frame;
- (MFBlockedSenderBannerViewDelegate)delegate;
- (void)_bannerDismissed:(id)dismissed;
- (void)_titleControlTapped:(id)tapped;
- (void)dismissAction;
- (void)primaryAction;
@end

@implementation MFBlockedSenderBannerView

- (MFBlockedSenderBannerView)initWithFrame:(CGRect)frame
{
  v29[1] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = MFBlockedSenderBannerView;
  v3 = [(MFSuggestionBannerView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = objc_alloc(MEMORY[0x277CCA898]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [mainBundle localizedStringForKey:@"MESSAGE_FROM_BLOCKED_SENDER" value:&stru_2826D1AD8 table:@"Main"];
    v28 = *MEMORY[0x277D740C0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    v29[0] = secondaryLabelColor;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v10 = [v5 initWithString:v7 attributes:v9];
    [v4 setAttributedTitle:v10];

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [mainBundle2 localizedStringForKey:@"BLOCKED_SENDER_SETTINGS" value:&stru_2826D1AD8 table:@"Main"];
    [v4 setActionTitle:v12];

    [v4 setAccessoryType:1];
    [v4 setActionButtonType:0];
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    v14 = [MFSuggestionBannerView bannerIconViewForSymbol:*MEMORY[0x277CD6838] tintColor:systemRedColor];
    v27 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    [v4 setImageSGViews:v15];

    objc_initWeak(&location, v3);
    v16 = MEMORY[0x277D025D8];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __43__MFBlockedSenderBannerView_initWithFrame___block_invoke;
    v23[3] = &unk_2781819F8;
    objc_copyWeak(&v24, &location);
    v17 = [v16 actionWithTitle:&stru_2826D1AD8 handler:v23];
    [v4 setPrimaryAction:v17];

    v18 = MEMORY[0x277D025D8];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__MFBlockedSenderBannerView_initWithFrame___block_invoke_2;
    v21[3] = &unk_2781819F8;
    objc_copyWeak(&v22, &location);
    v19 = [v18 actionWithTitle:&stru_2826D1AD8 handler:v21];
    [v4 setDismissAction:v19];

    [(MFSuggestionBannerView *)v3 setBanner:v4];
    [v4 reload];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __43__MFBlockedSenderBannerView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained primaryAction];
}

void __43__MFBlockedSenderBannerView_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissAction];
}

- (void)primaryAction
{
  delegate = [(MFBlockedSenderBannerView *)self delegate];
  [delegate didTapBlockedSenderBannerView:self];
}

- (void)dismissAction
{
  delegate = [(MFBlockedSenderBannerView *)self delegate];
  [delegate didDismissBlockedSenderBannerView:self];
}

- (void)_titleControlTapped:(id)tapped
{
  delegate = [(MFBlockedSenderBannerView *)self delegate];
  [delegate didTapBlockedSenderBannerView:self];
}

- (void)_bannerDismissed:(id)dismissed
{
  delegate = [(MFBlockedSenderBannerView *)self delegate];
  [delegate didDismissBlockedSenderBannerView:self];
}

- (MFBlockedSenderBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end