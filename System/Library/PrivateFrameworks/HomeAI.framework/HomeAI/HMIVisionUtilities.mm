@interface HMIVisionUtilities
+ (BOOL)isPixelFormatCompressed:(unsigned int)compressed;
+ (CGRect)applyPadding:(CGRect)padding withOriginalSize:(CGSize)size padding:(CGSize)a5;
+ (CGRect)imposeMinSizeFor:(CGRect)for withOriginalSize:(CGSize)size minCrop:(CGSize)crop;
+ (CGRect)maintainAspectRatio:(CGRect)ratio originalSize:(CGSize)size ratioThreshold:(float)threshold;
+ (__CVBuffer)createPixelBufferFromImageData:(id)data error:(id *)error;
+ (__CVBuffer)createPixelBufferFromJPEGData:(id)data error:(id *)error;
+ (__CVBuffer)createPixelBufferFromJPEGDataProvider:(CGDataProvider *)provider error:(id *)error;
+ (__CVBuffer)createPixelBufferFromJPEGPath:(id)path error:(id *)error;
+ (__CVBuffer)createPixelBufferWithSize:(CGSize)size pixelFormat:(unsigned int)format useIOSurface:(BOOL)surface;
+ (__CVBuffer)cropPixelBuffer:(__CVBuffer *)buffer crop:(CGRect)crop error:(id *)error;
+ (__CVBuffer)cropPixelBuffer:(__CVBuffer *)buffer crop:(CGRect)crop options:(int64_t)options error:(id *)error;
+ (__CVBuffer)resizePixelBuffer:(__CVBuffer *)buffer size:(CGSize)size error:(id *)error;
+ (__CVBuffer)transferPixelBuffer:(__CVBuffer *)buffer crop:(CGRect)crop size:(CGSize)size pixelFormat:(unsigned int)format options:(int64_t)options error:(id *)error;
+ (__CVBuffer)transferPixelBuffer:(__CVBuffer *)buffer pixelFormat:(unsigned int)format options:(int64_t)options error:(id *)error;
+ (__CVBuffer)transferPixelBuffer:(__CVBuffer *)buffer rotationAngle:(float)angle crop:(CGRect)crop size:(CGSize)size precision:(unint64_t)precision error:(id *)error;
+ (id)createJPEGDataFromPixelBuffer:(__CVBuffer *)buffer scale:(float)scale encodeQuality:(float)quality error:(id *)error;
+ (void)releaseCachedVisionResources;
@end

@implementation HMIVisionUtilities

+ (__CVBuffer)cropPixelBuffer:(__CVBuffer *)buffer crop:(CGRect)crop error:(id *)error
{
  CVPixelBufferGetPixelFormatType(buffer);

  return [self transferPixelBuffer:? crop:? size:? pixelFormat:? options:? error:?];
}

+ (__CVBuffer)cropPixelBuffer:(__CVBuffer *)buffer crop:(CGRect)crop options:(int64_t)options error:(id *)error
{
  CVPixelBufferGetPixelFormatType(buffer);

  return [self transferPixelBuffer:? crop:? size:? pixelFormat:? options:? error:?];
}

+ (__CVBuffer)resizePixelBuffer:(__CVBuffer *)buffer size:(CGSize)size error:(id *)error
{
  CVPixelBufferGetPixelFormatType(buffer);

  return [self transferPixelBuffer:? crop:? size:? pixelFormat:? options:? error:?];
}

+ (__CVBuffer)transferPixelBuffer:(__CVBuffer *)buffer pixelFormat:(unsigned int)format options:(int64_t)options error:(id *)error
{
  HMICVPixelBufferGetSize(buffer);

  return [self transferPixelBuffer:? crop:? size:? pixelFormat:? options:? error:?];
}

+ (__CVBuffer)transferPixelBuffer:(__CVBuffer *)buffer crop:(CGRect)crop size:(CGSize)size pixelFormat:(unsigned int)format options:(int64_t)options error:(id *)error
{
  optionsCopy = options;
  height = size.height;
  width = size.width;
  v13 = crop.size.height;
  v14 = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  bufferCopy = buffer;
  IOSurface = CVPixelBufferGetIOSurface(buffer);
  if (optionsCopy)
  {
    v20 = 1;
  }

  else
  {
    v20 = [HMIVisionUtilities isPixelFormatCompressed:?];
  }

  Size = HMICVPixelBufferGetSize(bufferCopy);
  v23 = v22;
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = v14;
  v60.size.height = v13;
  if (CGRectIsNull(v60))
  {
    v24 = 0;
  }

  else
  {
    v63.origin.x = HMICGRectMakeWithSize();
    v63.origin.y = v25;
    v63.size.width = v26;
    v63.size.height = v27;
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = v14;
    v61.size.height = v13;
    v24 = !CGRectEqualToRect(v61, v63);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(bufferCopy);
  if (v24 || PixelFormatType != format || Size != width || v23 != height || v20 != (IOSurface != 0))
  {
    pixelTransferSessionOut = 0;
    v59 = [[HMISignpost alloc] initWithName:?];
    if ((optionsCopy & 8) != 0)
    {
      v30 = width * 2.1;
      v31 = height * 2.1;
      if (v24)
      {
        if (v14 <= v30 || v13 <= v31)
        {
          v29 = 0;
          v24 = 1;
          goto LABEL_30;
        }
      }

      else if (Size <= v30 || v23 <= v31)
      {
        v29 = 0;
        v24 = 0;
        goto LABEL_30;
      }

      v34 = [HMIVisionUtilities transferPixelBuffer:"transferPixelBuffer:crop:size:pixelFormat:options:error:" crop:? size:? pixelFormat:? options:? error:?];
      v24 = 0;
      if (!v34)
      {
        v35 = 0;
        goto LABEL_39;
      }

      v29 = 1;
      bufferCopy = v34;
    }

    else
    {
      v29 = 0;
    }

LABEL_30:
    v35 = [self createPixelBufferWithSize:? pixelFormat:? useIOSurface:?];
    if (v35)
    {
      v36 = VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
      if (v36)
      {
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:v36];
        v38 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
        v39 = v38;
        if (error)
        {
          v40 = v38;
          *error = v39;
        }
      }

      else
      {
        if (!v24)
        {
          goto LABEL_75;
        }

        v62.origin.x = x;
        v62.origin.y = y;
        v62.size.width = v14;
        v62.size.height = v13;
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v62);
        v46 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE28B8], DictionaryRepresentation);
        if (DictionaryRepresentation)
        {
          CFRelease(DictionaryRepresentation);
        }

        if (v46)
        {
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:v46];
          v47 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
          v39 = v47;
          if (error)
          {
            v48 = v47;
            *error = v39;
          }
        }

        else
        {
LABEL_75:
          if ((optionsCopy & 2) != 0 && (v49 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE2880], *MEMORY[0x277CBED28]), v49))
          {
            v37 = [MEMORY[0x277CCACA8] stringWithFormat:v49];
            v50 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
            v39 = v50;
            if (error)
            {
              v51 = v50;
              *error = v39;
            }
          }

          else if ((optionsCopy & 4) != 0 && (v52 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE2888], *MEMORY[0x277CBED28]), v52))
          {
            v37 = [MEMORY[0x277CCACA8] stringWithFormat:v52];
            v53 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
            v39 = v53;
            if (error)
            {
              v54 = v53;
              *error = v39;
            }
          }

          else
          {
            CVPixelBufferLockBaseAddress(bufferCopy, 1uLL);
            v55 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, bufferCopy, v35);
            CVPixelBufferUnlockBaseAddress(bufferCopy, 1uLL);
            if (!v55)
            {
              VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
              if (pixelTransferSessionOut)
              {
                CFRelease(pixelTransferSessionOut);
              }

              if (v29)
              {
                CVPixelBufferRelease(bufferCopy);
              }

              goto LABEL_45;
            }

            v37 = [MEMORY[0x277CCACA8] stringWithFormat:v55];
            v56 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
            v39 = v56;
            if (error)
            {
              v57 = v56;
              *error = v39;
            }
          }
        }
      }

      HMIErrorLogC(v39);
    }

    else
    {
      v41 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:?];
      v42 = v41;
      if (error)
      {
        v43 = v41;
        *error = v42;
      }

      HMIErrorLogC(v42);

      v35 = 0;
    }

    v24 = v29;
LABEL_39:
    CVPixelBufferRelease(v35);
    if (v24)
    {
      CVPixelBufferRelease(bufferCopy);
    }

    if (pixelTransferSessionOut)
    {
      VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
      if (pixelTransferSessionOut)
      {
        CFRelease(pixelTransferSessionOut);
      }
    }

    v35 = 0;
LABEL_45:
    __HMISignpostScopeLeave(&v59);

    return v35;
  }

  CVPixelBufferRetain(bufferCopy);
  return bufferCopy;
}

+ (id)createJPEGDataFromPixelBuffer:(__CVBuffer *)buffer scale:(float)scale encodeQuality:(float)quality error:(id *)error
{
  v31[17] = *MEMORY[0x277D85DE8];
  theBuffer = 0;
  v31[0] = [[HMISignpost alloc] initWithName:?];
  cf = 0;
  data = [MEMORY[0x277CBEB28] data];
  v10 = MEMORY[0x277CBEC38];
  v11 = *MEMORY[0x277CF6D60];
  v31[13] = *MEMORY[0x277CF6D68];
  v31[14] = v11;
  v31[15] = MEMORY[0x277CBEC38];
  v31[16] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  if (CMPhotoCompressionSessionCreate())
  {
    v13 = 0;
LABEL_4:
    v15 = 0;
    goto LABEL_5;
  }

  v14 = *MEMORY[0x277CF6CD8];
  v31[9] = *MEMORY[0x277CF6CE0];
  v31[10] = v14;
  v31[11] = &unk_284074F28;
  v31[12] = &unk_284074F40;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  if (CMPhotoCompressionSessionOpenEmptyContainer())
  {
    goto LABEL_4;
  }

  HMICVPixelBufferGetSize(buffer);
  if (scale > 0.0 && scale < 1.0)
  {
    CGAffineTransformMakeScale(&v28, scale, scale);
  }

  v17 = MEMORY[0x277CBEB38];
  v18 = *MEMORY[0x277CF6D08];
  v31[3] = *MEMORY[0x277CF6CF0];
  v31[4] = v18;
  v31[6] = &unk_284074F58;
  v31[7] = v10;
  v31[5] = *MEMORY[0x277CF6D20];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
  v31[8] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v15 = [v17 dictionaryWithDictionary:?];

  if (quality <= 0.0 || quality > 1.0)
  {
    [v15 setObject:? forKeyedSubscript:?];
    [v15 setObject:? forKeyedSubscript:?];
  }

  else
  {
    [v15 setObject:? forKeyedSubscript:?];
    v31[1] = *MEMORY[0x277CF6DD8];
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    v31[2] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [v15 setObject:? forKeyedSubscript:?];
  }

  if (!CMPhotoCompressionSessionAddImage() || ([MEMORY[0x277CBEB38] dictionaryWithDictionary:0], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "setObject:forKey:"), v24 = CMPhotoCompressionSessionAddImage(), v23, !v24))
  {
    if (!CMPhotoCompressionSessionCloseContainerAndCopyBacking())
    {
      v25 = theBuffer;
      DataLength = CMBlockBufferGetDataLength(theBuffer);
      v27 = malloc_type_malloc(DataLength, 0x9C4C29C1uLL);
      CMBlockBufferCopyDataBytes(v25, 0, DataLength, v27);
      CFRelease(v25);
      [data appendBytes:? length:?];
      free(v27);
    }
  }

LABEL_5:
  CMPhotoCompressionSessionDiscardCaches();
  CMPhotoCompressionSessionReleaseHardwareResources();
  CMPhotoCompressionSessionInvalidate();
  if (cf)
  {
    CFRelease(cf);
  }

  __HMISignpostScopeLeave(v31);

  return data;
}

+ (__CVBuffer)createPixelBufferFromJPEGDataProvider:(CGDataProvider *)provider error:(id *)error
{
  if (!provider || (v6 = CGImageCreateWithJPEGDataProvider(provider, 0, 0, kCGRenderingIntentDefault)) == 0)
  {
    v19 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:?];
    v20 = v19;
    if (error)
    {
      v21 = v19;
      *error = v20;
    }

    HMIErrorLogC(v20);

    v18 = 0;
    v11 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  v7 = v6;
  Width = CGImageGetWidth(v6);
  Height = CGImageGetHeight(v7);
  ColorSpace = CGImageGetColorSpace(v7);
  v11 = CGColorSpaceRetain(ColorSpace);
  v12 = Width;
  v13 = [self createPixelBufferWithSize:? pixelFormat:? useIOSurface:?];
  if (!v13)
  {
    v23 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:?];
    v24 = v23;
    if (error)
    {
      v25 = v23;
      *error = v24;
    }

    HMIErrorLogC(v24);

    v18 = 0;
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v14 = v13;
  CVPixelBufferLockBaseAddress(v13, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(v14);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v14);
  v17 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, v11, 0x2002u);
  if (v17)
  {
    v18 = v17;
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = v12;
    v29.size.height = Height;
    CGContextDrawImage(v17, v29, v7);
    CVPixelBufferUnlockBaseAddress(v14, 0);
  }

  else
  {
    CVPixelBufferUnlockBaseAddress(v14, 0);
    v26 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:?];
    v27 = v26;
    if (error)
    {
      v28 = v26;
      *error = v27;
    }

    HMIErrorLogC(v27);

    v18 = 0;
  }

LABEL_10:
  CGColorSpaceRelease(v11);
  CGContextRelease(v18);
  CGImageRelease(v7);
  return v14;
}

+ (__CVBuffer)createPixelBufferFromJPEGPath:(id)path error:(id *)error
{
  pathCopy = path;
  v8 = CGDataProviderCreateWithFilename([path UTF8String]);
  if (v8)
  {
    v9 = [self createPixelBufferFromJPEGDataProvider:? error:?];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:?];
    v11 = v10;
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    HMIErrorLogC(v11);

    v9 = 0;
  }

  CGDataProviderRelease(v8);
  return v9;
}

+ (__CVBuffer)createPixelBufferFromJPEGData:(id)data error:(id *)error
{
  v6 = CGDataProviderCreateWithCFData(data);
  if (v6)
  {
    v7 = [self createPixelBufferFromJPEGDataProvider:? error:?];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:?];
    v9 = v8;
    if (error)
    {
      v10 = v8;
      *error = v9;
    }

    HMIErrorLogC(v9);

    v7 = 0;
  }

  CGDataProviderRelease(v6);
  return v7;
}

+ (__CVBuffer)createPixelBufferFromImageData:(id)data error:(id *)error
{
  v5 = [MEMORY[0x277CBF758] imageWithData:?];
  [v5 extent];
  v6 = [HMIVisionUtilities createPixelBufferWithSize:"createPixelBufferWithSize:pixelFormat:useIOSurface:" pixelFormat:? useIOSurface:?];
  v7 = v6;
  if (v6)
  {
    CVPixelBufferLockBaseAddress(v6, 0);
    v8 = [MEMORY[0x277CBF740] contextWithOptions:?];
    [v8 render:? toCVPixelBuffer:?];
    CVPixelBufferUnlockBaseAddress(v7, 0);
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:?];
    v8 = v9;
    if (error)
    {
      v10 = v9;
      *error = v8;
    }

    HMIErrorLogC(v8);
  }

  return v7;
}

+ (__CVBuffer)createPixelBufferWithSize:(CGSize)size pixelFormat:(unsigned int)format useIOSurface:(BOOL)surface
{
  height = size.height;
  width = size.width;
  v17 = *MEMORY[0x277D85DE8];
  if (surface)
  {
LABEL_6:
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:*MEMORY[0x277CC4DE8] forKeys:MEMORY[0x277CBEC10] count:?];
    goto LABEL_8;
  }

  if ([HMIVisionUtilities isPixelFormatCompressed:?])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_INFO, "%{public}@Creating pixel buffer with IOSurface because the pixel format is compressed.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    goto LABEL_6;
  }

  v13 = 0;
LABEL_8:
  *buf = 0;
  if (CVPixelBufferCreate(0, width, height, format, v13, buf))
  {
    v14 = 0;
  }

  else
  {
    v14 = *buf;
  }

  return v14;
}

+ (CGRect)applyPadding:(CGRect)padding withOriginalSize:(CGSize)size padding:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = size.height;
  v8 = size.width;
  v9 = padding.size.height;
  v10 = padding.size.width;
  y = padding.origin.y;
  x = padding.origin.x;
  memset(&v31, 0, sizeof(v31));
  CGAffineTransformMakeScale(&v31, size.width, size.height);
  v30 = v31;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = v10;
  v32.size.height = v9;
  v33 = CGRectApplyAffineTransform(v32, &v30);
  v13 = v33.origin.y;
  v14 = v33.origin.x;
  v15 = v33.origin.x + v33.size.width;
  v16 = v33.origin.y + v33.size.height;
  v17 = width / 2;
  if (v17 >= v33.origin.x)
  {
    v17 = v33.origin.x;
  }

  v18 = height / 2;
  if (v18 >= v13)
  {
    v18 = v33.origin.y;
  }

  v19 = width + v15 - v17;
  if (v8 < v19)
  {
    v19 = v8;
  }

  v20 = v19;
  if (v7 >= height + v16 - v18)
  {
    v21 = height + v16 - v18;
  }

  else
  {
    v21 = v7;
  }

  v22 = (width - (v20 - v15));
  v23 = (height - (v21 - v16));
  if (v17 > v22)
  {
    v22 = v17;
  }

  if (v18 > v23)
  {
    v23 = v18;
  }

  v24 = (v14 - v22) & ~((v14 - v22) >> 31);
  v25 = v24;
  v26 = (v13 - v23) & ~((v13 - v23) >> 31);
  v27 = v26;
  v28 = (v20 - v24);
  v29 = (v21 - v26);
  CGAffineTransformMakeScale(&v30, 1.0 / v8, 1.0 / v7);
  v31 = v30;
  v34.origin.x = v25;
  v34.origin.y = v27;
  v34.size.width = v28;
  v34.size.height = v29;
  return CGRectApplyAffineTransform(v34, &v30);
}

+ (CGRect)imposeMinSizeFor:(CGRect)for withOriginalSize:(CGSize)size minCrop:(CGSize)crop
{
  height = crop.height;
  width = crop.width;
  v7 = for.size.height;
  v8 = for.size.width;
  y = for.origin.y;
  x = for.origin.x;
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeScale(&v24, size.width, size.height);
  v23 = v24;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = v8;
  v25.size.height = v7;
  v26 = CGRectApplyAffineTransform(v25, &v23);
  v12 = v26.size.height;
  if (width <= v26.size.width)
  {
    v13 = *MEMORY[0x277CBF3A8];
  }

  else
  {
    v13 = width - v26.size.width;
  }

  if (height <= v12)
  {
    v14 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    v14 = height - v12;
  }

  if (v14 >= 0.0 || v13 >= 0.0)
  {
    [self applyPadding:? withOriginalSize:? padding:?];
    x = v15;
    y = v16;
    v8 = v17;
    v7 = v18;
  }

  v19 = x;
  v20 = y;
  v21 = v8;
  v22 = v7;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

+ (CGRect)maintainAspectRatio:(CGRect)ratio originalSize:(CGSize)size ratioThreshold:(float)threshold
{
  height = ratio.size.height;
  width = ratio.size.width;
  y = ratio.origin.y;
  x = ratio.origin.x;
  memset(&v22, 0, sizeof(v22));
  CGAffineTransformMakeScale(&v22, size.width, size.height);
  v21 = v22;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v24 = CGRectApplyAffineTransform(v23, &v21);
  v11 = v24.size.width;
  v12 = v24.size.height;
  if (v11 <= v12)
  {
    if ((v12 / v11) > threshold)
    {
LABEL_5:
      [self applyPadding:? withOriginalSize:? padding:?];
      x = v13;
      y = v14;
      width = v15;
      height = v16;
    }
  }

  else if ((v11 / v12) > threshold)
  {
    goto LABEL_5;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

+ (__CVBuffer)transferPixelBuffer:(__CVBuffer *)buffer rotationAngle:(float)angle crop:(CGRect)crop size:(CGSize)size precision:(unint64_t)precision error:(id *)error
{
  height = size.height;
  width = size.width;
  v12 = crop.size.height;
  v13 = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  if (CGRectIsNull(crop) || (v48.origin.x = x, v48.origin.y = y, v48.size.width = v13, v48.size.height = v12, CGRectIsInfinite(v48)) || (v49.origin.x = x, v49.origin.y = y, v49.size.width = v13, v49.size.height = v12, CGRectIsEmpty(v49)))
  {
    v19 = MEMORY[0x277CCACA8];
LABEL_5:
    v20 = [v19 stringWithFormat:?];
    v21 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    v22 = v21;
    if (error)
    {
      v23 = v21;
      *error = v22;
    }

    HMIErrorLogC(v22);

    return 0;
  }

  if (CVPixelBufferGetPixelFormatType(buffer) != 1111970369)
  {
    v19 = MEMORY[0x277CCACA8];
    goto LABEL_5;
  }

  v26 = [self createPixelBufferWithSize:? pixelFormat:? useIOSurface:?];
  if (!v26)
  {
    v19 = MEMORY[0x277CCACA8];
    goto LABEL_5;
  }

  v24 = v26;
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  CVPixelBufferLockBaseAddress(v24, 0);
  v47[0] = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  v47[1] = CVPixelBufferGetHeight(buffer);
  v47[2] = CVPixelBufferGetWidth(buffer);
  v47[3] = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  v46[0] = CVPixelBufferGetBaseAddressOfPlane(v24, 0);
  v46[1] = CVPixelBufferGetHeight(v24);
  v46[2] = CVPixelBufferGetWidth(v24);
  v46[3] = CVPixelBufferGetBytesPerRowOfPlane(v24, 0);
  v37 = CVPixelBufferGetHeight(buffer);
  memset(&v45, 0, sizeof(v45));
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = v13;
  v50.size.height = v12;
  v27 = -CGRectGetMidX(v50);
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = v13;
  v51.size.height = v12;
  MidY = CGRectGetMidY(v51);
  CGAffineTransformMakeTranslation(&v45, v27, MidY - v37);
  memset(&v44, 0, sizeof(v44));
  CGAffineTransformMakeRotation(&v44, angle);
  memset(&v43, 0, sizeof(v43));
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = v13;
  v52.size.height = v12;
  v29 = width / CGRectGetWidth(v52);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = v13;
  v53.size.height = v12;
  v30 = CGRectGetHeight(v53);
  CGAffineTransformMakeScale(&v43, v29, height / v30);
  memset(&v42, 0, sizeof(v42));
  CGAffineTransformMakeTranslation(&v42, width * 0.5, height * 0.5);
  t1 = v43;
  memset(&v41, 0, sizeof(v41));
  t2 = v42;
  CGAffineTransformConcat(&v39, &t1, &t2);
  t2 = v44;
  CGAffineTransformConcat(&t1, &t2, &v39);
  v39 = v45;
  CGAffineTransformConcat(&v41, &v39, &t1);
  LODWORD(t1.a) = 0;
  if (precision == 1)
  {
    v31 = 36;
  }

  else
  {
    v31 = 4;
  }

  v32 = MEMORY[0x2318CBCB0](v47, v46, 0, &v41, &t1, v31);
  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(v24, 0);
  if (v32)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:?];
    v34 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    v35 = v34;
    if (error)
    {
      v36 = v34;
      *error = v35;
    }

    HMIErrorLogC(v35);

    CVPixelBufferRelease(v24);
    return 0;
  }

  return v24;
}

+ (void)releaseCachedVisionResources
{
  globalSession = [MEMORY[0x277CE2E18] globalSession];
  [globalSession releaseCachedResources];
}

+ (BOOL)isPixelFormatCompressed:(unsigned int)compressed
{
  v3 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v4 = [v3 objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end