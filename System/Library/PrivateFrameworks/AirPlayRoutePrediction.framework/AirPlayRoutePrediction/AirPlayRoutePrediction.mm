id getHMServiceTypeSpeaker()
{
  HMServiceTypeSpeakerSymbolLoc = getHMServiceTypeSpeakerSymbolLoc();
  if (!HMServiceTypeSpeakerSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeSpeakerSymbolLoc;

  return v1;
}

id getHMServiceTypeMicrophone()
{
  HMServiceTypeMicrophoneSymbolLoc = getHMServiceTypeMicrophoneSymbolLoc();
  if (!HMServiceTypeMicrophoneSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeMicrophoneSymbolLoc;

  return v1;
}

id getHMServiceTypeDoorbell()
{
  HMServiceTypeDoorbellSymbolLoc = getHMServiceTypeDoorbellSymbolLoc();
  if (!HMServiceTypeDoorbellSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeDoorbellSymbolLoc;

  return v1;
}

id getBMStreamsClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMStreamsClass_softClass;
  v6 = getBMStreamsClass_softClass;
  if (!getBMStreamsClass_softClass)
  {
    BiomeStreamsLibraryCore(0);
    v4[3] = objc_getClass("BMStreams");
    getBMStreamsClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB16244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMHomeKitClientMediaAccessoryControlStreamClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMHomeKitClientMediaAccessoryControlStreamClass_softClass;
  v6 = getBMHomeKitClientMediaAccessoryControlStreamClass_softClass;
  if (!getBMHomeKitClientMediaAccessoryControlStreamClass_softClass)
  {
    BiomeStreamsLibraryCore(0);
    v4[3] = objc_getClass("BMHomeKitClientMediaAccessoryControlStream");
    getBMHomeKitClientMediaAccessoryControlStreamClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB1634C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMHomeKitClientActionSetStreamClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMHomeKitClientActionSetStreamClass_softClass;
  v6 = getBMHomeKitClientActionSetStreamClass_softClass;
  if (!getBMHomeKitClientActionSetStreamClass_softClass)
  {
    BiomeStreamsLibraryCore(0);
    v4[3] = objc_getClass("BMHomeKitClientActionSetStream");
    getBMHomeKitClientActionSetStreamClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB16454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMHomeKitClientAccessoryControlStreamClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMHomeKitClientAccessoryControlStreamClass_softClass;
  v6 = getBMHomeKitClientAccessoryControlStreamClass_softClass;
  if (!getBMHomeKitClientAccessoryControlStreamClass_softClass)
  {
    BiomeStreamsLibraryCore(0);
    v4[3] = objc_getClass("BMHomeKitClientAccessoryControlStream");
    getBMHomeKitClientAccessoryControlStreamClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB1655C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMBiomeSchedulerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMBiomeSchedulerClass_softClass;
  v6 = getBMBiomeSchedulerClass_softClass;
  if (!getBMBiomeSchedulerClass_softClass)
  {
    BiomeStreamsLibraryCore(0);
    v4[3] = objc_getClass("BMBiomeScheduler");
    getBMBiomeSchedulerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB16664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVSystemControllerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getAVSystemControllerClass_softClass;
  v6 = getAVSystemControllerClass_softClass;
  if (!getAVSystemControllerClass_softClass)
  {
    MediaExperienceLibraryCore(0);
    v4[3] = objc_getClass("AVSystemController");
    getAVSystemControllerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB1676C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ARPLog(uint64_t a1)
{
  if (ARPLog_onceToken != -1)
  {
    ARPLog_cold_1();
  }

  v2 = ARPLog_log;

  return v2;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t __ARPLog_block_invoke()
{
  ARPLog_log = os_log_create("com.apple.AirPlayRoutePrediction", "general");

  return MEMORY[0x2821F96F8]();
}

id ARPHomeControlLog(uint64_t a1)
{
  if (ARPHomeControlLog_onceToken != -1)
  {
    ARPHomeControlLog_cold_1();
  }

  v2 = ARPHomeControlLog_log;

  return v2;
}

uint64_t __ARPHomeControlLog_block_invoke()
{
  ARPHomeControlLog_log = os_log_create("com.apple.AirPlayRoutePrediction", "homeControl");

  return MEMORY[0x2821F96F8]();
}

id ARPFeedbackLog(uint64_t a1)
{
  if (ARPFeedbackLog_onceToken != -1)
  {
    ARPFeedbackLog_cold_1();
  }

  v2 = ARPFeedbackLog_log;

  return v2;
}

uint64_t __ARPFeedbackLog_block_invoke()
{
  ARPFeedbackLog_log = os_log_create("com.apple.AirPlayRoutePrediction", "feedback");

  return MEMORY[0x2821F96F8]();
}

id ARPExtractLongFormVideoOutputDeviceIDs(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v26;
    v20 = v1;
    v18 = *v26;
    do
    {
      v5 = 0;
      v19 = v3;
      do
      {
        if (*v26 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v25 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v1 objectForKeyedSubscript:v6];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v22;
            while (2)
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v22 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v21 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = [v6 intValue];
                  v15 = [v13 intValue];
                  if ([MEMORY[0x277CB86B8] longFormVideoManagerCanHaveCurrentSessionWithDestinationOfType:v14 subType:v15])
                  {
                    v16 = [v8 objectForKeyedSubscript:v13];

                    v1 = v20;
                    goto LABEL_22;
                  }
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }

          v3 = v19;
          v1 = v20;
          v4 = v18;
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [v1 countByEnumeratingWithState:&v25 objects:v30 count:16];
      v16 = &unk_2851429C0;
    }

    while (v3);
  }

  else
  {
    v16 = &unk_2851429C0;
  }

LABEL_22:

  return v16;
}

void sub_23EB18CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23EB1CC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23EB1D03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23EB1E428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23EB1F3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v19 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23EB20514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

double ARPMicroLocationSimilarity(void *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&UUID_NULL];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  if (v7)
  {
    v11 = v7;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [v6 objectForKeyedSubscript:v14];
        [v15 doubleValue];
        v17 = v16;
        [v15 doubleValue];
        v19 = v18;
        if (([v14 isEqual:v5] & 1) == 0)
        {
          v20 = [v4 objectForKeyedSubscript:v14];
          if (v20)
          {
            [v15 doubleValue];
            v22 = v21;
            [v20 doubleValue];
            v10 = v10 + v22 * v23;
          }
        }

        v9 = v9 + v17 * v19;
      }

      v11 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v11);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = v4;
  v25 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    v8 = 0.0;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [v24 objectForKeyedSubscript:{*(*(&v34 + 1) + 8 * j), v34}];
        [v29 doubleValue];
        v31 = v30;
        [v29 doubleValue];
        v8 = v8 + v31 * v32;
      }

      v26 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v26);
  }

  return v10 / (sqrt(v9) * sqrt(v8));
}

void sub_23EB21CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23EB22E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

__CFString *ARPFeedbackTypeDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_278C648D0 + a1);
  }
}

void ARPDonateFeedback(unint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CFE208] knowledgeStore];
  ARPDonateFeedbackToKnowledgeStore(a1, v8, v5, v7);

  objc_autoreleasePoolPop(v6);
}

void ARPDonateFeedbackToKnowledgeStore(unint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = ARPFeedbackLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (a1 > 3)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = *(&off_278C648D0 + a1);
    }

    *buf = 138412802;
    v39 = v11;
    v40 = 2112;
    v41 = v28;
    v42 = 2112;
    v43 = v7;
    _os_log_impl(&dword_23EB15000, v10, OS_LOG_TYPE_INFO, "Donating airplay prediction feedback, type: '%@', subtype: %@, outputDeviceIDs: %@", buf, 0x20u);
  }

  if (v7)
  {
    v12 = [v7 count];
    if (v28)
    {
      if (v12 && [v28 length])
      {
        v13 = a1;
        v26 = v8;
        v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v14 = v7;
        v15 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v32;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v32 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v31 + 1) + 8 * i);
              if ([v19 length])
              {
                v20 = [MEMORY[0x277CFE130] outputDeviceID];
                v35[0] = v20;
                v36[0] = v19;
                v21 = [MEMORY[0x277CFE130] subtype];
                v35[1] = v21;
                v36[1] = v28;
                v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

                v23 = MEMORY[0x277CFE1D8];
                v24 = [MEMORY[0x277CFE298] airplayPredictionStream];
                v25 = [v23 eventWithStream:v24 startDate:v9 endDate:v9 categoryIntegerValue:v13 metadata:v22];

                [v27 addObject:v25];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
          }

          while (v16);
        }

        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __ARPDonateFeedbackToKnowledgeStore_block_invoke_2;
        v29[3] = &unk_278C648B0;
        v8 = v26;
        v30 = v26;
        [v30 saveObjects:v27 tracker:&__block_literal_global_6 responseQueue:0 withCompletion:v29];
      }
    }
  }
}

void __ARPDonateFeedbackToKnowledgeStore_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = v5;
  if (v4)
  {
    v7 = ARPFeedbackLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __ARPDonateFeedbackToKnowledgeStore_block_invoke_2_cold_1();
    }
  }
}

void ARPCollectAndSendAnalyticsEvents(void *a1, void *a2)
{
  v261[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = _os_activity_create(&dword_23EB15000, "CoreDuet: ARPCollectAndSendAnalyticsEvents", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[1] = 0;
  state.opaque[0] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  IsEventUsed = AnalyticsIsEventUsed();
  if (IsEventUsed)
  {
    v7 = v3;
    v191 = v4;
    v8 = v4;
    v9 = [MEMORY[0x277CFE298] appUsageStream];
    v256 = v9;
    v10 = [MEMORY[0x277CFE298] nowPlayingStream];
    v257 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v256 count:2];

    v12 = MEMORY[0x277CFE260];
    v13 = [v8 startDate];
    v14 = [v8 endDate];
    v15 = [v12 predicateForEventsWithStartInDateRangeFromAfter:v13 to:v14];

    v229 = v15;
    v16 = [MEMORY[0x277CFE1E0] eventQueryWithPredicate:v15 eventStreams:v11 offset:0 limit:0 sortDescriptors:0];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPFeedback.m"];
    v18 = [v17 stringByAppendingFormat:@":%d", 46];
    [v16 setClientName:v18];

    [v16 setTracker:&__block_literal_global_215];
    [v16 setGroupByProperties:&unk_2851429F0];
    [v16 setResultType:3];
    v261[0] = 0;
    v19 = [v7 executeQuery:v16 error:v261];
    v20 = v261[0];
    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v22 = v21;
    v190 = v3;
    if (v20)
    {
      v23 = ARPLog(v21);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [ARPCorrelationTask longFormVideoAppBundleIDs];
      }

      v24 = v229;
    }

    else
    {
      v223 = v11;
      v226 = v7;
      v23 = [getAVSystemControllerClass() sharedAVSystemController];
      v240 = 0u;
      v241 = 0u;
      v242 = 0u;
      v243 = 0u;
      v220 = v19;
      v26 = [v19 valueForKey:@"valueString"];
      v27 = [v26 countByEnumeratingWithState:&v240 objects:&state count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v241;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v241 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v240 + 1) + 8 * i);
            if ([v23 hasRouteSharingPolicyLongFormVideo:v31])
            {
              [v22 addObject:v31];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v240 objects:&state count:16];
        }

        while (v28);
      }

      v11 = v223;
      v7 = v226;
      v24 = v229;
      v19 = v220;
    }

    v32 = [v22 allObjects];

    v34 = ARPFeedbackLog(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      ARPCollectAndSendAnalyticsEvents_cold_2();
    }

    v201 = v7;
    v35 = v32;
    v224 = v8;
    v36 = [MEMORY[0x277CFE298] appUsageStream];
    v261[0] = v36;
    v37 = [MEMORY[0x277CFE298] nowPlayingStream];
    v261[1] = v37;
    v221 = [MEMORY[0x277CBEA60] arrayWithObjects:v261 count:2];

    v218 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
    v38 = MEMORY[0x277CFE260];
    v39 = [MEMORY[0x277CFE298] appUsageStream];
    v40 = [v39 name];
    v41 = [v38 predicateForEventsWithStreamName:v40];

    v42 = MEMORY[0x277CFE260];
    v43 = [MEMORY[0x277CFE298] nowPlayingStream];
    v44 = [v43 name];
    v45 = [v42 predicateForEventsWithStreamName:v44];

    v46 = MEMORY[0x277CFE260];
    v47 = [MEMORY[0x277CFE248] playing];
    v48 = [v46 predicateForObjectsWithMetadataKey:v47 andIntegerValue:1];

    v49 = MEMORY[0x277CCA920];
    v212 = v48;
    context = v45;
    v260[0] = v45;
    v260[1] = v48;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v260 count:2];
    v51 = [v49 andPredicateWithSubpredicates:v50];

    v52 = MEMORY[0x277CCA920];
    v216 = v41;
    v259[0] = v41;
    v259[1] = v51;
    v210 = v51;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v259 count:2];
    v54 = [v52 orPredicateWithSubpredicates:v53];

    v192 = v35;
    v55 = [MEMORY[0x277CFE260] predicateForEventsWithStringValueInValues:v35];
    v56 = MEMORY[0x277CFE260];
    v57 = v224;
    v58 = [v224 startDate];
    v59 = [v224 endDate];
    v60 = [v56 predicateForEventsWithStartInDateRangeFromAfter:v58 to:v59];

    v62 = v218;
    v61 = v221;

    v63 = MEMORY[0x277CCA920];
    v204 = v60;
    v206 = v55;
    v256 = v60;
    v257 = v54;
    v208 = v54;
    v258 = v55;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v256 count:3];
    v65 = [v63 andPredicateWithSubpredicates:v64];

    v66 = MEMORY[0x277CFE1E0];
    v255 = v218;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v255 count:1];
    v202 = v65;
    v68 = [v66 eventQueryWithPredicate:v65 eventStreams:v221 offset:0 limit:0 sortDescriptors:v67];

    v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPFeedback.m"];
    v70 = [v69 stringByAppendingFormat:@":%d", 91];
    [v68 setClientName:v70];

    [v68 setTracker:&__block_literal_global_221];
    [v68 setResultType:2];
    v244 = 0;
    v199 = v68;
    v71 = [v201 executeQuery:v68 error:&v244];
    v72 = v244;
    v195 = v71;
    v197 = v72;
    if (v72)
    {
      v73 = ARPLog(v72);
      v4 = v191;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        ARPCollectAndSendAnalyticsEvents_cold_3();
      }

      v74 = 0;
      v25 = v192;
    }

    else
    {
      v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v240 = 0u;
      v241 = 0u;
      v242 = 0u;
      v243 = 0u;
      v228 = v71;
      v156 = [v228 countByEnumeratingWithState:&v240 objects:&state count:16];
      v230 = v74;
      if (v156)
      {
        v157 = v156;
        v158 = *v241;
        do
        {
          for (j = 0; j != v157; ++j)
          {
            if (*v241 != v158)
            {
              objc_enumerationMutation(v228);
            }

            v160 = *(*(&v240 + 1) + 8 * j);
            v161 = objc_alloc(MEMORY[0x277CCA970]);
            v162 = [v160 startDate];
            v163 = [v162 dateByAddingTimeInterval:-30.0];
            v164 = [v160 endDate];
            v165 = [v164 dateByAddingTimeInterval:30.0];
            v166 = [v161 initWithStartDate:v163 endDate:v165];

            v74 = v230;
            [v230 addObject:v166];
          }

          v157 = [v228 countByEnumeratingWithState:&v240 objects:&state count:16];
        }

        while (v157);
      }

      if ([v74 count])
      {
        v75 = v216;
        if ([v74 count] == 1)
        {
          v4 = v191;
          v25 = v192;
          v61 = v221;
          v57 = v224;
          v62 = v218;
        }

        else
        {
          v167 = 0;
          do
          {
            v168 = objc_autoreleasePoolPush();
            v169 = [v74 objectAtIndexedSubscript:v167];
            v170 = [v74 objectAtIndexedSubscript:v167 + 1];
            if ([v169 intersectsDateInterval:v170])
            {
              v171 = [v169 startDate];
              v172 = [v170 startDate];
              v173 = [v171 earlierDate:v172];

              v174 = [v169 endDate];
              v175 = [v170 endDate];
              v176 = [v174 laterDate:v175];

              v74 = v230;
              v177 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v173 endDate:v176];
              [v230 setObject:v177 atIndexedSubscript:v167];
              [v230 removeObjectAtIndex:v167 + 1];
            }

            else
            {
              ++v167;
            }

            objc_autoreleasePoolPop(v168);
          }

          while (v167 < [v74 count] - 1);
          v4 = v191;
          v25 = v192;
          v61 = v221;
          v57 = v224;
          v75 = v216;
          v62 = v218;
        }

        goto LABEL_25;
      }

      v4 = v191;
      v25 = v192;
      v61 = v221;
      v57 = v224;
      v62 = v218;
    }

    v75 = v216;
LABEL_25:
    v76 = [v74 copy];
    v77 = v74;
    v78 = v76;

    if ([v78 count])
    {
      v79 = objc_alloc_init(MEMORY[0x277CCA978]);
      [v79 setTimeStyle:3];
      [v79 setDateStyle:1];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        ARPCollectAndSendAnalyticsEvents_cold_4(v78, v79, v34);
      }

      v193 = v79;

      v80 = [MEMORY[0x277CFE298] nowPlayingStream];
      v253[0] = v80;
      v81 = [MEMORY[0x277CFE298] appUsageStream];
      v253[1] = v81;
      v82 = [MEMORY[0x277CFE298] microLocationVisitStream];
      v253[2] = v82;
      v83 = [MEMORY[0x277CFE298] airplayPredictionStream];
      v253[3] = v83;
      v189 = [MEMORY[0x277CBEA60] arrayWithObjects:v253 count:4];

      v188 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
      v84 = MEMORY[0x277CFE260];
      v85 = [MEMORY[0x277CFE298] appUsageStream];
      v86 = [v85 name];
      v87 = [v84 predicateForEventsWithStreamName:v86];

      v88 = MEMORY[0x277CFE260];
      v89 = [MEMORY[0x277CFE298] nowPlayingStream];
      v90 = [v89 name];
      v91 = [v88 predicateForEventsWithStreamName:v90];

      v92 = MEMORY[0x277CFE260];
      v93 = [MEMORY[0x277CFE248] playing];
      v94 = [v92 predicateForObjectsWithMetadataKey:v93 andIntegerValue:1];

      v95 = [MEMORY[0x277CFE260] predicateForEventsWithMinimumDuration:30.0];
      v96 = MEMORY[0x277CCA920];
      v184 = v94;
      v185 = v91;
      v252[0] = v91;
      v183 = v95;
      v252[1] = v95;
      v252[2] = v94;
      v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v252 count:3];
      v98 = [v96 andPredicateWithSubpredicates:v97];

      v99 = MEMORY[0x277CCA920];
      v186 = v87;
      v251[0] = v87;
      v182 = v98;
      v251[1] = v98;
      v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v251 count:2];
      v101 = [v99 orPredicateWithSubpredicates:v100];

      v102 = [MEMORY[0x277CFE260] predicateForEventsWithStringValueInValues:v192];
      v103 = MEMORY[0x277CCA920];
      v180 = v102;
      v181 = v101;
      v250[0] = v101;
      v250[1] = v102;
      v104 = [MEMORY[0x277CBEA60] arrayWithObjects:v250 count:2];
      v105 = [v103 andPredicateWithSubpredicates:v104];

      v106 = MEMORY[0x277CFE260];
      v107 = [MEMORY[0x277CFE298] microLocationVisitStream];
      v108 = [v107 name];
      v109 = [v106 predicateForEventsWithStreamName:v108];

      v110 = MEMORY[0x277CFE260];
      v111 = [MEMORY[0x277CFE298] airplayPredictionStream];
      v112 = [v111 name];
      v113 = [v110 predicateForEventsWithStreamName:v112];

      v114 = MEMORY[0x277CCA920];
      v178 = v109;
      v249[0] = v109;
      v249[1] = v113;
      v179 = v105;
      v249[2] = v105;
      v115 = [MEMORY[0x277CBEA60] arrayWithObjects:v249 count:3];
      v200 = [v114 orPredicateWithSubpredicates:v115];

      v116 = MEMORY[0x277CFE1E0];
      v248 = v188;
      v117 = [MEMORY[0x277CBEA60] arrayWithObjects:&v248 count:1];
      v118 = [v116 eventQueryWithPredicate:0 eventStreams:v189 offset:0 limit:512 sortDescriptors:v117];

      v119 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPFeedback.m"];
      v120 = [v119 stringByAppendingFormat:@":%d", 476];
      [v118 setClientName:v120];

      v198 = v118;
      [v118 setTracker:&__block_literal_global_207];
      v238 = 0u;
      v239 = 0u;
      v236 = 0u;
      v237 = 0u;
      v187 = v78;
      obj = v78;
      v203 = [obj countByEnumeratingWithState:&v236 objects:v247 count:16];
      if (v203)
      {
        v227 = 0;
        v196 = *v237;
        do
        {
          v121 = 0;
          do
          {
            if (*v237 != v196)
            {
              objc_enumerationMutation(obj);
            }

            v217 = v121;
            v122 = *(*(&v236 + 1) + 8 * v121);
            contexta = objc_autoreleasePoolPush();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v155 = [v193 stringFromDateInterval:v122];
              LODWORD(state.opaque[0]) = 138412290;
              *(state.opaque + 4) = v155;
              _os_log_debug_impl(&dword_23EB15000, v34, OS_LOG_TYPE_DEBUG, "Collecting analytics events in interval %@", &state, 0xCu);
            }

            v123 = MEMORY[0x277CFE260];
            v124 = [v122 startDate];
            v125 = [v122 endDate];
            v126 = [v123 predicateForEventsWithStartAndEndInDateRangeFrom:v124 to:v125];

            v127 = MEMORY[0x277CCA920];
            v213 = v126;
            v246[0] = v126;
            v246[1] = v200;
            v128 = [MEMORY[0x277CBEA60] arrayWithObjects:v246 count:2];
            v129 = [v127 andPredicateWithSubpredicates:v128];
            [v198 setPredicate:v129];

            v235 = 0;
            v225 = [v201 executeQuery:v198 error:&v235];
            v211 = v235;
            v130 = MEMORY[0x277CCAC30];
            v131 = [MEMORY[0x277CFE298] appUsageStream];
            v132 = [v131 name];
            v133 = [v130 predicateWithFormat:@"stream.name == %@", v132];
            v222 = [v225 filteredArrayUsingPredicate:v133];

            v134 = MEMORY[0x277CCAC30];
            v135 = [MEMORY[0x277CFE298] nowPlayingStream];
            v136 = [v135 name];
            v137 = [v134 predicateWithFormat:@"stream.name == %@", v136];
            v219 = [v225 filteredArrayUsingPredicate:v137];

            v138 = MEMORY[0x277CCAC30];
            v139 = [MEMORY[0x277CFE298] microLocationVisitStream];
            v140 = [v139 name];
            v141 = [v138 predicateWithFormat:@"stream.name == %@", v140];
            v142 = [v225 filteredArrayUsingPredicate:v141];

            v143 = MEMORY[0x277CCAC30];
            v144 = [MEMORY[0x277CFE298] airplayPredictionStream];
            v145 = [v144 name];
            v146 = [v143 predicateWithFormat:@"stream.name == %@", v145];
            v147 = [v225 filteredArrayUsingPredicate:v146];

            v207 = v147;
            v209 = v142;
            v148 = [ARPAnalyticsEvent feedbackEventsFromAppUsageEvents:v222 playingEvents:v219 microLocationEvents:v142 feedbackEvents:v147];
            v231 = 0u;
            v232 = 0u;
            v233 = 0u;
            v234 = 0u;
            v205 = v148;
            v149 = [v148 valueForKey:@"analyticsDictionary"];
            v150 = [v149 countByEnumeratingWithState:&v231 objects:v245 count:16];
            if (v150)
            {
              v151 = v150;
              v152 = *v232;
              do
              {
                for (k = 0; k != v151; ++k)
                {
                  if (*v232 != v152)
                  {
                    objc_enumerationMutation(v149);
                  }

                  v154 = *(*(&v231 + 1) + 8 * k);
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                  {
                    LODWORD(state.opaque[0]) = 138412290;
                    *(state.opaque + 4) = v154;
                    _os_log_impl(&dword_23EB15000, v34, OS_LOG_TYPE_INFO, "Sending analytics event: %@", &state, 0xCu);
                  }

                  AnalyticsSendEvent();
                }

                v227 += v151;
                v151 = [v149 countByEnumeratingWithState:&v231 objects:v245 count:16];
              }

              while (v151);
            }

            objc_autoreleasePoolPop(contexta);
            v121 = v217 + 1;
          }

          while (v217 + 1 != v203);
          v203 = [obj countByEnumeratingWithState:&v236 objects:v247 count:16];
        }

        while (v203);
      }

      else
      {
        v227 = 0;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        ARPCollectAndSendAnalyticsEvents_cold_5(v227, v34);
      }

      v4 = v191;
      v25 = v192;
      v78 = v187;
      v34 = v193;
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      ARPCollectAndSendAnalyticsEvents_cold_6(v34);
    }

    v3 = v190;
    goto LABEL_64;
  }

  v25 = ARPFeedbackLog(IsEventUsed);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_log_impl(&dword_23EB15000, v25, OS_LOG_TYPE_INFO, "Skipping analytics event collection because event is not used", &state, 2u);
  }

LABEL_64:
}

uint64_t HomeKitLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = HomeKitLibraryCore_frameworkLibrary;
  v6 = HomeKitLibraryCore_frameworkLibrary;
  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278C648F0;
    v8 = *off_278C64900;
    v9 = 0;
    v4[3] = _sl_dlopen();
    HomeKitLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_23EB260D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HomeKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  HomeKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HomeKitLibrary()
{
  v3 = 0;
  v0 = HomeKitLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

uint64_t getHMServiceTypeMicrophoneSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeMicrophoneSymbolLoc_ptr;
  v6 = getHMServiceTypeMicrophoneSymbolLoc_ptr;
  if (!getHMServiceTypeMicrophoneSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeMicrophone");
    getHMServiceTypeMicrophoneSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB262B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeMicrophoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeMicrophone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeMicrophoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getHMServiceTypeSpeakerSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeSpeakerSymbolLoc_ptr;
  v6 = getHMServiceTypeSpeakerSymbolLoc_ptr;
  if (!getHMServiceTypeSpeakerSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeSpeaker");
    getHMServiceTypeSpeakerSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB263F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeSpeakerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeSpeaker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeSpeakerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getHMServiceTypeDoorbellSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeDoorbellSymbolLoc_ptr;
  v6 = getHMServiceTypeDoorbellSymbolLoc_ptr;
  if (!getHMServiceTypeDoorbellSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeDoorbell");
    getHMServiceTypeDoorbellSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB26530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeDoorbellSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeDoorbell");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeDoorbellSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getHMServiceTypeTemperatureSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeTemperatureSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeTemperatureSensorSymbolLoc_ptr;
  if (!getHMServiceTypeTemperatureSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeTemperatureSensor");
    getHMServiceTypeTemperatureSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB2666C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeTemperatureSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeTemperatureSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeTemperatureSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeTemperatureSensor()
{
  HMServiceTypeTemperatureSensorSymbolLoc = getHMServiceTypeTemperatureSensorSymbolLoc();
  if (!HMServiceTypeTemperatureSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeTemperatureSensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeAirQualitySensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeAirQualitySensorSymbolLoc_ptr;
  v6 = getHMServiceTypeAirQualitySensorSymbolLoc_ptr;
  if (!getHMServiceTypeAirQualitySensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeAirQualitySensor");
    getHMServiceTypeAirQualitySensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB267DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeAirQualitySensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeAirQualitySensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeAirQualitySensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeAirQualitySensor()
{
  HMServiceTypeAirQualitySensorSymbolLoc = getHMServiceTypeAirQualitySensorSymbolLoc();
  if (!HMServiceTypeAirQualitySensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeAirQualitySensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeHumiditySensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeHumiditySensorSymbolLoc_ptr;
  v6 = getHMServiceTypeHumiditySensorSymbolLoc_ptr;
  if (!getHMServiceTypeHumiditySensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeHumiditySensor");
    getHMServiceTypeHumiditySensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB2694C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeHumiditySensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeHumiditySensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeHumiditySensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeHumiditySensor()
{
  HMServiceTypeHumiditySensorSymbolLoc = getHMServiceTypeHumiditySensorSymbolLoc();
  if (!HMServiceTypeHumiditySensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeHumiditySensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeCarbonMonoxideSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeCarbonMonoxideSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeCarbonMonoxideSensorSymbolLoc_ptr;
  if (!getHMServiceTypeCarbonMonoxideSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeCarbonMonoxideSensor");
    getHMServiceTypeCarbonMonoxideSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB26ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeCarbonMonoxideSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeCarbonMonoxideSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeCarbonMonoxideSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeCarbonMonoxideSensor()
{
  HMServiceTypeCarbonMonoxideSensorSymbolLoc = getHMServiceTypeCarbonMonoxideSensorSymbolLoc();
  if (!HMServiceTypeCarbonMonoxideSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeCarbonMonoxideSensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeContactSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeContactSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeContactSensorSymbolLoc_ptr;
  if (!getHMServiceTypeContactSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeContactSensor");
    getHMServiceTypeContactSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB26C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeContactSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeContactSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeContactSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeContactSensor()
{
  HMServiceTypeContactSensorSymbolLoc = getHMServiceTypeContactSensorSymbolLoc();
  if (!HMServiceTypeContactSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeContactSensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeLeakSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeLeakSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeLeakSensorSymbolLoc_ptr;
  if (!getHMServiceTypeLeakSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeLeakSensor");
    getHMServiceTypeLeakSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB26D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeLeakSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeLeakSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeLeakSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeLeakSensor()
{
  HMServiceTypeLeakSensorSymbolLoc = getHMServiceTypeLeakSensorSymbolLoc();
  if (!HMServiceTypeLeakSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeLeakSensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeLightSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeLightSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeLightSensorSymbolLoc_ptr;
  if (!getHMServiceTypeLightSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeLightSensor");
    getHMServiceTypeLightSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB26F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeLightSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeLightSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeLightSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeLightSensor()
{
  HMServiceTypeLightSensorSymbolLoc = getHMServiceTypeLightSensorSymbolLoc();
  if (!HMServiceTypeLightSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeLightSensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeMotionSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeMotionSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeMotionSensorSymbolLoc_ptr;
  if (!getHMServiceTypeMotionSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeMotionSensor");
    getHMServiceTypeMotionSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB2707C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeMotionSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeMotionSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeMotionSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeMotionSensor()
{
  HMServiceTypeMotionSensorSymbolLoc = getHMServiceTypeMotionSensorSymbolLoc();
  if (!HMServiceTypeMotionSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeMotionSensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeOccupancySensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeOccupancySensorSymbolLoc_ptr;
  v6 = getHMServiceTypeOccupancySensorSymbolLoc_ptr;
  if (!getHMServiceTypeOccupancySensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeOccupancySensor");
    getHMServiceTypeOccupancySensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB271EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeOccupancySensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeOccupancySensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeOccupancySensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeOccupancySensor()
{
  HMServiceTypeOccupancySensorSymbolLoc = getHMServiceTypeOccupancySensorSymbolLoc();
  if (!HMServiceTypeOccupancySensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeOccupancySensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeSmokeSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeSmokeSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeSmokeSensorSymbolLoc_ptr;
  if (!getHMServiceTypeSmokeSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeSmokeSensor");
    getHMServiceTypeSmokeSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB2735C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeSmokeSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeSmokeSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeSmokeSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeSmokeSensor()
{
  HMServiceTypeSmokeSensorSymbolLoc = getHMServiceTypeSmokeSensorSymbolLoc();
  if (!HMServiceTypeSmokeSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeSmokeSensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeCarbonDioxideSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeCarbonDioxideSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeCarbonDioxideSensorSymbolLoc_ptr;
  if (!getHMServiceTypeCarbonDioxideSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeCarbonDioxideSensor");
    getHMServiceTypeCarbonDioxideSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB274CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeCarbonDioxideSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeCarbonDioxideSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeCarbonDioxideSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeCarbonDioxideSensor()
{
  HMServiceTypeCarbonDioxideSensorSymbolLoc = getHMServiceTypeCarbonDioxideSensorSymbolLoc();
  if (!HMServiceTypeCarbonDioxideSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeCarbonDioxideSensorSymbolLoc;

  return v1;
}

uint64_t BiomeStreamsLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = BiomeStreamsLibraryCore_frameworkLibrary;
  v6 = BiomeStreamsLibraryCore_frameworkLibrary;
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278C64968;
    v8 = *off_278C64978;
    v9 = 0;
    v4[3] = _sl_dlopen();
    BiomeStreamsLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_23EB2767C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __BiomeStreamsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  BiomeStreamsLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t BiomeStreamsLibrary()
{
  v3 = 0;
  v0 = BiomeStreamsLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

id getBMHomeKitClientAccessoryControlEventClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMHomeKitClientAccessoryControlEventClass_softClass;
  v6 = getBMHomeKitClientAccessoryControlEventClass_softClass;
  if (!getBMHomeKitClientAccessoryControlEventClass_softClass)
  {
    BiomeStreamsLibraryCore(0);
    v4[3] = objc_getClass("BMHomeKitClientAccessoryControlEvent");
    getBMHomeKitClientAccessoryControlEventClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB27878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMHomeKitClientAccessoryControlEventClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore(0);
  result = objc_getClass("BMHomeKitClientAccessoryControlEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMHomeKitClientAccessoryControlEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getBMHomeKitClientActionSetEventClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMHomeKitClientActionSetEventClass_softClass;
  v6 = getBMHomeKitClientActionSetEventClass_softClass;
  if (!getBMHomeKitClientActionSetEventClass_softClass)
  {
    BiomeStreamsLibraryCore(0);
    v4[3] = objc_getClass("BMHomeKitClientActionSetEvent");
    getBMHomeKitClientActionSetEventClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB279D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMHomeKitClientActionSetEventClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore(0);
  result = objc_getClass("BMHomeKitClientActionSetEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMHomeKitClientActionSetEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getBMHomeKitClientMediaAccessoryControlEventClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMHomeKitClientMediaAccessoryControlEventClass_softClass;
  v6 = getBMHomeKitClientMediaAccessoryControlEventClass_softClass;
  if (!getBMHomeKitClientMediaAccessoryControlEventClass_softClass)
  {
    BiomeStreamsLibraryCore(0);
    v4[3] = objc_getClass("BMHomeKitClientMediaAccessoryControlEvent");
    getBMHomeKitClientMediaAccessoryControlEventClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB27B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMHomeKitClientMediaAccessoryControlEventClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore(0);
  result = objc_getClass("BMHomeKitClientMediaAccessoryControlEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMHomeKitClientMediaAccessoryControlEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMHomeKitClientAccessoryControlStreamClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore(0);
  result = objc_getClass("BMHomeKitClientAccessoryControlStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMHomeKitClientAccessoryControlStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMHomeKitClientActionSetStreamClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore(0);
  result = objc_getClass("BMHomeKitClientActionSetStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMHomeKitClientActionSetStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMHomeKitClientMediaAccessoryControlStreamClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore(0);
  result = objc_getClass("BMHomeKitClientMediaAccessoryControlStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMHomeKitClientMediaAccessoryControlStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMBiomeSchedulerClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore(0);
  result = objc_getClass("BMBiomeScheduler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMBiomeSchedulerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMStreamsClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore(0);
  result = objc_getClass("BMStreams");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMStreamsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getBMDKEventStreamClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMDKEventStreamClass_softClass;
  v6 = getBMDKEventStreamClass_softClass;
  if (!getBMDKEventStreamClass_softClass)
  {
    BiomeStreamsLibraryCore(0);
    v4[3] = objc_getClass("BMDKEventStream");
    getBMDKEventStreamClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB27E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMDKEventStreamClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore(0);
  result = objc_getClass("BMDKEventStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMDKEventStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaExperienceLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = MediaExperienceLibraryCore_frameworkLibrary;
  v6 = MediaExperienceLibraryCore_frameworkLibrary;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278C64990;
    v8 = *off_278C649A0;
    v9 = 0;
    v4[3] = _sl_dlopen();
    MediaExperienceLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_23EB27FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaExperienceLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  MediaExperienceLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaExperienceLibrary()
{
  v3 = 0;
  v0 = MediaExperienceLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

Class __getAVSystemControllerClass_block_invoke(uint64_t a1)
{
  MediaExperienceLibraryCore(0);
  result = objc_getClass("AVSystemController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ARPCollectAndSendAnalyticsEvents_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_23EB15000, v0, OS_LOG_TYPE_DEBUG, "Collecting analytics events from long form video bundleIDs: %@", v1, 0xCu);
}

void ARPCollectAndSendAnalyticsEvents_cold_4(void *a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v7 = [a1 firstObject];
  v8 = [v7 startDate];
  v9 = [a1 lastObject];
  v10 = [v9 endDate];
  v11 = [a2 stringFromDate:v8 toDate:v10];
  v12 = 138412546;
  v13 = v6;
  v14 = 2112;
  v15 = v11;
  _os_log_debug_impl(&dword_23EB15000, a3, OS_LOG_TYPE_DEBUG, "Collecting analytics events from %@ date intervals spanning %@", &v12, 0x16u);
}

void ARPCollectAndSendAnalyticsEvents_cold_5(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_23EB15000, a2, OS_LOG_TYPE_DEBUG, "Finished sending %@ analytics events", v4, 0xCu);
}

void getHMServiceTypeMicrophone_cold_1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  AnalyticsIsEventUsed();
}