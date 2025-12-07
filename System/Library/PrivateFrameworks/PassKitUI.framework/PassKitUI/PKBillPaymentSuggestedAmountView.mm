@interface PKBillPaymentSuggestedAmountView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKBillPaymentSuggestedAmountView)initWithSuggestedAmount:(id)amount;
- (void)layoutSubviews;
@end

@implementation PKBillPaymentSuggestedAmountView

- (PKBillPaymentSuggestedAmountView)initWithSuggestedAmount:(id)amount
{
  v20[1] = *MEMORY[0x1E69E9840];
  amountCopy = amount;
  v19.receiver = self;
  v19.super_class = PKBillPaymentSuggestedAmountView;
  v6 = [(PKBillPaymentSuggestedAmountView *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestedAmount, amount);
    layer = [(PKBillPaymentSuggestedAmountView *)v7 layer];
    [layer setAllowsGroupOpacity:0];
    [layer setAllowsGroupBlending:0];
    v9 = objc_alloc_init(MEMORY[0x1E6979310]);
    background = v7->_background;
    v7->_background = v9;

    [(CABackdropLayer *)v7->_background setAllowsInPlaceFiltering:1];
    v11 = v7->_background;
    v12 = PKLayerNullActions();
    [(CABackdropLayer *)v11 setActions:v12];

    [(CABackdropLayer *)v7->_background setAllowsGroupOpacity:0];
    [(CABackdropLayer *)v7->_background setMasksToBounds:1];
    [layer addSublayer:v7->_background];
    v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.6 alpha:1.0];
    v14 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.05];
    v15 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D90]];
    [v15 setValue:objc_msgSend(v13 forKey:{"CGColor"), @"inputColor0"}];
    [v15 setValue:objc_msgSend(v14 forKey:{"CGColor"), @"inputColor1"}];
    [v15 setValue:MEMORY[0x1E695E118] forKey:@"inputReversed"];
    v16 = v7->_background;
    v20[0] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [(CABackdropLayer *)v16 setFilters:v17];
  }

  return v7;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PKBillPaymentSuggestedAmountView;
  [(PKBillPaymentSuggestedAmountView *)&v14 layoutSubviews];
  [(PKBillPaymentSuggestedAmountView *)self bounds];
  v7.n128_u64[0] = v3.n128_u64[0];
  v8.n128_u64[0] = v4.n128_u64[0];
  v9.n128_u64[0] = v5.n128_u64[0];
  v10 = v6.n128_u64[0];
  if (v5.n128_f64[0] >= v6.n128_f64[0])
  {
    v3.n128_f64[0] = v6.n128_f64[0];
  }

  else
  {
    v3.n128_f64[0] = v5.n128_f64[0];
  }

  v11 = v3.n128_f64[0] * 0.5;
  background = self->_background;
  v4.n128_u64[0] = v3.n128_u64[0];
  v5.n128_u64[0] = v7.n128_u64[0];
  v6.n128_u64[0] = v8.n128_u64[0];
  v7.n128_u64[0] = v9.n128_u64[0];
  v8.n128_u64[0] = v10;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v3, v4, v5, v6, v7, v8, v9);
  [(CABackdropLayer *)background setFrame:?];
  [(CABackdropLayer *)self->_background cornerRadius];
  if (v13 != v11)
  {
    [(CABackdropLayer *)self->_background setCornerRadius:v11];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 16.0;
  v4 = 16.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end