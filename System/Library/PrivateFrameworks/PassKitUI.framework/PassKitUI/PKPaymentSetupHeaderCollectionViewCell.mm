@interface PKPaymentSetupHeaderCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setHeaderView:(id)view;
@end

@implementation PKPaymentSetupHeaderCollectionViewCell

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  [(PKCollapsibleHeaderView *)self->_headerView removeFromSuperview];
  headerView = self->_headerView;
  self->_headerView = viewCopy;
  v6 = viewCopy;

  contentView = [(PKPaymentSetupHeaderCollectionViewCell *)self contentView];
  [contentView addSubview:self->_headerView];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKCollapsibleHeaderView *)self->_headerView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  [(PKPaymentSetupHeaderCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  superview = [(PKCollapsibleHeaderView *)self->_headerView superview];

  if (!superview)
  {
    contentView = [(PKPaymentSetupHeaderCollectionViewCell *)self contentView];
    [contentView addSubview:self->_headerView];
  }

  [(PKCollapsibleHeaderView *)self->_headerView sizeThatFits:v8, v10];
  headerView = self->_headerView;
  v14.n128_u64[0] = v4;
  v15.n128_u64[0] = v6;
  v16.n128_f64[0] = v8;
  v17.n128_f64[0] = v10;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v18, v19, v14, v15, v16, v17, v20);

  [(PKCollapsibleHeaderView *)headerView setFrame:?];
}

@end