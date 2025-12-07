@interface VGHRTFFaceCaptureProcessor
- (VGHRTFFaceCaptureProcessor)initWithDebugDataPath:(id)path;
- (id)processCaptureData:(id)data faceData:(id)faceData;
@end

@implementation VGHRTFFaceCaptureProcessor

- (VGHRTFFaceCaptureProcessor)initWithDebugDataPath:(id)path
{
  v15 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = VGHRTFFaceCaptureProcessor;
  v5 = [(VGHRTFFaceCaptureProcessor *)&v14 init];
  if (v5)
  {
    v6 = objc_opt_new();
    LODWORD(v7) = 30.0;
    [v6 setYawLimit:v7];
    [v6 setRequiredPitchPoses:0];
    [v6 setWriteDebugData:pathCopy != 0];
    [v6 setDebugDataPath:pathCopy];
    [v6 setUseFKInternalFaceDetector:1];
    v8 = [[VGFaceCapture alloc] initWithOptions:v6];
    capturer = v5->_capturer;
    v5->_capturer = v8;

    if (v5->_capturer)
    {
      vg::hrtf::Rectify::create();
    }

    v11 = __VGLogSharedInstance(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_270F06000, v11, OS_LOG_TYPE_ERROR, " Failed to initialize VGFaceCapture ", &v13, 2u);
    }
  }

  else
  {
    v6 = __VGLogSharedInstance(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_ERROR, " Failed to initialize VGHRTFCaptureProcessor ", &v13, 2u);
    }
  }

  return 0;
}

- (id)processCaptureData:(id)data faceData:(id)faceData
{
  v92 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  faceDataCopy = faceData;
  initEmpty = [[VGHRTFFaceCaptureUpdateData alloc] initEmpty];
  [initEmpty setProgressType:self->_captureState];
  *&v9 = self->_progress;
  [initEmpty setProgress:v9];
  v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_poseStatus copyItems:1];
  [initEmpty setPoseStatusList:v10];

  [initEmpty setTrackedData:0];
  v11 = [initEmpty setResult:self->_resultsCache];
  if (faceDataCopy)
  {
    ptr = self->_rectify.__ptr_;
    colorBuffer = [dataCopy colorBuffer];
    depthBuffer = [dataCopy depthBuffer];
    [dataCopy colorIntrinsics];
    v71 = v16;
    v73 = v15;
    v70 = v17;
    depthCalibrationData = [dataCopy depthCalibrationData];
    v94.columns[1] = v71;
    v94.columns[0] = v73;
    v94.columns[2] = v70;
    vg::hrtf::Rectify::process(v83, ptr, colorBuffer, depthBuffer, v94, depthCalibrationData);

    if (v91)
    {
      v20 = __VGLogSharedInstance(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_270F06000, v20, OS_LOG_TYPE_DEBUG, " Rectified face images. ", &buf, 2u);
      }

      v21 = objc_opt_new();
      if ((v91 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(v87);
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __58__VGHRTFFaceCaptureProcessor_processCaptureData_faceData___block_invoke;
      v82[3] = &__block_descriptor_40_e5_v8__0l;
      v82[4] = CVPixelBufferFromIOSurface;
      v72 = MEMORY[0x2743B9AA0](v82);
      [v21 setDepth:CVPixelBufferFromIOSurface];
      if ((v91 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      [v21 setDepthIntrinsics:{v88, v89, v90}];
      if ((v91 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v23 = createCVPixelBufferFromIOSurface(*v83);
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __58__VGHRTFFaceCaptureProcessor_processCaptureData_faceData___block_invoke_2;
      v81[3] = &__block_descriptor_40_e5_v8__0l;
      v81[4] = v23;
      v74 = MEMORY[0x2743B9AA0](v81);
      [v21 setYuvRectified:v23];
      if ((v91 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      [v21 setVideoIntrinsics:{v84, v85, v86}];
      yawAngle = [faceDataCopy yawAngle];
      if (yawAngle)
      {
        yawAngle2 = [faceDataCopy yawAngle];
        [yawAngle2 floatValue];
        v27 = v26;

        v28 = v27;
      }

      else
      {
        v28 = 0.0;
      }

      rollAngle = [faceDataCopy rollAngle];
      if (rollAngle)
      {
        rollAngle2 = [faceDataCopy rollAngle];
        [rollAngle2 floatValue];
        v36 = v35;

        v37 = v36;
      }

      else
      {
        v37 = 0.0;
      }

      v38 = [VGFaceMetadata alloc];
      trackedId = [faceDataCopy trackedId];
      [faceDataCopy boundingBox];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      colorBuffer2 = [dataCopy colorBuffer];
      width = [colorBuffer2 width];
      colorBuffer3 = [dataCopy colorBuffer];
      height = [colorBuffer3 height];
      v52 = [(VGFaceMetadata *)v38 initWithFaceId:trackedId bounds:v41 / width yawAngle:v43 / height rollAngle:v45 / width, v47 / height, v28, v37];
      [v21 setFace:v52];

      objc_msgSend_timestamp(dataCopy);
      CMTimeMakeWithSeconds(&v80, v53, 1000000);
      buf = v80;
      [v21 setTimestamp:&buf];
      v54 = self->_semaphore;
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __58__VGHRTFFaceCaptureProcessor_processCaptureData_faceData___block_invoke_3;
      v75[3] = &unk_279E28DC0;
      v55 = v54;
      v76 = v55;
      selfCopy = self;
      v56 = initEmpty;
      v78 = v56;
      v57 = MEMORY[0x2743B9AA0](v75);
      v58 = [(VGFaceCapture *)self->_capturer processWithCaptureData:v21 callback:v57];
      if (v58)
      {
        dispatch_semaphore_wait(v55, 0xFFFFFFFFFFFFFFFFLL);
        [v56 progress];
        self->_progress = v59;
        self->_captureState = [v56 progressType];
        v60 = objc_alloc(MEMORY[0x277CBEA60]);
        poseStatusList = [v56 poseStatusList];
        v62 = [v60 initWithArray:poseStatusList copyItems:1];
        poseStatus = self->_poseStatus;
        self->_poseStatus = v62;

        IOSurface = CVPixelBufferGetIOSurface([v21 yuvRectified]);
        trackedData = [v56 trackedData];
        [trackedData setRectifiedColorBuffer:IOSurface];

        v66 = CVPixelBufferGetIOSurface([v21 depth]);
        trackedData2 = [v56 trackedData];
        [trackedData2 setRectifiedDepthBuffer:v66];
      }

      else
      {
        trackedData2 = __VGLogSharedInstance(v58);
        if (os_log_type_enabled(trackedData2, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.value) = 0;
          _os_log_impl(&dword_270F06000, trackedData2, OS_LOG_TYPE_ERROR, " Face tracking failed ", &buf, 2u);
        }
      }

      v68 = v56;
      v74[2](v74);

      v72[2](v72);
    }

    else
    {
      v31 = __VGLogSharedInstance(v19);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_270F06000, v31, OS_LOG_TYPE_ERROR, " Failed to rectify face images. ", &buf, 2u);
      }

      v32 = initEmpty;
    }

    if (v91 == 1)
    {
    }
  }

  else
  {
    v29 = __VGLogSharedInstance(v11);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v83 = 0;
      _os_log_impl(&dword_270F06000, v29, OS_LOG_TYPE_ERROR, " Face not found. ", v83, 2u);
    }

    v30 = initEmpty;
  }

  return initEmpty;
}

void __58__VGHRTFFaceCaptureProcessor_processCaptureData_faceData___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  memptr[2] = *MEMORY[0x277D85DE8];
  v70 = a2;
  v69 = a3;
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __58__VGHRTFFaceCaptureProcessor_processCaptureData_faceData___block_invoke_4;
  v86[3] = &unk_279E28D98;
  v71 = a1;
  v87 = *(a1 + 32);
  v68 = MEMORY[0x2743B9AA0](v86);
  LODWORD(a3) = [v70 failed];
  v5 = [v70 completed];
  if (a3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    if (v69)
    {
      v78 = v69;
      v77 = [v78 count];
      v76 = objc_opt_new();
      if (v77)
      {
        v7 = 0;
        v75 = *MEMORY[0x277CECED8];
        v74 = *MEMORY[0x277CECEB8];
        v73 = *MEMORY[0x277CECE78];
        v72 = *MEMORY[0x277CECE80];
        do
        {
          v84 = [v78 objectAtIndexedSubscript:v7];
          v8 = [[VGHRTFFaceFrameData alloc] initEmpty];
          v9 = [v84 captureData];
          v10 = [v9 faceTrackingResult];
          v82 = [v10 objectForKey:v75];

          v79 = [v82 objectAtIndex:0];
          v80 = [v79 objectForKey:v74];
          v81 = [v80 objectForKey:v73];
          v11 = [v81 objectForKey:v72];
          v12 = [v11 length];
          v13 = v11;
          v14 = [v11 bytes];
          v15 = v12 >> 3;
          v16 = 2 * (v12 >> 3);
          memptr[0] = 0;
          malloc_type_posix_memalign(memptr, 0x20uLL, (4 * v16 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
          v17 = memptr[0];
          if (v14 == memptr[0])
          {
            memptr[0] = 0;
            malloc_type_posix_memalign(memptr, 0x20uLL, ((v12 & 0x3FFFFFFF8) + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
            v26 = memptr[0];
            if (v16)
            {
              v27 = 0;
              if ((v15 & 0x7FFFFFFF) != 0)
              {
                v28 = v14;
              }

              else
              {
                v28 = 0;
              }

              v29 = v12 & 0x3FFFFFFF8;
              v30 = memptr[0];
              do
              {
                *v30++ = *v28;
                v31 = HIDWORD(v27);
                v32 = v27 < 1;
                if (v27 < 1)
                {
                  v31 = 0;
                }

                v33 = &v28[v31];
                v34 = (v27 + 1);
                v35 = v27 & 0xFFFFFFFF00000000;
                if (!v32)
                {
                  v34 = 0;
                }

                v27 = v34 | v35;
                v28 = v33 + 1;
                v29 -= 4;
              }

              while (v29);
            }

            free(v17);
          }

          else
          {
            if (v16)
            {
              v18 = 0;
              v19 = 0;
              if ((v15 & 0x7FFFFFFF) != 0)
              {
                v20 = v14;
              }

              else
              {
                v20 = 0;
              }

              do
              {
                *&v17[v18] = *v20;
                v21 = HIDWORD(v19);
                v22 = v19 < 1;
                if (v19 < 1)
                {
                  v21 = 0;
                }

                v23 = &v20[v21];
                v24 = (v19 + 1);
                v25 = v19 & 0xFFFFFFFF00000000;
                if (!v22)
                {
                  v24 = 0;
                }

                v19 = v24 | v25;
                v20 = v23 + 1;
                v18 += 4;
              }

              while ((v12 & 0x3FFFFFFF8) != v18);
            }

            v26 = v17;
          }

          v36 = objc_opt_new();
          if (v12 >= 8)
          {
            v38 = 1;
            v39 = 1;
            do
            {
              LODWORD(v37) = v26[v38 - 1];
              v40 = [MEMORY[0x277CCABB0] numberWithFloat:v37];
              [v36 addObject:v40];

              LODWORD(v41) = v26[v38];
              v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
              [v36 addObject:v42];

              v22 = v15 > v39++;
              v38 += 2;
            }

            while (v22);
          }

          v43 = [v84 captureData];
          [v8 setRgbImage:{CVPixelBufferGetIOSurface(objc_msgSend(v43, "rgbRectified"))}];

          v44 = [v84 captureData];
          [v8 setDepthImage:{CVPixelBufferGetIOSurface(objc_msgSend(v44, "depth"))}];

          v45 = [v84 captureData];
          [v45 depthIntrinsics];
          [v8 setDepthIntrinsics:{v46, v47, v48}];

          [v8 setLandmarks:v36];
          [v76 addObject:v8];

          free(v26);
          ++v7;
        }

        while (v7 != v77);
      }

      v49 = *(v71 + 40);
      v50 = *(v49 + 56);
      *(v49 + 56) = v76;
    }

    v6 = 4;
  }

  v51 = [[VGHRTFFaceCaptureProcessedData alloc] initEmpty];
  v52 = objc_msgSend_rejectionState(v70);
  if ([v52 reason] == 1)
  {
    goto LABEL_51;
  }

  v53 = objc_msgSend_rejectionState(v70);
  if ([v53 reason] == 5)
  {
LABEL_50:

LABEL_51:
    goto LABEL_52;
  }

  v54 = objc_msgSend_rejectionState(v70);
  if ([v54 reason] == 2)
  {
LABEL_49:

    goto LABEL_50;
  }

  v55 = objc_msgSend_rejectionState(v70);
  if ([v55 reason] == 3)
  {
LABEL_48:

    goto LABEL_49;
  }

  v56 = objc_msgSend_rejectionState(v70);
  if ([v56 reason] == 4)
  {
LABEL_47:

    goto LABEL_48;
  }

  v57 = objc_msgSend_rejectionState(v70);
  if ([v57 reason] == 33)
  {
LABEL_46:

    goto LABEL_47;
  }

  v58 = objc_msgSend_rejectionState(v70);
  if ([v58 reason] == 36)
  {
LABEL_45:

    goto LABEL_46;
  }

  v85 = objc_msgSend_rejectionState(v70);
  if ([v85 reason] == 35)
  {

    goto LABEL_45;
  }

  v63 = objc_msgSend_rejectionState(v70);
  v83 = [v63 reason] == 36;

  if (!v83)
  {
    v64 = MEMORY[0x277CCABB0];
    [v70 yawAngle];
    v65 = [v64 numberWithFloat:?];
    [v51 setYawAngle:v65];

    v66 = MEMORY[0x277CCABB0];
    [v70 pitchAngle];
    v67 = [v66 numberWithFloat:?];
    [v51 setPitchAngle:v67];

    goto LABEL_53;
  }

LABEL_52:
  [v51 setYawAngle:0];
  [v51 setPitchAngle:0];
LABEL_53:
  [*(v71 + 48) setProgressType:v6];
  [v70 progress];
  [*(v71 + 48) setProgress:?];
  v59 = v70;
  v60 = detail::getFacePoseList(v59, 0);
  memptr[0] = v60;
  v61 = detail::getFacePoseList(v59, 1);
  memptr[1] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:memptr count:2];

  [*(v71 + 48) setPoseStatusList:v62];
  [*(v71 + 48) setTrackedData:v51];
  [*(v71 + 48) setResult:*(*(v71 + 40) + 56)];

  v68[2](v68);
}

@end