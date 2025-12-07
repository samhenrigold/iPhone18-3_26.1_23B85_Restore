@interface CNCoreImageDerivedColorGenerator
+ (id)defaultGrayColors;
+ (id)encodedDataFromColors:(id)colors;
+ (id)scheduler;
- (CNCoreImageDerivedColorGenerator)init;
- (id)fetchColorsForImage:(id)image;
@end

@implementation CNCoreImageDerivedColorGenerator

- (CNCoreImageDerivedColorGenerator)init
{
  v7.receiver = self;
  v7.super_class = CNCoreImageDerivedColorGenerator;
  v2 = [(CNCoreImageDerivedColorGenerator *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(FastMetalColorSampler);
    colorSampler = v2->colorSampler;
    v2->colorSampler = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)scheduler
{
  if (scheduler_cn_once_token_3 != -1)
  {
    +[CNCoreImageDerivedColorGenerator scheduler];
  }

  v3 = scheduler_cn_once_object_3;

  return v3;
}

uint64_t __45__CNCoreImageDerivedColorGenerator_scheduler__block_invoke()
{
  v0 = [MEMORY[0x1E6996818] serialDispatchQueueSchedulerWithName:@"com.apple.contacts.colorExtraction"];
  v1 = scheduler_cn_once_object_3;
  scheduler_cn_once_object_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)fetchColorsForImage:(id)image
{
  v66[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v5 = background_color_os_log(imageCopy);
  v6 = v5;
  if (imageCopy)
  {
    v7 = os_signpost_id_make_with_pointer(v5, imageCopy);

    v9 = background_color_os_log(v8);
    v10 = v9;
    v60 = v7 - 1;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      LOWORD(buf.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_1954A0000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CNImageDerivedColorFetchColors", "", &buf, 2u);
    }

    v11 = [imageCopy imageByScalingToFit:{100.0, 100.0}];
    [v11 extent];
    v13 = v12;
    v15 = v14;
    v16 = objc_alloc(MEMORY[0x1E69845B8]);
    v17 = [v16 initWithCIImage:v11 options:MEMORY[0x1E695E0F8]];
    v18 = objc_opt_new();
    [v18 setRevision:2];
    v19 = objc_autoreleasePoolPush();
    v66[0] = v18;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
    v63 = 0;
    v21 = [v17 performRequests:v20 error:&v63];
    v22 = v63;

    if (v22 || (v21 & 1) == 0)
    {
      v47 = background_color_os_log(v23);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [(CNCoreImageDerivedColorGenerator *)v22 fetchColorsForImage:v47];
      }

      defaultGrayColors = [objc_opt_class() defaultGrayColors];

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      objc_autoreleasePoolPop(v19);
      results = [v18 results];
      firstObject = [results firstObject];

      if (firstObject)
      {
        spid = v7;
        v58 = firstObject;
        v59 = v17;
        v27 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:{objc_msgSend(firstObject, "pixelBuffer")}];
        [v27 extent];
        memset(&buf, 0, sizeof(buf));
        CGAffineTransformMakeScale(&buf, v13 / v28, v15 / v29);
        v61 = buf;
        v57 = v27;
        v30 = [v27 imageByApplyingTransform:&v61];
        colorThresholdFilter = [MEMORY[0x1E695F648] colorThresholdFilter];
        v56 = v30;
        [colorThresholdFilter setInputImage:v30];
        LODWORD(v32) = 0.5;
        [colorThresholdFilter setThreshold:v32];
        v55 = colorThresholdFilter;
        outputImage = [colorThresholdFilter outputImage];
        maskToAlphaFilter = [MEMORY[0x1E695F648] maskToAlphaFilter];
        v54 = outputImage;
        [maskToAlphaFilter setInputImage:outputImage];
        v53 = maskToAlphaFilter;
        outputImage2 = [maskToAlphaFilter outputImage];
        sourceOutCompositingFilter = [MEMORY[0x1E695F648] sourceOutCompositingFilter];
        [sourceOutCompositingFilter setInputImage:v11];
        v52 = outputImage2;
        [sourceOutCompositingFilter setBackgroundImage:outputImage2];
        outputImage3 = [sourceOutCompositingFilter outputImage];
        v38 = objc_autoreleasePoolPush();
        v64[0] = @"inputWidth";
        v39 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
        v64[1] = @"inputHeight";
        v65[0] = v39;
        v40 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
        v65[1] = v40;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
        v51 = outputImage3;
        v42 = [outputImage3 imageByApplyingFilter:@"CISmartGradient" withInputParameters:v41];

        objc_autoreleasePoolPop(v38);
        [v42 extent];
        v43 = [v42 imageByCroppingToRect:?];
        defaultGrayColors = [(FastMetalColorSampler *)self->colorSampler sampleColors:v43 sampleCount:8];
        v45 = background_color_os_log(defaultGrayColors);
        v46 = v45;
        if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
        {
          LOWORD(v61.a) = 0;
          _os_signpost_emit_with_name_impl(&dword_1954A0000, v46, OS_SIGNPOST_INTERVAL_END, spid, "CNImageDerivedColorFetchColors", "", &v61, 2u);
        }

        firstObject = v58;
        v17 = v59;
      }

      else
      {
        v48 = background_color_os_log(v26);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [CNCoreImageDerivedColorGenerator fetchColorsForImage:];
        }

        defaultGrayColors = [objc_opt_class() defaultGrayColors];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CNCoreImageDerivedColorGenerator fetchColorsForImage:];
    }

    defaultGrayColors = [objc_opt_class() defaultGrayColors];
  }

  return defaultGrayColors;
}

+ (id)defaultGrayColors
{
  v8 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  for (i = 0; i != 160; i += 32)
  {
    v5 = CGColorCreate(DeviceRGB, (&v7 + i));
    [array addObject:v5];
    CGColorRelease(v5);
  }

  CGColorSpaceRelease(DeviceRGB);

  return array;
}

+ (id)encodedDataFromColors:(id)colors
{
  v31 = *MEMORY[0x1E69E9840];
  colorsCopy = colors;
  v4 = colorsCopy;
  if (colorsCopy && [colorsCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          if (v11)
          {
            null = [MEMORY[0x1E695DFB0] null];
            v13 = [v11 isEqual:null];

            if ((v13 & 1) == 0)
            {
              NumberOfComponents = CGColorGetNumberOfComponents(v11);
              numberOfComponents = [MEMORY[0x1E695DEF0] dataWithBytes:CGColorGetComponents(v11) length:8 * NumberOfComponents];
              ColorSpace = CGColorGetColorSpace(v11);
              v17 = CGColorSpaceCopyName(ColorSpace);
              v18 = v17;
              v28[0] = @"components";
              v28[1] = @"colorSpace";
              v19 = &stru_1F094DAB0;
              if (v17)
              {
                v19 = v17;
              }

              v29[0] = numberOfComponents;
              v29[1] = v19;
              v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
              [array addObject:v20];
              if (v18)
              {
                CFRelease(v18);
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v8);
    }

    v21 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:array requiringSecureCoding:0 error:0];

    v4 = v23;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)fetchColorsForImage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Error performing VNGenerateObjectnessBasedSaliencyImageRequest in colorsForImageSync: %@", &v2, 0xCu);
}

@end