@interface UIImage(PosterUIFoundation)
+ (double)minimumWallpaperSizeForCurrentDevice;
+ (id)pui_fallbackSnapshotImage;
+ (id)pui_imageFromSceneSnapshot:()PosterUIFoundation;
+ (id)pui_imageSnapshotFromLayer:()PosterUIFoundation buffer:;
+ (id)pui_imageWithIOSurface:()PosterUIFoundation;
+ (id)pui_imageWithIOSurface:()PosterUIFoundation scale:orientation:;
+ (id)pui_thumbnailImageForImage:()PosterUIFoundation thumbnailWidthInPixels:;
- (BOOL)pui_canDetermineProminentColor;
- (CGImage)pui_colorSpace;
- (id)pui_CGImageBackedImageUsingDataProvider;
- (id)pui_CGImageBackedImageWithMaximumBitsPerComponent:()PosterUIFoundation skipCIF10FitsInSRGBCheck:;
- (id)pui_averageColorForRect:()PosterUIFoundation;
- (id)pui_cropImageWithRect:()PosterUIFoundation outputSize:preservingAspectRatio:canUseIOSurface:;
- (id)pui_imageByManipulatingInDeviceColorSpaceWithBlock:()PosterUIFoundation;
- (id)pui_imageHashData;
- (id)pui_imageWithOrientation:()PosterUIFoundation;
- (id)pui_resizeImageToSize:()PosterUIFoundation;
- (id)pui_resizeImageToSize:()PosterUIFoundation preservingAspectRatio:;
- (id)pui_scaleImage:()PosterUIFoundation canUseIOSurface:;
- (id)pui_wrappedIOSurface;
- (uint64_t)pui_EXIFOrientation;
- (uint64_t)pui_averageColor;
- (uint64_t)pui_imageHasNoContent;
- (uint64_t)pui_isSolidColor:()PosterUIFoundation;
- (void)pui_determineProminentColorWithCompletion:()PosterUIFoundation;
@end

@implementation UIImage(PosterUIFoundation)

+ (id)pui_fallbackSnapshotImage
{
  if (pui_fallbackSnapshotImage_onceToken != -1)
  {
    +[UIImage(PosterUIFoundation) pui_fallbackSnapshotImage];
  }

  v2 = pui_fallbackSnapshotImage_fallbackSnapshotImage;

  return v2;
}

+ (id)pui_imageWithIOSurface:()PosterUIFoundation scale:orientation:
{
  v8 = a4;
  if ([v8 pixelFormat] == 1380411457)
  {
    v9 = v8;
    [v9 lockWithOptions:1 seed:0];
    baseAddress = [v9 baseAddress];
    bytesPerRow = [v9 bytesPerRow];
    width = [v9 width];
    height = [v9 height];
    allocationSize = [v9 allocationSize];
    v15 = v9;
    v16 = CGDataProviderCreateWithData(v15, baseAddress, allocationSize, releaseIOSurface);
    [v15 incrementUseCount];
    v17 = IOSurfaceCopyValue(v15, *MEMORY[0x1E696CEE0]);
    if (!v17 || (v18 = v17, v19 = CGColorSpaceCreateWithPropertyList(v17), CFRelease(v18), !v19))
    {
      v19 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    }

    v20 = CGImageCreate(width, height, 0x10uLL, 0x40uLL, bytesPerRow, v19, 0x1101u, v16, 0, 1, kCGRenderingIntentDefault);
    CGImageSetProperty();
    CGDataProviderRelease(v16);
    CGColorSpaceRelease(v19);
    if (v20)
    {
      v21 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v20 scale:a5 orientation:a2];
    }

    else
    {
      v21 = 0;
    }

    CGImageRelease(v20);
  }

  else
  {
    v21 = [[self alloc] _initWithIOSurface:v8 scale:a5 orientation:a2];
  }

  return v21;
}

+ (id)pui_imageWithIOSurface:()PosterUIFoundation
{
  v4 = kPaperboardIOSurfaceInterfaceOrientationPropertiesKey;
  v5 = a3;
  v6 = [v5 attachmentForKey:v4];
  unsignedIntegerValue = [v6 unsignedIntegerValue];
  if (unsignedIntegerValue <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = unsignedIntegerValue;
  }

  v9 = [v5 attachmentForKey:kPaperboardIOSurfaceDeviceOrientationPropertiesKey];
  unsignedIntegerValue2 = [v9 unsignedIntegerValue];
  if (unsignedIntegerValue2 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = unsignedIntegerValue2;
  }

  v12 = [v5 attachmentForKey:kPaperboardIOSurfaceDeviceScalePropertiesKey];
  [v12 doubleValue];
  if (v13 == 0.0)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = v13;
  }

  v15 = [self pui_imageWithIOSurface:v5 scale:PUIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation(v8 orientation:{v11), v14}];

  return v15;
}

- (id)pui_wrappedIOSurface
{
  ioSurface = [self ioSurface];
  if (ioSurface)
  {
    v3 = ioSurface;
  }

  else
  {
    v3 = PUIIOSurfaceFromCGImage([self CGImage], 0);
  }

  return v3;
}

+ (id)pui_imageSnapshotFromLayer:()PosterUIFoundation buffer:
{
  v5 = a3;
  context = [v5 context];
  [context contextId];
  [v5 bounds];
  v8 = v7;

  CARenderServerRenderLayer();
  v9 = [objc_alloc(MEMORY[0x1E69DCAB8]) _initWithIOSurface:a4 scale:0 orientation:IOSurfaceGetWidth(a4) / v8];

  return v9;
}

+ (id)pui_imageFromSceneSnapshot:()PosterUIFoundation
{
  v3 = a3;
  if (![v3 capture])
  {
    v12 = 0;
    goto LABEL_15;
  }

  context = [v3 context];
  settings = [context settings];

  v6 = PUIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation([settings interfaceOrientation], objc_msgSend(settings, "pui_deviceOrientation"));
  iOSurface = [v3 IOSurface];
  if (iOSurface)
  {
    context2 = [v3 context];
    [context2 scale];
    if (v9 == 0.0)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = v9;
    }

    v11 = [MEMORY[0x1E69DCAB8] pui_imageWithIOSurface:iOSurface scale:v6 orientation:v10];
  }

  else
  {
    cGImage = [v3 CGImage];
    if (!cGImage)
    {
      v12 = 0;
      goto LABEL_14;
    }

    v14 = cGImage;
    context3 = [v3 context];
    [context3 scale];
    if (v16 == 0.0)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = v16;
    }

    v11 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v14 scale:v6 orientation:v17];
  }

  v12 = v11;
LABEL_14:

LABEL_15:

  return v12;
}

- (id)pui_CGImageBackedImageWithMaximumBitsPerComponent:()PosterUIFoundation skipCIF10FitsInSRGBCheck:
{
  v19[3] = *MEMORY[0x1E69E9840];
  if ([self CGImage])
  {
    selfCopy = self;
  }

  else
  {
    ioSurface = [self ioSurface];
    v9 = ioSurface;
    if (ioSurface)
    {
      pixelFormat = [ioSurface pixelFormat];
      if (a3 <= 8 && pixelFormat == 1999843442)
      {
        v11 = *MEMORY[0x1E696D3B0];
        v18[0] = *MEMORY[0x1E696D2B8];
        v18[1] = v11;
        v19[0] = &unk_1F1C926E8;
        v19[1] = &unk_1F1C92700;
        v18[2] = *MEMORY[0x1E696DFC0];
        v12 = [MEMORY[0x1E696AD98] numberWithBool:a4];
        v19[2] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

        v14 = CGImageCreateFromIOSurface();
      }

      else
      {
        v14 = UICreateCGImageFromIOSurface();
      }

      v15 = objc_alloc(MEMORY[0x1E69DCAB8]);
      [self scale];
      selfCopy = [v15 initWithCGImage:v14 scale:objc_msgSend(self orientation:{"imageOrientation"), v16}];
      CGImageRelease(v14);
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)pui_CGImageBackedImageUsingDataProvider
{
  if ([self CGImage])
  {
    selfCopy = self;
  }

  else
  {
    ioSurface = [self ioSurface];
    v4 = ioSurface;
    if (ioSurface)
    {
      if ([ioSurface pixelFormat] == 1999843442)
      {
        [self scale];
        v6 = v5;
        imageOrientation = [self imageOrientation];
        v8 = v4;
        [v8 lockWithOptions:1 seed:0];
        baseAddress = [v8 baseAddress];
        bytesPerRow = [v8 bytesPerRow];
        width = [v8 width];
        height = [v8 height];
        allocationSize = [v8 allocationSize];
        v14 = v8;
        v15 = CGDataProviderCreateWithData(v14, baseAddress, allocationSize, releaseIOSurface);
        [v14 incrementUseCount];
        v16 = IOSurfaceCopyValue(v14, *MEMORY[0x1E696CEE0]);
        if (!v16 || (v17 = v16, v18 = CGColorSpaceCreateWithPropertyList(v16), CFRelease(v17), !v18))
        {
          v18 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        }

        v19 = CGImageCreate(width, height, 0xAuLL, 0x20uLL, bytesPerRow, v18, 0x42000u, v15, 0, 0, kCGRenderingIntentDefault);
        CGImageSetProperty();
        CGDataProviderRelease(v15);
        CGColorSpaceRelease(v18);
        if (v19)
        {
          selfCopy = [MEMORY[0x1E69DCAB8] imageWithCGImage:v19 scale:imageOrientation orientation:v6];
        }

        else
        {
          selfCopy = 0;
        }

        CGImageRelease(v19);
      }

      else
      {
        v20 = UICreateCGImageFromIOSurface();
        v21 = objc_alloc(MEMORY[0x1E69DCAB8]);
        [self scale];
        selfCopy = [v21 initWithCGImage:v20 scale:objc_msgSend(self orientation:{"imageOrientation"), v22}];
        CGImageRelease(v20);
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)pui_cropImageWithRect:()PosterUIFoundation outputSize:preservingAspectRatio:canUseIOSurface:
{
  v93 = *MEMORY[0x1E69E9840];
  v19 = PUILogRendering(self);
  v20 = os_signpost_id_generate(v19);

  v22 = PUILogRendering(v21);
  v23 = v22;
  v24 = v20 - 1;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v20, "pui_cropImage", &unk_1A8D256D3, buf, 2u);
  }

  v25 = *MEMORY[0x1E695EFF8];
  v26 = *(MEMORY[0x1E695EFF8] + 8);
  [self size];
  v100.size.width = v27;
  v100.size.height = v28;
  v95.origin.x = a2;
  v95.origin.y = a3;
  v95.size.width = a4;
  v95.size.height = a5;
  v100.origin.x = v25;
  v100.origin.y = v26;
  v29 = CGRectEqualToRect(v95, v100);
  v30 = v29;
  v31 = !v29;
  v32 = a5 != a7 || a4 != a6;
  v96.origin.x = a2;
  v96.origin.y = a3;
  v96.size.width = a4;
  v96.size.height = a5;
  IsEmpty = CGRectIsEmpty(v96);
  if (IsEmpty || !(v31 | v32) || (IsEmpty = BSFloatLessThanOrEqualToFloat(), (IsEmpty & 1) != 0) || (IsEmpty = BSFloatLessThanOrEqualToFloat(), IsEmpty))
  {
    v34 = PUILogRendering(IsEmpty);
    v35 = v34;
    if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 67110400;
      *&buf[4] = v31;
      *&buf[8] = 1024;
      *&buf[10] = v32;
      *&buf[14] = 2048;
      *v80 = a4;
      *&v80[8] = 2048;
      *&v80[10] = a5;
      *&v80[18] = 2048;
      *&v80[20] = a6;
      *&v80[28] = 2048;
      *&v80[30] = a7;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v35, OS_SIGNPOST_INTERVAL_END, v20, "pui_cropImage", "No work to do: needsCrop=%u, needsScale=%u, cropRect.size=(%f, %f), outputSize=(%f, %f)", buf, 0x36u);
    }

    selfCopy = self;
    goto LABEL_15;
  }

  imageOrientation = [self imageOrientation];
  v70 = *MEMORY[0x1E695EFD0];
  v73 = *(MEMORY[0x1E695EFD0] + 16);
  v40 = *(MEMORY[0x1E695EFD0] + 32);
  v39 = *(MEMORY[0x1E695EFD0] + 40);
  if (!imageOrientation)
  {
    v43 = 0;
    goto LABEL_25;
  }

  [self size];
  v43 = 0;
  if (imageOrientation > 7)
  {
LABEL_25:
    v45 = v70;
    v44 = v73;
    goto LABEL_28;
  }

  if (((1 << imageOrientation) & 0x22) != 0)
  {
    v43 = 0;
    v44 = xmmword_1A8D24B80;
    v45 = xmmword_1A8D24B90;
    v40 = 0;
    v39 = v42;
  }

  else if (((1 << imageOrientation) & 0x44) != 0)
  {
    v44 = xmmword_1A8D24BA0;
    v45 = xmmword_1A8D24BB0;
    v43 = 1;
    v39 = 0;
    v40 = v42;
  }

  else
  {
    v45 = v70;
    v44 = v73;
    if (((1 << imageOrientation) & 0x88) != 0)
    {
      v44 = xmmword_1A8D24B90;
      v45 = xmmword_1A8D24B80;
      v43 = 1;
      v40 = 0;
      v39 = v41;
    }
  }

LABEL_28:
  v71 = v45;
  v74 = v44;
  [self scale];
  memset(&v78, 0, sizeof(v78));
  v68 = v46;
  CGAffineTransformMakeScale(&v78, v46, v46);
  *buf = v71;
  *v80 = v74;
  *&v80[16] = v40;
  *&v80[24] = v39;
  t2 = v78;
  memset(&v77, 0, sizeof(v77));
  CGAffineTransformConcat(&v77, buf, &t2);
  *buf = *&v77.a;
  *v80 = *&v77.c;
  *&v80[16] = *&v77.tx;
  v97.origin.x = a2;
  v97.origin.y = a3;
  v97.size.width = a4;
  v97.size.height = a5;
  v98 = CGRectApplyAffineTransform(v97, buf);
  x = v98.origin.x;
  y = v98.origin.y;
  height = v98.size.height;
  width = v98.size.width;
  v75 = imageOrientation;
  if (!a10)
  {
    goto LABEL_47;
  }

  *buf = 0;
  v50 = PUICreateIOSurfaceForImage(self, buf, 1);
  v51 = v50;
  if (v50)
  {
    v67 = a10;
    v52 = v43 ? a7 * v78.c + v78.a * a6 : a7 * v78.d + v78.b * a6;
    v53 = v43 ? a7 * v78.d + v78.b * a6 : a7 * v78.c + v78.a * a6;
    v54 = __PUICreateCroppedIOSurface(v50, x, y, width, height, v53, v52);
    if (v54)
    {
      selfCopy = [MEMORY[0x1E69DCAB8] pui_imageWithIOSurface:v54 scale:v75 orientation:v68];
    }

    else
    {
      v55 = PUILogCommon(0);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        [UIImage(PosterUIFoundation) pui_cropImageWithRect:v55 outputSize:? preservingAspectRatio:? canUseIOSurface:?];
      }

      selfCopy = 0;
    }

    a10 = v67;
  }

  else
  {
    selfCopy = 0;
  }

  if (*buf)
  {
    CGImageBlockSetRelease();
  }

  imageOrientation = v75;
  if (!selfCopy)
  {
LABEL_47:
    v57 = PUILogCommon(v47);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      [UIImage(PosterUIFoundation) pui_cropImageWithRect:v57 outputSize:? preservingAspectRatio:? canUseIOSurface:?];
    }

    pui_CGImageBackedImage = [self pui_CGImageBackedImage];
    v59 = pui_CGImageBackedImage;
    if (v30)
    {
      v60 = 0;
      selfCopy = 0;
      if (!v32)
      {
        goto LABEL_57;
      }
    }

    else
    {
      cGImage = [pui_CGImageBackedImage CGImage];
      v99.origin.x = x;
      v99.origin.y = y;
      v99.size.height = height;
      v99.size.width = width;
      v60 = CGImageCreateWithImageInRect(cGImage, v99);
      selfCopy = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v60 scale:imageOrientation orientation:v68];
      if (!v32)
      {
LABEL_57:
        if (v60)
        {
          CGImageRelease(v60);
        }

        v56 = 1;
        goto LABEL_60;
      }
    }

    if (selfCopy)
    {
      v62 = selfCopy;
    }

    else
    {
      v62 = v59;
    }

    v63 = [v62 pui_resizeImageToSize:a9 preservingAspectRatio:{a6, a7}];

    selfCopy = v63;
    goto LABEL_57;
  }

  v56 = 0;
LABEL_60:
  v64 = PUILogRendering(v47);
  v65 = v64;
  if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
  {
    imageOrientation2 = [selfCopy imageOrientation];
    *buf = 67112192;
    *&buf[4] = selfCopy != 0;
    *&buf[8] = 1024;
    *&buf[10] = v31;
    *&buf[14] = 1024;
    *v80 = v32;
    *&v80[4] = 2048;
    *&v80[6] = a2;
    *&v80[14] = 2048;
    *&v80[16] = a3;
    *&v80[24] = 2048;
    *&v80[26] = a4;
    *&v80[34] = 2048;
    *&v80[36] = a5;
    v81 = 2048;
    v82 = a6;
    v83 = 2048;
    v84 = a7;
    v85 = 2048;
    v86 = v75;
    v87 = 2048;
    v88 = imageOrientation2;
    v89 = 1024;
    v90 = a10;
    v91 = 1024;
    v92 = v56;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v65, OS_SIGNPOST_INTERVAL_END, v20, "pui_cropImage", "Complete: success=%u needsCrop=%u, needsScale=%u, cropRect=((%f, %f), (%f, %f)), outputSize=(%f, %f), imageOrientation=%lu, outputImage.imageOrientation=%lu canUseIOSurface=%u, usedCPU=%u", buf, 0x70u);
  }

LABEL_15:

  return selfCopy;
}

- (id)pui_scaleImage:()PosterUIFoundation canUseIOSurface:
{
  if (fabs(a2 + -1.0) >= 2.22044605e-16)
  {
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
    [self size];
    v11 = v10;
    v13 = v12;
    [self size];
    v17 = v15;
    v18 = v14;
    CGAffineTransformMakeScale(&v19, a2, a2);
    selfCopy = [self pui_cropImageWithRect:a4 outputSize:v8 canUseIOSurface:{v9, v11, v13, vmlaq_n_f64(vmulq_n_f64(*&v19.c, v17), *&v19.a, v18)}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)pui_resizeImageToSize:()PosterUIFoundation preservingAspectRatio:
{
  [self size];
  if (v9 == a2 && v10 == a3)
  {
    selfCopy = self;
  }

  else
  {
    if (a5)
    {
      v12 = v9;
      v13 = v10;
      v14 = v9 / v10;
      if ((BSFloatApproximatelyEqualToFloat() & 1) == 0)
      {
        if (v12 >= v13)
        {
          a3 = floor(a2 * v14);
        }

        else
        {
          a2 = floor(a3 * v14);
        }
      }
    }

    selfCopy = [self pui_resizeImageToSize:{a2, a3}];
  }

  return selfCopy;
}

- (id)pui_resizeImageToSize:()PosterUIFoundation
{
  [self size];
  if (v7 == a2 && v6 == a3)
  {
    selfCopy = self;
    goto LABEL_26;
  }

  [self scale];
  v10 = v9;
  UIRectIntegralWithScale();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  cGImage = [self CGImage];
  v20 = MGGetBoolAnswer();
  v21 = v20;
  if (!cGImage || (v20 & 1) != 0)
  {
    if (v20)
    {
      BitsPerComponent = 16;
    }

    else
    {
      BitsPerComponent = 8;
    }

    if (v20)
    {
      v23 = 4353;
    }

    else
    {
      v23 = 1;
    }

    if (!cGImage)
    {
      goto LABEL_22;
    }

    if ((v20 ^ 1))
    {
      goto LABEL_22;
    }

    ColorSpace = CGImageGetColorSpace(cGImage);
    if (!ColorSpace)
    {
      goto LABEL_22;
    }

    v28 = ColorSpace;
    if (!CGColorSpaceIsWideGamutRGB(ColorSpace))
    {
      goto LABEL_22;
    }

    v24 = v28;
  }

  else
  {
    BitsPerComponent = CGImageGetBitsPerComponent(cGImage);
    v23 = CGImageGetBitmapInfo(cGImage) & 0xFFFFFFE0 | 1;
    v24 = CGImageGetColorSpace(cGImage);
  }

  v25 = CGColorSpaceRetain(v24);
  if (!v25)
  {
LABEL_22:
    v29 = MEMORY[0x1E695F110];
    if (!v21)
    {
      v29 = MEMORY[0x1E695F1C0];
    }

    v25 = CGColorSpaceCreateWithName(*v29);
  }

  v37.origin.x = v12;
  v37.origin.y = v14;
  v37.size.width = v16;
  v37.size.height = v18;
  v30 = (v10 * CGRectGetWidth(v37));
  v38.origin.x = v12;
  v38.origin.y = v14;
  v38.size.width = v16;
  v38.size.height = v18;
  v31 = (v10 * CGRectGetHeight(v38));
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v25);
  v33 = CGBitmapContextCreate(0, v30, v31, BitsPerComponent, (BitsPerComponent >> 3) * v30 + (BitsPerComponent >> 3) * v30 * NumberOfComponents, v25, v23);
  CGContextTranslateCTM(v33, 0.0, v31);
  CGContextScaleCTM(v33, v10, -v10);
  UIGraphicsPushContext(v33);
  [self drawInRect:{v12, v14, v16, v18}];
  UIGraphicsPopContext();
  Image = CGBitmapContextCreateImage(v33);
  CGColorSpaceRelease(v25);
  CGContextRelease(v33);
  selfCopy = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:v10];
  CGImageRelease(Image);
LABEL_26:

  return selfCopy;
}

- (CGImage)pui_colorSpace
{
  result = [self CGImage];
  if (result)
  {

    return CGImageGetColorSpace(result);
  }

  return result;
}

- (id)pui_imageByManipulatingInDeviceColorSpaceWithBlock:()PosterUIFoundation
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = CGColorSpaceRetain([self pui_colorSpace]);
    if (v6)
    {
      selfCopy = __PUIImageByApplyingColorSpace(self, 0);
    }

    else
    {
      selfCopy = self;
    }

    v9 = selfCopy;
    v10 = v4[2](v4, selfCopy);
    v11 = v10;
    if (v10)
    {
      selfCopy2 = __PUIImageByApplyingColorSpace(v10, v6);
    }

    else
    {
      selfCopy2 = 0;
    }

    CGColorSpaceRelease(v6);

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)pui_imageWithOrientation:()PosterUIFoundation
{
  if ([self imageOrientation] == a3)
  {
    selfCopy = self;
  }

  else
  {
    pui_wrappedIOSurface = [self pui_wrappedIOSurface];
    v7 = MEMORY[0x1E69DCAB8];
    if (pui_wrappedIOSurface)
    {
      [self scale];
      [v7 pui_imageWithIOSurface:pui_wrappedIOSurface scale:a3 orientation:?];
    }

    else
    {
      cGImage = [self CGImage];
      [self scale];
      [v7 imageWithCGImage:cGImage scale:a3 orientation:?];
    }
    selfCopy = ;
  }

  return selfCopy;
}

- (id)pui_imageHashData
{
  Hash = [self CGImage];
  if (Hash)
  {
    Hash = CGImageGetHash();
    v3 = Hash;
    if (Hash)
    {
      Hash = [MEMORY[0x1E695DEF0] dataWithBytes:&v3 length:8];
    }
  }

  return Hash;
}

- (uint64_t)pui_EXIFOrientation
{
  imageOrientation = [self imageOrientation];

  return MEMORY[0x1EEE4E0F0](imageOrientation);
}

+ (double)minimumWallpaperSizeForCurrentDevice
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v2 = v1;

  if ([MEMORY[0x1E69DD250] _motionEffectsEnabled])
  {
    v3 = PUIPosterParallaxRequiredOverhangForCurrentDeviceClass();
  }

  else
  {
    v3 = *MEMORY[0x1E695F060];
  }

  return v2 + v3 * 2.0;
}

+ (id)pui_thumbnailImageForImage:()PosterUIFoundation thumbnailWidthInPixels:
{
  v6 = a4;
  [v6 scale];
  v8 = v7;
  [v6 size];
  v10 = 0;
  if (v11 > 0.0 && v9 > 0.0)
  {
    v12 = objc_autoreleasePoolPush();
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v15 = v14;

    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 _referenceBounds];
    v18 = v17;
    v20 = v19;

    v32 = a2;
    v21 = v15 * v18;
    v22 = v15 * v20;
    [self minimumWallpaperSizeForCurrentDevice];
    UIRectCenteredIntegralRect();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    CGAffineTransformMakeScale(&v33, v15, v15);
    CGAffineTransformInvert(&v34, &v33);
    v36.origin.x = v24;
    v36.origin.y = v26;
    v36.size.width = v28;
    v36.size.height = v30;
    v37 = CGRectApplyAffineTransform(v36, &v34);
    v10 = [v6 pui_cropImageWithRect:0 outputSize:v37.origin.x preservingAspectRatio:{v37.origin.y, v37.size.width, v37.size.height, round(v32) * (v15 / v8) / v15, v15 / v8 * round(v22 * (v32 / v21)) / v15}];
    objc_autoreleasePoolPop(v12);
  }

  return v10;
}

- (BOOL)pui_canDetermineProminentColor
{
  [self size];
  if (v3 == *MEMORY[0x1E695F060] && v2 == *(MEMORY[0x1E695F060] + 8))
  {
    return 0;
  }

  pui_wrappedIOSurface = [self pui_wrappedIOSurface];
  if (!pui_wrappedIOSurface)
  {
    return [self CGImage] != 0;
  }

  oldState = 0;
  return IOSurfaceSetPurgeable(pui_wrappedIOSurface, 3u, &oldState) || oldState == 0;
}

- (uint64_t)pui_imageHasNoContent
{
  [self size];
  if (v3 < 1.0 || v2 < 1.0)
  {
    return 1;
  }

  pui_averageColor = [self pui_averageColor];
  v9 = 0;
  v10 = 0;
  [pui_averageColor getWhite:&v9 alpha:&v10];
  v7 = BSFloatLessThanOrEqualToFloat();
  if (v7)
  {
    v5 = 1;
  }

  else
  {
    v5 = BSFloatLessThanOrEqualToFloat();
  }

  return v5;
}

- (uint64_t)pui_averageColor
{
  [self size];
  BSRectWithSize();

  return [self pui_averageColorForRect:?];
}

- (id)pui_averageColorForRect:()PosterUIFoundation
{
  v31[2] = *MEMORY[0x1E69E9840];
  [self size];
  v11 = v10;
  v13 = v12;
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  if (CGRectGetMaxX(v33) <= v11 && (v34.origin.x = a2, v34.origin.y = a3, v34.size.width = a4, v34.size.height = a5, CGRectGetMaxY(v34) <= v13) && ((v15 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:{objc_msgSend(self, "CGImage")}]) != 0 || (v15 = objc_msgSend(objc_alloc(MEMORY[0x1E695F658]), "initWithIOSurface:", objc_msgSend(self, "pui_wrappedIOSurface"))) != 0))
  {
    v16 = v15;
    v17 = [objc_alloc(MEMORY[0x1E695F688]) initWithCGRect:{a2, a3, a4, a5}];
    v18 = MEMORY[0x1E695F648];
    v19 = *MEMORY[0x1E695FAA8];
    v30[0] = *MEMORY[0x1E695FAB0];
    v30[1] = v19;
    v31[0] = v16;
    v31[1] = v17;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v21 = [v18 filterWithName:@"CIAreaAverage" withInputParameters:v20];

    outputImage = [v21 outputImage];
    if (outputImage)
    {
      v29 = 0;
      context = [MEMORY[0x1E695F620] context];
      [context render:outputImage toBitmap:&v29 rowBytes:4 bounds:*MEMORY[0x1E695F910] format:objc_msgSend(self colorSpace:{"pui_colorSpace"), 0.0, 0.0, 1.0, 1.0}];

      LOBYTE(v25) = BYTE1(v29);
      LOBYTE(v24) = v29;
      LOBYTE(v27) = HIBYTE(v29);
      LOBYTE(v26) = BYTE2(v29);
      v14 = [MEMORY[0x1E69DC888] colorWithRed:v24 / 255.0 green:v25 / 255.0 blue:v26 / 255.0 alpha:v27 / 255.0];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (uint64_t)pui_isSolidColor:()PosterUIFoundation
{
  [self size];
  v7 = v6;
  v8 = v5;
  if (v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8))
  {
    return 0;
  }

  selfCopy = self;
  if (v7 > 100.0 || v8 > 100.0)
  {
    v12 = [MEMORY[0x1E69DCAB8] pui_thumbnailImageForImage:selfCopy thumbnailWidthInPixels:100.0];

    selfCopy = v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  [selfCopy size];
  v14 = v13;
  *&v13 = v15 / 10.0;
  v16 = vcvtms_u32_f32(*&v13);
  if (!v16)
  {

    v12 = 0;
    selfCopy = 0;
    goto LABEL_23;
  }

  v17 = 0;
  v12 = 0;
  while (1)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = [selfCopy pui_averageColorForRect:{0.0, v17 * 10.0, v14, 10.0}];
    v20 = v19;
    if (!v12)
    {
      v12 = v19;
      goto LABEL_16;
    }

    if (([v12 _isSimilarToColor:v19 withinPercentage:0.01] & 1) == 0)
    {
      break;
    }

LABEL_16:

    objc_autoreleasePoolPop(v18);
    if (v16 == ++v17)
    {
      goto LABEL_20;
    }
  }

  objc_autoreleasePoolPop(v18);
LABEL_20:

  selfCopy = v12 != 0;
  if (a3 && v12)
  {
    v21 = v12;
    *a3 = v12;
    selfCopy = 1;
  }

LABEL_23:

  return selfCopy;
}

- (void)pui_determineProminentColorWithCompletion:()PosterUIFoundation
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v7 = [bundleIdentifier isEqualToString:@"com.apple.SBRendererService"];

    if (v7)
    {
      v8 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A588];
      v24[0] = @"Not allowed to be called from within SBRendererService";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v10 = [v8 errorWithDomain:@"PRUIS" code:-1 userInfo:v9];
      v4[2](v4, 0, v10);
    }

    else
    {
      v20 = 0;
      v10 = [[PUICodableImage alloc] initWithUIImage:self error:&v20];
      v11 = v20;
      v9 = v11;
      if (v11 || !v10)
      {
        if (v11)
        {
          v4[2](v4, 0, v11);
        }

        else
        {
          v15 = MEMORY[0x1E696ABC0];
          v21 = *MEMORY[0x1E696A588];
          v22 = @"unable to convert image to codable image";
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          v17 = [v15 errorWithDomain:@"UIImage+PosterUIFoundation" code:-1 userInfo:v16];
          v4[2](v4, 0, v17);
        }
      }

      else
      {
        if (pui_determineProminentColorWithCompletion__onceToken != -1)
        {
          [UIImage(PosterUIFoundation) pui_determineProminentColorWithCompletion:];
        }

        v12 = [[PUIAnalysisServiceRequest alloc] initWithImage:v10 analysis:@"PUIAnalysis_DETERMINE_PROMINENT_COLOR"];
        v13 = pui_determineProminentColorWithCompletion__service;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __73__UIImage_PosterUIFoundation__pui_determineProminentColorWithCompletion___block_invoke_2;
        v18[3] = &unk_1E7854748;
        v19 = v4;
        v14 = [v13 executeAnalysisRequest:v12 completion:v18];
      }
    }
  }
}

@end