@interface BWNoiseReductionAndSharpeningParameters
- (BWNoiseReductionAndSharpeningParameters)initWithPortType:(id)type sensorIDDictionary:(id)dictionary;
- (id)description;
- (id)noiseReductionAndSharpeningConfigurationForType:(int)type gain:(float)gain qSub:(BOOL)sub;
- (void)_noiseReductionAndSharpeningParametersForType:(int)type qSub:;
- (void)dealloc;
@end

@implementation BWNoiseReductionAndSharpeningParameters

- (BWNoiseReductionAndSharpeningParameters)initWithPortType:(id)type sensorIDDictionary:(id)dictionary
{
  if (type && dictionary && (v6 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"NoiseReductionAndSharpeningParameters", "objectForKeyedSubscript:", @"StillImage"}]) != 0)
  {
    v7 = v6;
    v10.receiver = self;
    v10.super_class = BWNoiseReductionAndSharpeningParameters;
    v8 = [(BWNoiseReductionAndSharpeningParameters *)&v10 init];
    if (v8)
    {
      v8->_portType = type;
      v8->_noiseReductionAndSharpeningConfiguration = v7;
    }
  }

  else
  {

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNoiseReductionAndSharpeningParameters;
  [(BWNoiseReductionAndSharpeningParameters *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> %@: %@", v4, self, BWPortTypeToDisplayString(self->_portType, v5), self->_noiseReductionAndSharpeningConfiguration];
}

- (id)noiseReductionAndSharpeningConfigurationForType:(int)type gain:(float)gain qSub:(BOOL)sub
{
  v6 = [(BWNoiseReductionAndSharpeningParameters *)self _noiseReductionAndSharpeningParametersForType:type qSub:sub];
  if (!v6)
  {
    [BWNoiseReductionAndSharpeningParameters noiseReductionAndSharpeningConfigurationForType:gain:qSub:];
    return 0;
  }

  v7 = v6;
  v8 = [v6 objectForKeyedSubscript:@"ISPMultiBandNoiseReductionParameters"];
  v9 = [objc_msgSend(v8 objectForKeyedSubscript:{@"MultiBandEnabled", "BOOLValue"}];
  v10 = *off_1E798B7E8;
  if (v9)
  {
    v42[0] = MEMORY[0x1E695E118];
    v11 = *off_1E798B7F8;
    v41[0] = v10;
    v41[1] = v11;
    v42[1] = [v8 objectForKeyedSubscript:@"MultiBandEnabled"];
    v41[2] = *off_1E798B7D8;
    v42[2] = [v8 objectForKeyedSubscript:@"ChromaProcessingEnabled"];
    v41[3] = *off_1E798B7F0;
    v42[3] = nrasp_interpolateArrayOfValuesForGain([v8 objectForKeyedSubscript:@"LumaProcessingStrength"], gain);
    v41[4] = *off_1E798B7E0;
    v42[4] = nrasp_interpolateArrayOfValuesForGain([v8 objectForKeyedSubscript:@"ChromaProcessingStrength"], gain);
    v12 = MEMORY[0x1E695DF20];
    v13 = v42;
    v14 = v41;
    v15 = 5;
  }

  else
  {
    v16 = *off_1E798B7F8;
    v39[0] = *off_1E798B7E8;
    v39[1] = v16;
    v40[0] = MEMORY[0x1E695E118];
    v40[1] = MEMORY[0x1E695E110];
    v39[2] = *off_1E798B7F0;
    v40[2] = nrasp_interpolateArrayOfValuesForGain([v8 objectForKeyedSubscript:@"LumaProcessingStrength"], gain);
    v12 = MEMORY[0x1E695DF20];
    v13 = v40;
    v14 = v39;
    v15 = 3;
  }

  v17 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];
  if (!v17)
  {
    [BWNoiseReductionAndSharpeningParameters noiseReductionAndSharpeningConfigurationForType:gain:qSub:];
    return 0;
  }

  if ([v7 objectForKeyedSubscript:@"LocalContrastEnhancementStrength"])
  {
    v37[0] = *off_1E798B810;
    v18 = [v7 objectForKeyedSubscript:@"RawNoiseFilterStrength"];
    v38[0] = nrasp_interpolateValueForGain(v18, v19, gain);
    v37[1] = *off_1E798B818;
    v20 = [v7 objectForKeyedSubscript:@"SharpeningControl"];
    v38[1] = nrasp_interpolateValueForGain(v20, v21, gain);
    v37[2] = *off_1E798B800;
    v22 = [v7 objectForKeyedSubscript:@"LocalContrastEnhancementStrength"];
    v24 = nrasp_interpolateValueForGain(v22, v23, gain);
    v37[3] = *off_1E798B808;
    v38[2] = v24;
    v38[3] = v17;
    v25 = MEMORY[0x1E695DF20];
    v26 = v38;
    v27 = v37;
    v28 = 4;
  }

  else
  {
    v29 = [v7 objectForKeyedSubscript:{@"RawNoiseFilterStrength", *off_1E798B810}];
    v36[0] = nrasp_interpolateValueForGain(v29, v30, gain);
    v35[1] = *off_1E798B818;
    v31 = [v7 objectForKeyedSubscript:@"SharpeningControl"];
    v33 = nrasp_interpolateValueForGain(v31, v32, gain);
    v35[2] = *off_1E798B808;
    v36[1] = v33;
    v36[2] = v17;
    v25 = MEMORY[0x1E695DF20];
    v26 = v36;
    v27 = v35;
    v28 = 3;
  }

  return [v25 dictionaryWithObjects:v26 forKeys:v27 count:v28];
}

- (void)_noiseReductionAndSharpeningParametersForType:(int)type qSub:
{
  if (result)
  {
    v3 = result;
    switch(a2)
    {
      case 0:
        v4 = result[2];
        v5 = @"SingleImageSingleBand";
        goto LABEL_25;
      case 1:
        v4 = result[2];
        if (!type)
        {
          goto LABEL_29;
        }

        result = [v4 objectForKeyedSubscript:@"SingleImageMultiBandQSub"];
        if (result)
        {
          return result;
        }

        v4 = v3[2];
LABEL_29:
        v5 = @"SingleImageMultiBand";
LABEL_25:

        result = [v4 objectForKeyedSubscript:v5];
        break;
      case 2:
        v4 = result[2];
        v5 = @"HDRParameters";
        goto LABEL_25;
      case 3:
        v4 = result[2];
        v5 = @"OISParameters";
        goto LABEL_25;
      case 4:
        v4 = result[2];
        v5 = @"SISParameters";
        goto LABEL_25;
      case 10:
        v4 = result[2];
        v5 = @"EVZeroOnlyUBParameters";
        goto LABEL_25;
      case 11:
        v8 = result[2];
        v9 = @"UBParameters";
        goto LABEL_24;
      case 12:
        v10 = result[2];
        v11 = @"UBParameters";
        goto LABEL_21;
      case 13:
        v6 = result[2];
        v7 = @"UBParameters";
        goto LABEL_14;
      case 14:
        v8 = result[2];
        v9 = @"ToneMappedUBParameters";
        goto LABEL_24;
      case 15:
        v10 = result[2];
        v11 = @"ToneMappedUBParameters";
        goto LABEL_21;
      case 16:
        v6 = result[2];
        v7 = @"ToneMappedUBParameters";
        goto LABEL_14;
      case 17:
        v4 = result[2];
        v5 = @"LowLightUBParameters";
        goto LABEL_25;
      case 20:
        v8 = result[2];
        v9 = @"DeepFusionParameters";
LABEL_24:
        v4 = [v8 objectForKeyedSubscript:v9];
        v5 = @"EVZero";
        goto LABEL_25;
      case 21:
        v10 = result[2];
        v11 = @"DeepFusionParameters";
LABEL_21:
        v4 = [v10 objectForKeyedSubscript:v11];
        v5 = @"EVMinus";
        goto LABEL_25;
      case 22:
        v6 = result[2];
        v7 = @"DeepFusionParameters";
LABEL_14:
        v4 = [v6 objectForKeyedSubscript:v7];
        v5 = @"Long";
        goto LABEL_25;
      case 30:
        v4 = result[2];
        v5 = @"LearnedNRParameters";
        goto LABEL_25;
      default:
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unknown noise reduction and sharpening type" userInfo:0]);
    }
  }

  return result;
}

@end