@interface PKPGSVFooterView
- (CGSize)sizeThatFits:(CGSize)result;
- (PKPGSVFooterView)initWithFrame:(CGRect)frame;
- (PKPGSVFooterViewDelegate)delegate;
- (void)_editTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setExpiredSectionCount:(int64_t)count;
@end

@implementation PKPGSVFooterView

- (PKPGSVFooterView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = PKPGSVFooterView;
  v3 = [(PKPGSVFooterView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v11 = 0x401C000000000000;
    v12 = vdupq_n_s64(1uLL);
    v13 = vdupq_n_s64(2uLL);
    v4 = [[PKContinuousButton alloc] initWithConfiguration:&v11];
    editButton = v3->_editButton;
    v3->_editButton = v4;

    [(PKContinuousButton *)v3->_editButton setContentEdgeInsets:7.0, 14.0, 7.0, 14.0];
    [(PKContinuousButton *)v3->_editButton _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    v6 = v3->_editButton;
    v7 = PKLocalizedString(&cfstr_TableFooterEdi.isa);
    [(PKContinuousButton *)v6 setTitle:v7 forState:0];

    titleLabel = [(PKContinuousButton *)v3->_editButton titleLabel];
    v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC38], 2, 0);
    [titleLabel setFont:v9];

    [(PKPGSVFooterView *)v3 addSubview:v3->_editButton];
    [(PKContinuousButton *)v3->_editButton addTarget:v3 action:sel__editTapped_ forControlEvents:64];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 64.0;
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKPGSVFooterView;
  [(PKPGSVFooterView *)&v15 layoutSubviews];
  [(PKPGSVFooterView *)self bounds];
  memset(&slice, 0, sizeof(slice));
  memset(&v13, 0, sizeof(v13));
  CGRectDivide(v16, &slice, &v13, 64.0, CGRectMinYEdge);
  [(PKContinuousButton *)self->_editButton sizeToFit];
  editButton = self->_editButton;
  [(PKContinuousButton *)editButton frame];
  v5.n128_u64[0] = v4;
  v7.n128_u64[0] = v6;
  v8.n128_u64[0] = *&slice.origin.x;
  v9.n128_u64[0] = *&slice.origin.y;
  v10.n128_u64[0] = *&slice.size.width;
  v11.n128_u64[0] = *&slice.size.height;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v5, v7, v8, v9, v10, v11, v12);
  [(PKContinuousButton *)editButton setFrame:?];
}

- (void)_editTapped:(id)tapped
{
  if (PKUIStoreDemoGatewayWithView(self))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v5 = WeakRetained;
      [WeakRetained viewTapped:self];
      WeakRetained = v5;
    }
  }
}

- (void)setExpiredSectionCount:(int64_t)count
{
  if (self->_expiredSectionCount != count)
  {
    self->_expiredSectionCount = count;
    refreshed = PKExpiredPassesRefreshEnabled();
    if (count)
    {
      if (refreshed)
      {
        editButton = self->_editButton;
        v7 = PKLocalizedString(&cfstr_TableFooterExp.isa, &cfstr_Lu.isa, count);
        [(PKContinuousButton *)editButton setTitle:v7 forState:0];

        [(PKPGSVFooterView *)self setNeedsLayout];
      }
    }
  }
}

- (PKPGSVFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end