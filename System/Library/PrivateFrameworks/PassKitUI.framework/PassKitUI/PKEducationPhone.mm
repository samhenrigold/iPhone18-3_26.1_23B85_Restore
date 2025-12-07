@interface PKEducationPhone
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKEducationPhone)initWithFrame:(CGRect)frame displayOptions:(unint64_t)options;
- (double)_deviceIconsPadding;
- (double)_topPadding;
- (void)_setHomeButtonOutlineColor;
- (void)_startPowerIndicatorAnimation;
- (void)layoutSubviews;
- (void)setPassImage:(id)image;
- (void)startAnimation;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKEducationPhone

- (PKEducationPhone)initWithFrame:(CGRect)frame displayOptions:(unint64_t)options
{
  optionsCopy = options;
  v60.receiver = self;
  v60.super_class = PKEducationPhone;
  v5 = [(PKEducationPhone *)&v60 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    p_screenSize = &v5->_screenSize;
    PKScreenSize();
    *&p_screenSize->width = v8;
    v6->_screenSize.height = v9;
    v6->_screenType = PKUIGetMinScreenType();
    v6->_hasPearl = PKPearlIsAvailable();
    v10 = objc_alloc_init(PKPhoneHeroView);
    phoneBackgroundView = v6->_phoneBackgroundView;
    v6->_phoneBackgroundView = v10;

    [(PKEducationPhone *)v6 addSubview:v6->_phoneBackgroundView];
    v12 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    cardImageView = v6->_cardImageView;
    v6->_cardImageView = v12;

    [(UIImageView *)v6->_cardImageView setContentMode:1];
    [(PKEducationPhone *)v6 addSubview:v6->_cardImageView];
    if ((optionsCopy & 1) == 0)
    {
      v14 = objc_alloc_init(PKPaymentSetupInitialCardEducationIconsView);
      iconsView = v6->_iconsView;
      v6->_iconsView = v14;

      [(PKEducationPhone *)v6 addSubview:v6->_iconsView];
    }

    v16 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v17 = PKUIImageNamed(@"CardStack_Illustration");
    v18 = [v16 initWithImage:v17];
    walletImageView = v6->_walletImageView;
    v6->_walletImageView = v18;

    [(UIImageView *)v6->_walletImageView setContentMode:1];
    [(PKEducationPhone *)v6 addSubview:v6->_walletImageView];
    v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
    homeButtonView = v6->_homeButtonView;
    v6->_homeButtonView = v20;

    v22 = v6->_homeButtonView;
    if (v6->_hasPearl)
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(UIView *)v22 setBackgroundColor:labelColor];
    }

    else
    {
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      [(UIView *)v22 setBackgroundColor:systemBlueColor];

      [(UIView *)v6->_homeButtonView setAlpha:0.4];
    }

    [(PKEducationPhone *)v6 addSubview:v6->_homeButtonView];
    if (!v6->_hasPearl)
    {
      v25 = objc_alloc_init(MEMORY[0x1E69DD250]);
      homeButtonOutlineView = v6->_homeButtonOutlineView;
      v6->_homeButtonOutlineView = v25;

      layer = [(UIView *)v6->_homeButtonOutlineView layer];
      [layer setBorderWidth:2.0];

      [(PKEducationPhone *)v6 addSubview:v6->_homeButtonOutlineView];
      [(PKEducationPhone *)v6 _setHomeButtonOutlineColor];
    }

    v28 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    biometricsImageView = v6->_biometricsImageView;
    v6->_biometricsImageView = v28;

    [(UIImageView *)v6->_biometricsImageView setContentMode:1];
    if (v6->_hasPearl)
    {
      v30 = @"PearlIDIcon";
    }

    else
    {
      v30 = @"TouchIDIcon";
    }

    v31 = v30;
    if ((optionsCopy & 2) != 0)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Barcode", v31];

      v31 = v32;
    }

    v33 = PKPassKitUIBundle();
    v34 = [v33 URLForResource:v31 withExtension:@"pdf"];

    v35 = v6->_biometricsImageView;
    v36 = PKUIScreenScale();
    v37 = PKUIImageFromPDF(v34, 40.0, 40.0, v36);
    [(UIImageView *)v35 setImage:v37];

    [(PKEducationPhone *)v6 addSubview:v6->_biometricsImageView];
    if (v6->_hasPearl)
    {
      v38 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      powerIndicatorView = v6->_powerIndicatorView;
      v6->_powerIndicatorView = v38;

      [(UIImageView *)v6->_powerIndicatorView setContentMode:1];
      v40 = PKPassKitUIBundle();
      v41 = [v40 URLForResource:@"Education_Power_Button" withExtension:@"pdf"];

      v42 = PKUIScreenScale();
      v43 = PKUIImageFromPDF(v41, 20.0, 40.0, v42);
      v44 = v6->_powerIndicatorView;
      v45 = [v43 imageWithRenderingMode:2];
      [(UIImageView *)v44 setImage:v45];

      v46 = v6->_powerIndicatorView;
      systemBlueColor2 = [MEMORY[0x1E69DC888] systemBlueColor];
      [(UIImageView *)v46 setTintColor:systemBlueColor2];

      [(UIImageView *)v6->_powerIndicatorView setAlpha:0.4];
      layer2 = [(UIImageView *)v6->_powerIndicatorView layer];
      [layer2 setAnchorPoint:{0.0, 0.5}];

      [(PKEducationPhone *)v6 addSubview:v6->_powerIndicatorView];
      v49 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      powerArrowImageView = v6->_powerArrowImageView;
      v6->_powerArrowImageView = v49;

      v51 = PKPassKitUIBundle();
      v52 = [v51 URLForResource:@"Education_Power_Arrow" withExtension:@"pdf"];

      v53 = PKUIScreenScale();
      v54 = PKUIImageFromPDF(v52, 40.0, 40.0, v53);
      v55 = v6->_powerArrowImageView;
      v56 = [v54 imageWithRenderingMode:2];
      [(UIImageView *)v55 setImage:v56];

      v57 = v6->_powerArrowImageView;
      systemBlueColor3 = [MEMORY[0x1E69DC888] systemBlueColor];
      [(UIImageView *)v57 setTintColor:systemBlueColor3];

      [(PKEducationPhone *)v6 addSubview:v6->_powerArrowImageView];
    }
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  screenType = self->_screenType;
  if (screenType > 0x13)
  {
    v6 = 0.3;
  }

  else
  {
    v6 = dbl_1BE114380[screenType];
  }

  v7 = v6 * self->_screenSize.width / (self->_screenSize.width / self->_screenSize.height);
  if (self->_hasPearl)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 45.0;
  }

  [(PKEducationPhone *)self _topPadding];
  v10 = v7 + v9;
  [(PKEducationPhone *)self _deviceIconsPadding];
  v12 = v8 + v10 + v11 + 34.0;
  v13 = width;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)layoutSubviews
{
  *&recta.origin.y = self;
  *&recta.size.width = PKEducationPhone;
  [(CGFloat *)&recta.origin.y layoutSubviews];
  [(PKEducationPhone *)self bounds];
  v4 = v3;
  v6 = v5;
  [(PKEducationPhone *)self _topPadding];
  v8 = v7;
  v9 = v6 - v7 + -34.0;
  v10 = v9 + -45.0;
  if (self->_hasPearl)
  {
    v10 = v9;
  }

  [(PKPhoneHeroView *)self->_phoneBackgroundView sizeThatFits:v4, v10];
  v12 = v11;
  v14 = v13;
  iconsView = self->_iconsView;
  v16 = v4 - v11;
  v17 = v16 * 0.5;
  if (iconsView)
  {
    [(PKPaymentSetupInitialCardEducationIconsView *)iconsView setFrame:v16 * 0.5, v8, v12, 34.0];
    v72.origin.x = v17;
    v72.origin.y = v8;
    v72.size.width = v12;
    v72.size.height = 34.0;
    MaxY = CGRectGetMaxY(v72);
    [(PKEducationPhone *)self _deviceIconsPadding];
    v8 = MaxY + v19;
  }

  [(PKPhoneHeroView *)self->_phoneBackgroundView setFrame:v17, v8, v12, v14];
  [(PKPhoneHeroView *)self->_phoneBackgroundView deviceCornerRadius];
  v21 = v20;
  recta.origin.x = v17;
  image = [(UIImageView *)self->_cardImageView image];
  [image size];
  PKSizeAspectFit();
  PKSizeRoundToPixel(v23, v24);
  v26 = v25;
  v28 = v27;

  v70 = v14;
  v29 = (v4 - v26) * 0.5;
  v30 = v8 + v21;
  [(UIImageView *)self->_cardImageView setFrame:v29, v8 + v21, v26, v28];
  v31.n128_f64[0] = v12 * 0.25;
  PKFloatRoundToPixel(v31, v32);
  v34 = v33;
  v68 = v28;
  v69 = v4;
  v35 = (v4 - v33) * 0.5;
  v73.origin.x = v29;
  v67 = v30;
  v73.origin.y = v30;
  v36 = v12;
  v73.size.width = v26;
  v73.size.height = v28;
  [(UIImageView *)self->_biometricsImageView setFrame:v35, CGRectGetMaxY(v73) + 20.0, v34, v34];
  v37.n128_f64[0] = v70 * 0.015;
  PKFloatRoundToPixel(v37, v38);
  v40 = v39;
  v74.origin.x = recta.origin.x;
  v65 = v8;
  v74.origin.y = v8;
  v74.size.width = v36;
  v74.size.height = v70;
  v41.n128_f64[0] = CGRectGetMaxY(v74);
  MinY = v41.n128_f64[0];
  if (self->_hasPearl)
  {
    v44 = v36 * 0.5;
    v41.n128_f64[0] = v70 * 0.01;
    PKFloatRoundToPixel(v41, v42);
    v45 = (v69 - v36 * 0.5) * 0.5;
    v47 = v40;
    v48 = MinY - v46 - v40;
    v49 = v46 * 0.5;
  }

  else
  {
    v47 = v40;
    v45 = (v69 + -35.0) * 0.5;
    v48 = v41.n128_f64[0] + 10.0;
    v44 = 35.0;
    v75.origin.x = v45;
    v75.origin.y = MinY + 10.0;
    v75.size.width = 35.0;
    v75.size.height = 35.0;
    v76 = CGRectInset(v75, 4.0, 4.0);
    width = v76.size.width;
    [(UIView *)self->_homeButtonOutlineView setFrame:v76.origin.x, v76.origin.y];
    layer = [(UIView *)self->_homeButtonOutlineView layer];
    [layer setCornerRadius:width * 0.5];

    v49 = 17.5;
  }

  [(UIView *)self->_homeButtonView setFrame:v45, v48, v44, *&v65];
  layer2 = [(UIView *)self->_homeButtonView layer];
  [layer2 setCornerRadius:v49];

  image2 = [(UIImageView *)self->_walletImageView image];
  [image2 size];
  v55 = v54;
  v57 = v56;

  v58 = v36 / (v55 / v57);
  if (self->_hasPearl)
  {
    [(UIView *)self->_homeButtonView frame];
    MinY = CGRectGetMinY(v77);
  }

  [(UIImageView *)self->_walletImageView setFrame:recta.origin.x, MinY - v58 - v47, v36, v58];
  v59 = v70;
  if (self->_hasPearl)
  {
    v60 = v66;
    v61 = v67 + (v68 + -30.0) * 0.5;
    x = recta.origin.x;
    v63 = v36;
    v64 = CGRectGetMaxX(*(&v59 - 3)) + 5.0;
    [(UIImageView *)self->_powerIndicatorView setFrame:v64, v61, 5.0, 30.0];
    v78.size.width = 5.0;
    v78.size.height = 30.0;
    v78.origin.x = v64;
    v78.origin.y = v61;
    [(UIImageView *)self->_powerArrowImageView setFrame:CGRectGetMaxX(v78) + 5.0, v61, 35.0, 30.0];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PKEducationPhone;
  [(PKEducationPhone *)&v4 traitCollectionDidChange:change];
  [(PKEducationPhone *)self _setHomeButtonOutlineColor];
}

- (void)setPassImage:(id)image
{
  [(UIImageView *)self->_cardImageView setImage:image];

  [(PKEducationPhone *)self setNeedsLayout];
}

- (void)startAnimation
{
  if (!self->_isAnimating)
  {
    self->_isAnimating = 1;
    if (self->_hasPearl)
    {
      [(PKEducationPhone *)self _startPowerIndicatorAnimation];
    }
  }
}

- (void)_setHomeButtonOutlineColor
{
  if (self->_homeButtonOutlineView)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__PKEducationPhone__setHomeButtonOutlineColor__block_invoke;
    v7[3] = &unk_1E8010970;
    v7[4] = self;
    v2 = MEMORY[0x1E69DD1B8];
    selfCopy = self;
    currentTraitCollection = [v2 currentTraitCollection];
    v5 = MEMORY[0x1E69DD1B8];
    traitCollection = [(PKEducationPhone *)selfCopy traitCollection];

    [v5 setCurrentTraitCollection:traitCollection];
    __46__PKEducationPhone__setHomeButtonOutlineColor__block_invoke(v7);
    [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:currentTraitCollection];
  }
}

void __46__PKEducationPhone__setHomeButtonOutlineColor__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 464) layer];
  v1 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v2 setBorderColor:{objc_msgSend(v1, "CGColor")}];
}

- (double)_topPadding
{
  screenType = self->_screenType;
  result = 10.0;
  if (screenType <= 0x13)
  {
    return dbl_1BE114420[screenType];
  }

  return result;
}

- (double)_deviceIconsPadding
{
  screenType = self->_screenType;
  result = 16.0;
  if (screenType <= 0x13)
  {
    return dbl_1BE1144C0[screenType];
  }

  return result;
}

- (void)_startPowerIndicatorAnimation
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6979EB0];
  v4 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
  v23[0] = v4;
  v5 = *MEMORY[0x1E6979ED0];
  v6 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  v23[1] = v6;
  v7 = [MEMORY[0x1E69793D0] functionWithName:v3];
  v23[2] = v7;
  v8 = [MEMORY[0x1E69793D0] functionWithName:v5];
  v23[3] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];

  animation = [MEMORY[0x1E6979390] animation];
  [animation setKeyPath:@"position.x"];
  [animation setValues:&unk_1F3CC8210];
  [animation setKeyTimes:&unk_1F3CC81F8];
  [animation setDuration:1.0];
  [animation setAdditive:1];
  [animation setTimingFunctions:v9];
  animation2 = [MEMORY[0x1E6979308] animation];
  v22 = animation;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  [animation2 setAnimations:v12];

  [animation2 setDuration:3.0];
  LODWORD(v13) = 2139095039;
  [animation2 setRepeatCount:v13];
  layer = [(UIImageView *)self->_powerArrowImageView layer];
  [layer addAnimation:animation2 forKey:@"double-tap"];

  animation3 = [MEMORY[0x1E6979390] animation];
  [animation3 setKeyPath:@"transform.scale.x"];
  [animation3 setValues:&unk_1F3CC8228];
  [animation3 setKeyTimes:&unk_1F3CC81F8];
  [animation3 setDuration:1.0];
  [animation3 setTimingFunctions:v9];
  animation4 = [MEMORY[0x1E6979390] animation];
  [animation4 setKeyPath:@"opacity"];
  [animation4 setValues:&unk_1F3CC8240];
  [animation4 setKeyTimes:&unk_1F3CC81F8];
  [animation4 setDuration:1.0];
  [animation4 setTimingFunctions:v9];
  animation5 = [MEMORY[0x1E6979308] animation];

  v21[0] = animation3;
  v21[1] = animation4;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [animation5 setAnimations:v18];

  [animation5 setDuration:3.0];
  LODWORD(v19) = 2139095039;
  [animation5 setRepeatCount:v19];
  layer2 = [(UIImageView *)self->_powerIndicatorView layer];
  [layer2 addAnimation:animation5 forKey:@"power-indicator"];
}

@end