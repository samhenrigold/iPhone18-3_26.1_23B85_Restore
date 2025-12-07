@interface UIImage(SafariSharedExtras)
+ (id)safari_dynamicImageWithSize:()SafariSharedExtras generator:;
+ (id)safari_imageWithSVGData:()SafariSharedExtras;
+ (id)safari_imageWithSize:()SafariSharedExtras actions:;
+ (id)safari_imageWithSize:()SafariSharedExtras flipped:actions:;
+ (id)safari_largestSizedBitmapImageOrSVGFromImages:()SafariSharedExtras;
- (double)safari_computeAverageLuminance;
- (double)safari_longestEdgeInPixels;
- (id)safari_dynamicImageWithSize:()SafariSharedExtras generator:;
- (id)safari_makeGrayscale;
- (uint64_t)safari_isGrayscale;
- (uint64_t)safari_isSolidColor;
- (uint64_t)safari_transparencyAnalysisResult;
- (void)safari_setTransparencyAnalysisResult:()SafariSharedExtras;
@end

@implementation UIImage(SafariSharedExtras)

- (uint64_t)safari_transparencyAnalysisResult
{
  v1 = MEMORY[0x1EEE9AC00](self);
  v48[256] = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(v1, &transparencyAnalysisResultKey);
  v3 = v2;
  if (!v2)
  {
    CGImageRepresentation = _UIImageGetCGImageRepresentation();
    if (!CGImageHasAlpha())
    {
      integerValue = 1;
      goto LABEL_7;
    }

    *(&srcFormat.renderingIntent + 1) = 0;
    srcFormat.bitsPerComponent = CGImageGetBitsPerComponent(CGImageRepresentation);
    srcFormat.bitsPerPixel = CGImageGetBitsPerPixel(CGImageRepresentation);
    srcFormat.colorSpace = CGImageGetColorSpace(CGImageRepresentation);
    srcFormat.bitmapInfo = CGImageGetBitmapInfo(CGImageRepresentation);
    srcFormat.version = 0;
    srcFormat.decode = CGImageGetDecode(CGImageRepresentation);
    srcFormat.renderingIntent = CGImageGetRenderingIntent(CGImageRepresentation);
    if (MEMORY[0x1CCA51F30](&srcs, &srcFormat, 0, CGImageRepresentation, 0))
    {
      integerValue = 0;
LABEL_7:
      [v1 safari_setTransparencyAnalysisResult:{integerValue, v27, v28, v29, v30, v31}];
      goto LABEL_8;
    }

    data = srcs.data;
    v8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v9 = objc_alloc_init(MEMORY[0x1E69C8A40]);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = ___ZL25_analyzeImageTransparencyP7CGImage_block_invoke;
    v41[3] = &__block_descriptor_40_e5_v8__0l;
    v41[4] = v8;
    [v9 setHandler:v41];
    *&destFormat.bitsPerComponent = 0x2000000008;
    destFormat.colorSpace = v8;
    destFormat.bitmapInfo = 3;
    memset(&destFormat.version, 0, 20);
    src = srcs;
    if (MEMORY[0x1CCA51F40](&srcFormat, &destFormat))
    {
      v10 = 0;
LABEL_11:
      bzero(v48, 0x800uLL);
      bzero(v47, 0x800uLL);
      bzero(v46, 0x800uLL);
      bzero(v45, 0x800uLL);
      histogram[0] = v48;
      histogram[1] = v47;
      histogram[2] = v46;
      histogram[3] = v45;
      if (!vImageHistogramCalculation_ARGB8888(&src, histogram, 0))
      {
        v14 = 0;
        integerValue = 1;
        while (!*&v45[v14])
        {
          v14 += 8;
          if (v14 == 2040)
          {
            goto LABEL_44;
          }
        }

        v15 = 0;
        integerValue = 3;
        while (!*&v45[v15])
        {
          v15 += 8;
          if (v15 == 1640)
          {
            goto LABEL_44;
          }
        }

        height = src.height;
        width = src.width;
        v18 = src.width >= 0x11 && src.height >= 0x11;
        if (!v18 || ((aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = 3221225472, aBlock[2] = ___ZL25_analyzeImageTransparencyP7CGImage_block_invoke_2, aBlock[3] = &__block_descriptor_72_e11_B24__0Q8Q16l, aBlock[4] = src.data, v38 = src, v19 = _Block_copy(aBlock), v34[0] = MEMORY[0x1E69E9820], v34[1] = 3221225472, v34[2] = ___ZL25_analyzeImageTransparencyP7CGImage_block_invoke_3, v34[3] = &unk_1E82858B8, v20 = v19, v35 = v20, v36 = width - 1, v27 = width - 1, v21 = _Block_copy(v34), v22 = height - 1, v28 = MEMORY[0x1E69E9820], v29 = 3221225472, v30 = ___ZL25_analyzeImageTransparencyP7CGImage_block_invoke_4, v31 = &unk_1E82858B8, v23 = v20, v32 = v23, v33 = height - 1, v24 = _Block_copy(&v28), !v21[2](v21, 0)) || !v21[2](v21, v22) || !v24[2](v24, 0) || ((v24[2])(v24, v27) & 1) == 0 ? (integerValue = 0, v25 = 1) : (v25 = 0, integerValue = 4), v24, v32, v21, v35, v23, v25))
        {
          integerValue = 2;
        }

        goto LABEL_44;
      }

LABEL_12:
      integerValue = 0;
LABEL_44:
      if (v10)
      {
        free(v10);
      }

      goto LABEL_46;
    }

    v11 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, 0);
    integerValue = v11;
    if (!v11)
    {
LABEL_46:

      if (data)
      {
        free(data);
      }

      goto LABEL_7;
    }

    bitsPerPixel = destFormat.bitsPerPixel;
    v13 = srcs.width;
    if (srcs.rowBytes == srcs.width * destFormat.bitsPerPixel)
    {
      if (!vImageConverter_MustOperateOutOfPlace(v11, 0, 0, 0))
      {
        v10 = 0;
        goto LABEL_39;
      }

      v13 = srcs.width;
      bitsPerPixel = destFormat.bitsPerPixel;
    }

    if (MEMORY[0x1CCA51F20](&src, srcs.height, v13, bitsPerPixel, 0))
    {
      vImageConverter_Release(integerValue);
      integerValue = 0;
      goto LABEL_46;
    }

    v10 = src.data;
LABEL_39:
    v26 = vImageConvert_AnyToAny(integerValue, &srcs, &src, 0, 0);
    vImageConverter_Release(integerValue);
    if (v26)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  integerValue = [v2 integerValue];
LABEL_8:

  return integerValue;
}

+ (id)safari_largestSizedBitmapImageOrSVGFromImages:()SafariSharedExtras
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v3;
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        [v12 size];
        v14 = v13;
        v16 = v15;
        safari_isSVGImage = [v12 safari_isSVGImage];
        v18 = safari_isSVGImage;
        if (v7 && ((safari_isSVGImage ^ 1 | v9) & 1) != 0)
        {
          if ((v9 ^ safari_isSVGImage))
          {
            continue;
          }

          if ((v14 < v4 || v16 <= v5) && (v14 <= v4 || v16 < v5))
          {
            continue;
          }
        }

        v21 = v12;

        v7 = v21;
        v9 = v18;
        v4 = v14;
        v5 = v16;
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  return v7;
}

+ (id)safari_imageWithSize:()SafariSharedExtras actions:
{
  v3 = [self safari_imageWithSize:1 flipped:a3 actions:?];

  return v3;
}

+ (id)safari_imageWithSize:()SafariSharedExtras flipped:actions:
{
  v8 = a6;
  preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
  [preferredFormat setPreferredRange:2];
  [preferredFormat setOpaque:0];
  v10 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:preferredFormat format:{self, a2}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__UIImage_SafariSharedExtras__safari_imageWithSize_flipped_actions___block_invoke;
  v14[3] = &unk_1E8285790;
  v11 = v8;
  v15 = v11;
  v12 = [v10 imageWithActions:v14];

  return v12;
}

+ (id)safari_imageWithSVGData:()SafariSharedExtras
{
  v3 = CGSVGDocumentCreateFromData();
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] _imageWithCGSVGDocument:v3];
    CGSVGDocumentRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)safari_dynamicImageWithSize:()SafariSharedExtras generator:
{
  v7 = a5;
  v8 = MEMORY[0x1E69DCAC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__UIImage_SafariSharedExtras__safari_dynamicImageWithSize_generator___block_invoke;
  v16[3] = &unk_1E82857E0;
  v11 = v7;
  v17 = v11;
  selfCopy = self;
  v19 = a2;
  v12 = [v8 _dynamicAssetNamed:uUIDString generator:v16];
  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v14 = [v12 imageWithTraitCollection:currentTraitCollection];

  return v14;
}

- (void)safari_setTransparencyAnalysisResult:()SafariSharedExtras
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(self, &transparencyAnalysisResultKey, v2, 1);
}

- (double)safari_longestEdgeInPixels
{
  [self size];
  if (result <= v4)
  {
    return v4;
  }

  return result;
}

- (uint64_t)safari_isGrayscale
{
  v2 = objc_getAssociatedObject(self, [UIImage(SafariSharedExtras) safari_isGrayscale]::isGrayscaleImageKey);
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    CGImageRepresentation = _UIImageGetCGImageRepresentation();
    ColorSpace = CGImageGetColorSpace(CGImageRepresentation);
    if (CGColorSpaceGetModel(ColorSpace))
    {
      Width = CGImageGetWidth(CGImageRepresentation);
      Height = CGImageGetHeight(CGImageRepresentation);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v10 = CGBitmapContextCreate(0, Width, Height, 8uLL, 4 * Width, DeviceRGB, 1u);
      CGColorSpaceRelease(DeviceRGB);
      v32.size.width = Width;
      v32.size.height = Height;
      v32.origin.x = 0.0;
      v32.origin.y = 0.0;
      CGContextDrawImage(v10, v32, CGImageRepresentation);
      Data = CGBitmapContextGetData(v10);
      v12 = Height * Width;
      if ((4 * Height * Width) < 1)
      {
        v27 = 0.0;
        v28 = 0.0;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        v15 = v12;
        v16 = (Data + 1);
        v17 = &Data[4 * v12];
        do
        {
          v18 = v16 - 1;
          v19 = *(v16 - 1);
          v20 = v16[1];
          v21 = v16[2];
          if (v21 > 0x18)
          {
            ++v13;
          }

          v22 = v19 - v20;
          if (v19 - v20 < 0)
          {
            v22 = v20 - v19;
          }

          if (v22 <= 0x18)
          {
            v24 = *v16;
            v25 = v20 - v24;
            if (v25 < 0)
            {
              v25 = -v25;
            }

            v26 = v19 - v24;
            if (v26 < 0)
            {
              v26 = -v26;
            }

            v23 = v26 < 0x19;
            if (v25 > 0x18)
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }

          if (v21 >= 0x19 && !v23 && ++v14 / v15 >= 0.03)
          {
            break;
          }

          v16 += 4;
        }

        while ((v18 + 4) < v17);
        v27 = v14;
        v28 = v13;
      }

      CGContextRelease(v10);
      bOOLValue = v27 / v28 < 0.03;
      v29 = [UIImage(SafariSharedExtras) safari_isGrayscale]::isGrayscaleImageKey;
      v30 = [MEMORY[0x1E696AD98] numberWithBool:{bOOLValue, v27 / v28}];
      objc_setAssociatedObject(self, v29, v30, 1);
    }

    else
    {
      bOOLValue = 1;
    }
  }

  return bOOLValue;
}

- (uint64_t)safari_isSolidColor
{
  v2 = objc_getAssociatedObject(self, [UIImage(SafariSharedExtras) safari_isSolidColor]::isSolidColorKey);
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
    goto LABEL_22;
  }

  CGImageRepresentation = _UIImageGetCGImageRepresentation();
  Width = CGImageGetWidth(CGImageRepresentation);
  Height = CGImageGetHeight(CGImageRepresentation);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGBitmapContextCreate(0, Width, Height, 8uLL, 4 * Width, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  v26.size.width = Width;
  v26.size.height = Height;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  CGContextDrawImage(v9, v26, CGImageRepresentation);
  Data = CGBitmapContextGetData(v9);
  v11 = 4 * Width * Height;
  if (v11 < 1)
  {
LABEL_19:
    bOOLValue = 1;
    goto LABEL_21;
  }

  v12 = &Data[v11];
  v13 = -1;
  v14 = -1;
  v15 = -1;
  while (1)
  {
    v16 = Data[3];
    if (v16 >= 0x19)
    {
      break;
    }

LABEL_18:
    Data += 4;
    if (Data >= v12)
    {
      goto LABEL_19;
    }
  }

  v17 = ((v16 >> 1) - *Data + (*Data << 8)) / v16;
  v18 = ((v16 >> 1) - Data[1] + (Data[1] << 8)) / v16;
  v19 = ((v16 >> 1) - Data[2] + (Data[2] << 8)) / v16;
  if (v15 == -1)
  {
    v15 = v17;
    v14 = v18;
    v13 = v19;
    goto LABEL_18;
  }

  v20 = v15 - v17;
  if (v20 < 0)
  {
    v20 = -v20;
  }

  if (v20 <= 5)
  {
    v21 = v14 - v18;
    if (v21 < 0)
    {
      v21 = -v21;
    }

    if (v21 <= 5)
    {
      v22 = v13 - v19;
      if (v22 < 0)
      {
        v22 = -v22;
      }

      if (v22 <= 5)
      {
        goto LABEL_18;
      }
    }
  }

  bOOLValue = 0;
LABEL_21:
  CGContextRelease(v9);
  v23 = [UIImage(SafariSharedExtras) safari_isSolidColor]::isSolidColorKey;
  v24 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
  objc_setAssociatedObject(self, v23, v24, 1);

LABEL_22:
  return bOOLValue;
}

- (id)safari_makeGrayscale
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(self, [UIImage(SafariSharedExtras) safari_makeGrayscale]::grayscaleImageKey);
  if (!v2)
  {
    v3 = [MEMORY[0x1E695F658] imageWithCGImage:_UIImageGetCGImageRepresentation()];
    v10 = *MEMORY[0x1E695FB18];
    v11[0] = &unk_1F466CFA8;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = [v3 imageByApplyingFilter:@"CIColorControls" withInputParameters:v4];

    v6 = MEMORY[0x1E69C8ED8];
    v7 = [MEMORY[0x1E695F620] contextWithOptions:0];
    [v3 extent];
    v8 = [v6 imageByAdoptingCGImage:{objc_msgSend(v7, "createCGImage:fromRect:", v5)}];

    v2 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:{objc_msgSend(v8, "CGImage")}];
    objc_setAssociatedObject(self, [UIImage(SafariSharedExtras) safari_makeGrayscale]::grayscaleImageKey, v2, 1);
  }

  return v2;
}

- (double)safari_computeAverageLuminance
{
  v2 = objc_getAssociatedObject(self, [UIImage(SafariSharedExtras) safari_computeAverageLuminance]::averageLuminanceKey);
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    CGImageRepresentation = _UIImageGetCGImageRepresentation();
    v5 = WBSComputeAverageLuminance(CGImageRepresentation);
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    objc_setAssociatedObject(self, &[UIImage(SafariSharedExtras) safari_computeAverageLuminance]::averageLuminanceKey, v7, 1);
  }

  return v5;
}

- (id)safari_dynamicImageWithSize:()SafariSharedExtras generator:
{
  v8 = a5;
  objc_initWeak(&location, self);
  v9 = objc_opt_class();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__UIImage_SafariSharedExtras__safari_dynamicImageWithSize_generator___block_invoke;
  v13[3] = &unk_1E8285808;
  objc_copyWeak(&v15, &location);
  v10 = v8;
  v14 = v10;
  v11 = [v9 safari_dynamicImageWithSize:v13 generator:{a2, a3}];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v11;
}

@end