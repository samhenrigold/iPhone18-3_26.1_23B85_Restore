@interface UIImage(PLKAdditions)
+ (void)plk_imageWithIOSurface:()PLKAdditions scale:orientation:;
- (CGImage)plk_colorSpace;
- (id)plk_resizeImageToSize:()PLKAdditions;
- (id)plk_resizeImageToSize:()PLKAdditions preservingAspectRatio:;
- (void)plk_CGImageBackedImageWithMaximumBitsPerComponent:()PLKAdditions skipCIF10FitsInSRGBCheck:;
- (void)plk_cropImageWithRect:()PLKAdditions outputSize:preservingAspectRatio:canUseIOSurface:;
- (void)plk_wrappedIOSurface;
@end

@implementation UIImage(PLKAdditions)

+ (void)plk_imageWithIOSurface:()PLKAdditions scale:orientation:
{
  v6 = a4;
  if ([v6 pixelFormat] == 1380411457)
  {
    v7 = v6;
    [v7 lockWithOptions:? seed:?];
    baseAddress = [v7 baseAddress];
    bytesPerRow = [v7 bytesPerRow];
    width = [v7 width];
    height = [v7 height];
    allocationSize = [v7 allocationSize];
    v13 = v7;
    v14 = CGDataProviderCreateWithData(v13, baseAddress, allocationSize, ___PLKReleaseIOSurface);
    [v13 incrementUseCount];
    v15 = IOSurfaceCopyValue(v13, *MEMORY[0x277CD29C0]);
    if (!v15 || (v16 = v15, v17 = CGColorSpaceCreateWithPropertyList(v15), CFRelease(v16), !v17))
    {
      v17 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    }

    v18 = CGImageCreate(width, height, 0x10uLL, 0x40uLL, bytesPerRow, v17, 0x1101u, v14, 0, 1, kCGRenderingIntentDefault);
    CGImageSetProperty();
    CGDataProviderRelease(v14);
    CGColorSpaceRelease(v17);
    if (v18)
    {
      v19 = [MEMORY[0x277D755B8] imageWithCGImage:? scale:? orientation:?];
    }

    else
    {
      v19 = 0;
    }

    CGImageRelease(v18);
  }

  else
  {
    v19 = [[self alloc] _initWithIOSurface:? scale:? orientation:?];
  }

  return v19;
}

- (void)plk_wrappedIOSurface
{
  ioSurface = [self ioSurface];
  if (ioSurface)
  {
    v3 = ioSurface;
  }

  else
  {
    v3 = PLKIOSurfaceFromCGImage([self CGImage], 0);
  }

  return v3;
}

- (void)plk_cropImageWithRect:()PLKAdditions outputSize:preservingAspectRatio:canUseIOSurface:
{
  v122 = *MEMORY[0x277D85DE8];
  v18 = PLKLogRendering(self);
  v19 = os_signpost_id_generate(v18);

  v21 = PLKLogRendering(v20);
  v22 = v21;
  v23 = v19 - 1;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21E5D5000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "plk_cropImage", &unk_21E5F550D, buf, 2u);
  }

  v24 = *MEMORY[0x277CBF348];
  v25 = *(MEMORY[0x277CBF348] + 8);
  [self size];
  v129.size.width = v26;
  v129.size.height = v27;
  v124.origin.x = a2;
  v124.origin.y = a3;
  v124.size.width = a4;
  v124.size.height = a5;
  v129.origin.x = v24;
  v129.origin.y = v25;
  v28 = CGRectEqualToRect(v124, v129);
  v29 = v28;
  v30 = !v28;
  v31 = a5 != a7 || a4 != a6;
  v125.origin.x = a2;
  v125.origin.y = a3;
  v125.size.width = a4;
  v125.size.height = a5;
  IsEmpty = CGRectIsEmpty(v125);
  if (IsEmpty || !(v30 | v31) || (IsEmpty = BSFloatLessThanOrEqualToFloat(), (IsEmpty & 1) != 0) || (IsEmpty = BSFloatLessThanOrEqualToFloat(), IsEmpty))
  {
    v33 = PLKLogRendering(IsEmpty);
    v34 = v33;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *buf = 67110400;
      *&buf[4] = v30;
      *&buf[8] = 1024;
      *&buf[10] = v31;
      *&buf[14] = 2048;
      *v105 = a4;
      *&v105[8] = 2048;
      *&v105[10] = a5;
      *&v105[18] = 2048;
      *&v105[20] = a6;
      *&v105[28] = 2048;
      *&v105[30] = a7;
      _os_signpost_emit_with_name_impl(&dword_21E5D5000, v34, OS_SIGNPOST_INTERVAL_END, v19, "pui_cropImage", "No work to do: needsCrop=%u, needsScale=%u, cropRect.size=(%f, %f), outputSize=(%f, %f)", buf, 0x36u);
    }

    selfCopy = self;
    goto LABEL_15;
  }

  imageOrientation = [self imageOrientation];
  rect = *MEMORY[0x277CBF2C0];
  v99 = *(MEMORY[0x277CBF2C0] + 16);
  v38 = *(MEMORY[0x277CBF2C0] + 32);
  v39 = *(MEMORY[0x277CBF2C0] + 40);
  v95 = imageOrientation;
  if (!imageOrientation)
  {
    v43 = 0;
    goto LABEL_25;
  }

  v40 = imageOrientation;
  [self size];
  v43 = 0;
  if (v40 > 7)
  {
LABEL_25:
    v45 = rect;
    v44 = v99;
    goto LABEL_28;
  }

  if (((1 << v40) & 0x22) != 0)
  {
    v43 = 0;
    v44 = xmmword_21E5F3DE0;
    v45 = xmmword_21E5F3DF0;
    v38 = 0;
    v39 = v42;
  }

  else if (((1 << v40) & 0x44) != 0)
  {
    v44 = xmmword_21E5F3E00;
    v45 = xmmword_21E5F3E10;
    v43 = 1;
    v39 = 0;
    v38 = v42;
  }

  else
  {
    v45 = rect;
    v44 = v99;
    if (((1 << v40) & 0x88) != 0)
    {
      v44 = xmmword_21E5F3DF0;
      v45 = xmmword_21E5F3DE0;
      v43 = 1;
      v38 = 0;
      v39 = v41;
    }
  }

LABEL_28:
  rectb = v45;
  v100 = v44;
  v94 = v43;
  [self scale];
  memset(&v103, 0, sizeof(v103));
  CGAffineTransformMakeScale(&v103, v46, v46);
  memset(&v102, 0, sizeof(v102));
  *buf = rectb;
  *v105 = v100;
  *&v105[16] = v38;
  *&v105[24] = v39;
  t2 = v103;
  CGAffineTransformConcat(&v102, buf, &t2);
  *buf = *&v102.a;
  *v105 = *&v102.c;
  *&v105[16] = *&v102.tx;
  v126.origin.x = a2;
  v126.origin.y = a3;
  v126.size.width = a4;
  v126.size.height = a5;
  v127 = CGRectApplyAffineTransform(v126, buf);
  x = v127.origin.x;
  y = v127.origin.y;
  width = v127.size.width;
  recta = v127.size.height;
  if (!a10)
  {
    goto LABEL_50;
  }

  selfCopy2 = self;
  plk_wrappedIOSurface = [selfCopy2 plk_wrappedIOSurface];
  if (plk_wrappedIOSurface)
  {
    v52 = plk_wrappedIOSurface;

    v91 = 0;
    goto LABEL_31;
  }

  v89 = y;
  v90 = x;
  [selfCopy2 scale];
  v57 = v56;
  [selfCopy2 size];
  v59 = v58;
  if (MEMORY[0x223D5F5C0](*MEMORY[0x277CD2B88]) < vcvtpd_u64_f64(v57 * v60) || MEMORY[0x223D5F5C0](*MEMORY[0x277CD2A28]) < vcvtpd_u64_f64(v57 * v59))
  {

    y = v89;
    x = v90;
    goto LABEL_50;
  }

  v73 = PLKIOSurfaceFromCGImage([selfCopy2 CGImage], 1);
  if (v73)
  {
    v74 = v73;
    v91 = 0;
    buffera = v73;
    y = v89;
    x = v90;
    goto LABEL_85;
  }

  cGImage = [selfCopy2 CGImage];
  if (CGImageGetBitsPerComponent(cGImage) > 8)
  {
    goto LABEL_80;
  }

  CGImageGetWidth(cGImage);
  CGImageGetHeight(cGImage);
  if (!CGImageGetImageProvider())
  {
    goto LABEL_80;
  }

  v76 = *MEMORY[0x277CBED28];
  v77 = *MEMORY[0x277CBF530];
  v119 = *MEMORY[0x277CBF540];
  v120 = v77;
  v78 = *MEMORY[0x277CBF528];
  t2.a = v76;
  t2.b = v78;
  v121 = *MEMORY[0x277CBF538];
  t2.c = v76;
  v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v79 = CGImageProviderCopyImageBlockSetWithOptions();
  if (!v79)
  {

LABEL_80:
    v91 = 0;
LABEL_81:
    MGGetBoolAnswer();
    [selfCopy2 size];
    [selfCopy2 scale];
    [selfCopy2 plk_colorSpace];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *v105 = __PLKCreateIOSurfaceForImage_block_invoke;
    *&v105[8] = &unk_27835B470;
    *&v105[16] = selfCopy2;
    v84 = BSUISurfaceWithColorSpaceAndDrawBlock();
    v85 = v84;
    if (v84)
    {
      [__IOSurface setAttachment:v84 forKey:"setAttachment:forKey:"];
    }

    y = v89;
    x = v90;
    buffera = v85;
    goto LABEL_84;
  }

  v91 = v79;
  CGImageBlockSetGetImageBlock();
  BytesPerRow = CGImageBlockGetBytesPerRow();
  CGImageBlockGetData();
  buffera = IOSurfaceWrapClientImage();
  ColorSpace = CGImageProviderGetColorSpace();
  y = v89;
  x = v90;
  if (ColorSpace)
  {
    v81 = ColorSpace;
    space = CGColorSpaceCreateDeviceRGB();
    if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
    {
      v82 = CGColorSpaceCopyPropertyList(v81);
      if (v82)
      {
        v83 = v82;
        IOSurfaceSetValue(buffera, *MEMORY[0x277CD29C0], v82);
        CFRelease(v83);
      }
    }

    CGColorSpaceRelease(space);
  }

  if (!buffera)
  {
    goto LABEL_81;
  }

  [__IOSurface setAttachment:"setAttachment:forKey:" forKey:?];
LABEL_84:
  v74 = 0;
LABEL_85:

  v52 = buffera;
  if (!buffera)
  {
    selfCopy = 0;
    goto LABEL_46;
  }

LABEL_31:
  if (v94)
  {
    v53 = a7 * v103.c + v103.a * a6;
  }

  else
  {
    v53 = a7 * v103.d + v103.b * a6;
  }

  if (v94)
  {
    v54 = a7 * v103.d + v103.b * a6;
  }

  else
  {
    v54 = a7 * v103.c + v103.a * a6;
  }

  buffer = v52;
  v55 = __PLKCreateCroppedIOSurface(v52, x, y, width, recta, v54, v53);
  if (v55)
  {
    selfCopy = [MEMORY[0x277D755B8] plk_imageWithIOSurface:? scale:? orientation:?];
  }

  else
  {
    v61 = PLKLogCommon(0);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      [UIImage(PLKAdditions) plk_cropImageWithRect:v61 outputSize:? preservingAspectRatio:? canUseIOSurface:?];
    }

    selfCopy = 0;
  }

LABEL_46:
  v47 = v91;
  if (v91)
  {
    v47 = CGImageBlockSetRelease();
  }

  if (!selfCopy)
  {
LABEL_50:
    v63 = PLKLogRendering(v47);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      [UIImage(PLKAdditions) plk_cropImageWithRect:v63 outputSize:? preservingAspectRatio:? canUseIOSurface:?];
    }

    plk_CGImageBackedImage = [self plk_CGImageBackedImage];
    v65 = plk_CGImageBackedImage;
    if (v29)
    {
      v66 = 0;
      selfCopy = 0;
      if (!v31)
      {
        goto LABEL_60;
      }
    }

    else
    {
      cGImage2 = [plk_CGImageBackedImage CGImage];
      v128.origin.x = x;
      v128.origin.y = y;
      v128.size.width = width;
      v128.size.height = recta;
      v66 = CGImageCreateWithImageInRect(cGImage2, v128);
      selfCopy = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:? scale:? orientation:?];
      if (!v31)
      {
LABEL_60:
        if (v66)
        {
          CGImageRelease(v66);
        }

        v62 = 1;
        goto LABEL_63;
      }
    }

    if (selfCopy)
    {
      v68 = selfCopy;
    }

    else
    {
      v68 = v65;
    }

    v69 = [v68 plk_resizeImageToSize:BytesPerRow preservingAspectRatio:?];

    selfCopy = v69;
    goto LABEL_60;
  }

  v62 = 0;
LABEL_63:
  v70 = PLKLogRendering(v47);
  v71 = v70;
  if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
  {
    imageOrientation2 = [selfCopy imageOrientation];
    *buf = 67112192;
    *&buf[4] = selfCopy != 0;
    *&buf[8] = 1024;
    *&buf[10] = v30;
    *&buf[14] = 1024;
    *v105 = v31;
    *&v105[4] = 2048;
    *&v105[6] = a2;
    *&v105[14] = 2048;
    *&v105[16] = a3;
    *&v105[24] = 2048;
    *&v105[26] = a4;
    *&v105[34] = 2048;
    *&v105[36] = a5;
    v106 = 2048;
    v107 = a6;
    v108 = 2048;
    v109 = a7;
    v110 = 2048;
    v111 = v95;
    v112 = 2048;
    v113 = imageOrientation2;
    v114 = 1024;
    v115 = a10;
    v116 = 1024;
    v117 = v62;
    _os_signpost_emit_with_name_impl(&dword_21E5D5000, v71, OS_SIGNPOST_INTERVAL_END, v19, "plk_cropImage", "Complete: success=%u needsCrop=%u, needsScale=%u, cropRect=((%f, %f), (%f, %f)), outputSize=(%f, %f), imageOrientation=%lu, outputImage.imageOrientation=%lu canUseIOSurface=%u, usedCPU=%u", buf, 0x70u);
  }

LABEL_15:

  return selfCopy;
}

- (id)plk_resizeImageToSize:()PLKAdditions preservingAspectRatio:
{
  [self size];
  if (v10 == a2 && v9 == a3)
  {
    selfCopy = self;
  }

  else
  {
    if (a5)
    {
      BSFloatApproximatelyEqualToFloat();
    }

    selfCopy = [self plk_resizeImageToSize:?];
  }

  return selfCopy;
}

- (void)plk_CGImageBackedImageWithMaximumBitsPerComponent:()PLKAdditions skipCIF10FitsInSRGBCheck:
{
  if ([self CGImage])
  {
    selfCopy = self;
  }

  else
  {
    ioSurface = [self ioSurface];
    v8 = ioSurface;
    if (ioSurface)
    {
      pixelFormat = [ioSurface pixelFormat];
      if (a3 <= 8 && pixelFormat == 1999843442)
      {
        v14 = [MEMORY[0x277CCABB0] numberWithBool:?];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

        v11 = CGImageCreateFromIOSurface();
      }

      else
      {
        v11 = UICreateCGImageFromIOSurface();
      }

      v12 = objc_alloc(MEMORY[0x277D755B8]);
      [self scale];
      [self imageOrientation];
      selfCopy = [v12 initWithCGImage:? scale:? orientation:?];
      CGImageRelease(v11);
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)plk_resizeImageToSize:()PLKAdditions
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
    v29 = MEMORY[0x277CBF430];
    if (!v21)
    {
      v29 = MEMORY[0x277CBF4B8];
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
  [self drawInRect:?];
  UIGraphicsPopContext();
  Image = CGBitmapContextCreateImage(v33);
  CGColorSpaceRelease(v25);
  CGContextRelease(v33);
  selfCopy = [MEMORY[0x277D755B8] imageWithCGImage:? scale:? orientation:?];
  CGImageRelease(Image);
LABEL_26:

  return selfCopy;
}

- (CGImage)plk_colorSpace
{
  result = [self CGImage];
  if (result)
  {

    return CGImageGetColorSpace(result);
  }

  return result;
}

@end