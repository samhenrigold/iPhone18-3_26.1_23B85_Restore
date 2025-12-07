@interface CNUICoreImageDerivedColorGenerator
+ (id)ciContextWithHighPriority:(BOOL)priority;
+ (id)colorsForImageRef:(CGImage *)ref;
+ (id)colorsForUIImage:(id)image;
+ (id)defaultDarkGrayColors;
+ (id)defaultGrayColors;
+ (id)resizeImageForPerformance:(id)performance;
+ (id)scheduler;
+ (id)tintedUIColorsFromUIColors:(id)colors isLight:(BOOL)light;
+ (void)fetchColorsForImage:(id)image ciContext:(id)context withCompletionHandler:(id)handler;
@end

@implementation CNUICoreImageDerivedColorGenerator

+ (id)colorsForUIImage:(id)image
{
  imageCopy = image;
  if ([imageCopy ioSurface])
  {
    v5 = UICreateCGImageFromIOSurface();
    v6 = [self colorsForImageRef:v5];
    CGImageRelease(v5);
  }

  else
  {
    v6 = [self colorsForImageRef:{objc_msgSend(imageCopy, "CGImage")}];
  }

  return v6;
}

+ (id)colorsForImageRef:(CGImage *)ref
{
  Width = CGImageGetWidth(ref);
  Height = CGImageGetHeight(ref);
  if (Width && Height)
  {
    if (Height <= 160.0)
    {
      v7 = Height;
    }

    else
    {
      v7 = 160.0;
    }

    v8 = v7;
    v9 = malloc_type_malloc(vcvtd_n_u64_f64(v7, 2uLL), 0xBDDB8817uLL);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v11 = CGBitmapContextCreate(v9, 1uLL, v7, 8uLL, 4uLL, DeviceRGB, 0x4001u);
    v32.origin.x = 0.0;
    v32.origin.y = 0.0;
    v32.size.width = 1.0;
    v32.size.height = v7;
    CGContextDrawImage(v11, v32, ref);
    CGContextRelease(v11);
    CGColorSpaceRelease(DeviceRGB);
    v12 = 0;
    if (v7)
    {
      v13 = v9 + 3;
      while (!*(v13 - 3) && !*(v13 - 2) && !*(v13 - 1) || !*v13)
      {
        ++v12;
        v13 += 4;
        if (v8 == v12)
        {
          v12 = v7;
          break;
        }
      }

      v14 = v8 - 1;
      if (v8 - 1 >= 1)
      {
        v15 = &v9[4 * v8 - 2];
        while (!*(v15 - 2) && !*(v15 - 1) && !*v15 || !v15[1])
        {
          --v8;
          v15 -= 4;
          if (v8 <= 1)
          {
            v14 = 0;
            goto LABEL_27;
          }
        }

        v14 = v8 - 1;
      }
    }

    else
    {
      v14 = -1;
    }

LABEL_27:
    v18 = objc_opt_new();
    if (v14 > v12)
    {
      v19 = vcvtd_n_f64_u64(v14 - v12, 2uLL);
      v24 = vcvtpd_u64_f64(v19);
      v25 = &v9[4 * v12 + 3];
      do
      {
        LOBYTE(v19) = *(v25 - 3);
        LOBYTE(v20) = *(v25 - 2);
        LOBYTE(v21) = *(v25 - 1);
        LOBYTE(v22) = *v25;
        v26 = [MEMORY[0x1E69DC888] colorWithRed:*&v19 / 255.0 green:v20 / 255.0 blue:v21 / 255.0 alpha:v22 / 255.0];
        [v18 addObject:v26];

        v12 += v24;
        v25 += 4 * v24;
      }

      while (v12 < v14);
    }

    v27 = &v9[4 * v14];
    LOBYTE(v19) = *v27;
    LOBYTE(v20) = v27[1];
    LOBYTE(v21) = v27[2];
    LOBYTE(v23) = v27[3];
    v28 = [MEMORY[0x1E69DC888] colorWithRed:*&v19 / 255.0 green:v20 / 255.0 blue:v21 / 255.0 alpha:v23 / 255.0];
    [v18 addObject:v28];

    free(v9);
    if ([v18 count] >= 5)
    {
      defaultGrayColors = v18;
    }

    else
    {
      defaultGrayColors = [self defaultGrayColors];
    }

    defaultGrayColors2 = defaultGrayColors;
  }

  else
  {
    v16 = background_color_os_log(Height);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [CNUICoreImageDerivedColorGenerator colorsForImageRef:v16];
    }

    defaultGrayColors2 = [self defaultGrayColors];
  }

  return defaultGrayColors2;
}

+ (id)scheduler
{
  if (scheduler_cn_once_token_9 != -1)
  {
    +[CNUICoreImageDerivedColorGenerator scheduler];
  }

  v3 = scheduler_cn_once_object_9;

  return v3;
}

uint64_t __47__CNUICoreImageDerivedColorGenerator_scheduler__block_invoke()
{
  scheduler_cn_once_object_9 = [MEMORY[0x1E6996818] serialDispatchQueueSchedulerWithName:@"com.apple.contacts.colorExtraction"];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)fetchColorsForImage:(id)image ciContext:(id)context withCompletionHandler:(id)handler
{
  imageCopy = image;
  contextCopy = context;
  handlerCopy = handler;
  if (imageCopy)
  {
    scheduler = [self scheduler];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __90__CNUICoreImageDerivedColorGenerator_fetchColorsForImage_ciContext_withCompletionHandler___block_invoke;
    v12[3] = &unk_1E76E8E70;
    v13 = imageCopy;
    selfCopy = self;
    v14 = contextCopy;
    v15 = handlerCopy;
    [scheduler performBlock:v12];
  }
}

void __90__CNUICoreImageDerivedColorGenerator_fetchColorsForImage_ciContext_withCompletionHandler___block_invoke(uint64_t a1)
{
  v74[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) hash];
  v3 = background_color_os_log(v2);
  v4 = v3;
  v61 = v2 - 1;
  if ((v2 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    LOWORD(buf.a) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A31E6000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CNImageDerivedColorFetchColors", "", &buf, 2u);
  }

  spid = v2;

  v65 = [objc_alloc(MEMORY[0x1E695F658]) initWithImage:*(a1 + 32)];
  v5 = [objc_opt_class() resizeImageForPerformance:v65];
  [v5 extent];
  v7 = v6;
  v9 = v8;
  v10 = objc_alloc(MEMORY[0x1E69845B8]);
  v11 = [v10 initWithCIImage:v5 options:MEMORY[0x1E695E0F8]];
  v12 = objc_opt_new();
  [v12 setRevision:2];
  v13 = objc_autoreleasePoolPush();
  v74[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
  v71 = 0;
  v63 = v11;
  v15 = [v11 performRequests:v14 error:&v71];
  v16 = v71;

  if (v16 || (v15 & 1) == 0)
  {
    v18 = background_color_os_log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __90__CNUICoreImageDerivedColorGenerator_fetchColorsForImage_ciContext_withCompletionHandler___block_invoke_cold_1(v16, v18);
    }
  }

  objc_autoreleasePoolPop(v13);
  v62 = v12;
  v19 = [v12 results];
  v20 = [v19 firstObject];

  v60 = v20;
  v21 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:{objc_msgSend(v20, "pixelBuffer")}];
  [v21 extent];
  memset(&buf, 0, sizeof(buf));
  CGAffineTransformMakeScale(&buf, v7 / v22, v9 / v23);
  v69 = buf;
  v24 = [v21 imageByApplyingTransform:&v69];
  v25 = [MEMORY[0x1E695F648] colorThresholdFilter];
  v59 = v24;
  [v25 setInputImage:v24];
  LODWORD(v26) = 0.5;
  [v25 setThreshold:v26];
  v27 = [v25 outputImage];
  v28 = [MEMORY[0x1E695F648] maskToAlphaFilter];
  v58 = v27;
  [v28 setInputImage:v27];
  v29 = [v28 outputImage];
  v30 = [MEMORY[0x1E695F648] sourceOutCompositingFilter];
  v64 = v5;
  [v30 setInputImage:v5];
  v56 = v29;
  [v30 setBackgroundImage:v29];
  v31 = [v30 outputImage];
  v32 = objc_autoreleasePoolPush();
  v72[0] = @"inputWidth";
  v33 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v72[1] = @"inputHeight";
  v73[0] = v33;
  v34 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v73[1] = v34;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
  v57 = v31;
  v36 = [v31 imageByApplyingFilter:@"CISmartGradient" withInputParameters:v35];

  objc_autoreleasePoolPop(v32);
  [v36 extent];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = *(a1 + 40);
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = [*(a1 + 56) ciContextWithHighPriority:1];
  }

  v45 = v44;
  v46 = [v36 imageByCroppingToRect:{v38, v40, 8.0, v42}];
  [v46 extent];
  v47 = [v45 createCGImage:v46 fromRect:?];
  v48 = [objc_opt_class() colorsForImageRef:v47];
  v49 = v48;
  if (v47)
  {
    CFRelease(v47);
  }

  v50 = background_color_os_log(v48);
  v51 = v50;
  if (v61 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
  {
    LOWORD(v69.a) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A31E6000, v51, OS_SIGNPOST_INTERVAL_END, spid, "CNImageDerivedColorFetchColors", "", &v69, 2u);
  }

  v52 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __90__CNUICoreImageDerivedColorGenerator_fetchColorsForImage_ciContext_withCompletionHandler___block_invoke_169;
  v66[3] = &unk_1E76E8E48;
  v53 = *(a1 + 48);
  v67 = v49;
  v68 = v53;
  v54 = v49;
  [v52 performBlock:v66];
}

+ (id)resizeImageForPerformance:(id)performance
{
  performanceCopy = performance;
  [performanceCopy extent];
  if (v4 > 100.0 || v5 > 100.0)
  {
    v7 = 100.0 / v5;
    memset(&v12.c, 0, 32);
    if (100.0 / v4 < 100.0 / v5)
    {
      v7 = 100.0 / v4;
    }

    *&v12.a = 0uLL;
    CGAffineTransformMakeScale(&v12, v7, v7);
    v11 = v12;
    v8 = [performanceCopy imageByApplyingTransform:&v11];
  }

  else
  {
    v8 = performanceCopy;
  }

  v9 = v8;

  return v9;
}

+ (id)ciContextWithHighPriority:(BOOL)priority
{
  v12[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695F620];
  v4 = *MEMORY[0x1E695F818];
  v11[0] = *MEMORY[0x1E695F830];
  v11[1] = v4;
  v12[0] = @"CNUICoreImageDerivedColorGenerator";
  v12[1] = &unk_1F1645D00;
  v11[2] = *MEMORY[0x1E695F848];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:priority];
  v6 = *MEMORY[0x1E695F820];
  v12[2] = v5;
  v12[3] = MEMORY[0x1E695E118];
  v7 = *MEMORY[0x1E695F7F0];
  v11[3] = v6;
  v11[4] = v7;
  v12[4] = MEMORY[0x1E695E110];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v9 = [v3 contextWithOptions:v8];

  return v9;
}

+ (id)defaultGrayColors
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.631372549 green:0.643137255 blue:0.690196078 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.654901961 green:0.666666667 blue:0.709803922 alpha:{1.0, v2}];
  v9[1] = v3;
  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.682352941 green:0.694117647 blue:0.725490196 alpha:1.0];
  v9[2] = v4;
  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.729411765 green:0.733333333 blue:0.752941176 alpha:1.0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E69DC888] colorWithRed:0.752941176 green:0.756862745 blue:0.77254902 alpha:1.0];
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
}

+ (id)defaultDarkGrayColors
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.156862745 green:0.164705882 blue:0.2 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.184313725 green:0.196078431 blue:0.231372549 alpha:{1.0, v2}];
  v9[1] = v3;
  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.219607843 green:0.231372549 blue:0.258823529 alpha:1.0];
  v9[2] = v4;
  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.258823529 green:0.270588235 blue:0.298039216 alpha:1.0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E69DC888] colorWithRed:0.301960784 green:0.309803922 blue:0.329411765 alpha:1.0];
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
}

+ (id)tintedUIColorsFromUIColors:(id)colors isLight:(BOOL)light
{
  colorsCopy = colors;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__CNUICoreImageDerivedColorGenerator_tintedUIColorsFromUIColors_isLight___block_invoke;
  v9[3] = &unk_1E76E8E98;
  lightCopy = light;
  v7 = v6;
  v10 = v7;
  [colorsCopy enumerateObjectsUsingBlock:v9];

  return v7;
}

void __73__CNUICoreImageDerivedColorGenerator_tintedUIColorsFromUIColors_isLight___block_invoke(uint64_t a1, void *a2)
{
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0;
  v6 = 0.0;
  v7 = 0.0;
  [a2 getRed:&v8 green:&v7 blue:&v6 alpha:0];
  v3 = 0.0;
  if (*(a1 + 40))
  {
    v3 = 0.65;
  }

  v7 = v3 + v7 * 0.35;
  v8 = v3 + v8 * 0.35;
  v6 = v3 + v6 * 0.35;
  v4 = [MEMORY[0x1E69DC888] colorWithRed:*&v6 green:*&v7 blue:*&v8 alpha:?];
  [v4 getHue:&v11 saturation:&v10 brightness:&v9 alpha:0];
  v10 = v10 * 1.6 / (v10 + 0.6);
  v5 = [MEMORY[0x1E69DC888] colorWithHue:v11 saturation:? brightness:? alpha:?];
  [*(a1 + 32) addObject:v5];
}

void __90__CNUICoreImageDerivedColorGenerator_fetchColorsForImage_ciContext_withCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_ERROR, "Error performing VNGenerateObjectnessBasedSaliencyImageRequest in fetchColorsForImage: %@", &v2, 0xCu);
}

@end