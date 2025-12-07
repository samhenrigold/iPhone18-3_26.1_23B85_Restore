@interface ABPKAlgorithm
- (ABPKAlgorithm)initWithParams:(id)params;
- (int)runWithInput:(id)input andGetOutput:(id)output;
@end

@implementation ABPKAlgorithm

- (ABPKAlgorithm)initWithParams:(id)params
{
  paramsCopy = params;
  [(ABPKAlgorithm *)self _startInitABPKSignpost];
  v29.receiver = self;
  v29.super_class = ABPKAlgorithm;
  v6 = [(ABPKAlgorithm *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_algParams, params);
    config2DDetection = [paramsCopy config2DDetection];
    v9 = [[ABPK2DPoseEstimation alloc] initWith2DDetectionConfig:config2DDetection use3DSkeletonForExtrapolation:0 shouldPush3DSupportSkeleton:0];
    poseEstimation2D = v7->_poseEstimation2D;
    v7->_poseEstimation2D = v9;

    if (v7->_poseEstimation2D)
    {
      v12 = objc_alloc_init(ABPK3DLifting);
      liftingAlgorithm = v7->_liftingAlgorithm;
      v7->_liftingAlgorithm = v12;

      if (v7->_liftingAlgorithm)
      {
        v15 = objc_alloc_init(ABPKCameraRegistration);
        bodyRegistration = v7->_bodyRegistration;
        v7->_bodyRegistration = v15;

        if (v7->_bodyRegistration)
        {
          v18 = objc_alloc_init(ABPKDepthBasedScaleEstimation);
          scaleEstimation = v7->_scaleEstimation;
          v7->_scaleEstimation = v18;

          if (v7->_scaleEstimation)
          {
            v21 = objc_alloc_init(ABPKRetargeting);
            retargeting = v7->_retargeting;
            v7->_retargeting = v21;

            if (v7->_retargeting)
            {
              v7->_previousValidScale = -1.0;
              [(ABPKAlgorithm *)v7 _endInitABPKSignpost];
              v24 = v7;
LABEL_21:

              goto LABEL_22;
            }

            v25 = __ABPKLogSharedInstance(v23);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v28[0] = 0;
              v26 = " Failed to initialize the retargeting module. ";
              goto LABEL_19;
            }

LABEL_20:

            v24 = 0;
            goto LABEL_21;
          }

          v25 = __ABPKLogSharedInstance(v20);
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          v28[0] = 0;
          v26 = " Failed to initialize the Depth-based scale estimation module. ";
        }

        else
        {
          v25 = __ABPKLogSharedInstance(v17);
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          v28[0] = 0;
          v26 = " Failed to initialize the Body-Camera registration module. ";
        }
      }

      else
      {
        v25 = __ABPKLogSharedInstance(v14);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        v28[0] = 0;
        v26 = " Failed to initialize the 3D lifting algorithm. ";
      }
    }

    else
    {
      v25 = __ABPKLogSharedInstance(v11);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v28[0] = 0;
      v26 = " Failed to initialize 2D Pose Estimation Algorithm. ";
    }

LABEL_19:
    _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_ERROR, v26, v28, 2u);
    goto LABEL_20;
  }

  v24 = 0;
LABEL_22:

  return v24;
}

- (int)runWithInput:(id)input andGetOutput:(id)output
{
  v129 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  outputCopy = output;
  [inputCopy timestamp];
  v7 = __ABPKLogSharedInstance([(ABPKAlgorithm *)self _startABPKRunWithInputSignpostWithTimestamp:?]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " Running 2d pose estimation ", &buf, 2u);
  }

  v9 = __ABPKLogSharedInstance(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_DEBUG, " \t Running the ML model ", &buf, 2u);
  }

  v10 = [ABPKMLImageData alloc];
  image = [inputCopy image];
  [inputCopy timestamp];
  v13 = v12;
  imagePreProcessingParams = [inputCopy imagePreProcessingParams];
  v120 = [(ABPKMLImageData *)v10 initWithPixelBuffer:image timestamp:3 abpkDeviceOrientation:imagePreProcessingParams preprocessingParameters:v13];

  v15 = [(ABPK2DPoseEstimation *)self->_poseEstimation2D runWithMLImageData:v120 rotationOfResultTensor:0];
  if (v15 != -6661)
  {
    poseEstimation2D = self->_poseEstimation2D;
    rawDetection2dSkeletonABPK = [outputCopy rawDetection2dSkeletonABPK];
    [(ABPK2DPoseEstimation *)poseEstimation2D getRawTrackedHumanSkeleton:rawDetection2dSkeletonABPK];

    v20 = self->_poseEstimation2D;
    rawDetection2dSkeletonABPKArray = [outputCopy rawDetection2dSkeletonABPKArray];
    [(ABPK2DPoseEstimation *)v20 getRawTrackedHumanSkeletonVector:rawDetection2dSkeletonABPKArray];

    v22 = self->_poseEstimation2D;
    detection2dSkeletonABPK = [outputCopy detection2dSkeletonABPK];
    [(ABPK2DPoseEstimation *)v22 getTrackedHumanSkeleton:detection2dSkeletonABPK];

    v16 = [[ABPK2dSkeleton alloc] initWithType:1];
    [(ABPK2DPoseEstimation *)self->_poseEstimation2D getTrackedHumanForLiftingSkeleton:v16];
    algState = [outputCopy algState];
    [algState setDetection2d:1];

    missingJoints = [(ABPK2dSkeleton *)v16 missingJoints];
    if (missingJoints)
    {
      v26 = __ABPKLogSharedInstance(missingJoints);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23EDDC000, v26, OS_LOG_TYPE_DEBUG, " \t\t Extrapolation for missing joints failed. Cannot run lifting network. ", &buf, 2u);
      }

      v17 = -6667;
      goto LABEL_36;
    }

    if (self->_exitPoint == 2)
    {
      v26 = __ABPKLogSharedInstance(missingJoints);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23EDDC000, v26, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPoint2DDetectionPostProcessing ", &buf, 2u);
      }

      v17 = 0;
      goto LABEL_36;
    }

    v27 = __ABPKLogSharedInstance(missingJoints);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23EDDC000, v27, OS_LOG_TYPE_DEBUG, " Performing 2d-3d lifting ", &buf, 2u);
    }

    v29 = __ABPKLogSharedInstance(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23EDDC000, v29, OS_LOG_TYPE_DEBUG, " \t Pre-processing data ", &buf, 2u);
    }

    v30 = [ABPK2D3DLiftingData alloc];
    normalizedKeypoints2d = [(ABPK2dSkeleton *)v16 normalizedKeypoints2d];
    skeletonDefinition = [(ABPK2dSkeleton *)v16 skeletonDefinition];
    v119 = -[ABPK2D3DLiftingData initWithJoints:numberOfJoints:](v30, "initWithJoints:numberOfJoints:", normalizedKeypoints2d, [skeletonDefinition jointCount]);

    v33 = [ABPK2DDetectionResult alloc];
    detection2dSkeletonABPK2 = [outputCopy detection2dSkeletonABPK];
    normalizedKeypoints2d2 = [detection2dSkeletonABPK2 normalizedKeypoints2d];
    detection2dSkeletonABPK3 = [outputCopy detection2dSkeletonABPK];
    visibility = [detection2dSkeletonABPK3 visibility];
    detection2dSkeletonABPK4 = [outputCopy detection2dSkeletonABPK];
    skeletonDefinition2 = [detection2dSkeletonABPK4 skeletonDefinition];
    v40 = -[ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:](v33, "initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:", normalizedKeypoints2d2, visibility, [skeletonDefinition2 jointCount], 0, v119, 0.0, 0.0, 1.0, 1.0);

    if (!v119)
    {
      getLiftingResults = __ABPKLogSharedInstance(v41);
      if (os_log_type_enabled(getLiftingResults, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        v46 = " Exiting from point: kABPKAlgorithmExitPoint3DLiftingPreprocessing ";
LABEL_33:
        _os_log_impl(&dword_23EDDC000, getLiftingResults, OS_LOG_TYPE_DEBUG, v46, &buf, 2u);
      }

LABEL_34:
      v17 = 0;
      goto LABEL_35;
    }

    v42 = __ABPKLogSharedInstance(v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23EDDC000, v42, OS_LOG_TYPE_DEBUG, " \t Running the lifting model ", &buf, 2u);
    }

    liftingAlgorithm = self->_liftingAlgorithm;
    [inputCopy timestamp];
    v44 = [(ABPK3DLifting *)liftingAlgorithm runLiftingModelWithData:v40 atTimestamp:?];
    if (v44)
    {
      getLiftingResults = __ABPKLogSharedInstance(v44);
      if (os_log_type_enabled(getLiftingResults, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23EDDC000, getLiftingResults, OS_LOG_TYPE_DEBUG, " \t\t Failed to run Lifting ML model ", &buf, 2u);
      }

LABEL_27:
      v17 = -6662;
LABEL_35:

      v26 = v119;
LABEL_36:

      goto LABEL_37;
    }

    if (self->_exitPoint == 4)
    {
      getLiftingResults = __ABPKLogSharedInstance(v44);
      if (os_log_type_enabled(getLiftingResults, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        v46 = " Exiting from point: kABPKAlgorithmExitPoint3DLiftingModelOutput ";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    v48 = __ABPKLogSharedInstance(v44);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23EDDC000, v48, OS_LOG_TYPE_DEBUG, " \t Post-processing output ", &buf, 2u);
    }

    getLiftingResults = [(ABPK3DLifting *)self->_liftingAlgorithm getLiftingResults];
    if (!getLiftingResults)
    {
      goto LABEL_27;
    }

    algState2 = [outputCopy algState];
    [algState2 setLifting3d:1];

    get3DLiftingResultsAsModelPoses = [(ABPK3DLifting *)self->_liftingAlgorithm get3DLiftingResultsAsModelPoses];
    liftingSkeletonABPK = [outputCopy liftingSkeletonABPK];
    [liftingSkeletonABPK setModelPoses:get3DLiftingResultsAsModelPoses andUpdateLocalPoses:1];

    if (self->_exitPoint == 5)
    {
      v53 = __ABPKLogSharedInstance(v52);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23EDDC000, v53, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPoint3DLiftingPostProcessing ", &buf, 2u);
      }
    }

    else
    {
      v54 = __ABPKLogSharedInstance(v52);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23EDDC000, v54, OS_LOG_TYPE_DEBUG, " Performing camera registration ", &buf, 2u);
      }

      bodyRegistration = self->_bodyRegistration;
      [inputCopy imageCameraIntrinsics];
      v115 = v57;
      v117 = v56;
      v113 = v58;
      [inputCopy imageResolution];
      v53 = [(ABPKCameraRegistration *)bodyRegistration runCameraRegistrationWithImageIntrinsics:getLiftingResults imageResolution:v117 liftingResult:v115, v113, v59, v60];
      if (([v53 success]& 1) == 0)
      {
        v17 = -6664;
LABEL_70:

        goto LABEL_35;
      }

      algState3 = [outputCopy algState];
      [algState3 setRegistration:1];

      liftingSkeletonABPK2 = [outputCopy liftingSkeletonABPK];
      [v53 cameraFromBodyPose];
      [liftingSkeletonABPK2 setCameraRootTransform:?];

      registered2dSkeletonABPK = [outputCopy registered2dSkeletonABPK];
      joints2d = [v53 joints2d];
      [(ABPKAlgorithmParams *)self->_algParams regImageResolution];
      [registered2dSkeletonABPK setKeypoints2d:joints2d withImageRes:?];

      if (self->_exitPoint == 6)
      {
        v66 = __ABPKLogSharedInstance(v65);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_23EDDC000, v66, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPointCameraRegistration ", &buf, 2u);
        }
      }

      else
      {
        [inputCopy timestamp];
        [(ABPKAlgorithm *)self _startScaleEstimationSignpostWithTimestamp:?];
        isDepthDataValid = [inputCopy isDepthDataValid];
        if (isDepthDataValid && (isDepthDataValid = [inputCopy depthMap]) != 0 && (isDepthDataValid = objc_msgSend(inputCopy, "depthConfidenceBuffer")) != 0 && (scaleEstimation = self->_scaleEstimation, v69 = objc_msgSend(inputCopy, "depthMap"), v70 = objc_msgSend(inputCopy, "depthConfidenceBuffer"), objc_msgSend(inputCopy, "timestamp"), v72 = v71, objc_msgSend(inputCopy, "imageResolution"), v74 = v73, v76 = v75, objc_msgSend(inputCopy, "imageCameraIntrinsics"), v116 = v78, v118 = v77, v114 = v79, -[NSObject cameraFromBodyPose](v53, "cameraFromBodyPose"), isDepthDataValid = -[ABPKDepthBasedScaleEstimation estimateScaleFromDepthData:depthConfidenceData:timestamp:imageResolution:imageIntrinsics:cameraFromBodyPose:liftingResult:](scaleEstimation, "estimateScaleFromDepthData:depthConfidenceData:timestamp:imageResolution:imageIntrinsics:cameraFromBodyPose:liftingResult:", v69, v70, getLiftingResults, v72, v74, v76, v118, v116, v114, v80, v81, v82, v83, v84, v85, v86, v87), previousValidScale = v88, v88 != -1.0))
        {
          self->_previousValidScale = v88;
        }

        else
        {
          previousValidScale = self->_previousValidScale;
        }

        v90 = __ABPKLogSharedInstance(isDepthDataValid);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = previousValidScale;
          _os_log_impl(&dword_23EDDC000, v90, OS_LOG_TYPE_DEBUG, " Estimated Scale: %f ", &buf, 0xCu);
        }

        *&v91 = previousValidScale;
        [getLiftingResults setEstimatedScale:v91];
        liftingSkeletonABPK3 = [outputCopy liftingSkeletonABPK];
        *&v93 = previousValidScale;
        [liftingSkeletonABPK3 setEstimatedScale:v93];

        [inputCopy timestamp];
        v94 = __ABPKLogSharedInstance([(ABPKAlgorithm *)self _endScaleEstimationSignpostWithTimestamp:?]);
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_23EDDC000, v94, OS_LOG_TYPE_DEBUG, " Performing retargeting ", &buf, 2u);
        }

        [inputCopy timestamp];
        [(ABPKAlgorithm *)self _startRetargettingSignpostWithTimestamp:?];
        v66 = [(ABPKRetargeting *)self->_retargeting processData:getLiftingResults];
        algState4 = [outputCopy algState];
        [algState4 setRetargeting:1];

        jointModelTransforms = [v66 jointModelTransforms];
        jointModelTransforms2 = [v66 jointModelTransforms];
        jointTransformCount = [v66 jointTransformCount];
        buf = 0uLL;
        v128 = 0;
        std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&buf, jointModelTransforms, (jointModelTransforms2 + (jointTransformCount << 6)), (jointModelTransforms2 + (jointTransformCount << 6) - jointModelTransforms) >> 6);
        jointLocalTransforms = [v66 jointLocalTransforms];
        jointLocalTransforms2 = [v66 jointLocalTransforms];
        jointTransformCount2 = [v66 jointTransformCount];
        __p = 0;
        v123 = 0;
        v124 = 0;
        std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&__p, jointLocalTransforms, (jointLocalTransforms2 + (jointTransformCount2 << 6)), (jointLocalTransforms2 + (jointTransformCount2 << 6) - jointLocalTransforms) >> 6);
        retargetedSkeletonABPK = [outputCopy retargetedSkeletonABPK];
        [retargetedSkeletonABPK setModelPoses:buf andUpdateLocalPoses:0];

        retargetedSkeletonABPK2 = [outputCopy retargetedSkeletonABPK];
        [v53 cameraFromBodyPose];
        [retargetedSkeletonABPK2 setCameraRootTransform:?];

        retargetedSkeletonABPK3 = [outputCopy retargetedSkeletonABPK];
        *&v105 = previousValidScale;
        [retargetedSkeletonABPK3 setEstimatedScale:v105];

        [inputCopy timestamp];
        [(ABPKAlgorithm *)self _endRetargettingSignpostWithTimestamp:?];
        retargetedSkeletonABPK4 = [outputCopy retargetedSkeletonABPK];
        [retargetedSkeletonABPK4 computeHeight];
        v108 = v107;

        v110 = __ABPKLogSharedInstance(v109);
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
        {
          *v125 = 134217984;
          v126 = v108;
          _os_log_impl(&dword_23EDDC000, v110, OS_LOG_TYPE_DEBUG, " skeletonHeight: %f ", v125, 0xCu);
        }

        v112 = __ABPKLogSharedInstance(v111);
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          *v125 = 134217984;
          v126 = previousValidScale;
          _os_log_impl(&dword_23EDDC000, v112, OS_LOG_TYPE_DEBUG, " Estimated Scale: %f ", v125, 0xCu);
        }

        [inputCopy timestamp];
        [(ABPKAlgorithm *)self _endABPKRunWithInputSignpostWithTimestamp:?];
        if (__p)
        {
          v123 = __p;
          operator delete(__p);
        }

        if (buf)
        {
          *(&buf + 1) = buf;
          operator delete(buf);
        }
      }
    }

    v17 = 0;
    goto LABEL_70;
  }

  v16 = __ABPKLogSharedInstance(v15);
  if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23EDDC000, &v16->super, OS_LOG_TYPE_ERROR, " 2D Pose estimation failed. ", &buf, 2u);
  }

  v17 = -6661;
LABEL_37:

  return v17;
}

@end