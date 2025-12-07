@interface CDStackedImagesComplicationImageView
- (BOOL)_hasMultipartImages;
- (BOOL)_shouldIgnoreTwoPieceImage;
- (BOOL)hasMonochromeImage;
- (CDStackedImagesComplicationImageView)initWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CLKMonochromeFilterProvider)filterProvider;
- (UIColor)overrideColor;
- (void)_enumerateImageViewsWithBlock:(id)block;
- (void)_enumerateMultipartImageViewsWithBlock:(id)block;
- (void)_loadImageViewsIfNecessary;
- (void)_updateAlpha;
- (void)_updateColors;
- (void)_updateImageSubviewsMaxSize;
- (void)_updateImages;
- (void)_updateShadow;
- (void)_updateShadowViewImages;
- (void)layoutSubviews;
- (void)setColor:(id)color;
- (void)setForegroundColor:(id)color;
- (void)setImageProvider:(id)provider;
- (void)setMulticolorAlpha:(double)alpha;
- (void)setShadowBlur:(double)blur;
- (void)setShadowColor:(id)color;
- (void)setUsesLegibility:(BOOL)legibility;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation CDStackedImagesComplicationImageView

- (CDStackedImagesComplicationImageView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CDStackedImagesComplicationImageView;
  v3 = [(CDStackedImagesComplicationImageView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
    device = [mEMORY[0x277CBBB68] device];
    device = v3->_device;
    v3->_device = device;

    v3->_shadowBlur = *MEMORY[0x277CFA728];
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:*MEMORY[0x277CFA720]];
    shadowColor = v3->_shadowColor;
    v3->_shadowColor = v7;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    foregroundColor = v3->_foregroundColor;
    v3->_foregroundColor = whiteColor;

    [(CDStackedImagesComplicationImageView *)v3 _updateAlpha];
  }

  return v3;
}

- (void)_enumerateMultipartImageViewsWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, self->_backgroundImageView);
  (*v4)(blockCopy, self->_foregroundAccentImageView);
}

- (void)_enumerateImageViewsWithBlock:(id)block
{
  blockCopy = block;
  [(CDStackedImagesComplicationImageView *)self _enumerateMultipartImageViewsWithBlock:blockCopy];
  blockCopy[2](blockCopy, self->_monochromeImageView);
  blockCopy[2](blockCopy, self->_layerMaskImageView);
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = CDStackedImagesComplicationImageView;
  [(CDStackedImagesComplicationImageView *)&v10 layoutSubviews];
  [(CDStackedImagesComplicationImageView *)self bounds];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__CDStackedImagesComplicationImageView_layoutSubviews__block_invoke;
  v9[3] = &unk_278DF3738;
  v9[5] = v3;
  v9[6] = v4;
  v9[7] = v5;
  v9[8] = v6;
  v9[4] = self;
  [(CDStackedImagesComplicationImageView *)self _enumerateImageViewsWithBlock:v9];
  if ([(CDStackedImagesComplicationImageView *)self _hasShadowViews])
  {
    v7 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
    [(UIImageView *)self->_monochromeShadowView sizeThatFits:*MEMORY[0x277CBF3A8], v8];
    CLKRectCenteredIntegralRectForDevice();
    [(UIImageView *)self->_monochromeShadowView setFrame:?];
    [(UIImageView *)self->_multipartShadowView sizeThatFits:v7, v8];
    CLKRectCenteredIntegralRectForDevice();
    [(UIImageView *)self->_multipartShadowView setFrame:?];
  }
}

void __54__CDStackedImagesComplicationImageView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  v4 = a2;
  [v4 sizeThatFits:{v2, v3}];
  CLKRectCenteredIntegralRectForDevice();
  [v4 setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v20 = &unk_243DB9E91;
  v21 = *MEMORY[0x277CBF3A8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__CDStackedImagesComplicationImageView_sizeThatFits___block_invoke;
  v15[3] = &unk_278DF3760;
  fitsCopy = fits;
  v15[4] = &v17;
  [(CDStackedImagesComplicationImageView *)self _enumerateMultipartImageViewsWithBlock:v15];
  [(CLKUIColoringImageView *)self->_monochromeImageView sizeThatFits:width, height];
  v7.f64[1] = v6;
  v18[2] = vbslq_s8(vcgtq_f64(v7, v18[2]), v7, v18[2]);
  [(_CDComplicationImageViewProviderImageView *)self->_layerMaskImageView sizeThatFits:width, height];
  v10 = v18;
  if (v18[2].f64[0] >= v8)
  {
    v11 = v18[2].f64[0];
  }

  else
  {
    v11 = v8;
  }

  if (v18[2].f64[1] >= v9)
  {
    v12 = v18[2].f64[1];
  }

  else
  {
    v12 = v9;
  }

  v18[2].f64[0] = v11;
  v10[2].f64[1] = v12;
  _Block_object_dispose(&v17, 8);
  v13 = v11;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

int8x16_t __53__CDStackedImagesComplicationImageView_sizeThatFits___block_invoke(uint64_t a1, void *a2)
{
  [a2 sizeThatFits:{*(a1 + 40), *(a1 + 48)}];
  v3 = *(*(a1 + 32) + 8);
  v5.f64[1] = v4;
  result = vbslq_s8(vcgtq_f64(v5, v3[2]), v5, v3[2]);
  v3[2] = result;
  return result;
}

- (void)_updateImageSubviewsMaxSize
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3010000000;
  v9[3] = &unk_243DB9E91;
  v10 = *MEMORY[0x277CBF3A8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__CDStackedImagesComplicationImageView__updateImageSubviewsMaxSize__block_invoke;
  v8[3] = &unk_278DF3788;
  v8[4] = v9;
  [(CDStackedImagesComplicationImageView *)self _enumerateMultipartImageViewsWithBlock:v8];
  [(CLKImageProvider *)self->_imageProvider maxSize];
  CLKFloorForDevice();
  v4 = v3;
  CLKFloorForDevice();
  v6 = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__CDStackedImagesComplicationImageView__updateImageSubviewsMaxSize__block_invoke_2;
  v7[3] = &__block_descriptor_48_e21_v16__0__UIImageView_8l;
  *&v7[4] = v4;
  *&v7[5] = v5;
  [(CDStackedImagesComplicationImageView *)self _enumerateMultipartImageViewsWithBlock:v7];
  [(CLKUIColoringImageView *)self->_monochromeImageView setMaxSize:v4, v6];
  [(_CDComplicationImageViewProviderImageView *)self->_layerMaskImageView setMaxSize:v4, v6];
  _Block_object_dispose(v9, 8);
}

int8x16_t __67__CDStackedImagesComplicationImageView__updateImageSubviewsMaxSize__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 image];
  [v4 size];
  v10 = v6;
  v11 = v5;

  [v3 sizeToFit];
  v7 = *(*(a1 + 32) + 8);
  v8.f64[0] = v11;
  v8.f64[1] = v10;
  result = vbslq_s8(vcgtq_f64(v8, v7[2]), v8, v7[2]);
  v7[2] = result;
  return result;
}

void __67__CDStackedImagesComplicationImageView__updateImageSubviewsMaxSize__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setMaxSize:{*(a1 + 32), *(a1 + 40)}];
  }
}

- (void)_updateColors
{
  if ([(CDStackedImagesComplicationImageView *)self _hasMultipartImages]|| self->_multicolorAlpha != 1.0)
  {
    v13 = self->_color;
  }

  else
  {
    tintColor = [(CLKImageProvider *)self->_imageProvider tintColor];
    color = tintColor;
    if (!tintColor)
    {
      color = self->_color;
    }

    v13 = color;
  }

  v5 = self->_foregroundColor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    secondaryTintColor = [(CLKImageProvider *)self->_imageProvider secondaryTintColor];
    v7 = secondaryTintColor;
    if (secondaryTintColor)
    {
      v8 = secondaryTintColor;
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;

    v5 = v9;
  }

  [(CLKUIColoringImageView *)self->_foregroundImageView setColor:v5];
  backgroundImageView = self->_backgroundImageView;
  tintColor2 = [(CLKImageProvider *)self->_imageProvider tintColor];
  v12 = tintColor2;
  if (!tintColor2)
  {
    v12 = self->_color;
  }

  [(CLKUIColoringImageView *)backgroundImageView setColor:v12];

  [(CLKUIColoringImageView *)self->_monochromeImageView setColor:v13];
}

- (void)_updateShadowViewImages
{
  self->_isShadowImagesStale = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277CCAE60];
    [(CLKUIColoringImageView *)self->_monochromeImageView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v7 = [v3 valueWithCGSize:?];
    image = CLKUIShadowImageFromView();
    [(UIImageView *)self->_monochromeShadowView setImage:image];
  }

  else
  {
    image = [(CLKUIColoringImageView *)self->_monochromeImageView image];
    v5 = CLKUIShadowImage();
    [(UIImageView *)self->_monochromeShadowView setImage:v5];

    v7 = 0;
  }

  v6 = CLKUIShadowImage();
  [(UIImageView *)self->_multipartShadowView setImage:v6];
}

- (void)_updateImages
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CLKUIColoringImageView *)self->_monochromeImageView setImageProvider:self->_imageProvider];
    [(CLKUIColoringImageView *)self->_foregroundImageView setImageProvider:self->_imageProvider];
    [(CLKUIColoringImageView *)self->_backgroundImageView setImageProvider:self->_imageProvider];
  }

  else
  {
    if (![(CDStackedImagesComplicationImageView *)self _shouldIgnoreTwoPieceImage])
    {
      foregroundImageView = self->_foregroundImageView;
      twoPieceImageForeground = [(CLKImageProvider *)self->_imageProvider twoPieceImageForeground];
      [(CLKUIColoringImageView *)foregroundImageView setImage:twoPieceImageForeground];

      backgroundImageView = self->_backgroundImageView;
      twoPieceImageBackground = [(CLKImageProvider *)self->_imageProvider twoPieceImageBackground];
      [(CLKUIColoringImageView *)backgroundImageView setImage:twoPieceImageBackground];
    }

    monochromeImageView = self->_monochromeImageView;
    onePieceImage = [(CLKImageProvider *)self->_imageProvider onePieceImage];
    [(CLKUIColoringImageView *)monochromeImageView setImage:onePieceImage];

    foregroundAccentImageView = self->_foregroundAccentImageView;
    foregroundAccentImage = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];
    [(UIImageView *)foregroundAccentImageView setImage:foregroundAccentImage];

    layerMaskImageView = self->_layerMaskImageView;
    onePieceImage2 = [(CLKImageProvider *)self->_imageProvider onePieceImage];
    [(_CDComplicationImageViewProviderImageView *)layerMaskImageView setImage:onePieceImage2];
  }

  if ([(CDStackedImagesComplicationImageView *)self _hasShadowViews])
  {
    if ([(CDStackedImagesComplicationImageView *)self _hasMultipartImages])
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x4010000000;
      v25 = &unk_243DB9E91;
      v13 = *(MEMORY[0x277CBF3A0] + 16);
      v26 = *MEMORY[0x277CBF3A0];
      v27 = v13;
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __53__CDStackedImagesComplicationImageView__updateImages__block_invoke;
      v17[3] = &unk_278DF37D0;
      v17[4] = &v18;
      v17[5] = &v22;
      [(CDStackedImagesComplicationImageView *)self _enumerateMultipartImageViewsWithBlock:v17];
      if (CGRectIsEmpty(v23[1]))
      {
        v14 = 0;
      }

      else
      {
        UIGraphicsBeginImageContextWithOptions(v23[1].size, 0, v19[3]);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __53__CDStackedImagesComplicationImageView__updateImages__block_invoke_2;
        v16[3] = &unk_278DF37D0;
        v16[4] = &v22;
        v16[5] = &v18;
        [(CDStackedImagesComplicationImageView *)self _enumerateMultipartImageViewsWithBlock:v16];
        v14 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
      }

      _Block_object_dispose(&v18, 8);
      _Block_object_dispose(&v22, 8);
    }

    else
    {
      v14 = 0;
    }

    multipartShadowViewSource = self->_multipartShadowViewSource;
    self->_multipartShadowViewSource = v14;

    if (self->_isUsingLegibility)
    {
      [(CDStackedImagesComplicationImageView *)self _updateShadowViewImages];
    }

    else
    {
      self->_isShadowImagesStale = 1;
    }

    [(CDStackedImagesComplicationImageView *)self setNeedsLayout];
  }
}

void __53__CDStackedImagesComplicationImageView__updateImages__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  v5 = [v4 image];
  [v5 scale];
  v7 = v6;

  if (v3 >= v7)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;
  v9 = *(*(*(a1 + 40) + 8) + 48);
  v10 = [v4 image];
  [v10 size];
  v12 = v11;

  if (v9 < v12)
  {
    v9 = v12;
  }

  v13 = *(*(*(a1 + 40) + 8) + 56);
  v14 = [v4 image];

  [v14 size];
  v16 = v15;

  if (v13 >= v16)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(*(a1 + 40) + 8);
  *(v18 + 32) = *MEMORY[0x277CBF348];
  *(v18 + 48) = v9;
  *(v18 + 56) = v17;
}

void __53__CDStackedImagesComplicationImageView__updateImages__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 image];
  [v4 size];
  v3 = *(*(*(a1 + 40) + 8) + 24);
  UIRectCenteredIntegralRectScale();
  [v4 drawInRect:v3];
}

- (void)_updateAlpha
{
  v3 = 0.0;
  if ([(CDStackedImagesComplicationImageView *)self _hasMultipartImages])
  {
    [(CDStackedImagesComplicationImageView *)self multicolorAlpha];
    v3 = v4;
  }

  [(CLKUIColoringImageView *)self->_monochromeImageView setAlpha:1.0 - v3];
  [(UIImageView *)self->_monochromeShadowView setAlpha:1.0 - v3];
  [(UIImageView *)self->_multipartShadowView setAlpha:v3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__CDStackedImagesComplicationImageView__updateAlpha__block_invoke;
  v5[3] = &__block_descriptor_40_e21_v16__0__UIImageView_8l;
  *&v5[4] = v3;
  [(CDStackedImagesComplicationImageView *)self _enumerateMultipartImageViewsWithBlock:v5];
}

- (void)_updateShadow
{
  if (self->_isUsingLegibility)
  {
    if ([(CDStackedImagesComplicationImageView *)self _hasShadowViews])
    {
      [(UIImageView *)self->_multipartShadowView setHidden:0];
      [(UIImageView *)self->_monochromeShadowView setHidden:0];
    }

    else
    {
      v4 = objc_opt_new();
      multipartShadowView = self->_multipartShadowView;
      self->_multipartShadowView = v4;

      v6 = objc_opt_new();
      monochromeShadowView = self->_monochromeShadowView;
      self->_monochromeShadowView = v6;

      [(CDStackedImagesComplicationImageView *)self addSubview:self->_multipartShadowView];
      [(CDStackedImagesComplicationImageView *)self addSubview:self->_monochromeShadowView];
      [(CDStackedImagesComplicationImageView *)self sendSubviewToBack:self->_multipartShadowView];
      [(CDStackedImagesComplicationImageView *)self sendSubviewToBack:self->_monochromeShadowView];
      [(CDStackedImagesComplicationImageView *)self _updateImages];
      [(CDStackedImagesComplicationImageView *)self _updateShadowViewImages];
    }

    [(CDStackedImagesComplicationImageView *)self setClipsToBounds:0];
  }

  else
  {
    [(UIImageView *)self->_multipartShadowView setHidden:1];
    v3 = self->_monochromeShadowView;

    [(UIImageView *)v3 setHidden:1];
  }
}

- (BOOL)_hasMultipartImages
{
  _shouldIgnoreTwoPieceImage = [(CDStackedImagesComplicationImageView *)self _shouldIgnoreTwoPieceImage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isTwoPiece = [(CLKImageProvider *)self->_imageProvider isTwoPiece];
  }

  else
  {
    isTwoPiece = 0;
  }

  twoPieceImageBackground = [(CLKImageProvider *)self->_imageProvider twoPieceImageBackground];
  if (twoPieceImageBackground)
  {
    twoPieceImageForeground = [(CLKImageProvider *)self->_imageProvider twoPieceImageForeground];
    v7 = twoPieceImageForeground != 0;

    isTwoPiece |= v7;
  }

  if (!_shouldIgnoreTwoPieceImage && (isTwoPiece & 1) != 0)
  {
    return 1;
  }

  foregroundAccentImage = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];
  v8 = foregroundAccentImage != 0;

  return v8;
}

- (void)_loadImageViewsIfNecessary
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    isTwoPiece = [(CLKImageProvider *)self->_imageProvider isTwoPiece];
  }

  else
  {
    isTwoPiece = 0;
  }

  twoPieceImageBackground = [(CLKImageProvider *)self->_imageProvider twoPieceImageBackground];

  twoPieceImageForeground = [(CLKImageProvider *)self->_imageProvider twoPieceImageForeground];
  v7 = (twoPieceImageForeground != 0) | isTwoPiece;

  onePieceImage = [(CLKImageProvider *)self->_imageProvider onePieceImage];
  v9 = onePieceImage != 0;

  backgroundImageView = self->_backgroundImageView;
  if (twoPieceImageBackground)
  {
    v11 = 0;
  }

  else
  {
    v11 = isTwoPiece == 0;
  }

  if (v11)
  {
    v14 = 1;
  }

  else
  {
    if (!backgroundImageView)
    {
      v12 = objc_opt_new();
      v13 = self->_backgroundImageView;
      self->_backgroundImageView = v12;

      [(CDStackedImagesComplicationImageView *)self addSubview:self->_backgroundImageView];
      backgroundImageView = self->_backgroundImageView;
    }

    v14 = 0;
  }

  [(CLKUIColoringImageView *)backgroundImageView setHidden:v14];
  v15 = isKindOfClass | v9;
  foregroundImageView = self->_foregroundImageView;
  if (v7)
  {
    if (!foregroundImageView)
    {
      v17 = objc_opt_new();
      v18 = self->_foregroundImageView;
      self->_foregroundImageView = v17;

      [(CDStackedImagesComplicationImageView *)self addSubview:self->_foregroundImageView];
      foregroundImageView = self->_foregroundImageView;
    }

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  [(CLKUIColoringImageView *)foregroundImageView setHidden:v19];
  if ((v15 & 1) == 0)
  {
    goto LABEL_21;
  }

  if ([(CLKImageProvider *)self->_imageProvider useOnePieceAsLayerMask])
  {
    if (!self->_layerMaskImageView)
    {
      v20 = objc_opt_new();
      layerMaskImageView = self->_layerMaskImageView;
      self->_layerMaskImageView = v20;

      [(CDStackedImagesComplicationImageView *)self addSubview:self->_layerMaskImageView];
    }

LABEL_21:
    monochromeImageView = self->_monochromeImageView;
    v23 = 1;
    goto LABEL_25;
  }

  monochromeImageView = self->_monochromeImageView;
  if (!monochromeImageView)
  {
    v24 = objc_opt_new();
    v25 = self->_monochromeImageView;
    self->_monochromeImageView = v24;

    [(CDStackedImagesComplicationImageView *)self addSubview:self->_monochromeImageView];
    monochromeImageView = self->_monochromeImageView;
  }

  v23 = 0;
LABEL_25:
  [(CLKUIColoringImageView *)monochromeImageView setHidden:v23];
  foregroundAccentImage = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];

  foregroundAccentImageView = self->_foregroundAccentImageView;
  if (foregroundAccentImage)
  {
    if (!foregroundAccentImageView)
    {
      v28 = objc_opt_new();
      v29 = self->_foregroundAccentImageView;
      self->_foregroundAccentImageView = v28;

      [(CDStackedImagesComplicationImageView *)self addSubview:self->_foregroundAccentImageView];
    }
  }

  else
  {
    [(UIImageView *)foregroundAccentImageView removeFromSuperview];
    v30 = self->_foregroundAccentImageView;
    self->_foregroundAccentImageView = 0;
  }

  [(CLKUIColoringImageView *)self->_backgroundImageView setSymbolImageType:3];
  v31 = self->_foregroundImageView;

  [(CLKUIColoringImageView *)v31 setSymbolImageType:2];
}

- (BOOL)_shouldIgnoreTwoPieceImage
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_filterProvider);
  v6 = [v5 viewShouldIgnoreTwoPieceImage:self];

  return v6;
}

- (BOOL)hasMonochromeImage
{
  image = [(CLKUIColoringImageView *)self->_monochromeImageView image];
  v3 = image != 0;

  return v3;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (self->_color != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_color, color);
    [(CDStackedImagesComplicationImageView *)self _updateColors];
    colorCopy = v6;
  }
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  if (self->_foregroundColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_foregroundColor, color);
    [(CDStackedImagesComplicationImageView *)self _updateColors];
    colorCopy = v6;
  }
}

- (void)setImageProvider:(id)provider
{
  providerCopy = provider;
  if (self->_imageProvider != providerCopy)
  {
    v9 = providerCopy;
    objc_storeStrong(&self->_imageProvider, provider);
    [(CDStackedImagesComplicationImageView *)self _enumerateImageViewsWithBlock:&__block_literal_global_3];
    [(CDStackedImagesComplicationImageView *)self _loadImageViewsIfNecessary];
    [(CDStackedImagesComplicationImageView *)self _updateAlpha];
    [(CDStackedImagesComplicationImageView *)self _updateImages];
    [(CDStackedImagesComplicationImageView *)self _updateColors];
    [(CDStackedImagesComplicationImageView *)self _updateShadow];
    if ([(CLKImageProvider *)v9 isForegroundAccentImageTinted])
    {
      layer = [(CLKUIColoringImageView *)self->_foregroundImageView layer];
      filters = [layer filters];
      layer2 = [(UIImageView *)self->_foregroundAccentImageView layer];
      [layer2 setFilters:filters];
    }

    else
    {
      layer = [(UIImageView *)self->_foregroundAccentImageView layer];
      [layer setFilters:0];
    }

    if (self->_isUsingLegibility)
    {
      [(CDStackedImagesComplicationImageView *)self _updateShadowViewImages];
    }

    else
    {
      self->_isShadowImagesStale = 1;
    }

    [(CDStackedImagesComplicationImageView *)self _updateImageSubviewsMaxSize];
    [(CDStackedImagesComplicationImageView *)self sizeToFit];
    providerCopy = v9;
  }
}

void __57__CDStackedImagesComplicationImageView_setImageProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 setMaxSize:{1.79769313e308, 1.79769313e308}];
  }
}

- (void)setMulticolorAlpha:(double)alpha
{
  if (self->_multicolorAlpha != alpha)
  {
    self->_multicolorAlpha = alpha;
    [(CDStackedImagesComplicationImageView *)self _updateAlpha];

    [(CDStackedImagesComplicationImageView *)self _updateColors];
  }
}

- (UIColor)overrideColor
{
  overrideColor = self->_overrideColor;
  if (overrideColor)
  {
    tintColor = overrideColor;
  }

  else
  {
    tintColor = [(CLKImageProvider *)self->_imageProvider tintColor];
  }

  return tintColor;
}

- (void)setUsesLegibility:(BOOL)legibility
{
  if (self->_isUsingLegibility != legibility)
  {
    self->_isUsingLegibility = legibility;
    [(CDStackedImagesComplicationImageView *)self _updateShadow];
    if (self->_isShadowImagesStale)
    {

      [(CDStackedImagesComplicationImageView *)self _updateShadowViewImages];
    }
  }
}

- (void)setShadowBlur:(double)blur
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_shadowBlur = blur;
    if (self->_isUsingLegibility)
    {

      [(CDStackedImagesComplicationImageView *)self _updateShadowViewImages];
    }

    else
    {
      self->_isShadowImagesStale = 1;
    }
  }
}

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_shadowColor] & 1) == 0)
  {
    objc_storeStrong(&self->_shadowColor, color);
    if (self->_isUsingLegibility)
    {
      [(CDStackedImagesComplicationImageView *)self _updateShadowViewImages];
    }

    else
    {
      self->_isShadowImagesStale = 1;
    }
  }
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v24[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v7 = [WeakRetained filtersForView:self style:-[CDStackedImagesComplicationImageView _backgroundFilterStyle](self fraction:{"_backgroundFilterStyle"), fraction}];

  if (v7)
  {
    layer = [(CLKUIColoringImageView *)self->_backgroundImageView layer];
    [layer setFilters:v7];

    layer2 = [(CLKUIColoringImageView *)self->_monochromeImageView layer];
    [layer2 setFilters:v7];

    if (isKindOfClass)
    {
      layer3 = [(CLKUIColoringImageView *)self->_foregroundImageView layer];
      [layer3 setFilters:v7];
    }

    if ([(CLKImageProvider *)self->_imageProvider useOnePieceAsLayerMask])
    {
      v11 = objc_loadWeakRetained(&self->_filterProvider);
      v12 = [v11 colorForView:self accented:0];

      v13 = objc_loadWeakRetained(&self->_filterProvider);
      v14 = [v13 colorForView:self accented:1];

      v15 = _CDLayerMaskColorizationFilter(v12, v14);
      v24[0] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      layer4 = [(_CDComplicationImageViewProviderImageView *)self->_layerMaskImageView layer];
      [layer4 setFilters:v16];
    }
  }

  if ((isKindOfClass & 1) == 0)
  {
    v18 = objc_loadWeakRetained(&self->_filterProvider);
    v19 = [v18 filtersForView:self style:-[CDStackedImagesComplicationImageView _foregroundFilterStyle](self fraction:{"_foregroundFilterStyle"), fraction}];

    if (v19)
    {
      layer5 = [(CLKUIColoringImageView *)self->_foregroundImageView layer];
      [layer5 setFilters:v19];

      LODWORD(layer5) = [(CLKImageProvider *)self->_imageProvider isForegroundAccentImageTinted];
      layer6 = [(UIImageView *)self->_foregroundAccentImageView layer];
      v22 = layer6;
      if (layer5)
      {
        v23 = v19;
      }

      else
      {
        v23 = 0;
      }

      [layer6 setFilters:v23];
    }
  }
}

- (void)updateMonochromeColor
{
  v22[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v5 = [WeakRetained filtersForView:self style:{-[CDStackedImagesComplicationImageView _backgroundFilterStyle](self, "_backgroundFilterStyle")}];

  if (v5)
  {
    layer = [(CLKUIColoringImageView *)self->_backgroundImageView layer];
    [layer setFilters:v5];

    layer2 = [(CLKUIColoringImageView *)self->_monochromeImageView layer];
    [layer2 setFilters:v5];

    if (isKindOfClass)
    {
      layer3 = [(CLKUIColoringImageView *)self->_foregroundImageView layer];
      [layer3 setFilters:v5];
    }

    if ([(CLKImageProvider *)self->_imageProvider useOnePieceAsLayerMask])
    {
      v9 = objc_loadWeakRetained(&self->_filterProvider);
      v10 = [v9 colorForView:self accented:0];

      v11 = objc_loadWeakRetained(&self->_filterProvider);
      v12 = [v11 colorForView:self accented:1];

      v13 = _CDLayerMaskColorizationFilter(v10, v12);
      v22[0] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      layer4 = [(_CDComplicationImageViewProviderImageView *)self->_layerMaskImageView layer];
      [layer4 setFilters:v14];
    }
  }

  if ((isKindOfClass & 1) == 0)
  {
    v16 = objc_loadWeakRetained(&self->_filterProvider);
    v17 = [v16 filtersForView:self style:{-[CDStackedImagesComplicationImageView _foregroundFilterStyle](self, "_foregroundFilterStyle")}];

    if (v17)
    {
      layer5 = [(CLKUIColoringImageView *)self->_foregroundImageView layer];
      [layer5 setFilters:v17];

      LODWORD(layer5) = [(CLKImageProvider *)self->_imageProvider isForegroundAccentImageTinted];
      layer6 = [(UIImageView *)self->_foregroundAccentImageView layer];
      v20 = layer6;
      if (layer5)
      {
        v21 = v17;
      }

      else
      {
        v21 = 0;
      }

      [layer6 setFilters:v21];
    }
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end