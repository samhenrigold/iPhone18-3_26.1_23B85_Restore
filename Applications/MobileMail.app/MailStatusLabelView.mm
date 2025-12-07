@interface MailStatusLabelView
- (MailStatusLabelView)initWithFrame:(CGRect)frame;
- (NSAttributedString)secondaryLabelText;
- (UILabel)primaryLabel;
- (UILabel)secondaryLabel;
- (id)_titleFont;
- (id)newLabel:(id)label;
- (id)preferredPrefixWithStatusInfo:(id)info;
- (void)_updateBarItemTitle;
- (void)layoutSubviews;
- (void)setPrimaryLabelText:(id)text prefix:(id)prefix animated:(BOOL)animated;
- (void)setSecondaryLabelText:(id)text animated:(BOOL)animated;
- (void)setShouldShowLargeTitle:(BOOL)title;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePrimaryLabelAnimated:(BOOL)animated;
- (void)updateWithStatusInfo:(id)info;
- (void)viewDidMoveToSuperview;
@end

@implementation MailStatusLabelView

- (UILabel)primaryLabel
{
  primaryLabel = self->_primaryLabel;
  if (!primaryLabel)
  {
    if (MUISolariumFeatureEnabled())
    {
      v4 = +[UIColor secondaryLabelColor];
    }

    else
    {
      v4 = 0;
    }

    v5 = [(MailStatusLabelView *)self newLabel:v4];
    v6 = self->_primaryLabel;
    self->_primaryLabel = v5;

    primaryLabel = self->_primaryLabel;
  }

  return primaryLabel;
}

- (id)_titleFont
{
  shouldShowLargeTitle = [(MailStatusLabelView *)self shouldShowLargeTitle];
  v3 = &UIFontTextStyleSubheadline;
  if (!shouldShowLargeTitle)
  {
    v3 = &UIFontTextStyleCaption1;
  }

  v4 = *v3;
  v5 = &UIContentSizeCategoryExtraLarge;
  if (!shouldShowLargeTitle)
  {
    v5 = &UIContentSizeCategoryLarge;
  }

  v6 = [UIFont _preferredFontForTextStyle:v4 maximumContentSizeCategory:*v5];

  return v6;
}

- (void)_updateBarItemTitle
{
  delegate = self->_delegate;
  primaryLabel = [(MailStatusLabelView *)self primaryLabel];
  attributedText = [primaryLabel attributedText];
  string = [attributedText string];
  secondaryLabel = [(MailStatusLabelView *)self secondaryLabel];
  attributedText2 = [secondaryLabel attributedText];
  string2 = [attributedText2 string];
  [(MailStatusBarViewDelegate *)delegate updateBarItemTitle:string secondaryTitle:string2];

  [(MailStatusLabelView *)self setNeedsLayout];
}

- (UILabel)secondaryLabel
{
  secondaryLabel = self->_secondaryLabel;
  if (!secondaryLabel)
  {
    v4 = +[UIColor systemGrayColor];
    v5 = [(MailStatusLabelView *)self newLabel:v4];
    v6 = self->_secondaryLabel;
    self->_secondaryLabel = v5;

    secondaryLabel = self->_secondaryLabel;
  }

  return secondaryLabel;
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = MailStatusLabelView;
  [(MailStatusLabelView *)&v50 layoutSubviews];
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    [(MailStatusLabelView *)self frame];
    v4 = v3;
    v46 = v6;
    v47 = v5;
    rect = v7;
    primaryLabel = [(MailStatusLabelView *)self primaryLabel];
    [primaryLabel sizeToFit];

    secondaryLabel = [(MailStatusLabelView *)self secondaryLabel];
    [secondaryLabel sizeToFit];

    primaryLabel2 = [(MailStatusLabelView *)self primaryLabel];
    [primaryLabel2 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    secondaryLabel2 = [(MailStatusLabelView *)self secondaryLabel];
    [secondaryLabel2 frame];
    v44 = v20;
    v48 = v21;
    v23 = v22;
    v25 = v24;

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100133274;
    v49[3] = &unk_1006511C0;
    v49[4] = self;
    *&v49[5] = v4;
    *&v49[6] = v47;
    *&v49[7] = v46;
    *&v49[8] = rect;
    v49[9] = 0;
    v26 = objc_retainBlock(v49);
    v27 = (v26[2])(v12, v14, v16, v18);
    v28 = (v26[2])(v26, v23, v44, v48, v25);
    primaryLabel3 = [(MailStatusLabelView *)self primaryLabel];
    text = [primaryLabel3 text];
    v31 = [text length];

    if (v31)
    {
      v32 = v18 + 0.0;
    }

    else
    {
      v32 = 0.0;
    }

    secondaryLabel3 = [(MailStatusLabelView *)self secondaryLabel];
    text2 = [secondaryLabel3 text];
    v35 = [text2 length];

    if (v35)
    {
      v32 = v25 + v32;
    }

    v51.origin.x = v4;
    v51.size.width = v46;
    v51.origin.y = v47;
    v51.size.height = rect;
    Height = CGRectGetHeight(v51);
    v37 = -0.5;
    if (!v35)
    {
      v37 = -1.0;
    }

    v38 = UIRoundToViewScale(v37 + (Height - v32) * 0.5);
    v52.origin.x = v27;
    v52.origin.y = v38;
    v52.size.width = v16;
    v52.size.height = v18;
    MinY = CGRectGetMinY(v52);
    v53.origin.x = v28;
    v53.origin.y = v44;
    v53.size.width = v48;
    v53.size.height = v25;
    v40 = CGRectGetHeight(v53);
    v41 = UIRoundToViewScale(v32 + MinY - v40);
    primaryLabel4 = [(MailStatusLabelView *)self primaryLabel];
    [primaryLabel4 setFrame:{v27, v38, v16, v18}];

    secondaryLabel4 = [(MailStatusLabelView *)self secondaryLabel];
    [secondaryLabel4 setFrame:{v28, v41, v48, v25}];
  }
}

- (MailStatusLabelView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = MailStatusLabelView;
  v3 = [(MailStatusLabelView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MailStatusLabelView *)v3 setTextAlignment:1];
    [(MailStatusLabelView *)v4 setOpaque:0];
    [(MailStatusLabelView *)v4 setAutoresizingMask:18];
    if (MUISolariumFeatureEnabled())
    {
      [(MailStatusLabelView *)v4 setLayoutMargins:2.0, 0.0, 2.0, 0.0];
      primaryLabel = [(MailStatusLabelView *)v4 primaryLabel];
      [primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];

      primaryLabel2 = [(MailStatusLabelView *)v4 primaryLabel];
      [(MailStatusLabelView *)v4 addSubview:primaryLabel2];

      primaryLabel3 = [(MailStatusLabelView *)v4 primaryLabel];
      [primaryLabel3 mf_pinToView:v4 usingLayoutMargins:1];
    }
  }

  return v4;
}

- (void)setPrimaryLabelText:(id)text prefix:(id)prefix animated:(BOOL)animated
{
  animatedCopy = animated;
  textCopy = text;
  prefixCopy = prefix;
  prefix = [(MailStatusLabelView *)self prefix];
  if (([prefixCopy isEqualToString:prefix] & 1) == 0)
  {

    goto LABEL_5;
  }

  primaryLabelText = [(MailStatusLabelView *)self primaryLabelText];
  v11 = [textCopy isEqualToAttributedString:primaryLabelText];

  if ((v11 & 1) == 0)
  {
LABEL_5:
    [(MailStatusLabelView *)self setPrefix:prefixCopy];
    [(MailStatusLabelView *)self setPrimaryLabelText:textCopy];
    [(MailStatusLabelView *)self updatePrimaryLabelAnimated:animatedCopy];
  }
}

- (void)updatePrimaryLabelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = objc_alloc_init(NSMutableAttributedString);
  prefix = [(MailStatusLabelView *)self prefix];
  if ([prefix length])
  {
    primaryLabelText = [(MailStatusLabelView *)self primaryLabelText];

    if (primaryLabelText)
    {
      prefix4 = _EFLocalizedString();
      prefix2 = [(MailStatusLabelView *)self prefix];
      primaryLabelText2 = [(MailStatusLabelView *)self primaryLabelText];
      string = [primaryLabelText2 string];
      v12 = [NSString localizedStringWithFormat:prefix4, prefix2, string];

      v13 = [[NSMutableAttributedString alloc] initWithString:v12];
      primaryLabelText3 = [(MailStatusLabelView *)self primaryLabelText];
      string2 = [primaryLabelText3 string];
      v16 = [v12 rangeOfString:string2];
      v18 = v17;

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        primaryLabelText4 = [(MailStatusLabelView *)self primaryLabelText];
        v20 = [primaryLabelText4 length];

        if (v20)
        {
          primaryLabelText5 = [(MailStatusLabelView *)self primaryLabelText];
          v22 = [primaryLabelText5 attributesAtIndex:0 effectiveRange:0];

          if ([v22 count])
          {
            [v13 addAttributes:v22 range:{v16, v18}];
          }
        }
      }

      v5 = v13;
      goto LABEL_12;
    }
  }

  else
  {
  }

  prefix3 = [(MailStatusLabelView *)self prefix];
  v24 = [prefix3 length];

  if (v24)
  {
    v25 = [NSAttributedString alloc];
    prefix4 = [(MailStatusLabelView *)self prefix];
    v12 = [v25 initWithString:prefix4];
    [v5 appendAttributedString:v12];
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  primaryLabelText6 = [(MailStatusLabelView *)self primaryLabelText];

  if (primaryLabelText6)
  {
    prefix4 = [(MailStatusLabelView *)self primaryLabelText];
    [v5 appendAttributedString:prefix4];
    goto LABEL_13;
  }

LABEL_14:
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100132BC4;
  v32[3] = &unk_10064C660;
  v32[4] = self;
  v26 = v5;
  v33 = v26;
  v27 = objc_retainBlock(v32);
  if (animatedCopy)
  {
    primaryLabel = [(MailStatusLabelView *)self primaryLabel];
    [UIView transitionWithView:primaryLabel duration:5242880 options:v27 animations:0 completion:0.4];
  }

  else
  {
    [UIView performWithoutAnimation:v27];
  }

  [(MailStatusLabelView *)self _updateBarItemTitle];
  v29 = [v26 length];
  primaryLabel2 = [(MailStatusLabelView *)self primaryLabel];
  [primaryLabel2 setHidden:v29 == 0];
}

- (void)setSecondaryLabelText:(id)text animated:(BOOL)animated
{
  animatedCopy = animated;
  textCopy = text;
  secondaryLabel = [(MailStatusLabelView *)self secondaryLabel];
  attributedText = [secondaryLabel attributedText];
  v9 = [textCopy isEqualToAttributedString:attributedText];

  if ((v9 & 1) == 0)
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100132DB8;
    v15 = &unk_10064C660;
    selfCopy = self;
    v17 = textCopy;
    v10 = objc_retainBlock(&v12);
    if (animatedCopy)
    {
      v11 = [(MailStatusLabelView *)self secondaryLabel:v12];
      [UIView transitionWithView:v11 duration:5242880 options:v10 animations:0 completion:0.4];
    }

    else
    {
      [UIView performWithoutAnimation:v10, v12, v13, v14, v15, selfCopy];
    }

    [(MailStatusLabelView *)self _updateBarItemTitle];
  }
}

- (void)setShouldShowLargeTitle:(BOOL)title
{
  if (self->_shouldShowLargeTitle != title)
  {
    self->_shouldShowLargeTitle = title;
    sub_100132E74(self);
  }
}

- (void)viewDidMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = MailStatusLabelView;
  [(MailStatusLabelView *)&v3 viewDidMoveToSuperview];
  [(MailStatusLabelView *)self _updateBarItemTitle];
}

- (NSAttributedString)secondaryLabelText
{
  secondaryLabel = [(MailStatusLabelView *)self secondaryLabel];
  attributedText = [secondaryLabel attributedText];

  return attributedText;
}

- (id)newLabel:(id)label
{
  labelCopy = label;
  v5 = objc_alloc_init(UILabel);
  _titleFont = [(MailStatusLabelView *)self _titleFont];
  [v5 setFont:_titleFont];

  [v5 setOpaque:0];
  [v5 setBackgroundColor:0];
  v7 = labelCopy;
  if (!labelCopy)
  {
    v7 = +[UIColor labelColor];
  }

  [v5 setTextColor:v7];
  if (!labelCopy)
  {
  }

  [v5 setAdjustsFontForContentSizeCategory:1];
  [v5 sizeToFit];
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    [(MailStatusLabelView *)self addSubview:v5];
  }

  return v5;
}

- (void)updateWithStatusInfo:(id)info
{
  infoCopy = info;
  [(MailStatusLabelView *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MailStatusLabelView updateWithStatusInfo:]", "MailStatusLabelView.m", 186, "0");
}

- (id)preferredPrefixWithStatusInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    superview = [(MailStatusLabelView *)self superview];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate = [(MailStatusLabelView *)self delegate];
      v7 = [delegate statusBarView:superview preferredPrefixFromStatusInfo:infoCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  sub_100132E74(self);

  [(MailStatusLabelView *)self setNeedsLayout];
}

@end