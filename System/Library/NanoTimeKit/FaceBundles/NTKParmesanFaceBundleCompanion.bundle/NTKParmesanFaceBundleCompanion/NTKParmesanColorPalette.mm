@interface NTKParmesanColorPalette
+ (id)colorRampFiltersForMonochromeColorMatrix:(id)matrix fromPalette:(id)palette toPalette:(id)toPalette transitionFraction:(double)fraction;
- (BOOL)isCompositePalette;
- (BOOL)isGlassOption;
- (BOOL)isPlainOption;
- (BOOL)isTritoneOption;
- (BOOL)isVibrantOption;
- (NTKParmesanColorPalette)init;
- (double)frostAmount;
- (id)_generateGlassSwatchImageWithBackgroundColor:(id)color size:(CGSize)size;
- (id)_monocolorRampColor;
- (id)colorRampImage;
- (id)colorRampsIndex;
- (id)colorRampsIndexByColorName;
- (id)monocolorRampImage;
- (id)swatchImageForSize:(CGSize)size;
- (id)swatchPrimaryColor;
- (id)tritoneColors;
@end

@implementation NTKParmesanColorPalette

- (NTKParmesanColorPalette)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = NTKParmesanColorPalette;
  return [(NTKFaceColorPalette *)&v5 initWithFaceClass:v3];
}

- (BOOL)isPlainOption
{
  v3 = objc_msgSend_configuration(self, a2, v2);
  v6 = objc_msgSend_colorOption(v3, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"plain");

  return isEqualToString;
}

- (BOOL)isGlassOption
{
  isGlassEnabled = objc_msgSend_isGlassEnabled(_TtC30NTKParmesanFaceBundleCompanion23DigitalTimeViewFeatures, a2, v2);
  if (isGlassEnabled)
  {
    v7 = objc_msgSend_configuration(self, v5, v6);
    v10 = objc_msgSend_colorOption(v7, v8, v9);
    v12 = objc_msgSend_containsString_(v10, v11, @"glass");

    LOBYTE(isGlassEnabled) = v12;
  }

  return isGlassEnabled;
}

- (double)frostAmount
{
  isGlassEnabled = objc_msgSend_isGlassEnabled(_TtC30NTKParmesanFaceBundleCompanion23DigitalTimeViewFeatures, a2, v2);
  result = 1.0;
  if (isGlassEnabled)
  {
    v8 = objc_msgSend_configuration(self, v5, v6, 1.0);
    v11 = objc_msgSend_colorOption(v8, v9, v10);
    isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"glass_05");

    result = 1.0;
    if (isEqualToString)
    {
      return 0.5;
    }
  }

  return result;
}

- (BOOL)isVibrantOption
{
  v3 = objc_msgSend_configuration(self, a2, v2);
  v6 = objc_msgSend_colorOption(v3, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"vibrant");

  return isEqualToString;
}

- (BOOL)isTritoneOption
{
  v3 = objc_msgSend_configuration(self, a2, v2);
  v6 = objc_msgSend_colorOption(v3, v4, v5);
  v8 = objc_msgSend_containsString_(v6, v7, @"tritone");

  return v8;
}

- (id)tritoneColors
{
  v16[3] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isTritoneOption(self, a2, v2))
  {
    v6 = objc_msgSend_toColor1(self, v4, v5);
    v9 = objc_msgSend_toColor2(self, v7, v8, v6);
    v16[1] = v9;
    v12 = objc_msgSend_toColor3(self, v10, v11);
    v16[2] = v12;
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v16, 3);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)swatchImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (objc_msgSend_isPlainOption(self, a2, v3))
  {
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      objc_msgSend_sizeForSwatchStyle_(MEMORY[0x277D2BFE8], v7, 0);
      width = v10;
      height = v11;
    }

    v12 = objc_msgSend_blackColor(MEMORY[0x277D75348], v7, v8);
    v61.width = width;
    v61.height = height;
    UIGraphicsBeginImageContextWithOptions(v61, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    objc_msgSend_set(v12, v14, v15);
    v65.origin.x = 0.0;
    v65.origin.y = 0.0;
    v65.size.width = width;
    v65.size.height = height;
    CGContextFillEllipseInRect(CurrentContext, v65);
    v16 = UIGraphicsGetCurrentContext();
    Image = CGBitmapContextCreateImage(v16);
    UIGraphicsEndImageContext();
    v62.width = width;
    v62.height = height;
    UIGraphicsBeginImageContextWithOptions(v62, 0, 0.0);
    v18 = UIGraphicsGetCurrentContext();
    v66.origin.x = 0.0;
    v66.origin.y = 0.0;
    v66.size.width = width;
    v66.size.height = height;
    CGContextClipToMask(v18, v66, Image);
    objc_msgSend_set(v12, v19, v20);
    transform.b = 0.0;
    transform.c = 0.0;
    transform.a = 1.0;
    *&transform.d = xmmword_23C001120;
    transform.ty = height;
    CGContextConcatCTM(v18, &transform);
    v21 = NTKImageNamed();
    v22 = v21;
    v25 = objc_msgSend_CGImage(v22, v23, v24);
    v67.origin.x = 0.0;
    v67.origin.y = 0.0;
    v67.size.width = width;
    v67.size.height = height;
    CGContextDrawImage(v18, v67, v25);
    height = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    CGImageRelease(Image);

    goto LABEL_9;
  }

  if (objc_msgSend_isGlassOption(self, v7, v8))
  {
    v29 = objc_msgSend_primaryColor(self, v27, v28);
    height = objc_msgSend__generateGlassSwatchImageWithBackgroundColor_size_(self, v30, v29, width, height);

    goto LABEL_12;
  }

  if (objc_msgSend_isVibrantOption(self, v27, v28))
  {
    v12 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v32, v33, 0.874509804, 0.874509804, 0.874509804, 1.0);
    v36 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v34, v35, 0.435294118, 0.435294118, 0.435294118, 1.0);
    height = NTKSwatchTwoColorGradientImage();

LABEL_9:
    goto LABEL_12;
  }

  if (objc_msgSend_isTritoneOption(self, v32, v33))
  {
    v12 = objc_msgSend_tritoneColors(self, v37, v38);
    height = NTKSwatchColorSectorsImage();
    goto LABEL_9;
  }

  if (objc_msgSend_isCompositePalette(self, v37, v38))
  {
    v12 = objc_msgSend_colorRampImage(self, v39, v40);
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      objc_msgSend_sizeForSwatchStyle_(MEMORY[0x277D2BFE8], v41, 0);
      width = v43;
      height = v44;
    }

    v63.width = width;
    v63.height = height;
    UIGraphicsBeginImageContextWithOptions(v63, 0, 0.0);
    v45 = UIGraphicsGetCurrentContext();
    v48 = objc_msgSend_blackColor(MEMORY[0x277D75348], v46, v47);
    objc_msgSend_set(v48, v49, v50);

    v68.origin.x = 0.0;
    v68.origin.y = 0.0;
    v68.size.width = width;
    v68.size.height = height;
    CGContextFillEllipseInRect(v45, v68);
    v51 = UIGraphicsGetCurrentContext();
    v52 = CGBitmapContextCreateImage(v51);
    UIGraphicsEndImageContext();
    v64.width = width;
    v64.height = height;
    UIGraphicsBeginImageContextWithOptions(v64, 0, 0.0);
    v53 = UIGraphicsGetCurrentContext();
    v69.origin.x = 0.0;
    v69.origin.y = 0.0;
    v69.size.width = width;
    v69.size.height = height;
    CGContextClipToMask(v53, v69, v52);
    CGContextTranslateCTM(v53, width * 0.5, height * 0.5);
    CGContextRotateCTM(v53, -2.35619449);
    CGContextTranslateCTM(v53, width * -0.5, height * -0.5);
    v54 = v12;
    v57 = objc_msgSend_CGImage(v54, v55, v56);
    v70.origin.x = 0.0;
    v70.origin.y = 0.0;
    v70.size.width = width;
    v70.size.height = height;
    CGContextDrawImage(v53, v70, v57);
    height = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    CGImageRelease(v52);
    goto LABEL_9;
  }

  v58.receiver = self;
  v58.super_class = NTKParmesanColorPalette;
  height = [(NTKFaceColorPalette *)&v58 swatchImageForSize:width, height];
LABEL_12:

  return height;
}

- (BOOL)isCompositePalette
{
  v4 = MEMORY[0x277D2C0B0];
  v5 = objc_msgSend_pigmentEditOption(self, a2, v2);
  v8 = objc_msgSend_identifier(v5, v6, v7);
  v10 = objc_msgSend_multitoneColorNames_(v4, v9, v8);

  v15.receiver = self;
  v15.super_class = NTKParmesanColorPalette;
  v13 = [(NTKFaceColorPalette *)&v15 isCompositePalette]|| objc_msgSend_count(v10, v11, v12) > 1;

  return v13;
}

- (id)colorRampsIndex
{
  v4 = objc_msgSend_pigmentEditOption(self, a2, v2);
  v7 = objc_msgSend_identifier(v4, v5, v6);

  if (objc_msgSend_duotone(self, v8, v9) && (objc_msgSend_isCompositePalette(self, v10, v11) & 1) == 0)
  {
    v12 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v10, v7, @"duotone");

    v7 = v12;
  }

  v13 = objc_msgSend_colorRampsIndexByColorName(self, v10, v11);
  v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v7);

  if (!v15)
  {
    v18 = objc_msgSend_colorRampsIndexByColorName(self, v16, v17);
    v21 = objc_msgSend_configuration(self, v19, v20);
    v24 = objc_msgSend_colorOption(v21, v22, v23);
    v15 = objc_msgSend_objectForKeyedSubscript_(v18, v25, v24);
  }

  return v15;
}

- (id)colorRampImage
{
  if (objc_msgSend_isPlainOption(self, a2, v2) & 1) != 0 || (objc_msgSend_isGlassOption(self, v4, v5) & 1) != 0 || (objc_msgSend_isVibrantOption(self, v6, v7))
  {
    v10 = 0;
  }

  else
  {
    v12 = objc_msgSend_imageAsset(self, v8, v9);
    v15 = objc_msgSend_colorRampsIndex(self, v13, v14);
    v18 = v15;
    if (v15)
    {
      objc_msgSend_intValue(v15, v16, v17);
    }

    else
    {
      objc_msgSend_size(v12, v16, v17);
      v23 = v22;
      objc_msgSend_scale(v12, v24, v25);
      v21 = v23 * v26 + -1.0;
    }

    objc_msgSend_size(v12, v19, v20, v21);
    v10 = NTKCropImage();
  }

  return v10;
}

- (id)monocolorRampImage
{
  if (objc_msgSend_isPlainOption(self, a2, v2) & 1) != 0 || (objc_msgSend_isGlassOption(self, v4, v5) & 1) != 0 || (objc_msgSend_isVibrantOption(self, v6, v7))
  {
    v10 = 0;
  }

  else
  {
    v12 = objc_msgSend__monocolorRampColor(self, v8, v9);
    v16.width = 1.0;
    v16.height = 1.0;
    UIGraphicsBeginImageContextWithOptions(v16, 1, 1.0);
    objc_msgSend_setFill(v12, v13, v14);
    v17.origin.x = 0.0;
    v17.origin.y = 0.0;
    v17.size.width = 1.0;
    v17.size.height = 1.0;
    UIRectFill(v17);
    v10 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v10;
}

- (id)_monocolorRampColor
{
  if (objc_msgSend_isCompositePalette(self, a2, v2))
  {
    v6 = objc_msgSend_paletteAtIndex_(self, v4, 0);
    v9 = objc_msgSend_primaryColor(v6, v7, v8);
  }

  else
  {
    v9 = objc_msgSend_primaryColor(self, v4, v5);
  }

  return v9;
}

- (id)swatchPrimaryColor
{
  if (objc_msgSend_isCompositePalette(self, a2, v2))
  {
    swatchPrimaryColor = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NTKParmesanColorPalette;
    swatchPrimaryColor = [(NTKFaceColorPalette *)&v6 swatchPrimaryColor];
  }

  return swatchPrimaryColor;
}

- (id)colorRampsIndexByColorName
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF2C1E0;
  block[3] = &unk_278BA73C0;
  block[4] = v5;
  if (qword_27E1E3108 != -1)
  {
    dispatch_once(&qword_27E1E3108, block);
  }

  v2 = qword_27E1E3110;
  _Block_object_dispose(v5, 8);

  return v2;
}

- (id)_generateGlassSwatchImageWithBackgroundColor:(id)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = MEMORY[0x277CCA8D8];
  colorCopy = color;
  v8 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v6, v9, v8);
  v12 = NTKImageNamedFromBundle();
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    objc_msgSend_sizeForSwatchStyle_(MEMORY[0x277D2BFE8], v11, 0);
    width = v14;
    height = v15;
  }

  v34.width = width;
  v34.height = height;
  UIGraphicsBeginImageContextWithOptions(v34, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v19 = objc_msgSend_blackColor(MEMORY[0x277D75348], v17, v18);
  objc_msgSend_set(v19, v20, v21);

  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = width;
  v36.size.height = height;
  CGContextFillEllipseInRect(CurrentContext, v36);
  v22 = UIGraphicsGetCurrentContext();
  Image = CGBitmapContextCreateImage(v22);
  UIGraphicsEndImageContext();
  v35.width = width;
  v35.height = height;
  UIGraphicsBeginImageContextWithOptions(v35, 0, 0.0);
  v24 = UIGraphicsGetCurrentContext();
  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.width = width;
  v37.size.height = height;
  CGContextClipToMask(v24, v37, Image);
  objc_msgSend_setFill(colorCopy, v25, v26);

  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = width;
  v38.size.height = height;
  CGContextFillRect(v24, v38);
  v27 = v12;
  v30 = objc_msgSend_CGImage(v27, v28, v29);
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  v39.size.width = width;
  v39.size.height = height;
  CGContextDrawImage(v24, v39, v30);
  v31 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  CGImageRelease(Image);

  return v31;
}

+ (id)colorRampFiltersForMonochromeColorMatrix:(id)matrix fromPalette:(id)palette toPalette:(id)toPalette transitionFraction:(double)fraction
{
  v49[2] = *MEMORY[0x277D85DE8];
  matrixCopy = matrix;
  paletteCopy = palette;
  toPaletteCopy = toPalette;
  v12 = matrixCopy;
  v13 = NTKIsDefaultMonochromeColorMatrix();
  if (objc_msgSend_isPlainOption(paletteCopy, v14, v15))
  {
    v18 = NTKInterpolateColorMatrixToIdentity();

    v21 = toPaletteCopy;
    if (v13)
    {
LABEL_3:
      v22 = objc_msgSend_monocolorRampImage(v21, v19, v20);
      goto LABEL_7;
    }
  }

  else
  {
    if (!objc_msgSend_isPlainOption(toPaletteCopy, v16, v17))
    {
      if (v13)
      {
        v42 = objc_msgSend_monocolorRampImage(paletteCopy, v24, v25);
        objc_msgSend_monocolorRampImage(toPaletteCopy, v43, v44);
      }

      else
      {
        v42 = objc_msgSend_colorRampImage(paletteCopy, v24, v25);
        objc_msgSend_colorRampImage(toPaletteCopy, v45, v46);
      }
      v47 = ;
      v26 = NTKInterpolateBetweenImages();

      fraction = 1.0;
      v18 = v12;
      if (v26)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    v18 = NTKInterpolateColorMatrixToIdentity();

    fraction = 1.0 - fraction;
    v21 = paletteCopy;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v22 = objc_msgSend_colorRampImage(v21, v19, v20);
LABEL_7:
  v26 = v22;
  if (v22)
  {
LABEL_8:
    v27 = objc_msgSend_filterWithType_(MEMORY[0x277CD9EA0], v23, *MEMORY[0x277CDA2C0]);
    objc_msgSend_setValue_forKey_(v27, v28, v18, @"inputColorMatrix");
    v30 = objc_msgSend_filterWithType_(MEMORY[0x277CD9EA0], v29, *MEMORY[0x277CDA588]);
    v33 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v31, v32, fraction);
    objc_msgSend_setValue_forKey_(v30, v34, v33, @"inputAmount");

    v35 = v26;
    v38 = objc_msgSend_CGImage(v35, v36, v37);
    objc_msgSend_setValue_forKey_(v30, v39, v38, @"inputColorMap");
    v49[0] = v27;
    v49[1] = v30;
    v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v40, v49, 2);

    goto LABEL_14;
  }

LABEL_13:
  v41 = MEMORY[0x277CBEBF8];
LABEL_14:

  return v41;
}

@end