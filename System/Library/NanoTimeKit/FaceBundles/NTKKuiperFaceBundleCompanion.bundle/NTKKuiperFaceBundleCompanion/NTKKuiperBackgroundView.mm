@interface NTKKuiperBackgroundView
- (CGRect)dialFrame;
- (NTKKuiperBackgroundView)initWithDevice:(id)device dialRadius:(double)radius;
- (id)_foregroundDigitColorForRotationFraction:(double)fraction;
- (void)_addMulticolorCircularGradientLayer;
- (void)_addMulticolorFullscreenGradientLayer;
- (void)_applyColorPalette;
- (void)_applyDialLayout;
- (void)_applyFontForDigitIndex:(unint64_t)index;
- (void)_applyFullscreenGradientLayerEnabled:(BOOL)enabled circularGradientLayerEnabled:(BOOL)layerEnabled;
- (void)_applyTransformToLabelsWithRubberbanding:(double)rubberbanding;
- (void)_removeMulticolorCircularGradientLayer;
- (void)_removeMulticolorFullscreenGradientLayer;
- (void)_setTypographicSize:(CGSize)size rubberbanding:(double)rubberbanding;
- (void)applyFont;
- (void)setColorPalette:(id)palette;
- (void)setOverrideBackgroundColor:(id)color;
- (void)typographicSizeProviderUpdateNumeralSizes:(id)sizes;
@end

@implementation NTKKuiperBackgroundView

- (NTKKuiperBackgroundView)initWithDevice:(id)device dialRadius:(double)radius
{
  deviceCopy = device;
  [deviceCopy screenBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v47.receiver = self;
  v47.super_class = NTKKuiperBackgroundView;
  v16 = [(NTKKuiperBackgroundView *)&v47 initWithFrame:?];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_device, device);
    v18 = objc_opt_new();
    backgroundColorLayer = v17->_backgroundColorLayer;
    v17->_backgroundColorLayer = v18;

    layer = [(NTKKuiperBackgroundView *)v17 layer];
    [layer addSublayer:v17->_backgroundColorLayer];

    v21 = [[NTKRoundedCornerOverlayView alloc] initWithFrame:deviceCopy forDeviceCornerRadius:{v9, v11, v13, v15}];
    cornerView = v17->_cornerView;
    v17->_cornerView = v21;

    [(NTKKuiperBackgroundView *)v17 addSubview:v17->_cornerView];
    v17->_dialRadius = radius;
    v23 = +[CAShapeLayer layer];
    dialLayer = v17->_dialLayer;
    v17->_dialLayer = v23;

    layer2 = [(NTKKuiperBackgroundView *)v17 layer];
    [layer2 addSublayer:v17->_dialLayer];

    v27 = sub_4668(v26, 0x3CuLL);
    minuteTickReplicatorLayer = v17->_minuteTickReplicatorLayer;
    v17->_minuteTickReplicatorLayer = v27;

    v29 = sub_459C();
    minuteTickLayer = v17->_minuteTickLayer;
    v17->_minuteTickLayer = v29;

    [(CAReplicatorLayer *)v17->_minuteTickReplicatorLayer addSublayer:v17->_minuteTickLayer];
    layer3 = [(NTKKuiperBackgroundView *)v17 layer];
    [layer3 addSublayer:v17->_minuteTickReplicatorLayer];

    v32 = 12;
    v34 = sub_4668(v33, 0xCuLL);
    hourTickReplicatorLayer = v17->_hourTickReplicatorLayer;
    v17->_hourTickReplicatorLayer = v34;

    v36 = sub_459C();
    hourTickLayer = v17->_hourTickLayer;
    v17->_hourTickLayer = v36;

    [(CAReplicatorLayer *)v17->_hourTickReplicatorLayer addSublayer:v17->_hourTickLayer];
    layer4 = [(NTKKuiperBackgroundView *)v17 layer];
    [layer4 addSublayer:v17->_hourTickReplicatorLayer];

    v39 = [NTKKuiperFontLoader alloc];
    sub_5C08(deviceCopy, &v46);
    v40 = [(NTKKuiperFontLoader *)v39 initWithFontSize:*(&v46 + 1)];
    fontLoader = v17->_fontLoader;
    v17->_fontLoader = v40;

    v42 = objc_opt_new();
    do
    {
      v43 = [[NTKKuiperNumeralLabel alloc] initWithDevice:deviceCopy];
      [(NSArray *)v42 addObject:v43];
      [(NTKKuiperBackgroundView *)v17 addSubview:v43];

      --v32;
    }

    while (v32);
    digitLabels = v17->_digitLabels;
    v17->_digitLabels = v42;

    v17->_typographicSize = CGSizeZero;
    [(NTKKuiperBackgroundView *)v17 _applyDialLayout];
  }

  return v17;
}

- (void)_applyDialLayout
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  sub_5C08(self->_device, &v21);
  [(CLKDevice *)self->_device screenBounds];
  [(CALayer *)self->_backgroundColorLayer setFrame:?];
  CLKSizeCenteredInRectForDevice();
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  self->_dialFrame = v26;
  v7 = CGPathCreateWithEllipseInRect(v26, 0);
  [(CAShapeLayer *)self->_dialLayer setPath:v7];
  CGPathRelease(v7);
  v8 = *&v21;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v9 = CGRectGetWidth(v27) * 0.5;
  [(CAReplicatorLayer *)self->_hourTickReplicatorLayer setFrame:x, y, width, height];
  [(CAReplicatorLayer *)self->_minuteTickReplicatorLayer setFrame:x, y, width, height];
  v10 = v22;
  [(CALayer *)self->_hourTickLayer setBounds:0.0, 0.0, v22];
  [(CALayer *)self->_hourTickLayer setPosition:v9, v8 + *(&v10 + 1) * 0.5];
  v11 = v23;
  [(CALayer *)self->_minuteTickLayer setBounds:0.0, 0.0, v23];
  [(CALayer *)self->_minuteTickLayer setPosition:v9, v8 + *(&v11 + 1) * 0.5];
  fontForMaximumOverscrollTypographicSize = [(NTKKuiperFontLoader *)self->_fontLoader fontForMaximumOverscrollTypographicSize];
  if (qword_16DB8 != -1)
  {
    sub_79A4();
  }

  v24 = NSFontAttributeName;
  v25 = fontForMaximumOverscrollTypographicSize;
  v13 = qword_16DB0;
  v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [v13 sizeWithAttributes:v14];

  [(NTKKuiperBackgroundView *)self bounds];
  CLKSizeCenteredInRectForDevice();
  digitLabels = self->_digitLabels;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_4A78;
  v20[3] = &unk_106A0;
  v20[4] = v16;
  v20[5] = v17;
  v20[6] = v18;
  v20[7] = v19;
  [(NSArray *)digitLabels enumerateObjectsUsingBlock:v20];

  [(NTKKuiperBackgroundView *)self _applyTransformToLabelsWithRubberbanding:0.0];
  [(NTKKuiperBackgroundView *)self applyFont];
}

- (void)_applyTransformToLabelsWithRubberbanding:(double)rubberbanding
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  sub_5C08(self->_device, &v8);
  dialRadius = self->_dialRadius;
  digitLabels = self->_digitLabels;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4B54;
  v7[3] = &unk_106C0;
  *&v7[4] = dialRadius - (*&v8 + *(&v9 + 1));
  *&v7[5] = rubberbanding;
  [(NSArray *)digitLabels enumerateObjectsUsingBlock:v7];
}

- (void)setOverrideBackgroundColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_overrideBackgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_overrideBackgroundColor, color);
    [(NTKKuiperBackgroundView *)self _applyColorPalette];
  }
}

- (void)setColorPalette:(id)palette
{
  objc_storeStrong(&self->_colorPalette, palette);

  [(NTKKuiperBackgroundView *)self _applyColorPalette];
}

- (void)_applyColorPalette
{
  v3 = self->_colorPalette;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v4 = self->_overrideBackgroundColor;
  v5 = v4;
  if (v4)
  {
    background = v4;
  }

  else
  {
    background = [(NTKKuiperColorPalette *)v3 background];
  }

  v7 = background;
  [(CALayer *)self->_backgroundColorLayer setBackgroundColor:[(UIColor *)background CGColor]];
  dialBackground = [(NTKKuiperColorPalette *)v3 dialBackground];
  -[CAShapeLayer setFillColor:](self->_dialLayer, "setFillColor:", [dialBackground CGColor]);
  hourTick = [(NTKKuiperColorPalette *)v3 hourTick];
  -[CALayer setBackgroundColor:](self->_hourTickLayer, "setBackgroundColor:", [hourTick CGColor]);
  minuteTick = [(NTKKuiperColorPalette *)v3 minuteTick];
  -[CALayer setBackgroundColor:](self->_minuteTickLayer, "setBackgroundColor:", [minuteTick CGColor]);
  +[CATransaction commit];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v7;
    v32 = v5;
    v11 = v3;
    fromPalette = [(NTKKuiperColorPalette *)v11 fromPalette];
    toPalette = [(NTKKuiperColorPalette *)v11 toPalette];
    v33 = fromPalette;
    pigmentEditOption = [fromPalette pigmentEditOption];
    isRainbowColor = [pigmentEditOption isRainbowColor];

    pigmentEditOption2 = [toPalette pigmentEditOption];
    isRainbowColor2 = [pigmentEditOption2 isRainbowColor];

    if ((isRainbowColor2 & 1) != 0 || isRainbowColor)
    {
      v28 = isRainbowColor;
      v23 = v33;
      if ([v23 isRainbowColor])
      {
        if ([v23 dial] > 1)
        {
          isTritium = 1;
        }

        else
        {
          isTritium = [v23 isTritium];
        }
      }

      else
      {
        isTritium = 0;
      }

      v25 = toPalette;
      v30 = dialBackground;
      if ([v25 isRainbowColor])
      {
        if ([v25 dial] > 1)
        {
          isTritium2 = 1;
        }

        else
        {
          isTritium2 = [v25 isTritium];
        }
      }

      else
      {
        isTritium2 = 0;
      }

      [(NTKKuiperBackgroundView *)self _applyFullscreenGradientLayerEnabled:(isRainbowColor2 & ~isTritium2 | v28 & ~isTritium) & 1 circularGradientLayerEnabled:(isTritium2 | isTritium) & 1];
      dialBackground = v30;
    }

    else
    {
      [(NTKKuiperBackgroundView *)self _applyFullscreenGradientLayerEnabled:0 circularGradientLayerEnabled:0];
    }

    v7 = v31;
    v5 = v32;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = dialBackground;
      v18 = v3;
      pigmentEditOption3 = [(NTKKuiperColorPalette *)v18 pigmentEditOption];
      isRainbowColor3 = [pigmentEditOption3 isRainbowColor];

      if (isRainbowColor3)
      {
        v21 = v18;
        if ([(NTKKuiperColorPalette *)v21 isRainbowColor])
        {
          dialBackground = v29;
          if ([(NTKKuiperColorPalette *)v21 dial]> 1)
          {
            isTritium3 = &dword_0 + 1;
          }

          else
          {
            isTritium3 = [(NTKKuiperColorPalette *)v21 isTritium];
          }
        }

        else
        {
          isTritium3 = 0;
          dialBackground = v29;
        }

        if (v5)
        {
          v34 = 0.0;
          v35 = 0;
          [(UIColor *)v5 getWhite:&v35 alpha:&v34];
          v27 = v34 < 1.0;
        }

        else
        {
          v27 = 1;
        }

        [(NTKKuiperBackgroundView *)self _applyFullscreenGradientLayerEnabled:(isTritium3 ^ 1) & v27 circularGradientLayerEnabled:isTritium3];
      }

      else
      {
        [(NTKKuiperBackgroundView *)self _applyFullscreenGradientLayerEnabled:0 circularGradientLayerEnabled:0];
        dialBackground = v29;
      }
    }
  }
}

- (void)_applyFullscreenGradientLayerEnabled:(BOOL)enabled circularGradientLayerEnabled:(BOOL)layerEnabled
{
  layerEnabledCopy = layerEnabled;
  enabledCopy = enabled;
  if (enabled)
  {
    [(NTKKuiperBackgroundView *)self _addMulticolorFullscreenGradientLayer];
  }

  else
  {
    [(NTKKuiperBackgroundView *)self _removeMulticolorFullscreenGradientLayer];
  }

  if (layerEnabledCopy)
  {
    [(NTKKuiperBackgroundView *)self _addMulticolorCircularGradientLayer];
  }

  else
  {
    [(NTKKuiperBackgroundView *)self _removeMulticolorCircularGradientLayer];
  }

  multicolorFullscreenGradientLayer = self->_multicolorFullscreenGradientLayer;
  if (multicolorFullscreenGradientLayer)
  {
    [(CALayer *)multicolorFullscreenGradientLayer setHidden:!enabledCopy];
  }

  multicolorCircularGradientLayer = self->_multicolorCircularGradientLayer;
  if (multicolorCircularGradientLayer)
  {

    [(CALayer *)multicolorCircularGradientLayer setHidden:!layerEnabledCopy];
  }
}

- (void)_addMulticolorCircularGradientLayer
{
  if (!self->_multicolorCircularGradientLayer)
  {
    v3 = objc_opt_new();
    multicolorCircularGradientLayer = self->_multicolorCircularGradientLayer;
    self->_multicolorCircularGradientLayer = v3;

    [(CLKDevice *)self->_device screenBounds];
    [(CALayer *)self->_multicolorCircularGradientLayer setFrame:?];
    v10 = NTKKuiperRainbowGradientImage();
    v5 = v10;
    cGImage = [v10 CGImage];
    v7 = sub_4624(cGImage);
    [(CALayer *)self->_multicolorCircularGradientLayer setActions:v7];

    [(CALayer *)self->_multicolorCircularGradientLayer setContents:cGImage];
    [(CALayer *)self->_multicolorCircularGradientLayer setContentsGravity:kCAGravityResizeAspectFill];
    v8 = objc_opt_new();
    [(CAShapeLayer *)self->_dialLayer frame];
    [v8 setFrame:?];
    [v8 setPath:{-[CAShapeLayer path](self->_dialLayer, "path")}];
    [(CALayer *)self->_multicolorCircularGradientLayer setMask:v8];
    layer = [(NTKKuiperBackgroundView *)self layer];
    [layer insertSublayer:self->_multicolorCircularGradientLayer below:self->_dialLayer];
  }
}

- (void)_addMulticolorFullscreenGradientLayer
{
  if (!self->_multicolorFullscreenGradientLayer)
  {
    v3 = objc_opt_new();
    multicolorFullscreenGradientLayer = self->_multicolorFullscreenGradientLayer;
    self->_multicolorFullscreenGradientLayer = v3;

    [(CLKDevice *)self->_device screenBounds];
    [(CALayer *)self->_multicolorFullscreenGradientLayer setFrame:?];
    v9 = NTKKuiperRainbowGradientImage();
    v5 = v9;
    cGImage = [v9 CGImage];
    v7 = sub_4624(cGImage);
    [(CALayer *)self->_multicolorFullscreenGradientLayer setActions:v7];

    [(CALayer *)self->_multicolorFullscreenGradientLayer setContents:cGImage];
    [(CALayer *)self->_multicolorFullscreenGradientLayer setContentsGravity:kCAGravityResizeAspectFill];
    layer = [(NTKKuiperBackgroundView *)self layer];
    [layer insertSublayer:self->_multicolorFullscreenGradientLayer below:self->_backgroundColorLayer];
  }
}

- (void)_removeMulticolorCircularGradientLayer
{
  multicolorCircularGradientLayer = self->_multicolorCircularGradientLayer;
  if (multicolorCircularGradientLayer)
  {
    [(CALayer *)multicolorCircularGradientLayer removeFromSuperlayer];
    v4 = self->_multicolorCircularGradientLayer;
    self->_multicolorCircularGradientLayer = 0;
  }
}

- (void)_removeMulticolorFullscreenGradientLayer
{
  multicolorFullscreenGradientLayer = self->_multicolorFullscreenGradientLayer;
  if (multicolorFullscreenGradientLayer)
  {
    [(CALayer *)multicolorFullscreenGradientLayer removeFromSuperlayer];
    v4 = self->_multicolorFullscreenGradientLayer;
    self->_multicolorFullscreenGradientLayer = 0;
  }
}

- (void)applyFont
{
  v3 = [(NSArray *)self->_digitLabels count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      [(NTKKuiperBackgroundView *)self _applyFontForDigitIndex:i];
    }
  }
}

- (void)_applyFontForDigitIndex:(unint64_t)index
{
  digitRotationAnimation = self->_digitRotationAnimation;
  if (digitRotationAnimation)
  {
    [(NTKKuiperFontRotationAnimation *)digitRotationAnimation rotationForDigitIndex:index fraction:self->_digitRotationFraction];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(NSArray *)self->_digitLabels count];
  if (index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v8;
  }

  v19 = [(NSArray *)self->_digitLabels objectAtIndex:(indexCopy - 1)];
  width = self->_typographicSize.width;
  height = self->_typographicSize.height;
  v12 = index - 9;
  v13 = [(NTKKuiperFontLoader *)self->_fontLoader foregroundFontWithTypographicSize:index - 9 < 0xFFFFFFFFFFFFFFFBLL tickRotation:width flipped:height, v7];
  [v19 setForegroundFont:v13];
  if (v7 >= 1.0)
  {
    if (qword_16DC8 != -1)
    {
      sub_79B8();
    }

    indexCopy = qword_16DC0;
  }

  else
  {
    indexCopy = [NSString stringWithFormat:@"%lu", indexCopy];
  }

  v15 = indexCopy;
  [v19 setText:indexCopy];
  if (v7 <= 0.0)
  {
    digit = [(NTKKuiperColorPalette *)self->_colorPalette digit];
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = [(NTKKuiperFontLoader *)self->_fontLoader backgroundFontWithTypographicSize:v12 < 0xFFFFFFFFFFFFFFFBLL tickRotation:width flipped:height, v7];
    v17 = [(NTKKuiperBackgroundView *)self _backgroundDigitColorForRotationFraction:v7];
    digit = [(NTKKuiperBackgroundView *)self _foregroundDigitColorForRotationFraction:v7];
  }

  [v19 setBackgroundFont:v16];
  [v19 setBackgroundTextColor:v17];
  [v19 setForegroundTextColor:digit];
  [v19 setNeedsDisplay];
}

- (id)_foregroundDigitColorForRotationFraction:(double)fraction
{
  digit = [(NTKKuiperColorPalette *)self->_colorPalette digit];
  dialBackground = [(NTKKuiperColorPalette *)self->_colorPalette dialBackground];
  v6 = NTKInterpolateBetweenColors();

  return v6;
}

- (void)typographicSizeProviderUpdateNumeralSizes:(id)sizes
{
  sizesCopy = sizes;
  [sizesCopy typographicSize];
  v6 = v5;
  v8 = v7;
  [sizesCopy rubberbanding];
  v10 = v9;

  [(NTKKuiperBackgroundView *)self _setTypographicSize:v6 rubberbanding:v8, v10];
}

- (void)_setTypographicSize:(CGSize)size rubberbanding:(double)rubberbanding
{
  if (self->_typographicSize.width != size.width || self->_typographicSize.height != size.height)
  {
    self->_typographicSize = size;
    [(NTKKuiperBackgroundView *)self applyFont];
  }

  [(NTKKuiperBackgroundView *)self _applyTransformToLabelsWithRubberbanding:rubberbanding];
}

- (CGRect)dialFrame
{
  x = self->_dialFrame.origin.x;
  y = self->_dialFrame.origin.y;
  width = self->_dialFrame.size.width;
  height = self->_dialFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end