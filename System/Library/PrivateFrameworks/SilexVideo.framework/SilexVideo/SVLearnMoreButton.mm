@interface SVLearnMoreButton
- (CGSize)intrinsicContentSize;
- (SVLearnMoreButton)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (void)setHighlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
- (void)updateHeight;
@end

@implementation SVLearnMoreButton

- (SVLearnMoreButton)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = SVLearnMoreButton;
  v3 = [(SVButton *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = _UISolariumFeatureFlagEnabled();
    v5 = MEMORY[0x277D769D0];
    if (v4)
    {
      v6 = MEMORY[0x277D74410];
    }

    else
    {
      v5 = MEMORY[0x277D76968];
      v6 = MEMORY[0x277D74420];
    }

    v7 = [MEMORY[0x277D75520] metricsForTextStyle:*v5];
    v8 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*v6];
    v9 = [v7 scaledFontForFont:v8];

    v11 = SVBundle(v10);
    v12 = [v11 localizedStringForKey:@"Learn More" value:&stru_2877C2D00 table:0];

    v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v12];
    [v13 addAttribute:*MEMORY[0x277D740A8] value:v9 range:{0, objc_msgSend(v12, "length")}];
    v14 = *MEMORY[0x277D740C0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v13 addAttribute:v14 value:whiteColor range:{0, objc_msgSend(v12, "length")}];

    if (_UISolariumFeatureFlagEnabled())
    {
      [(UIView *)v3 sv_setGlassBackground];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x277D74270]);
      [v16 setBounds:{0.0, 0.0, 3.0, 0.0}];
      v17 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v16];
      [v13 appendAttributedString:v17];
      [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:13.0];
      v18 = v26 = v7;
      v19 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.right" withConfiguration:v18];
      v20 = [MEMORY[0x277D75348] colorWithRed:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.6];
      v21 = [v19 imageWithTintColor:v20];

      v22 = objc_alloc_init(MEMORY[0x277D74270]);
      [v22 setImage:v21];
      v23 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v22];
      [v13 appendAttributedString:v23];

      v7 = v26;
    }

    v24 = objc_alloc_init(MEMORY[0x277D74240]);
    [v24 setAlignment:1];
    [v13 addAttribute:*MEMORY[0x277D74118] value:v24 range:{0, objc_msgSend(v13, "length")}];
    [(SVLearnMoreButton *)v3 setAttributedTitle:v13 forState:0];
    [(SVButton *)v3 setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    [(SVLearnMoreButton *)v3 updateHeight];
  }

  return v3;
}

- (void)updateHeight
{
  if (_UISolariumFeatureFlagEnabled())
  {
    playerState = [(SVLearnMoreButton *)self playerState];
    [playerState customControlHeight];
    [(SVLearnMoreButton *)self setHeight:?];

    [(SVLearnMoreButton *)self invalidateIntrinsicContentSize];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = SVLearnMoreButton;
  [(SVLearnMoreButton *)&v7 setHighlighted:?];
  if (highlightedCopy)
  {
    v5 = 0.2;
  }

  else
  {
    v5 = 1.0;
  }

  titleLabel = [(SVLearnMoreButton *)self titleLabel];
  [titleLabel setAlpha:v5];
}

- (CGSize)intrinsicContentSize
{
  titleLabel = [(SVLearnMoreButton *)self titleLabel];
  [titleLabel intrinsicContentSize];
  v5 = v4;

  if (_UISolariumFeatureFlagEnabled())
  {
    [(SVLearnMoreButton *)self height];
    v7 = v6;
    v8 = 32.0;
  }

  else
  {
    titleLabel2 = [(SVLearnMoreButton *)self titleLabel];
    font = [titleLabel2 font];
    [font capHeight];
    v7 = round(v11) + 12.0;

    v8 = 20.0;
  }

  v12 = v5 + v8;
  v13 = v7;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(SVLearnMoreButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (!SVContentSizeCategoryIsEqualToContentSizeCategory(preferredContentSizeCategory, preferredContentSizeCategory2))
  {
    v7 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76968]];
    v8 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*MEMORY[0x277D74420]];
    v9 = [v7 scaledFontForFont:v8];

    titleLabel = [(SVLearnMoreButton *)self titleLabel];
    [titleLabel setFont:v9];

    [(SVLearnMoreButton *)self invalidateIntrinsicContentSize];
  }
}

- (id)accessibilityLabel
{
  v2 = SVBundle(self);
  v3 = [v2 localizedStringForKey:@"Learn More" value:&stru_2877C2D00 table:0];

  return v3;
}

@end