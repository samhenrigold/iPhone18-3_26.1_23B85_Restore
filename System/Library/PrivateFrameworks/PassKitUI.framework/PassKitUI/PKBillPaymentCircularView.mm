@interface PKBillPaymentCircularView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKBillPaymentCircularView)init;
- (void)_updateColors;
- (void)layoutSubviews;
- (void)setImage:(id)image applyColor:(BOOL)color;
- (void)setPrimaryColor:(id)color;
- (void)setSecondaryColor:(id)color;
@end

@implementation PKBillPaymentCircularView

- (PKBillPaymentCircularView)init
{
  v15.receiver = self;
  v15.super_class = PKBillPaymentCircularView;
  v2 = [(PKBillPaymentCircularView *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    primaryView = v2->_primaryView;
    v2->_primaryView = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    secondaryView = v2->_secondaryView;
    v2->_secondaryView = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v2->_imageView;
    v2->_imageView = v7;

    _defaultSecondaryColor = [(PKBillPaymentCircularView *)v2 _defaultSecondaryColor];
    secondaryColor = v2->_secondaryColor;
    v2->_secondaryColor = _defaultSecondaryColor;

    objc_storeStrong(&v2->_primaryColor, _defaultSecondaryColor);
    [(PKBillPaymentCircularView *)v2 addSubview:v2->_secondaryView];
    [(PKBillPaymentCircularView *)v2 addSubview:v2->_primaryView];
    [(PKBillPaymentCircularView *)v2 addSubview:v2->_imageView];
    layer = [(PKBillPaymentCircularView *)v2 layer];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    [layer setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [layer setShadowRadius:4.0];
    LODWORD(v13) = 0.25;
    [layer setShadowOpacity:v13];
    __33__PKBillPaymentCircularView_init__block_invoke(v2->_primaryView);
    __33__PKBillPaymentCircularView_init__block_invoke(v2->_secondaryView);
    [(PKBillPaymentCircularView *)v2 _updateColors];
  }

  return v2;
}

void __33__PKBillPaymentCircularView_init__block_invoke(void *a1)
{
  if (a1)
  {
    v1 = [a1 layer];
    [v1 setMasksToBounds:1];
    [v1 setCornerCurve:*MEMORY[0x1E69796E0]];
  }
}

- (void)layoutSubviews
{
  v52.receiver = self;
  v52.super_class = PKBillPaymentCircularView;
  [(PKBillPaymentCircularView *)&v52 layoutSubviews];
  [(PKBillPaymentCircularView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8.n128_f64[0] = v7;
  v10 = *&v9;
  v11.n128_f64[0] = fmin(v7, v9);
  v12 = *MEMORY[0x1E69BB7F8];
  v13.n128_u64[0] = v11.n128_u64[0];
  v14.n128_u64[0] = v4;
  v15.n128_u64[0] = v6;
  v16.n128_u64[0] = v8.n128_u64[0];
  v17.n128_u64[0] = v10;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v11, v13, v14, v15, v16, v17, v8);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = PKUIGetMinScreenWidthType();
  v33.n128_u64[0] = 3.5;
  if (!v26)
  {
    v33.n128_f64[0] = 3.0;
  }

  v34 = v19 + v33.n128_f64[0];
  v35 = v21 + v33.n128_f64[0];
  v36 = 7.0;
  if (!v26)
  {
    v36 = 6.0;
  }

  v37 = v23 - v36;
  v38 = v25 - v36;
  image = self->_image;
  if (image)
  {
    [(UIImage *)image size];
  }

  else
  {
    v33.n128_u64[0] = *MEMORY[0x1E695F060];
    v27.n128_u64[0] = *(MEMORY[0x1E695F060] + 8);
  }

  v28.n128_f64[0] = v19;
  v29.n128_f64[0] = v21;
  v30.n128_f64[0] = v23;
  v31.n128_f64[0] = v25;
  PKSizeAlignedInRect(v12, v33, v27, v28, v29, v30, v31, v32);
  v50 = v41;
  v51 = v40;
  v48 = v43;
  v49 = v42;
  [(UIView *)self->_primaryView setFrame:v34, v35, v37, v38];
  layer = [(UIView *)self->_primaryView layer];
  [layer setCornerRadius:v37 * 0.5];

  [(UIView *)self->_secondaryView setFrame:v19, v21, v23, v25];
  layer2 = [(UIView *)self->_secondaryView layer];
  [layer2 setCornerRadius:v23 * 0.5];

  [(UIImageView *)self->_imageView setFrame:v51, v50, v49, v48];
  v53.origin.x = v19;
  v53.origin.y = v21;
  v53.size.width = v23;
  v53.size.height = v25;
  if (!CGRectEqualToRect(self->_shadowFrame, v53))
  {
    self->_shadowFrame.origin.x = v19;
    self->_shadowFrame.origin.y = v21;
    self->_shadowFrame.size.width = v23;
    self->_shadowFrame.size.height = v25;
    layer3 = [(PKBillPaymentCircularView *)self layer];
    v47 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v19, v21, v23, v25}];
    [layer3 setShadowPath:{objc_msgSend(v47, "CGPath")}];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = fmin(fits.width, fits.height);
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setImage:(id)image applyColor:(BOOL)color
{
  colorCopy = color;
  imageCopy = image;
  v8 = imageCopy;
  if (self->_image != imageCopy)
  {
    if (colorCopy)
    {
      primaryColor = self->_primaryColor;
      if (!primaryColor)
      {
        primaryColor = self->_secondaryColor;
      }

      v10 = [(UIImage *)imageCopy _flatImageWithColor:primaryColor];
    }

    else
    {
      v10 = imageCopy;
    }

    v11 = v10;
    objc_storeStrong(&self->_image, image);
    [(PKBillPaymentCircularView *)self setNeedsLayout];
    if (self->_image)
    {
      [(UIImageView *)self->_imageView setImage:v11];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__PKBillPaymentCircularView_setImage_applyColor___block_invoke;
    v12[3] = &unk_1E8010970;
    v12[4] = self;
    [MEMORY[0x1E69DD250] pkui_animateUsingOptions:0 delay:v12 animations:0 completion:0.0];
  }
}

- (void)_updateColors
{
  primaryView = self->_primaryView;
  primaryColor = self->_primaryColor;
  if (!primaryColor)
  {
    primaryColor = self->_secondaryColor;
  }

  [(UIView *)primaryView setBackgroundColor:primaryColor];
  secondaryView = self->_secondaryView;
  secondaryColor = self->_secondaryColor;

  [(UIView *)secondaryView setBackgroundColor:secondaryColor];
}

- (void)setPrimaryColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    v4 = [colorCopy copy];
    primaryColor = self->_primaryColor;
    self->_primaryColor = v4;

    [(PKBillPaymentCircularView *)self _updateColors];
  }
}

- (void)setSecondaryColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = [(PKBillPaymentCircularView *)self _defaultSecondaryColor];
  }

  v7 = colorCopy;
  if ((PKEqualObjects() & 1) == 0)
  {
    v5 = [v7 copy];
    secondaryColor = self->_secondaryColor;
    self->_secondaryColor = v5;

    [(PKBillPaymentCircularView *)self _updateColors];
  }
}

@end