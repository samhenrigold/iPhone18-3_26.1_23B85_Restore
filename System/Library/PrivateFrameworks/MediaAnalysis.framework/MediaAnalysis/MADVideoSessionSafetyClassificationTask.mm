@interface MADVideoSessionSafetyClassificationTask
+ (id)_addToDetectionResults:(id)results sensitivityKey:(id)key sensitivity:(id)sensitivity sensitivityScoreKey:(id)scoreKey sensitivityScore:(id)score;
+ (id)taskWithRequest:(id)request signpostPayload:(id)payload;
- (BOOL)processPixelBufferAsset:(id)asset resultHandler:(id)handler;
- (MADVideoSessionSafetyClassificationTask)initWithRequestID:(id)d enableDetectionTypeN:(BOOL)n enableDetectionTypeGV:(BOOL)v signpostPayload:(id)payload;
- (id).cxx_construct;
- (int)createUprightPixelBuffer:(__CVBuffer *)buffer fromSourceBuffer:(__CVBuffer *)sourceBuffer andOrientation:(unsigned int)orientation;
- (int)scalePixelBuffer:(__CVBuffer *)buffer output:(__CVBuffer *)output regionOfInterest:(CGRect)interest width:(int)width height:(int)height format:(unsigned int)format;
- (unint64_t)performQRCodeDetections:(unint64_t)detections pixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation results:(id *)results;
@end

@implementation MADVideoSessionSafetyClassificationTask

- (MADVideoSessionSafetyClassificationTask)initWithRequestID:(id)d enableDetectionTypeN:(BOOL)n enableDetectionTypeGV:(BOOL)v signpostPayload:(id)payload
{
  vCopy = v;
  nCopy = n;
  v44[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  payloadCopy = payload;
  v36.receiver = self;
  v36.super_class = MADVideoSessionSafetyClassificationTask;
  v12 = [(MADVideoSessionSafetyClassificationTask *)&v36 init];
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = [dCopy copy];
  requestID = v12->_requestID;
  v12->_requestID = v13;

  objc_storeStrong(&v12->_signpostPayload, payload);
  v12->_enableDetectionTypeN = nCopy;
  v12->_enableDetectionTypeGV = vCopy;
  if (nCopy)
  {
    v15 = *MEMORY[0x1E69CA820];
    v43[0] = *MEMORY[0x1E69CA830];
    v43[1] = v15;
    v44[0] = &unk_1F49BE440;
    v44[1] = MEMORY[0x1E695E118];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
    v35 = 0;
    v17 = [objc_alloc(MEMORY[0x1E69CA710]) initWithOptions:v16 error:&v35];
    v18 = v35;
    safetyHandlerTypeN = v12->_safetyHandlerTypeN;
    v12->_safetyHandlerTypeN = v17;

    if (!v12->_safetyHandlerTypeN || v18)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        *buf = 138412546;
        v40 = v29;
        v41 = 2112;
        v42 = v18;
        v30 = v29;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVideoSessionSafetyClassificationTask] Failed to create safetyHandlerTypeN %@: %@", buf, 0x16u);
      }

      goto LABEL_18;
    }

    if (!v12->_enableDetectionTypeGV)
    {
      goto LABEL_10;
    }

LABEL_8:
    v20 = *MEMORY[0x1E69CA820];
    v37[0] = *MEMORY[0x1E69CA830];
    v37[1] = v20;
    v38[0] = &unk_1F49BE458;
    v38[1] = MEMORY[0x1E695E118];
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];

    v16 = v21;
    v34 = 0;
    v22 = [objc_alloc(MEMORY[0x1E69CA710]) initWithOptions:v21 error:&v34];
    v18 = v34;
    safetyHandlerTypeGV = v12->_safetyHandlerTypeGV;
    v12->_safetyHandlerTypeGV = v22;

    if (v12->_safetyHandlerTypeGV && !v18)
    {
      goto LABEL_10;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      *buf = 138412546;
      v40 = v31;
      v41 = 2112;
      v42 = v18;
      v32 = v31;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVideoSessionSafetyClassificationTask] Failed to create safetyHandlerTypeGV %@: %@", buf, 0x16u);
    }

LABEL_18:

    v28 = 0;
    goto LABEL_19;
  }

  v16 = 0;
  if (vCopy)
  {
    goto LABEL_8;
  }

LABEL_10:
  v24 = dispatch_queue_create("com.apple.mediaanalysis.MADVideoSessionSafetyClassification", MEMORY[0x1E69E96A8]);
  dispatchQueue = v12->_dispatchQueue;
  v12->_dispatchQueue = v24;

  v26 = dispatch_group_create();
  dispatchGroup = v12->_dispatchGroup;
  v12->_dispatchGroup = v26;

LABEL_11:
  v28 = v12;
LABEL_19:

  return v28;
}

+ (id)taskWithRequest:(id)request signpostPayload:(id)payload
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  payloadCopy = payload;
  if ([requestCopy isMemberOfClass:objc_opt_class()])
  {
    v8 = requestCopy;
    v9 = [self alloc];
    requestID = [v8 requestID];
    v11 = [v9 initWithRequestID:requestID enableDetectionTypeN:objc_msgSend(v8 enableDetectionTypeGV:"enableDetectionTypeN") signpostPayload:{objc_msgSend(v8, "enableDetectionTypeGV"), payloadCopy}];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Incompatible request (%@) specified to %@", &v17, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (int)scalePixelBuffer:(__CVBuffer *)buffer output:(__CVBuffer *)output regionOfInterest:(CGRect)interest width:(int)width height:(int)height format:(unsigned int)format
{
  v8 = *&format;
  v9 = *&height;
  v10 = *&width;
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v18 = CVPixelBufferGetWidth(buffer);
  v19 = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  if (v18 == v10 && v19 == v9 && PixelFormatType == v8 && (v27.origin.x = x, v27.origin.y = y, v27.size.width = width, v27.size.height = height, CGRectIsEmpty(v27)))
  {
    *output = CFRetain(buffer);
    return 0;
  }

  else
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    if (CGRectGetMinX(v28) < 0.0 || (v29.origin.x = x, v29.origin.y = y, v29.size.width = width, v29.size.height = height, CGRectGetMinX(v29) > 1.0) || (v30.origin.x = x, v30.origin.y = y, v30.size.width = width, v30.size.height = height, CGRectGetMinY(v30) < 0.0) || (v31.origin.x = x, v31.origin.y = y, v31.size.width = width, v31.size.height = height, CGRectGetMinY(v31) > 1.0) || (v32.origin.x = x, v32.origin.y = y, v32.size.width = width, v32.size.height = height, CGRectGetMaxX(v32) < 0.0) || (v33.origin.x = x, v33.origin.y = y, v33.size.width = width, v33.size.height = height, CGRectGetMaxX(v33) > 1.0) || (v34.origin.x = x, v34.origin.y = y, v34.size.width = width, v34.size.height = height, CGRectGetMaxY(v34) < 0.0) || (v35.origin.x = x, v35.origin.y = y, v35.size.width = width, v35.size.height = height, CGRectGetMaxY(v35) > 1.0))
    {
      x = fmin(fmax(x / v18, 0.0), 1.0);
      y = fmin(fmax(y / v19, 0.0), 1.0);
      width = fmin(fmax(width / v18, 0.0), 1.0);
      height = fmin(fmax(height / v19, 0.0), 1.0);
    }

    v22 = x;
    v23 = y;
    widthCopy = width;
    heightCopy = height;

    return Scaler::ScaleCropped(&self->_scaler, *&v22, buffer, output, v10, v9, v8);
  }
}

- (int)createUprightPixelBuffer:(__CVBuffer *)buffer fromSourceBuffer:(__CVBuffer *)sourceBuffer andOrientation:(unsigned int)orientation
{
  v49 = *MEMORY[0x1E69E9840];
  if (orientation == 1)
  {
    v7 = 0;
    *buffer = CFRetain(sourceBuffer);
    return v7;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(sourceBuffer);
  v10 = PixelFormatType;
  if (PixelFormatType > 1111970368)
  {
    if (PixelFormatType == 1111970369)
    {
      goto LABEL_9;
    }

    v11 = 1380401729;
  }

  else
  {
    if (PixelFormatType == 32)
    {
      goto LABEL_9;
    }

    v11 = 1094862674;
  }

  if (PixelFormatType == v11)
  {
LABEL_9:
    Width = CVPixelBufferGetWidth(sourceBuffer);
    Height = CVPixelBufferGetHeight(sourceBuffer);
    v14 = Height;
    *v48 = 0u;
    memset(buf, 0, sizeof(buf));
    if (orientation <= 4)
    {
      v15 = Width;
    }

    else
    {
      v15 = Height;
    }

    if (orientation <= 4)
    {
      v16 = Height;
    }

    else
    {
      v16 = Width;
    }

    if (orientation <= 4)
    {
      switch(orientation)
      {
        case 2u:
          v18 = Width;
          *buf = 0xBFF0000000000000;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *&buf[24] = 0x3FF0000000000000;
          goto LABEL_32;
        case 3u:
          v20 = Width;
          v21 = Height;
          *buf = 0xBFF0000000000000;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *&buf[24] = 0xBFF0000000000000;
          goto LABEL_37;
        case 4u:
          v17 = Height;
          *buf = 0x3FF0000000000000;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *&buf[24] = 0xBFF0000000000000;
          goto LABEL_23;
      }
    }

    else
    {
      if (orientation <= 6)
      {
        if (orientation != 5)
        {
          v17 = Width;
          *&buf[8] = xmmword_1C9F60750;
          *&buf[24] = 0;
          v48[0] = 0.0;
LABEL_23:
          v48[1] = v17;
LABEL_38:
          cf = 0;
          v45 = *MEMORY[0x1E69660D8];
          v46 = MEMORY[0x1E695E0F8];
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v7 = CVPixelBufferCreate(0, v15, v16, v10, v28, &cf);
          if (v7)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v43 = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageSafetyClassificationTask CVPixelBuffer creation failed", v43, 2u);
            }
          }

          else
          {
            v37 = 0;
            sourceBufferCopy = sourceBuffer;
            v39 = 1;
            if (sourceBuffer)
            {
              v7 = CVPixelBufferLockBaseAddress(sourceBuffer, 1uLL);
              v37 = v7;
              if (!v7 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v43 = 134218240, *&v43[4] = sourceBufferCopy, *&v43[12] = 1024, *&v43[14] = v7, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v43, 0x12u), (v7 = v37) == 0))
              {
                *v43 = CVPixelBufferGetBaseAddress(sourceBuffer);
                *&v43[8] = v14;
                *&v43[16] = Width;
                BytesPerRow = CVPixelBufferGetBytesPerRow(sourceBuffer);
                v34 = 0;
                pixelBuffer = cf;
                unlockFlags = 0;
                if (cf)
                {
                  v7 = CVPixelBufferLockBaseAddress(cf, 0);
                  v34 = v7;
                  if (!v7 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v41 = 134218240, *&v41[4] = pixelBuffer, *&v41[12] = 1024, *&v41[14] = v7, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v41, 0x12u), (v7 = v34) == 0))
                  {
                    *v41 = CVPixelBufferGetBaseAddress(cf);
                    *&v41[8] = v16;
                    *&v41[16] = v15;
                    v42 = CVPixelBufferGetBytesPerRow(cf);
                    v33 = 0;
                    v29 = MEMORY[0x1CCA97430](v43, v41, 0, buf, &v33, 4);
                    v7 = CVPixelBufferLock::Unlock(&v34);
                    if (!v7)
                    {
                      v7 = CVPixelBufferLock::Unlock(&v37);
                      if (!v7)
                      {
                        if (v29)
                        {
                          v7 = v29;
                          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                          {
                            *v32 = 0;
                            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageSafetyClassificationTask failed to warp image", v32, 2u);
                          }
                        }

                        else
                        {
                          v31 = cf;
                          if (cf)
                          {
                            v31 = CFRetain(cf);
                          }

                          v7 = 0;
                          *buffer = v31;
                        }
                      }
                    }

                    if (pixelBuffer && !v34 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
                    }
                  }
                }

                else
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
                  }

                  v7 = -50;
                }

                if (sourceBufferCopy && !v37 && CVPixelBufferUnlockBaseAddress(sourceBufferCopy, v39) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
                }
              }
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
              }

              v7 = -50;
            }
          }

          CF<__CVBuffer *>::~CF(&cf);
          return v7;
        }

        v20 = Height;
        v21 = Width;
        __asm { FMOV            V2.2D, #-1.0 }

        *&buf[8] = _Q2;
LABEL_37:
        v48[0] = v20;
        v48[1] = v21;
        goto LABEL_38;
      }

      if (orientation == 7)
      {
        __asm { FMOV            V0.2D, #1.0 }

        *&buf[8] = _Q0;
        v48[0] = 0.0;
        v48[1] = 0.0;
        *&buf[24] = 0;
        goto LABEL_38;
      }

      if (orientation == 8)
      {
        v18 = Height;
        *&buf[8] = xmmword_1C9F60740;
LABEL_32:
        v48[0] = v18;
        goto LABEL_38;
      }
    }

    v19 = *(MEMORY[0x1E695EFD0] + 16);
    *buf = *MEMORY[0x1E695EFD0];
    *&buf[16] = v19;
    *v48 = *(MEMORY[0x1E695EFD0] + 32);
    goto LABEL_38;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v10;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageSafetyClassificationTask failed: unsupported pixel format %d", buf, 8u);
  }

  return -50;
}

+ (id)_addToDetectionResults:(id)results sensitivityKey:(id)key sensitivity:(id)sensitivity sensitivityScoreKey:(id)scoreKey sensitivityScore:(id)score
{
  v22[4] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  keyCopy = key;
  sensitivityCopy = sensitivity;
  scoreKeyCopy = scoreKey;
  scoreCopy = score;
  v16 = MEMORY[0x1E69CA718];
  v21[0] = keyCopy;
  v21[1] = scoreKeyCopy;
  v22[0] = sensitivityCopy;
  v22[1] = scoreCopy;
  v17 = *MEMORY[0x1E69CA800];
  v21[2] = *MEMORY[0x1E69CA7F8];
  v21[3] = v17;
  v22[2] = sensitivityCopy;
  v22[3] = scoreCopy;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v19 = [v16 mad_mergeSensitiveAnalysisResults:resultsCopy withSensitiveAnalysisResults:v18];

  return v19;
}

- (unint64_t)performQRCodeDetections:(unint64_t)detections pixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation results:(id *)results
{
  v7 = *&orientation;
  v27 = *MEMORY[0x1E69E9840];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@][performQRCodeDetections]", objc_opt_class()];
  if (+[MADUserSafetyQRCodeDetector enabled])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc_init(MADUserSafetyQRCodeDetector);
    [(MADUserSafetyQRCodeDetector *)v13 processPixelBuffer:buffer orientation:v7 signpostPayload:self->_signpostPayload];
    sensitivity = [(MADUserSafetyQRCodeDetector *)v13 sensitivity];
    v15 = sensitivity;
    if (sensitivity)
    {
      unsignedIntegerValue = [sensitivity unsignedIntegerValue];
      if (detections & unsignedIntegerValue)
      {
        [objc_opt_class() _addToDetectionResults:0 sensitivityKey:*MEMORY[0x1E69CA7D0] sensitivity:MEMORY[0x1E695E118] sensitivityScoreKey:*MEMORY[0x1E69CA7D8] sensitivityScore:&unk_1F49BB758];
        v17 = detections ^= 1uLL;
      }

      else
      {
        v17 = 0;
      }

      if ((unsignedIntegerValue & detections & 2) != 0)
      {
        v19 = [objc_opt_class() _addToDetectionResults:v17 sensitivityKey:*MEMORY[0x1E69CA7E8] sensitivity:MEMORY[0x1E695E118] sensitivityScoreKey:*MEMORY[0x1E69CA7F0] sensitivityScore:&unk_1F49BB758];

        v20 = [objc_opt_class() _addToDetectionResults:v19 sensitivityKey:*MEMORY[0x1E69CA808] sensitivity:MEMORY[0x1E695E118] sensitivityScoreKey:*MEMORY[0x1E69CA818] sensitivityScore:&unk_1F49BB758];

        detections ^= 2uLL;
        v17 = v20;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = v11;
        v25 = 2112;
        v26 = objc_opt_class();
        v18 = v26;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ %@ processing failed.", buf, 0x16u);
      }

      v17 = 0;
    }

    objc_autoreleasePoolPop(v12);
    if (results && v17)
    {
      v21 = v17;
      *results = v17;
    }
  }

  else
  {
    v17 = 0;
  }

  return detections;
}

- (BOOL)processPixelBufferAsset:(id)asset resultHandler:(id)handler
{
  v152[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  handlerCopy = handler;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@][processPixelBufferAsset]", objc_opt_class()];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ running...", buf, 0xCu);
  }

  if ([assetCopy userSafetyEligible])
  {
    enableDetectionTypeN = self->_enableDetectionTypeN;
    v10 = 2;
    if (!self->_enableDetectionTypeGV)
    {
      v10 = 0;
    }

    v11 = v10 | enableDetectionTypeN;
    if (v10 | enableDetectionTypeN)
    {
      v130 = 0;
      v129 = 0;
      if ([assetCopy loadPixelBuffer:&v130 orientation:&v129 regionOfInterest:v128])
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v8;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ image loading failed", buf, 0xCu);
        }

        v12 = MEMORY[0x1E696ABC0];
        v147 = *MEMORY[0x1E696A578];
        v102 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
        v148 = v102;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
        v14 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v13];
        handlerCopy[2](handlerCopy, 0, v14);

        v15 = 0;
        goto LABEL_94;
      }

      v127 = 0;
      v24 = [(MADVideoSessionSafetyClassificationTask *)self performQRCodeDetections:v11 pixelBuffer:v130 orientation:v129 results:&v127];
      v25 = v127;
      v102 = v25;
      if (!v24)
      {
        v37 = [objc_alloc(MEMORY[0x1E69AE510]) initWithSensitivityAttributes:v25 requestID:self->_requestID];
        if (v37)
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ complete", buf, 0xCu);
          }

          v13 = 0;
        }

        else
        {
          v53 = MEMORY[0x1E696ABC0];
          v145 = *MEMORY[0x1E696A578];
          v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Creating MADVideoSessionSafetyResult failed"];
          v146 = v54;
          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
          v13 = [v53 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v55];

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = v8;
            *&buf[12] = 2112;
            *&buf[14] = v13;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ failed, error:%@", buf, 0x16u);
          }
        }

        v56 = [v13 copy];
        (handlerCopy)[2](handlerCopy, v37, v56);

        v15 = 1;
        goto LABEL_94;
      }

      v26 = VCPSignPostLog(v25);
      v27 = os_signpost_id_generate(v26);

      v29 = VCPSignPostLog(v28);
      v30 = v29;
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        signpostPayload = self->_signpostPayload;
        *buf = 138412290;
        *&buf[4] = signpostPayload;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v27, "MADVideoSessionSafetyClassification_scale", "%@", buf, 0xCu);
      }

      v126 = 0;
      v32 = [(MADVideoSessionSafetyClassificationTask *)self scalePixelBuffer:v130 output:&v126 regionOfInterest:299 width:299 height:1111970369 format:v128[0], v128[1], v128[2], v128[3]];
      if (v32)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v8;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ image scaling failed", buf, 0xCu);
        }

        v33 = MEMORY[0x1E696ABC0];
        v143 = *MEMORY[0x1E696A578];
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image scaling failed"];
        v144 = v34;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
        v36 = [v33 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v35];
        handlerCopy[2](handlerCopy, 0, v36);

        v13 = 0;
        v15 = 0;
        goto LABEL_93;
      }

      v38 = VCPSignPostLog(v32);
      v39 = v38;
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        v40 = self->_signpostPayload;
        *buf = 138412290;
        *&buf[4] = v40;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v39, OS_SIGNPOST_INTERVAL_END, v27, "MADVideoSessionSafetyClassification_scale", "%@", buf, 0xCu);
      }

      v42 = VCPSignPostLog(v41);
      v43 = os_signpost_id_generate(v42);

      v45 = VCPSignPostLog(v44);
      v46 = v45;
      if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        v47 = self->_signpostPayload;
        *buf = 138412290;
        *&buf[4] = v47;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v46, OS_SIGNPOST_INTERVAL_BEGIN, v43, "MADVideoSessionSafetyClassification_affine", "%@", buf, 0xCu);
      }

      cf = 0;
      v48 = [(MADVideoSessionSafetyClassificationTask *)self createUprightPixelBuffer:&cf fromSourceBuffer:v126 andOrientation:v129];
      if (v48)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v8;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ image affine transform failed", buf, 0xCu);
        }

        v49 = MEMORY[0x1E696ABC0];
        v141 = *MEMORY[0x1E696A578];
        v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image affine transform failed"];
        v142 = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
        v52 = [v49 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v51];
        handlerCopy[2](handlerCopy, 0, v52);

        v13 = 0;
        v15 = 0;
        goto LABEL_92;
      }

      v57 = VCPSignPostLog(v48);
      v58 = v57;
      if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
      {
        v59 = self->_signpostPayload;
        *buf = 138412290;
        *&buf[4] = v59;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v58, OS_SIGNPOST_INTERVAL_END, v43, "MADVideoSessionSafetyClassification_affine", "%@", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v138 = __Block_byref_object_copy__65;
      v139 = __Block_byref_object_dispose__65;
      v140 = 0;
      v119 = 0;
      v120 = &v119;
      v121 = 0x3032000000;
      v122 = __Block_byref_object_copy__65;
      v123 = __Block_byref_object_dispose__65;
      v124 = 0;
      v113 = 0;
      v114 = &v113;
      v115 = 0x3032000000;
      v116 = __Block_byref_object_copy__65;
      v117 = __Block_byref_object_dispose__65;
      v118 = 0;
      v107 = 0;
      v108 = &v107;
      v109 = 0x3032000000;
      v110 = __Block_byref_object_copy__65;
      v111 = __Block_byref_object_dispose__65;
      v112 = 0;
      if (v24)
      {
        dispatchQueue = self->_dispatchQueue;
        dispatchGroup = self->_dispatchGroup;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3321888768;
        block[2] = __81__MADVideoSessionSafetyClassificationTask_processPixelBufferAsset_resultHandler___block_invoke;
        block[3] = &unk_1F496A9A0;
        block[4] = self;
        block[5] = buf;
        v106 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        block[6] = &v113;
        dispatch_group_async(dispatchGroup, dispatchQueue, block);
        CF<__CVBuffer *>::~CF(&v106);
      }

      if ((v24 & 2) != 0)
      {
        v63 = self->_dispatchQueue;
        v62 = self->_dispatchGroup;
        v103[0] = MEMORY[0x1E69E9820];
        v103[1] = 3321888768;
        v103[2] = __81__MADVideoSessionSafetyClassificationTask_processPixelBufferAsset_resultHandler___block_invoke_227;
        v103[3] = &unk_1F496A9A0;
        v103[4] = self;
        v103[5] = &v119;
        v104 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v103[6] = &v107;
        dispatch_group_async(v62, v63, v103);
        CF<__CVBuffer *>::~CF(&v104);
      }

      dispatch_group_wait(self->_dispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
      if ((v24 & 1) != 0 && !*(*&buf[8] + 40))
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v95 = [v114[5] description];
          *v133 = 138412546;
          v134 = v8;
          v135 = 2112;
          v136 = v95;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ safetyHandlerTypeN failed (%@)", v133, 0x16u);
        }

        v90 = [v114[5] copy];
        handlerCopy[2](handlerCopy, 0, v90);
      }

      else
      {
        if ((v24 & 2) == 0 || v120[5])
        {
          v64 = *(*&buf[8] + 40);
          if (v64)
          {
            v65 = MEMORY[0x1E69CA710];
            sensitivityScoreExplicit = [v64 sensitivityScoreExplicit];
            [sensitivityScoreExplicit floatValue];
            v68 = [v65 isImageSensitiveForLabel:*MEMORY[0x1E69CA7B8] confidenceScore:0 classificationMode:v67];

            v69 = objc_opt_class();
            v70 = *MEMORY[0x1E69CA7D0];
            v100 = [MEMORY[0x1E696AD98] numberWithBool:v68];
            v71 = *MEMORY[0x1E69CA7D8];
            sensitivityScoreExplicit2 = [*(*&buf[8] + 40) sensitivityScoreExplicit];
            v73 = [v69 _addToDetectionResults:v102 sensitivityKey:v70 sensitivity:v100 sensitivityScoreKey:v71 sensitivityScore:sensitivityScoreExplicit2];

            v102 = v73;
          }

          if (v120[5])
          {
            if (+[MADUserSafetyQRCodeDetector enabled])
            {
              v74 = [objc_opt_class() _addToDetectionResults:v102 sensitivityKey:*MEMORY[0x1E69CA7E8] sensitivity:MEMORY[0x1E695E110] sensitivityScoreKey:*MEMORY[0x1E69CA7F0] sensitivityScore:&unk_1F49BB768];

              v102 = [objc_opt_class() _addToDetectionResults:v74 sensitivityKey:*MEMORY[0x1E69CA808] sensitivity:MEMORY[0x1E695E110] sensitivityScoreKey:*MEMORY[0x1E69CA818] sensitivityScore:&unk_1F49BB768];
            }

            else
            {
              v75 = MEMORY[0x1E69CA710];
              sensitivityScoreGore = [v120[5] sensitivityScoreGore];
              [sensitivityScoreGore floatValue];
              v78 = [v75 isImageSensitiveForLabel:*MEMORY[0x1E69CA7A0] confidenceScore:0 classificationMode:v77];

              v79 = objc_opt_class();
              v80 = *MEMORY[0x1E69CA7E8];
              v98 = [MEMORY[0x1E696AD98] numberWithBool:v78];
              v81 = *MEMORY[0x1E69CA7F0];
              sensitivityScoreGore2 = [v120[5] sensitivityScoreGore];
              v101 = [v79 _addToDetectionResults:v102 sensitivityKey:v80 sensitivity:v98 sensitivityScoreKey:v81 sensitivityScore:sensitivityScoreGore2];

              v83 = MEMORY[0x1E69CA710];
              sensitivityScoreViolence = [v120[5] sensitivityScoreViolence];
              [sensitivityScoreViolence floatValue];
              v86 = [v83 isImageSensitiveForLabel:*MEMORY[0x1E69CA7C0] confidenceScore:0 classificationMode:v85];

              v87 = objc_opt_class();
              v99 = *MEMORY[0x1E69CA808];
              v74 = [MEMORY[0x1E696AD98] numberWithBool:v86];
              v88 = *MEMORY[0x1E69CA818];
              sensitivityScoreViolence2 = [v120[5] sensitivityScoreViolence];
              v102 = [v87 _addToDetectionResults:v101 sensitivityKey:v99 sensitivity:v74 sensitivityScoreKey:v88 sensitivityScore:sensitivityScoreViolence2];
            }
          }

          v90 = [objc_alloc(MEMORY[0x1E69AE510]) initWithSensitivityAttributes:v102 requestID:self->_requestID];
          if (v90)
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *v133 = 138412290;
              v134 = v8;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ complete", v133, 0xCu);
            }

            v13 = 0;
          }

          else
          {
            v91 = MEMORY[0x1E696ABC0];
            v131 = *MEMORY[0x1E696A578];
            v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Creating MADVideoSessionSafetyResult failed"];
            v132 = v92;
            v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
            v13 = [v91 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v93];

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v133 = 138412546;
              v134 = v8;
              v135 = 2112;
              v136 = v13;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ failed, error:%@", v133, 0x16u);
            }
          }

          v94 = [v13 copy];
          (handlerCopy)[2](handlerCopy, v90, v94);

          v15 = 1;
          goto LABEL_91;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v96 = [v108[5] description];
          *v133 = 138412546;
          v134 = v8;
          v135 = 2112;
          v136 = v96;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ safetyHandlerTypeGV failed (%@)", v133, 0x16u);
        }

        v90 = [v108[5] copy];
        handlerCopy[2](handlerCopy, 0, v90);
      }

      v13 = 0;
      v15 = 0;
LABEL_91:

      _Block_object_dispose(&v107, 8);
      _Block_object_dispose(&v113, 8);

      _Block_object_dispose(&v119, 8);
      _Block_object_dispose(buf, 8);

LABEL_92:
      CF<__CVBuffer *>::~CF(&cf);
LABEL_93:
      CF<__CVBuffer *>::~CF(&v126);
LABEL_94:

      CF<__CVBuffer *>::~CF(&v130);
      goto LABEL_95;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ remainingDetections=0, quiting ...", buf, 0xCu);
    }

    v20 = MEMORY[0x1E696ABC0];
    v149 = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No detection to be performed"];
    v150 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
    v23 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v22];
    handlerCopy[2](handlerCopy, 0, v23);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ User Safety either not entitled for client or not enabled, quiting ...", buf, 0xCu);
    }

    v16 = MEMORY[0x1E696ABC0];
    v151 = *MEMORY[0x1E696A578];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"User Safety either not entitled for client or not enabled"];
    v152[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:&v151 count:1];
    v19 = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v18];
    handlerCopy[2](handlerCopy, 0, v19);
  }

  v15 = 0;
LABEL_95:

  return v15;
}

void __81__MADVideoSessionSafetyClassificationTask_processPixelBufferAsset_resultHandler___block_invoke(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = *(a1[4] + 16);
    *buf = 138412290;
    v20 = v7;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CommSafetyHandlerTypeN_analyzePixelBuffer", "%@", buf, 0xCu);
  }

  v8 = *(a1[4] + 32);
  v9 = a1[7];
  v10 = *(a1[6] + 8);
  obj = *(v10 + 40);
  v11 = [v8 analyzePixelBuffer:v9 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v15 = VCPSignPostLog(v14);
  v16 = v15;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v17 = *(a1[4] + 16);
    *buf = 138412290;
    v20 = v17;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_END, v3, "CommSafetyHandlerTypeN_analyzePixelBuffer", "%@", buf, 0xCu);
  }
}

void __81__MADVideoSessionSafetyClassificationTask_processPixelBufferAsset_resultHandler___block_invoke_227(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = *(a1[4] + 16);
    *buf = 138412290;
    v20 = v7;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CommSafetyHandlerTypeGV_analyzePixelBuffer", "%@", buf, 0xCu);
  }

  v8 = *(a1[4] + 40);
  v9 = a1[7];
  v10 = *(a1[6] + 8);
  obj = *(v10 + 40);
  v11 = [v8 analyzePixelBuffer:v9 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v15 = VCPSignPostLog(v14);
  v16 = v15;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v17 = *(a1[4] + 16);
    *buf = 138412290;
    v20 = v17;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_END, v3, "CommSafetyHandlerTypeGV_analyzePixelBuffer", "%@", buf, 0xCu);
  }
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 16) = 0;
  return self;
}

@end