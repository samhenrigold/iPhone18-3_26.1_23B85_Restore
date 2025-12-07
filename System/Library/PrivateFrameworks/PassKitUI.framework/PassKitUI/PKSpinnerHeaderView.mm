@interface PKSpinnerHeaderView
- (PKSpinnerHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setShowSpinner:(BOOL)spinner;
@end

@implementation PKSpinnerHeaderView

- (PKSpinnerHeaderView)initWithReuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = PKSpinnerHeaderView;
  v3 = [(PKSpinnerHeaderView *)&v7 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v3->_spinner;
    v3->_spinner = v4;
  }

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKSpinnerHeaderView;
  [(PKSpinnerHeaderView *)&v3 prepareForReuse];
  [(PKSpinnerHeaderView *)self setShowSpinner:0];
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = PKSpinnerHeaderView;
  [(PKSpinnerHeaderView *)&v58 layoutSubviews];
  contentView = [(PKSpinnerHeaderView *)self contentView];
  [contentView bounds];
  v57 = v4;
  v6 = v5;
  v55 = v5;
  [contentView layoutMargins];
  v8 = v7;
  v54 = v7;
  v10 = v9;
  v56 = v9;
  _shouldReverseLayoutDirection = [(PKSpinnerHeaderView *)self _shouldReverseLayoutDirection];
  textLabel = [(PKSpinnerHeaderView *)self textLabel];
  text = [textLabel text];
  v14 = [text length];

  [textLabel frame];
  v16 = v15;
  v18 = v17;
  v53 = v19;
  v21 = v20;
  [(UIActivityIndicatorView *)self->_spinner frame];
  v23 = v22;
  v25 = v24;
  v26 = v6 - (v8 + v10);
  v27 = v22 + 10.0;
  if (self->_showSpinner)
  {
    v28 = v26 - (v22 + 10.0);
  }

  else
  {
    v28 = v26;
  }

  [textLabel sizeThatFits:{v28, 1.79769313e308}];
  v30 = fmin(v29, v28);
  v31 = PKContentAlignmentMake();
  v32.n128_f64[0] = v30;
  v33.n128_u64[0] = v21;
  v34.n128_u64[0] = v16;
  v35.n128_u64[0] = v18;
  v36.n128_u64[0] = v53;
  v37.n128_u64[0] = v21;
  PKSizeAlignedInRect(v31, v32, v33, v34, v35, v36, v37, v38);
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  [textLabel setFrame:?];
  v47.n128_u64[0] = 0.5;
  v48.n128_f64[0] = v42 + (v46 - v25) * 0.5;
  PKFloatRoundToPixel(v48, v47);
  v50 = v49;
  v51 = v57 + v54;
  if (v14)
  {
    v51 = v40 + v44 + 10.0;
  }

  v52 = v57 + v55 - v56 - v23;
  if (v14)
  {
    v52 = v40 - v27;
  }

  if (_shouldReverseLayoutDirection)
  {
    v51 = v52;
  }

  [(UIActivityIndicatorView *)self->_spinner setFrame:v51, v50, v23, v25];
}

- (void)setShowSpinner:(BOOL)spinner
{
  if (self->_showSpinner == !spinner)
  {
    v13 = v4;
    v14 = v3;
    self->_showSpinner = spinner;
    spinner = self->_spinner;
    if (spinner)
    {
      superview = [(UIActivityIndicatorView *)spinner superview];

      if (!superview)
      {
        contentView = [(PKSpinnerHeaderView *)self contentView];
        [contentView addSubview:self->_spinner];
      }

      [(UIActivityIndicatorView *)self->_spinner startAnimating:v6];
    }

    else
    {
      [(UIActivityIndicatorView *)spinner stopAnimating];
      [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
    }

    [(PKSpinnerHeaderView *)self setNeedsLayout];
  }
}

@end