@interface PLKLegibilityEnvironmentVariantContext
- (BOOL)isEqual:(id)equal;
- (PLKLegibilityEnvironmentVariantContext)init;
- (PLKLegibilityEnvironmentVariantContext)initWithStyle:(unint64_t)style;
- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)variant image:(id)image;
- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)variant style:(unint64_t)style averageColor:(id)color contrast:(double)contrast saturation:(double)saturation legibilitySettings:(id)settings;
- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)variant style:(unint64_t)style averageColor:(id)color contrast:(double)contrast saturation:(double)saturation primaryColor:(id)primaryColor secondaryColor:(id)secondaryColor backgroundColor:(id)self0;
- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)variant style:(unint64_t)style colorBoxes:(id)boxes legibilitySettings:(id)settings;
- (double)contrastInRect:(CGRect)rect;
- (double)luma;
- (double)lumaInRect:(CGRect)rect;
- (double)saturationInRect:(CGRect)rect;
- (id)averageColorInRect:(CGRect)rect;
- (unint64_t)hash;
- (void)_generateLegibilityDescriptor;
- (void)_updateWithColorBoxes:(id)boxes;
@end

@implementation PLKLegibilityEnvironmentVariantContext

- (void)_generateLegibilityDescriptor
{
  if (!self->_legibilityDescriptor)
  {
    v3 = [PLKLegibilityDescriptor legibilityDescriptorForEnvironmentContext:?];
    legibilityDescriptor = self->_legibilityDescriptor;
    self->_legibilityDescriptor = v3;
  }

  if (!self->_legibilitySettings)
  {
    if (self->_primaryColor)
    {
      v5 = [(PLKLegibilityDescriptor *)self->_legibilityDescriptor effectiveUILegibilitySettings:?];
    }

    else
    {
      if (self->_averageColor)
      {
        v6 = objc_alloc_init(MEMORY[0x277D760B0]);
        [_UILegibilitySettings accumulateChangesToContentColor:v6 contrast:"accumulateChangesToContentColor:contrast:"];
        settings = [(_UILegibilitySettings *)v6 settings];
        legibilitySettings = self->_legibilitySettings;
        self->_legibilitySettings = settings;

LABEL_9:
        if (!self->_primaryColor)
        {
          primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
          primaryColor = self->_primaryColor;
          self->_primaryColor = primaryColor;

          secondaryColor = [(_UILegibilitySettings *)self->_legibilitySettings secondaryColor];
          secondaryColor = self->_secondaryColor;
          self->_secondaryColor = secondaryColor;

          self->_backgroundColor = [(_UILegibilitySettings *)self->_legibilitySettings shadowColor];

          MEMORY[0x2821F96F8]();
        }

        return;
      }

      v13 = MEMORY[0x277D760A8];
      _UILegibilityStyleForPLKLegibilityStyle(self->_style);
      v5 = [v13 sharedInstanceForStyle:?];
    }

    v6 = self->_legibilitySettings;
    self->_legibilitySettings = v5;
    goto LABEL_9;
  }
}

- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)variant style:(unint64_t)style averageColor:(id)color contrast:(double)contrast saturation:(double)saturation primaryColor:(id)primaryColor secondaryColor:(id)secondaryColor backgroundColor:(id)self0
{
  variantCopy = variant;
  colorCopy = color;
  primaryColorCopy = primaryColor;
  secondaryColorCopy = secondaryColor;
  backgroundColorCopy = backgroundColor;
  v37.receiver = self;
  v37.super_class = PLKLegibilityEnvironmentVariantContext;
  v24 = [(PLKLegibilityEnvironmentVariantContext *)&v37 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_variant, variant);
    v25->_style = style;
    if (colorCopy)
    {
      magentaColor = colorCopy;
    }

    else
    {
      magentaColor = [MEMORY[0x277D75348] magentaColor];
    }

    averageColor = v25->_averageColor;
    v25->_averageColor = magentaColor;

    v28 = [PLKColorBoxes colorBoxesForAverageColor:"colorBoxesForAverageColor:contrast:" contrast:?];
    colorBoxes = v25->_colorBoxes;
    v25->_colorBoxes = v28;

    v25->_contrast = contrast;
    v25->_saturation = saturation;
    if (primaryColorCopy)
    {
      magentaColor2 = primaryColorCopy;
    }

    else
    {
      magentaColor2 = [MEMORY[0x277D75348] magentaColor];
    }

    primaryColor = v25->_primaryColor;
    v25->_primaryColor = magentaColor2;

    if (secondaryColorCopy)
    {
      magentaColor3 = secondaryColorCopy;
    }

    else
    {
      magentaColor3 = [MEMORY[0x277D75348] magentaColor];
    }

    secondaryColor = v25->_secondaryColor;
    v25->_secondaryColor = magentaColor3;

    if (backgroundColorCopy)
    {
      magentaColor4 = backgroundColorCopy;
    }

    else
    {
      magentaColor4 = [MEMORY[0x277D75348] magentaColor];
    }

    backgroundColor = v25->_backgroundColor;
    v25->_backgroundColor = magentaColor4;

    [(PLKLegibilityEnvironmentVariantContext *)v25 _generateLegibilityDescriptor];
  }

  return v25;
}

- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)variant style:(unint64_t)style averageColor:(id)color contrast:(double)contrast saturation:(double)saturation legibilitySettings:(id)settings
{
  variantCopy = variant;
  colorCopy = color;
  settingsCopy = settings;
  v27.receiver = self;
  v27.super_class = PLKLegibilityEnvironmentVariantContext;
  v18 = [(PLKLegibilityEnvironmentVariantContext *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_variant, variant);
    v19->_style = style;
    objc_storeStrong(&v19->_averageColor, color);
    v19->_contrast = contrast;
    v19->_saturation = saturation;
    objc_storeStrong(&v19->_legibilitySettings, settings);
    if (settingsCopy)
    {
      primaryColor = [settingsCopy primaryColor];
      primaryColor = v19->_primaryColor;
      v19->_primaryColor = primaryColor;

      secondaryColor = [settingsCopy secondaryColor];
      secondaryColor = v19->_secondaryColor;
      v19->_secondaryColor = secondaryColor;

      shadowColor = [settingsCopy shadowColor];
      backgroundColor = v19->_backgroundColor;
      v19->_backgroundColor = shadowColor;
    }

    [(PLKLegibilityEnvironmentVariantContext *)v19 _generateLegibilityDescriptor];
  }

  return v19;
}

- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)variant style:(unint64_t)style colorBoxes:(id)boxes legibilitySettings:(id)settings
{
  variantCopy = variant;
  boxesCopy = boxes;
  settingsCopy = settings;
  v30.receiver = self;
  v30.super_class = PLKLegibilityEnvironmentVariantContext;
  v14 = [(PLKLegibilityEnvironmentVariantContext *)&v30 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_variant, variant);
    v15->_style = style;
    v16 = [boxesCopy copy];
    colorBoxes = v15->_colorBoxes;
    v15->_colorBoxes = v16;

    averageColor = [boxesCopy averageColor];
    averageColor = v15->_averageColor;
    v15->_averageColor = averageColor;

    [boxesCopy contrast];
    v15->_contrast = v20;
    [boxesCopy saturation];
    v15->_saturation = v21;
    [boxesCopy luma];
    v15->_luma = v22;
    objc_storeStrong(&v15->_legibilitySettings, settings);
    if (settingsCopy)
    {
      primaryColor = [settingsCopy primaryColor];
      primaryColor = v15->_primaryColor;
      v15->_primaryColor = primaryColor;

      secondaryColor = [settingsCopy secondaryColor];
      secondaryColor = v15->_secondaryColor;
      v15->_secondaryColor = secondaryColor;

      shadowColor = [settingsCopy shadowColor];
      backgroundColor = v15->_backgroundColor;
      v15->_backgroundColor = shadowColor;
    }

    [(PLKLegibilityEnvironmentVariantContext *)v15 _generateLegibilityDescriptor];
  }

  return v15;
}

- (PLKLegibilityEnvironmentVariantContext)initWithVariant:(id)variant image:(id)image
{
  variantCopy = variant;
  imageCopy = image;
  v13.receiver = self;
  v13.super_class = PLKLegibilityEnvironmentVariantContext;
  v9 = [(PLKLegibilityEnvironmentVariantContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_variant, variant);
    v11 = [PLKColorBoxes colorBoxesForImage:?];
    [(PLKLegibilityEnvironmentVariantContext *)v10 _updateWithColorBoxes:?];

    [(PLKLegibilityEnvironmentVariantContext *)v10 _generateLegibilityDescriptor];
    v10->_style = PLKLegibilityStyleForUILegibilityStyle([(_UILegibilitySettings *)v10->_legibilitySettings style]);
  }

  return v10;
}

- (void)_updateWithColorBoxes:(id)boxes
{
  objc_storeStrong(&self->_colorBoxes, boxes);
  boxesCopy = boxes;
  averageColor = [boxesCopy averageColor];
  averageColor = self->_averageColor;
  self->_averageColor = averageColor;

  [boxesCopy contrast];
  self->_contrast = v8;
  [boxesCopy saturation];
  self->_saturation = v9;
  [boxesCopy luma];
  v11 = v10;

  self->_luma = v11;
}

- (PLKLegibilityEnvironmentVariantContext)initWithStyle:(unint64_t)style
{
  v4 = [MEMORY[0x277D760A8] sharedInstanceForStyle:?];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  primaryColor = [v4 primaryColor];
  secondaryColor = [v4 secondaryColor];
  shadowColor = [v4 shadowColor];
  v9 = [PLKLegibilityEnvironmentVariantContext initWithVariant:"initWithVariant:style:averageColor:contrast:saturation:primaryColor:secondaryColor:backgroundColor:" style:? averageColor:? contrast:? saturation:? primaryColor:? secondaryColor:? backgroundColor:?];

  return v9;
}

- (PLKLegibilityEnvironmentVariantContext)init
{
  [(PLKLegibilityEnvironmentVariantContext *)self doesNotRecognizeSelector:?];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      variant = [(PLKLegibilityEnvironmentVariantContext *)v5 variant];
      variant2 = [(PLKLegibilityEnvironmentVariantContext *)self variant];
      v8 = BSEqualObjects();

      if (v8 && (v9 = MEMORY[0x277CCABB0], -[PLKLegibilityEnvironmentVariantContext style](v5, "style"), [v9 numberWithUnsignedInteger:?], v10 = objc_claimAutoreleasedReturnValue(), v11 = MEMORY[0x277CCABB0], -[PLKLegibilityEnvironmentVariantContext style](self, "style"), objc_msgSend(v11, "numberWithUnsignedInteger:"), v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualObjects(), v12, v10, v13) && (-[PLKLegibilityEnvironmentVariantContext contrast](v5, "contrast"), -[PLKLegibilityEnvironmentVariantContext contrast](self, "contrast"), BSFloatEqualToFloat()) && (-[PLKLegibilityEnvironmentVariantContext saturation](v5, "saturation"), -[PLKLegibilityEnvironmentVariantContext saturation](self, "saturation"), BSFloatEqualToFloat()) && (-[PLKLegibilityEnvironmentVariantContext luma](v5, "luma"), -[PLKLegibilityEnvironmentVariantContext luma](self, "luma"), BSFloatEqualToFloat()) && (-[PLKLegibilityEnvironmentVariantContext averageColor](v5, "averageColor"), v14 = objc_claimAutoreleasedReturnValue(), -[PLKLegibilityEnvironmentVariantContext averageColor](self, "averageColor"), v15 = objc_claimAutoreleasedReturnValue(), v16 = BSEqualObjects(), v15, v14, v16) && (-[PLKLegibilityEnvironmentVariantContext primaryColor](v5, "primaryColor"), v17 = objc_claimAutoreleasedReturnValue(), -[PLKLegibilityEnvironmentVariantContext primaryColor](self, "primaryColor"), v18 = objc_claimAutoreleasedReturnValue(), v19 = BSEqualObjects(), v18, v17, v19) && (-[PLKLegibilityEnvironmentVariantContext secondaryColor](v5, "secondaryColor"), v20 = objc_claimAutoreleasedReturnValue(), -[PLKLegibilityEnvironmentVariantContext secondaryColor](self, "secondaryColor"), v21 = objc_claimAutoreleasedReturnValue(), v22 = BSEqualObjects(), v21, v20, v22))
      {
        backgroundColor = [(PLKLegibilityEnvironmentVariantContext *)v5 backgroundColor];
        backgroundColor2 = [(PLKLegibilityEnvironmentVariantContext *)self backgroundColor];
        v25 = BSEqualObjects();
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  variant = [(PLKLegibilityEnvironmentVariantContext *)self variant];
  v5 = [builder appendObject:?];

  v6 = MEMORY[0x277CCABB0];
  [(PLKLegibilityEnvironmentVariantContext *)self style];
  v7 = [v6 numberWithUnsignedInteger:?];
  v8 = [builder appendObject:?];

  v9 = MEMORY[0x277CCABB0];
  [(PLKLegibilityEnvironmentVariantContext *)self contrast];
  v10 = [v9 numberWithDouble:?];
  v11 = [builder appendObject:?];

  v12 = MEMORY[0x277CCABB0];
  [(PLKLegibilityEnvironmentVariantContext *)self saturation];
  v13 = [v12 numberWithDouble:?];
  v14 = [builder appendObject:?];

  v15 = MEMORY[0x277CCABB0];
  [(PLKLegibilityEnvironmentVariantContext *)self luma];
  v16 = [v15 numberWithDouble:?];
  v17 = [builder appendObject:?];

  averageColor = [(PLKLegibilityEnvironmentVariantContext *)self averageColor];
  v19 = [builder appendObject:?];

  primaryColor = [(PLKLegibilityEnvironmentVariantContext *)self primaryColor];
  v21 = [builder appendObject:?];

  secondaryColor = [(PLKLegibilityEnvironmentVariantContext *)self secondaryColor];
  v23 = [builder appendObject:?];

  backgroundColor = [(PLKLegibilityEnvironmentVariantContext *)self backgroundColor];
  v25 = [builder appendObject:?];

  v26 = [builder hash];
  return v26;
}

- (double)luma
{
  averageColor = [(PLKLegibilityEnvironmentVariantContext *)self averageColor];
  [averageColor _luminance];
  v4 = v3;

  return v4;
}

- (double)contrastInRect:(CGRect)rect
{
  colorBoxes = self->_colorBoxes;
  if (!colorBoxes)
  {
    return -1.0;
  }

  [(PLKColorBoxes *)colorBoxes contrastInRect:?];
  return result;
}

- (double)saturationInRect:(CGRect)rect
{
  colorBoxes = self->_colorBoxes;
  if (!colorBoxes)
  {
    return -1.0;
  }

  [(PLKColorBoxes *)colorBoxes saturationInRect:?];
  return result;
}

- (id)averageColorInRect:(CGRect)rect
{
  colorBoxes = self->_colorBoxes;
  if (colorBoxes)
  {
    [(PLKColorBoxes *)colorBoxes averageColorInRect:?];
  }

  else
  {
    [(PLKLegibilityEnvironmentVariantContext *)self averageColor];
  }
  v5 = ;

  return v5;
}

- (double)lumaInRect:(CGRect)rect
{
  colorBoxes = self->_colorBoxes;
  if (!colorBoxes)
  {
    return -1.0;
  }

  [(PLKColorBoxes *)colorBoxes lumaInRect:?];
  return result;
}

@end