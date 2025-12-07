@interface ABPKPoseEstimationPipeline
- (ABPKPoseEstimationPipeline)init;
- (BOOL)initAlgorithmModules;
- (int)runABPKPoseEstimationWithInputData:(id)data andGetOutput:(id)output;
- (void)computeRootTransforms:(float32x4_t)transforms withCameraExtrinsics:(float32x4_t)extrinsics withVioPose:(uint64_t)pose withVioPoseValidity:(uint64_t)validity;
- (void)dealloc;
- (void)initializeOutput;
- (void)runABPKAlgorithmWithInputData:(id)data andGetOutput:(id)output;
- (void)saveInputData:(id)data andOutputData:(id)outputData ToDir:(id)dir withFileNamePrefix:(id)prefix;
@end

@implementation ABPKPoseEstimationPipeline

- (ABPKPoseEstimationPipeline)init
{
  v14.receiver = self;
  v14.super_class = ABPKPoseEstimationPipeline;
  v2 = [(ABPKPoseEstimationPipeline *)&v14 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_11;
  }

  v2->_exitPoint = 7;
  v4 = [[ABPK2DDetectionConfiguration alloc] initWithAlgorithmMode:1];
  config2D = v3->_config2D;
  v3->_config2D = v4;

  if (!v3->_config2D)
  {
    v10 = __ABPKLogSharedInstance(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 0;
      v11 = " Failed to initialize config for 2D Detection module ";
LABEL_9:
      _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_ERROR, v11, v13, 2u);
    }

LABEL_10:

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v3->_deviceANEVersionPriorOrEqualToH12 = determineDeviceANEVersionPriorOrEqualToH12(v6, v7);
  v3->_useLSTM3D = 1;
  initAlgorithmModules = [(ABPKPoseEstimationPipeline *)v3 initAlgorithmModules];
  if ((initAlgorithmModules & 1) == 0)
  {
    v10 = __ABPKLogSharedInstance(initAlgorithmModules);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 0;
      v11 = " Failed to initialize algorithm modules ";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  [(ABPKPoseEstimationPipeline *)v3 initializeOutput];
  v3->_previousValidScale = -1.0;
  v3->_consistent2DSkeletonMissing = 0;
  v9 = v3;
LABEL_12:

  return v9;
}

- (BOOL)initAlgorithmModules
{
  [(ABPKPoseEstimationPipeline *)self _startInitABPKSignpost];
  v3 = [[ABPK2DPoseEstimation alloc] initWith2DDetectionConfig:self->_config2D use3DSkeletonForExtrapolation:0 shouldPush3DSupportSkeleton:0];
  poseEstimation2D = self->_poseEstimation2D;
  self->_poseEstimation2D = v3;

  if (self->_poseEstimation2D)
  {
    if (self->_deviceANEVersionPriorOrEqualToH12)
    {
      v6 = objc_alloc_init(ABPK3DLifting);
      liftingAlgorithm = self->_liftingAlgorithm;
      self->_liftingAlgorithm = v6;

      if (!self->_liftingAlgorithm)
      {
        v9 = __ABPKLogSharedInstance(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v33 = 0;
          v10 = " Failed to initialize the 3D lifting algorithm. ";
          v11 = &v33;
LABEL_25:
          _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    else if (self->_useLSTM3D)
    {
      v12 = objc_alloc_init(ABPK3DLiftingLSTM);
      liftingAlgorithmLSTM = self->_liftingAlgorithmLSTM;
      self->_liftingAlgorithmLSTM = v12;

      if (!self->_liftingAlgorithmLSTM)
      {
        v9 = __ABPKLogSharedInstance(v14);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v32 = 0;
          v10 = " Failed to initialize the new 3D lifting LSTM algorithm. ";
          v11 = &v32;
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v15 = objc_alloc_init(ABPK3DLiftingSequence);
      liftingAlgorithmSequence = self->_liftingAlgorithmSequence;
      self->_liftingAlgorithmSequence = v15;

      if (!self->_liftingAlgorithmSequence)
      {
        v9 = __ABPKLogSharedInstance(v17);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v31 = 0;
          v10 = " Failed to initialize the new 3D lifting sequence algorithm. ";
          v11 = &v31;
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    v18 = objc_alloc_init(ABPKCameraRegistration);
    bodyRegistration = self->_bodyRegistration;
    self->_bodyRegistration = v18;

    if (self->_bodyRegistration)
    {
      v21 = objc_alloc_init(ABPKDepthBasedScaleEstimation);
      scaleEstimation = self->_scaleEstimation;
      self->_scaleEstimation = v21;

      if (self->_scaleEstimation)
      {
        v24 = objc_alloc_init(ABPKRetargeting);
        retargeting = self->_retargeting;
        self->_retargeting = v24;

        if (self->_retargeting)
        {
          [(ABPKPoseEstimationPipeline *)self _endInitABPKSignpost];
          return 1;
        }

        v9 = __ABPKLogSharedInstance(v26);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v28 = 0;
          v10 = " Failed to initialize the retargeting module. ";
          v11 = &v28;
          goto LABEL_25;
        }
      }

      else
      {
        v9 = __ABPKLogSharedInstance(v23);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v29 = 0;
          v10 = " Failed to initialize the Depth-based scale estimation module. ";
          v11 = &v29;
          goto LABEL_25;
        }
      }
    }

    else
    {
      v9 = __ABPKLogSharedInstance(v20);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v30 = 0;
        v10 = " Failed to initialize the Body-Camera registration module. ";
        v11 = &v30;
        goto LABEL_25;
      }
    }

    goto LABEL_26;
  }

  v9 = __ABPKLogSharedInstance(v5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v34 = 0;
    v10 = " Failed to initialize 2D Pose Estimation Algorithm. ";
    v11 = &v34;
    goto LABEL_25;
  }

LABEL_26:

  return 0;
}

- (void)initializeOutput
{
  [(ABPKPoseEstimationPipeline *)self _startInitABPKOutputSignpost];
  v3 = [[ABPK2dSkeleton alloc] initWithType:0];
  rawDetection2dSkeleton = self->_rawDetection2dSkeleton;
  self->_rawDetection2dSkeleton = v3;

  v5 = [[ABPK2dSkeleton alloc] initWithType:0];
  detection2dSkeleton = self->_detection2dSkeleton;
  self->_detection2dSkeleton = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  rawDetection2dSkeletonArray = self->_rawDetection2dSkeletonArray;
  self->_rawDetection2dSkeletonArray = v7;

  v9 = [[ABPKSkeleton alloc] initWithType:3];
  liftingSkeleton = self->_liftingSkeleton;
  self->_liftingSkeleton = v9;

  v11 = [[ABPK2dSkeleton alloc] initWithType:2];
  registered2dSkeleton = self->_registered2dSkeleton;
  self->_registered2dSkeleton = v11;

  v13 = [[ABPKSkeleton alloc] initWithType:4];
  retargetedSkeleton = self->_retargetedSkeleton;
  self->_retargetedSkeleton = v13;

  [(ABPKPoseEstimationPipeline *)self _endInitABPKOutputSignpost];
}

- (void)dealloc
{
  mlImage = self->_mlImage;
  if (mlImage)
  {
    CVPixelBufferRelease(mlImage);
  }

  v4.receiver = self;
  v4.super_class = ABPKPoseEstimationPipeline;
  [(ABPKPoseEstimationPipeline *)&v4 dealloc];
}

- (void)runABPKAlgorithmWithInputData:(id)data andGetOutput:(id)output
{
  dataCopy = data;
  outputCopy = output;
  [(ABPKPoseEstimationPipeline *)self _startExecuteAlgorithmSignpost];
  +[ABPKTime nowInSeconds];
  *&v7 = v7;
  [outputCopy setTimeABPKAlgorithmStart:v7];
  v8 = objc_alloc_init(ABPKAlgorithmState);
  [outputCopy setAlgState:v8];

  [dataCopy timestamp];
  [outputCopy setTimestamp:?];
  [outputCopy setAlgorithmReturnCode:{-[ABPKPoseEstimationPipeline runABPKPoseEstimationWithInputData:andGetOutput:](self, "runABPKPoseEstimationWithInputData:andGetOutput:", dataCopy, outputCopy)}];
  [outputCopy setRawDetection2dSkeletonABPK:self->_rawDetection2dSkeleton];
  [outputCopy setRawDetection2dSkeletonABPKArray:self->_rawDetection2dSkeletonArray];
  [outputCopy setDetection2dSkeletonABPK:self->_detection2dSkeleton];
  [outputCopy setLiftingSkeletonABPK:self->_liftingSkeleton];
  [outputCopy setRegistered2dSkeletonABPK:self->_registered2dSkeleton];
  [outputCopy setRetargetedSkeletonABPK:self->_retargetedSkeleton];
  cameraParams = [dataCopy cameraParams];
  [cameraParams extrinsics];
  v21 = v11;
  v22 = v10;
  v19 = v13;
  v20 = v12;
  [dataCopy vioPose];
  -[ABPKPoseEstimationPipeline computeRootTransforms:withCameraExtrinsics:withVioPose:withVioPoseValidity:](self, "computeRootTransforms:withCameraExtrinsics:withVioPose:withVioPoseValidity:", outputCopy, [dataCopy isVioPoseValid], v22, v21, v20, v19, v14, v15, v16, v17);

  +[ABPKTime nowInSeconds];
  *&v18 = v18;
  [outputCopy setTimeABPKAlgorithmFinished:v18];
  [(ABPKPoseEstimationPipeline *)self _endExecuteAlgorithmSignpost];
}

- (int)runABPKPoseEstimationWithInputData:(id)data andGetOutput:(id)output
{
  v220 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  outputCopy = output;
  Width = CVPixelBufferGetWidth([dataCopy image]);
  Height = CVPixelBufferGetHeight([dataCopy image]);
  v10 = __ABPKLogSharedInstance(Height);
  v11 = Width;
  v12 = Height;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = Height;
    *&buf[12] = 2048;
    *&buf[14] = Width;
    _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_DEBUG, " Sensor image resolution: (height,width):(%f,%f) ", buf, 0x16u);
  }

  cameraParams = [dataCopy cameraParams];
  deviceOrientation = [cameraParams deviceOrientation];

  cameraParams2 = [dataCopy cameraParams];
  [outputCopy setCameraParams:cameraParams2];

  abpkDeviceOrientation = [(ABPK2DDetectionConfiguration *)self->_config2D abpkDeviceOrientation];
  if (abpkDeviceOrientation != deviceOrientation)
  {
    v17 = __ABPKLogSharedInstance(abpkDeviceOrientation);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = convertABPKDeviceOrientationEnumToString([(ABPK2DDetectionConfiguration *)self->_config2D abpkDeviceOrientation]);
      v19 = convertABPKDeviceOrientationEnumToString(deviceOrientation);
      *buf = 138412546;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_DEBUG, " Device orientation changed from %@ to %@ ", buf, 0x16u);
    }

    [(ABPK2DDetectionConfiguration *)self->_config2D setAbpkDeviceOrientation:deviceOrientation];
  }

  v20 = [ABPK2DMLModelConfigSelector inputDimensionsForModelWithABPKNetworkConfig:self->_config2D];
  v22 = v21;
  v24 = v23;
  if (!self->_imagePreprocessor || self->_inputResolution.width == v11 && self->_inputResolution.height == v12)
  {
    v25 = __ABPKLogSharedInstance(v20);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *&buf[4] = v24;
      *&buf[12] = 2048;
      *&buf[14] = v22;
      _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_DEBUG, " ML image resolution: (height,width):(%f,%f) ", buf, 0x16u);
    }

    v26 = [[ABPKImagePreProcessingParams alloc] initWithType:2 inputResolution:v11 outputResolution:v12, v22, v24];
    objc_storeStrong(&self->_imagePreProcessingParams, v26);
    [(ABPKImagePreProcessingParams *)v26 printData];
    v27 = [[ABPKImagePreProcessing alloc] initWithPreProcessingParams:v26];
    if (!v27)
    {
      v31 = __ABPKLogSharedInstance(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v31, OS_LOG_TYPE_ERROR, " Could not initialize imagePreprocessor ", buf, 2u);
      }

      goto LABEL_27;
    }

    self->_inputResolution.width = v11;
    self->_inputResolution.height = v12;
    imagePreprocessor = self->_imagePreprocessor;
    self->_imagePreprocessor = v27;
  }

  [(ABPKPoseEstimationPipeline *)self _startImagePreprocessingSignpost];
  if ([(ABPK2DDetectionConfiguration *)self->_config2D abpkDeviceOrientation]!= deviceOrientation || !self->_mlImage)
  {
    v215 = *MEMORY[0x277CC4DE8];
    v216 = MEMORY[0x277CBEC10];
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
    v29 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v22, v24, 0x42475241u, v26, &self->_mlImage);
    if (v29)
    {
      v30 = __ABPKLogSharedInstance(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v30, OS_LOG_TYPE_ERROR, " Could not create mlImage buffer of type kCVPixelFormatType_32BGRA ", buf, 2u);
      }

LABEL_27:
      v34 = -6660;
      goto LABEL_28;
    }
  }

  v32 = -[ABPKImagePreProcessing preprocessData:outputBuffer:](self->_imagePreprocessor, "preprocessData:outputBuffer:", [dataCopy image], self->_mlImage);
  [(ABPKImagePreProcessing *)self->_imagePreprocessor logProfilingDetails];
  _endImagePreprocessingSignpost = [(ABPKPoseEstimationPipeline *)self _endImagePreprocessingSignpost];
  if (v32)
  {
    v26 = __ABPKLogSharedInstance(_endImagePreprocessingSignpost);
    if (os_log_type_enabled(&v26->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, &v26->super, OS_LOG_TYPE_ERROR, " Could not pre-process image ", buf, 2u);
    }

    goto LABEL_27;
  }

  if (self->_exitPoint)
  {
    algState = [outputCopy algState];
    [algState setImage_preprocessing:1];

    v38 = __ABPKLogSharedInstance(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v38, OS_LOG_TYPE_DEBUG, " Running 2d pose estimation ", buf, 2u);
    }

    v40 = __ABPKLogSharedInstance(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v40, OS_LOG_TYPE_DEBUG, " \t Running the ML model ", buf, 2u);
    }

    v41 = [ABPKMLImageData alloc];
    mlImage = self->_mlImage;
    [dataCopy timestamp];
    v26 = [(ABPKMLImageData *)v41 initWithPixelBuffer:mlImage timestamp:deviceOrientation abpkDeviceOrientation:self->_imagePreProcessingParams preprocessingParameters:?];
    v43 = [(ABPK2DPoseEstimation *)self->_poseEstimation2D runWithMLImageData:v26 rotationOfResultTensor:0];
    if (v43 == -6661)
    {
      v44 = __ABPKLogSharedInstance(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v44, OS_LOG_TYPE_ERROR, " 2D Pose estimation failed. ", buf, 2u);
      }

      ++self->_consistent2DSkeletonMissing;
      v34 = -6661;
      goto LABEL_28;
    }

    [(ABPK2DPoseEstimation *)self->_poseEstimation2D getRawTrackedHumanSkeleton:self->_rawDetection2dSkeleton];
    [(ABPK2DPoseEstimation *)self->_poseEstimation2D getRawTrackedHumanSkeletonVector:self->_rawDetection2dSkeletonArray];
    [(ABPK2DPoseEstimation *)self->_poseEstimation2D getTrackedHumanSkeleton:self->_detection2dSkeleton];
    v208 = [[ABPK2dSkeleton alloc] initWithType:1];
    [(ABPK2DPoseEstimation *)self->_poseEstimation2D getTrackedHumanForLiftingSkeleton:?];
    algState2 = [outputCopy algState];
    [algState2 setDetection2d:1];

    if (self->_deviceANEVersionPriorOrEqualToH12)
    {
      hasMissingJoints = [(ABPK2dSkeleton *)v208 hasMissingJoints];
      if (hasMissingJoints)
      {
        v47 = __ABPKLogSharedInstance(hasMissingJoints);
        if (os_log_type_enabled(&v47->super, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, &v47->super, OS_LOG_TYPE_DEBUG, " \t\t Extrapolation for missing joints failed. Cannot run lifting network using old 3D lifting model on rOS. New 3D lifting model should still work on iOS. ", buf, 2u);
        }

        v34 = -6667;
        goto LABEL_100;
      }
    }

    else if (!self->_rawDetection2dSkeleton)
    {
      v34 = -6667;
LABEL_101:

      goto LABEL_28;
    }

    if (self->_exitPoint == 2)
    {
      v47 = __ABPKLogSharedInstance(hasMissingJoints);
      if (os_log_type_enabled(&v47->super, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, &v47->super, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPoint2DDetectionPostProcessing ", buf, 2u);
      }

      v34 = 0;
      goto LABEL_100;
    }

    v48 = __ABPKLogSharedInstance(hasMissingJoints);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v48, OS_LOG_TYPE_DEBUG, " Performing 2d-3d lifting ", buf, 2u);
    }

    v50 = __ABPKLogSharedInstance(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v50, OS_LOG_TYPE_DEBUG, " \t Pre-processing data ", buf, 2u);
    }

    if (self->_deviceANEVersionPriorOrEqualToH12)
    {
      v51 = [ABPK2D3DLiftingData alloc];
      normalizedKeypoints2d = [(ABPK2dSkeleton *)v208 normalizedKeypoints2d];
      skeletonDefinition = [(ABPK2dSkeleton *)v208 skeletonDefinition];
      v47 = -[ABPK2D3DLiftingData initWithJoints:numberOfJoints:](v51, "initWithJoints:numberOfJoints:", normalizedKeypoints2d, [skeletonDefinition jointCount]);

      v54 = [ABPK2DDetectionResult alloc];
      normalizedKeypoints2d2 = [(ABPK2dSkeleton *)self->_detection2dSkeleton normalizedKeypoints2d];
      visibility = [(ABPK2dSkeleton *)self->_detection2dSkeleton visibility];
      skeletonDefinition2 = [(ABPK2dSkeleton *)self->_detection2dSkeleton skeletonDefinition];
      v130 = -[ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:](v54, "initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:", normalizedKeypoints2d2, visibility, [skeletonDefinition2 jointCount], 0, v47, 0.0, 0.0, 1.0, 1.0);

      if (!v47)
      {
        v62 = __ABPKLogSharedInstance(v58);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v82 = " Exiting from point: kABPKAlgorithmExitPoint3DLiftingPreprocessing ";
LABEL_86:
          _os_log_impl(&dword_23EDDC000, v62, OS_LOG_TYPE_DEBUG, v82, buf, 2u);
        }

LABEL_87:
        v34 = 0;
LABEL_88:

LABEL_99:
LABEL_100:

        goto LABEL_101;
      }

      v59 = __ABPKLogSharedInstance(v58);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v59, OS_LOG_TYPE_DEBUG, " \t Running the lifting model ", buf, 2u);
      }

      liftingAlgorithm = self->_liftingAlgorithm;
      [dataCopy timestamp];
      v61 = [(ABPK3DLifting *)liftingAlgorithm runLiftingModelWithData:v130 atTimestamp:?];
      if (v61)
      {
        v62 = __ABPKLogSharedInstance(v61);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v62, OS_LOG_TYPE_DEBUG, " \t\t Failed to run Lifting ML model ", buf, 2u);
        }

        v34 = -6662;
        goto LABEL_88;
      }

      if (self->_exitPoint == 4)
      {
        v62 = __ABPKLogSharedInstance(v61);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v82 = " Exiting from point: kABPKAlgorithmExitPoint3DLiftingModelOutput ";
          goto LABEL_86;
        }

        goto LABEL_87;
      }

      v83 = __ABPKLogSharedInstance(v61);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v83, OS_LOG_TYPE_DEBUG, " \t Post-processing output ", buf, 2u);
      }

      getLiftingResults = [(ABPK3DLifting *)self->_liftingAlgorithm getLiftingResults];
      if (!getLiftingResults)
      {
        v34 = -6662;
        goto LABEL_99;
      }

      algState3 = [outputCopy algState];
      [algState3 setLifting3d:1];

      [(ABPKSkeleton *)self->_liftingSkeleton setModelPoses:[(ABPK3DLifting *)self->_liftingAlgorithm get3DLiftingResultsAsModelPoses] andUpdateLocalPoses:1];
LABEL_131:

      self->_consistent2DSkeletonMissing = 0;
      if (self->_exitPoint == 5)
      {
        v121 = __ABPKLogSharedInstance(v120);
        v130 = v121;
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v121, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPoint3DLiftingPostProcessing ", buf, 2u);
        }
      }

      else
      {
        v122 = __ABPKLogSharedInstance(v120);
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v122, OS_LOG_TYPE_DEBUG, " Performing camera registration ", buf, 2u);
        }

        bodyRegistration = self->_bodyRegistration;
        cameraParams3 = [dataCopy cameraParams];
        [cameraParams3 intrinsics];
        v203 = v126;
        v207 = v125;
        v198 = v127;
        cameraParams4 = [dataCopy cameraParams];
        [cameraParams4 inputRes];
        v130 = [(ABPKCameraRegistration *)bodyRegistration runCameraRegistrationWithImageIntrinsics:getLiftingResults imageResolution:v207 liftingResult:v203, v198, v129, v130];

        if (([(ABPK2DDetectionResult *)v130 success]& 1) == 0)
        {
          v34 = -6664;
LABEL_164:
          v47 = getLiftingResults;
          goto LABEL_99;
        }

        algState4 = [outputCopy algState];
        [algState4 setRegistration:1];

        liftingSkeleton = self->_liftingSkeleton;
        [(ABPK2DDetectionResult *)v130 cameraFromBodyPose];
        [(ABPKSkeleton *)liftingSkeleton setCameraRootTransform:?];
        [(ABPK2DDetectionResult *)v130 cameraFromBodyPose];
        v194 = v134;
        v196 = v133;
        v199 = v136;
        v204 = v135;
        *v137.i64 = simd_matrix4x4(_PromotedConst);
        v141 = 0;
        *__p = v196;
        v210 = v194;
        v211 = v204;
        v212 = v199;
        do
        {
          *&buf[v141 * 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v137, COERCE_FLOAT(*&__p[v141])), v138, __p[v141], 1), v139, *&__p[v141], 2), v140, *&__p[v141], 3);
          v141 += 2;
        }

        while (v141 != 8);
        v200 = *&buf[16];
        v205 = *buf;
        v195 = *&v219;
        v197 = *&v218;
        [(ABPKSkeleton *)self->_liftingSkeleton setRenderingCameraRootTransform:?];
        registered2dSkeleton = self->_registered2dSkeleton;
        joints2d = [(ABPK2DDetectionResult *)v130 joints2d];
        cameraParams5 = [dataCopy cameraParams];
        [cameraParams5 inputRes];
        [(ABPK2dSkeleton *)registered2dSkeleton setKeypoints2d:joints2d withImageRes:?];

        if (self->_exitPoint == 6)
        {
          v146 = __ABPKLogSharedInstance(v145);
          if (os_log_type_enabled(v146, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23EDDC000, v146, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPointCameraRegistration ", buf, 2u);
          }
        }

        else
        {
          [dataCopy timestamp];
          [(ABPKPoseEstimationPipeline *)self _startScaleEstimationSignpostWithTimestamp:?];
          isDepthDataValid = [dataCopy isDepthDataValid];
          if (isDepthDataValid && (isDepthDataValid = [dataCopy depthMap]) != 0 && (isDepthDataValid = objc_msgSend(dataCopy, "depthConfidenceBuffer")) != 0 && (scaleEstimation = self->_scaleEstimation, v149 = objc_msgSend(dataCopy, "depthMap"), v150 = objc_msgSend(dataCopy, "depthConfidenceBuffer"), objc_msgSend(dataCopy, "timestamp"), v152 = v151, objc_msgSend(dataCopy, "cameraParams"), v153 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v153, "inputRes"), v155 = v154, v157 = v156, objc_msgSend(dataCopy, "cameraParams"), v158 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v158, "intrinsics"), v192 = v160, v193 = v159, v191 = v161, -[ABPK2DDetectionResult cameraFromBodyPose](v130, "cameraFromBodyPose"), -[ABPKDepthBasedScaleEstimation estimateScaleFromDepthData:depthConfidenceData:timestamp:imageResolution:imageIntrinsics:cameraFromBodyPose:liftingResult:](scaleEstimation, "estimateScaleFromDepthData:depthConfidenceData:timestamp:imageResolution:imageIntrinsics:cameraFromBodyPose:liftingResult:", v149, v150, getLiftingResults, v152, v155, v157, v193, v192, v191, v162, v163, v164, v165, v166, v167, v168, v169), previousValidScale = v170, v158, v153, previousValidScale != -1.0))
          {
            self->_previousValidScale = previousValidScale;
          }

          else
          {
            previousValidScale = self->_previousValidScale;
          }

          v172 = __ABPKLogSharedInstance(isDepthDataValid);
          if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = previousValidScale;
            _os_log_impl(&dword_23EDDC000, v172, OS_LOG_TYPE_DEBUG, " Estimated Scale: %f ", buf, 0xCu);
          }

          *&v173 = previousValidScale;
          [(ABPK3DLiftingResult *)getLiftingResults setEstimatedScale:v173];
          *&v174 = previousValidScale;
          [(ABPKSkeleton *)self->_liftingSkeleton setEstimatedScale:v174];
          [(ABPKSkeleton *)self->_liftingSkeleton updateJointPosesAndRootTransformUsingDepthEstimatedScale];
          [dataCopy timestamp];
          v175 = __ABPKLogSharedInstance([(ABPKPoseEstimationPipeline *)self _endScaleEstimationSignpostWithTimestamp:?]);
          if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23EDDC000, v175, OS_LOG_TYPE_DEBUG, " Performing retargeting ", buf, 2u);
          }

          [dataCopy timestamp];
          [(ABPKPoseEstimationPipeline *)self _startRetargettingSignpostWithTimestamp:?];
          v146 = [(ABPKRetargeting *)self->_retargeting processData:getLiftingResults];
          algState5 = [outputCopy algState];
          [algState5 setRetargeting:1];

          jointModelTransforms = [v146 jointModelTransforms];
          jointModelTransforms2 = [v146 jointModelTransforms];
          jointTransformCount = [v146 jointTransformCount];
          memset(buf, 0, 24);
          std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(buf, jointModelTransforms, (jointModelTransforms2 + (jointTransformCount << 6)), (jointModelTransforms2 + (jointTransformCount << 6) - jointModelTransforms) >> 6);
          jointLocalTransforms = [v146 jointLocalTransforms];
          jointLocalTransforms2 = [v146 jointLocalTransforms];
          jointTransformCount2 = [v146 jointTransformCount];
          __p[0] = 0;
          __p[1] = 0;
          *&v210 = 0;
          std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(__p, jointLocalTransforms, (jointLocalTransforms2 + (jointTransformCount2 << 6)), (jointLocalTransforms2 + (jointTransformCount2 << 6) - jointLocalTransforms) >> 6);
          [(ABPKSkeleton *)self->_retargetedSkeleton setModelPoses:*buf andUpdateLocalPoses:0];
          retargetedSkeleton = self->_retargetedSkeleton;
          [(ABPK2DDetectionResult *)v130 cameraFromBodyPose];
          [(ABPKSkeleton *)retargetedSkeleton setCameraRootTransform:?];
          [(ABPKSkeleton *)self->_retargetedSkeleton setRenderingCameraRootTransform:v205, v200, v197, v195];
          *&v184 = previousValidScale;
          [(ABPKSkeleton *)self->_retargetedSkeleton setEstimatedScale:v184];
          [dataCopy timestamp];
          [(ABPKPoseEstimationPipeline *)self _endRetargettingSignpostWithTimestamp:?];
          computeHeight = [(ABPKSkeleton *)self->_retargetedSkeleton computeHeight];
          v187 = v186;
          v188 = __ABPKLogSharedInstance(computeHeight);
          if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
          {
            *v213 = 134217984;
            v214 = v187;
            _os_log_impl(&dword_23EDDC000, v188, OS_LOG_TYPE_DEBUG, " skeletonHeight: %f ", v213, 0xCu);
          }

          v190 = __ABPKLogSharedInstance(v189);
          if (os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG))
          {
            *v213 = 134217984;
            v214 = previousValidScale;
            _os_log_impl(&dword_23EDDC000, v190, OS_LOG_TYPE_DEBUG, " Estimated Scale: %f ", v213, 0xCu);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }
        }
      }

      v34 = 0;
      goto LABEL_164;
    }

    v47 = [[ABPK2dSkeleton alloc] initWithType:1];
    [(ABPK2DPoseEstimation *)self->_poseEstimation2D getRawTrackedHumanForLiftingSkeleton:v47];
    v63 = [ABPK2D3DLiftingData alloc];
    normalizedKeypoints2d3 = [(ABPK2dSkeleton *)v47 normalizedKeypoints2d];
    skeletonDefinition3 = [(ABPK2dSkeleton *)v47 skeletonDefinition];
    v130 = -[ABPK2D3DLiftingData initWithJoints:numberOfJoints:](v63, "initWithJoints:numberOfJoints:", normalizedKeypoints2d3, [skeletonDefinition3 jointCount]);

    v66 = [ABPK2DDetectionResult alloc];
    normalizedKeypoints2d4 = [(ABPK2dSkeleton *)self->_rawDetection2dSkeleton normalizedKeypoints2d];
    visibility2 = [(ABPK2dSkeleton *)self->_rawDetection2dSkeleton visibility];
    skeletonDefinition4 = [(ABPK2dSkeleton *)self->_rawDetection2dSkeleton skeletonDefinition];
    v70 = -[ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:](v66, "initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:", normalizedKeypoints2d4, visibility2, [skeletonDefinition4 jointCount], 0, v130, 0.0, 0.0, 1.0, 1.0);

    if (self->_useLSTM3D)
    {
      if (self->_consistent2DSkeletonMissing >= 6)
      {
        v72 = __ABPKLogSharedInstance(resetCellStateAndHiddenStateInput);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v72, OS_LOG_TYPE_DEBUG, " \t Last detected person was many frames ago. New 2D person detected. Resetting LSTM for 3D lifting. ", buf, 2u);
        }

        resetCellStateAndHiddenStateInput = [(ABPK3DLiftingLSTM *)self->_liftingAlgorithmLSTM resetCellStateAndHiddenStateInput];
      }

      v73 = __ABPKLogSharedInstance(resetCellStateAndHiddenStateInput);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v73, OS_LOG_TYPE_DEBUG, " \t Running the LSTM lifting model ", buf, 2u);
      }

      liftingAlgorithmLSTM = self->_liftingAlgorithmLSTM;
      [dataCopy timestamp];
      v76 = [(ABPK3DLiftingLSTM *)liftingAlgorithmLSTM runLiftingModelWithData:v70 imageResolution:deviceOrientation deviceOrientation:v11 atTimestamp:v12, v75];
      if (v76)
      {
        v77 = __ABPKLogSharedInstance(v76);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
LABEL_79:
          _os_log_impl(&dword_23EDDC000, v77, OS_LOG_TYPE_DEBUG, " \t\t Failed to run Lifting ML model ", buf, 2u);
          goto LABEL_80;
        }

        goto LABEL_80;
      }

      if (self->_exitPoint == 4)
      {
        v77 = __ABPKLogSharedInstance(v76);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      v105 = __ABPKLogSharedInstance(v76);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v105, OS_LOG_TYPE_DEBUG, " \t Post-processing output ", buf, 2u);
      }

      getLiftingResults2 = [(ABPK3DLiftingLSTM *)self->_liftingAlgorithmLSTM getLiftingResults];
      v107 = getLiftingResults2;
      if (getLiftingResults2)
      {
        if ([getLiftingResults2 rawNetworkOutputJoints])
        {
          [outputCopy setRawLiftingNetworkOutputJoints:{objc_msgSend(v107, "rawNetworkOutputJoints")}];
        }

        skeletonDefinition5 = [(ABPK2dSkeleton *)self->_detection2dSkeleton skeletonDefinition];
        v202 = v107;
        jointCount = [skeletonDefinition5 jointCount];

        normalizedKeypoints2d5 = [(ABPK2dSkeleton *)self->_detection2dSkeleton normalizedKeypoints2d];
        normalizedKeypoints2d6 = [(ABPK2dSkeleton *)self->_detection2dSkeleton normalizedKeypoints2d];
        memset(buf, 0, 24);
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(buf, normalizedKeypoints2d5, (normalizedKeypoints2d6 + 8 * jointCount), (normalizedKeypoints2d6 + 8 * jointCount - normalizedKeypoints2d5) >> 3);
        if (jointCount)
        {
          v112 = 0;
          __asm { FMOV            V8.2S, #-1.0 }

          do
          {
            if (![(ABPK2dSkeleton *)self->_rawDetection2dSkeleton visibility][4 * v112])
            {
              *(*buf + 8 * v112) = _D8;
            }

            ++v112;
          }

          while (jointCount != v112);
        }

        v114 = [ABPK2DDetectionResult alloc];
        v115 = *buf;
        visibility3 = [(ABPK2dSkeleton *)self->_rawDetection2dSkeleton visibility];
        skeletonDefinition6 = [(ABPK2dSkeleton *)self->_rawDetection2dSkeleton skeletonDefinition];
        v118 = -[ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:](v114, "initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:", v115, visibility3, [skeletonDefinition6 jointCount], 0, v130, 0.0, 0.0, 1.0, 1.0);

        getLiftingResults = -[ABPK3DLiftingResult initWithJoints:numberOfJoints:referenceDetectionResult:]([ABPK3DLiftingResult alloc], "initWithJoints:numberOfJoints:referenceDetectionResult:", [v202 joints], 17, v118);
        algState6 = [outputCopy algState];
        [algState6 setLifting3d:1];

        [(ABPKSkeleton *)self->_liftingSkeleton setModelPoses:[(ABPK3DLiftingLSTM *)self->_liftingAlgorithmLSTM get3DLiftingResultsAsModelPoses] andUpdateLocalPoses:1];
LABEL_128:
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        goto LABEL_131;
      }
    }

    else
    {
      v78 = __ABPKLogSharedInstance(resetCellStateAndHiddenStateInput);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v78, OS_LOG_TYPE_DEBUG, " \t Running the TCN lifting model ", buf, 2u);
      }

      liftingAlgorithmSequence = self->_liftingAlgorithmSequence;
      [dataCopy timestamp];
      v81 = [(ABPK3DLiftingSequence *)liftingAlgorithmSequence runLiftingModelWithData:v70 imageResolution:deviceOrientation deviceOrientation:v11 atTimestamp:v12, v80];
      if (v81)
      {
        v77 = __ABPKLogSharedInstance(v81);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          goto LABEL_79;
        }

LABEL_80:
        v34 = -6662;
LABEL_97:

LABEL_98:
        goto LABEL_99;
      }

      if (self->_exitPoint == 4)
      {
        v77 = __ABPKLogSharedInstance(v81);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
LABEL_95:
          _os_log_impl(&dword_23EDDC000, v77, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPoint3DLiftingModelOutput ", buf, 2u);
        }

LABEL_96:
        v34 = 0;
        goto LABEL_97;
      }

      v86 = __ABPKLogSharedInstance(v81);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v86, OS_LOG_TYPE_DEBUG, " \t Post-processing output ", buf, 2u);
      }

      getLiftingResults3 = [(ABPK3DLiftingSequence *)self->_liftingAlgorithmSequence getLiftingResults];
      v88 = getLiftingResults3;
      if (getLiftingResults3)
      {
        if ([getLiftingResults3 rawNetworkOutputJoints])
        {
          [outputCopy setRawLiftingNetworkOutputJoints:{objc_msgSend(v88, "rawNetworkOutputJoints")}];
        }

        skeletonDefinition7 = [(ABPK2dSkeleton *)self->_detection2dSkeleton skeletonDefinition];
        v201 = v88;
        jointCount2 = [skeletonDefinition7 jointCount];

        normalizedKeypoints2d7 = [(ABPK2dSkeleton *)self->_detection2dSkeleton normalizedKeypoints2d];
        normalizedKeypoints2d8 = [(ABPK2dSkeleton *)self->_detection2dSkeleton normalizedKeypoints2d];
        memset(buf, 0, 24);
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(buf, normalizedKeypoints2d7, (normalizedKeypoints2d8 + 8 * jointCount2), (normalizedKeypoints2d8 + 8 * jointCount2 - normalizedKeypoints2d7) >> 3);
        if (jointCount2)
        {
          v93 = 0;
          __asm { FMOV            V8.2S, #-1.0 }

          do
          {
            if (![(ABPK2dSkeleton *)self->_rawDetection2dSkeleton visibility][4 * v93])
            {
              *(*buf + 8 * v93) = _D8;
            }

            ++v93;
          }

          while (jointCount2 != v93);
        }

        v99 = [ABPK2DDetectionResult alloc];
        v100 = *buf;
        visibility4 = [(ABPK2dSkeleton *)self->_rawDetection2dSkeleton visibility];
        skeletonDefinition8 = [(ABPK2dSkeleton *)self->_rawDetection2dSkeleton skeletonDefinition];
        v103 = -[ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:](v99, "initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:", v100, visibility4, [skeletonDefinition8 jointCount], 0, v130, 0.0, 0.0, 1.0, 1.0);

        getLiftingResults = -[ABPK3DLiftingResult initWithJoints:numberOfJoints:referenceDetectionResult:]([ABPK3DLiftingResult alloc], "initWithJoints:numberOfJoints:referenceDetectionResult:", [v201 joints], 17, v103);
        algState7 = [outputCopy algState];
        [algState7 setLifting3d:1];

        [(ABPKSkeleton *)self->_liftingSkeleton setModelPoses:[(ABPK3DLiftingSequence *)self->_liftingAlgorithmSequence get3DLiftingResultsAsModelPoses] andUpdateLocalPoses:1];
        goto LABEL_128;
      }
    }

    v34 = -6662;
    goto LABEL_98;
  }

  v26 = __ABPKLogSharedInstance(_endImagePreprocessingSignpost);
  if (os_log_type_enabled(&v26->super, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, &v26->super, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPointImagePreProcessing ", buf, 2u);
  }

  v34 = 0;
LABEL_28:

  return v34;
}

- (void)computeRootTransforms:(float32x4_t)transforms withCameraExtrinsics:(float32x4_t)extrinsics withVioPose:(uint64_t)pose withVioPoseValidity:(uint64_t)validity
{
  v33 = a7;
  liftingSkeletonABPK = [v33 liftingSkeletonABPK];
  [liftingSkeletonABPK cameraRootTransform];
  v21 = v9;
  v22 = v8;
  v23 = v11;
  v24 = v10;
  liftingSkeletonABPK2 = [v33 liftingSkeletonABPK];
  v13 = liftingSkeletonABPK2;
  v14 = 0;
  v34[0] = v22;
  v34[1] = v21;
  v34[2] = v24;
  v34[3] = v23;
  do
  {
    *(&v35 + v14 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(self, COERCE_FLOAT(v34[v14])), a2, *&v34[v14], 1), transforms, v34[v14], 2), extrinsics, v34[v14], 3);
    ++v14;
  }

  while (v14 != 4);
  [liftingSkeletonABPK2 setDeviceRootTransform:{*&v35, *&v36, *&v37, *&v38}];

  liftingSkeletonABPK3 = [v33 liftingSkeletonABPK];
  [liftingSkeletonABPK3 deviceRootTransform];
  v30 = v17;
  v32 = v16;
  v26 = v19;
  v28 = v18;
  retargetedSkeletonABPK = [v33 retargetedSkeletonABPK];
  [retargetedSkeletonABPK setDeviceRootTransform:{v32, v30, v28, v26}];
}

- (void)saveInputData:(id)data andOutputData:(id)outputData ToDir:(id)dir withFileNamePrefix:(id)prefix
{
  dataCopy = data;
  outputDataCopy = outputData;
  dirCopy = dir;
  prefixCopy = prefix;
  v13 = __ABPKLogSharedInstance(prefixCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " \t\t Recording input data ", buf, 2u);
  }

  v14 = __ABPKLogSharedInstance([dataCopy saveDataToDir:dirCopy withFileNamePrefix:prefixCopy]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " \t\t Recording output data ", v15, 2u);
  }

  [outputDataCopy saveDataToDir:dirCopy withFileNamePrefix:prefixCopy];
}

@end