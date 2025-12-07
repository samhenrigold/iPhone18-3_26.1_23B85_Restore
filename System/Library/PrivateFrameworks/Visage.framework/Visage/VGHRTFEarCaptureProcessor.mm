@interface VGHRTFEarCaptureProcessor
- (VGHRTFEarCaptureProcessor)initWithDebugDataPath:(id)path withModelsRootPath:(id)rootPath;
- (id).cxx_construct;
- (id)currentUpdateData;
- (id)initWithDebugDataPath:withModelsRootPath:;
- (id)processCaptureData:(id)data faceData:(id)faceData;
@end

@implementation VGHRTFEarCaptureProcessor

- (VGHRTFEarCaptureProcessor)initWithDebugDataPath:(id)path withModelsRootPath:(id)rootPath
{
  pathCopy = path;
  rootPathCopy = rootPath;
  v16.receiver = self;
  v16.super_class = VGHRTFEarCaptureProcessor;
  v8 = [(VGHRTFEarCaptureProcessor *)&v16 init];
  v9 = v8;
  v10 = v8;
  if (v8)
  {
    v8->_earCaptureOptions.writeDebugData = pathCopy != 0;
    if (pathCopy)
    {
      v11 = [pathCopy stringByAppendingPathComponent:@"EarCapture"];
      std::string::basic_string[abi:ne200100]<0>(v14, [v11 UTF8String]);
      if (*(&v10->_earCaptureOptions.debugDataPath.__rep_.__l + 23) < 0)
      {
        operator delete(v9->_earCaptureOptions.debugDataPath.__rep_.__l.__data_);
      }

      *v9->_earCaptureOptions.debugDataPath.__rep_.__s.__data_ = *v14;
      *(&v9->_earCaptureOptions.debugDataPath.__rep_.__l + 2) = v15;
      HIBYTE(v15) = 0;
      LOBYTE(v14[0]) = 0;
    }

    std::string::__assign_external(&v9->_earCaptureOptions.var0, [rootPathCopy UTF8String]);
    vg::frame_selection::VGEarFrameSelector::create();
  }

  v12 = __VGLogSharedInstance(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_ERROR, " Failed to initialize VGHRTFCaptureProcessor ", v14, 2u);
  }

  return 0;
}

- (id)initWithDebugDataPath:withModelsRootPath:
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = selfCopy;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * i) doubleValue];
        v8 = [MEMORY[0x277CCABB0] numberWithDouble:ceil(v7 * 100.0) / 100.0];
        [v2 setObject:0 forKeyedSubscript:v8];
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return v2;
}

- (id)currentUpdateData
{
  initEmpty = [[VGHRTFEarCaptureUpdateData alloc] initEmpty];
  [initEmpty setProgressType:self->_captureState];
  *&v4 = self->_progress;
  [initEmpty setProgress:v4];
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_leftPoseStatus copyItems:1];
  [initEmpty setLeftEarStatusList:v5];

  v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_rightPoseStatus copyItems:1];
  [initEmpty setRightEarStatusList:v6];

  [initEmpty setTrackedData:0];
  [initEmpty setResult:0];

  return initEmpty;
}

- (id)processCaptureData:(id)data faceData:(id)faceData
{
  v84 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  faceDataCopy = faceData;
  currentUpdateData = [(VGHRTFEarCaptureProcessor *)self currentUpdateData];
  ptr = self->_rectify.__ptr_;
  colorBuffer = [dataCopy colorBuffer];
  depthBuffer = [dataCopy depthBuffer];
  [dataCopy colorIntrinsics];
  v59 = v12;
  *v61 = v11;
  v57 = v13;
  depthCalibrationData = [dataCopy depthCalibrationData];
  v86.columns[1] = v59;
  v86.columns[0] = *v61;
  v86.columns[2] = v57;
  vg::hrtf::Rectify::process(v78, ptr, colorBuffer, depthBuffer, v86, depthCalibrationData);

  if (v83)
  {
    v62 = objc_opt_new();
    if ((v83 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(v79);
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __57__VGHRTFEarCaptureProcessor_processCaptureData_faceData___block_invoke;
    v65[3] = &__block_descriptor_40_e5_v8__0l;
    v65[4] = CVPixelBufferFromIOSurface;
    v55 = MEMORY[0x2743B9AA0](v65);
    [(VGCaptureData *)v62 setDepth:CVPixelBufferFromIOSurface];
    if ((v83 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    [(VGCaptureData *)v62 setDepthIntrinsics:v80, v81, v82];
    if ((v83 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v17 = createCVPixelBufferFromIOSurface(v78[0]);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __57__VGHRTFEarCaptureProcessor_processCaptureData_faceData___block_invoke_2;
    v64[3] = &__block_descriptor_40_e5_v8__0l;
    v64[4] = v17;
    v58 = MEMORY[0x2743B9AA0](v64);
    [(VGCaptureData *)v62 setYuvRectified:v17];
    if ((v83 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    [(VGCaptureData *)v62 setVideoIntrinsics:*&v78[2], *&v78[4], *&v78[6]];
    objc_msgSend_timestamp(dataCopy);
    CMTimeMakeWithSeconds(&v63, v18, 1000000);
    buf[0] = v63;
    [(VGCaptureData *)v62 setTimestamp:buf];
    vg::frame_selection::VGEarFrameSelector::addPoseWithCaptureData(&buf[0].value, self->_selector.__ptr_, v62);
    self->_captureState = 1;
    if (LOBYTE(buf[0].value) == 1)
    {
      v19 = 2;
      if (!BYTE1(buf[0].value))
      {
        v19 = 3;
      }

      self->_captureState = v19;
    }

    self->_progress = *(&buf[0].value + 1);
    v20 = vg::frame_selection::VGEarSelectionState::leftEarYawAngleCaptured(buf);
    v21 = detail::getEarPoseList(v20);
    leftPoseStatus = self->_leftPoseStatus;
    self->_leftPoseStatus = v21;

    v23 = vg::frame_selection::VGEarSelectionState::rightEarYawAngleCaptured(buf);
    v24 = detail::getEarPoseList(v23);
    rightPoseStatus = self->_rightPoseStatus;
    self->_rightPoseStatus = v24;

    [currentUpdateData setProgressType:self->_captureState];
    *&v26 = self->_progress;
    [currentUpdateData setProgress:v26];
    v27 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_leftPoseStatus copyItems:1];
    [currentUpdateData setLeftEarStatusList:v27];

    v28 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_rightPoseStatus copyItems:1];
    [currentUpdateData setRightEarStatusList:v28];

    initEmpty = [[VGHRTFEarCaptureProcessedData alloc] initEmpty];
    v60 = v62;
    if (v75)
    {
      v30 = 0;
    }

    else
    {
      initEmpty2 = [[VGHRTFEarCaptureDetectionData alloc] initEmpty];
      Width = CVPixelBufferGetWidth([(VGCaptureData *)v60 yuvRectified]);
      Height = CVPixelBufferGetHeight([(VGCaptureData *)v60 yuvRectified]);
      v36 = Height;
      v54 = v70;
      if (LODWORD(buf[0].epoch) > 1)
      {
        v37 = __VGLogSharedInstance(Height);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *v66 = 0;
          _os_log_impl(&dword_270F06000, v37, OS_LOG_TYPE_ERROR, " No suitable conversion supported for ear side. ", v66, 2u);
        }

        v30 = 0;
      }

      else
      {
        [initEmpty2 setEarSide:v70];
        [initEmpty2 setYawAngle:v68];
        [initEmpty2 setPitchAngle:v69];
        [initEmpty2 setBoundingBox:{(Width * *&v54), vmuls_lane_f32(v36, *&v54, 1), ((*(&v54 + 2) - *&v54) * Width), ((*(&v54 + 3) - *(&v54 + 1)) * v36)}];
        v37 = objc_opt_new();
        v39 = v71;
        v40 = v72;
        if (v71 != v72)
        {
          do
          {
            LODWORD(v38) = *v39;
            v41 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
            [v37 addObject:v41];

            ++v39;
          }

          while (v39 != v40);
        }

        [initEmpty2 setLandmarkPoints:v37];
        v30 = initEmpty2;
      }
    }

    [initEmpty setDetectionData:v30];
    if ((v83 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v42 = [initEmpty setRectifiedColorBuffer:v78[0]];
    if (v75 <= 3)
    {
      if (v75 > 1)
      {
        if (v75 == 2)
        {
          v43 = __VGLogSharedInstance(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *v66 = 0;
            _os_log_impl(&dword_270F06000, v43, OS_LOG_TYPE_DEBUG, " Ear detection failed: low landmark confidence. ", v66, 2u);
          }

          v44 = 5;
        }

        else
        {
          v43 = __VGLogSharedInstance(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *v66 = 0;
            _os_log_impl(&dword_270F06000, v43, OS_LOG_TYPE_DEBUG, " Front facing pose ", v66, 2u);
          }

          v44 = 6;
        }

        goto LABEL_58;
      }

      if (!v75)
      {
        v44 = 8;
LABEL_59:
        [initEmpty setError:{v44, v54}];
        goto LABEL_60;
      }

      if (v75 == 1)
      {
        v43 = __VGLogSharedInstance(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          *v66 = 0;
          _os_log_impl(&dword_270F06000, v43, OS_LOG_TYPE_DEBUG, " Ear detection failed: ear not found. ", v66, 2u);
        }

        v44 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      if (v75 <= 5)
      {
        if (v75 == 4)
        {
          v43 = __VGLogSharedInstance(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *v66 = 0;
            _os_log_impl(&dword_270F06000, v43, OS_LOG_TYPE_DEBUG, " Ear detection failed: ear occluded. ", v66, 2u);
          }

          v44 = 1;
        }

        else
        {
          v43 = __VGLogSharedInstance(v42);
          v44 = 2;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *v66 = 0;
            v44 = 2;
            _os_log_impl(&dword_270F06000, v43, OS_LOG_TYPE_DEBUG, " Ear motion blur detected. ", v66, 2u);
          }
        }

        goto LABEL_58;
      }

      switch(v75)
      {
        case 6:
          v43 = __VGLogSharedInstance(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *v66 = 0;
            _os_log_impl(&dword_270F06000, v43, OS_LOG_TYPE_DEBUG, " Ear too close to camera. ", v66, 2u);
          }

          v44 = 3;
          goto LABEL_58;
        case 7:
          v43 = __VGLogSharedInstance(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *v66 = 0;
            _os_log_impl(&dword_270F06000, v43, OS_LOG_TYPE_DEBUG, " Ear too far from camera. ", v66, 2u);
          }

          v44 = 4;
          goto LABEL_58;
        case 8:
          v43 = __VGLogSharedInstance(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *v66 = 0;
            _os_log_impl(&dword_270F06000, v43, OS_LOG_TYPE_DEBUG, " Ear out of frame ", v66, 2u);
          }

          v44 = 7;
LABEL_58:

          goto LABEL_59;
      }
    }

LABEL_60:
    [currentUpdateData setTrackedData:{initEmpty, v54}];
    if ([currentUpdateData progressType] == 3)
    {
      initEmpty3 = [[VGHRTFEarsFrameData alloc] initEmpty];
      v46 = vg::frame_selection::VGEarFrameSelector::leftEarEnrolledPoses(self->_selector.__ptr_);
      v47 = vg::frame_selection::VGEarFrameSelector::leftEarEnrolledYawToBoundingBox(self->_selector.__ptr_);
      v48 = detail::getEarFrameData(v46, v47);
      [initEmpty3 setLeftEarFrames:v48];

      v49 = vg::frame_selection::VGEarFrameSelector::rightEarEnrolledPoses(self->_selector.__ptr_);
      v50 = vg::frame_selection::VGEarFrameSelector::rightEarEnrolledYawToBoundingBox(self->_selector.__ptr_);
      v51 = detail::getEarFrameData(v49, v50);
      [initEmpty3 setRightEarFrames:v51];

      [currentUpdateData setResult:initEmpty3];
    }

    v52 = currentUpdateData;

    if (__p)
    {
      v74 = __p;
      operator delete(__p);
    }

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }

    v58[2](v58);

    v55[2](v55);
    goto LABEL_67;
  }

  v31 = __VGLogSharedInstance(v15);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0].value) = 0;
    _os_log_impl(&dword_270F06000, v31, OS_LOG_TYPE_ERROR, " Failed to rectify ear images. ", buf, 2u);
  }

  v32 = currentUpdateData;
LABEL_67:
  if (v83 == 1)
  {
  }

  return currentUpdateData;
}

- (id).cxx_construct
{
  self->_selector.__ptr_ = 0;
  *&self->_earCaptureOptions.earPresenceThreshold = xmmword_270FA6670;
  self->_earCaptureOptions.percentileDetectionConfidence = 0.8;
  *&self->_earCaptureOptions.yawCount = xmmword_270FA6680;
  *&self->_earCaptureOptions.yawLimit = xmmword_270FA6690;
  self->_earCaptureOptions.writeDebugData = 0;
  std::string::basic_string[abi:ne200100]<0>(&self->_earCaptureOptions.debugDataPath.__rep_.__l.__data_, "");
  std::string::basic_string[abi:ne200100]<0>(&self->_earCaptureOptions.var0, "");
  self->_anon_70[16] = 1;
  *&self->_anon_70[20] = 1083808154;
  *&self->_anon_70[24] = &unk_2880F5D40;
  self->_rectify.__ptr_ = 0;
  return self;
}

@end