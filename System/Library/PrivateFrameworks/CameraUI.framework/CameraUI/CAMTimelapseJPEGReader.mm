@interface CAMTimelapseJPEGReader
+ (BOOL)_hasExifRotation:(id)rotation;
+ (CGImage)createCGImageFromData:(id)data applyTransform:(BOOL)transform maxPixelSize:(int64_t)size useBGRA:(BOOL)a;
+ (__CVBuffer)createPixelBufferFromData:(id)data applyTransform:(BOOL)transform maxPixelSize:(int64_t)size useBGRA:(BOOL)a cleanApertureSize:(CGSize)apertureSize;
+ (id)_decodeOptionsWithMaxPixelSize:(int64_t)size applyTransform:(BOOL)transform useBGRA:(BOOL)a;
+ (id)newDataFromFilePath:(id)path;
@end

@implementation CAMTimelapseJPEGReader

+ (id)newDataFromFilePath:(id)path
{
  pathCopy = path;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:pathCopy options:0 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CAMTimelapseJPEGReader *)pathCopy newDataFromFilePath:v6, v8];
    }
  }

  return v4;
}

+ (id)_decodeOptionsWithMaxPixelSize:(int64_t)size applyTransform:(BOOL)transform useBGRA:(BOOL)a
{
  aCopy = a;
  transformCopy = transform;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = dictionary;
  if (aCopy)
  {
    [dictionary setObject:&unk_1F16C7988 forKey:*MEMORY[0x1E6991AE8]];
  }

  if (transformCopy)
  {
    [v9 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6991AC0]];
  }

  if (size >= 1)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:size];
    [v9 setObject:v10 forKey:*MEMORY[0x1E6991AE0]];
  }

  return v9;
}

+ (CGImage)createCGImageFromData:(id)data applyTransform:(BOOL)transform maxPixelSize:(int64_t)size useBGRA:(BOOL)a
{
  aCopy = a;
  transformCopy = transform;
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v12 = [self _decodeOptionsWithMaxPixelSize:size applyTransform:transformCopy useBGRA:aCopy];
    CGImageFromImageData = PFFigCreateCGImageFromImageData();
    if (CGImageFromImageData)
    {
      v14 = CGImageFromImageData;
      v15 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(a2);
        *buf = 138543874;
        v19 = v17;
        v20 = 2048;
        v21 = v14;
        v22 = 2048;
        v23 = [dataCopy length];
        _os_log_error_impl(&dword_1A3640000, v15, OS_LOG_TYPE_ERROR, "PFFigCreateCGImageFromImageData %{public}@ returned %ld from %lu", buf, 0x20u);
      }
    }
  }

  return 0;
}

+ (BOOL)_hasExifRotation:(id)rotation
{
  v3 = CGImageSourceCreateWithData(rotation, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CGImageSourceCopyPropertiesAtIndex(v3, 0, 0);
  v6 = v5;
  if (v5)
  {
    v7 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
    v8 = v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v7 intValue] - 5 < 4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  CFRelease(v4);

  return v8;
}

+ (__CVBuffer)createPixelBufferFromData:(id)data applyTransform:(BOOL)transform maxPixelSize:(int64_t)size useBGRA:(BOOL)a cleanApertureSize:(CGSize)apertureSize
{
  height = apertureSize.height;
  width = apertureSize.width;
  aCopy = a;
  transformCopy = transform;
  v73[4] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  pixelTransferSessionOut = 0;
  pixelBuffer = 0;
  pixelBufferOut = 0;
  if (!dataCopy)
  {
    goto LABEL_37;
  }

  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v27 = [self _decodeOptionsWithMaxPixelSize:size applyTransform:transformCopy useBGRA:aCopy];
    v24 = OUTLINED_FUNCTION_0_2(v27, v28, v29, v30, v31, v32, v33);
  }

  else
  {
    if (aCopy)
    {
      v16 = 1111970369;
    }

    else
    {
      v16 = 875704422;
    }

    v17 = [self _decodeOptionsWithMaxPixelSize:0 applyTransform:transformCopy useBGRA:0];
    v24 = OUTLINED_FUNCTION_0_2(v17, v18, v19, v20, v21, v22, v23);
    if (!v24)
    {
      if (size < 1)
      {
        v26 = 1.0;
      }

      else
      {
        if (width <= height)
        {
          v25 = height;
        }

        else
        {
          v25 = width;
        }

        v26 = fmin(size / v25, 1.0);
      }

      v35 = width * v26;
      v36 = vcvtas_u32_f32(v35);
      v37 = height * v26;
      v38 = vcvtas_u32_f32(v37);
      v39 = CVPixelBufferGetWidth(pixelBuffer);
      v40 = CVPixelBufferGetHeight(pixelBuffer);
      if (transformCopy && vabdd_f64(width / height, v40 / v39) < 0.01)
      {
        v41 = v36;
        v42 = height;
      }

      else
      {
        v41 = v38;
        v38 = v36;
        v42 = width;
        width = height;
      }

      v72[0] = *MEMORY[0x1E6965D80];
      v43 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
      v73[0] = v43;
      v72[1] = *MEMORY[0x1E6965D60];
      v44 = [MEMORY[0x1E696AD98] numberWithDouble:width];
      v45 = *MEMORY[0x1E6965D68];
      v73[1] = v44;
      v73[2] = &unk_1F16C79A0;
      v46 = *MEMORY[0x1E6965D78];
      v72[2] = v45;
      v72[3] = v46;
      v73[3] = &unk_1F16C79A0;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:4];

      CVBufferSetAttachment(pixelBuffer, *MEMORY[0x1E6965D70], v47, kCVAttachmentMode_ShouldNotPropagate);
      v70 = *MEMORY[0x1E69660D8];
      v71 = MEMORY[0x1E695E0F8];
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v49 = *MEMORY[0x1E695E480];
      v50 = CVPixelBufferCreate(*MEMORY[0x1E695E480], v38, v41, v16, v48, &pixelBufferOut);
      if (v50 || (v50 = VTPixelTransferSessionCreate(v49, &pixelTransferSessionOut)) != 0 || (VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DF8], *MEMORY[0x1E695E4D0]), (v50 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840E0])) != 0))
      {
        v34 = v50;
      }

      else
      {
        v34 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBuffer, pixelBufferOut);
        if (!v34)
        {
          CFRelease(pixelBuffer);
          pixelBuffer = pixelBufferOut;
          pixelBufferOut = 0;
        }
      }

      if (pixelTransferSessionOut)
      {
        CFRelease(pixelTransferSessionOut);
      }

      height = width;
      width = v42;
      goto LABEL_30;
    }
  }

  v34 = v24;

LABEL_30:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (!v34)
  {
    v52 = pixelBuffer;
    goto LABEL_39;
  }

  v51 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v54 = NSStringFromSelector(a2);
    v55 = [dataCopy length];
    v74.width = width;
    v74.height = height;
    v56 = NSStringFromCGSize(v74);
    *buf = 138544386;
    v61 = v54;
    v62 = 2048;
    v63 = v34;
    v64 = 1024;
    v65 = v34;
    v66 = 2048;
    v67 = v55;
    v68 = 2114;
    v69 = v56;
    _os_log_error_impl(&dword_1A3640000, v51, OS_LOG_TYPE_ERROR, "Error decoding JPEG to PixelBuffer from %{public}@, err %ld (0x%x), JPEG size %lu, clapSize %{public}@", buf, 0x30u);
  }

  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

LABEL_37:
  v52 = 0;
LABEL_39:

  return v52;
}

+ (void)newDataFromFilePath:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "Error creating data from file %{public}@: %{public}@", &v3, 0x16u);
}

@end