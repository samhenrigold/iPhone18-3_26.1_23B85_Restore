@interface ULLearnedFeatures
+ (__CVBuffer)_createLearnedFeaturesPixelBufferFromPhotoPixelBuffer:(__CVBuffer *)buffer andOrientation:(unsigned int)orientation requestId:(id)id;
+ (id)learnedFeatures;
+ (void)_writePhotoToDisk:(id)disk requestId:(id)id;
- (id)_init;
- (id)featuresArrayFutureWithPhotoPixelBuffer:(__CVBuffer *)buffer andOrientation:(unsigned int)orientation requestId:(id)id;
- (int)_createLFV2HandleIfNeeded;
- (void)dealloc;
- (void)runWithPhotoPixelBuffer:(__CVBuffer *)buffer andOrientation:(unsigned int)orientation requestId:(id)id handler:(id)handler;
@end

@implementation ULLearnedFeatures

- (void)runWithPhotoPixelBuffer:(__CVBuffer *)buffer andOrientation:(unsigned int)orientation requestId:(id)id handler:(id)handler
{
  v7 = *&orientation;
  v39 = *MEMORY[0x277D85DE8];
  idCopy = id;
  handlerCopy = handler;
  if (([objc_opt_class() isAvailable] & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLearnedFeatures runWithPhotoPixelBuffer:andOrientation:requestId:handler:];
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_ERROR, "[ULLearnedFeatures]: runWithPhoto is called while feature is not available", buf, 2u);
    }

    goto LABEL_12;
  }

  _createLFV2HandleIfNeeded = [(ULLearnedFeatures *)self _createLFV2HandleIfNeeded];
  if (!_createLFV2HandleIfNeeded)
  {
    if ([objc_opt_class() _createLearnedFeaturesPixelBufferFromPhotoPixelBuffer:buffer andOrientation:v7 requestId:idCopy])
    {
      [(ULLearnedFeatures *)self handle];
      [(ULLearnedFeatures *)self keypoints];
      v16 = LFV2ComputeLocalGlobalDescriptors();
      if (v16)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULLearnedFeatures runWithPhotoPixelBuffer:andOrientation:requestId:handler:];
        }

        v17 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
          *buf = 138412290;
          v34 = v18;
          _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_ERROR, "[ULLearnedFeatures]: LFV2ComputeLocalGlobalDescriptors failed with error: %@", buf, 0xCu);
        }
      }

      else
      {
        LFV2FeaturesGetGlobalDescriptors();
        Type = LFV2DescriptorsGetType();
        Size = LFV2DescriptorsGetSize();
        Dimension = LFV2DescriptorsGetDimension();
        v23 = Dimension;
        if (Type == 2 && Size == 1 && Dimension == 128)
        {
          v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:128];
          Data = LFV2DescriptorsGetData();
          for (i = 0; i != 512; i += 4)
          {
            LODWORD(v26) = *(Data + i);
            v28 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
            [v24 addObject:v28];
          }

          LFV2FeaturesRelease();
          v29 = [v24 copy];
          handlerCopy[2](handlerCopy, v29);

          goto LABEL_13;
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          [ULLearnedFeatures runWithPhotoPixelBuffer:andOrientation:requestId:handler:];
        }

        v17 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:Type];
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Size];
          v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v23];
          *buf = 138412802;
          v34 = v30;
          v35 = 2112;
          v36 = v31;
          v37 = 2112;
          v38 = v32;
          _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_ERROR, "[ULLearnedFeatures]: LFV2FeaturesGetGlobalDescriptors fail with checks: dataType: %@, size: %@, dimensions: %@", buf, 0x20u);
        }
      }

      LFV2FeaturesRelease();
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_13;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLearnedFeatures runWithPhotoPixelBuffer:andOrientation:requestId:handler:];
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_ERROR, "[ULLearnedFeatures]: _createLearnedFeaturesPixelBufferFromPhoto failed", buf, 2u);
    }

LABEL_12:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_13;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULLearnedFeatures runWithPhotoPixelBuffer:andOrientation:requestId:handler:];
  }

  v13 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:_createLFV2HandleIfNeeded];
    *buf = 138412290;
    v34 = v14;
    _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_ERROR, "[ULLearnedFeatures]: _createLFV2HandleIfNeeded failed with error: %@", buf, 0xCu);
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_13:
}

- (id)featuresArrayFutureWithPhotoPixelBuffer:(__CVBuffer *)buffer andOrientation:(unsigned int)orientation requestId:(id)id
{
  v5 = *&orientation;
  idCopy = id;
  promise = [MEMORY[0x277D28870] promise];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__ULLearnedFeatures_featuresArrayFutureWithPhotoPixelBuffer_andOrientation_requestId___block_invoke;
  v13[3] = &unk_2798D5430;
  v10 = promise;
  v14 = v10;
  [(ULLearnedFeatures *)self runWithPhotoPixelBuffer:buffer andOrientation:v5 requestId:idCopy handler:v13];
  future = [v10 future];

  return future;
}

void __86__ULLearnedFeatures_featuresArrayFutureWithPhotoPixelBuffer_andOrientation_requestId___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) finishWithResult:v3];
  }

  else
  {
    v4 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA450];
    v8[0] = @"featuresArrayFutureWithPhotoPixelBuffer failed internally";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6 = [v4 errorWithDomain:@"ULLearnedFeatures" code:-1 userInfo:v5];

    [*(a1 + 32) finishWithError:v6];
  }
}

- (void)dealloc
{
  [(ULLearnedFeatures *)self handle];
  LFV2HandleRelease();
  [(ULLearnedFeatures *)self keypoints];
  LFV2KeypointsRelease();
  v3.receiver = self;
  v3.super_class = ULLearnedFeatures;
  [(ULLearnedFeatures *)&v3 dealloc];
}

+ (id)learnedFeatures
{
  _init = [[ULLearnedFeatures alloc] _init];

  return _init;
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = ULLearnedFeatures;
  v2 = [(ULLearnedFeatures *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.milod.ULLearnedFeatures", 0);
    [(ULLearnedFeatures *)v2 setQueue:v3];
  }

  return v2;
}

- (int)_createLFV2HandleIfNeeded
{
  if ([(ULLearnedFeatures *)self handle])
  {
    return 0;
  }

  result = LFV2HandleCreate();
  if (!result)
  {
    [(ULLearnedFeatures *)self setKeypoints:LFV2KeypointsCreate()];
    [(ULLearnedFeatures *)self keypoints];
    LFV2KeypointsAppend();
    return 0;
  }

  return result;
}

+ (__CVBuffer)_createLearnedFeaturesPixelBufferFromPhotoPixelBuffer:(__CVBuffer *)buffer andOrientation:(unsigned int)orientation requestId:(id)id
{
  v5 = *&orientation;
  idCopy = id;
  v8 = [_TtC19MicroLocationDaemon17ULVisionUtilities createPixelBufferRotatedUpFrom:buffer fromOrientation:v5];
  if (v8)
  {
    v9 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:v8];
    v10 = [_TtC19MicroLocationDaemon17ULVisionUtilities reduceFormatTo:v9];

    if (v10)
    {
      [objc_opt_class() _writePhotoToDisk:v10 requestId:idCopy];
      v11 = [_TtC19MicroLocationDaemon17ULVisionUtilities createPixelBufferFrom:v10 size:1278226488 format:640.0, 640.0];
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULLearnedFeatures runWithPhotoPixelBuffer:andOrientation:requestId:handler:];
      }

      v13 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_ERROR, "[ULLearnedFeatures]: Couldnt convert pixel buffer to reduced format", v15, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLearnedFeatures runWithPhotoPixelBuffer:andOrientation:requestId:handler:];
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "[ULLearnedFeatures]: Couldnt rotate UP the pixel buffer", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

+ (void)_writePhotoToDisk:(id)disk requestId:(id)id
{
  v32[1] = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  idCopy = id;
  v6 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSaveSensitiveImages"];
  v9 = [defaultsDictionary objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v11 = bOOLValue;

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v12 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
    date = [MEMORY[0x277CBEAA8] date];
    v14 = [v12 stringFromDate:date];

    idCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"/tmp/ULLearnedFeatures_%@_%@.JPEG", v14, idCopy];
    v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:idCopy];
    context = [MEMORY[0x277CBF740] context];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v31 = *MEMORY[0x277CD2D48];
    v32[0] = &unk_286A73380;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v26 = 0;
    LODWORD(date) = [context writeJPEGRepresentationOfImage:diskCopy toURL:v16 colorSpace:DeviceRGB options:v19 error:&v26];
    v20 = v26;
    CGColorSpaceRelease(DeviceRGB);
    if (date)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULLearnedFeatures runWithPhotoPixelBuffer:andOrientation:requestId:handler:];
      }

      v21 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = idCopy;
        _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEFAULT, "[ULLearnedFeatures]: transformed image written to: %@, ", buf, 0xCu);
      }

      ULDiskUtils::trackTempFileWithCleanup(idCopy, v22);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULLearnedFeatures runWithPhotoPixelBuffer:andOrientation:requestId:handler:];
      }

      v23 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        localizedDescription = [v20 localizedDescription];
        *buf = 138412546;
        v28 = idCopy;
        v29 = 2112;
        v30 = localizedDescription;
        _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_DEFAULT, "[ULLearnedFeatures]: Failed to save file: %@, %@", buf, 0x16u);
      }
    }
  }
}

@end