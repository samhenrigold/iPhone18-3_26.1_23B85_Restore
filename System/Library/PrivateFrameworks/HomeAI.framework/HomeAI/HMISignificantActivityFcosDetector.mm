@interface HMISignificantActivityFcosDetector
+ (HMIMLModel)sharedModel;
+ (id)defaultAssetPath;
+ (id)defaultNMSConfiguration;
- (BOOL)_runNeuralNetworkOnPixelBuffer:(__CVBuffer *)buffer offsetsZero:(id)zero offsetsOne:(id)one scores:(id)scores yaws:(id)yaws rolls:(id)rolls error:(id *)error;
- (BOOL)predict:(__CVBuffer *)predict detectedObjects:(id)objects error:(id *)error;
- (CGSize)inputDimensions;
- (HMISignificantActivityFcosDetector)initWithConfidenceThresholds:(id)thresholds nmsConfiguration:(id)configuration error:(id *)error;
- (void)_postProcessOffsetsZero:(id)zero offsetsOne:(id)one scores:(id)scores yaws:(id)yaws rolls:(id)rolls outputPredictions:(id)predictions;
@end

@implementation HMISignificantActivityFcosDetector

- (HMISignificantActivityFcosDetector)initWithConfidenceThresholds:(id)thresholds nmsConfiguration:(id)configuration error:(id *)error
{
  v35[16] = *MEMORY[0x277D85DE8];
  thresholdsCopy = thresholds;
  configurationCopy = configuration;
  v34.receiver = self;
  v34.super_class = HMISignificantActivityFcosDetector;
  v9 = [(HMISignificantActivityFcosDetector *)&v34 init];
  if (v9)
  {
    if ([thresholdsCopy count])
    {
      v10 = 0;
      v11 = v9;
      do
      {
        v12 = [thresholdsCopy objectAtIndexedSubscript:?];
        [v12 floatValue];
        *(v11 + 2) = v13;

        ++v10;
        v11 += 4;
      }

      while ([thresholdsCopy count] > v10);
    }

    objc_storeStrong(v9 + 21, configuration);
    *(v9 + 11) = kHMISignificantActivityFcosInputSize;
    v14 = *(v9 + 15);
    *(v9 + 15) = @"image_Placeholder";

    v15 = *(v9 + 16);
    *(v9 + 16) = &unk_284075468;

    v16 = *(v9 + 17);
    *(v9 + 17) = &unk_284075480;

    v17 = *(v9 + 18);
    *(v9 + 18) = &unk_284075498;

    v18 = *(v9 + 19);
    *(v9 + 19) = &unk_2840754B0;

    v19 = *(v9 + 20);
    *(v9 + 20) = &unk_2840754C8;

    [v9 inputDimensions];
    v35[0] = *&v21.f64[0];
    *&v35[1] = v20;
    v21.f64[1] = v20;
    v22 = 2;
    __asm
    {
      FMOV            V1.2D, #-1.0
      FMOV            V2.2D, #0.5
      FMOV            V3.2S, #1.0
    }

    v30 = v21;
    do
    {
      v30 = vcvtq_f64_f32(vadd_f32(vrndm_f32(vcvt_f32_f64(vmulq_f64(vaddq_f64(v30, _Q1), _Q2))), _D3));
      *&v35[v22] = v30;
      v22 += 2;
    }

    while (v22 != 16);
    v31 = (v9 + 40);
    for (i = 3; i != 8; ++i)
    {
      *v31++ = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(v21, *&v35[2 * i]))), v21)));
    }
  }

  return v9;
}

+ (HMIMLModel)sharedModel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMISignificantActivityFcosDetector_sharedModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedModel_onceToken != -1)
  {
    dispatch_once(&sharedModel_onceToken, block);
  }

  v2 = sharedModel_model;

  return v2;
}

void __49__HMISignificantActivityFcosDetector_sharedModel__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v5;
    _os_log_impl(&dword_22D12F000, v4, OS_LOG_TYPE_INFO, "%{public}@Initializing shared model", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = +[HMISignificantActivityFcosDetector defaultAssetPath];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    v8 = [[HMIMLModel alloc] initWithModelURL:?];
    v9 = sharedModel_model;
    sharedModel_model = v8;

    if (!sharedModel_model)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v12;
        _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to load model!", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_ERROR, "%{public}@Model is not bundled into framework. Default model is stored in Git LFS. Make sure Git LFS is installed in your local system.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (BOOL)predict:(__CVBuffer *)predict detectedObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  v15 = [[HMISignpost alloc] initWithName:?];
  v13 = [HMISignificantActivityFcosDetector _runNeuralNetworkOnPixelBuffer:"_runNeuralNetworkOnPixelBuffer:offsetsZero:offsetsOne:scores:yaws:rolls:error:" offsetsZero:error offsetsOne:? scores:? yaws:? rolls:? error:?];
  if (v13)
  {
    [HMISignificantActivityFcosDetector _postProcessOffsetsZero:"_postProcessOffsetsZero:offsetsOne:scores:yaws:rolls:outputPredictions:" offsetsOne:? scores:? yaws:? rolls:? outputPredictions:?];
  }

  __HMISignpostScopeLeave(&v15);

  return v13;
}

- (BOOL)_runNeuralNetworkOnPixelBuffer:(__CVBuffer *)buffer offsetsZero:(id)zero offsetsOne:(id)one scores:(id)scores yaws:(id)yaws rolls:(id)rolls error:(id *)error
{
  errorCopy2 = error;
  zeroCopy = zero;
  oneCopy = one;
  scoresCopy = scores;
  yawsCopy = yaws;
  rollsCopy = rolls;
  v18 = +[HMIPreference sharedInstance];
  LODWORD(yaws) = [v18 BOOLPreferenceForKey:? defaultValue:?];

  if (yaws)
  {
    v19 = [HMIVideoFrame initWithPixelBuffer:"initWithPixelBuffer:presentationTimeStamp:" presentationTimeStamp:?];
    [(HMIVideoFrame *)v19 printWithScale:?];
  }

  v20 = [HMIVisionUtilities transferPixelBuffer:"transferPixelBuffer:pixelFormat:options:error:" pixelFormat:? options:? error:?];
  v21 = [HMIInputFeatureProvider alloc];
  selfCopy2 = self;
  inputFeatureValueName = [(HMISignificantActivityFcosDetector *)self inputFeatureValueName];
  v24 = [HMIInputFeatureProvider initWithPixelBuffer:v21 inputName:"initWithPixelBuffer:inputName:"];

  CVPixelBufferRelease(v20);
  v25 = +[HMISignificantActivityFcosDetector sharedModel];
  v26 = [v25 predictionFromFeatures:? error:?];
  v27 = 0;

  if (!v26 || v27)
  {
    v56 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? underlyingError:?];
    v57 = v56;
    if (error)
    {
      v58 = v56;
      *error = v57;
    }

    HMIErrorLog(self, v57);
  }

  else
  {
    v76 = 0;
    v77 = v24;
    v78 = rollsCopy;
    v81 = v26;
    while (1)
    {
      v28 = scoresCopy;
      v29 = oneCopy;
      v30 = zeroCopy;
      v31 = [(HMISignificantActivityFcosDetector *)selfCopy2 offsetsZeroFeatureValueNames:v76];
      v32 = [v31 objectAtIndexedSubscript:?];
      v33 = [v26 featureValueForName:?];

      if (!v33 || [v33 type] != 5)
      {
        v59 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
        v60 = v59;
        if (errorCopy2)
        {
          v61 = v59;
          *errorCopy2 = v60;
        }

        HMIErrorLog(selfCopy2, v60);

        v27 = v76;
        v24 = v77;
        v57 = v33;
        zeroCopy = v30;
        oneCopy = v29;
LABEL_27:
        scoresCopy = v28;
LABEL_31:
        rollsCopy = v78;
        goto LABEL_39;
      }

      v80 = v33;
      multiArrayValue = [v33 multiArrayValue];
      zeroCopy = v30;
      [v30 addObject:?];

      offsetsOneFeatureValueNames = [(HMISignificantActivityFcosDetector *)selfCopy2 offsetsOneFeatureValueNames];
      v36 = [offsetsOneFeatureValueNames objectAtIndexedSubscript:?];
      v37 = [v26 featureValueForName:?];

      if (!v37 || [v37 type] != 5)
      {
        v62 = v37;
        v63 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
        v64 = v63;
        oneCopy = v29;
        if (errorCopy2)
        {
          v65 = v63;
          *errorCopy2 = v64;
        }

        HMIErrorLog(selfCopy2, v64);

        v27 = v76;
        v24 = v77;
        v57 = v80;
        goto LABEL_27;
      }

      v79 = v37;
      multiArrayValue2 = [v37 multiArrayValue];
      oneCopy = v29;
      [v29 addObject:?];

      scoresFeatureValueNames = [(HMISignificantActivityFcosDetector *)selfCopy2 scoresFeatureValueNames];
      v40 = [scoresFeatureValueNames objectAtIndexedSubscript:?];
      v41 = [v26 featureValueForName:?];

      if (!v41 || [v41 type] != 5)
      {
        v66 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
        v67 = v66;
        scoresCopy = v28;
        if (error)
        {
          v68 = v66;
          *error = v67;
        }

        HMIErrorLog(selfCopy2, v67);

        v27 = v76;
        v24 = v77;
        v57 = v80;
        goto LABEL_31;
      }

      multiArrayValue3 = [v41 multiArrayValue];
      scoresCopy = v28;
      [v28 addObject:?];

      yawsFeatureValueNames = [(HMISignificantActivityFcosDetector *)selfCopy2 yawsFeatureValueNames];
      v44 = [yawsFeatureValueNames objectAtIndexedSubscript:?];
      v45 = [v26 featureValueForName:?];

      if (!v45 || [v45 type] != 5)
      {
        break;
      }

      v46 = selfCopy2;
      v47 = scoresCopy;
      v48 = oneCopy;
      v49 = zeroCopy;
      multiArrayValue4 = [v45 multiArrayValue];
      [yawsCopy addObject:?];

      rollsFeatureValueNames = [(HMISignificantActivityFcosDetector *)v46 rollsFeatureValueNames];
      v52 = [rollsFeatureValueNames objectAtIndexedSubscript:?];
      v53 = [v81 featureValueForName:?];

      if (!v53 || [v53 type] != 5)
      {
        v72 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
        v73 = v72;
        rollsCopy = v78;
        if (error)
        {
          v74 = v72;
          *error = v73;
        }

        HMIErrorLog(self, v73);

        zeroCopy = v49;
        oneCopy = v48;
        scoresCopy = v47;
        goto LABEL_38;
      }

      multiArrayValue5 = [v53 multiArrayValue];
      rollsCopy = v78;
      [v78 addObject:?];

      ++v27;
      zeroCopy = v49;
      oneCopy = v48;
      scoresCopy = v47;
      v26 = v81;
      selfCopy2 = self;
      errorCopy2 = error;
      if (v27 == 5)
      {
        v55 = 1;
        v27 = v76;
        v24 = v77;
        goto LABEL_40;
      }
    }

    v69 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    v70 = v69;
    if (error)
    {
      v71 = v69;
      *error = v70;
    }

    HMIErrorLog(selfCopy2, v70);

    rollsCopy = v78;
LABEL_38:
    v27 = v76;
    v24 = v77;
    v57 = v80;
    v26 = v81;
  }

LABEL_39:

  v55 = 0;
LABEL_40:

  return v55;
}

- (void)_postProcessOffsetsZero:(id)zero offsetsOne:(id)one scores:(id)scores yaws:(id)yaws rolls:(id)rolls outputPredictions:(id)predictions
{
  zeroCopy = zero;
  oneCopy = one;
  scoresCopy = scores;
  yawsCopy = yaws;
  rollsCopy = rolls;
  predictionsCopy = predictions;
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0;
  do
  {
    v14 = [zeroCopy objectAtIndexedSubscript:?];
    v15 = [oneCopy objectAtIndexedSubscript:?];
    v16 = [scoresCopy objectAtIndexedSubscript:?];
    v17 = [yawsCopy objectAtIndexedSubscript:?];
    v71 = v13;
    v18 = [rollsCopy objectAtIndexedSubscript:?];
    shape = [v14 shape];
    v20 = [shape objectAtIndexedSubscript:?];
    unsignedLongValue = [v20 unsignedLongValue];

    shape2 = [v14 shape];
    v22 = [shape2 objectAtIndexedSubscript:?];
    unsignedLongValue2 = [v22 unsignedLongValue];

    strides = [v14 strides];
    v24 = [strides objectAtIndexedSubscript:?];
    unsignedLongValue3 = [v24 unsignedLongValue];

    strides2 = [v14 strides];
    v26 = [strides2 objectAtIndexedSubscript:?];
    unsignedLongValue4 = [v26 unsignedLongValue];

    strides3 = [v16 strides];
    v28 = [strides3 objectAtIndexedSubscript:?];
    unsignedLongValue5 = [v28 unsignedLongValue];

    strides4 = [v18 strides];
    v31 = [strides4 objectAtIndexedSubscript:?];
    unsignedLongValue6 = [v31 unsignedLongValue];

    dataPointer = [v14 dataPointer];
    v70 = v15;
    dataPointer2 = [v15 dataPointer];
    dataPointer3 = [v16 dataPointer];
    v69 = v17;
    dataPointer4 = [v17 dataPointer];
    v68 = v18;
    dataPointer5 = [v18 dataPointer];
    if (unsignedLongValue2)
    {
      v36 = dataPointer5;
      v37 = 0;
      v75 = unsignedLongValue5;
      do
      {
        v74 = v37;
        if (unsignedLongValue)
        {
          v38 = 0;
          do
          {
            v79 = v38;
            v80 = dataPointer3;
            for (i = 1; i != 7; ++i)
            {
              v40 = self->_confidenceThresholds[i];
              if (v40 >= 0.0 && *dataPointer3 >= v40)
              {
                if (i == 5)
                {
                  v41 = dataPointer2;
                }

                else
                {
                  v41 = dataPointer;
                }

                expf(*v41);
                expf(v41[unsignedLongValue3]);
                expf(v41[2 * unsignedLongValue3]);
                expf(v41[3 * unsignedLongValue3]);
                v42 = [HMIObjectDetection alloc];
                v43 = [MEMORY[0x277CCABB0] numberWithFloat:?];
                v44 = [MEMORY[0x277CCABB0] numberWithFloat:?];
                v45 = [HMIObjectDetection initWithLabelIndex:v42 confidence:"initWithLabelIndex:confidence:unclampedBoundingBox:yaw:roll:" unclampedBoundingBox:? yaw:? roll:?];

                [array addObject:?];
              }

              dataPointer3 += unsignedLongValue3;
            }

            dataPointer3 = &v80[v75];
            dataPointer += unsignedLongValue4;
            dataPointer2 += unsignedLongValue4;
            dataPointer4 = (dataPointer4 + 4 * unsignedLongValue6);
            v38 = v79 + 1;
            v36 = (v36 + 4 * unsignedLongValue6);
          }

          while ((v79 + 1) != unsignedLongValue);
        }

        v37 = v74 + 1;
      }

      while ((v74 + 1) != unsignedLongValue2);
    }

    v13 = v71 + 1;
  }

  while (v71 != 4);
  array2 = [MEMORY[0x277CBEB18] array];
  nmsConfiguration = [(HMISignificantActivityFcosDetector *)self nmsConfiguration];
  [HMIObjectDetectionUtils nmsMultiClass:"nmsMultiClass:output:nmsConfiguration:" output:? nmsConfiguration:?];

  v48 = array2;
  v49 = [v48 countByEnumeratingWithState:? objects:? count:?];
  if (v49)
  {
    v50 = v49;
    v51 = MEMORY[0];
    do
    {
      for (j = 0; j != v50; j = (j + 1))
      {
        if (MEMORY[0] != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(8 * j);
        [v53 boundingBox];
        v86.origin.x = v54;
        v86.origin.y = v55;
        v86.size.width = v56;
        v86.size.height = v57;
        v84.origin.x = 0.0;
        v84.origin.y = 0.0;
        v84.size.width = 1.0;
        v84.size.height = 1.0;
        v85 = CGRectIntersection(v84, v86);
        if (!CGRectIsEmpty(v85))
        {
          v58 = [HMIObjectDetection alloc];
          [v53 labelIndex];
          [v53 confidence];
          v59 = [v53 yaw];
          roll = [v53 roll];
          v61 = [HMIObjectDetection initWithLabelIndex:v58 confidence:"initWithLabelIndex:confidence:boundingBox:yaw:roll:" boundingBox:? yaw:? roll:?];

          [predictionsCopy addObject:?];
        }
      }

      v50 = [v48 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v50);
  }
}

+ (id)defaultNMSConfiguration
{
  v2 = [HMINMSConfiguration alloc];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v4 = [HMINMSConfiguration initWithThresholdWithLabels:v2 metricWithLabels:"initWithThresholdWithLabels:metricWithLabels:thresholdDefault:metricDefault:" thresholdDefault:? metricDefault:?];

  return v4;
}

+ (id)defaultAssetPath
{
  v2 = MEMORY[0x277CCA8D8];
  objc_opt_class();
  v3 = [v2 bundleForClass:?];
  v4 = [v3 pathForResource:? ofType:?];

  return v4;
}

- (CGSize)inputDimensions
{
  objc_copyStruct(v4, &self->_inputDimensions, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end