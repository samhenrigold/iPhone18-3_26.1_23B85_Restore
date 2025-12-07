@interface _LTLanguageDetectorFeatureCombinationModel
- (_LTLanguageDetectorFeatureCombinationModel)initWithConfig:(id)config;
- (id)estimateLanguage:(id)language languageDetectionResults:(id)results partialSpeechResultConfidences:(id)confidences finalSpeechResults:(id)speechResults modelVersions:(id)versions isLowConfidencePair:(BOOL)pair;
- (id)estimateLanguage:(id)language languageDetectionResults:(id)results partialSpeechResultConfidences:(id)confidences finalSpeechResults:(id)speechResults modelVersions:(id)versions useFinalThresholds:(BOOL)thresholds isLowConfidencePair:(BOOL)pair;
- (id)getAcousticLidConfidenceFromResult:(id)result locale:(id)locale;
- (id)getModelFeatures:(id)features canonicalPair:(id)pair partialSpeechResultConfidences:(id)confidences finalSpeechResults:(id)results modelVersion:(id)version;
@end

@implementation _LTLanguageDetectorFeatureCombinationModel

- (_LTLanguageDetectorFeatureCombinationModel)initWithConfig:(id)config
{
  v62 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v60.receiver = self;
  v60.super_class = _LTLanguageDetectorFeatureCombinationModel;
  v5 = [(_LTLanguageDetectorFeatureCombinationModel *)&v60 init];
  v6 = v5;
  v7 = 0;
  if (configCopy && v5)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:configCopy];
    v9 = [v8 objectForKey:@"features"];
    v10 = [v8 objectForKey:@"compiledModelFile"];
    v11 = [v8 objectForKey:@"modelInput"];
    modelInput = v6->_modelInput;
    v6->_modelInput = v11;

    v13 = [v8 objectForKey:@"modelInputIsMatrix"];
    v14 = v13 == 0;

    if (v14)
    {
      v18 = _LTOSLogLID(v15, v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [_LTLanguageDetectorFeatureCombinationModel initWithConfig:];
      }

      v6->_modelInputIsMatrix = 0;
    }

    else
    {
      v17 = [v8 valueForKey:@"modelInputIsMatrix"];
      v6->_modelInputIsMatrix = [v17 BOOLValue];
    }

    v19 = [v8 objectForKey:@"modelOutput"];
    modelOutput = v6->_modelOutput;
    v6->_modelOutput = v19;

    v21 = [v8 objectForKey:@"LanguageLocaleToIdentifier"];
    languageLocaleToIdentifier = v6->_languageLocaleToIdentifier;
    v6->_languageLocaleToIdentifier = v21;

    if (v9 && v10 && v6->_modelInput && v6->_modelOutput)
    {
      v25 = [v8 objectForKey:@"missingFeatureValueDefault"];
      missingFeatureValueDefault = v6->_missingFeatureValueDefault;
      v6->_missingFeatureValueDefault = v25;

      if (!v6->_missingFeatureValueDefault)
      {
        v6->_missingFeatureValueDefault = &unk_2848680C8;

        v29 = _LTOSLogLID(v27, v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [(_LTLanguageDetectorFeatureCombinationModel *)&v6->_missingFeatureValueDefault initWithConfig:v29];
        }
      }

      v30 = [v8 objectForKey:@"missingLanguageDetectionDefault"];
      missingLanguageDetectorDefault = v6->_missingLanguageDetectorDefault;
      v6->_missingLanguageDetectorDefault = v30;

      if (!v6->_missingLanguageDetectorDefault)
      {
        v6->_missingLanguageDetectorDefault = &unk_284868268;

        v34 = _LTOSLogLID(v32, v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [(_LTLanguageDetectorFeatureCombinationModel *)&v6->_missingLanguageDetectorDefault initWithConfig:v34];
        }
      }

      v56 = 0;
      v57 = &v56;
      v58 = 0x2020000000;
      v59 = 0;
      v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
      features = v6->_features;
      v6->_features = v35;

      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __61___LTLanguageDetectorFeatureCombinationModel_initWithConfig___block_invoke;
      v53[3] = &unk_2789B6CA0;
      v37 = v6;
      v54 = v37;
      v55 = &v56;
      [v9 enumerateObjectsUsingBlock:v53];
      if (v57[3])
      {
        v7 = 0;
      }

      else
      {
        uRLByDeletingLastPathComponent = [configCopy URLByDeletingLastPathComponent];
        v41 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v10];

        v52 = 0;
        v42 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v41 error:&v52];
        v43 = v52;
        v44 = v37[1];
        v37[1] = v42;

        if (v43 || !v37[1])
        {
          v47 = _LTOSLogLID(v45, v46);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            path = [v41 path];
            [(_LTLanguageDetectorFeatureCombinationModel *)path initWithConfig:buf, v47];
          }

          v7 = 0;
        }

        else
        {
          v49 = _LTOSLogLID(v45, v46);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            modelDescription = [v37[1] modelDescription];
            v51 = [modelDescription description];
            [(_LTLanguageDetectorFeatureCombinationModel *)v51 initWithConfig:buf, v49, modelDescription];
          }

          v7 = v37;
        }
      }

      _Block_object_dispose(&v56, 8);
    }

    else
    {
      v38 = _LTOSLogLID(v23, v24);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [_LTLanguageDetectorFeatureCombinationModel initWithConfig:];
      }

      v7 = 0;
    }
  }

  return v7;
}

- (id)getAcousticLidConfidenceFromResult:(id)result locale:(id)locale
{
  if (result)
  {
    localeCopy = locale;
    confidences = [result confidences];
    v8 = [confidences objectForKey:localeCopy];

    missingLanguageDetectorDefault = v8;
    if (!v8)
    {
      missingLanguageDetectorDefault = self->_missingLanguageDetectorDefault;
    }

    v10 = missingLanguageDetectorDefault;
  }

  else
  {
    v10 = self->_missingLanguageDetectorDefault;
  }

  return v10;
}

- (id)getModelFeatures:(id)features canonicalPair:(id)pair partialSpeechResultConfidences:(id)confidences finalSpeechResults:(id)results modelVersion:(id)version
{
  v64[2] = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  pairCopy = pair;
  confidencesCopy = confidences;
  resultsCopy = results;
  versionCopy = version;
  LODWORD(version) = self->_modelInputIsMatrix;
  v13 = objc_alloc(MEMORY[0x277CBFF48]);
  if (version == 1)
  {
    v64[0] = &unk_2848680E0;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](self->_features, "count", featuresCopy, versionCopy)}];
    v64[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
    v61 = 0;
    v16 = [v13 initWithShape:v15 dataType:65600 error:&v61];
    v17 = &v61;
  }

  else
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](self->_features, "count", featuresCopy, versionCopy)}];
    v63 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    v60 = 0;
    v16 = [v13 initWithShape:v15 dataType:65600 error:&v60];
    v17 = &v60;
  }

  v18 = *v17;

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    sourceLocale = [pairCopy sourceLocale];
    v21 = [confidencesCopy objectForKeyedSubscript:sourceLocale];

    targetLocale = [pairCopy targetLocale];
    v23 = [confidencesCopy objectForKeyedSubscript:targetLocale];

    sourceLocale2 = [pairCopy sourceLocale];
    v25 = [resultsCopy objectForKeyedSubscript:sourceLocale2];

    targetLocale2 = [pairCopy targetLocale];
    v27 = [resultsCopy objectForKeyedSubscript:targetLocale2];

    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    features = self->_features;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke;
    v46[3] = &unk_2789B6CC8;
    v46[4] = self;
    v29 = v25;
    v47 = v29;
    v30 = v16;
    v48 = v30;
    v55 = &v56;
    v31 = v27;
    v49 = v31;
    v50 = v41;
    v51 = pairCopy;
    v32 = v21;
    v52 = v32;
    v33 = v23;
    v53 = v33;
    v54 = v43;
    v34 = [(NSMutableArray *)features enumerateObjectsUsingBlock:v46];
    if (v57[3])
    {
      v36 = _LTOSLogLID(v34, v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = [v30 description];
        [_LTLanguageDetectorFeatureCombinationModel getModelFeatures:v37 canonicalPair:v62 partialSpeechResultConfidences:v36 finalSpeechResults:? modelVersion:?];
      }

      v19 = v30;
    }

    else
    {
      v38 = _LTOSLogLID(v34, v35);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [_LTLanguageDetectorFeatureCombinationModel getModelFeatures:canonicalPair:partialSpeechResultConfidences:finalSpeechResults:modelVersion:];
      }

      v19 = 0;
    }

    _Block_object_dispose(&v56, 8);
  }

  return v19;
}

- (id)estimateLanguage:(id)language languageDetectionResults:(id)results partialSpeechResultConfidences:(id)confidences finalSpeechResults:(id)speechResults modelVersions:(id)versions useFinalThresholds:(BOOL)thresholds isLowConfidencePair:(BOOL)pair
{
  thresholdsCopy = thresholds;
  v130[1] = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  confidencesCopy = confidences;
  speechResultsCopy = speechResults;
  versionsCopy = versions;
  localePair = [language localePair];
  canonicalLocalePair = [localePair canonicalLocalePair];

  sourceLocale = [canonicalLocalePair sourceLocale];
  v21 = [versionsCopy objectForKeyedSubscript:sourceLocale];
  if (v21)
  {
    [canonicalLocalePair sourceLocale];
  }

  else
  {
    [canonicalLocalePair targetLocale];
  }
  v22 = ;
  v23 = [versionsCopy objectForKeyedSubscript:v22];

  sourceLocale2 = [canonicalLocalePair sourceLocale];
  v105 = _LTPreferencesLanguageDetectorFeatureCombinationThresholdVersionForASRDataPack(sourceLocale2, v23);

  sourceLocale3 = [canonicalLocalePair sourceLocale];
  v26 = [speechResultsCopy objectForKeyedSubscript:sourceLocale3];

  targetLocale = [canonicalLocalePair targetLocale];
  v28 = [speechResultsCopy objectForKeyedSubscript:targetLocale];

  if (v26 && ([v26 isFinal] & 1) != 0)
  {
    isFinal = 1;
  }

  else if (v28)
  {
    isFinal = [v28 isFinal];
  }

  else
  {
    isFinal = 0;
  }

  v30 = [(_LTLanguageDetectorFeatureCombinationModel *)self getModelFeatures:resultsCopy canonicalPair:canonicalLocalePair partialSpeechResultConfidences:confidencesCopy finalSpeechResults:speechResultsCopy modelVersion:v23];
  if (v30)
  {
    v100 = v26;
    v31 = versionsCopy;
    v32 = v28;
    v103 = resultsCopy;
    v104 = confidencesCopy;
    v33 = objc_alloc(MEMORY[0x277CBFED0]);
    modelInput = self->_modelInput;
    v130[0] = v30;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:&modelInput count:1];
    v106 = 0;
    v35 = [v33 initWithDictionary:v34 error:&v106];
    v36 = v106;

    v101 = v36;
    v102 = v35;
    if (v36)
    {
      v39 = _LTOSLogLID(v37, v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [_LTLanguageDetectorFeatureCombinationModel estimateLanguage:languageDetectionResults:partialSpeechResultConfidences:finalSpeechResults:modelVersions:useFinalThresholds:isLowConfidencePair:];
      }

      v40 = 0;
      resultsCopy = v103;
      confidencesCopy = v104;
      v28 = v32;
      versionsCopy = v31;
      v26 = v100;
    }

    else
    {
      v96 = objc_alloc_init(MEMORY[0x277CBFF68]);
      v42 = [MLModel predictionFromFeatures:"predictionFromFeatures:options:error:" options:v35 error:?];
      v43 = 0;
      v94 = v42;
      v95 = v43;
      if (v43)
      {
        v45 = _LTOSLogLID(v43, v44);
        resultsCopy = v103;
        confidencesCopy = v104;
        v28 = v32;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [_LTLanguageDetectorFeatureCombinationModel estimateLanguage:languageDetectionResults:partialSpeechResultConfidences:finalSpeechResults:modelVersions:useFinalThresholds:isLowConfidencePair:];
        }

        v40 = 0;
        versionsCopy = v31;
        v26 = v100;
      }

      else
      {
        v46 = [v42 featureValueForName:self->_modelOutput];
        confidencesCopy = v104;
        v28 = v32;
        v93 = v46;
        if (v46 && (v48 = v46, [v46 multiArrayValue], (v46 = objc_claimAutoreleasedReturnValue()) != 0) && (v49 = v46, objc_msgSend(v48, "multiArrayValue"), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "count"), v50, v49, v52 = v51 == 2, confidencesCopy = v104, v52))
        {
          multiArrayValue = [v48 multiArrayValue];
          v54 = [multiArrayValue objectAtIndexedSubscript:0];

          multiArrayValue2 = [v48 multiArrayValue];
          v92 = [multiArrayValue2 objectAtIndexedSubscript:1];

          versionsCopy = v31;
          v91 = v54;
          if (v54 && v92 && (v56 = [v54 doubleValue], v58 != INFINITY))
          {
            [v54 doubleValue];
            v62 = _LTPreferencesLanguageDetectorFeatureCombinationModelThresholdsForLocale(canonicalLocalePair, v105, thresholdsCopy);
            sourceLocale4 = [canonicalLocalePair sourceLocale];
            [v54 doubleValue];
            v64 = v62;
            v26 = v100;
            if (v65 < v62)
            {
              targetLocale2 = [canonicalLocalePair targetLocale];

              sourceLocale4 = targetLocale2;
            }

            v67 = objc_alloc(MEMORY[0x277CE1B38]);
            v68 = [canonicalLocalePair oppositeToLocale:sourceLocale4];
            v69 = sourceLocale4;
            v70 = v68;
            v90 = v69;
            v71 = [v67 initWithSourceLocale:? targetLocale:?];

            v89 = v71;
            v72 = _LTPreferencesLanguageDetectorFeatureCombinationModelConfidenceThresholdsForLocale(v71, v105, thresholdsCopy);
            v73 = v72;
            if (pair)
            {
              v88 = 0;
            }

            else
            {
              v74 = v72;
              [v54 doubleValue];
              v88 = vabdd_f64(v64, v75) >= v74;
            }

            sourceLocale5 = [canonicalLocalePair sourceLocale];
            v127[0] = sourceLocale5;
            v128[0] = v54;
            targetLocale3 = [canonicalLocalePair targetLocale];
            v127[1] = targetLocale3;
            v128[1] = v92;
            v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v128 forKeys:v127 count:2];

            v80 = _LTOSLogLID(v78, v79);
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
            {
              log = v80;
              _ltLocaleIdentifier = [v90 _ltLocaleIdentifier];
              v87 = [v98 objectForKeyedSubscript:v90];
              [v87 doubleValue];
              v83 = v82;
              sourceLocale6 = [canonicalLocalePair sourceLocale];
              *buf = 138545666;
              v84 = @"1.0-";
              v108 = v105;
              v109 = 2114;
              if (v90 == sourceLocale6)
              {
                v84 = &stru_284834138;
              }

              v110 = v23;
              v111 = 1024;
              v112 = thresholdsCopy;
              v113 = 1024;
              v114 = isFinal;
              v115 = 2114;
              v116 = _ltLocaleIdentifier;
              v117 = 2048;
              v118 = v83;
              v119 = 2114;
              v120 = v84;
              v121 = 2048;
              v122 = v64;
              v123 = 2048;
              v124 = v73;
              v125 = 1024;
              v126 = v88;
              _os_log_debug_impl(&dword_232E53000, log, OS_LOG_TYPE_DEBUG, "Queried LID threshold version '%{public}@' for model version '%{public}@'; useFinalThresholds: %{BOOL}i; isFinalASR: %{BOOL}i; detected %{public}@, with score %f using discriminator threshold %{public}@%f and confidence offset %f (confident: %{BOOL}i)", buf, 0x5Au);
            }

            v40 = [objc_alloc(MEMORY[0x277CE1B08]) initWithConfidences:v98 isConfident:v88 dominantLanguage:v90 isFinal:1];

            resultsCopy = v103;
            confidencesCopy = v104;
          }

          else
          {
            v59 = _LTOSLogLID(v56, v57);
            resultsCopy = v103;
            v26 = v100;
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              [_LTLanguageDetectorFeatureCombinationModel estimateLanguage:languageDetectionResults:partialSpeechResultConfidences:finalSpeechResults:modelVersions:useFinalThresholds:isLowConfidencePair:];
            }

            v40 = 0;
          }
        }

        else
        {
          v60 = _LTOSLogLID(v46, v47);
          versionsCopy = v31;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            [_LTLanguageDetectorFeatureCombinationModel estimateLanguage:languageDetectionResults:partialSpeechResultConfidences:finalSpeechResults:modelVersions:useFinalThresholds:isLowConfidencePair:];
          }

          v40 = 0;
          resultsCopy = v103;
          v26 = v100;
        }
      }
    }
  }

  else
  {
    v41 = _LTOSLogLID(0, v29);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [_LTLanguageDetectorFeatureCombinationModel estimateLanguage:languageDetectionResults:partialSpeechResultConfidences:finalSpeechResults:modelVersions:useFinalThresholds:isLowConfidencePair:];
    }

    v40 = 0;
  }

  return v40;
}

- (id)estimateLanguage:(id)language languageDetectionResults:(id)results partialSpeechResultConfidences:(id)confidences finalSpeechResults:(id)speechResults modelVersions:(id)versions isLowConfidencePair:(BOOL)pair
{
  languageCopy = language;
  resultsCopy = results;
  confidencesCopy = confidences;
  speechResultsCopy = speechResults;
  versionsCopy = versions;
  localePair = [languageCopy localePair];
  canonicalLocalePair = [localePair canonicalLocalePair];

  sourceLocale = [canonicalLocalePair sourceLocale];
  v21 = [speechResultsCopy objectForKeyedSubscript:sourceLocale];

  targetLocale = [canonicalLocalePair targetLocale];
  v23 = [speechResultsCopy objectForKeyedSubscript:targetLocale];

  if (v21 && ([v21 isFinal] & 1) != 0)
  {
    isFinal = 1;
  }

  else if (v23)
  {
    isFinal = [v23 isFinal];
  }

  else
  {
    isFinal = 0;
  }

  LOBYTE(v27) = pair;
  v25 = [(_LTLanguageDetectorFeatureCombinationModel *)self estimateLanguage:languageCopy languageDetectionResults:resultsCopy partialSpeechResultConfidences:confidencesCopy finalSpeechResults:speechResultsCopy modelVersions:versionsCopy useFinalThresholds:isFinal isLowConfidencePair:v27];

  return v25;
}

- (void)initWithConfig:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v3 = OUTLINED_FUNCTION_9(a1, a2);
  [v2 floatValue];
  OUTLINED_FUNCTION_1_6(v4);
  OUTLINED_FUNCTION_6(&dword_232E53000, v3, v5, "Setting default value for missing feature value to %f", v6);
}

- (void)initWithConfig:(uint64_t)a1 .cold.3(uint64_t a1, void *a2)
{
  v3 = OUTLINED_FUNCTION_9(a1, a2);
  [v2 floatValue];
  OUTLINED_FUNCTION_1_6(v4);
  OUTLINED_FUNCTION_6(&dword_232E53000, v3, v5, "Setting default value for missing language detector result to %f", v6);
}

- (void)initWithConfig:(NSObject *)a3 .cold.4(void *a1, uint64_t a2, NSObject *a3, void *a4)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_6(&dword_232E53000, a3, a3, "CoreML model loaded: %@", a2);
}

- (void)initWithConfig:(os_log_t)log .cold.5(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_232E53000, log, OS_LOG_TYPE_ERROR, "Unable to load CoreML model from path: %@", buf, 0xCu);
}

- (void)getModelFeatures:(NSObject *)a3 canonicalPair:partialSpeechResultConfidences:finalSpeechResults:modelVersion:.cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_6(&dword_232E53000, a3, a3, "Created CoreML features: %@", a2);
}

@end