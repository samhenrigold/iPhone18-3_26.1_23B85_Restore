@interface SDLipMovementVAD
- (LipMovementVADDelegate)delegate;
- (SDLipMovementVAD)initWithModelFile:(id)file;
- (void)addFaceTrackingData:(id)data atMachAbsTime:(unint64_t)time;
- (void)runModel;
- (void)setupBlendshapeIndexArray;
@end

@implementation SDLipMovementVAD

- (LipMovementVADDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)runModel
{
  v80[3] = *MEMORY[0x277D85DE8];
  v71 = 0;
  v68 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_287BD29B0 dataType:65568 error:&v71];
  v63 = v71;
  v3 = [&unk_287BD29C8 objectAtIndexedSubscript:1];
  intValue = [v3 intValue];

  if (intValue >= 1)
  {
    v5 = 0;
    v6 = &unk_287BD29E0;
    v7 = 0x2803FC000uLL;
    v8 = &unk_287BD2968;
    v9 = 0x277CCA000uLL;
    v10 = 0x277CBE000uLL;
    selfCopy = self;
    do
    {
      v11 = [v6 objectAtIndexedSubscript:2];
      intValue2 = [v11 intValue];

      if (intValue2 >= 1)
      {
        v13 = 0;
        do
        {
          blendshapeLocationToIndexMap = self->_blendshapeLocationToIndexMap;
          v15 = [*(v7 + 1240) objectAtIndexedSubscript:v13];
          v16 = [(NSMutableDictionary *)blendshapeLocationToIndexMap objectForKeyedSubscript:v15];

          v17 = [(NSMutableArray *)self->_lipMovementDataArray objectAtIndex:v5];
          [v17 blendshapes];
          v19 = v18 = v6;
          v20 = [v19 objectAtIndex:{objc_msgSend(v16, "intValue")}];

          v80[0] = v8;
          v21 = [*(v9 + 2992) numberWithInt:v5];
          v80[1] = v21;
          v22 = [*(v9 + 2992) numberWithInt:v13];
          v80[2] = v22;
          [*(v10 + 2656) arrayWithObjects:v80 count:3];
          v23 = v9;
          v24 = v5;
          v26 = v25 = v8;

          v6 = v18;
          self = selfCopy;
          v7 = 0x2803FC000;
          [v68 setObject:v20 forKeyedSubscript:v26];

          ++v13;
          v27 = [v6 objectAtIndexedSubscript:2];
          LODWORD(v16) = [v27 intValue];

          v8 = v25;
          v5 = v24;
          v9 = v23;
          v10 = 0x277CBE000;
        }

        while (v13 < v16);
      }

      ++v5;
      v28 = [&unk_287BD29C8 objectAtIndexedSubscript:1];
      intValue3 = [v28 intValue];
    }

    while (v5 < intValue3);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:v68 forKey:@"input_1"];
  v70 = 0;
  v31 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:dictionary error:&v70];
  v65 = v70;
  v66 = v31;
  lipMovementVADModel = self->_lipMovementVADModel;
  options = self->_options;
  v69 = v63;
  v34 = [(MLModel *)lipMovementVADModel predictionFromFeatures:v31 options:options error:&v69];
  v35 = v69;

  if (v35)
  {
    v36 = SDLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(SDLogContextFacilityLocalSRBridge, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v73 = "[SDLipMovementVAD runModel]";
      v74 = 2114;
      v75 = *&v35;
      _os_log_error_impl(&dword_26B2CF000, v36, OS_LOG_TYPE_ERROR, "%s Error when running inference for LipMovementVAD: %{public}@", buf, 0x16u);
    }
  }

  v64 = v35;
  v62 = [v34 featureValueForName:@"Identity_1"];
  multiArrayValue = [v62 multiArrayValue];
  v38 = [multiArrayValue objectForKeyedSubscript:&unk_287BD29F8];
  [v38 floatValue];
  v40 = v39;

  v41 = v40;
  self->_visualSpeechProbability = v40;
  v42 = [v34 featureValueForName:@"Identity"];
  multiArrayValue2 = [v42 multiArrayValue];
  v44 = [multiArrayValue2 objectForKeyedSubscript:&unk_287BD2A10];
  [v44 floatValue];
  v46 = v45;

  v47 = [multiArrayValue2 objectForKeyedSubscript:&unk_287BD2A28];
  [v47 floatValue];
  v49 = v48;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v51 = WeakRetained;
    v52 = dictionary;
    v53 = objc_loadWeakRetained(&self->_delegate);
    v54 = objc_opt_respondsToSelector();

    dictionary = v52;
    if (v54)
    {
      firstObject = [(NSMutableArray *)self->_lipMovementDataArray firstObject];
      absMachTime = [firstObject absMachTime];

      lastObject = [(NSMutableArray *)self->_lipMovementDataArray lastObject];
      absMachTime2 = [lastObject absMachTime];

      v59 = objc_loadWeakRetained(&self->_delegate);
      v60 = absMachTime2;
      dictionary = v52;
      [v59 didUpdateVisualSpeechProbability:absMachTime from:v60 to:self->_visualSpeechProbability];
    }
  }

  v61 = SDLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(SDLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v73 = "[SDLipMovementVAD runModel]";
    v74 = 2048;
    v75 = v41;
    v76 = 2048;
    v77 = v49;
    v78 = 2048;
    v79 = v46;
    _os_log_impl(&dword_26B2CF000, v61, OS_LOG_TYPE_DEFAULT, "%s LipMovementVAD ran prediction, output is: %f. Probability of speech: %f, Probability of no speech: %f", buf, 0x2Au);
  }
}

- (void)addFaceTrackingData:(id)data atMachAbsTime:(unint64_t)time
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CECEC0]];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CECDA0]];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CECDA8]];

  if (v10 && [v10 length] == 204)
  {
    bytes = [v10 bytes];
    for (i = 0; i != 204; i += 4)
    {
      LODWORD(v12) = *(bytes + i);
      v14 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
      [v7 addObject:v14];
    }
  }

  else
  {
    if (dataCopy)
    {
      v15 = SDLogContextFacilityLocalSRBridge;
      if (os_log_type_enabled(SDLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315394;
        v24 = "[SDLipMovementVAD addFaceTrackingData:atMachAbsTime:]";
        v25 = 2114;
        v26 = v10;
        _os_log_impl(&dword_26B2CF000, v15, OS_LOG_TYPE_DEFAULT, "%s Received nonnul metadata object from AppleCVA, but nil blendshapes or unexpected amount of blendshapes. Blendshape object: %{public}@", &v23, 0x16u);
      }
    }

    if ([(NSMutableArray *)self->_lipMovementDataArray count])
    {
      for (j = 0; j != 51; ++j)
      {
        lastObject = [(NSMutableArray *)self->_lipMovementDataArray lastObject];
        blendshapes = [lastObject blendshapes];
        v19 = [blendshapes objectAtIndex:j];

        [v7 addObject:v19];
      }
    }

    else
    {
      v20 = 51;
      do
      {
        [v7 addObject:&unk_287BD2968];
        --v20;
      }

      while (v20);
    }
  }

  lipMovementDataArray = self->_lipMovementDataArray;
  v22 = [[LipMovementData alloc] initWithBlendshape:v7 andTime:time];
  [(NSMutableArray *)lipMovementDataArray addObject:v22];

  --self->_framesToNextPrediction;
  if ([(NSMutableArray *)self->_lipMovementDataArray count]== 16)
  {
    [(NSMutableArray *)self->_lipMovementDataArray removeObjectAtIndex:0];
  }

  if ([(NSMutableArray *)self->_lipMovementDataArray count]== 15 && !self->_framesToNextPrediction)
  {
    self->_framesToNextPrediction = 6;
    [(SDLipMovementVAD *)self runModel];
  }
}

- (void)setupBlendshapeIndexArray
{
  v6[5] = 0;
  CVAFaceTrackingCopySemantics();
  v3 = [0 objectForKeyedSubscript:*MEMORY[0x277CECDB0]];
  v4 = objc_opt_new();
  blendshapeLocationToIndexMap = self->_blendshapeLocationToIndexMap;
  self->_blendshapeLocationToIndexMap = v4;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SDLipMovementVAD_setupBlendshapeIndexArray__block_invoke;
  v6[3] = &unk_279CD9090;
  v6[4] = self;
  [v3 enumerateObjectsUsingBlock:v6];
}

void __45__SDLipMovementVAD_setupBlendshapeIndexArray__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [*(*(a1 + 32) + 48) setObject:v7 forKeyedSubscript:v6];
}

- (SDLipMovementVAD)initWithModelFile:(id)file
{
  v31 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v24.receiver = self;
  v24.super_class = SDLipMovementVAD;
  v6 = [(SDLipMovementVAD *)&v24 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  if (!fileCopy)
  {
    v18 = SDLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(SDLogContextFacilityLocalSRBridge, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[SDLipMovementVAD initWithModelFile:]";
      _os_log_error_impl(&dword_26B2CF000, v18, OS_LOG_TYPE_ERROR, "%s No path found for lip movement model.", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v6->_framesToNextPrediction = 15;
  v6->_visualSpeechProbability = 0.0;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  lipMovementDataArray = v7->_lipMovementDataArray;
  v7->_lipMovementDataArray = v8;

  objc_storeStrong(&v7->_configFile, file);
  [(SDLipMovementVAD *)v7 setupBlendshapeIndexArray];
  v10 = objc_alloc_init(MEMORY[0x277CBFF38]);
  [v10 setComputeUnits:0];
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7->_configFile];
  v12 = objc_alloc_init(MEMORY[0x277CBFF68]);
  options = v7->_options;
  v7->_options = v12;

  v23 = 0;
  v14 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v11 configuration:v10 error:&v23];
  v15 = v23;
  lipMovementVADModel = v7->_lipMovementVADModel;
  v7->_lipMovementVADModel = v14;

  if (!v7->_lipMovementVADModel || v15)
  {
    v19 = SDLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(SDLogContextFacilityLocalSRBridge, OS_LOG_TYPE_ERROR))
    {
      v21 = v19;
      localizedDescription = [v15 localizedDescription];
      *buf = 136315650;
      v26 = "[SDLipMovementVAD initWithModelFile:]";
      v27 = 2114;
      v28 = v11;
      v29 = 2114;
      v30 = localizedDescription;
      _os_log_error_impl(&dword_26B2CF000, v21, OS_LOG_TYPE_ERROR, "%s Failed to load LipMovementVAD model from %{public}@ with error: %{public}@", buf, 0x20u);
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

LABEL_6:
  v17 = v7;
LABEL_13:

  return v17;
}

@end