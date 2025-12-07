@interface BCSVisualCodeDetector
- (BCSVisualCodeDetector)init;
- (BOOL)_processCameraFrame:(__CVBuffer *)frame timestamp:(double)timestamp cameraMatrix:(double)matrix[9];
- (BOOL)_submitToAppC3D:(__CVBuffer *)d timestamp:(double)timestamp metadata:(id)metadata;
- (CGAffineTransform)_tranformWithImageOrientation:(SEL)orientation;
- (CGRect)_regionOfInterest;
- (id)_estimateQRCodeAvailabilityInFrame:(__CVBuffer *)frame;
- (id)_extractAppClipCode:(AppC3DTrackingResult *)code orientation:(unsigned int)orientation error:(id *)error timestamp:(double)timestamp;
- (void)detectCodeFromBuffer:(opaqueCMSampleBuffer *)buffer completion:(id)completion;
- (void)didReceiveAppC3DUpdate:(AppC3DTrackingResult *)update orientation:(unsigned int)orientation error:(__CFError *)error timestamp:(double)timestamp;
- (void)endSession;
- (void)startSession;
@end

@implementation BCSVisualCodeDetector

- (BCSVisualCodeDetector)init
{
  v6.receiver = self;
  v6.super_class = BCSVisualCodeDetector;
  v2 = [(BCSVisualCodeDetector *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_isAppC3DTracking = 0;
    [(BCSVisualCodeDetector *)v2 startSession];
    v4 = v3;
  }

  return v3;
}

- (void)detectCodeFromBuffer:(opaqueCMSampleBuffer *)buffer completion:(id)completion
{
  completionCopy = completion;
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (ImageBuffer)
  {
    v9 = ImageBuffer;
    v10 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner(ImageBuffer, v8);
    v11 = v10;
    if (v9 != -1 && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2419E7000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Detection", "start code detection", buf, 2u);
    }

    *buf = 0;
    v45 = buf;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__0;
    v48 = __Block_byref_object_dispose__0;
    v49 = 0;
    v12 = dispatch_group_create();
    memset(&v43, 0, sizeof(v43));
    CMSampleBufferGetPresentationTimeStamp(&v43, buffer);
    time = v43;
    Seconds = CMTimeGetSeconds(&time);
    v14 = CMGetAttachment(buffer, *MEMORY[0x277CC06B0], 0);
    v16 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner(v14, v15);
    v17 = v16;
    if (v14 + 1 >= 2 && os_signpost_enabled(v16))
    {
      LOWORD(time.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_2419E7000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Detection.ACCode", "start ACCode code detection", &time, 2u);
    }

    isAppC3DTracking = self->_isAppC3DTracking;
    self->_isAppC3DTracking = 0;
    v19 = [(BCSVisualCodeDetector *)self _submitToAppC3D:v9 timestamp:v14 metadata:Seconds];
    if (v19)
    {
      dispatch_group_enter(v12);
      os_unfair_lock_lock(&appcodeExtractCompletionHandlerLock);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __57__BCSVisualCodeDetector_detectCodeFromBuffer_completion___block_invoke;
      aBlock[3] = &unk_278D024C0;
      v41 = buf;
      v39 = v14;
      v40 = v12;
      v21 = _Block_copy(aBlock);
      appcodeExtractCompletionHandler = self->_appcodeExtractCompletionHandler;
      self->_appcodeExtractCompletionHandler = v21;

      os_unfair_lock_unlock(&appcodeExtractCompletionHandlerLock);
    }

    v23 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner(v19, v20);
    v24 = v23;
    if (v9 != -1 && os_signpost_enabled(v23))
    {
      LOWORD(time.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_2419E7000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Detection.QR", "start QR code detection", &time, 2u);
    }

    v25 = [(BCSVisualCodeDetector *)self _estimateQRCodeAvailabilityInFrame:v9];
    v27 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner(v25, v26);
    v28 = v27;
    if (v9 != -1 && os_signpost_enabled(v27))
    {
      LOWORD(time.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_2419E7000, v28, OS_SIGNPOST_INTERVAL_END, v9, "Detection.QR", "end QR code detection", &time, 2u);
    }

    v31 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner(v29, v30);
    v32 = v31;
    if (v9 != -1 && os_signpost_enabled(v31))
    {
      LOWORD(time.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_2419E7000, v32, OS_SIGNPOST_INTERVAL_END, v9, "Detection", "end code detection", &time, 2u);
    }

    v33 = dispatch_time(0, 1000000000);
    dispatch_group_wait(v12, v33);
    if ([*(v45 + 5) count])
    {
      v34 = [v25 arrayByAddingObjectsFromArray:*(v45 + 5)];

      v25 = v34;
    }

    else if (v25 && [v25 count] && !isAppC3DTracking && self->_isAppC3DTracking)
    {

      v37 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner(v35, v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        LOWORD(time.value) = 0;
        _os_log_impl(&dword_2419E7000, v37, OS_LOG_TYPE_INFO, "Tracking an app clip code, skip QR codes in frame.", &time, 2u);
      }

      v25 = 0;
    }

    completionCopy[2](completionCopy, v25);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

void __57__BCSVisualCodeDetector_detectCodeFromBuffer_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v7 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner(v5, v6);
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9 + 1 >= 2 && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_2419E7000, v8, OS_SIGNPOST_INTERVAL_END, v9, "Detection.ACCode", "end ACCode code detection", v10, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (id)_estimateQRCodeAvailabilityInFrame:(__CVBuffer *)frame
{
  v29[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277CE2D50]);
  v6 = [v5 initWithCVPixelBuffer:frame orientation:self->_imageOrientation options:MEMORY[0x277CBEC10]];
  v7 = objc_alloc_init(MEMORY[0x277CE2C58]);
  [(BCSVisualCodeDetector *)self _regionOfInterest];
  [v7 setRegionOfInterest:?];
  [v7 setRevision:1];
  v29[0] = *MEMORY[0x277CE2EA8];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  [v7 setSymbologies:v8];

  [v7 setStopAtFirstPyramidWith2DCode:1];
  v28 = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v26 = 0;
  [v6 performRequests:v9 error:&v26];
  v10 = v26;

  results = [v7 results];
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = results;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        v19 = [BCSVisualCodeQR alloc];
        v20 = [(BCSVisualCodeQR *)v19 initWithBarcodeObservation:v18, v22];
        [array addObject:v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v15);
  }

  return array;
}

- (CGRect)_regionOfInterest
{
  v2 = 0.15;
  v3 = 0.2;
  v4 = 0.7;
  v5 = 0.6;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)didReceiveAppC3DUpdate:(AppC3DTrackingResult *)update orientation:(unsigned int)orientation error:(__CFError *)error timestamp:(double)timestamp
{
  v16 = *MEMORY[0x277D85DE8];
  if (error)
  {
    v8 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner(self, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      errorCopy = error;
      _os_log_impl(&dword_2419E7000, v8, OS_LOG_TYPE_INFO, "Error in update callback: %@", buf, 0xCu);
    }

    v9 = 0;
    v10 = 0;
  }

  else
  {
    v13 = 0;
    v9 = [(BCSVisualCodeDetector *)self _extractAppClipCode:update orientation:*&orientation error:&v13 timestamp:timestamp];
    v10 = v13;
  }

  os_unfair_lock_lock(&appcodeExtractCompletionHandlerLock);
  appcodeExtractCompletionHandler = self->_appcodeExtractCompletionHandler;
  if (appcodeExtractCompletionHandler)
  {
    appcodeExtractCompletionHandler[2](appcodeExtractCompletionHandler, v9);
    v12 = self->_appcodeExtractCompletionHandler;
  }

  else
  {
    v12 = 0;
  }

  self->_appcodeExtractCompletionHandler = 0;

  os_unfair_lock_unlock(&appcodeExtractCompletionHandlerLock);
}

- (CGAffineTransform)_tranformWithImageOrientation:(SEL)orientation
{
  switch(a4)
  {
    case 6u:
      v5 = xmmword_241A064E0;
      __asm { FMOV            V0.2D, #1.0 }

      v6 = 0.0;
      goto LABEL_7;
    case 3u:
      _Q0 = xmmword_241A06580;
      v5 = xmmword_241A06590;
      v6 = -1.0;
      goto LABEL_7;
    case 1u:
      _Q0 = xmmword_241A06590;
      v5 = xmmword_241A06680;
      v6 = 1.0;
LABEL_7:
      retstr->a = v6;
      *&retstr->b = v5;
      *&retstr->c = v5;
      *&retstr->tx = _Q0;
      return self;
  }

  v11 = MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v12;
  *&retstr->tx = *(v11 + 32);
  return self;
}

- (id)_extractAppClipCode:(AppC3DTrackingResult *)code orientation:(unsigned int)orientation error:(id *)error timestamp:(double)timestamp
{
  v50 = *MEMORY[0x277D85DE8];
  v46 = *error;
  NumberOfTrackingData = AppC3DTrackingResultGetNumberOfTrackingData();
  if (v46)
  {
    v10 = 0;
  }

  else
  {
    v11 = NumberOfTrackingData;
    if (NumberOfTrackingData)
    {
      v12 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner(NumberOfTrackingData, v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0].x) = 134218240;
        *(&buf[0].x + 4) = v11;
        WORD2(buf[0].y) = 2048;
        *(&buf[0].y + 6) = timestamp;
        _os_log_impl(&dword_2419E7000, v12, OS_LOG_TYPE_INFO, "App clip code tracking %ld codes at %f", buf, 0x16u);
      }
    }

    array = [MEMORY[0x277CBEB18] array];
    if (v11)
    {
      v14 = 0;
      v41 = v11;
      while (1)
      {
        self->_isAppC3DTracking = 1;
        Data = AppC3DTrackingResultCreateData();
        v16 = Data;
        if (v46 || Data == 0)
        {
          break;
        }

        AppC3DTrackingResultGetMetadata();
        if (v46)
        {
          break;
        }

        DataVersion = AppC3DTrackingResultGetDataVersion();
        if (v46)
        {
          break;
        }

        v19 = DataVersion;
        Corners = AppC3DTrackingResultCreateCorners();
        if (![Corners count] || v46 || objc_msgSend(Corners, "count") != 4)
        {

          break;
        }

        v40 = v19;
        v21 = array;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        selfCopy = self;
        objc_msgSend__tranformWithImageOrientation_(self);
        for (i = 0; i != 4; ++i)
        {
          point.x = 0.0;
          point.y = 0.0;
          v24 = [Corners objectAtIndexedSubscript:i];
          v25 = CGPointMakeWithDictionaryRepresentation(v24, &point);

          if (!v25)
          {

            v10 = 0;
            array = v21;
            goto LABEL_30;
          }

          buf[i] = vaddq_f64(v45, vmlaq_n_f64(vmulq_n_f64(v44, point.y), v43, point.x));
        }

        self = selfCopy;
        [(BCSVisualCodeDetector *)selfCopy _regionOfInterest];
        x = v52.origin.x;
        y = v52.origin.y;
        width = v52.size.width;
        height = v52.size.height;
        v30 = buf[0].x;
        v31 = buf[0].y;
        array = v21;
        if (CGRectContainsPoint(v52, buf[0]))
        {
          v32 = buf[1].x;
          v33 = buf[1].y;
          v53.origin.x = x;
          v53.origin.y = y;
          v53.size.width = width;
          v53.size.height = height;
          if (CGRectContainsPoint(v53, buf[1]))
          {
            v54.origin.x = x;
            v54.origin.y = y;
            v54.size.width = width;
            v54.size.height = height;
            v38 = v48.y;
            v39 = v48.x;
            if (CGRectContainsPoint(v54, v48))
            {
              v55.origin.x = x;
              v55.origin.y = y;
              v55.size.width = width;
              v34 = v49.x;
              v55.size.height = height;
              v35 = v49.y;
              if (CGRectContainsPoint(v55, v49))
              {
                v36 = [[BCSVisualCodeAppClip alloc] initWithRawPayload:v16 version:v40];
                [(BCSVisualCode *)v36 setTopLeft:v30, v31];
                [(BCSVisualCode *)v36 setTopRight:v32, v33];
                [(BCSVisualCode *)v36 setBottomRight:v39, v38];
                [(BCSVisualCode *)v36 setBottomLeft:v34, v35];
                [v21 addObject:v36];
              }
            }
          }
        }

        if (++v14 == v41)
        {
          goto LABEL_26;
        }
      }

      v10 = 0;
    }

    else
    {
LABEL_26:
      v10 = array;
    }

LABEL_30:
  }

  return v10;
}

- (BOOL)_processCameraFrame:(__CVBuffer *)frame timestamp:(double)timestamp cameraMatrix:(double)matrix[9]
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"orientation";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_imageOrientation];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  AppC3DProcessCameraFrameData();
  return 1;
}

- (BOOL)_submitToAppC3D:(__CVBuffer *)d timestamp:(double)timestamp metadata:(id)metadata
{
  v20 = *MEMORY[0x277D85DE8];
  if (metadata)
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    [metadata getBytes:&v12 length:48];
    *buf = vcvtq_f64_f32(vzip1_s32(*v12.i8, *v13.i8));
    v16 = vcvtq_f64_f32(__PAIR64__(v12.u32[1], v14));
    v17 = vcvtq_f64_f32(vzip2_s32(*v13.i8, *&v14));
    v18 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)));
    v19 = *(&v14 + 2);
  }

  else
  {
    v8 = BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle(self, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2419E7000, v8, OS_LOG_TYPE_INFO, "Intrinsics metadata is nil, generate the matrix based on image dimension.", buf, 2u);
    }

    Width = CVPixelBufferGetWidth(d);
    Height = CVPixelBufferGetHeight(d);
    *buf = Width;
    *&buf[8] = 0;
    v16.f64[0] = (Width + -1.0) * 0.5;
    v16.f64[1] = 0.0;
    v17.f64[0] = Width;
    v17.f64[1] = (Height + -1.0) * 0.5;
    v18 = 0uLL;
    v19 = 1.0;
  }

  return [(BCSVisualCodeDetector *)self _processCameraFrame:d timestamp:buf cameraMatrix:timestamp];
}

- (void)startSession
{
  if (!self->_appCodeSession)
  {
    AppC3DConfigCreate();
    AppC3DConfigSetTrackingMode();
    AppC3DConfigSetTrackingConfig();
    AppC3DCreate();
    AppC3DConfigRelease();
    AppC3DSetUpdateCallback();
  }
}

- (void)endSession
{
  if (self->_appCodeSession)
  {
    AppC3DRelease();
    self->_appCodeSession = 0;
  }
}

@end