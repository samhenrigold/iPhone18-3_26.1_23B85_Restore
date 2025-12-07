@interface HMIFaceQualityFilterSVM
+ (id)modelPathForResource:(id)resource;
- (BOOL)predict:(id)predict output:(double *)output error:(id *)error;
- (HMIFaceQualityFilterSVM)initWithModelPath:(id)path dataScalerPath:(id)scalerPath error:(id *)error;
@end

@implementation HMIFaceQualityFilterSVM

- (HMIFaceQualityFilterSVM)initWithModelPath:(id)path dataScalerPath:(id)scalerPath error:(id *)error
{
  pathCopy = path;
  scalerPathCopy = scalerPath;
  v24.receiver = self;
  v24.super_class = HMIFaceQualityFilterSVM;
  v10 = [(HMIFaceQualityFilterSVM *)&v24 init];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  v23 = 0;
  v12 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:? error:?];
  v13 = v23;
  mlModel = v10->_mlModel;
  v10->_mlModel = v12;

  if (v10->_mlModel)
  {
    v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];

    v22 = v13;
    v16 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:? error:?];
    v17 = v22;

    scalerModel = v10->_scalerModel;
    v10->_scalerModel = v16;

    if (v10->_scalerModel)
    {

LABEL_5:
      v19 = v10;
      goto LABEL_10;
    }

    v13 = v17;
    v11 = v15;
  }

  if (error)
  {
    v20 = v13;
    *error = v13;
  }

  HMIErrorLog(v10, v13);

  v19 = 0;
LABEL_10:

  return v19;
}

- (BOOL)predict:(id)predict output:(double *)output error:(id *)error
{
  predictCopy = predict;
  v9 = [predictCopy objectAtIndexedSubscript:?];
  [v9 doubleValue];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [predictCopy setObject:? atIndexedSubscript:?];

  v11 = [predictCopy objectAtIndexedSubscript:?];
  [v11 doubleValue];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [predictCopy setObject:? atIndexedSubscript:?];

  v13 = [HMIFaceQualityFilterModelInput alloc];
  v14 = +[HMIFaceQualityFilterSVM dataScalerInputName];
  v15 = [HMIFaceQualityFilterModelInput initWithInput:v13 inputName:"initWithInput:inputName:"];

  scalerModel = [(HMIFaceQualityFilterSVM *)self scalerModel];
  v17 = [scalerModel predictionFromFeatures:? error:?];
  v18 = 0;

  if (!v17 || v18)
  {
    v34 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? underlyingError:?];
    v35 = v34;
    if (error)
    {
      v36 = v34;
      *error = v35;
    }

    HMIErrorLog(self, v35);

    v37 = v18;
    v28 = 0;
    *error = v18;
  }

  else
  {
    outputCopy = output;
    v19 = +[HMIFaceQualityFilterSVM dataScalerOutputName];
    v20 = [v17 featureValueForName:?];

    v45 = v20;
    multiArrayValue = [v20 multiArrayValue];
    v22 = [HMIFaceQualityFilterModelInput alloc];
    v23 = +[HMIFaceQualityFilterSVM svmInputName];
    v44 = multiArrayValue;
    v24 = [HMIFaceQualityFilterModelInput initWithInput:v22 inputName:"initWithInput:inputName:"];

    mlModel = [(HMIFaceQualityFilterSVM *)self mlModel];
    v26 = [mlModel predictionFromFeatures:? error:?];
    v18 = 0;

    if (v26)
    {
      v27 = v18 == 0;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    if (v27)
    {
      v29 = +[HMIFaceQualityFilterSVM svmOutputName];
      v30 = [v26 featureValueForName:?];
      dictionaryValue = [v30 dictionaryValue];

      v32 = [dictionaryValue objectForKeyedSubscript:?];
      [v32 doubleValue];
      *outputCopy = v33;
    }

    else
    {
      v38 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? underlyingError:?];
      v39 = v38;
      if (error)
      {
        v40 = v38;
        *error = v39;
      }

      HMIErrorLog(self, v39);

      v41 = v18;
      *error = v18;
    }
  }

  return v28;
}

+ (id)modelPathForResource:(id)resource
{
  v3 = MEMORY[0x277CCA8D8];
  resourceCopy = resource;
  objc_opt_class();
  v5 = [v3 bundleForClass:?];
  v6 = [v5 pathForResource:? ofType:?];

  return v6;
}

@end