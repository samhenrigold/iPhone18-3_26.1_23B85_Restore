@interface BCSCoachingMessageView
- (BCSCoachingMessageView)init;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)hidden;
- (void)setObscuredByOverlay:(BOOL)overlay;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BCSCoachingMessageView

- (BCSCoachingMessageView)init
{
  v51[8] = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = BCSCoachingMessageView;
  v2 = [(BCSCoachingMessageView *)&v50 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    v4 = _BCSLocalizedString();
    [(UILabel *)v3 setText:v4];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v3 setTextColor:whiteColor];

    [(UILabel *)v3 setClipsToBounds:0];
    [(UILabel *)v3 setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3 setMinimumScaleFactor:0.1];
    [(UILabel *)v3 setLineBreakMode:2];
    [(UILabel *)v3 setTextAlignment:1];
    [(UILabel *)v3 setNumberOfLines:1];
    [(UILabel *)v3 setBaselineAdjustment:1];
    v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
    v7 = [v6 fontDescriptorWithSymbolicTraits:2];

    v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
    [(UILabel *)v3 setFont:v8];

    fontDescriptor = v2->_fontDescriptor;
    v2->_fontDescriptor = v7;
    v49 = v7;

    [(UILabel *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    coachingMessageLabel = v2->_coachingMessageLabel;
    v2->_coachingMessageLabel = v3;
    v11 = v3;

    v12 = objc_alloc(MEMORY[0x277D75D68]);
    v13 = [MEMORY[0x277D75210] effectWithStyle:2];
    v14 = [v12 initWithEffect:v13];

    [(UIVisualEffectView *)v14 _setContinuousCornerRadius:14.0];
    [(UIVisualEffectView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(UIVisualEffectView *)v14 contentView];
    [contentView addSubview:v11];

    coachingMessageContainerView = v2->_coachingMessageContainerView;
    v2->_coachingMessageContainerView = v14;
    v17 = v14;

    [(BCSCoachingMessageView *)v2 addSubview:v17];
    topAnchor = [(UILabel *)v11 topAnchor];
    topAnchor2 = [(UIVisualEffectView *)v17 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    coachingLabelTopAnchorConstraint = v2->_coachingLabelTopAnchorConstraint;
    v2->_coachingLabelTopAnchorConstraint = v20;

    bottomAnchor = [(UILabel *)v11 bottomAnchor];
    bottomAnchor2 = [(UIVisualEffectView *)v17 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    coachingLabelBottomAnchorConstraint = v2->_coachingLabelBottomAnchorConstraint;
    v2->_coachingLabelBottomAnchorConstraint = v24;

    v40 = MEMORY[0x277CCAAD0];
    v38 = v11;
    leadingAnchor = [(UILabel *)v11 leadingAnchor];
    leadingAnchor2 = [(UIVisualEffectView *)v17 leadingAnchor];
    v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
    v51[0] = v46;
    trailingAnchor = [(UILabel *)v11 trailingAnchor];
    trailingAnchor2 = [(UIVisualEffectView *)v17 trailingAnchor];
    v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];
    v51[1] = v43;
    v51[2] = v2->_coachingLabelTopAnchorConstraint;
    v51[3] = v2->_coachingLabelBottomAnchorConstraint;
    leadingAnchor3 = [(UIVisualEffectView *)v17 leadingAnchor];
    leadingAnchor4 = [(BCSCoachingMessageView *)v2 leadingAnchor];
    v39 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v51[4] = v39;
    trailingAnchor3 = [(UIVisualEffectView *)v17 trailingAnchor];
    trailingAnchor4 = [(BCSCoachingMessageView *)v2 trailingAnchor];
    v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v51[5] = v26;
    topAnchor3 = [(UIVisualEffectView *)v17 topAnchor];
    topAnchor4 = [(BCSCoachingMessageView *)v2 topAnchor];
    v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v51[6] = v29;
    bottomAnchor3 = [(UIVisualEffectView *)v17 bottomAnchor];
    bottomAnchor4 = [(BCSCoachingMessageView *)v2 bottomAnchor];
    v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v51[7] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:8];
    [v40 activateConstraints:v33];

    v34 = v2;
  }

  return v2;
}

- (void)setHidden:(BOOL)hidden
{
  if (self->_contentHidden == !hidden)
  {
    self->_contentHidden = hidden;
    [(BCSCoachingMessageView *)self setNeedsLayout];
  }
}

- (void)setObscuredByOverlay:(BOOL)overlay
{
  if (self->_obscuredByOverlay == !overlay)
  {
    self->_obscuredByOverlay = overlay;
    [(BCSCoachingMessageView *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = BCSCoachingMessageView;
  changeCopy = change;
  [(BCSCoachingMessageView *)&v11 traitCollectionDidChange:changeCopy];
  v5 = [(BCSCoachingMessageView *)self traitCollection:v11.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    v8 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
    v9 = [v8 fontDescriptorWithSymbolicTraits:2];
    fontDescriptor = self->_fontDescriptor;
    self->_fontDescriptor = v9;

    [(BCSCoachingMessageView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = BCSCoachingMessageView;
  [(BCSCoachingMessageView *)&v24 layoutSubviews];
  window = [(BCSCoachingMessageView *)self window];
  windowScene = [window windowScene];
  if (([windowScene interfaceOrientation] - 3) > 1)
  {
    v6 = 0;
  }

  else
  {
    traitCollection = [(BCSCoachingMessageView *)self traitCollection];
    v6 = [traitCollection userInterfaceIdiom] == 0;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  v9 = v8;

  v10 = 4.0;
  if (v9 > 320.0)
  {
    v10 = 8.0;
  }

  v11 = 20.0;
  if (v9 <= 320.0)
  {
    v11 = 18.0;
  }

  if (v6)
  {
    v12 = 8.0;
  }

  else
  {
    v12 = 14.0;
  }

  v13 = 15.0;
  if (v6)
  {
    v13 = v10;
    v14 = v11;
  }

  else
  {
    v14 = 0.0;
  }

  [(NSLayoutConstraint *)self->_coachingLabelTopAnchorConstraint setConstant:v13];
  [(NSLayoutConstraint *)self->_coachingLabelTopAnchorConstraint constant];
  [(NSLayoutConstraint *)self->_coachingLabelBottomAnchorConstraint setConstant:-v15];
  [(UIVisualEffectView *)self->_coachingMessageContainerView _setContinuousCornerRadius:v12];
  fontAttributes = [(UIFontDescriptor *)self->_fontDescriptor fontAttributes];
  v17 = [fontAttributes objectForKeyedSubscript:*MEMORY[0x277D74350]];
  [v17 doubleValue];
  v19 = v18;

  if (v19 >= v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = v19;
  }

  v21 = [MEMORY[0x277D74300] fontWithDescriptor:self->_fontDescriptor size:v20];
  [(UILabel *)self->_coachingMessageLabel setFont:v21];

  if (self->_contentHidden)
  {
    v22 = 1;
  }

  else
  {
    v22 = v6 & self->_obscuredByOverlay;
  }

  v23.receiver = self;
  v23.super_class = BCSCoachingMessageView;
  [(BCSCoachingMessageView *)&v23 setHidden:v22];
}

@end