@interface SLUresMitigator
- (SLUresMitigator)initWithConfig:(id)config bnnsIrPath:(id)path error:(id *)error;
- (id)_processInputFeats:(id)feats;
- (void)_createInputOriginThresholdMap:(id)map;
- (void)dealloc;
- (void)processInputFeats:(id)feats completion:(id)completion;
@end

@implementation SLUresMitigator

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[SLUresMitigator dealloc]";
    _os_log_impl(&dword_26754E000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = SLUresMitigator;
  [(SLUresMitigator *)&v4 dealloc];
}

- (id)_processInputFeats:(id)feats
{
  v90 = *MEMORY[0x277D85DE8];
  featsCopy = feats;
  speechPackage = [featsCopy speechPackage];

  if (speechPackage)
  {
    speechPackage2 = [featsCopy speechPackage];
    v7 = [SLASRFeatureExtractor extractASRFaturesFrom:speechPackage2];
  }

  else
  {
    v7 = 0;
  }

  inputOrigin = [featsCopy inputOrigin];

  if (inputOrigin)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    inputOpsMap = self->_inputOpsMap;
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __38__SLUresMitigator__processInputFeats___block_invoke;
    v76[3] = &unk_279C0EBC0;
    v11 = v7;
    v77 = v11;
    v12 = featsCopy;
    v78 = v12;
    v51 = dictionary;
    v79 = v51;
    [(NSDictionary *)inputOpsMap enumerateKeysAndObjectsUsingBlock:v76];
    uresModel = self->_uresModel;
    v75 = 0;
    v14 = [(CSFModelComputeBackend *)uresModel predictOutputWithInputs:v51 errOut:&v75];
    v15 = v75;
    v50 = v15;
    if (!v14 || v15)
    {
      v43 = MEMORY[0x277CCACA8];
      localizedDescription = [v15 localizedDescription];
      v45 = [v43 stringWithFormat:@"Failed to get output with error %@", localizedDescription];

      v46 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *v88 = 136315394;
        *&v88[4] = "[SLUresMitigator _processInputFeats:]";
        *&v88[12] = 2114;
        *&v88[14] = v45;
        _os_log_error_impl(&dword_26754E000, v46, OS_LOG_TYPE_ERROR, "%s %{public}@", v88, 0x16u);
      }

      v41 = 0;
    }

    else
    {
      *v88 = 0;
      *&v88[8] = v88;
      *&v88[16] = 0x2020000000;
      v89 = 0;
      v71 = 0;
      v72 = &v71;
      v73 = 0x2020000000;
      v74 = 0;
      v67 = 0;
      v68 = &v67;
      v69 = 0x2020000000;
      v70 = -1082130432;
      v63 = 0;
      v64 = &v63;
      v65 = 0x2020000000;
      v66 = -1082130432;
      v59 = 0;
      v60 = &v59;
      v61 = 0x2020000000;
      v62 = 0;
      outputMap = self->_outputMap;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __38__SLUresMitigator__processInputFeats___block_invoke_359;
      v52[3] = &unk_279C0EBE8;
      v53 = v14;
      v54 = v88;
      v55 = &v59;
      v56 = &v71;
      v57 = &v67;
      v58 = &v63;
      [(NSDictionary *)outputMap enumerateKeysAndObjectsUsingBlock:v52];
      thresholdMap = self->_thresholdMap;
      inputOrigin2 = [v12 inputOrigin];
      v49 = [(NSMutableDictionary *)thresholdMap objectForKeyedSubscript:inputOrigin2];

      if (v49)
      {
        [v49 floatValue];
        v20 = v19;
        v68[6] = v19;
        *(v72 + 24) = *(*&v88[8] + 24) < v19;
        v21 = SLLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v85 = "[SLUresMitigator _processInputFeats:]";
          v86 = 2048;
          v87 = v20;
          _os_log_impl(&dword_26754E000, v21, OS_LOG_TYPE_DEFAULT, "%s Using software configured threshold: %.3f", buf, 0x16u);
        }
      }

      if (*(v72 + 24))
      {
        v22 = @"requestMitigated";
      }

      else
      {
        v22 = @"requestNotMitigated";
      }

      v48 = v22;
      v82[0] = @"score";
      LODWORD(v23) = *(*&v88[8] + 24);
      v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
      v83[0] = v24;
      v83[1] = v48;
      v82[1] = @"decision";
      v82[2] = @"decisionValue";
      v25 = [MEMORY[0x277CCABB0] numberWithDouble:v60[3]];
      v83[2] = v25;
      v82[3] = @"threshold";
      *&v26 = v68[6];
      v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
      v83[3] = v27;
      v82[4] = @"speakerIDthreshold";
      LODWORD(v28) = *(v64 + 6);
      v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
      v82[5] = @"assetVersion";
      version = self->_version;
      v83[4] = v29;
      v83[5] = version;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:6];

      v80[0] = @"numAsrRecords";
      v32 = MEMORY[0x277CCABB0];
      latticePathMaxScores = [v11 latticePathMaxScores];
      v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(latticePathMaxScores, "count")}];
      v81[0] = v34;
      v80[1] = @"numTokensTopPath";
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "topLatticePathTokenCount")}];
      v81[1] = v35;
      v80[2] = @"trailingSilenceDuration";
      v36 = MEMORY[0x277CCABB0];
      [v11 trailingSilence];
      v37 = [v36 numberWithFloat:?];
      v81[2] = v37;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:3];

      v39 = [SLUresMitigatorResult alloc];
      LODWORD(v40) = *(*&v88[8] + 24);
      v41 = [(SLUresMitigatorResult *)v39 initWithScore:*(v72 + 24) decision:v31 decisionLevel:v38 detailedResults:v40 extractedFeats:v60[3]];

      _Block_object_dispose(&v59, 8);
      _Block_object_dispose(&v63, 8);
      _Block_object_dispose(&v67, 8);
      _Block_object_dispose(&v71, 8);
      _Block_object_dispose(v88, 8);
    }
  }

  else
  {
    v42 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *v88 = 136315394;
      *&v88[4] = "[SLUresMitigator _processInputFeats:]";
      *&v88[12] = 2114;
      *&v88[14] = @"Missing input origin";
      _os_log_error_impl(&dword_26754E000, v42, OS_LOG_TYPE_ERROR, "%s %{public}@", v88, 0x16u);
    }

    v41 = 0;
  }

  return v41;
}

void __38__SLUresMitigator__processInputFeats___block_invoke(id *a1, void *a2, void *a3)
{
  v68[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"numAsrRecords"])
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [a1[4] latticePathMaxScores];
    v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    v68[0] = v9;
    v10 = MEMORY[0x277CBEA60];
    v11 = v68;
LABEL_3:
    v12 = [v10 arrayWithObjects:v11 count:1];

LABEL_4:
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"topPathScores"])
  {
    v13 = [a1[4] topLatticePathScores];
  }

  else if ([v5 isEqualToString:@"latticeMaxScores"])
  {
    v13 = [a1[4] latticePathMaxScores];
  }

  else if ([v5 isEqualToString:@"latticeMinScores"])
  {
    v13 = [a1[4] latticePathMinScores];
  }

  else if ([v5 isEqualToString:@"latticeMeanScores"])
  {
    v13 = [a1[4] latticePathMeanScores];
  }

  else
  {
    if (![v5 isEqualToString:@"latticeVarScores"])
    {
      if ([v5 isEqualToString:@"topPathNumTokens"])
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1[4], "topLatticePathTokenCount")}];
        v67 = v8;
        v26 = MEMORY[0x277CBEA60];
        v27 = &v67;
      }

      else
      {
        if ([v5 isEqualToString:@"acousticFTMScore"])
        {
          v28 = MEMORY[0x277CCABB0];
          v8 = [a1[5] acousticFTMScores];
          [v8 floatValue];
          v9 = [v28 numberWithFloat:?];
          v66 = v9;
          v10 = MEMORY[0x277CBEA60];
          v11 = &v66;
          goto LABEL_3;
        }

        if ([v5 isEqualToString:@"lrnnScores"])
        {
          v8 = [a1[5] lrnnScore];
          v65 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v65;
        }

        else if ([v5 isEqualToString:@"lrnnThreshold"])
        {
          v8 = [a1[5] lrnnThreshold];
          v64 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v64;
        }

        else if ([v5 isEqualToString:@"snr"])
        {
          v29 = MEMORY[0x277CCABB0];
          [a1[4] snr];
          v8 = [v29 numberWithFloat:?];
          v63 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v63;
        }

        else if ([v5 isEqualToString:@"trailingSilence"])
        {
          v30 = MEMORY[0x277CCABB0];
          [a1[4] trailingSilence];
          v8 = [v30 numberWithFloat:?];
          v62 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v62;
        }

        else if ([v5 isEqualToString:@"inputOrigin"])
        {
          v8 = [a1[5] inputOrigin];
          v61 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v61;
        }

        else if ([v5 isEqualToString:@"timeFromPrevQuery"])
        {
          v31 = MEMORY[0x277CCABB0];
          [a1[5] timeSinceLastQuery];
          v8 = [v31 numberWithDouble:?];
          v60 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v60;
        }

        else if ([v5 isEqualToString:@"speakerIdScore"])
        {
          v8 = [a1[5] speakerIDScore];
          v59 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v59;
        }

        else if ([v5 isEqualToString:@"airpodsConnectedState"])
        {
          v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "isAirpodsConnected")}];
          v58 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v58;
        }

        else if ([v5 isEqualToString:@"boronActivityScore"])
        {
          v8 = [a1[5] boronScore];
          v57 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v57;
        }

        else if ([v5 isEqualToString:@"acousticSpeechActivityScore"])
        {
          v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "didDetectSpeechActivity")}];
          v56 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v56;
        }

        else if ([v5 isEqualToString:@"attSiriPrevOutputState"])
        {
          v8 = [a1[5] prevStageOutput];
          v55 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v55;
        }

        else if ([v5 isEqualToString:@"multiModalDecisionStage"])
        {
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1[5], "decisionStage")}];
          v54 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v54;
        }

        else if ([v5 isEqualToString:@"eosLikelihood"])
        {
          v8 = [a1[5] eosLikelihood];
          v53 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v53;
        }

        else if ([v5 isEqualToString:@"visualGazeScore"])
        {
          v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "didDetectGazeAtOrb")}];
          v52 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v52;
        }

        else if ([v5 isEqualToString:@"visualAttentionScore"])
        {
          v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "didDetectAttention")}];
          v51 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v51;
        }

        else if ([v5 isEqualToString:@"visualSpeechActivityScore"])
        {
          v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "didDetectVisualActivity")}];
          v50 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v50;
        }

        else if ([v5 isEqualToString:@"nldaScore"])
        {
          v8 = [a1[5] nldaScore];
          v49 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v49;
        }

        else if ([v5 isEqualToString:@"confidenceScoreASR"])
        {
          v8 = [a1[5] confidenceScore];
          v48 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v48;
        }

        else if ([v5 isEqualToString:@"checkerScore"])
        {
          v8 = [a1[5] checkerScore];
          v47 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v47;
        }

        else if ([v5 isEqualToString:@"phsScore"])
        {
          v8 = [a1[5] phsScore];
          v46 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v46;
        }

        else if ([v5 isEqualToString:@"embeddingScore"])
        {
          v8 = [a1[5] embeddingScore];
          v45 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v45;
        }

        else if ([v5 isEqualToString:@"externalLrnnScale"])
        {
          v8 = [a1[5] externalLrnnScale];
          v44 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v44;
        }

        else if ([v5 isEqualToString:@"externalLrnnOffset"])
        {
          v8 = [a1[5] externalLrnnOffset];
          v43 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v43;
        }

        else if ([v5 isEqualToString:@"conversationalNldaScore"])
        {
          v8 = [a1[5] conversationalNldaScore];
          v42 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v42;
        }

        else
        {
          if (![v5 isEqualToString:@"conversational"])
          {
            v40 = &unk_2878A77B8;
            v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
            goto LABEL_15;
          }

          v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "isConversational")}];
          v41 = v8;
          v26 = MEMORY[0x277CBEA60];
          v27 = &v41;
        }
      }

      v12 = [v26 arrayWithObjects:v27 count:1];
      goto LABEL_4;
    }

    v13 = [a1[4] latticePathVarScores];
  }

LABEL_15:
  v12 = v13;
LABEL_16:
  v14 = [v6 valueForKey:@"name"];
  v15 = [v6 valueForKey:@"shape"];

  v16 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v12 firstObject];
    *buf = 136315650;
    v35 = "[SLUresMitigator _processInputFeats:]_block_invoke";
    v36 = 2114;
    v37 = v14;
    v38 = 2114;
    v39 = v18;
    _os_log_impl(&dword_26754E000, v17, OS_LOG_TYPE_DEFAULT, "%s AttFeature: %{public}@ --> %{public}@", buf, 0x20u);
  }

  if (v12)
  {
    v19 = [MEMORY[0x277D01790] propertyWithShape:v15 dataType:1];
    v20 = objc_alloc(MEMORY[0x277D01750]);
    v33 = v12;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    v32 = 0;
    v22 = [v20 initWithInputArray:v21 name:v14 properties:v19 errOut:&v32];
    v23 = v32;

    if (!v22 || v23)
    {
      v25 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v35 = "[SLUresMitigator _processInputFeats:]_block_invoke";
        v36 = 2112;
        v37 = v23;
        v38 = 2114;
        v39 = v14;
        _os_log_error_impl(&dword_26754E000, v25, OS_LOG_TYPE_ERROR, "%s Failed to convert array to MLMultiArray with error: %@, not using feature %{public}@ for inference", buf, 0x20u);
      }
    }

    else
    {
      [a1[6] setObject:v22 forKey:v14];
    }
  }

  else
  {
    v24 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[SLUresMitigator _processInputFeats:]_block_invoke";
      v36 = 2114;
      v37 = v14;
      _os_log_error_impl(&dword_26754E000, v24, OS_LOG_TYPE_ERROR, "%s Value for feature: %{public}@ isn't set, abort model run", buf, 0x16u);
    }
  }
}

void __38__SLUresMitigator__processInputFeats___block_invoke_359(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 valueForKey:@"name"];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v8 = [v7 convertDataToArray];

  v9 = [MEMORY[0x277D01770] getRankOfTensor:v8];
  if (v9 > 0)
  {
    v10 = [v8 firstObject];
    v11 = v10;
    if (v9 == 2)
    {
      v12 = [v10 firstObject];

      v11 = v12;
    }

    if ([v5 isEqualToString:@"mitigatorScore"])
    {
      [v11 floatValue];
      v14 = *(a1 + 40);
    }

    else
    {
      if ([v5 isEqualToString:@"mitigatorDecision"])
      {
        [v11 doubleValue];
        *(*(*(a1 + 48) + 8) + 24) = v16;
        if (*(*(*(a1 + 48) + 8) + 24) < 2.22044605e-16)
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }

        goto LABEL_7;
      }

      if ([v5 isEqualToString:@"mitigatorThreshold"])
      {
        [v11 floatValue];
        v14 = *(a1 + 64);
      }

      else
      {
        if (![v5 isEqualToString:@"speakerIDThreshold"])
        {
          goto LABEL_7;
        }

        [v11 floatValue];
        v14 = *(a1 + 72);
      }
    }

    *(*(v14 + 8) + 24) = v13;
LABEL_7:

    goto LABEL_10;
  }

  v15 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[SLUresMitigator _processInputFeats:]_block_invoke";
    v19 = 2048;
    v20 = v9;
    _os_log_impl(&dword_26754E000, v15, OS_LOG_TYPE_DEFAULT, "%s Invalid output shape: %lu", &v17, 0x16u);
  }

LABEL_10:
}

- (void)_createInputOriginThresholdMap:(id)map
{
  v14 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  thresholdMap = self->_thresholdMap;
  self->_thresholdMap = dictionary;

  if (mapCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__SLUresMitigator__createInputOriginThresholdMap___block_invoke;
    v9[3] = &unk_279C0EB98;
    v9[4] = self;
    [mapCopy enumerateKeysAndObjectsUsingBlock:v9];
    v7 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_thresholdMap;
      *buf = 136315394;
      v11 = "[SLUresMitigator _createInputOriginThresholdMap:]";
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_26754E000, v7, OS_LOG_TYPE_DEFAULT, "%s Threshold map: %{public}@", buf, 0x16u);
    }
  }
}

void __50__SLUresMitigator__createInputOriginThresholdMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"threshold"];
  v8 = [v6 objectForKeyedSubscript:@"modelIndex"];

  if (v8 && v7)
  {
    [*(*(a1 + 32) + 32) setObject:v7 forKey:v8];
  }

  else
  {
    v9 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[SLUresMitigator _createInputOriginThresholdMap:]_block_invoke";
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_26754E000, v9, OS_LOG_TYPE_ERROR, "%s Invalid config for %{public}@", &v10, 0x16u);
    }
  }
}

- (void)processInputFeats:(id)feats completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  featsCopy = feats;
  v10 = os_signpost_id_generate(v8);
  v11 = *v7;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26754E000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "UresMitigator_ProcessFeats", &unk_2675B2B36, buf, 2u);
  }

  v13 = [(SLUresMitigator *)self _processInputFeats:featsCopy];

  v14 = *v7;
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_26754E000, v15, OS_SIGNPOST_INTERVAL_END, v10, "UresMitigator_ProcessFeats", &unk_2675B2B36, v16, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v13);
  }
}

- (SLUresMitigator)initWithConfig:(id)config bnnsIrPath:(id)path error:(id *)error
{
  v57 = *MEMORY[0x277D85DE8];
  configCopy = config;
  pathCopy = path;
  v50.receiver = self;
  v50.super_class = SLUresMitigator;
  v10 = [(SLUresMitigator *)&v50 init];
  if (!v10)
  {
LABEL_25:
    v20 = v10;
    goto LABEL_26;
  }

  if (SLLogInitIfNeeded_once != -1)
  {
    dispatch_once(&SLLogInitIfNeeded_once, &__block_literal_global);
  }

  v11 = MEMORY[0x277CEF0E8];
  v12 = os_signpost_id_generate(*MEMORY[0x277CEF0E8]);
  v13 = *v11;
  v14 = v13;
  v15 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26754E000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "UresMitigator_Create", &unk_2675B2B36, buf, 2u);
  }

  v49 = 0;
  v16 = [[SLUresMitigatorConfigDecoder alloc] initWithConfigFile:configCopy errOut:&v49];
  v17 = v49;
  if (v17)
  {
    v18 = v17;
    v19 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v54 = "[SLUresMitigator initWithConfig:bnnsIrPath:error:]";
      v55 = 2112;
      v56 = v18;
      _os_log_error_impl(&dword_26754E000, v19, OS_LOG_TYPE_ERROR, "%s SLUresMitigator config init with error: %@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  getModelFile = [(SLUresMitigatorConfigDecoder *)v16 getModelFile];
  if (pathCopy)
  {
    v22 = pathCopy;

    getModelFile = v22;
  }

  getBnnsIrWeightFile = [(SLUresMitigatorConfigDecoder *)v16 getBnnsIrWeightFile];
  v48 = 0;
  v23 = [MEMORY[0x277D01768] provideComputeBackendWithModelFile:getModelFile separateWeight:? error:?];
  v24 = v48;
  uresModel = v10->_uresModel;
  v10->_uresModel = v23;

  if (v10->_uresModel)
  {
    v26 = 0;
    if (!v24)
    {
LABEL_21:
      getVersion = [(SLUresMitigatorConfigDecoder *)v16 getVersion];
      version = v10->_version;
      v10->_version = getVersion;

      getInputOpsMap = [(SLUresMitigatorConfigDecoder *)v16 getInputOpsMap];
      inputOpsMap = v10->_inputOpsMap;
      v10->_inputOpsMap = getInputOpsMap;

      getOutputMap = [(SLUresMitigatorConfigDecoder *)v16 getOutputMap];
      outputMap = v10->_outputMap;
      v10->_outputMap = getOutputMap;

      getSupportedInputOrigins = [(SLUresMitigatorConfigDecoder *)v16 getSupportedInputOrigins];
      [(SLUresMitigator *)v10 _createInputOriginThresholdMap:getSupportedInputOrigins];

      v41 = *MEMORY[0x277CEF0E8];
      v42 = v41;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26754E000, v42, OS_SIGNPOST_INTERVAL_END, v12, "UresMitigator_Create", &unk_2675B2B36, buf, 2u);
      }

      goto LABEL_25;
    }
  }

  v44 = v12;
  v45 = getModelFile;
  v27 = MEMORY[0x277CCACA8];
  localizedDescription = [v24 localizedDescription];
  v29 = [v27 stringWithFormat:@"Unable to create model with error %@", localizedDescription];

  v30 = MEMORY[0x277CCA9B8];
  v51 = @"reason";
  v52 = v29;
  v46 = v29;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v26 = [v30 errorWithDomain:@"com.apple.sl" code:106 userInfo:v31];

  v32 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v54 = "[SLUresMitigator initWithConfig:bnnsIrPath:error:]";
    v55 = 2114;
    v56 = v29;
    _os_log_error_impl(&dword_26754E000, v32, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
  }

  getModelFile = v45;
  if (!error)
  {

    v12 = v44;
    goto LABEL_21;
  }

  v33 = v26;
  *error = v26;

LABEL_11:
  v20 = 0;
LABEL_26:

  return v20;
}

@end