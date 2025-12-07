@interface VGEarPCAFrameSelector
- (VGEarPCAFrameSelector)initWithOptions:(id)options;
- (float)getMotionBlurScoreFromLandmarks:()vector<float isEarDetected:(std:(BOOL)detected :(id *)a5 allocator<float>> *)a3 frameTimestamp:;
- (id).cxx_construct;
- (id)addPoseWithCaptureData:(id)data faceYaw:(id)yaw;
- (id)currentState;
- (vector<EarFrame,)posesFromGroup:(VGEarPCAFrameSelector *)self;
@end

@implementation VGEarPCAFrameSelector

- (VGEarPCAFrameSelector)initWithOptions:(id)options
{
  v27 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v25.receiver = self;
  v25.super_class = VGEarPCAFrameSelector;
  v5 = [(VGEarPCAFrameSelector *)&v25 init];
  v6 = v5;
  if (v5)
  {
    v7 = VGLogVGEarPCASelectionState(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [optionsCopy description];
      [(VGEarPCAFrameSelector *)v8 initWithOptions:buf, v7];
    }

    modelsRootPath = [optionsCopy modelsRootPath];
    v10 = modelsRootPath == 0;

    if (!v10)
    {
      [optionsCopy earPresenceThreshold];
      [optionsCopy earOcclusionThreshold];
      [optionsCopy bboxVisibilityThreshold];
      [optionsCopy landmarkVisibilityThreshold];
      [optionsCopy faceYawLimit];
      modelsRootPath2 = [optionsCopy modelsRootPath];
      v13 = modelsRootPath2;
      uTF8String = [modelsRootPath2 UTF8String];
      v15 = strlen(uTF8String);
      if (v15 < 0x7FFFFFFFFFFFFFF8)
      {
        v16 = v15;
        if (v15 < 0x17)
        {
          v21 = v15;
          if (v15)
          {
            memmove(&__p, uTF8String, v15);
          }

          *(&__p + v16) = 0;
          useEarSideSmoothPredictor = [optionsCopy useEarSideSmoothPredictor];
          earSideSmoothPredictorBufferCapacity = [optionsCopy earSideSmoothPredictorBufferCapacity];
          [optionsCopy earSideSmoothPredictorConfidenceThreshold];
          v24 = v18;

          vg::ear_detection::EarPCADetector::create();
        }

        operator new();
      }

      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = VGLogVGEarPCASelectionState(v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [VGEarPCAFrameSelector initWithOptions:];
    }
  }

  return 0;
}

- (vector<EarFrame,)posesFromGroup:(VGEarPCAFrameSelector *)self
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  std::vector<EarFrame>::reserve(retstr, 3uLL);
  var1 = retstr->var1;
  v7 = 576;
  do
  {
    if (var1 >= retstr->var2)
    {
      result = std::vector<EarFrame>::__emplace_back_slow_path<EarFrame const&>(retstr, a4);
      var1 = result;
    }

    else
    {
      result = std::vector<EarFrame>::__construct_one_at_end[abi:ne200100]<EarFrame const&>(retstr, a4);
      var1 += 4;
    }

    retstr->var1 = var1;
    a4 = a4 + 192;
    v7 -= 192;
  }

  while (v7);
  return result;
}

- (id)currentState
{
  v21 = *MEMORY[0x277D85DE8];
  frameCountThreshold = [(VGEarPCACaptureOptions *)self->_options frameCountThreshold];
  frameCountThreshold2 = [(VGEarPCACaptureOptions *)self->_options frameCountThreshold];
  if (frameCountThreshold2 >= self->_leftFrameCount)
  {
    leftFrameCount = self->_leftFrameCount;
  }

  else
  {
    leftFrameCount = frameCountThreshold2;
  }

  frameCountThreshold3 = [(VGEarPCACaptureOptions *)self->_options frameCountThreshold];
  frameCountThreshold4 = [(VGEarPCACaptureOptions *)self->_options frameCountThreshold];
  if (frameCountThreshold4 >= self->_rightFrameCount)
  {
    rightFrameCount = self->_rightFrameCount;
  }

  else
  {
    rightFrameCount = frameCountThreshold4;
  }

  v9 = 2 * [(VGEarPCACaptureOptions *)self->_options frameCountThreshold];
  v10 = objc_alloc_init(VGEarPCASelectionState);
  v11 = frameCountThreshold3 - rightFrameCount + frameCountThreshold - leftFrameCount;
  v12 = VGLogVGEarPCASelectionState([(VGEarPCASelectionState *)v10 setFailed:v9 == 0]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16[0] = 67109634;
    v16[1] = v11;
    v17 = 1024;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_debug_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, "%u/%u %@", v16, 0x18u);
  }

  [(VGEarPCASelectionState *)v10 setLeftFrameCount:self->_leftFrameCount];
  [(VGEarPCASelectionState *)v10 setRightFrameCount:self->_rightFrameCount];
  [(VGEarPCASelectionState *)v10 setLeftEarCompleted:self->_leftFrameCount >= [(VGEarPCACaptureOptions *)self->_options frameCountThreshold]];
  [(VGEarPCASelectionState *)v10 setRightEarCompleted:self->_rightFrameCount >= [(VGEarPCACaptureOptions *)self->_options frameCountThreshold]];
  if (![(VGEarPCASelectionState *)v10 failed])
  {
    rightEarCompleted = [(VGEarPCASelectionState *)v10 leftEarCompleted]&& [(VGEarPCASelectionState *)v10 rightEarCompleted];
    [(VGEarPCASelectionState *)v10 setCompleted:rightEarCompleted];
    if (v9)
    {
      *&v14 = (v9 - v11) / v9;
      [(VGEarPCASelectionState *)v10 setProgress:v14];
    }
  }

  return v10;
}

- (float)getMotionBlurScoreFromLandmarks:()vector<float isEarDetected:(std:(BOOL)detected :(id *)a5 allocator<float>> *)a3 frameTimestamp:
{
  v49 = *MEMORY[0x277D85DE8];
  [(VGEarPCACaptureOptions *)self->_options motionBlurFilterThreshold];
  v10 = v9;
  if (detected)
  {
    time = *a5;
    v12 = (CMTimeGetSeconds(&time) * 1000.0);
    p_previousFrameTimestampMS = &self->_previousFrameTimestampMS;
    if (self->_previousFrameTimestampMS <= v12)
    {
      __p = 0;
      v46 = 0;
      v47 = 0;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__p, 0x31uLL);
      v15 = 0;
      v16 = v46;
      do
      {
        v17 = *&a3->var0[v15];
        if (v16 >= v47)
        {
          v18 = (v16 - __p) >> 3;
          if ((v18 + 1) >> 61)
          {
            std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
          }

          v19 = (v47 - __p) >> 2;
          if (v19 <= v18 + 1)
          {
            v19 = v18 + 1;
          }

          if (v47 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v20 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p, v20);
          }

          *(8 * v18) = v17;
          v16 = (8 * v18 + 8);
          v21 = (8 * v18 - (v46 - __p));
          memcpy(v21, __p, v46 - __p);
          v22 = __p;
          __p = v21;
          v46 = v16;
          v47 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v16 = v17;
          v16 += 8;
        }

        v46 = v16;
        v15 += 2;
      }

      while (v15 != 98);
      v23 = __p;
      if (self->_hasPreviousLandmarks)
      {
        v24 = *p_previousFrameTimestampMS;
        __src = 0;
        v43 = 0;
        v44 = 0;
        std::vector<float>::reserve(&__src, (v16 - __p) >> 3);
        v25 = (v12 - v24);
        v26 = __p;
        if (v46 != __p)
        {
          v27 = 0;
          v28 = v43;
          do
          {
            v29 = vsub_f32(*&v26[8 * v27], *(*&self->_anon_4d8[7] + 8 * v27));
            v30 = (vaddv_f32(vmul_f32(v29, v29)) / v25) / (v25 / 30.0);
            if (v28 >= v44)
            {
              v31 = __src;
              v32 = v28 - __src;
              v33 = (v28 - __src) >> 2;
              v34 = v33 + 1;
              if ((v33 + 1) >> 62)
              {
                std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
              }

              v35 = v44 - __src;
              if ((v44 - __src) >> 1 > v34)
              {
                v34 = v35 >> 1;
              }

              if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v36 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v36 = v34;
              }

              if (v36)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v36);
              }

              v37 = (v28 - __src) >> 2;
              v38 = (4 * v33);
              v39 = (4 * v33 - 4 * v37);
              *v38 = v30;
              v28 = v38 + 1;
              memcpy(v39, v31, v32);
              v40 = __src;
              __src = v39;
              v43 = v28;
              v44 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              *v28++ = v30;
            }

            v43 = v28;
            ++v27;
            v26 = __p;
          }

          while (v27 < (v46 - __p) >> 3);
        }

        vg::shared::computeMedian<float>();
      }

      if (&self->_anon_4d8[7] != &__p)
      {
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(&self->_anon_4d8[7], __p, v46, (v46 - __p) >> 3);
        v23 = __p;
      }

      self->_hasPreviousLandmarks = 1;
      self->_previousFrameTimestampMS = v12;
      if (v23)
      {
        v46 = v23;
        operator delete(v23);
      }
    }

    else
    {
      v14 = VGLogVGEarPCASelectionState(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [VGEarPCAFrameSelector getMotionBlurScoreFromLandmarks:v12 isEarDetected:v14 frameTimestamp:?];
      }
    }
  }

  else
  {
    self->_hasPreviousLandmarks = 0;
  }

  return v10;
}

- (id)addPoseWithCaptureData:(id)data faceYaw:(id)yaw
{
  v92 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  yawCopy = yaw;
  currentState = [(VGEarPCAFrameSelector *)self currentState];
  [currentState setDetectionError:1];
  if ([currentState failed])
  {
    currentState2 = currentState;
    goto LABEL_70;
  }

  if (dataCopy)
  {
    objc_msgSend_timestamp(dataCopy);
  }

  else
  {
    memset(time, 0, 24);
  }

  Seconds = CMTimeGetSeconds(time);
  v12 = CVPixelBufferGetIOSurface([dataCopy yuvRectified]);
  if (!v12)
  {
    v16 = VGLogVGEarPCASelectionState(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [VGEarPCAFrameSelector addPoseWithCaptureData:faceYaw:];
    }

    currentState2 = currentState;
    goto LABEL_69;
  }

  v13 = CVPixelBufferGetIOSurface([dataCopy depth]);
  if (!v13)
  {
    v17 = VGLogVGEarPCASelectionState(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [VGEarPCAFrameSelector addPoseWithCaptureData:faceYaw:];
    }

    currentState2 = currentState;
    goto LABEL_68;
  }

  if (yawCopy)
  {
    [yawCopy floatValue];
    v15 = 0x100000000;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  vg::ear_detection::EarPCADetector::detectPCA(self->_earPCADetector.__ptr_, v12, v13, v15 | v14, time);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  BYTE12(v63) = 0;
  LOBYTE(v64) = 0;
  *v66 = 0u;
  *v67 = 0u;
  v68 = 0u;
  if (v90 == 1)
  {
    v62 = v82;
    v63 = v83;
    v64 = v84;
    v65 = v85;
    v58 = *time;
    v59 = *&time[16];
    v60 = v80;
    v61 = v81;
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v66, __src, v87, (v87 - __src) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v67[1], v88, v89, (v89 - v88) >> 2);
  }

  v18 = v91;
  [currentState setDetectionError:v91];
  v51[4] = v62;
  v51[5] = v63;
  v51[6] = v64;
  v51[7] = v65;
  v51[0] = v58;
  v51[1] = v59;
  v51[2] = v60;
  v51[3] = v61;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v52, v66[0], v66[1], (v66[1] - v66[0]) >> 2);
  __p = 0;
  v56 = 0;
  v57 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v67[1], v68, (v68 - v67[1]) >> 2);
  [currentState setPose:v51];
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  v19 = Seconds * 1000.0;
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  v20 = v19;
  options = self->_options;
  if (!v18)
  {
    if ([(VGEarPCACaptureOptions *)options useMotionBlurFilter])
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v48, v66[0], v66[1], (v66[1] - v66[0]) >> 2);
      if (dataCopy)
      {
        objc_msgSend_timestamp(dataCopy);
      }

      else
      {
        memset(&location, 0, 24);
      }

      [(VGEarPCAFrameSelector *)self getMotionBlurScoreFromLandmarks:&v48 isEarDetected:1 frameTimestamp:&location];
      v25 = v24;
      if (v48)
      {
        v49 = v48;
        operator delete(v48);
      }

      motionBlurFilterThreshold = [(VGEarPCACaptureOptions *)self->_options motionBlurFilterThreshold];
      v28 = v27;
      v29 = VGLogVGEarPCASelectionState(motionBlurFilterThreshold);
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
      if (v25 >= v28)
      {
        if (v30)
        {
          [(VGEarPCACaptureOptions *)self->_options motionBlurFilterThreshold];
          LODWORD(location.captureData) = 134218496;
          *(&location.captureData + 4) = v20;
          LOWORD(location.pose.lmPCA.__elems_[0]) = 2048;
          *(location.pose.lmPCA.__elems_ + 2) = v25;
          HIWORD(location.pose.lmPCA.__elems_[2]) = 2048;
          *&location.pose.faceYawAngle = v33;
          _os_log_debug_impl(&dword_270F06000, v29, OS_LOG_TYPE_DEBUG, "Frame#%zu rejected because of motion blur score greater or equal to threshold (%g >= %g)", &location, 0x20u);
        }

        [currentState setDetectionError:5];
        goto LABEL_29;
      }

      if (v30)
      {
        [(VGEarPCAFrameSelector *)v20 addPoseWithCaptureData:v29 faceYaw:v25];
      }
    }

    ++self->_frameCount;
    location.captureData = 0;
    *&location.pose.yawAngle = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    BYTE12(v73) = 0;
    LOBYTE(v74) = 0;
    *v76 = 0u;
    *v77 = 0u;
    v78 = 0u;
    objc_storeStrong(&location.captureData, data);
    v72 = v62;
    v73 = v63;
    v74 = v64;
    v75 = v65;
    *&location.pose.lmPCA.__elems_[1] = v58;
    *&location.pose.yawAngle = v59;
    v70 = v60;
    v71 = v61;
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v76, v66[0], v66[1], (v66[1] - v66[0]) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v77[1], v67[1], v68, (v68 - v67[1]) >> 2);
    if (v58 == 1)
    {
      v31 = 1224;
    }

    else
    {
      if (v58)
      {
LABEL_48:
        currentState2 = [(VGEarPCAFrameSelector *)self currentState];
        [currentState2 setDetectionError:0];
        v38 = v62;
        v39 = v63;
        v40 = v64;
        v41 = v65;
        v34 = v58;
        v35 = v59;
        v36 = v60;
        v37 = v61;
        v43 = 0;
        v44 = 0;
        v42 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v42, v66[0], v66[1], (v66[1] - v66[0]) >> 2);
        v45 = 0;
        v46 = 0;
        v47 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v45, v67[1], v68, (v68 - v67[1]) >> 2);
        [currentState2 setPose:&v34];
        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        [currentState2 setLeftEarCompleted:{objc_msgSend(currentState, "leftEarCompleted", v34, v35, v36, v37, v38, v39, v40, v41)}];
        [currentState2 setRightEarCompleted:{objc_msgSend(currentState, "rightEarCompleted")}];
        if ([currentState2 completed])
        {
          self->_selectionCompleted = 1;
        }

        if (v77[1])
        {
          *&v78 = v77[1];
          operator delete(v77[1]);
        }

        if (v76[0])
        {
          v76[1] = v76[0];
          operator delete(v76[0]);
        }

        goto LABEL_59;
      }

      v31 = 1228;
    }

    ++*(&self->super.isa + v31);
    goto LABEL_48;
  }

  useMotionBlurFilter = [(VGEarPCACaptureOptions *)options useMotionBlurFilter];
  if (useMotionBlurFilter)
  {
    self->_hasPreviousLandmarks = 0;
  }

  v23 = VGLogVGEarPCASelectionState(useMotionBlurFilter);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [VGEarPCAFrameSelector addPoseWithCaptureData:v19 faceYaw:v23];
  }

LABEL_29:
  currentState2 = currentState;
LABEL_59:
  if (v67[1])
  {
    *&v68 = v67[1];
    operator delete(v67[1]);
  }

  if (v66[0])
  {
    v66[1] = v66[0];
    operator delete(v66[0]);
  }

  if (v90 == 1)
  {
    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    if (__src)
    {
      v87 = __src;
      operator delete(__src);
    }
  }

LABEL_68:

LABEL_69:
LABEL_70:

  return currentState2;
}

- (id).cxx_construct
{
  v2 = 0;
  *(self + 2) = 0;
  do
  {
    v3 = self + v2;
    *(v3 + 4) = 0;
    *(v3 + 4) = 0uLL;
    *(v3 + 5) = 0uLL;
    *(v3 + 6) = 0uLL;
    *(v3 + 7) = 0uLL;
    v3[140] = 0;
    v3[144] = 0;
    *(v3 + 11) = 0uLL;
    *(v3 + 12) = 0uLL;
    v2 += 192;
    *(v3 + 13) = 0uLL;
  }

  while (v2 != 576);
  for (i = 0; i != 576; i += 192)
  {
    v5 = self + i;
    *(v5 + 78) = 0;
    *(v5 + 41) = 0uLL;
    *(v5 + 42) = 0uLL;
    *(v5 + 43) = 0uLL;
    *(v5 + 44) = 0uLL;
    v5[732] = 0;
    v5[736] = 0;
    *(v5 + 48) = 0uLL;
    *(v5 + 49) = 0uLL;
    *(v5 + 50) = 0uLL;
  }

  *(self + 157) = 0;
  *(self + 1240) = 0u;
  return self;
}

- (void)initWithOptions:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_270F06000, log, OS_LOG_TYPE_DEBUG, "Ear frame selection options: %@", buf, 0xCu);
}

- (void)getMotionBlurScoreFromLandmarks:(uint64_t *)a1 isEarDetected:(uint64_t)a2 frameTimestamp:(os_log_t)log .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 134218496;
  v5 = a2;
  v6 = 2048;
  v7 = a2;
  v8 = 2048;
  v9 = v3;
  _os_log_error_impl(&dword_270F06000, log, OS_LOG_TYPE_ERROR, "Frame#%zu has timestamp value lower than the timestamp of the previously processed frame (%zu < %zu)", &v4, 0x20u);
}

- (void)addPoseWithCaptureData:(uint64_t)a1 faceYaw:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_270F06000, a2, OS_LOG_TYPE_DEBUG, "Frame#%zu rejected because No Ear detected", &v2, 0xCu);
}

- (void)addPoseWithCaptureData:(float)a3 faceYaw:.cold.2(uint64_t a1, NSObject *a2, float a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_270F06000, a2, OS_LOG_TYPE_DEBUG, "Frame#%zu selected by motion blur filter with score: %g", &v3, 0x16u);
}

@end