@interface AR3DSkeletonRegistrationTechnique
- (BOOL)_estimateCameraPoseFromMatchingImageData:(id)data to3DData:(id)dData worldTrackingPose:(id)pose pCameraFromBody:(id *)body depthData:(id)depthData pScaleOut:(float *)out;
- (BOOL)isEqual:(id)equal;
- (float)_estimateScaleFromDepthData:(__n128)data imageData:(__n128)imageData cameraPoseFromBody:(__n128)body skeleton:(uint64_t)skeleton;
- (float)_estimateScaleFromJasperCloud:(double)cloud cameraPoseFromBody:(double)body skeleton:(double)skeleton;
- (id).cxx_construct;
- (id)processResultData:(id)data timestamp:(double)timestamp context:(id)context;
- (void)prepare:(BOOL)prepare;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
- (void)resetState;
@end

@implementation AR3DSkeletonRegistrationTechnique

- (void)prepare:(BOOL)prepare
{
  if (!self->_abpkRegistration)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698A920]);
    abpkRegistration = self->_abpkRegistration;
    self->_abpkRegistration = v4;
  }

  if (!self->_abpkScaleEstimation)
  {
    v6 = objc_alloc_init(MEMORY[0x1E698A928]);
    abpkScaleEstimation = self->_abpkScaleEstimation;
    self->_abpkScaleEstimation = v6;
  }

  [(AR3DSkeletonRegistrationTechnique *)self resetState];
}

- (void)resetState
{
  self->_is_tracking = 0;
  self->_last_btr_poses_idx = -1;
  _ZNSt3__115allocate_sharedB8ne200100IN5arkit3btr15ScaleCorrectionENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

- (id)processResultData:(id)data timestamp:(double)timestamp context:(id)context
{
  dataCopy = data;
  v7 = [dataCopy indexOfObjectPassingTest:&__block_literal_global_11];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [dataCopy objectAtIndexedSubscript:v7];
  }

  currentWorldTrackingPose = self->_currentWorldTrackingPose;
  self->_currentWorldTrackingPose = v8;

  return dataCopy;
}

uint64_t __73__AR3DSkeletonRegistrationTechnique_processResultData_timestamp_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  v46 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = *(MEMORY[0x1E69E9B18] + 16);
  v36 = *MEMORY[0x1E69E9B18];
  v37 = v7;
  v8 = *(MEMORY[0x1E69E9B18] + 48);
  v38 = *(MEMORY[0x1E69E9B18] + 32);
  v39 = v8;
  v35 = -1.0;
  imageData = [contextCopy imageData];
  objc_msgSend_timestamp(imageData);
  kdebug_trace();

  v10 = [contextCopy resultDataOfClass:objc_opt_class()];
  firstObject = [v10 firstObject];

  v12 = [contextCopy resultDataOfClass:objc_opt_class()];
  firstObject2 = [v12 firstObject];

  detectedSkeletons = [firstObject detectedSkeletons];
  firstObject3 = [detectedSkeletons firstObject];
  LODWORD(v16) = 981668463;
  v17 = [firstObject3 createResultScaledByFactor:v16];

  v19 = _ARLogGeneral(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    *buf = 138543618;
    v43 = v21;
    v44 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Estimating camera pose and scale", buf, 0x16u);
  }

  imageData2 = [contextCopy imageData];
  v23 = [(AR3DSkeletonRegistrationTechnique *)self _estimateCameraPoseFromMatchingImageData:imageData2 to3DData:v17 worldTrackingPose:self->_currentWorldTrackingPose pCameraFromBody:&v36 depthData:firstObject2 pScaleOut:&v35];

  imageData3 = [contextCopy imageData];
  objc_msgSend_timestamp(imageData3);
  kdebug_trace();

  v26 = _ARLogGeneral(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    *buf = 138543618;
    v43 = v28;
    v44 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Creating result", buf, 0x16u);
  }

  if (v23)
  {
    self->_last_detection_timestamp = timestamp;
    self->_is_tracking = 1;
    if (v35 > 0.0)
    {
      self->_estimatedScale = v35;
    }

    v29 = objc_opt_new();
    [v29 setTimestamp:timestamp];
    *&v30 = self->_estimatedScale;
    [v29 setEstimatedScaleFactor:v30];
    v31 = vmulq_n_f32(v39, self->_estimatedScale);
    v31.i32[3] = 1.0;
    v39 = v31;
    [v29 setVisionTransform:{*&v36, *&v37, *&v38}];
    delegate = [(ARTechnique *)self delegate];
    v41 = v29;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    [delegate technique:self didOutputResultData:v33 timestamp:contextCopy context:timestamp];
  }

  else
  {
    if (self->_is_tracking && timestamp - self->_last_detection_timestamp > 1.0)
    {
      [(AR3DSkeletonRegistrationTechnique *)self resetState];
    }

    v29 = objc_opt_new();
    LODWORD(v34) = -1.0;
    [v29 setEstimatedScaleFactor:v34];
    [v29 setTimestamp:timestamp];
    delegate = [(ARTechnique *)self delegate];
    v40 = v29;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
    [delegate technique:self didOutputResultData:v33 timestamp:contextCopy context:timestamp];
  }
}

- (BOOL)_estimateCameraPoseFromMatchingImageData:(id)data to3DData:(id)dData worldTrackingPose:(id)pose pCameraFromBody:(id *)body depthData:(id)depthData pScaleOut:(float *)out
{
  v122 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dDataCopy = dData;
  poseCopy = pose;
  depthDataCopy = depthData;
  v17 = depthDataCopy;
  if (!dataCopy)
  {
    v21 = _ARLogTechnique(depthDataCopy);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138543618;
      *&buf[4] = v25;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Missing image data.", buf, 0x16u);
    }

    goto LABEL_21;
  }

  if (!dDataCopy)
  {
    v21 = _ARLogTechnique(depthDataCopy);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138543618;
      *&buf[4] = v27;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Missing lifted data.", buf, 0x16u);
    }

    goto LABEL_21;
  }

  if (!poseCopy)
  {
    v21 = _ARLogTechnique(depthDataCopy);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      *buf = 138543618;
      *&buf[4] = v46;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Missing currentWorldTrackingPose", buf, 0x16u);
    }

    goto LABEL_21;
  }

  if (self->_is_tracking || ([poseCopy worldTrackingState], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "vioTrackingState"), v18, !v19))
  {
    v117 = 0u;
    v118 = 0u;
    v116 = 0u;
    [dataCopy cameraIntrinsics];
    DWORD2(v116) = v28;
    DWORD2(v117) = v29;
    *&v116 = v30;
    *&v117 = v31;
    DWORD2(v118) = v32;
    *&v118 = v33;
    skeletonDetectionResult2D = [dDataCopy skeletonDetectionResult2D];
    v35 = skeletonDetectionResult2D;
    if (skeletonDetectionResult2D)
    {
      liftingData = [skeletonDetectionResult2D liftingData];

      if (liftingData)
      {
        if (ARIsANEVersionEqualOrPriorToH12(v37, v38))
        {
          abpkRegistration = self->_abpkRegistration;
          [dataCopy imageResolution];
          v40 = v39;
          v42 = v41;
          liftingData2 = [v35 liftingData];
          v44 = -[ABPKCameraRegistration estimateCameraPoseFromMatchingwithImageIntrinsics:imageResolution:joints2d:jointsLifted3D:jointsLifted3DCount:](abpkRegistration, "estimateCameraPoseFromMatchingwithImageIntrinsics:imageResolution:joints2d:jointsLifted3D:jointsLifted3DCount:", [liftingData2 rotatedJoints], objc_msgSend(dDataCopy, "joints"), objc_msgSend(dDataCopy, "jointCount"), *&v116, *&v117, *&v118, v40, v42);
        }

        else
        {
          jointCount = [v35 jointCount];
          liftingData3 = [v35 liftingData];
          rotatedJoints = [liftingData3 rotatedJoints];
          liftingData4 = [v35 liftingData];
          rotatedJoints2 = [liftingData4 rotatedJoints];
          memset(buf, 0, 24);
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(buf, rotatedJoints, (rotatedJoints2 + 8 * jointCount), (rotatedJoints2 + 8 * jointCount - rotatedJoints) >> 3);

          v57 = 0;
          __asm { FMOV            V8.2S, #-1.0 }

          while ([v35 jointCount] > v57)
          {
            if (!*([v35 jointTrackingStates] + 4 * v57))
            {
              *(*buf + 8 * v57) = _D8;
            }

            ++v57;
          }

          v63 = self->_abpkRegistration;
          [dataCopy imageResolution];
          v44 = -[ABPKCameraRegistration estimateCameraPoseFromMatchingwithImageIntrinsics:imageResolution:joints2d:jointsLifted3D:jointsLifted3DCount:](v63, "estimateCameraPoseFromMatchingwithImageIntrinsics:imageResolution:joints2d:jointsLifted3D:jointsLifted3DCount:", *buf, [dDataCopy joints], objc_msgSend(dDataCopy, "jointCount"), *&v116, *&v117, *&v118, v64, v65);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }
        }

        if (v44 && [v44 registrationValid])
        {
          [v44 cameraFromBodyPose];
          *body = v66;
          *(body + 1) = v67;
          *(body + 2) = v68;
          *(body + 3) = v69;
          if ([(AR3DSkeletonRegistrationTechnique *)self automaticSkeletonScaleEstimationEnabled])
          {
            worldTrackingState = [poseCopy worldTrackingState];
            v71 = [worldTrackingState vioTrackingState] == 0;

            if (v71)
            {
              self->_last_btr_poses_idx = (self->_last_btr_poses_idx + 1) % 5;
              [v44 cameraFromBodyPose];
              *buf = v76;
              *&buf[16] = v77;
              v120 = v78;
              v121 = v79;
              last_btr_poses_idx = self->_last_btr_poses_idx;
              objc_msgSend_timestamp(dataCopy);
              worldTrackingState2 = [poseCopy worldTrackingState];
              state = [worldTrackingState2 state];

              v84 = [poseCopy worldMappingStatus] != 3 && objc_msgSend(poseCopy, "worldMappingStatus") != 2;
              if (state == 2 || v84)
              {
                objc_msgSend_timestamp(poseCopy);
                p_cam_from_vio = &self->_last_btr_poses.__elems_[0].cam_from_vio;
                v87 = 2520;
                while (vabdd_f64(*&p_cam_from_vio[1].m_data[1], v85) >= 0.0085)
                {
                  p_cam_from_vio = (p_cam_from_vio + 504);
                  v87 -= 504;
                  if (!v87)
                  {
                    goto LABEL_62;
                  }
                }

                [poseCopy visionCameraTransform];
                v88 = 0;
                v111[0] = v89;
                v111[1] = v90;
                v111[2] = v91;
                v111[3] = v92;
                v112 = xmmword_1C25C85D0;
                v113 = unk_1C25C85E0;
                v114 = xmmword_1C25C85F0;
                v115 = unk_1C25C8600;
                v93 = &v112;
                do
                {
                  for (i = 0; i != 4; ++i)
                  {
                    LODWORD(v93[i]) = *(&v111[i] + (v88 & 3));
                  }

                  ++v88;
                  v93 = (v93 + 4);
                }

                while (v88 != 3);
                v95 = v113;
                *p_cam_from_vio->m_data = v112;
                *&p_cam_from_vio->m_data[4] = v95;
                v96 = v115;
                *&p_cam_from_vio->m_data[8] = v114;
                *&p_cam_from_vio->m_data[12] = v96;
                v97 = objc_msgSend_timestamp(poseCopy);
                *&p_cam_from_vio[1].m_data[3] = v98;
                if (ARDeviceSupportsJasper(v97, v99))
                {
                  v102 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.bodytracking.useAppleDepthForScale"];
                  v103 = *body;
                  v104 = *(body + 1);
                  v105 = *(body + 2);
                  v106 = *(body + 3);
                  if (v102)
                  {
                    [(AR3DSkeletonRegistrationTechnique *)self _estimateScaleFromDepthData:v17 imageData:dataCopy cameraPoseFromBody:dDataCopy skeleton:*&v103, *&v104, *&v105, *&v106];
                  }

                  else
                  {
                    [(AR3DSkeletonRegistrationTechnique *)self _estimateScaleFromJasperCloud:dataCopy cameraPoseFromBody:dDataCopy skeleton:*&v103, *&v104, *&v105, *&v106];
                  }
                }

                else
                {
                  *&v112 = 13;
                  arkit::btr::ScaleCorrection::EstimateScale(self->_scaler.__ptr_, &p_cam_from_vio[-7].m_data[7], &v112, v100, v101);
                }

                *out = v107;
              }
            }

            else
            {
              v73 = _ARLogTechnique(v72);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
              {
                v74 = objc_opt_class();
                v75 = NSStringFromClass(v74);
                *buf = 138543618;
                *&buf[4] = v75;
                *&buf[12] = 2048;
                *&buf[14] = self;
                _os_log_impl(&dword_1C241C000, v73, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Scale estimation skip (tracking not nominal", buf, 0x16u);
              }
            }
          }

LABEL_62:
          v47 = 1;
          goto LABEL_42;
        }
      }

      else
      {
        v44 = _ARLogTechnique(v37);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          v51 = objc_opt_class();
          v52 = NSStringFromClass(v51);
          *buf = 138543618;
          *&buf[4] = v52;
          *&buf[12] = 2048;
          *&buf[14] = self;
          _os_log_impl(&dword_1C241C000, v44, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Missing lifting data", buf, 0x16u);
        }
      }
    }

    else
    {
      v44 = _ARLogTechnique(0);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        *buf = 138543618;
        *&buf[4] = v50;
        *&buf[12] = 2048;
        *&buf[14] = self;
        _os_log_impl(&dword_1C241C000, v44, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Missing 2D joints", buf, 0x16u);
      }
    }

    v47 = 0;
LABEL_42:

    goto LABEL_22;
  }

  v21 = _ARLogTechnique(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    *buf = 138543618;
    *&buf[4] = v23;
    *&buf[12] = 2048;
    *&buf[14] = self;
    _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Tracking state not nominal", buf, 0x16u);
  }

LABEL_21:

  v47 = 0;
LABEL_22:

  return v47;
}

- (float)_estimateScaleFromDepthData:(__n128)data imageData:(__n128)imageData cameraPoseFromBody:(__n128)body skeleton:(uint64_t)skeleton
{
  v12 = a7;
  v13 = a8;
  v14 = a9;
  v15 = 1.0;
  if ([self automaticSkeletonScaleEstimationEnabled])
  {
    v15 = -1.0;
    if (v12)
    {
      depthBuffer = [v12 depthBuffer];
      if (v14)
      {
        if (v13 && depthBuffer)
        {
          v17 = objc_alloc(MEMORY[0x1E698A918]);
          joints = [v14 joints];
          jointCount = [v14 jointCount];
          skeletonDetectionResult2D = [v14 skeletonDetectionResult2D];
          v21 = [v17 initWithJoints:joints numberOfJoints:jointCount referenceDetectionResult:skeletonDetectionResult2D];

          v22 = self[474];
          depthBuffer2 = [v12 depthBuffer];
          confidenceBuffer = [v12 confidenceBuffer];
          objc_msgSend_timestamp(v13);
          v26 = v25;
          [v13 imageResolution];
          v28 = v27;
          v30 = v29;
          [v13 cameraIntrinsics];
          [v22 estimateScaleFromDepthData:depthBuffer2 depthConfidenceData:confidenceBuffer timestamp:v21 imageResolution:v26 imageIntrinsics:v28 cameraFromBodyPose:v30 liftingResult:{v31, v32, v33, *&a2, *&data, *&imageData, *&body}];
          v15 = v34;
        }
      }
    }
  }

  return v15;
}

- (float)_estimateScaleFromJasperCloud:(double)cloud cameraPoseFromBody:(double)body skeleton:(double)skeleton
{
  v10 = a7;
  v11 = a8;
  v12 = -1.0;
  if (v10)
  {
    pointCloud = [v10 pointCloud];
    if (pointCloud)
    {
      pointCloud2 = [v10 pointCloud];
      depthPointCloud = [pointCloud2 depthPointCloud];

      if (v11)
      {
        if (depthPointCloud)
        {
          v16 = objc_alloc(MEMORY[0x1E698A918]);
          joints = [v11 joints];
          jointCount = [v11 jointCount];
          skeletonDetectionResult2D = [v11 skeletonDetectionResult2D];
          v20 = [v16 initWithJoints:joints numberOfJoints:jointCount referenceDetectionResult:skeletonDetectionResult2D];

          v21 = *(self + 3792);
          pointCloud3 = [v10 pointCloud];
          depthPointCloud2 = [pointCloud3 depthPointCloud];
          [v21 estimateScaleFromJasperCloud:depthPointCloud2 cameraFromBodyPose:v20 liftingResult:{a2, cloud, body, skeleton}];
          v12 = v24;
        }
      }
    }
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = AR3DSkeletonRegistrationTechnique;
  if ([(ARTechnique *)&v9 isEqual:equalCopy])
  {
    v5 = equalCopy;
    automaticSkeletonScaleEstimationEnabled = [(AR3DSkeletonRegistrationTechnique *)self automaticSkeletonScaleEstimationEnabled];
    v7 = automaticSkeletonScaleEstimationEnabled ^ [v5 automaticSkeletonScaleEstimationEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id).cxx_construct
{
  self->_scaler.__ptr_ = 0;
  self->_scaler.__cntrl_ = 0;
  p_last_btr_poses = &self->_last_btr_poses;
  v4 = 2520;
  do
  {
    p_last_btr_poses->__elems_[0].intrinsics.m_data[8] = 0.0;
    *p_last_btr_poses->__elems_[0].intrinsics.m_data = 0uLL;
    *&p_last_btr_poses->__elems_[0].intrinsics.m_data[4] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[40] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[44] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[32] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[36] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[24] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[28] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[16] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[20] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[8] = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[12] = 0uLL;
    *p_last_btr_poses->__elems_[0].lifted_points.m_data = 0uLL;
    *&p_last_btr_poses->__elems_[0].lifted_points.m_data[4] = 0uLL;
    *&p_last_btr_poses->__elems_[0].image_points.m_data[24] = 0uLL;
    *&p_last_btr_poses->__elems_[0].image_points.m_data[28] = 0uLL;
    *&p_last_btr_poses->__elems_[0].image_points.m_data[16] = 0uLL;
    *&p_last_btr_poses->__elems_[0].image_points.m_data[20] = 0uLL;
    *&p_last_btr_poses->__elems_[0].image_points.m_data[8] = 0uLL;
    *&p_last_btr_poses->__elems_[0].image_points.m_data[12] = 0uLL;
    *p_last_btr_poses->__elems_[0].image_points.m_data = 0uLL;
    *&p_last_btr_poses->__elems_[0].image_points.m_data[4] = 0uLL;
    *p_last_btr_poses->__elems_[0].cam_from_obj.m_data = xmmword_1C25C85D0;
    *&p_last_btr_poses->__elems_[0].cam_from_obj.m_data[4] = unk_1C25C85E0;
    *&p_last_btr_poses->__elems_[0].cam_from_obj.m_data[8] = xmmword_1C25C85F0;
    *&p_last_btr_poses->__elems_[0].cam_from_obj.m_data[12] = unk_1C25C8600;
    p_cam_from_vio = &p_last_btr_poses->__elems_[0].cam_from_vio;
    *p_last_btr_poses->__elems_[0].cam_from_vio.m_data = xmmword_1C25C85D0;
    *&p_last_btr_poses->__elems_[0].cam_from_vio.m_data[4] = unk_1C25C85E0;
    p_last_btr_poses->__elems_[0].timestamp_obj = 0.0;
    p_last_btr_poses->__elems_[0].timestamp_vio = 0.0;
    p_last_btr_poses = (p_last_btr_poses + 504);
    *&p_cam_from_vio->m_data[8] = xmmword_1C25C85F0;
    *&p_cam_from_vio->m_data[12] = unk_1C25C8600;
    v4 -= 504;
  }

  while (v4);
  *&self->_dumps_dir.__rep_.__l.__size_ = 0uLL;
  self->_dumps_dir.__rep_.__l.__data_ = 0;
  p_btrf = &self->_btrf;
  self->_btrf.__loc_ = 0;
  v7 = (MEMORY[0x1E69E5530] + 64);
  self->_btrf._vptr$ios_base = (MEMORY[0x1E69E5530] + 64);
  v8 = *(MEMORY[0x1E69E54D0] + 16);
  v9 = *(MEMORY[0x1E69E54D0] + 8);
  self->_btrf._vptr$basic_ostream = v9;
  v10 = v8;
  *(*(v9 - 3) + p_btrf) = v8;
  v11 = (p_btrf + *(p_btrf->_vptr$basic_ostream - 3));
  std::ios_base::init(v11, &self->_btrf.__sb_);
  v12 = MEMORY[0x1E69E5530] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  p_btrf->_vptr$basic_ostream = v12;
  self->_btrf._vptr$ios_base = v7;
  MEMORY[0x1C691A5B0](&self->_btrf.__sb_);
  self->_btrts.__loc_ = 0;
  v13 = (MEMORY[0x1E69E5530] + 64);
  self->_btrts._vptr$ios_base = (MEMORY[0x1E69E5530] + 64);
  self->_btrts._vptr$basic_ostream = v9;
  *(&self->_btrts._vptr$basic_ostream + *(v9 - 3)) = v10;
  v14 = (&self->_btrts + *(self->_btrts._vptr$basic_ostream - 3));
  std::ios_base::init(v14, &self->_btrts.__sb_);
  v15 = (MEMORY[0x1E69E5530] + 24);
  v14[1].__vftable = 0;
  v14[1].__fmtflags_ = -1;
  self->_btrts._vptr$basic_ostream = v15;
  self->_btrts._vptr$ios_base = v13;
  MEMORY[0x1C691A5B0](&self->_btrts.__sb_);
  return self;
}

@end