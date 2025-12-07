@interface LTLanguageDetectorFeatureCombinationModel
@end

@implementation LTLanguageDetectorFeatureCombinationModel

void __61___LTLanguageDetectorFeatureCombinationModel_initWithConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  ModelFeature = getModelFeature(v3);
  if (ModelFeature > 0x13)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v8 = _LTOSLogLID(ModelFeature, v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __61___LTLanguageDetectorFeatureCombinationModel_initWithConfig___block_invoke_cold_1(v3, v8);
    }
  }

  else
  {
    v6 = *(*(a1 + 32) + 40);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ModelFeature];
    [v6 addObject:v7];
  }
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(*(a1 + 32) + 48);
  switch([a2 integerValue])
  {
    case 0:
      v7 = *(a1 + 40);
      if (v7)
      {
        v8 = MEMORY[0x277CCABB0];
        v9 = [v7 bestTranscription];
        [v9 minConfidence];
        v10 = [v8 numberWithDouble:?];

        v6 = v9;
      }

      else
      {
        v10 = *(*(a1 + 32) + 48);
      }

      v105 = _LTOSLogLID(v103, v104);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_20(v105);
      }

      goto LABEL_98;
    case 1:
      v36 = *(a1 + 40);
      if (v36)
      {
        v37 = MEMORY[0x277CCABB0];
        v38 = [v36 bestTranscription];
        [v38 maxConfidence];
        v10 = [v37 numberWithDouble:?];

        v6 = v38;
      }

      else
      {
        v10 = *(*(a1 + 32) + 48);
      }

      v108 = _LTOSLogLID(v106, v107);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_19(v108);
      }

      goto LABEL_98;
    case 2:
      v24 = *(a1 + 40);
      if (v24)
      {
        v25 = MEMORY[0x277CCABB0];
        v26 = [v24 bestTranscription];
        [v26 confidence];
        v10 = [v25 numberWithDouble:?];

        v6 = v26;
      }

      else
      {
        v10 = *(*(a1 + 32) + 48);
      }

      v99 = _LTOSLogLID(v97, v98);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_18(v99);
      }

      goto LABEL_98;
    case 3:
      if (*(a1 + 40))
      {
        v29 = MEMORY[0x277CCABB0];
        v30 = [*(a1 + 56) bestTranscription];
        [v30 minConfidence];
        v10 = [v29 numberWithDouble:?];

        v6 = v30;
      }

      else
      {
        v10 = *(*(a1 + 32) + 48);
      }

      v102 = _LTOSLogLID(v100, v101);
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_17(v102);
      }

      goto LABEL_98;
    case 4:
      if (*(a1 + 40))
      {
        v17 = MEMORY[0x277CCABB0];
        v18 = [*(a1 + 56) bestTranscription];
        [v18 maxConfidence];
        v10 = [v17 numberWithDouble:?];

        v6 = v18;
      }

      else
      {
        v10 = *(*(a1 + 32) + 48);
      }

      v96 = _LTOSLogLID(v94, v95);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_16(v96);
      }

      goto LABEL_98;
    case 5:
      if (*(a1 + 40))
      {
        v45 = MEMORY[0x277CCABB0];
        v46 = [*(a1 + 56) bestTranscription];
        [v46 confidence];
        v10 = [v45 numberWithDouble:?];

        v6 = v46;
      }

      else
      {
        v10 = *(*(a1 + 32) + 48);
      }

      v111 = _LTOSLogLID(v109, v110);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_15(v111);
      }

      goto LABEL_98;
    case 6:
      v49 = *(a1 + 32);
      v50 = [*(a1 + 64) count];
      if (v50)
      {
        v51 = [*(a1 + 64) lastObject];
      }

      else
      {
        v51 = 0;
      }

      v113 = [*(a1 + 72) sourceLocale];
      v10 = [v49 getAcousticLidConfidenceFromResult:v51 locale:v113];

      if (v50)
      {
      }

      v116 = _LTOSLogLID(v114, v115);
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_14(v116);
      }

      goto LABEL_110;
    case 7:
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 64), "count")}];

      v33 = _LTOSLogLID(v31, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_13(v33);
      }

      [*(a1 + 48) setObject:v10 atIndexedSubscript:a3];
      v34 = *(*(a1 + 104) + 8);
      if (*(v34 + 24))
      {
        goto LABEL_111;
      }

      v35 = [*(a1 + 64) count] != 0;
      v34 = *(*(a1 + 104) + 8);
      goto LABEL_114;
    case 8:
      v61 = *(a1 + 32);
      v62 = [*(a1 + 64) count];
      if (v62)
      {
        v63 = [*(a1 + 64) objectAtIndex:0];
      }

      else
      {
        v63 = 0;
      }

      v117 = [*(a1 + 72) sourceLocale];
      v10 = [v61 getAcousticLidConfidenceFromResult:v63 locale:v117];

      if (v62)
      {
      }

      v120 = _LTOSLogLID(v118, v119);
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_12(v120);
      }

      goto LABEL_110;
    case 9:
      v21 = *(a1 + 32);
      v22 = [*(a1 + 64) count];
      if (v22 < 2)
      {
        v23 = 0;
      }

      else
      {
        v23 = [*(a1 + 64) objectAtIndex:1];
      }

      v86 = [*(a1 + 72) sourceLocale];
      v10 = [v21 getAcousticLidConfidenceFromResult:v23 locale:v86];

      if (v22 >= 2)
      {
      }

      v89 = _LTOSLogLID(v87, v88);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_11(v89);
      }

      goto LABEL_110;
    case 10:
      v58 = *(a1 + 32);
      v59 = [*(a1 + 64) count];
      if (v59 < 3)
      {
        v60 = 0;
      }

      else
      {
        v60 = [*(a1 + 64) objectAtIndex:2];
      }

      v90 = [*(a1 + 72) sourceLocale];
      v10 = [v58 getAcousticLidConfidenceFromResult:v60 locale:v90];

      if (v59 >= 3)
      {
      }

      v93 = _LTOSLogLID(v91, v92);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_10(v93);
      }

LABEL_110:
      [*(a1 + 48) setObject:v10 atIndexedSubscript:a3];
      v34 = *(*(a1 + 104) + 8);
      if (*(v34 + 24))
      {
        goto LABEL_111;
      }

      v112 = *(*(a1 + 32) + 56);
      goto LABEL_113;
    case 11:
      v15 = *(a1 + 80);
      if (v15 && [v15 count])
      {
        v16 = [*(a1 + 80) lastObject];
      }

      else
      {
        v16 = *(*(a1 + 32) + 48);
      }

      v10 = v16;

      v76 = _LTOSLogLID(v74, v75);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_9(v76);
      }

      goto LABEL_98;
    case 12:
      v19 = *(a1 + 80);
      if (v19 && [v19 count])
      {
        v20 = [*(a1 + 80) valueForKeyPath:@"@max.doubleValue"];
      }

      else
      {
        v20 = *(*(a1 + 32) + 48);
      }

      v10 = v20;

      v79 = _LTOSLogLID(v77, v78);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_8(v79);
      }

      goto LABEL_98;
    case 13:
      v47 = *(a1 + 80);
      if (v47 && [v47 count])
      {
        v48 = [*(a1 + 80) valueForKeyPath:@"@avg.doubleValue"];
      }

      else
      {
        v48 = *(*(a1 + 32) + 48);
      }

      v10 = v48;

      v85 = _LTOSLogLID(v83, v84);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_7(v85);
      }

      goto LABEL_98;
    case 14:
      v13 = *(a1 + 88);
      if (v13 && [v13 count])
      {
        v14 = [*(a1 + 88) lastObject];
      }

      else
      {
        v14 = *(*(a1 + 32) + 48);
      }

      v10 = v14;

      v73 = _LTOSLogLID(v71, v72);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_6(v73);
      }

      goto LABEL_98;
    case 15:
      v27 = *(a1 + 88);
      if (v27 && [v27 count])
      {
        v28 = [*(a1 + 88) valueForKeyPath:@"@max.doubleValue"];
      }

      else
      {
        v28 = *(*(a1 + 32) + 48);
      }

      v10 = v28;

      v82 = _LTOSLogLID(v80, v81);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_5(v82);
      }

      goto LABEL_98;
    case 16:
      v11 = *(a1 + 88);
      if (v11 && [v11 count])
      {
        v12 = [*(a1 + 88) valueForKeyPath:@"@avg.doubleValue"];
      }

      else
      {
        v12 = *(*(a1 + 32) + 48);
      }

      v10 = v12;

      v70 = _LTOSLogLID(v68, v69);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_4(v70);
      }

LABEL_98:
      [*(a1 + 48) setObject:v10 atIndexedSubscript:a3];
      v34 = *(*(a1 + 104) + 8);
      if (*(v34 + 24))
      {
LABEL_111:
        v35 = 1;
      }

      else
      {
        v112 = *(*(a1 + 32) + 48);
LABEL_113:
        v35 = v10 != v112;
      }

LABEL_114:
      *(v34 + 24) = v35;
      break;
    case 17:
      v39 = *(*(a1 + 32) + 64);
      v40 = [*(a1 + 72) sourceLocale];
      v41 = [v40 localeIdentifier];
      v10 = [v39 objectForKeyedSubscript:v41];

      v44 = _LTOSLogLID(v42, v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_3(a1 + 72, v44, v10);
      }

      goto LABEL_51;
    case 18:
      v52 = *(*(a1 + 32) + 64);
      v53 = [*(a1 + 72) targetLocale];
      v54 = [v53 localeIdentifier];
      v10 = [v52 objectForKeyedSubscript:v54];

      v57 = _LTOSLogLID(v55, v56);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_2(a1 + 72, v57, v10);
      }

      goto LABEL_51;
    case 19:
      v64 = [*(a1 + 72) sourceLocale];
      v10 = _LTPreferencesLanguageDetectorFeatureCombinationASRTypeIdentifierForASRDataPack(v64, *(a1 + 96));

      v67 = _LTOSLogLID(v65, v66);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_1(a1 + 96, v67);
      }

LABEL_51:
      [*(a1 + 48) setObject:v10 atIndexedSubscript:a3];
      break;
    default:
      v10 = v6;
      break;
  }
}

void __61___LTLanguageDetectorFeatureCombinationModel_initWithConfig___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Unknown feature in model file: %@", &v2, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_2(uint64_t a1, void *a2, void *a3)
{
  v5 = OUTLINED_FUNCTION_9(a1, a2);
  v6 = [v3 targetLocale];
  v7 = [v6 localeIdentifier];
  [a3 floatValue];
  v9 = OUTLINED_FUNCTION_7_0(v8);
  OUTLINED_FUNCTION_0_9(&dword_232E53000, v10, v11, "Language %{public}@ locale identifier source: %f", v12, v13, v14, v15, v9);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_3(uint64_t a1, void *a2, void *a3)
{
  v5 = OUTLINED_FUNCTION_9(a1, a2);
  v6 = [v3 sourceLocale];
  v7 = [v6 localeIdentifier];
  [a3 floatValue];
  v9 = OUTLINED_FUNCTION_7_0(v8);
  OUTLINED_FUNCTION_0_9(&dword_232E53000, v10, v11, "Language %{public}@ locale identifier source: %f", v12, v13, v14, v15, v9);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_4(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_5(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_6(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_7(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_8(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_9(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_10(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() doubleValue];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_11(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() doubleValue];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_12(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() doubleValue];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_13(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() integerValue];
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_14(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() doubleValue];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_15(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_16(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_17(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_18(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_19(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_20(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

@end