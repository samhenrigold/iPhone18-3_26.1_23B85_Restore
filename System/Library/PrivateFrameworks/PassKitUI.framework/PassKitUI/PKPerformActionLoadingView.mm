@interface PKPerformActionLoadingView
- (PKPerformActionLoadingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PKPerformActionLoadingView

- (PKPerformActionLoadingView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = PKPerformActionLoadingView;
  v3 = [(PKPerformActionLoadingView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v3->_spinner;
    v3->_spinner = v4;

    [(PKPerformActionLoadingView *)v3 addSubview:v3->_spinner];
    [(UIActivityIndicatorView *)v3->_spinner startAnimating];
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    loadingLabel = v3->_loadingLabel;
    v3->_loadingLabel = v7;

    v9 = v3->_loadingLabel;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v9 setBackgroundColor:clearColor];

    v11 = v3->_loadingLabel;
    v12 = PKLocalizedPaymentString(&cfstr_PerformActionL.isa);
    [(UILabel *)v11 setText:v12];

    v13 = v3->_loadingLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v13 setTextColor:secondaryLabelColor];

    [(PKPerformActionLoadingView *)v3 addSubview:v3->_loadingLabel];
  }

  return v3;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = PKPerformActionLoadingView;
  [(PKPerformActionLoadingView *)&v20 layoutSubviews];
  [(PKPerformActionLoadingView *)self bounds];
  v4.n128_f64[0] = v3 * 0.5;
  PKFloatRoundToPixel(v4, v5);
  [(UIActivityIndicatorView *)self->_spinner setCenter:?];
  [(UILabel *)self->_loadingLabel sizeToFit];
  [(UIActivityIndicatorView *)self->_spinner frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UILabel *)self->_loadingLabel frame];
  UIRectCenteredXInRect();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v11;
  v21.size.height = v13;
  [(UILabel *)self->_loadingLabel setFrame:v15, CGRectGetMaxY(v21) + 10.0, v17, v19];
}

@end