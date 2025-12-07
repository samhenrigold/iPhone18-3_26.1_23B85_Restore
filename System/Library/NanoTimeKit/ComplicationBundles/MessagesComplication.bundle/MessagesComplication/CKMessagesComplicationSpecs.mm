@interface CKMessagesComplicationSpecs
- (BOOL)unreadCountShouldBeDrawnOnBubbleForFamily:(int64_t)family;
- (CGSize)canvasSizeCircular;
- (CGSize)canvasSizeCircularMedium;
- (CGSize)canvasSizeCircularSmall;
- (CGSize)canvasSizeCircularXL;
- (CGSize)canvasSizeCorner;
- (CGSize)canvasSizeCornerSmall;
- (CGSize)canvasSizeExtraLarge;
- (CGSize)canvasSizeForFamily:(int64_t)family;
- (CGSize)canvasSizeForFamily:(int64_t)family andTemplate:(id)template;
- (CGSize)canvasSizeModularSmall;
- (CGSize)canvasSizeUtilitarianLarge;
- (CGSize)canvasSizeUtilitarianSmall;
- (CGSize)canvasSizeUtilitarianSmallFlat;
- (CKMessagesComplicationSpecs)initWithDevice:(id)device;
- (double)imageFramePaddingForFamily:(int64_t)family;
- (double)verticalTextOffsetForFamily:(int64_t)family withTextBounds:(CGRect)bounds;
- (void)configureDeviceDependentSpecsForDevice:(id)device;
@end

@implementation CKMessagesComplicationSpecs

- (CKMessagesComplicationSpecs)initWithDevice:(id)device
{
  deviceCopy = device;
  v8.receiver = self;
  v8.super_class = CKMessagesComplicationSpecs;
  v5 = [(CKMessagesComplicationSpecs *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CKMessagesComplicationSpecs *)v5 configureDeviceDependentSpecsForDevice:deviceCopy];
  }

  return v6;
}

- (void)configureDeviceDependentSpecsForDevice:(id)device
{
  v4 = MEMORY[0x277CBBAF8];
  deviceCopy = device;
  v28 = [[v4 alloc] initWithDevice:deviceCopy identitySizeClass:2];

  [v28 scaledSize:0 withOverride:29.0 forSizeClass:{29.0, 26.0, 26.0}];
  self->_canvasSizeModularSmall.width = v6;
  self->_canvasSizeModularSmall.height = v7;
  [v28 scaledSize:{18.0, 18.0}];
  self->_canvasSizeUtilitarianSmall.width = v8;
  self->_canvasSizeUtilitarianSmall.height = v9;
  [v28 scaledSize:{12.0, 12.0}];
  self->_canvasSizeUtilitarianSmallFlat.width = v10;
  self->_canvasSizeUtilitarianSmallFlat.height = v11;
  [v28 scaledSize:{10.0, 10.0}];
  self->_canvasSizeUtilitarianLarge.width = v12;
  self->_canvasSizeUtilitarianLarge.height = v13;
  [v28 scaledSize:0 withOverride:18.0 forSizeClass:{18.0, 16.0, 16.0}];
  self->_canvasSizeCircularSmall.width = v14;
  self->_canvasSizeCircularSmall.height = v15;
  [v28 scaledSize:{42.0, 42.0}];
  self->_canvasSizeCircular.width = v16;
  self->_canvasSizeCircular.height = v17;
  [v28 scaledSize:{25.0, 25.0}];
  self->_canvasSizeCircularMedium.width = v18;
  self->_canvasSizeCircularMedium.height = v19;
  [v28 scaledSize:{120.0, 120.0}];
  self->_canvasSizeCircularXL.width = v20;
  self->_canvasSizeCircularXL.height = v21;
  [v28 scaledSize:{32.0, 32.0}];
  self->_canvasSizeCorner.width = v22;
  self->_canvasSizeCorner.height = v23;
  [v28 scaledSize:{20.0, 20.0}];
  self->_canvasSizeCornerSmall.width = v24;
  self->_canvasSizeCornerSmall.height = v25;
  [v28 scaledSize:{101.5, 101.5}];
  self->_canvasSizeExtraLarge.width = v26;
  self->_canvasSizeExtraLarge.height = v27;
}

- (double)verticalTextOffsetForFamily:(int64_t)family withTextBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  deviceCategory = [currentDevice deviceCategory];

  if (deviceCategory < 2)
  {
    result = 0.0;
    if (*MEMORY[0x277CBB668] != family)
    {
      result = -1.0;
      if ((family - 2) <= 0xA)
      {
        return dbl_23BD21CC0[family - 2];
      }
    }
  }

  else
  {
    result = 0.0;
    if (family <= 0xC && ((1 << family) & 0x1600) != 0)
    {
      v12.origin.x = x;
      v12.origin.y = y;
      v12.size.width = width;
      v12.size.height = height;
      return ceil(CGRectGetHeight(v12) * 0.1);
    }
  }

  return result;
}

- (double)imageFramePaddingForFamily:(int64_t)family
{
  if (*MEMORY[0x277CBB668] == family)
  {
    return 0.1;
  }

  result = 0.0;
  if ((family - 8) <= 4)
  {
    return dbl_23BD21D18[family - 8];
  }

  return result;
}

- (BOOL)unreadCountShouldBeDrawnOnBubbleForFamily:(int64_t)family
{
  if (*MEMORY[0x277CBB668] == family)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = 0x16D5u >> family;
    if (family > 0xC)
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

- (CGSize)canvasSizeForFamily:(int64_t)family
{
  [(CKMessagesComplicationSpecs *)self canvasSizeForFamily:family andTemplate:0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)canvasSizeForFamily:(int64_t)family andTemplate:(id)template
{
  templateCopy = template;
  if (*MEMORY[0x277CBB668] != family)
  {
    if (family > 6)
    {
      if (family <= 8)
      {
        if (family == 7)
        {
          [(CKMessagesComplicationSpecs *)self canvasSizeExtraLarge];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(CKMessagesComplicationSpecs *)self canvasSizeCornerSmall];
          }

          else
          {
            [(CKMessagesComplicationSpecs *)self canvasSizeCorner];
          }
        }

        goto LABEL_3;
      }

      if ((family - 9) < 2)
      {
        [(CKMessagesComplicationSpecs *)self canvasSizeCircular];
        goto LABEL_3;
      }

      if (family == 12)
      {
        [(CKMessagesComplicationSpecs *)self canvasSizeCircularXL];
        goto LABEL_3;
      }
    }

    else if (family <= 2)
    {
      if (!family)
      {
        [(CKMessagesComplicationSpecs *)self canvasSizeModularSmall];
        goto LABEL_3;
      }

      if (family == 2)
      {
        [(CKMessagesComplicationSpecs *)self canvasSizeUtilitarianSmall];
        goto LABEL_3;
      }
    }

    else
    {
      switch(family)
      {
        case 3:
          [(CKMessagesComplicationSpecs *)self canvasSizeUtilitarianLarge];
          goto LABEL_3;
        case 4:
          [(CKMessagesComplicationSpecs *)self canvasSizeCircularSmall];
          goto LABEL_3;
        case 6:
          [(CKMessagesComplicationSpecs *)self canvasSizeUtilitarianSmallFlat];
          goto LABEL_3;
      }
    }

    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_4;
  }

  [(CKMessagesComplicationSpecs *)self canvasSizeCircularMedium];
LABEL_3:
  v9 = v7;
  v10 = v8;
LABEL_4:

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)canvasSizeModularSmall
{
  width = self->_canvasSizeModularSmall.width;
  height = self->_canvasSizeModularSmall.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeUtilitarianSmall
{
  width = self->_canvasSizeUtilitarianSmall.width;
  height = self->_canvasSizeUtilitarianSmall.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeUtilitarianSmallFlat
{
  width = self->_canvasSizeUtilitarianSmallFlat.width;
  height = self->_canvasSizeUtilitarianSmallFlat.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeUtilitarianLarge
{
  width = self->_canvasSizeUtilitarianLarge.width;
  height = self->_canvasSizeUtilitarianLarge.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeCircular
{
  width = self->_canvasSizeCircular.width;
  height = self->_canvasSizeCircular.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeCircularSmall
{
  width = self->_canvasSizeCircularSmall.width;
  height = self->_canvasSizeCircularSmall.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeCircularMedium
{
  width = self->_canvasSizeCircularMedium.width;
  height = self->_canvasSizeCircularMedium.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeCircularXL
{
  width = self->_canvasSizeCircularXL.width;
  height = self->_canvasSizeCircularXL.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeCorner
{
  width = self->_canvasSizeCorner.width;
  height = self->_canvasSizeCorner.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeCornerSmall
{
  width = self->_canvasSizeCornerSmall.width;
  height = self->_canvasSizeCornerSmall.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeExtraLarge
{
  width = self->_canvasSizeExtraLarge.width;
  height = self->_canvasSizeExtraLarge.height;
  result.height = height;
  result.width = width;
  return result;
}

@end