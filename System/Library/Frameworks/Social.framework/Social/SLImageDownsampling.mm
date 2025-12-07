@interface SLImageDownsampling
+ ($0AC6E346AE4835514AAA8AC86D8F4844)imageSizeWithData:(id)data;
+ (id)createThumbnailWithData:(id)data adjustSmallestSideToSize:(unint64_t)size;
+ (id)downsampleImageData:(id)data toMaxByteSize:(unint64_t)size;
+ (void)downsampleImageData:(id)data toMaxByteSize:(unint64_t)size resultsHandler:(id)handler;
+ (void)generateThumbnailFromImageData:(id)data adjustSmallestSideToSize:(unint64_t)size resultsHandler:(id)handler;
@end

@implementation SLImageDownsampling

+ (id)downsampleImageData:(id)data toMaxByteSize:(unint64_t)size
{
  dataCopy = data;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
  v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  _SLLog(v4, 7, @"SLImageDownsampling downsampleImageData: length %@ toMaxByteSize: %@", v8, v9, v10, v11, v12, v7);

  if ([dataCopy length] < size)
  {
    _SLLog(v4, 6, @"SLImageDownsampling image is below threshold, returning original data", v13, v14, v15, v16, v17, v66);
    v18 = dataCopy;
    goto LABEL_21;
  }

  if (!dataCopy)
  {
    v64 = @"SLImageDownsampling image data is nil";
LABEL_20:
    _SLLog(v4, 3, v64, v13, v14, v15, v16, v17, v66);
    v18 = 0;
    goto LABEL_21;
  }

  sizeCopy = size;
  v20 = [SLImageDownsampling imageSizeWithData:dataCopy];
  if (!v20 || (v22 = v21) == 0)
  {
    v64 = @"Image width and/or height is 0, returning nil";
    goto LABEL_20;
  }

  v23 = v20;
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
  v68 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
  _SLLog(v4, 7, @"SLImageDownsampling original image size width %@ height %@", v25, v26, v27, v28, v29, v24);

  v30 = sqrt(sizeCopy / [dataCopy length]) * 0.95;
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
  _SLLog(v4, 7, @"SLImageDownsampling scale %@", v32, v33, v34, v35, v36, v31);

  v37 = v23;
  v38 = v22;
  do
  {
    v39 = objc_autoreleasePoolPush();
    v40 = ceil(v30 * v37);
    if (v40 < 1.0)
    {
      v40 = 1.0;
    }

    v41 = v40;
    v42 = ceil(v30 * v38);
    if (v42 < 1.0)
    {
      v42 = 1.0;
    }

    v43 = v42;
    v44 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
    v45 = [MEMORY[0x1E696AD98] numberWithInteger:v41];
    v70 = [MEMORY[0x1E696AD98] numberWithInteger:v43];
    _SLLog(v4, 7, @"SLImageDownsampling trying scale %@ width %@ height %@", v46, v47, v48, v49, v50, v44);

    v18 = SLDownSampledImageData(dataCopy, v41, v43);
    v51 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
    v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "length")}];
    _SLLog(v4, 7, @"SLImageDownsampling scale %@ produced image data length %@", v52, v53, v54, v55, v56, v51);

    if ([v18 length] > sizeCopy)
    {
      if ([v18 length] * 0.9 <= sizeCopy)
      {
        v57 = 0.95;
      }

      else
      {
        v57 = 0.5;
      }

      v30 = v30 * v57;

      v18 = 0;
    }

    objc_autoreleasePoolPop(v39);
  }

  while (!v18);
  v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "length")}];
  _SLLog(v4, 7, @"SLImageDownsampling returning final downsampled image data of length %@", v59, v60, v61, v62, v63, v58);

LABEL_21:

  return v18;
}

+ ($0AC6E346AE4835514AAA8AC86D8F4844)imageSizeWithData:(id)data
{
  v4 = CGImageSourceCreateWithData(data, 0);
  v5 = CGImageSourceCopyPropertiesAtIndex(v4, 0, 0);
  _SLLog(v3, 6, @"image props: %@", v6, v7, v8, v9, v10, v5);
  Value = CFDictionaryGetValue(v5, *MEMORY[0x1E696DED8]);
  v12 = CFDictionaryGetValue(v5, *MEMORY[0x1E696DEC8]);
  valuePtr = 0;
  v16 = 0;
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  }

  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberIntType, &v16);
  }

  CFRelease(v4);
  CFRelease(v5);
  v13 = valuePtr;
  v14 = v16;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

+ (id)createThumbnailWithData:(id)data adjustSmallestSideToSize:(unint64_t)size
{
  dataCopy = data;
  v7 = [SLImageDownsampling imageSizeWithData:dataCopy];
  v9 = v8;
  _SLLog(v4, 6, @"Thumbnail source is %i x %i", v10, v11, v12, v13, v14, v7);
  if (v7 >= v9)
  {
    v20 = v9;
  }

  else
  {
    v20 = v7;
  }

  v21 = size / v20;
  v22 = v21 * v7;
  if (v22 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  v24 = v21 * v9;
  if (v24 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  _SLLog(v4, 6, @"Thumbnail destination is %i x %i", v15, v16, v17, v18, v19, v23);
  v26 = SLDownSampledImageData(dataCopy, v23, v25);

  return v26;
}

+ (void)downsampleImageData:(id)data toMaxByteSize:(unint64_t)size resultsHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v9 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__SLImageDownsampling_downsampleImageData_toMaxByteSize_resultsHandler___block_invoke;
  block[3] = &unk_1E81762D0;
  v14 = handlerCopy;
  sizeCopy = size;
  v13 = dataCopy;
  v10 = handlerCopy;
  v11 = dataCopy;
  dispatch_async(v9, block);
}

void __72__SLImageDownsampling_downsampleImageData_toMaxByteSize_resultsHandler___block_invoke(void *a1)
{
  v2 = [SLImageDownsampling downsampleImageData:a1[4] toMaxByteSize:a1[6]];
  (*(a1[5] + 16))();
}

+ (void)generateThumbnailFromImageData:(id)data adjustSmallestSideToSize:(unint64_t)size resultsHandler:(id)handler
{
  dataCopy = data;
  v8 = [handler copy];
  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__SLImageDownsampling_generateThumbnailFromImageData_adjustSmallestSideToSize_resultsHandler___block_invoke;
  block[3] = &unk_1E81762D0;
  v13 = dataCopy;
  v14 = v8;
  sizeCopy = size;
  v10 = v8;
  v11 = dataCopy;
  dispatch_async(v9, block);
}

void __94__SLImageDownsampling_generateThumbnailFromImageData_adjustSmallestSideToSize_resultsHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[4];
  if (v10)
  {
    v13 = [SLImageDownsampling createThumbnailWithData:v10 adjustSmallestSideToSize:a1[6]];
    (*(a1[5] + 16))();
  }

  else
  {
    _SLLog(v8, 3, @"Cannot generate thumbnail - image data is nil", a4, a5, a6, a7, a8, v12);
    v11 = *(a1[5] + 16);

    v11();
  }
}

@end