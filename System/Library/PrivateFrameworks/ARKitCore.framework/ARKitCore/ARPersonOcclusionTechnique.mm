@interface ARPersonOcclusionTechnique
- (ARPersonOcclusionTechnique)init;
- (id).cxx_construct;
- (id)_fullDescription;
- (int)_minFilterDepthMap:(__CVBuffer *)map kernelSize:(unint64_t)size pResultBuffer:(__CVBuffer *)buffer;
- (int)postProcessSegmentation:(__CVBuffer *)segmentation depthData:(id)data depthDataSource:(int64_t)source detectionData:(id)detectionData pResultingDepthBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
@end

@implementation ARPersonOcclusionTechnique

- (ARPersonOcclusionTechnique)init
{
  v11.receiver = self;
  v11.super_class = ARPersonOcclusionTechnique;
  if ([(ARTechnique *)&v11 init])
  {
    v9 = 0x3FB999999999999ALL;
    v10 = 0x3FB999999999999ALL;
    v7 = 0x3FC999999999999ALL;
    v8 = 0x3FC0000000000000;
    v5 = 0x4000000000000000;
    v6 = 0x3FE0000000000000;
    v4 = 0x3FD3333333333333;
    v3 = 0x3FA999999999999ALL;
    std::allocate_shared[abi:ne200100]<arkit::RobustExpFilter<float>,std::allocator<arkit::RobustExpFilter<float>>,double,double,double,double,double,double,double,double,0>(&v12, &v10, &v9, &v8, &v7, &v6, &v5, &v4, &v3);
  }

  return 0;
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_depthPixelBufferPool);
  minFilterIntermediatePooledBuffer = self->_minFilterIntermediatePooledBuffer;
  if (minFilterIntermediatePooledBuffer)
  {
    free(minFilterIntermediatePooledBuffer);
  }

  v4.receiver = self;
  v4.super_class = ARPersonOcclusionTechnique;
  [(ARPersonOcclusionTechnique *)&v4 dealloc];
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  v116 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [contextCopy resultDataOfClass:objc_opt_class()];
  firstObject = [v7 firstObject];

  v9 = [contextCopy resultDataOfClass:objc_opt_class()];
  firstObject2 = [v9 firstObject];

  v11 = [contextCopy resultDataOfClass:objc_opt_class()];
  firstObject3 = [v11 firstObject];

  v12 = [contextCopy resultDataOfClass:objc_opt_class()];
  firstObject4 = [v12 firstObject];

  if ([firstObject segmentationBuffer] && objc_msgSend(firstObject2, "depthBuffer") && firstObject3 && !firstObject4)
  {
    objc_msgSend_timestamp(firstObject);
    v15 = v14;
    objc_msgSend_timestamp(firstObject2);
    if (v15 != v16)
    {
      objc_msgSend_timestamp(firstObject2);
      v18 = v17;
      objc_msgSend_timestamp(firstObject3);
      if (v18 != v19)
      {
        objc_msgSend_timestamp(firstObject);
        objc_msgSend_timestamp(firstObject2);
        objc_msgSend_timestamp(firstObject3);
        v20 = kdebug_trace();
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
        }

        v21 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v22 = _ARLogTechnique(v20);
        v23 = v22;
        if (v21 == 1)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            objc_msgSend_timestamp(firstObject);
            v27 = v26;
            objc_msgSend_timestamp(firstObject2);
            v29 = v28;
            objc_msgSend_timestamp(firstObject3);
            *buf = 138544386;
            v107 = v25;
            v108 = 2048;
            selfCopy9 = self;
            v110 = 2048;
            v111 = v27;
            v112 = 2048;
            v113 = v29;
            v114 = 2048;
            v115 = v30;
            _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Mismatched timestamps. (Segmentation data: %f, Depth data: %f, Detection data: %f) ", buf, 0x34u);
          }
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v70 = objc_opt_class();
          v71 = NSStringFromClass(v70);
          objc_msgSend_timestamp(firstObject);
          v73 = v72;
          objc_msgSend_timestamp(firstObject2);
          v75 = v74;
          objc_msgSend_timestamp(firstObject3);
          *buf = 138544386;
          v107 = v71;
          v108 = 2048;
          selfCopy9 = self;
          v110 = 2048;
          v111 = v73;
          v112 = 2048;
          v113 = v75;
          v114 = 2048;
          v115 = v76;
          _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Mismatched timestamps. (Segmentation data: %f, Depth data: %f, Detection data: %f) ", buf, 0x34u);
        }

        delegate = [(ARTechnique *)self delegate];
        [delegate technique:self didOutputResultData:MEMORY[0x1E695E0F0] timestamp:contextCopy context:timestamp];

        goto LABEL_70;
      }
    }

    objc_msgSend_timestamp(firstObject);
    kdebug_trace();
    segmentationBuffer = [firstObject segmentationBuffer];
    v39 = segmentationBuffer;
    if (segmentationBuffer)
    {
      Width = CVPixelBufferGetWidth(segmentationBuffer);
      Height = CVPixelBufferGetHeight(v39);
      v42 = Width;
      v43 = Height;
    }

    else
    {
      v42 = *MEMORY[0x1E695F060];
      v43 = *(MEMORY[0x1E695F060] + 8);
    }

    v51 = ARCreateCVPixelBufferFromPool(&self->_depthPixelBufferPool, 1717855600, self, @"Result Depth Map", v42, v43);
    v103 = v51;
    if (v51)
    {
      imageData = [contextCopy imageData];
      deviceOrientation = [imageData deviceOrientation];
      if (deviceOrientation != self->_lastDeviceOrientation)
      {
        v53 = _ARLogTechnique(deviceOrientation);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v54 = objc_opt_class();
          v55 = NSStringFromClass(v54);
          *buf = 138543618;
          v107 = v55;
          v108 = 2048;
          selfCopy9 = self;
          _os_log_impl(&dword_1C241C000, v53, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Resetting exponential filter due to device rotation.", buf, 0x16u);
        }

        ptr = self->_varExpFilter.__ptr_;
        ptr[1] = *ptr;
        ptr[4] = ptr[3];
      }

      self->_lastDeviceOrientation = [imageData deviceOrientation];
      singleFrameDepthBuffer = [firstObject2 singleFrameDepthBuffer];
      if ([firstObject2 source] == 2)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_msgSend_timestamp(firstObject3);
          kdebug_trace();
          texture = 0;
          v58 = [(ARPersonOcclusionTechnique *)self _minFilterDepthMap:singleFrameDepthBuffer kernelSize:3 pResultBuffer:&texture];
          objc_msgSend_timestamp(firstObject3);
          v59 = kdebug_trace();
          if (v58)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
            }

            v60 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v61 = _ARLogTechnique(v59);
            v62 = v61;
            if (v60 == 1)
            {
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
              {
                v63 = objc_opt_class();
                v64 = NSStringFromClass(v63);
                *buf = 138543618;
                v107 = v64;
                v108 = 2048;
                selfCopy9 = self;
                _os_log_impl(&dword_1C241C000, v62, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error creating result depth buffer", buf, 0x16u);
              }
            }

            else if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              v97 = objc_opt_class();
              v98 = NSStringFromClass(v97);
              *buf = 138543618;
              v107 = v98;
              v108 = 2048;
              selfCopy9 = self;
              _os_log_impl(&dword_1C241C000, v62, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error creating result depth buffer", buf, 0x16u);
            }

            delegate2 = [(ARTechnique *)self delegate];
            [delegate2 technique:self didOutputResultData:MEMORY[0x1E695E0F0] timestamp:contextCopy context:timestamp];

            objc_msgSend_timestamp(firstObject);
            kdebug_trace();
            CVPixelBufferRelease(v103);
LABEL_69:

            goto LABEL_70;
          }

          v81 = [ARMLDepthData alloc];
          objc_msgSend_timestamp(firstObject2);
          v83 = -[ARMLDepthData initWithTimestamp:depthBuffer:confidenceBuffer:source:](v81, "initWithTimestamp:depthBuffer:confidenceBuffer:source:", texture, [firstObject2 singleFrameConfidenceBuffer], 2, v82);

          CVPixelBufferRelease(texture);
          firstObject2 = v83;
        }
      }

      v84 = -[ARPersonOcclusionTechnique postProcessSegmentation:depthData:depthDataSource:detectionData:pResultingDepthBuffer:](self, "postProcessSegmentation:depthData:depthDataSource:detectionData:pResultingDepthBuffer:", [firstObject segmentationBuffer], firstObject2, objc_msgSend(firstObject2, "source"), firstObject3, &v103);
      if (v84)
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
        }

        v85 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v86 = _ARLogTechnique(v84);
        v87 = v86;
        if (v85 == 1)
        {
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            v88 = objc_opt_class();
            v89 = NSStringFromClass(v88);
            *buf = 138543618;
            v107 = v89;
            v108 = 2048;
            selfCopy9 = self;
            _os_log_impl(&dword_1C241C000, v87, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Processing segmentation and depth buffer failed", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
        {
          v94 = objc_opt_class();
          v95 = NSStringFromClass(v94);
          *buf = 138543618;
          v107 = v95;
          v108 = 2048;
          selfCopy9 = self;
          _os_log_impl(&dword_1C241C000, v87, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Processing segmentation and depth buffer failed", buf, 0x16u);
        }

        delegate3 = [(ARTechnique *)self delegate];
        [delegate3 technique:self didOutputResultData:MEMORY[0x1E695E0F0] timestamp:contextCopy context:timestamp];
      }

      else
      {
        v90 = [ARFilteredMLDepthData alloc];
        v91 = -[ARMLDepthData initWithTimestamp:depthBuffer:source:](v90, "initWithTimestamp:depthBuffer:source:", v103, [firstObject2 source], timestamp);
        delegate3 = v91;
        if (v91)
        {
          v105 = v91;
          v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
        }

        else
        {
          v93 = MEMORY[0x1E695E0F0];
        }

        delegate4 = [(ARTechnique *)self delegate];
        [delegate4 technique:self didOutputResultData:v93 timestamp:contextCopy context:timestamp];
      }

      CVPixelBufferRelease(v103);
      objc_msgSend_timestamp(firstObject);
      kdebug_trace();
      goto LABEL_69;
    }

    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
    }

    v65 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v66 = _ARLogTechnique(v51);
    v67 = v66;
    if (v65 == 1)
    {
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v68 = objc_opt_class();
        v69 = NSStringFromClass(v68);
        *buf = 138543618;
        v107 = v69;
        v108 = 2048;
        selfCopy9 = self;
        _os_log_impl(&dword_1C241C000, v67, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error creating result depth buffer", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      v78 = objc_opt_class();
      v79 = NSStringFromClass(v78);
      *buf = 138543618;
      v107 = v79;
      v108 = 2048;
      selfCopy9 = self;
      _os_log_impl(&dword_1C241C000, v67, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error creating result depth buffer", buf, 0x16u);
    }

    delegate5 = [(ARTechnique *)self delegate];
    [delegate5 technique:self didOutputResultData:MEMORY[0x1E695E0F0] timestamp:contextCopy context:timestamp];

    objc_msgSend_timestamp(firstObject);
    kdebug_trace();
  }

  else if ([firstObject segmentationBuffer] && firstObject4)
  {
    segmentationBuffer2 = [firstObject segmentationBuffer];
    v32 = segmentationBuffer2;
    if (segmentationBuffer2)
    {
      v33 = CVPixelBufferGetWidth(segmentationBuffer2);
      v34 = CVPixelBufferGetHeight(v32);
      v35 = v33;
      v36 = v34;
    }

    else
    {
      v35 = *MEMORY[0x1E695F060];
      v36 = *(MEMORY[0x1E695F060] + 8);
    }

    v44 = ARCreateCVPixelBufferFromPool(&self->_depthPixelBufferPool, 1717855600, self, @"Result Depth Map", v35, v36);
    v45 = v44;
    if (v44)
    {
      CVPixelBufferLockBaseAddress(v44, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(v45);
      BytesPerRow = CVPixelBufferGetBytesPerRow(v45);
      bzero(BaseAddress, (v36 * BytesPerRow));
      CVPixelBufferUnlockBaseAddress(v45, 0);
      v48 = -[ARMLDepthData initWithTimestamp:depthBuffer:source:]([ARFilteredMLDepthData alloc], "initWithTimestamp:depthBuffer:source:", v45, [firstObject4 source], timestamp);
      CVPixelBufferRelease(v45);
    }

    else
    {
      v48 = 0;
    }

    delegate6 = [(ARTechnique *)self delegate];
    if (v48)
    {
      v104 = v48;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
    }

    else
    {
      v50 = MEMORY[0x1E695E0F0];
    }

    [delegate6 technique:self didOutputResultData:v50 timestamp:contextCopy context:timestamp];
    if (v48)
    {
    }
  }

  else
  {
    kdebug_trace();
    delegate7 = [(ARTechnique *)self delegate];
    [delegate7 technique:self didOutputResultData:MEMORY[0x1E695E0F0] timestamp:contextCopy context:timestamp];

    kdebug_trace();
  }

LABEL_70:
}

- (int)postProcessSegmentation:(__CVBuffer *)segmentation depthData:(id)data depthDataSource:(int64_t)source detectionData:(id)detectionData pResultingDepthBuffer:(__CVBuffer *)buffer
{
  buf[5] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  detectionDataCopy = detectionData;
  v14 = detectionDataCopy;
  pixelBuffer = segmentation;
  if (!segmentation)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
    }

    v18 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v19 = _ARLogTechnique(detectionDataCopy);
    v20 = v19;
    if (v18 == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v22;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = self;
        _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Missing segmentation buffer", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      LODWORD(buf[0]) = 138543618;
      *(buf + 4) = v28;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = self;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Missing segmentation buffer", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if (!dataCopy)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
    }

    v23 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v24 = _ARLogTechnique(detectionDataCopy);
    v20 = v24;
    if (v23 == 1)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v26;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = self;
        _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Missing depth data", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      LODWORD(buf[0]) = 138543618;
      *(buf + 4) = v39;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = self;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Missing depth data", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if (!detectionDataCopy)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
    }

    v34 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v35 = _ARLogTechnique(detectionDataCopy);
    v20 = v35;
    if (v34 == 1)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v37;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = self;
        _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Missing detection data", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      LODWORD(buf[0]) = 138543618;
      *(buf + 4) = v44;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = self;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Missing detection data", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if (!buffer || !*buffer)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
    }

    v29 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v30 = _ARLogTechnique(detectionDataCopy);
    v31 = v30;
    if (v29 == 1)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v33;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = self;
        _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Missing resulting depth buffer", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      LODWORD(buf[0]) = 138543618;
      *(buf + 4) = v41;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = self;
      _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Missing resulting depth buffer", buf, 0x16u);
    }

    v42 = -6662;
    goto LABEL_45;
  }

  singleFrameDepthBuffer = [dataCopy singleFrameDepthBuffer];
  if (!singleFrameDepthBuffer)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
    }

    v46 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v47 = _ARLogTechnique(singleFrameDepthBuffer);
    v20 = v47;
    if (v46 == 1)
    {
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v49;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = self;
        _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Missing depth buffer", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      LODWORD(buf[0]) = 138543618;
      *(buf + 4) = v63;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = self;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Missing depth buffer", buf, 0x16u);
    }

LABEL_44:

    v42 = -6661;
    goto LABEL_45;
  }

  v219 = singleFrameDepthBuffer;
  if (self->_useBoundingBoxes)
  {
    v207 = v14;
    detectedObjects = [v14 detectedObjects];
    v17 = [detectedObjects count] != 0;

    v14 = v207;
  }

  else
  {
    v17 = 0;
  }

  v50 = source != 2 && self->_doExpFiltering;
  v210 = *buffer;
  CVPixelBufferLockBaseAddress(*buffer, 0);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(v219, (v50 & 1) == 0);
  memset(buf, 0, 32);
  ARWrapCVPixelBufferVImage(v219, buf);
  memset(v229, 0, sizeof(v229));
  ARWrapCVPixelBufferVImage(pixelBuffer, v229);
  memset(v228, 0, sizeof(v228));
  v51 = ARWrapCVPixelBufferVImage(v210, v228);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*&buf[1], *(v229 + 8)), vceqq_s64(*&buf[1], *&v228[1])))) & 1) == 0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARPersonOcclusionTechnique requestResultDataAtTimestamp:context:];
    }

    v52 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v53 = _ARLogTechnique(v51);
    v54 = v53;
    if (v52 == 1)
    {
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        *v230 = 138543618;
        *&v230[4] = v56;
        *&v230[12] = 2048;
        *&v230[14] = self;
        _os_log_impl(&dword_1C241C000, v54, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Dimensions of depth buffer, segmentation buffer and resulting depth buffer are not equal", v230, 0x16u);
      }
    }

    else if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      *v230 = 138543618;
      *&v230[4] = v61;
      *&v230[12] = 2048;
      *&v230[14] = self;
      _os_log_impl(&dword_1C241C000, v54, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Dimensions of depth buffer, segmentation buffer and resulting depth buffer are not equal", v230, 0x16u);
    }

    v42 = -6681;
    goto LABEL_45;
  }

  if (v50)
  {
    objc_msgSend_timestamp(v14);
    kdebug_trace();
    v57 = 4 * buf[2] * buf[1];
    v58 = arkit::RobustExpFilter<float>::filter(self->_varExpFilter.__ptr_, buf[0], v57);
    memcpy(buf[0], v58, v57);
    objc_msgSend_timestamp(v14);
    kdebug_trace();
    v59 = v228[1];
  }

  else
  {
    v59 = buf[1];
  }

  bzero(v228[0], v59 * v228[3]);
  if (v17)
  {
    __p = 0;
    v226 = 0;
    v227 = 0;
    v222 = 0;
    v223 = 0;
    v224 = 0;
    *&v64 = -1;
    *(&v64 + 1) = -1;
    *v230 = v64;
    *&v230[16] = 0uLL;
    v208 = v14;
    arkit::computeBoundingBoxes(v229, v14, &__p, &v222, v230);
    arkit::fillInstanceDepthBufferOutsideAllDetections(buf, v229, v228, v230);
    v203 = ~v50;
    singleFrameConfidenceBuffer = [dataCopy singleFrameConfidenceBuffer];
    if (singleFrameConfidenceBuffer)
    {
      CVPixelBufferLockBaseAddress(singleFrameConfidenceBuffer, 1uLL);
      ARWrapCVPixelBufferVImage(singleFrameConfidenceBuffer, v221);
      v65 = v221[0];
      v66 = v221[3];
    }

    else
    {
      v66 = 0;
      v65 = 0;
    }

    v80 = v219;
    v81 = v226;
    v204 = __p;
    v209 = v226;
    if (__p == v226)
    {
      goto LABEL_119;
    }

    v82 = v229[0].i64[0];
    v83 = v229[1].i64[1];
    v84 = buf[0];
    v85 = buf[3];
    v86 = v228[0];
    v87 = v228[3];
    v88 = __p;
    do
    {
      v90 = *v88;
      v89 = v88[1];
      v91 = *(v88 + 1);
      v92 = *(v88 + 3);
      if (v91 >= v92)
      {
        goto LABEL_118;
      }

      v93 = v14;
      v94 = 0;
      v95 = 0;
      v96 = v89 - v90;
      v97 = &v65[4 * v90 + v66 * v91];
      v98 = (v84 + v85 * v91 + 4 * v90);
      v99 = (v82 + v90 + v83 * v91);
      v100 = 0.0;
      v101 = *(v88 + 1);
      v102 = 0.0;
      do
      {
        if (v89 > *v88)
        {
          v103 = v99;
          v104 = v98;
          v105 = v97;
          for (i = v96; i; --i)
          {
            if (*v103++)
            {
              v100 = v100 + *v104;
              if (v65)
              {
                ++v94;
                if (*v105 <= 0.4)
                {
                  goto LABEL_97;
                }
              }

              else
              {
                ++v94;
              }

              v102 = v102 + *v104;
              ++v95;
            }

LABEL_97:
            ++v105;
            ++v104;
          }
        }

        ++v101;
        v97 = (v66 + v97);
        v98 = (v98 + v85);
        v99 += v83;
      }

      while (v101 != v92);
      if (v94)
      {
        v108 = v94;
        v14 = v93;
        v80 = v219;
        if ((v94 * 0.75) >= v95 || (v100 = v102, v108 = v95, v95))
        {
          v109 = v100 / v108;
        }

        else
        {
          v109 = 3.4028e38;
        }
      }

      else
      {
        v109 = 0.0;
        v14 = v93;
        v80 = v219;
      }

      v81 = v209;
      v110 = buf[3];
      v111 = &v86[v87 * v91];
      v112 = v82 + v83 * v91;
      v113 = buf[0] + v91 * buf[3];
      do
      {
        if (v94)
        {
          v114 = *v88;
          v115 = v89 - *v88;
          if (v89 > *v88)
          {
            v116 = &v111[4 * v114];
            v117 = (v112 + v114);
            do
            {
              if (*v117++)
              {
                *v116 = v109;
              }

              ++v116;
              --v115;
            }

            while (v115);
          }
        }

        else
        {
          v119 = *v88;
          if (*v88 < v89)
          {
            do
            {
              if (*(v112 + v119))
              {
                *&v111[4 * v119] = *(v113 + 4 * v119);
              }

              ++v119;
            }

            while (v89 != v119);
          }
        }

        ++v91;
        v89 = v88[1];
        v111 = v87 + v111;
        v112 += v83;
        v113 += v110;
      }

      while (v91 < *(v88 + 3));
LABEL_118:
      v88 += 2;
    }

    while (v88 != v81);
LABEL_119:
    v205 = v222;
    v218 = v223;
    if (v222 == v223)
    {
      goto LABEL_212;
    }

    v215 = v229[1].i64[1];
    v216 = v229[0].i64[0];
    v213 = v228[3];
    v214 = v228[0];
    v120 = v222;
    v217 = dataCopy;
    v211 = buf[3];
    v212 = buf[0];
LABEL_121:
    v121 = *v120;
    v122 = v120[1];
    if (*v120 == v122)
    {
      goto LABEL_161;
    }

    v123 = 0;
    v124 = v229[0].i64[0];
    v125 = v229[1].i64[1];
    v126 = buf[0];
    v127 = buf[3];
    v128 = *v120;
    v129 = v228[0];
    v130 = v228[3];
LABEL_123:
    v131 = v128->u64[1];
    v132 = v128[1];
    if (v131 >= v128[1].i64[1])
    {
      goto LABEL_144;
    }

LABEL_124:
    v133 = v128->i64[0];
    v134 = v132.i64[0];
    if (v128->i64[0] >= v132.i64[0])
    {
      goto LABEL_143;
    }

    v135 = &v129[v130 * v131];
    while (!*(v124 + v125 * v131 + v133))
    {
LABEL_141:
      if (++v133 == v134)
      {
        v132 = v128[1];
LABEL_143:
        if (++v131 >= v132.i64[1])
        {
LABEL_144:
          v143 = v128[2].u64[1];
          if (v143)
          {
            v144 = v128[3].u64[1];
            v145 = v144;
            v146 = v143;
            if ((v143 * 0.75) >= v144)
            {
              i32 = v128[2].i32;
LABEL_149:
              v148 = *i32 / v146;
            }

            else
            {
              if (v144)
              {
                i32 = v128[3].i32;
                v146 = v145;
                goto LABEL_149;
              }

              v148 = 3.4028e38;
            }

            *v128[4].i32 = v148;
          }

          v149 = v128[6].u64[0];
          v150 = v149;
          v151 = v128[5].u64[0];
          if ((v151 * 0.75) >= v149)
          {
            if (!v151)
            {
              goto LABEL_157;
            }

            v152 = &v128[4].i32[2];
            v150 = v151;
LABEL_156:
            v153 = *v152 / v150;
          }

          else
          {
            if (v149)
            {
              v152 = &v128[5].i32[2];
              goto LABEL_156;
            }

LABEL_157:
            v153 = 3.4028e38;
          }

          *&v128[6].i32[2] = v153;
          v128 += 7;
          ++v123;
          if (v128 == v122)
          {
LABEL_161:
            v154 = v120[5];
            v155 = *(v120 + 3);
            if (v154 >= v120[7])
            {
              goto LABEL_191;
            }

            while (2)
            {
              v156 = v120[4];
              v157 = v155;
              if (v156 >= v155)
              {
                goto LABEL_190;
              }

              v158 = &v214[v213 * v154];
              while (2)
              {
                if (*(v216 + v215 * v154 + v156) && *&v158[4 * v156] == -3.4028e38)
                {
                  if (v65)
                  {
                    v159 = *&v65[4 * v156 + v154 * v66] > 0.4;
                  }

                  else
                  {
                    v159 = 1;
                  }

                  v160 = *(v212 + v211 * v154 + 4 * v156);
                  v161 = v121;
                  if (v121 != v122)
                  {
                    v162.i64[0] = v156;
                    v162.i64[1] = v154;
                    v163 = 3.4028e38;
                    v161 = v121;
                    v164 = v121;
                    do
                    {
                      v165 = vandq_s8(vcgtq_u64(v164[1], v162), vcgeq_u64(v162, *v164));
                      if ((vandq_s8(vdupq_laneq_s64(v165, 1), v165).u64[0] & 0x8000000000000000) != 0)
                      {
                        v166 = v164[2].i64[1] ? 32 : 72;
                        v167 = vabds_f32(v160, *(v164[2].i32 + v166));
                        if (v167 <= v163)
                        {
                          v161 = v164;
                          v163 = v167;
                        }
                      }

                      v164 += 7;
                    }

                    while (v164 != v122);
                  }

                  v168 = v160 + *v161[2].i32;
                  *v161[2].i32 = v168;
                  v169 = v161[2].i64[1] + 1;
                  v161[2].i64[1] = v169;
                  if (v159)
                  {
                    *v161[3].i32 = v160 + *v161[3].i32;
                    v170 = v161[3].i64[1] + 1;
                    v161[3].i64[1] = v170;
                  }

                  else
                  {
                    v170 = v161[3].i64[1];
                  }

                  v171 = v169;
                  if ((v169 * 0.75) >= v170)
                  {
                    if (!v169)
                    {
                      goto LABEL_186;
                    }

LABEL_185:
                    v172 = v168 / v171;
                  }

                  else
                  {
                    if (v170)
                    {
                      v168 = *v161[3].i32;
                      v171 = v170;
                      goto LABEL_185;
                    }

LABEL_186:
                    v172 = 3.4028e38;
                  }

                  *v161[4].i32 = v172;
                  *&v158[4 * v156] = -1.0 - (0x6DB6DB6DB6DB6DB7 * (v161 - v121));
                }

                if (++v156 != v157)
                {
                  continue;
                }

                break;
              }

              v155 = *(v120 + 3);
LABEL_190:
              if (++v154 < *(&v155 + 1))
              {
                continue;
              }

              break;
            }

LABEL_191:
            dataCopy = v217;
            v80 = v219;
            if (v121 == v122)
            {
              goto LABEL_201;
            }

            v173 = v121 + 2;
            v174 = v121;
            while (2)
            {
              v175 = v173[1].u64[1];
              v176 = v175;
              v177 = v173->u64[1];
              v178 = v177;
              if ((v177 * 0.75) >= v175)
              {
                v179 = v173;
                if (!v177)
                {
                  goto LABEL_198;
                }

LABEL_197:
                v180 = *v179 / v178;
              }

              else
              {
                if (v175)
                {
                  v179 = v174[3].i32;
                  v178 = v176;
                  goto LABEL_197;
                }

LABEL_198:
                v180 = 3.4028e38;
              }

              *v173[2].i32 = v180;
              v174 += 7;
              v181 = v173 + 5;
              v173 += 7;
              if (v181 != v122)
              {
                continue;
              }

              break;
            }

            v155 = *(v120 + 3);
LABEL_201:
            v182 = v120[5];
            if (v182 < *(&v155 + 1))
            {
              v183 = &v214[v213 * v182];
              v184 = v216 + v215 * v182;
              do
              {
                v185 = v120[4];
                v186 = v155 - v185;
                if (v155 > v185)
                {
                  v187 = &v183[4 * v185];
                  v188 = (v184 + v185);
                  do
                  {
                    v189 = *v188++;
                    if (v189 && *v187 != 0.0)
                    {
                      *v187 = *v121[7 * fabs(*v187 + 1.0) + 4].i32;
                    }

                    ++v187;
                    --v186;
                  }

                  while (v186);
                  v155 = *(v120 + 3);
                }

                ++v182;
                v183 = v213 + v183;
                v184 += v215;
              }

              while (v182 < *(&v155 + 1));
            }

            v120 += 8;
            if (v120 == v218)
            {
LABEL_212:
              v14 = v208;
              if (v218 != v205 || (v209 - v204) > 0x20)
              {
                v190 = *&v230[8];
                v191 = *&v230[16];
                if (*&v230[8] < *&v230[24])
                {
                  v192 = v229[1].i64[1];
                  v193 = buf[3];
                  v194 = v228[3];
                  v195 = buf[0] + *&v230[8] * buf[3];
                  v196 = v228[0] + *&v230[8] * v228[3];
                  v197 = v229[0].i64[0] + *&v230[8] * v229[1].i64[1];
                  do
                  {
                    v198 = v191 - *v230;
                    if (v191 > *v230)
                    {
                      v199 = (v195 + 4 * *v230);
                      v200 = (v197 + *v230);
                      v201 = &v196[4 * *v230];
                      do
                      {
                        v202 = *v200++;
                        if (v202 && *v201 == 0.0)
                        {
                          *v201 = *v199;
                        }

                        ++v199;
                        ++v201;
                        --v198;
                      }

                      while (v198);
                      v191 = *&v230[16];
                    }

                    ++v190;
                    v195 += v193;
                    v196 = &v194[v196];
                    v197 += v192;
                  }

                  while (v190 < *(&v191 + 1));
                }
              }

              if (singleFrameConfidenceBuffer)
              {
                CVPixelBufferUnlockBaseAddress(singleFrameConfidenceBuffer, 1uLL);
              }

              CVPixelBufferUnlockBaseAddress(v80, v203 & 1);
              CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
              CVPixelBufferUnlockBaseAddress(v210, 0);
              *v230 = &v222;
              std::vector<arkit::BoundingBoxGroup>::__destroy_vector::operator()[abi:ne200100](v230);
              if (__p)
              {
                v226 = __p;
                operator delete(__p);
              }

              goto LABEL_228;
            }

            goto LABEL_121;
          }

          goto LABEL_123;
        }

        goto LABEL_124;
      }
    }

    v136 = *(v126 + v127 * v131 + 4 * v133);
    if (v65)
    {
      v137 = *&v65[4 * v133 + v131 * v66];
      *&v128[4].i32[2] = v136 + *&v128[4].i32[2];
      ++v128[5].i64[0];
      if (v137 <= 0.4)
      {
        v138 = 0;
        goto LABEL_132;
      }
    }

    else
    {
      *&v128[4].i32[2] = v136 + *&v128[4].i32[2];
      ++v128[5].i64[0];
    }

    *&v128[5].i32[2] = v136 + *&v128[5].i32[2];
    ++v128[6].i64[0];
    v138 = 1;
LABEL_132:
    if (*&v135[4 * v133] != -3.4028e38)
    {
      if (&v128[7] == v122)
      {
LABEL_137:
        *v128[2].i32 = v136 + *v128[2].i32;
        ++v128[2].i64[1];
        v142 = -1.0 - v123;
        if (v138)
        {
          *v128[3].i32 = v136 + *v128[3].i32;
          ++v128[3].i64[1];
          v142 = -1.0 - v123;
        }
      }

      else
      {
        v139.i64[0] = v133;
        v139.i64[1] = v131;
        v140 = v128 + 7;
        while (1)
        {
          v141 = vandq_s8(vcgtq_u64(v140[1], v139), vcgeq_u64(v139, *v140));
          if ((vandq_s8(vdupq_laneq_s64(v141, 1), v141).u64[0] & 0x8000000000000000) != 0)
          {
            break;
          }

          v140 += 7;
          if (v140 == v122)
          {
            goto LABEL_137;
          }
        }

        v142 = -3.4028e38;
      }

      *&v135[4 * v133] = v142;
    }

    goto LABEL_141;
  }

  v67 = v229[0].i64[1];
  if (v229[0].i64[1])
  {
    v68 = 0;
    v69 = v229[1];
    v70 = buf[0];
    v71 = buf[3];
    v72 = v228[0];
    v73 = v228[3];
    v74 = v229[0].i64[0];
    do
    {
      if (v69.i64[0])
      {
        v75 = v74;
        v76 = v70;
        v77 = v72;
        v78 = v69.i64[0];
        do
        {
          if (*v75++)
          {
            *v77 = *v76;
          }

          v77 += 4;
          ++v76;
          --v78;
        }

        while (v78);
      }

      ++v68;
      v72 = &v73[v72];
      v70 = (v70 + v71);
      v74 += v69.i64[1];
    }

    while (v68 != v67);
  }

  CVPixelBufferUnlockBaseAddress(v219, (v50 & 1) == 0);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(v210, 0);
LABEL_228:
  v42 = 0;
LABEL_45:

  return v42;
}

- (int)_minFilterDepthMap:(__CVBuffer *)map kernelSize:(unint64_t)size pResultBuffer:(__CVBuffer *)buffer
{
  v33 = *MEMORY[0x1E69E9840];
  if (map)
  {
    Width = CVPixelBufferGetWidth(map);
    Height = CVPixelBufferGetHeight(map);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  v11 = ARCreateCVPixelBufferFromPool(&self->_depthPixelBufferPool, 1717855600, self, @"Result Depth Map", Width, Height);
  if (!v11)
  {
    return -6662;
  }

  v12 = v11;
  CVPixelBufferLockBaseAddress(map, 1uLL);
  CVPixelBufferLockBaseAddress(v12, 0);
  memset(&src, 0, sizeof(src));
  ARWrapCVPixelBufferVImage(map, &src.data);
  memset(&v23, 0, sizeof(v23));
  ARWrapCVPixelBufferVImage(v12, &v23.data);
  kdebug_trace();
  v13 = vImageMin_PlanarF(&src, &v23, 0, 0, 0, size, size, 0x80u);
  v14 = v13;
  if (v13 == self->_minFilterIntermediateBufferSize)
  {
    minFilterIntermediatePooledBuffer = self->_minFilterIntermediatePooledBuffer;
  }

  else
  {
    v17 = _ARLogTechnique(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      minFilterIntermediateBufferSize = self->_minFilterIntermediateBufferSize;
      *buf = 138544130;
      v26 = v19;
      v27 = 2048;
      selfCopy = self;
      v29 = 2048;
      v30 = minFilterIntermediateBufferSize;
      v31 = 2048;
      v32 = v14;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Changing minFilter buffer from size (%ti) to size (%ti)", buf, 0x2Au);
    }

    v21 = self->_minFilterIntermediatePooledBuffer;
    if (v21)
    {
      free(v21);
    }

    self->_minFilterIntermediateBufferSize = v14;
    minFilterIntermediatePooledBuffer = malloc_type_malloc(v14, 0x100004077774924uLL);
    self->_minFilterIntermediatePooledBuffer = minFilterIntermediatePooledBuffer;
  }

  v22 = vImageMin_PlanarF(&src, &v23, minFilterIntermediatePooledBuffer, 0, 0, size, size, 0x10u);
  kdebug_trace();
  CVPixelBufferUnlockBaseAddress(map, 1uLL);
  CVPixelBufferUnlockBaseAddress(v12, 0);
  if (v22)
  {
    CVPixelBufferRelease(v12);
    return -6660;
  }

  else
  {
    result = 0;
    *buffer = v12;
  }

  return result;
}

- (id)_fullDescription
{
  v3 = MEMORY[0x1E696AD60];
  v11.receiver = self;
  v11.super_class = ARPersonOcclusionTechnique;
  _fullDescription = [(ARTechnique *)&v11 _fullDescription];
  v5 = [v3 stringWithFormat:@"%@\n", _fullDescription];

  v6 = CVPixelBufferPoolGetPixelBufferAttributes(self->_depthPixelBufferPool);
  v7 = [v6 description];
  v8 = [v7 description];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  [v5 appendFormat:@"\tDepthPixelBufferPool attr: %@\n", v9];

  return v5;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  return self;
}

@end