void sub_3220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 buf)
{
  if (a2 == 1)
  {
    v33 = objc_begin_catch(a1);
    v34 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "[FidesSelfHelper _decodingMetricsFromMetricsDict:]";
      WORD6(buf) = 2112;
      *(&buf + 14) = a10;
      _os_log_error_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%s Fides SELF: Encountered malformed string during SELF logging for interpolation weights in speech results from recognizer. String: %@", &buf, 0x16u);
      v34 = AFSiriLogContextFides;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[FidesSelfHelper _decodingMetricsFromMetricsDict:]";
      _os_log_error_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%s Fides SELF: Expected interpolation weight sets separated by delimter ';' - starting with a set of weights delimited by ',' and ending the with start/end times delimited by ':'. Ex: '0.999646,0.000354:0:4280;0.947514,0.000158:0:3859'", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x31ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_3330(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_alloc_init(DODMLASRSchemaDODMLASREntityCategoryCount);
  [v8 setEntityCategory:v6];

  v7 = [v5 unsignedLongValue];
  [v8 setCount:v7];
  [*(a1 + 32) addPreprocessingEntityCategoryCounts:v8];
}

void sub_33D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_alloc_init(DODMLASRSchemaDODMLASREntityCategoryCount);
  [v8 setEntityCategory:v6];

  v7 = [v5 unsignedLongValue];
  [v8 setCount:v7];
  [*(a1 + 32) addPostprocessingEntityCategoryCounts:v8];
}

void sub_55B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x54ACLL);
  }

  _Unwind_Resume(exception_object);
}

id sub_5684(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(a1 + 57) == 1 && *(a1 + 58) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
  }

  else
  {
    [*(a1 + 48) logDictationPersonalizationExperimentEndedAndTier1WithResultsDict:*(a1 + 40)];
    if ((*(a1 + 59) & 1) == 0)
    {
      v4 = +[AFAnalytics sharedAnalytics];
      [v4 logEventWithType:2221 context:*(a1 + 40)];
    }

    v2 = *(a1 + 32);
    v3 = &off_116F8;
  }

  return [v2 completeWithJSONResult:v3 binaryResult:0 completionHandler:0];
}

void sub_5728(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && xpc_activity_should_defer(v3))
  {
    v5 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[DictationPersonalizationFidesPlugin performEvaluation:]_block_invoke";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s PLM: eligibilityHandler deferred", &v6, 0xCu);
    }

    [WeakRetained _invalidate];
  }
}

id sub_5810()
{
  v0 = AFLibraryDirectoryWithSubPath();
  v1 = [v0 stringByAppendingPathComponent:@"SpeechPersonalizedLM_Fides"];

  return v1;
}

void sub_6A64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    _Block_object_dispose(&STACK[0x350], 8);
    objc_begin_catch(a1);
    JUMPOUT(0x6930);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_6B70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_6B88(uint64_t a1)
{
  [*(a1 + 32) logUserEditExperimentEndedAndTier1WithResultsDict:*(*(*(a1 + 48) + 8) + 40)];
  if (*(a1 + 56) == 1)
  {
    v2 = +[AFAnalytics sharedAnalytics];
    [v2 logEventWithType:2221 context:*(*(*(a1 + 48) + 8) + 40)];
  }

  v3 = *(a1 + 40);

  return [v3 completeWithJSONResult:&off_116D0 binaryResult:0 completionHandler:0];
}

uint64_t sub_6C18(uint64_t result)
{
  if ((*(*(result + 32) + 16) & 1) == 0)
  {
    *(*(result + 32) + 32) = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDBackground];

    return _objc_release_x1();
  }

  return result;
}

void sub_6C80(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && xpc_activity_should_defer(v3))
  {
    v5 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]_block_invoke_2";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s SEE: eligibilityHandler deferred", &v6, 0xCu);
    }

    [WeakRetained _invalidate];
  }
}

void sub_6D68(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6 && [v6 count])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    v8 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%s Failed to generate TTS audio, error: %@", &v9, 0x16u);
    }
  }
}

void sub_6E70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v54 = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]_block_invoke";
      v55 = 2112;
      v56 = v6;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%s Error running evaluation %@", buf, 0x16u);
    }
  }

  else
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [v5 objectForKeyedSubscript:@"modelVersion"];
    [v8 setValue:v9 forKey:@"modelVersion"];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v41 = v5;
    obj = [v5 objectForKeyedSubscript:@"results"];
    v10 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v10)
    {
      v11 = v10;
      v44 = *v49;
      do
      {
        v12 = 0;
        v42 = v11;
        do
        {
          if (*v49 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v48 + 1) + 8 * v12);
          v14 = objc_opt_new();
          v15 = [v13 objectForKeyedSubscript:@"correctedOutput"];
          v16 = [v13 objectForKeyedSubscript:@"recognizedOutput"];
          v47 = v14;
          if (v15)
          {
            v46 = v12;
            if (*(a1 + 64) == 1 && ([v13 objectForKeyedSubscript:@"editDistanceRecognizedTTSASR"], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "integerValue"), v17, v14 = v47, v18))
            {
              v19 = AFSiriLogContextFides;
              if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v54 = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]_block_invoke";
                _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%s Recognized text and TTS ASR output did not match but was required to match, continuing", buf, 0xCu);
              }

              v20 = v47;
              [v47 setValue:&off_11680 forKey:@"errorCode"];
              [*(a1 + 32) addObject:v47];
            }

            else
            {
              [v14 setValue:&off_11698 forKey:@"errorCode"];
              v21 = [v13 objectForKeyedSubscript:@"timestamp"];
              [v47 setValue:v21 forKey:@"timestamp"];

              v22 = [v13 objectForKeyedSubscript:@"interactionId"];
              [v47 setValue:v22 forKey:@"interactionId"];

              v23 = [v13 objectForKeyedSubscript:@"asrSelfComponentIdentifier"];
              [v47 setValue:v23 forKey:@"asrSelfComponentIdentifier"];

              v20 = v47;
              v24 = [v15 count];
              v25 = [v47 mutableCopy];
              if (v24 >= 1)
              {
                v26 = 0;
                do
                {
                  v45 = v25;
                  v27 = (v26 + 1);
                  while (1)
                  {
                    v28 = [v15 objectAtIndexedSubscript:v26];
                    v29 = [v16 objectAtIndexedSubscript:v26];
                    v30 = sub_7478(v28, v29, *(a1 + 65));

                    if ((v30 & 1) == 0)
                    {
                      break;
                    }

                    ++v26;
                    ++v27;
                    if (v26 >= v24)
                    {
                      v20 = v47;
                      v25 = v45;
                      goto LABEL_31;
                    }
                  }

                  do
                  {
                    v31 = v27;
                    if (v27 >= v24)
                    {
                      break;
                    }

                    v32 = [v15 objectAtIndexedSubscript:v27];
                    v33 = [v16 objectAtIndexedSubscript:v27];
                    v34 = sub_7478(v32, v33, *(a1 + 65));

                    ++v27;
                  }

                  while (!v34);
                  v35 = &v26[-*(a1 + 48)];
                  v36 = v35 & ~(v35 >> 63);
                  v37 = *(a1 + 56) + v31;
                  if (v24 >= v37)
                  {
                    v26 = v37;
                  }

                  else
                  {
                    v26 = v24;
                  }

                  v38 = [v15 subarrayWithRange:{v35 & ~(v35 >> 63), &v26[-v36]}];
                  [v45 setValue:v38 forKey:@"correctedPair"];

                  v39 = [v16 subarrayWithRange:{v36, &v26[-v36]}];
                  [v45 setValue:v39 forKey:@"recognizedPair"];

                  [*(a1 + 32) addObject:v45];
                  v20 = v47;
                  v25 = [v47 mutableCopy];
                }

                while (v37 < v24);
              }

LABEL_31:

              v11 = v42;
            }

            v12 = v46;
          }

          else
          {
            v40 = AFSiriLogContextFides;
            if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v54 = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]_block_invoke";
              _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "%s ASR failure when performing systematic error evaluation, continuing", buf, 0xCu);
            }

            v20 = v47;
            [v47 setValue:&off_11668 forKey:@"errorCode"];
            [*(a1 + 32) addObject:v47];
          }

          v12 = v12 + 1;
        }

        while (v12 != v11);
        v11 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v11);
    }

    [*(*(*(a1 + 40) + 8) + 40) setValue:*(a1 + 32) forKey:@"confusionPairs"];
    v6 = 0;
    v5 = v41;
  }
}

unint64_t sub_7478(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (a3)
    {
      v8 = [v5 isEqualToString:v6];
    }

    else
    {
      v8 = [v5 caseInsensitiveCompare:v6] == 0;
    }
  }

  return v8;
}

void sub_7C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_7CA4(uint64_t result)
{
  if ((*(*(result + 32) + 16) & 1) == 0)
  {
    *(*(result + 32) + 32) = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDBackground];

    return _objc_release_x1();
  }

  return result;
}

void sub_7D0C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  v7 = [v5 objectForKeyedSubscript:@"results"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(a1[6] + 8) + 40);
        v13 = [v7 objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v11)];
        [v12 addObject:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = [v5 mutableCopy];
  [v14 setObject:0 forKeyedSubscript:@"results"];
  if ([v14 count])
  {
    [v14 setObject:a1[4] forKeyedSubscript:@"language"];
    [*(*(a1[7] + 8) + 40) addObject:v14];
  }
}

void sub_7EC4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  v7 = [v5 objectForKeyedSubscript:@"results"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(a1[6] + 8) + 40);
        v13 = [v7 objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v11)];
        [v12 addObject:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = [v5 mutableCopy];
  [v14 setObject:0 forKeyedSubscript:@"results"];
  if ([v14 count])
  {
    [v14 setObject:a1[4] forKeyedSubscript:@"language"];
    [*(*(a1[7] + 8) + 40) addObject:v14];
  }
}

void sub_8D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8D58(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_8DB8(uint64_t result)
{
  if ((*(*(result + 32) + 16) & 1) == 0)
  {
    *(*(result + 32) + 24) = objc_alloc_init(SpeechModelTrainingClient);

    return _objc_release_x1();
  }

  return result;
}

void sub_8E10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextFides;
  if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[DictationPersonalizationFidesPlugin _trainPersonalizedLMWithSession:directory:trainingAssetOut:resultOut:error:]_block_invoke_2";
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%s PLM: Client finished training", &v13, 0xCu);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
}

id sub_9614(uint64_t a1)
{
  v2 = AFSiriLogContextFides;
  if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[DictationPersonalizationFidesPlugin _invalidate]_block_invoke";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s PLM: Invalidating", &v4, 0xCu);
  }

  *(*(a1 + 32) + 16) = 1;
  [*(*(a1 + 32) + 24) invalidate];
  return [*(*(a1 + 32) + 32) invalidate];
}