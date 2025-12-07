@interface VCPMADImageSafetyClassificationTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (BOOL)validateProcessingSettingsForDetections:(unint64_t)detections;
- (VCPMADImageSafetyClassificationTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (id).cxx_construct;
- (int)createUprightPixelBuffer:(__CVBuffer *)buffer fromSourceBuffer:(__CVBuffer *)sourceBuffer andOrientation:(unsigned int)orientation;
- (int)run;
- (int)scalePixelBuffer:(__CVBuffer *)buffer output:(__CVBuffer *)output width:(int)width height:(int)height format:(unsigned int)format;
- (unint64_t)fetchCachedResultsForDetections:(unint64_t)detections results:(id)results;
- (unint64_t)performQRCodeForPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation detections:(unint64_t)detections results:(id)results;
@end

@implementation VCPMADImageSafetyClassificationTask

- (VCPMADImageSafetyClassificationTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v15.receiver = self;
  v15.super_class = VCPMADImageSafetyClassificationTask;
  v12 = [(VCPMADImageSafetyClassificationTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
  }

  return v13;
}

+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  if ([requestCopy isMemberOfClass:objc_opt_class()])
  {
    v11 = [[self alloc] initWithRequest:requestCopy imageAsset:assetCopy andSignpostPayload:payloadCopy];
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

- (int)scalePixelBuffer:(__CVBuffer *)buffer output:(__CVBuffer *)output width:(int)width height:(int)height format:(unsigned int)format
{
  v7 = *&format;
  v8 = *&height;
  v9 = *&width;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  if (Width == v9 && Height == v8 && PixelFormatType == v7)
  {
    *output = CFRetain(buffer);
    return 0;
  }

  else
  {

    Scaler::Scale(&self->_scaler, buffer, output, v9, v8, v7);
  }

  return result;
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

- (BOOL)validateProcessingSettingsForDetections:(unint64_t)detections
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ([(VCPMADServiceImageAsset *)self->_imageAsset userSafetyEligible])
  {
    if (detections)
    {
      return 1;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid request: detections=0", v13, 2u);
    }

    request = self->_request;
    v12 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid request: detections=0"];
    v15 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];
    [(MADImageSafetyClassificationRequest *)request setError:v10];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "User Safety either not entitled for client or not enabled", v13, 2u);
    }

    v6 = self->_request;
    v7 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"User Safety either not entitled for client or not enabled"];
    v17[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v10 = [v7 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];
    [(MADImageSafetyClassificationRequest *)v6 setError:v10];
  }

  return 0;
}

- (unint64_t)performQRCodeForPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation detections:(unint64_t)detections results:(id)results
{
  v7 = *&orientation;
  v20 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if (+[MADUserSafetyQRCodeDetector enabled])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc_init(MADUserSafetyImageQRCodeDetector);
    v13 = [(MADUserSafetyImageQRCodeDetector *)v12 sensitivityFromQRCodeForPixelBuffer:buffer orientation:v7 signpostPayload:self->_signpostPayload];
    v14 = v13;
    if (v13)
    {
      unsignedIntegerValue = [v13 unsignedIntegerValue];
      if (detections & unsignedIntegerValue)
      {
        [resultsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE2E0]];
        detections ^= 1uLL;
      }

      if ((unsignedIntegerValue & detections & 2) != 0)
      {
        [resultsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE2D8]];
        detections ^= 2uLL;
      }
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = objc_opt_class();
      v16 = v19;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] processing failed.", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  return detections;
}

- (unint64_t)fetchCachedResultsForDetections:(unint64_t)detections results:(id)results
{
  v36 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  nsfwClassifications = [(VCPMADServiceImageAsset *)self->_imageAsset nsfwClassifications];
  if (nsfwClassifications)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPMADImageSafetyClassificationTask leveraging pre-computed IVS result", buf, 2u);
    }

    v32 = 0u;
    v33 = 0u;
    if (+[MADUserSafetyQRCodeDetector enabled])
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }

    v30 = 0uLL;
    v31 = 0uLL;
    v7 = nsfwClassifications;
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = *v31;
      v28 = *MEMORY[0x1E69AE2E0];
      v27 = *MEMORY[0x1E69AE2D8];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          if ((detections & 1) != 0 && [*(*(&v30 + 1) + 8 * i) extendedSceneIdentifier] == 2147481854)
          {
            [v11 confidence];
            v13 = v12;
            v14 = MEMORY[0x1E69CA710];
            v15 = VCPSpecialLabelFromExtendedSceneClassificationID([v11 extendedSceneIdentifier]);
            v16 = [v14 isImageSensitiveForLabel:v15 confidenceScore:2 classificationMode:v13];

            v17 = [MEMORY[0x1E696AD98] numberWithBool:v16];
            [resultsCopy setObject:v17 forKeyedSubscript:v28];

            detections &= ~1uLL;
          }

          if ((detections & 2) != 0 && v6)
          {
            if ([v11 extendedSceneIdentifier] != 2147481342 && objc_msgSend(v11, "extendedSceneIdentifier") != 2147481343)
            {
              continue;
            }

            [v11 confidence];
            v19 = v18;
            v20 = MEMORY[0x1E69CA710];
            v21 = VCPSpecialLabelFromExtendedSceneClassificationID([v11 extendedSceneIdentifier]);
            v22 = [v20 isImageSensitiveForLabel:v21 confidenceScore:2 classificationMode:v19];

            if (--v6)
            {
              v23 = v22;
            }

            else
            {
              v23 = 1;
            }

            if (v23 != 1)
            {
              v6 = 1;
              continue;
            }

            v24 = [MEMORY[0x1E696AD98] numberWithBool:v22];
            [resultsCopy setObject:v24 forKeyedSubscript:v27];

            detections &= ~2uLL;
          }

          if (!detections)
          {

            detections = 0;
            goto LABEL_34;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }

    if (detections)
    {
      [resultsCopy setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69AE2E0]];
      detections &= ~1uLL;
    }

    if ((detections & 2) != 0)
    {
      [resultsCopy setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69AE2D8]];
      detections &= ~2uLL;
    }
  }

LABEL_34:

  return detections;
}

- (int)run
{
  v144[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADImageSafetyClassificationTask running...", &buf, 2u);
  }

  v3 = atomic_load(&self->_canceled);
  if (v3)
  {
    return -128;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  enableNudityDetection = [(MADImageSafetyClassificationRequest *)self->_request enableNudityDetection];
  v7 = enableNudityDetection;
  if ([(MADImageSafetyClassificationRequest *)self->_request enableGoreViolenceDetection])
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  if ([(VCPMADImageSafetyClassificationTask *)self validateProcessingSettingsForDetections:v8 | enableNudityDetection])
  {
    v9 = [MEMORY[0x1E695DF00] now];
    [v9 timeIntervalSince1970];
    v11 = v10;

    [(VCPMADImageSafetyClassificationTask *)self logMemoryWithMessage:@"[ImageSafety] Before decode"];
    v126 = 0;
    v125 = 0;
    if ([(VCPMADServiceImageAsset *)self->_imageAsset loadLowResPixelBuffer:&v126 orientation:&v125])
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADImageSafetyClassificationTask image loading failed", &buf, 2u);
      }

      request = self->_request;
      v13 = MEMORY[0x1E696ABC0];
      v143 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
      v144[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:&v143 count:1];
      v16 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v15];
      [(MADImageSafetyClassificationRequest *)request setError:v16];

      goto LABEL_15;
    }

    v17 = [(VCPMADImageSafetyClassificationTask *)self performQRCodeForPixelBuffer:v126 orientation:v125 detections:v8 | v7 results:v5];
    if (v17)
    {
      v18 = [(VCPMADImageSafetyClassificationTask *)self fetchCachedResultsForDetections:v17 results:v5];
      v19 = v18;
      if (v18)
      {
        v20 = +[MADImageSafetyClassificationResource sharedResource];
        v21 = +[VCPMADResourceManager sharedManager];
        v22 = [v21 activateResource:v20];

        v24 = VCPSignPostLog(v23);
        v25 = os_signpost_id_generate(v24);

        v27 = VCPSignPostLog(v26);
        v28 = v27;
        if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          signpostPayload = self->_signpostPayload;
          LODWORD(buf) = 138412290;
          *(&buf + 4) = signpostPayload;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v25, "CommSafetyHandler_scale", "%@", &buf, 0xCu);
        }

        v124 = 0;
        v30 = [(VCPMADImageSafetyClassificationTask *)self scalePixelBuffer:v126 output:&v124 width:299 height:299 format:1111970369];
        if (v30)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageSafetyClassificationTask image pre-processing failed", &buf, 2u);
          }

          v31 = self->_request;
          v32 = MEMORY[0x1E696ABC0];
          v139 = *MEMORY[0x1E696A578];
          v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image pre-processing failed"];
          v140 = v33;
          v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
          v35 = [v32 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v34];
          [(MADImageSafetyClassificationRequest *)v31 setError:v35];
        }

        else
        {
          v50 = VCPSignPostLog(v30);
          v51 = v50;
          if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
          {
            v52 = self->_signpostPayload;
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v52;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v51, OS_SIGNPOST_INTERVAL_END, v25, "CommSafetyHandler_scale", "%@", &buf, 0xCu);
          }

          v54 = VCPSignPostLog(v53);
          v55 = os_signpost_id_generate(v54);

          v57 = VCPSignPostLog(v56);
          v58 = v57;
          if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
          {
            v59 = self->_signpostPayload;
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v59;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v58, OS_SIGNPOST_INTERVAL_BEGIN, v55, "CommSafetyHandler_affine", "%@", &buf, 0xCu);
          }

          cf = 0;
          v60 = [(VCPMADImageSafetyClassificationTask *)self createUprightPixelBuffer:&cf fromSourceBuffer:v124 andOrientation:v125];
          if (v60)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADImageSafetyClassificationTask image affine transform failed", &buf, 2u);
            }

            v61 = self->_request;
            v62 = MEMORY[0x1E696ABC0];
            v137 = *MEMORY[0x1E696A578];
            v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image affine transform failed"];
            v138 = v63;
            v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
            v65 = [v62 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v64];
            [(MADImageSafetyClassificationRequest *)v61 setError:v65];
          }

          else
          {
            v66 = VCPSignPostLog(v60);
            v67 = v66;
            if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
            {
              v68 = self->_signpostPayload;
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v68;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v67, OS_SIGNPOST_INTERVAL_END, v55, "CommSafetyHandler_affine", "%@", &buf, 0xCu);
            }

            [(VCPMADImageSafetyClassificationTask *)self logMemoryWithMessage:@"[ImageSafety] Before inference"];
            *&buf = 0;
            *(&buf + 1) = &buf;
            v133 = 0x3032000000;
            v134 = __Block_byref_object_copy__8;
            v135 = __Block_byref_object_dispose__8;
            v136 = 0;
            v117 = 0;
            v118 = &v117;
            v119 = 0x3032000000;
            v120 = __Block_byref_object_copy__8;
            v121 = __Block_byref_object_dispose__8;
            v122 = 0;
            v111 = 0;
            v112 = &v111;
            v113 = 0x3032000000;
            v114 = __Block_byref_object_copy__8;
            v115 = __Block_byref_object_dispose__8;
            v116 = 0;
            v105 = 0;
            v106 = &v105;
            v107 = 0x3032000000;
            v108 = __Block_byref_object_copy__8;
            v109 = __Block_byref_object_dispose__8;
            v110 = 0;
            queue = dispatch_queue_create("com.apple.mediaanalysis.VCPMADImageSafetyClassification", MEMORY[0x1E69E96A8]);
            v69 = dispatch_group_create();
            if (v19)
            {
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3321888768;
              block[2] = __42__VCPMADImageSafetyClassificationTask_run__block_invoke;
              block[3] = &unk_1F496A420;
              v100 = v20;
              selfCopy = self;
              v104 = cf;
              if (cf)
              {
                CFRetain(cf);
              }

              v102 = &v111;
              p_buf = &buf;
              dispatch_group_async(v69, queue, block);
              CF<__CVBuffer *>::~CF(&v104);
            }

            if ((v19 & 2) != 0)
            {
              v90 = MEMORY[0x1E69E9820];
              v91 = 3321888768;
              v92 = __42__VCPMADImageSafetyClassificationTask_run__block_invoke_387;
              v93 = &unk_1F496A420;
              v94 = v20;
              selfCopy2 = self;
              v98 = cf;
              if (cf)
              {
                CFRetain(cf);
              }

              v96 = &v105;
              v97 = &v117;
              dispatch_group_async(v69, queue, &v90);
              CF<__CVBuffer *>::~CF(&v98);
            }

            dispatch_group_wait(v69, 0xFFFFFFFFFFFFFFFFLL);
            [(VCPMADImageSafetyClassificationTask *)self logMemoryWithMessage:@"[ImageSafety] After inference"];
            if ((v19 & 1) != 0 && !*(*(&buf + 1) + 40))
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v81 = objc_opt_class();
                v82 = [v112[5] description];
                *v128 = 138412546;
                v129 = v81;
                v130 = 2112;
                v131 = v82;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] safetyHandlerTypeN failed (%@)", v128, 0x16u);
              }

              v83 = self->_request;
              v84 = [v112[5] copy];
              [(MADImageSafetyClassificationRequest *)v83 setError:v84];
            }

            else if ((v19 & 2) != 0 && !v118[5])
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v85 = objc_opt_class();
                v86 = [v106[5] description];
                *v128 = 138412546;
                v129 = v85;
                v130 = 2112;
                v131 = v86;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] safetyHandlerTypeGV failed (%@)", v128, 0x16u);
              }

              v87 = self->_request;
              v88 = [v106[5] copy];
              [(MADImageSafetyClassificationRequest *)v87 setError:v88];
            }

            else
            {
              v70 = *(*(&buf + 1) + 40);
              v71 = MEMORY[0x1E69AE2E0];
              if (v70)
              {
                [v5 setObject:v70 forKeyedSubscript:*MEMORY[0x1E69AE2E0]];
              }

              v72 = v118[5];
              v73 = MEMORY[0x1E69AE2D8];
              if (v72)
              {
                [v5 setObject:v72 forKeyedSubscript:*MEMORY[0x1E69AE2D8]];
              }

              v74 = self->_request;
              v75 = objc_alloc(MEMORY[0x1E69AE340]);
              v76 = [v5 objectForKeyedSubscript:*v71];
              v77 = [v5 objectForKeyedSubscript:*v73];
              v78 = [v75 initWithIsSensitiveNudity:v76 isSensitiveGoreViolence:v77];
              v127 = v78;
              v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v127 count:1];
              [(MADImageSafetyClassificationRequest *)v74 setResults:v79];

              [v22 reset];
              clientBundleID = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
              MADPLLogIVSProcessing(clientBundleID, 0, [(VCPMADServiceImageAsset *)self->_imageAsset assetType], v11);

              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                *v128 = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADImageSafetyClassificationTask complete", v128, 2u);
              }
            }

            _Block_object_dispose(&v105, 8);
            _Block_object_dispose(&v111, 8);

            _Block_object_dispose(&v117, 8);
            _Block_object_dispose(&buf, 8);
          }

          CF<__CVBuffer *>::~CF(&cf);
        }

        CF<__CVBuffer *>::~CF(&v124);

        goto LABEL_15;
      }

      v43 = self->_request;
      v44 = objc_alloc(MEMORY[0x1E69AE340]);
      v45 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE2E0]];
      v46 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE2D8]];
      v47 = [v44 initWithIsSensitiveNudity:v45 isSensitiveGoreViolence:v46];
      v141 = v47;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v141 count:1];
      [(MADImageSafetyClassificationRequest *)v43 setResults:v48];

      clientBundleID2 = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
      MADPLLogIVSProcessing(clientBundleID2, 1, [(VCPMADServiceImageAsset *)self->_imageAsset assetType], v11);

      if (MediaAnalysisLogLevel() < 6 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
LABEL_15:
        CF<__CVBuffer *>::~CF(&v126);
        goto LABEL_16;
      }

      LOWORD(buf) = 0;
      v42 = MEMORY[0x1E69E9C10];
    }

    else
    {
      v36 = self->_request;
      v37 = objc_alloc(MEMORY[0x1E69AE340]);
      v38 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE2E0]];
      v39 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE2D8]];
      v40 = [v37 initWithIsSensitiveNudity:v38 isSensitiveGoreViolence:v39];
      v142 = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v142 count:1];
      [(MADImageSafetyClassificationRequest *)v36 setResults:v41];

      if (MediaAnalysisLogLevel() < 6 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      LOWORD(buf) = 0;
      v42 = MEMORY[0x1E69E9C10];
    }

    _os_log_impl(&dword_1C9B70000, v42, OS_LOG_TYPE_INFO, "VCPMADImageSafetyClassificationTask complete", &buf, 2u);
    goto LABEL_15;
  }

LABEL_16:

  return 0;
}

void __42__VCPMADImageSafetyClassificationTask_run__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) safetyHandlerTypeN];
  v3 = v2;
  if (v2)
  {
    v4 = VCPSignPostLog(v2);
    v5 = os_signpost_id_generate(v4);

    v7 = VCPSignPostLog(v6);
    v8 = v7;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = *(*(a1 + 40) + 24);
      *buf = 138412290;
      v29 = v9;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "CommSafetyHandlerTypeN_analyzePixelBuffer", "%@", buf, 0xCu);
    }

    v10 = *(a1 + 64);
    v11 = *(*(a1 + 48) + 8);
    obj = *(v11 + 40);
    v12 = [v3 analyzePixelBuffer:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    v14 = VCPSignPostLog(v13);
    v15 = v14;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v16 = *(*(a1 + 40) + 24);
      *buf = 138412290;
      v29 = v16;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_END, v5, "CommSafetyHandlerTypeN_analyzePixelBuffer", "%@", buf, 0xCu);
    }

    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "sensitiveExplicit")}];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = objc_opt_class();
      v20 = v29;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ safetyHandlerTypeN unavailable for analyze pixel buffer", buf, 0xCu);
    }

    v21 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ safetyHandlerTypeN unavailable", objc_opt_class()];
    v27 = v12;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v22 = [v21 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v19];
    v23 = *(*(a1 + 48) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }
}

void __42__VCPMADImageSafetyClassificationTask_run__block_invoke_387(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) safetyHandlerTypeGV];
  v3 = v2;
  if (v2)
  {
    v4 = VCPSignPostLog(v2);
    v5 = os_signpost_id_generate(v4);

    v7 = VCPSignPostLog(v6);
    v8 = v7;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = *(*(a1 + 40) + 24);
      *buf = 138412290;
      v31 = v9;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "CommSafetyHandlerTypeGV_analyzePixelBuffer", "%@", buf, 0xCu);
    }

    v10 = *(a1 + 64);
    v11 = *(*(a1 + 48) + 8);
    obj = *(v11 + 40);
    v12 = [v3 analyzePixelBuffer:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    v14 = VCPSignPostLog(v13);
    v15 = v14;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v16 = *(*(a1 + 40) + 24);
      *buf = 138412290;
      v31 = v16;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_END, v5, "CommSafetyHandlerTypeGV_analyzePixelBuffer", "%@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E696AD98];
    if ([v12 sensitiveGore])
    {
      v18 = 1;
    }

    else
    {
      v18 = [v12 sensitiveViolence];
    }

    v25 = [v17 numberWithBool:v18];
    v26 = *(*(a1 + 56) + 8);
    v21 = *(v26 + 40);
    *(v26 + 40) = v25;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = objc_opt_class();
      v19 = v31;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ safetyHandlerTypeGV unavailable for classifying pixel buffer", buf, 0xCu);
    }

    v20 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ safetyHandlerTypeGV unavailable", objc_opt_class()];
    v29 = v12;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v21];
    v23 = *(*(a1 + 48) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 14) = 0;
  return self;
}

@end