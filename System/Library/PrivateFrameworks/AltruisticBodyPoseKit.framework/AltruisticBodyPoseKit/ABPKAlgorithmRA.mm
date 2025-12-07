@interface ABPKAlgorithmRA
- (ABPKAlgorithmRA)initWithCameraParams:(id)params andAlgorithmMode:(int64_t)mode;
- (int)preprocessInputImage:(__CVBuffer *)image;
- (void)computeRootTransforms:(uint64_t)transforms withVioPose:(uint64_t)pose withVioPoseValidity:(void *)validity;
- (void)dealloc;
- (void)runABPKAlgorithmWithInputData:(id)data andGetOutput:(id)output;
- (void)saveInputData:(id)data andOutputData:(id)outputData ToDir:(id)dir withFileNamePrefix:(id)prefix;
@end

@implementation ABPKAlgorithmRA

- (ABPKAlgorithmRA)initWithCameraParams:(id)params andAlgorithmMode:(int64_t)mode
{
  v39[1] = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v37.receiver = self;
  v37.super_class = ABPKAlgorithmRA;
  v7 = [(ABPKAlgorithmRA *)&v37 init];
  if (v7)
  {
    v8 = objc_alloc_init(ABPKAlgInput);
    v9 = *(v7 + 24);
    *(v7 + 24) = v8;

    objc_storeStrong(v7 + 5, params);
    *(v7 + 2) = 7;
    [*(v7 + 5) inputRes];
    *(v7 + 3) = v10;
    *(v7 + 4) = v11;
    v12 = [[ABPK2DDetectionConfiguration alloc] initWithAlgorithmMode:1];
    if (v12)
    {
      v13 = [[ABPKImagePreProcessingParams alloc] initWithType:2 inputResolution:*(v7 + 3) outputResolution:*(v7 + 4), *(v7 + 10), *(v7 + 11)];
      v14 = *(v7 + 13);
      *(v7 + 13) = v13;

      if (*(v7 + 13))
      {
        *(v7 + 7) = *(v7 + 24);
        [*(v7 + 5) intrinsics];
        *(v7 + 34) = v16;
        *(v7 + 16) = v17;
        *(v7 + 38) = v18;
        *(v7 + 18) = v19;
        *(v7 + 42) = v20;
        *(v7 + 20) = v21;
        v22 = [[ABPKAlgorithmParams alloc] initWithRegIntrinsics:*(v7 + 16) regImageResolution:*(v7 + 18), *(v7 + 20), *(v7 + 14), *(v7 + 15)];
        v23 = *(v7 + 6);
        *(v7 + 6) = v22;

        [*(v7 + 6) setConfig2DDetection:v12];
        v24 = [[ABPKAlgorithm alloc] initWithParams:*(v7 + 6)];
        v25 = *(v7 + 1);
        *(v7 + 1) = v24;

        if (!*(v7 + 1))
        {
          v33 = 0;
LABEL_23:

          goto LABEL_24;
        }

        v26 = [[ABPKImagePreProcessing alloc] initWithPreProcessingParams:*(v7 + 13)];
        v27 = *(v7 + 12);
        *(v7 + 12) = v26;

        if (*(v7 + 12))
        {
          v29 = __ABPKLogSharedInstance(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *v36 = 0;
            _os_log_impl(&dword_23EDDC000, v29, OS_LOG_TYPE_DEBUG, " Image Preprocessing ", v36, 2u);
          }

          v38 = *MEMORY[0x277CC4DE8];
          v39[0] = MEMORY[0x277CBEC10];
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
          v31 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], *(v7 + 10), *(v7 + 11), 0x42475241u, v30, v7 + 22);
          if (!v31)
          {
            v33 = v7;
            goto LABEL_22;
          }

          v32 = __ABPKLogSharedInstance(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *v36 = 0;
            _os_log_impl(&dword_23EDDC000, v32, OS_LOG_TYPE_ERROR, " Could not create mlImage buffer of type kCVPixelFormatType_32BGRA ", v36, 2u);
          }

LABEL_21:
          v33 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v30 = __ABPKLogSharedInstance(v28);
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        *v36 = 0;
        v34 = " Could not initialize imagePreprocessor ";
      }

      else
      {
        v30 = __ABPKLogSharedInstance(v15);
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        *v36 = 0;
        v34 = " Failed to initialize Image Preprocessing Parameters ";
      }
    }

    else
    {
      v30 = __ABPKLogSharedInstance(0);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *v36 = 0;
      v34 = " Failed to initialize config for 2D Detection module ";
    }

    _os_log_impl(&dword_23EDDC000, v30, OS_LOG_TYPE_ERROR, v34, v36, 2u);
    goto LABEL_21;
  }

  v33 = 0;
LABEL_24:

  return v33;
}

- (void)dealloc
{
  mlImage = self->_mlImage;
  if (mlImage)
  {
    CVPixelBufferRelease(mlImage);
  }

  v4.receiver = self;
  v4.super_class = ABPKAlgorithmRA;
  [(ABPKAlgorithmRA *)&v4 dealloc];
}

- (void)runABPKAlgorithmWithInputData:(id)data andGetOutput:(id)output
{
  dataCopy = data;
  outputCopy = output;
  [(ABPKAlgorithmRA *)self _startExecuteAlgorithmSignpost];
  +[ABPKTime nowInSeconds];
  *&v8 = v8;
  [outputCopy setTimeABPKAlgorithmStart:v8];
  [outputCopy setAlgorithmParams:self->_algParams];
  v9 = objc_alloc_init(ABPKAlgorithmState);
  [outputCopy setAlgState:v9];

  [dataCopy timestamp];
  [outputCopy setTimestamp:?];
  [(ABPKAlgorithmRA *)self _startImagePreprocessingSignpost];
  LODWORD(v9) = -[ABPKAlgorithmRA preprocessInputImage:](self, "preprocessInputImage:", [dataCopy image]);
  _endImagePreprocessingSignpost = [(ABPKAlgorithmRA *)self _endImagePreprocessingSignpost];
  if (v9)
  {
    v11 = __ABPKLogSharedInstance(_endImagePreprocessingSignpost);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEFAULT, " Could not preprocess input data ", buf, 2u);
    }

    [outputCopy setAlgorithmReturnCode:4294960636];
  }

  else
  {
    algState = [outputCopy algState];
    [algState setImage_preprocessing:1];

    v13 = [outputCopy setMlImage:self->_mlImage];
    if (self->_exitPoint)
    {
      [(ABPKAlgorithmRA *)self _startABPKAlgoInitSignpost];
      -[ABPKAlgInput setImage:](self->_algorithmInput, "setImage:", [outputCopy mlImage]);
      [(ABPKCameraParams *)self->_abpkCameraParams inputRes];
      [(ABPKAlgInput *)self->_algorithmInput setImageResolution:?];
      [(ABPKCameraParams *)self->_abpkCameraParams intrinsics];
      [(ABPKAlgInput *)self->_algorithmInput setImageCameraIntrinsics:?];
      -[ABPKAlgInput setDepthMap:](self->_algorithmInput, "setDepthMap:", [dataCopy depthMap]);
      [(ABPKAlgInput *)self->_algorithmInput setImagePreProcessingParams:self->_imagePreProcessingParams];
      [dataCopy timestamp];
      [(ABPKAlgInput *)self->_algorithmInput setTimestamp:?];
      -[ABPKAlgInput setDepthConfidenceBuffer:](self->_algorithmInput, "setDepthConfidenceBuffer:", [dataCopy depthConfidenceBuffer]);
      -[ABPKAlgInput setIsDepthDataValid:](self->_algorithmInput, "setIsDepthDataValid:", [dataCopy isDepthDataValid]);
      algState2 = [outputCopy algState];
      [(ABPKAlgOutput *)self->_algorithmOutput setAlgState:algState2];

      [(ABPKAlgorithmRA *)self _endABPKAlgoInitSignpost];
      v15 = [(ABPKAlgorithm *)self->_abpkAlgorithm runWithInput:self->_algorithmInput andGetOutput:self->_algorithmOutput];
      algorithmOutput = self->_algorithmOutput;
      [dataCopy vioPose];
      -[ABPKAlgorithmRA computeRootTransforms:withVioPose:withVioPoseValidity:](self, "computeRootTransforms:withVioPose:withVioPoseValidity:", algorithmOutput, [dataCopy isVioPoseValid], v17, v18, v19, v20);
      rawDetection2dSkeletonABPK = [(ABPKAlgOutput *)self->_algorithmOutput rawDetection2dSkeletonABPK];
      [outputCopy setRawDetection2dSkeletonABPK:rawDetection2dSkeletonABPK];

      rawDetection2dSkeletonABPKArray = [(ABPKAlgOutput *)self->_algorithmOutput rawDetection2dSkeletonABPKArray];
      [outputCopy setRawDetection2dSkeletonABPKArray:rawDetection2dSkeletonABPKArray];

      detection2dSkeletonABPK = [(ABPKAlgOutput *)self->_algorithmOutput detection2dSkeletonABPK];
      [outputCopy setDetection2dSkeletonABPK:detection2dSkeletonABPK];

      liftingSkeletonABPK = [(ABPKAlgOutput *)self->_algorithmOutput liftingSkeletonABPK];
      [outputCopy setLiftingSkeletonABPK:liftingSkeletonABPK];

      registered2dSkeletonABPK = [(ABPKAlgOutput *)self->_algorithmOutput registered2dSkeletonABPK];
      [outputCopy setRegistered2dSkeletonABPK:registered2dSkeletonABPK];

      retargetedSkeletonABPK = [(ABPKAlgOutput *)self->_algorithmOutput retargetedSkeletonABPK];
      [outputCopy setRetargetedSkeletonABPK:retargetedSkeletonABPK];

      algState3 = [(ABPKAlgOutput *)self->_algorithmOutput algState];
      [outputCopy setAlgState:algState3];

      [outputCopy setAlgorithmReturnCode:v15];
      [(ABPKAlgorithmRA *)self _endExecuteAlgorithmSignpost];
      +[ABPKTime nowInSeconds];
      *&v28 = v28;
      [outputCopy setTimeABPKAlgorithmFinished:v28];
    }

    else
    {
      v29 = __ABPKLogSharedInstance(v13);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *v31 = 0;
        _os_log_impl(&dword_23EDDC000, v29, OS_LOG_TYPE_DEBUG, " Exiting from point: kABPKAlgorithmExitPointImagePreProcessing ", v31, 2u);
      }

      +[ABPKTime nowInSeconds];
      *&v30 = v30;
      [outputCopy setTimeABPKAlgorithmFinished:v30];
    }
  }
}

- (void)computeRootTransforms:(uint64_t)transforms withVioPose:(uint64_t)pose withVioPoseValidity:(void *)validity
{
  validityCopy = validity;
  [*(transforms + 40) extrinsics];
  v30 = v5;
  v32 = v4;
  v26 = v7;
  v28 = v6;
  liftingSkeletonABPK = [validityCopy liftingSkeletonABPK];
  [liftingSkeletonABPK cameraRootTransform];
  v22 = v10;
  v23 = v9;
  v24 = v12;
  v25 = v11;
  liftingSkeletonABPK2 = [validityCopy liftingSkeletonABPK];
  v14 = liftingSkeletonABPK2;
  v15 = 0;
  v35[0] = v23;
  v35[1] = v22;
  v35[2] = v25;
  v35[3] = v24;
  do
  {
    *(&v36 + v15 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(v35[v15])), v30, *&v35[v15], 1), v28, v35[v15], 2), v26, v35[v15], 3);
    ++v15;
  }

  while (v15 != 4);
  [liftingSkeletonABPK2 setDeviceRootTransform:{*&v36, *&v37, *&v38, *&v39}];

  liftingSkeletonABPK3 = [validityCopy liftingSkeletonABPK];
  [liftingSkeletonABPK3 deviceRootTransform];
  v31 = v18;
  v33 = v17;
  v27 = v20;
  v29 = v19;
  retargetedSkeletonABPK = [validityCopy retargetedSkeletonABPK];
  [retargetedSkeletonABPK setDeviceRootTransform:{v33, v31, v29, v27}];
}

- (int)preprocessInputImage:(__CVBuffer *)image
{
  v5 = __ABPKLogSharedInstance(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " Pre-processing image ", v7, 2u);
  }

  return [(ABPKImagePreProcessing *)self->_imagePreprocessor preprocessData:image outputBuffer:self->_mlImage];
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