@interface PKPaymentSetupGDPRCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setprivacyView:(id)view;
@end

@implementation PKPaymentSetupGDPRCollectionViewCell

- (void)setprivacyView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_privacyView removeFromSuperview];
  privacyView = self->_privacyView;
  self->_privacyView = viewCopy;
  v6 = viewCopy;

  contentView = [(PKPaymentSetupGDPRCollectionViewCell *)self contentView];
  [contentView addSubview:self->_privacyView];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UIView *)self->_privacyView setNeedsLayout];
  [(UIView *)self->_privacyView layoutIfNeeded];
  privacyView = self->_privacyView;
  LODWORD(v7) = 1148846080;
  LODWORD(v8) = 1112014848;

  [(UIView *)privacyView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v7, v8];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  [(PKPaymentSetupGDPRCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  superview = [(UIView *)self->_privacyView superview];

  if (!superview)
  {
    contentView = [(PKPaymentSetupGDPRCollectionViewCell *)self contentView];
    [contentView addSubview:self->_privacyView];
  }

  LODWORD(v12) = 1148846080;
  LODWORD(v13) = 1112014848;
  [(UIView *)self->_privacyView systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:v10 verticalFittingPriority:v12, v13];
  privacyView = self->_privacyView;
  v16.n128_u64[0] = v4;
  v17.n128_u64[0] = v6;
  v18.n128_f64[0] = v8;
  v19.n128_f64[0] = v10;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v20, v21, v16, v17, v18, v19, v22);

  [(UIView *)privacyView setFrame:?];
}

@end