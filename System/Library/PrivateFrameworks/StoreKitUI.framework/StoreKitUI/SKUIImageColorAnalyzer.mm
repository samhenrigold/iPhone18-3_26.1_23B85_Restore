@interface SKUIImageColorAnalyzer
+ (CGContext)_createContextForImage:(id)image;
+ (id)analyzeImage:(id)image;
@end

@implementation SKUIImageColorAnalyzer

+ (id)analyzeImage:(id)image
{
  imageCopy = image;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIImageColorAnalyzer analyzeImage:];
  }

  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [self _createContextForImage:imageCopy];
    if (!v6)
    {
      goto LABEL_10;
    }

    AnalyzedImageColors::AnalyzedImageColors(v17);
    v7 = AnalyzeImagePlease(v6, v17);
    v8 = v7;
    if (v7)
    {
      v9 = [self _colorFromITColor:{v17[0], v17[1], v17[2], v17[3]}];
      [v5 setBackgroundColor:v9];

      v10 = [self _colorFromITColor:{v17[4], v17[5], v17[6], v17[7]}];
      [v5 setTextPrimaryColor:v10];

      v11 = [self _colorFromITColor:{v17[8], v17[9], v17[10], v17[11]}];
      [v5 setTextSecondaryColor:v11];

      [v5 setIsBackgroundLight:v18];
    }

    CGContextRelease(v6);
    if ((v8 & 1) == 0)
    {
LABEL_10:
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [v5 setBackgroundColor:whiteColor];

      blackColor = [MEMORY[0x277D75348] blackColor];
      [v5 setTextPrimaryColor:blackColor];

      darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
      [v5 setTextSecondaryColor:darkGrayColor];

      [v5 setIsBackgroundLight:1];
    }

    v15 = v5;
  }

  return v5;
}

+ (CGContext)_createContextForImage:(id)image
{
  imageCopy = image;
  v4 = imageCopy;
  if (imageCopy && [imageCopy CGImage])
  {
    cGImage = [v4 CGImage];
    Width = CGImageGetWidth(cGImage);
    Height = CGImageGetHeight(cGImage);
    v9 = 0;
    if (Width && Height)
    {
      SRGB = CGColorSpaceGetSRGB(Height, v8);
      if (SRGB)
      {
        CopyWithColorSpace = CGImageCreateCopyWithColorSpace(cGImage, SRGB);
        v12 = CopyWithColorSpace;
        if (CopyWithColorSpace)
        {
          cGImage = CopyWithColorSpace;
        }
      }

      else
      {
        v12 = 0;
      }

      v14 = CGBitmapContextCreate(0, 0x16uLL, 0x16uLL, 8uLL, 0x58uLL, SRGB, 0x2002u);
      v9 = v14;
      if (v14)
      {
        v15.origin.x = *MEMORY[0x277CBF348];
        v15.origin.y = *(MEMORY[0x277CBF348] + 8);
        v15.size.width = 22.0;
        v15.size.height = 22.0;
        CGContextDrawImage(v14, v15, cGImage);
      }

      if (v12)
      {
        CGImageRelease(v12);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)analyzeImage:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIImageColorAnalyzer analyzeImage:]";
}

@end