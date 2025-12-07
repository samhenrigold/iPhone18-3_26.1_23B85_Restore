@interface PKAccountBillPaymentCheckmarkRingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAccountBillPaymentCheckmarkRingView)initWithRingView:(id)view;
- (void)layoutSubviews;
@end

@implementation PKAccountBillPaymentCheckmarkRingView

- (PKAccountBillPaymentCheckmarkRingView)initWithRingView:(id)view
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = PKAccountBillPaymentCheckmarkRingView;
  v6 = [(PKAccountBillPaymentCheckmarkRingView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ringView, view);
    [(PKAccountBillPaymentCheckmarkRingView *)v7 addSubview:v7->_ringView];
    v8 = objc_alloc_init(MEMORY[0x1E69AD2E8]);
    checkmarkLayer = v7->_checkmarkLayer;
    v7->_checkmarkLayer = v8;

    [(LAUICheckmarkLayer *)v7->_checkmarkLayer setLineWidthScale:1.4];
    [(LAUICheckmarkLayer *)v7->_checkmarkLayer setRevealed:0 animated:0];
    layer = [(PKAccountBillPaymentCheckmarkRingView *)v7 layer];
    [layer addSublayer:v7->_checkmarkLayer];
  }

  return v7;
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = PKAccountBillPaymentCheckmarkRingView;
  [(PKAccountBillPaymentCheckmarkRingView *)&v34 layoutSubviews];
  [(PKAccountBillPaymentCheckmarkRingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKBillPaymentRingView *)self->_ringView sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v12 = v11;
  v14 = v13;
  [(PKBillPaymentRingView *)self->_ringView setBounds:v4, v6, v11, v13];
  PKSizeScaleAspectFit();
  v16 = v15;
  v18 = v17;
  ringView = self->_ringView;
  CATransform3DMakeScale(&v33, v15 / v12, v17 / v14, 1.0);
  [(PKBillPaymentRingView *)ringView setTransform3D:&v33];
  v20 = self->_ringView;
  v21 = *MEMORY[0x1E695EFF8];
  v22 = *(MEMORY[0x1E695EFF8] + 8);
  layer = [(PKBillPaymentRingView *)v20 layer];
  [layer anchorPoint];
  [(PKBillPaymentRingView *)v20 setPosition:v21 + v24 * v16, v22 + v25 * v18];

  [(LAUICheckmarkLayer *)self->_checkmarkLayer aspectSize];
  PKSizeScaleAspectFit();
  v26.n128_f64[0] = v4;
  v27.n128_f64[0] = v6;
  v28.n128_u64[0] = v8;
  v29.n128_u64[0] = v10;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v30, v31, v26, v27, v28, v29, v32);
  [(LAUICheckmarkLayer *)self->_checkmarkLayer setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKBillPaymentRingView *)self->_ringView sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

  PKSizeScaleAspectFit();
  result.height = v4;
  result.width = v3;
  return result;
}

@end