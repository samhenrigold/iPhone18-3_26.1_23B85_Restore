@interface VGHRTFEarPCACaptureProcessor
- (VGHRTFEarPCACaptureProcessor)initWithDebugDataPath:(id)path withModelsRootPath:(id)rootPath;
- (id)defaultUpdateData;
- (id)processCaptureData:(id)data faceData:(id)faceData;
@end

@implementation VGHRTFEarPCACaptureProcessor

- (VGHRTFEarPCACaptureProcessor)initWithDebugDataPath:(id)path withModelsRootPath:(id)rootPath
{
  pathCopy = path;
  rootPathCopy = rootPath;
  v19.receiver = self;
  v19.super_class = VGHRTFEarPCACaptureProcessor;
  v8 = [(VGHRTFEarPCACaptureProcessor *)&v19 init];
  if (v8)
  {
    v9 = [[VGEarPCACaptureOptions alloc] initWithSuiteName:@"com.apple.visage"];
    earCaptureOptions = v8->_earCaptureOptions;
    v8->_earCaptureOptions = v9;

    [(VGEarPCACaptureOptions *)v8->_earCaptureOptions setWriteDebugData:pathCopy != 0];
    if (pathCopy)
    {
      v11 = [pathCopy stringByAppendingPathComponent:@"EarPCACapture"];
      [(VGEarPCACaptureOptions *)v8->_earCaptureOptions setDebugDataPath:v11];
    }

    [(VGEarPCACaptureOptions *)v8->_earCaptureOptions setModelsRootPath:rootPathCopy];
    v12 = [[VGEarPCAFrameSelector alloc] initWithOptions:v8->_earCaptureOptions];
    selector = v8->_selector;
    v8->_selector = v12;

    if (v8->_selector)
    {
      vg::hrtf::Rectify::create();
    }

    v15 = __VGLogSharedInstance(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      v16 = " Failed to initialize ear frame selector. ";
      goto LABEL_10;
    }
  }

  else
  {
    v15 = __VGLogSharedInstance(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      v16 = " Failed to initialize VGHRTFCaptureProcessor ";
LABEL_10:
      _os_log_impl(&dword_270F06000, v15, OS_LOG_TYPE_ERROR, v16, &v18, 2u);
    }
  }

  return 0;
}

- (id)defaultUpdateData
{
  frameCountThreshold = [(VGEarPCACaptureOptions *)self->_earCaptureOptions frameCountThreshold];
  v3 = objc_opt_new();
  if (frameCountThreshold)
  {
    for (i = 0; i != frameCountThreshold; ++i)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithDouble:i];
      [v3 setObject:0 forKeyedSubscript:v5];
    }
  }

  initEmpty = [[VGHRTFEarCaptureUpdateData alloc] initEmpty];
  [initEmpty setProgressType:0];
  [initEmpty setProgress:0.0];
  [initEmpty setLeftEarStatusList:v3];
  [initEmpty setRightEarStatusList:v3];
  [initEmpty setTrackedData:0];
  [initEmpty setResult:0];

  return initEmpty;
}

- (id)processCaptureData:(id)data faceData:(id)faceData
{
  v100 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  faceDataCopy = faceData;
  defaultUpdateData = [(VGHRTFEarPCACaptureProcessor *)self defaultUpdateData];
  ptr = self->_rectify.__ptr_;
  colorBuffer = [dataCopy colorBuffer];
  depthBuffer = [dataCopy depthBuffer];
  [dataCopy colorIntrinsics];
  v65 = v12;
  v67 = v11;
  v62 = v13;
  depthCalibrationData = [dataCopy depthCalibrationData];
  v102.columns[1] = v65;
  v102.columns[0] = v67;
  v102.columns[2] = v62;
  vg::hrtf::Rectify::process(v94, ptr, colorBuffer, depthBuffer, v102, depthCalibrationData);

  if (v99)
  {
    v68 = objc_opt_new();
    if ((v99 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(v95);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __60__VGHRTFEarPCACaptureProcessor_processCaptureData_faceData___block_invoke;
    v71[3] = &__block_descriptor_40_e5_v8__0l;
    v71[4] = CVPixelBufferFromIOSurface;
    v59 = MEMORY[0x2743B9AA0](v71);
    [v68 setDepth:CVPixelBufferFromIOSurface];
    if ((v99 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    [v68 setDepthIntrinsics:{v96, v97, v98}];
    if ((v99 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v17 = createCVPixelBufferFromIOSurface(v94[0]);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __60__VGHRTFEarPCACaptureProcessor_processCaptureData_faceData___block_invoke_2;
    v70[3] = &__block_descriptor_40_e5_v8__0l;
    v70[4] = v17;
    v60 = MEMORY[0x2743B9AA0](v70);
    [v68 setYuvRectified:v17];
    if ((v99 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    [v68 setVideoIntrinsics:{*&v94[2], *&v94[4], *&v94[6]}];
    objc_msgSend_timestamp(dataCopy);
    CMTimeMakeWithSeconds(&v69, v18, 1000000);
    buf = *&v69.value;
    *&v84 = v69.epoch;
    [v68 setTimestamp:&buf];
    selector = self->_selector;
    yawAngle = [faceDataCopy yawAngle];
    v63 = [(VGEarPCAFrameSelector *)selector addPoseWithCaptureData:v68 faceYaw:yawAngle];

    if ([v63 completed])
    {
      if ([v63 failed])
      {
        v21 = 2;
      }

      else
      {
        v21 = 3;
      }
    }

    else
    {
      v21 = 1;
    }

    [v63 progress];
    v25 = v24;
    [defaultUpdateData setProgressType:v21];
    LODWORD(v26) = v25;
    [defaultUpdateData setProgress:v26];
    currentState = [(VGEarPCAFrameSelector *)self->_selector currentState];
    v28 = detail::getEarPoseList([currentState leftFrameCount], -[VGEarPCAFrameSelector requiredPosesCount](self->_selector, "requiredPosesCount"));
    [defaultUpdateData setLeftEarStatusList:v28];

    currentState2 = [(VGEarPCAFrameSelector *)self->_selector currentState];
    v30 = detail::getEarPoseList([currentState2 rightFrameCount], -[VGEarPCAFrameSelector requiredPosesCount](self->_selector, "requiredPosesCount"));
    [defaultUpdateData setRightEarStatusList:v30];

    initEmpty = [[VGHRTFEarCaptureProcessedData alloc] initEmpty];
    v31 = v63;
    v22 = v68;
    if ([v31 detectionError])
    {
      v32 = 0;
      goto LABEL_67;
    }

    initEmpty2 = [[VGHRTFEarCaptureDetectionData alloc] initEmpty];
    if (v31)
    {
      objc_msgSend_pose(v31);
    }

    else
    {
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      buf = 0u;
    }

    Width = CVPixelBufferGetWidth([v22 yuvRectified]);
    Height = CVPixelBufferGetHeight([v22 yuvRectified]);
    v58 = v90;
    if (v31)
    {
      objc_msgSend_pose(v31);
      v35 = *v72 == 0;
      if (*(&v81 + 1))
      {
        *&v82 = *(&v81 + 1);
        operator delete(*(&v81 + 1));
      }
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v35 = 1;
      *v72 = 0u;
      v73 = 0u;
    }

    if (v80)
    {
      *(&v80 + 1) = v80;
      operator delete(v80);
    }

    if (v35)
    {
      v36 = 0;
    }

    else
    {
      if (v31)
      {
        objc_msgSend_pose(v31);
        v37 = *v72 == 1;
        if (*(&v81 + 1))
        {
          *&v82 = *(&v81 + 1);
          operator delete(*(&v81 + 1));
        }
      }

      else
      {
        v37 = 0;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        *v72 = 0u;
        v73 = 0u;
      }

      v38 = v80;
      if (v80)
      {
        *(&v80 + 1) = v80;
        operator delete(v80);
      }

      if (!v37)
      {
        v43 = __VGLogSharedInstance(v38);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *v72 = 0;
          _os_log_impl(&dword_270F06000, v43, OS_LOG_TYPE_ERROR, " No suitable conversion supported for ear side. ", v72, 2u);
        }

        v32 = 0;
        goto LABEL_62;
      }

      v36 = 1;
    }

    [initEmpty2 setEarSide:{v36, v58}];
    if (v31)
    {
      objc_msgSend_pose(v31);
      v39 = *(&v78 + 1);
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v39 = 0.0;
      *v72 = 0u;
      v73 = 0u;
    }

    [initEmpty2 setYawAngle:v39];
    if (*(&v81 + 1))
    {
      *&v82 = *(&v81 + 1);
      operator delete(*(&v81 + 1));
    }

    if (v80)
    {
      *(&v80 + 1) = v80;
      operator delete(v80);
    }

    if (v31)
    {
      objc_msgSend_pose(v31);
      v40 = *(&v78 + 2);
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v40 = 0.0;
      *v72 = 0u;
      v73 = 0u;
    }

    [initEmpty2 setPitchAngle:v40];
    v41 = vmuls_lane_f32(Height, *&v58, 1);
    if (*(&v81 + 1))
    {
      *&v82 = *(&v81 + 1);
      operator delete(*(&v81 + 1));
    }

    v42 = v41;
    if (v80)
    {
      *(&v80 + 1) = v80;
      operator delete(v80);
    }

    [initEmpty2 setBoundingBox:{(Width * *&v58), v42, ((*(&v58 + 2) - *&v58) * Width), ((*(&v58 + 3) - *(&v58 + 1)) * Height)}];
    v43 = objc_opt_new();
    if (v31)
    {
      objc_msgSend_pose(v31);
      v45 = *(&v80 + 1);
      for (i = v80; i != v45; ++i)
      {
        LODWORD(v44) = *i;
        v47 = [MEMORY[0x277CCABB0] numberWithFloat:v44];
        [v43 addObject:v47];
      }
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      *v72 = 0u;
      v73 = 0u;
    }

    if (*(&v81 + 1))
    {
      *&v82 = *(&v81 + 1);
      operator delete(*(&v81 + 1));
    }

    if (v80)
    {
      *(&v80 + 1) = v80;
      operator delete(v80);
    }

    [initEmpty2 setLandmarkPoints:v43];
    v32 = initEmpty2;
LABEL_62:

    if (*(&v92 + 1))
    {
      *&v93 = *(&v92 + 1);
      operator delete(*(&v92 + 1));
    }

    if (v91)
    {
      *(&v91 + 1) = v91;
      operator delete(v91);
    }

LABEL_67:
    [initEmpty setDetectionData:v32];

    colorBuffer2 = [dataCopy colorBuffer];
    [initEmpty setRectifiedColorBuffer:colorBuffer2];

    detectionError = [v31 detectionError];
    if (detectionError <= 3)
    {
      if (detectionError > 1)
      {
        if (detectionError == 2)
        {
          v50 = __VGLogSharedInstance(detectionError);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_270F06000, v50, OS_LOG_TYPE_DEBUG, " Ear detection failed: low landmark confidence. ", &buf, 2u);
          }

          v51 = 5;
        }

        else
        {
          v50 = __VGLogSharedInstance(detectionError);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_270F06000, v50, OS_LOG_TYPE_DEBUG, " Front facing pose ", &buf, 2u);
          }

          v51 = 6;
        }

        goto LABEL_101;
      }

      if (!detectionError)
      {
        v51 = 8;
LABEL_102:
        [initEmpty setError:{v51, v58}];
        goto LABEL_103;
      }

      if (detectionError == 1)
      {
        v50 = __VGLogSharedInstance(detectionError);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_270F06000, v50, OS_LOG_TYPE_DEBUG, " Ear detection failed: ear not found. ", &buf, 2u);
        }

        v51 = 0;
        goto LABEL_101;
      }
    }

    else
    {
      if (detectionError <= 5)
      {
        if (detectionError == 4)
        {
          v50 = __VGLogSharedInstance(detectionError);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_270F06000, v50, OS_LOG_TYPE_DEBUG, " Ear detection failed: ear occluded. ", &buf, 2u);
          }

          v51 = 1;
        }

        else
        {
          v50 = __VGLogSharedInstance(detectionError);
          v51 = 2;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            v51 = 2;
            _os_log_impl(&dword_270F06000, v50, OS_LOG_TYPE_DEBUG, " Ear motion blur detected. ", &buf, 2u);
          }
        }

        goto LABEL_101;
      }

      switch(detectionError)
      {
        case 6:
          v50 = __VGLogSharedInstance(detectionError);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_270F06000, v50, OS_LOG_TYPE_DEBUG, " Ear too close to camera. ", &buf, 2u);
          }

          v51 = 3;
          goto LABEL_101;
        case 7:
          v50 = __VGLogSharedInstance(detectionError);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_270F06000, v50, OS_LOG_TYPE_DEBUG, " Ear too far from camera. ", &buf, 2u);
          }

          v51 = 4;
          goto LABEL_101;
        case 8:
          v50 = __VGLogSharedInstance(detectionError);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_270F06000, v50, OS_LOG_TYPE_DEBUG, " Ear out of frame ", &buf, 2u);
          }

          v51 = 7;
LABEL_101:

          goto LABEL_102;
      }
    }

LABEL_103:
    [defaultUpdateData setTrackedData:{initEmpty, v58}];
    if ([defaultUpdateData progressType] == 3)
    {
      initEmpty3 = [[VGHRTFEarsFrameData alloc] initEmpty];
      v53 = self->_selector;
      if (v53)
      {
        objc_msgSend_leftEarEnrolledPoses(v53);
      }

      else
      {
        buf = 0uLL;
        *&v84 = 0;
      }

      v54 = detail::getEarFrameData(&buf);
      [initEmpty3 setLeftEarFrames:v54];

      *v72 = &buf;
      std::vector<EarFrame>::__destroy_vector::operator()[abi:ne200100](v72);
      v55 = self->_selector;
      if (v55)
      {
        objc_msgSend_rightEarEnrolledPoses(v55);
      }

      else
      {
        buf = 0uLL;
        *&v84 = 0;
      }

      v56 = detail::getEarFrameData(&buf);
      [initEmpty3 setRightEarFrames:v56];

      *v72 = &buf;
      std::vector<EarFrame>::__destroy_vector::operator()[abi:ne200100](v72);
      [defaultUpdateData setResult:initEmpty3];
    }

    v23 = defaultUpdateData;

    v60[2](v60);
    v59[2](v59);

    goto LABEL_112;
  }

  v22 = __VGLogSharedInstance(v15);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_270F06000, v22, OS_LOG_TYPE_ERROR, " Failed to rectify ear images. ", &buf, 2u);
  }

  v23 = 0;
LABEL_112:

  if (v99 == 1)
  {
  }

  return v23;
}

@end