void sub_23DA02410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 112));
  _Unwind_Resume(a1);
}

void sub_23DA05B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DA05CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DA05E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCACSpokenCommandPresentationClass_block_invoke(uint64_t a1)
{
  SpeechRecognitionCommandAndControlLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CACSpokenCommandPresentation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCACSpokenCommandPresentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCACSpokenCommandPresentationClass_block_invoke_cold_1();
    SpeechRecognitionCommandAndControlLibrary();
  }
}

void SpeechRecognitionCommandAndControlLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SpeechRecognitionCommandAndControlLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SpeechRecognitionCommandAndControlLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278BF0378;
    v3 = 0;
    SpeechRecognitionCommandAndControlLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SpeechRecognitionCommandAndControlLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SpeechRecognitionCommandAndControlLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpeechRecognitionCommandAndControlLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCACLocaleUtilitiesClass_block_invoke(uint64_t a1)
{
  SpeechRecognitionCommandAndControlLibrary();
  result = objc_getClass("CACLocaleUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCACLocaleUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCACLocaleUtilitiesClass_block_invoke_cold_1();
    return __getCACPreferencesClass_block_invoke(v3);
  }

  return result;
}

Class __getCACPreferencesClass_block_invoke(uint64_t a1)
{
  SpeechRecognitionCommandAndControlLibrary();
  result = objc_getClass("CACPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCACPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCACPreferencesClass_block_invoke_cold_1();
    return [(AXSSDocument *)v3 documentWithText:v4, v5];
  }

  return result;
}

void sub_23DA0692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _CheckNodeWord(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v63 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v45 = a2;
  v44 = a3;
  v43 = a6;
  v14 = a9;
  v37 = objc_opt_new();
  +[AXSSDocumentTextRulesetManager sharedManager];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v32 = v59 = 0u;
  obj = [v32 rulesets];
  v35 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v35)
  {
    v34 = *v57;
    do
    {
      v15 = 0;
      do
      {
        if (*v57 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v15;
        v16 = [*(*(&v56 + 1) + 8 * v15) rulesForGranularity:1];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v39 = v16;
        v46 = [v16 countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v46)
        {
          v17 = *v53;
          v38 = *v53;
          do
          {
            for (i = 0; i != v46; ++i)
            {
              if (*v53 != v17)
              {
                objc_enumerationMutation(v39);
              }

              v19 = *(*(&v52 + 1) + 8 * i);
              v20 = [v14 objectForKeyedSubscript:v19];
              v21 = v20;
              if (v20)
              {
                if (a4 <= [v20 integerValue])
                {
                  goto LABEL_26;
                }

                [v14 setObject:0 forKeyedSubscript:v19];
              }

              v51 = 0x7FFFFFFFFFFFFFFFLL;
              v22 = [v19 issuesForWord:v44 atRange:a4 previousWord:a5 previousWordRange:v43 inText:a7 ignoreRuleUntilIndex:{a8, v45, &v51}];
              if (v51 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v23 = [MEMORY[0x277CCABB0] numberWithInteger:?];
                [v14 setObject:v23 forKeyedSubscript:v19];
              }

              if ([v22 count])
              {
                v24 = v14;
                v25 = a4;
                v49 = 0u;
                v50 = 0u;
                v47 = 0u;
                v48 = 0u;
                v26 = v22;
                v27 = [v26 countByEnumeratingWithState:&v47 objects:v60 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = *v48;
                  do
                  {
                    for (j = 0; j != v28; ++j)
                    {
                      if (*v48 != v29)
                      {
                        objc_enumerationMutation(v26);
                      }

                      [*(*(&v47 + 1) + 8 * j) setNode:v13];
                    }

                    v28 = [v26 countByEnumeratingWithState:&v47 objects:v60 count:16];
                  }

                  while (v28);
                }

                [v37 addObjectsFromArray:v26];
                a4 = v25;
                v14 = v24;
                v17 = v38;
              }

LABEL_26:
            }

            v46 = [v39 countByEnumeratingWithState:&v52 objects:v61 count:16];
          }

          while (v46);
        }

        v15 = v36 + 1;
      }

      while (v36 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v35);
  }

  return v37;
}

id AXDocumentConsoleString(void *a1)
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"\t" withString:@"\\t"];

  return v2;
}

uint64_t AXSSDeviceHasHomeButton()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAXDeviceHasHomeButtonSymbolLoc_ptr;
  v8 = getAXDeviceHasHomeButtonSymbolLoc_ptr;
  if (!getAXDeviceHasHomeButtonSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getAXDeviceHasHomeButtonSymbolLoc_block_invoke;
    v4[3] = &unk_278BF0358;
    v4[4] = &v5;
    __getAXDeviceHasHomeButtonSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    AXSSDeviceHasHomeButton_cold_1();
    v3 = v2;
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  return v0();
}

void *__getAXDeviceHasHomeButtonSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278BF03F8;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AXDeviceHasHomeButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXDeviceHasHomeButtonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t AXDeviceTemplateType()
{
  v0 = NSClassFromString(&cfstr_Obdevice.isa);
  if (v0)
  {
    v1 = v0;
    if (objc_opt_respondsToSelector())
    {
      v2 = [(objc_class *)v1 currentDevice];
      if (objc_opt_respondsToSelector())
      {
        v3 = [v2 templateType];

        return v3;
      }

      v19 = AXLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        AXDeviceTemplateType_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    else
    {
      v2 = AXLogCommon();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        AXDeviceTemplateType_cold_1(v2, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      AXDeviceTemplateType_cold_3(v2, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return 0;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_23DA08144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23DA0A998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXVoiceOverServerClass(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getAXVoiceOverServerClass_softClass;
  v9 = getAXVoiceOverServerClass_softClass;
  if (!getAXVoiceOverServerClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getAXVoiceOverServerClass_block_invoke;
    v5[3] = &unk_278BF0358;
    v5[4] = &v6;
    __getAXVoiceOverServerClass_block_invoke(v5, a2);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_23DA0B5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _updateSpeakingRateNotification()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"AXVOTTrainingSpeakingRateSwiftNotification" object:0];
}

id getAXTeachableMomentsManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXTeachableMomentsManagerClass_softClass;
  v7 = getAXTeachableMomentsManagerClass_softClass;
  if (!getAXTeachableMomentsManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAXTeachableMomentsManagerClass_block_invoke;
    v3[3] = &unk_278BF0358;
    v3[4] = &v4;
    __getAXTeachableMomentsManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23DA0B920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXTeachableFeatureBraille()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAXTeachableFeatureBrailleSymbolLoc_ptr;
  v9 = getAXTeachableFeatureBrailleSymbolLoc_ptr;
  if (!getAXTeachableFeatureBrailleSymbolLoc_ptr)
  {
    v1 = AccessibilityUtilitiesLibrary();
    v7[3] = dlsym(v1, "AXTeachableFeatureBraille");
    getAXTeachableFeatureBrailleSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    AXSSDeviceHasHomeButton_cold_1();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

id getAXTeachableFeatureVoiceOver()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAXTeachableFeatureVoiceOverSymbolLoc_ptr;
  v9 = getAXTeachableFeatureVoiceOverSymbolLoc_ptr;
  if (!getAXTeachableFeatureVoiceOverSymbolLoc_ptr)
  {
    v1 = AccessibilityUtilitiesLibrary();
    v7[3] = dlsym(v1, "AXTeachableFeatureVoiceOver");
    getAXTeachableFeatureVoiceOverSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    AXSSDeviceHasHomeButton_cold_1();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

Class __getAXVoiceOverServerClass_block_invoke(uint64_t a1, uint64_t a2)
{
  AccessibilityUtilitiesLibrary();
  result = objc_getClass("AXVoiceOverServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXVoiceOverServerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAXVoiceOverServerClass_block_invoke_cold_1();
    return AccessibilityUtilitiesLibrary();
  }

  return result;
}

uint64_t AccessibilityUtilitiesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278BF04F8;
    v5 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getAXTeachableMomentsManagerClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary();
  result = objc_getClass("AXTeachableMomentsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXTeachableMomentsManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAXTeachableMomentsManagerClass_block_invoke_cold_1();
    return __getAXTeachableFeatureBrailleSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getAXTeachableFeatureBrailleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXTeachableFeatureBraille");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXTeachableFeatureBrailleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXTeachableFeatureVoiceOverSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXTeachableFeatureVoiceOver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXTeachableFeatureVoiceOverSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXDeviceHasHomeButtonSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXDeviceHasHomeButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXDeviceHasHomeButtonSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_23DA0C3E0()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport12SpeakingRate__currentSpeakingRate;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23DA0C488@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SpeakingRate(0);
  result = sub_23DB6EE6C();
  *a2 = result;
  return result;
}

uint64_t sub_23DA0C4C8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SpeakingRate(0);
  result = sub_23DB70CFC();
  *a2 = result;
  return result;
}

uint64_t sub_23DA0C50C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_23DA0C684(v1, &v14);
  v12 = v14;
  v4 = v15;
  v5 = v16;
  v6 = v17;
  v19 = *(v1 + 16);
  v7 = *(&v19 + 1);
  type metadata accessor for NavigationModel(0);
  sub_23DA0CC28(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
  v8 = sub_23DB6EE5C();
  v14 = *v2;
  v18 = v2[2];
  v9 = swift_allocObject();
  v10 = v2[1];
  v9[1] = *v2;
  v9[2] = v10;
  v9[3] = v2[2];
  *a1 = v12;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  *(a1 + 48) = v7;
  *(a1 + 56) = sub_23DA0E2AC;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;

  sub_23DA0E2B4(&v19, v13, &qword_27E2FBD38, &qword_23DB73740);
  sub_23DA0E2B4(&v14, v13, &qword_27E2FBD40, &qword_23DB73748);
  return sub_23DA0E2B4(&v18, v13, &qword_27E2FBD48, &qword_23DB73750);
}

void sub_23DA0C684(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  type metadata accessor for NavigationModel(0);
  sub_23DA0CC28(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);

  v4 = sub_23DB6F39C();
  v6 = v5;
  KeyPath = swift_getKeyPath();
  v8 = [objc_opt_self() mainScreen];
  [v8 bounds];
  v10 = v9;

  if (v10 >= 850.0)
  {
    v12 = [objc_opt_self() currentDevice];
    v13 = [v12 userInterfaceIdiom];

    v11 = v13 == 0;
  }

  else
  {
    v11 = 1;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v11;
}

uint64_t sub_23DA0C7D8()
{
  sub_23DA0E324();
  sub_23DB6F56C();
  return v1;
}

uint64_t sub_23DA0C814(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
  NavigationModel.goHome()();
  type metadata accessor for AXOnboardingModelVoiceOverIOS(0);
  if (swift_dynamicCastClass() || (type metadata accessor for AXOnboardingModelVoiceOverMac(0), (result = swift_dynamicCastClass()) != 0))
  {
    result = [objc_opt_self() voTutorialUsageConfirmed];
    if ((result & 1) == 0)
    {
      v2 = 0;
      return sub_23DABB0B8(&v2);
    }
  }

  return result;
}

uint64_t sub_23DA0C92C()
{
  v0 = sub_23DB6FA6C();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DB6FA5C();
  type metadata accessor for NavigationModel(0);
  swift_allocObject();
  return sub_23DAC2518(v2, 0, 0);
}

uint64_t AXOnboardingPrimaryWindowContentView.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = sub_23DA0C92C;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = result;
  return result;
}

uint64_t AXOnboardingPrimaryWindowContentView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NavigationModel(0);
  sub_23DA0CC28(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
  sub_23DB6F06C();
  type metadata accessor for AXOnboardingModel(0);
  sub_23DA0CC28(&qword_27E2FBC50, type metadata accessor for AXOnboardingModel, &protocol conformance descriptor for AXOnboardingModel);

  v12 = sub_23DB6F1EC();
  v3 = v2;

  v4 = sub_23DB6F1EC();
  v6 = v5;
  v7 = objc_opt_self();
  [v7 getSpeakingRate];
  type metadata accessor for SpeakingRate(0);
  swift_allocObject();
  [v7 getSpeakingRate];
  sub_23DB70A8C();
  MEMORY[0x23EEF6D00](37, 0xE100000000000000);
  swift_beginAccess();
  sub_23DB6EECC();
  swift_endAccess();
  sub_23DA0CC28(&qword_27E2FBC60, type metadata accessor for SpeakingRate, &unk_23DB73704);
  v8 = sub_23DB6F1EC();
  v10 = v9;

  *a1 = v12;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v10;
  return result;
}

uint64_t sub_23DA0CC28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for SpeakingRate(uint64_t a1)
{
  result = qword_27E2FBC78;
  if (!qword_27E2FBC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DA0CCBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NavigationModel(0);
  sub_23DA0CC28(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
  sub_23DB6F06C();
  type metadata accessor for AXOnboardingModel(0);
  sub_23DA0CC28(&qword_27E2FBC50, type metadata accessor for AXOnboardingModel, &protocol conformance descriptor for AXOnboardingModel);

  v12 = sub_23DB6F1EC();
  v3 = v2;

  v4 = sub_23DB6F1EC();
  v6 = v5;
  v7 = objc_opt_self();
  [v7 getSpeakingRate];
  type metadata accessor for SpeakingRate(0);
  swift_allocObject();
  [v7 getSpeakingRate];
  sub_23DB70A8C();
  MEMORY[0x23EEF6D00](37, 0xE100000000000000);
  swift_beginAccess();
  sub_23DB6EECC();
  swift_endAccess();
  sub_23DA0CC28(&qword_27E2FBC60, type metadata accessor for SpeakingRate, &unk_23DB73704);
  v8 = sub_23DB6F1EC();
  v10 = v9;

  *a1 = v12;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v10;
  return result;
}

uint64_t sub_23DA0CF1C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_23DB6F23C();
  }

  else
  {
    sub_23DB6F18C();
  }

  return sub_23DB6F2DC();
}

uint64_t sub_23DA0CF84(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_23DB6F23C();
    sub_23DB6F2DC();
    sub_23DA0D078();
  }

  else
  {
    sub_23DB6F18C();
    sub_23DB6F2DC();
    sub_23DA0CC28(&qword_27E2FBC70, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_23DA0D078()
{
  result = qword_27E2FBC68;
  if (!qword_27E2FBC68)
  {
    sub_23DB6F23C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBC68);
  }

  return result;
}

uint64_t sub_23DA0D0C4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v35 = a5;
  v36 = a6;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v37 = a8;
    v38 = a3;
    v39 = a7;
    v40 = a9;
    v41 = a10;
    v42 = a11;
    v18 = sub_23DB6F23C();
    v19 = *(v18 - 8);
    MEMORY[0x28223BE20](v18);
    v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v44[0] = 0;
      v44[1] = 0xE000000000000000;
      v34 = v11;
      sub_23DB70CEC();

      strcpy(v44, "View.task @ ");
      BYTE5(v44[1]) = 0;
      HIWORD(v44[1]) = -5120;
      MEMORY[0x23EEF6D00](a4, v35);
      MEMORY[0x23EEF6D00](58, 0xE100000000000000);
      v43 = v36;
      v29 = sub_23DB70D9C();
      MEMORY[0x23EEF6D00](v29);
    }

    v30 = sub_23DB70A6C();
    v31 = MEMORY[0x28223BE20](v30);
    (*(v33 + 16))(&v34 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v31);

    sub_23DB6F22C();
    MEMORY[0x23EEF6430](v21, v41, v18, v42);

    return (*(v19 + 8))(v21, v18);
  }

  else
  {
    v22 = sub_23DB6F18C();
    MEMORY[0x28223BE20](v22);
    v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = *(v25 + 20);
    v27 = sub_23DB70A6C();
    (*(*(v27 - 8) + 16))(&v24[v26], a3, v27);
    *v24 = a7;
    *(v24 + 1) = a8;
    MEMORY[0x23EEF6430](v24, a10, v22, a11);
    return sub_23DA0D42C(v24);
  }
}

uint64_t sub_23DA0D42C(uint64_t a1)
{
  v2 = sub_23DB6F18C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DA0D488(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23DB6F9AC();

    return sub_23DB6F2DC();
  }

  else
  {
    sub_23DB6F33C();
    swift_getWitnessTable();
    sub_23DB6F86C();
    sub_23DB6F2DC();
    sub_23DB70B7C();
    swift_getWitnessTable();
    sub_23DB6F33C();
    swift_getWitnessTable();
    sub_23DB6F86C();
    return sub_23DB6F2DC();
  }
}

uint64_t sub_23DA0D5EC(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23DB6F9AC();
    sub_23DB6F2DC();
  }

  else
  {
    sub_23DB6F33C();
    swift_getWitnessTable();
    sub_23DB6F86C();
    sub_23DB6F2DC();
    sub_23DB70B7C();
    swift_getWitnessTable();
    sub_23DB6F33C();
    swift_getWitnessTable();
    sub_23DB6F86C();
    sub_23DB6F2DC();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23DA0D7EC()
{
  v1 = *v0;
  sub_23DB70E0C();
  MEMORY[0x23EEF71C0](v1);
  return sub_23DB70E4C();
}

uint64_t sub_23DA0D860(uint64_t a1)
{
  v2 = *v1;
  sub_23DB70E0C();
  MEMORY[0x23EEF71C0](v2);
  return sub_23DB70E4C();
}

uint64_t sub_23DA0D8D0(uint64_t a1, id *a2)
{
  result = sub_23DB7089C();
  *a2 = 0;
  return result;
}

uint64_t sub_23DA0D948(uint64_t a1, id *a2)
{
  v3 = sub_23DB708AC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23DA0D9C8@<X0>(uint64_t *a1@<X8>)
{
  sub_23DB708BC();
  v2 = sub_23DB7087C();

  *a1 = v2;
  return result;
}

void *sub_23DA0DA20@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23DA0DA38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DB708BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DA0DA64(uint64_t a1)
{
  v2 = sub_23DA0CC28(&qword_27E2FBE30, type metadata accessor for Key, &unk_23DB73B4C);
  v3 = sub_23DA0CC28(&qword_27E2FBE38, type metadata accessor for Key, &unk_23DB73904);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DA0DB20@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23DB7087C();

  *a2 = v3;
  return result;
}

uint64_t sub_23DA0DB68(uint64_t a1)
{
  v2 = sub_23DA0CC28(&qword_27E2FBE20, type metadata accessor for UIAccessibilityPriority, &unk_23DB73A84);
  v3 = sub_23DA0CC28(&qword_27E2FBE28, type metadata accessor for UIAccessibilityPriority, &unk_23DB73A24);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DA0DC24()
{
  v0 = sub_23DB708BC();
  v1 = MEMORY[0x23EEF6D40](v0);

  return v1;
}

uint64_t sub_23DA0DC60(uint64_t a1)
{
  sub_23DB708BC();
  sub_23DB7091C();
}

uint64_t sub_23DA0DCB4(uint64_t a1)
{
  sub_23DB708BC();
  sub_23DB70E0C();
  sub_23DB7091C();
  v1 = sub_23DB70E4C();

  return v1;
}

uint64_t sub_23DA0DD28(void *a1, uint64_t *a2)
{
  v2 = sub_23DB708BC();
  v4 = v3;
  if (v2 == sub_23DB708BC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23DB70DBC();
  }

  return v7 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_23DA0DE1C(uint64_t a1)
{
  sub_23DA0E4A4(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23DA0DEF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DA0DF38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23DA0DF90()
{
  result = qword_27E2FBC98;
  if (!qword_27E2FBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBC98);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23DA0E098(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DA0E0E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DA0E174(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DA0E194(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_23DA0E264()
{

  return swift_deallocObject();
}

uint64_t sub_23DA0E2B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_23DA0E324()
{
  result = qword_27E2FBD58;
  if (!qword_27E2FBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBD58);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23DA0E3E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DA0E404(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_23DA0E4A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_23DA0E4F8()
{
  result = qword_27E2FBD88;
  if (!qword_27E2FBD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBD90, &qword_23DB73860);
    sub_23DA0E5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBD88);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23DA0E5CC()
{
  result = qword_27E2FBD98;
  if (!qword_27E2FBD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBDA0, &qword_23DB73868);
    sub_23DA0E670();
    sub_23DA0E7EC(&qword_27E2FBDE0, &qword_27E2FBDE8, &unk_23DB73888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBD98);
  }

  return result;
}

unint64_t sub_23DA0E670()
{
  result = qword_27E2FBDA8;
  if (!qword_27E2FBDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBDB0, &qword_23DB73870);
    sub_23DA0E6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBDA8);
  }

  return result;
}

unint64_t sub_23DA0E6F4()
{
  result = qword_27E2FBDB8;
  if (!qword_27E2FBDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBDC0, &qword_23DB73878);
    sub_23DA0E798();
    sub_23DA0E7EC(&qword_27E2FBDD0, &qword_27E2FBDD8, &qword_23DB73880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBDB8);
  }

  return result;
}

unint64_t sub_23DA0E798()
{
  result = qword_27E2FBDC8;
  if (!qword_27E2FBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBDC8);
  }

  return result;
}

uint64_t sub_23DA0E7EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DA0EA38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23DB6F55C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23DA0E2B4(v2, &v14 - v9, &qword_27E2FBEF8, &qword_23DB73D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23DB6F25C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23DB70ACC();
    v13 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t BrailleUIVisualView.Line.init(braille:brailleSelection:caption:captionSelection:mathML:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  return result;
}

uint64_t sub_23DA0EC6C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_23DA0ECEC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA0ED68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  return v1;
}

uint64_t sub_23DA0EDE4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA0EE54(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA0EEF8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEB0, &qword_23DB73C30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEA8, &qword_23DB73C28);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA0F098(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEB0, &qword_23DB73C30);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEA8, &qword_23DB73C28);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA0F1D0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEB0, &qword_23DB73C30);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__lines;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEA8, &qword_23DB73C28);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA0F340@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_23DA0F3C0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA0F434()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  return v1;
}

uint64_t sub_23DA0F4B0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA0F520(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA0F5C4;
}

uint64_t sub_23DA0F5C8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC8, &qword_23DB73C88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA0F768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC8, &qword_23DB73C88);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA0F8A0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC8, &qword_23DB73C88);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__focusedIndex;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA0FA10;
}

uint64_t (*sub_23DA0FA6C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA0FB10(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA0FCB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA0FDE8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isList;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA0FF6C@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v6);

  *a4 = v6;
  return result;
}

uint64_t sub_23DA0FFFC(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA10080(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v3);

  return v3;
}

uint64_t sub_23DA10108(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA10174(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

void sub_23DA10218(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_23DA10280(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_23DB6EEDC();
  return swift_endAccess();
}

uint64_t sub_23DA102FC(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA1049C(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_23DB6EEDC();
  return swift_endAccess();
}

uint64_t sub_23DA10514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1064C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isHidden;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

void sub_23DA107BC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_23DB6EEEC();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_23DB6EEEC();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t BrailleUIVisualView.VisualData.deinit()
{
  v1 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__lines;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEA8, &qword_23DB73C28);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__focusedIndex;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isList;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isHidden, v6);
  return v0;
}

uint64_t BrailleUIVisualView.VisualData.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__lines;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEA8, &qword_23DB73C28);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__focusedIndex;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isList;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isHidden, v6);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t sub_23DA10BC8()
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEA8, &qword_23DB73C28);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__lines;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FC270, &unk_23DB74280);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23DB73BA0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 1;
  *(v13 + 72) = 0;
  *(v13 + 80) = 0xE000000000000000;
  *(v13 + 88) = 0;
  *(v13 + 96) = 0;
  *(v13 + 104) = 1;
  *(v13 + 112) = 0;
  *(v13 + 120) = 0;
  v21 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBFA0, &qword_23DB73EA8);
  sub_23DB6EECC();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v14 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__focusedIndex;
  v21 = 0;
  sub_23DB6EECC();
  (*(v5 + 32))(v0 + v14, v7, v4);
  v15 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isList;
  LOBYTE(v21) = 0;
  sub_23DB6EECC();
  v16 = *(v1 + 32);
  v17 = v20;
  v16(v0 + v15, v3, v20);
  v18 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isHidden;
  LOBYTE(v21) = 0;
  sub_23DB6EECC();
  v16(v0 + v18, v3, v17);
  return v0;
}

uint64_t sub_23DA10EE0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BrailleUIVisualView.VisualData(0);
  result = sub_23DB6EE6C();
  *a2 = result;
  return result;
}

uint64_t BrailleUIVisualView.data.getter()
{
  type metadata accessor for BrailleUIVisualView(0);
}

uint64_t sub_23DA10F78(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for BrailleUIVisualView(0) + 20);

  *(v3 + 8) = v2;
  return result;
}

uint64_t BrailleUIVisualView.data.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BrailleUIVisualView(0) + 20);

  *(v3 + 8) = a1;
  return result;
}

uint64_t BrailleUIVisualView.$data.getter()
{
  type metadata accessor for BrailleUIVisualView(0);
  type metadata accessor for BrailleUIVisualView.VisualData(0);
  sub_23DA16ED4(&qword_27E2FBEF0, type metadata accessor for BrailleUIVisualView.VisualData, &protocol conformance descriptor for BrailleUIVisualView.VisualData);

  return sub_23DB6F1FC();
}

uint64_t sub_23DA11110(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BrailleUIVisualView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  swift_storeEnumTagMultiPayload();
  v2 = (a1 + *(type metadata accessor for BrailleUIVisualView(0) + 20));
  type metadata accessor for BrailleUIVisualView.VisualData(0);
  swift_allocObject();
  sub_23DA10BC8();
  sub_23DA16ED4(&qword_27E2FBEF0, type metadata accessor for BrailleUIVisualView.VisualData, &protocol conformance descriptor for BrailleUIVisualView.VisualData);
  result = sub_23DB6F1EC();
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t BrailleUIVisualView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF00, &qword_23DB73D68);
  MEMORY[0x28223BE20](v3);
  v5 = &v35[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF08, &qword_23DB73D70);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35[-v8];
  type metadata accessor for BrailleUIVisualView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v36);

  if (v36)
  {
    v10 = 1;
  }

  else
  {
    *v5 = sub_23DB6F68C();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF10, &qword_23DB73D78);
    sub_23DA11590(v1, &v5[*(v11 + 44)]);
    v12 = sub_23DB6FB5C();
    sub_23DB6EFAC();
    v13 = &v5[*(v3 + 36)];
    *v13 = v12;
    *(v13 + 1) = v14;
    *(v13 + 2) = v15;
    *(v13 + 3) = v16;
    *(v13 + 4) = v17;
    v13[40] = 0;
    sub_23DB705DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF18, &qword_23DB73D80);
    sub_23DA151B8();
    sub_23DA15270();
    sub_23DB700CC();
    sub_23DA17988(v5, &qword_27E2FBF00, &qword_23DB73D68);
    v18 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF50, &qword_23DB73D98) + 36)];
    sub_23DB705BC();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF48, &qword_23DB73D90);
    v20 = &v18[*(v19 + 52)];
    v21 = *(sub_23DB6F32C() + 20);
    v22 = *MEMORY[0x277CE0118];
    v23 = sub_23DB6F63C();
    (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
    __asm { FMOV            V0.2D, #25.0 }

    *v20 = _Q0;
    *&v18[*(v19 + 56)] = 256;
    LOBYTE(v18) = sub_23DB6FB3C();
    sub_23DB6EFAC();
    v29 = &v9[*(v6 + 36)];
    *v29 = v18;
    *(v29 + 1) = v30;
    *(v29 + 2) = v31;
    *(v29 + 3) = v32;
    *(v29 + 4) = v33;
    v29[40] = 0;
    sub_23DA17A54(v9, a1, &qword_27E2FBF08, &qword_23DB73D70);
    v10 = 0;
  }

  return (*(v7 + 56))(a1, v10, 1, v6);
}

void sub_23DA11590(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  v85 = a2;
  v2 = type metadata accessor for BrailleUIVisualView(0);
  v99 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v100 = v3;
  v101 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC088, &qword_23DB74110);
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x28223BE20](v4);
  v104 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v82 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC090, &qword_23DB74118);
  MEMORY[0x28223BE20](v86);
  v9 = &v82 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC098, &qword_23DB74120);
  v96 = *(v10 - 8);
  v97 = v10;
  MEMORY[0x28223BE20](v10);
  v84 = &v82 - v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC0A0, &qword_23DB74128);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v82 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC0A8, &qword_23DB74130);
  MEMORY[0x28223BE20](v87);
  v90 = &v82 - v13;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC0B0, &qword_23DB74138);
  MEMORY[0x28223BE20](v88);
  v93 = &v82 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC0B8, &qword_23DB74140);
  MEMORY[0x28223BE20](v92);
  v98 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v89 = &v82 - v17;
  MEMORY[0x28223BE20](v18);
  v107 = &v82 - v19;
  v20 = sub_23DB7087C();
  v21 = [objc_opt_self() bundleWithIdentifier_];

  if (v21)
  {
    v22 = sub_23DB6E9FC();
    v24 = v23;

    v108 = v22;
    v109 = v24;
    sub_23DA16E70();
    v25 = sub_23DB6FD8C();
    v27 = v26;
    v29 = v28;
    sub_23DB6FC8C();
    v30 = sub_23DB6FD3C();
    v32 = v31;
    v34 = v33;
    v36 = v35;

    sub_23DA16EC4(v25, v27, v29 & 1);

    v83 = v30;
    v108 = v30;
    v109 = v32;
    v82 = v32;
    LOBYTE(v110) = v34 & 1;
    v111 = v36;
    v37 = *MEMORY[0x277CDFA10];
    v38 = sub_23DB6F25C();
    (*(*(v38 - 8) + 104))(v9, v37, v38);
    sub_23DA16ED4(&qword_27E2FC0C8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    if (sub_23DB7086C())
    {
      v39 = sub_23DA17B80(&qword_27E2FC0D0, &qword_27E2FC090, &qword_23DB74118, MEMORY[0x277D84470]);
      v40 = MEMORY[0x277CE0BD8];
      v41 = v84;
      v42 = v9;
      v43 = v86;
      sub_23DB6FECC();
      sub_23DA17988(v42, &qword_27E2FC090, &qword_23DB74118);
      sub_23DA16EC4(v83, v82, v34 & 1);

      sub_23DB6FBFC();
      v108 = v40;
      v109 = v43;
      v110 = MEMORY[0x277CE0BC8];
      v111 = v39;
      swift_getOpaqueTypeConformance2();
      v44 = v91;
      v45 = v97;
      sub_23DB6FE1C();
      (*(v96 + 8))(v41, v45);
      v46 = sub_23DB701AC();
      v47 = v90;
      (*(v94 + 32))(v90, v44, v95);
      *&v47[*(v87 + 36)] = v46;
      LOBYTE(v46) = sub_23DB6FB4C();
      sub_23DB6EFAC();
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v56 = v47;
      v57 = v93;
      sub_23DA17A54(v56, v93, &qword_27E2FC0A8, &qword_23DB74130);
      v58 = v57 + *(v88 + 36);
      *v58 = v46;
      *(v58 + 8) = v49;
      *(v58 + 16) = v51;
      *(v58 + 24) = v53;
      *(v58 + 32) = v55;
      *(v58 + 40) = 0;
      LOBYTE(v46) = sub_23DB6FB3C();
      sub_23DB6EFAC();
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v67 = v89;
      sub_23DA17A54(v57, v89, &qword_27E2FC0B0, &qword_23DB74138);
      v68 = v67 + *(v92 + 36);
      *v68 = v46;
      *(v68 + 8) = v60;
      *(v68 + 16) = v62;
      *(v68 + 24) = v64;
      *(v68 + 32) = v66;
      *(v68 + 40) = 0;
      v69 = v107;
      sub_23DA17A54(v67, v107, &qword_27E2FC0B8, &qword_23DB74140);
      v70 = v101;
      sub_23DA16F1C(v102, v101);
      v71 = (*(v99 + 80) + 16) & ~*(v99 + 80);
      v72 = swift_allocObject();
      sub_23DA170A4(v70, v72 + v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC0D8, &qword_23DB74148);
      sub_23DA17188(&qword_27E2FC0E0, &qword_27E2FC0D8, &qword_23DB74148, sub_23DA17204);
      v73 = v103;
      sub_23DB7051C();
      v74 = v98;
      sub_23DA0E2B4(v69, v98, &qword_27E2FC0B8, &qword_23DB74140);
      v76 = v104;
      v75 = v105;
      v77 = *(v105 + 16);
      v78 = v106;
      v77(v104, v73, v106);
      v79 = v85;
      sub_23DA0E2B4(v74, v85, &qword_27E2FC0B8, &qword_23DB74140);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC158, &qword_23DB74188);
      v77((v79 + *(v80 + 48)), v76, v78);
      v81 = *(v75 + 8);
      v81(v73, v78);
      sub_23DA17988(v107, &qword_27E2FC0B8, &qword_23DB74140);
      v81(v76, v78);
      sub_23DA17988(v74, &qword_27E2FC0B8, &qword_23DB74140);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23DA11FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC0F0, &qword_23DB74150);
  v73 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v70 = (&v68 - v6);
  v7 = sub_23DB6F25C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  result = sub_23DA125F4();
  v15 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v71 = v5;
  v72 = a3;
  type metadata accessor for BrailleUIVisualView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v75);

  v69 = *&v75[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v75);

  v16 = *(*&v75[0] + 16);

  if (v15 >= v16)
  {
LABEL_5:
    v19 = 1;
    v20 = v72;
    v21 = v71;
    return (*(v73 + 56))(v20, v19, 1, v21);
  }

  sub_23DA0EA38(v13);
  (*(v8 + 104))(v10, *MEMORY[0x277CDFA10], v7);
  sub_23DA16ED4(&qword_27E2FC160, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v17 = sub_23DB7084C();
  v18 = *(v8 + 8);
  v18(v10, v7);
  v18(v13, v7);
  if (v17)
  {
    if (a1 > 2)
    {
      goto LABEL_5;
    }
  }

  else if (a1 >= 7)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v75);

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if (v15 < *(*&v75[0] + 16))
  {
    v22 = v69 == v15;
    v23 = (*&v75[0] + 96 * v15);
    v24 = v23[3];
    v75[0] = v23[2];
    v75[1] = v24;
    v25 = v23[4];
    v26 = v23[5];
    v27 = v23[7];
    v75[4] = v23[6];
    v75[5] = v27;
    v75[2] = v25;
    v75[3] = v26;
    sub_23DA17518(v75, v74);

    v28 = sub_23DB6F68C();
    v29 = v70;
    *v70 = v28;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC168, &qword_23DB74190);
    sub_23DA12930(v75, v22, v29 + *(v30 + 44));
    sub_23DA17550(v75);
    *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC130, &qword_23DB74170) + 36)) = 256;
    LOBYTE(v22) = sub_23DB6FB3C();
    sub_23DB6EFAC();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC120, &qword_23DB74168) + 36);
    *v39 = v22;
    *(v39 + 8) = v32;
    *(v39 + 16) = v34;
    *(v39 + 24) = v36;
    *(v39 + 32) = v38;
    *(v39 + 40) = 0;
    sub_23DB701AC();
    v40 = sub_23DB701FC();

    v41 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC110, &qword_23DB74160) + 36));
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC150, &qword_23DB74180);
    v43 = v41 + *(v42 + 52);
    v44 = *(sub_23DB6F32C() + 20);
    v45 = *MEMORY[0x277CE0118];
    v46 = sub_23DB6F63C();
    (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
    __asm { FMOV            V0.2D, #18.0 }

    *v43 = _Q0;
    *v41 = v40;
    *(v41 + *(v42 + 56)) = 256;
    LOBYTE(v42) = sub_23DB6FB2C();
    sub_23DB6EFAC();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC100, &qword_23DB74158) + 36);
    *v60 = v42;
    *(v60 + 8) = v53;
    *(v60 + 16) = v55;
    *(v60 + 24) = v57;
    *(v60 + 32) = v59;
    *(v60 + 40) = 0;
    LOBYTE(v42) = sub_23DB6FB9C();
    sub_23DB6EFAC();
    v61 = v71;
    v62 = v29 + *(v71 + 36);
    *v62 = v42;
    *(v62 + 8) = v63;
    *(v62 + 16) = v64;
    *(v62 + 24) = v65;
    *(v62 + 32) = v66;
    *(v62 + 40) = 0;
    v67 = v72;
    sub_23DA17A54(v29, v72, &qword_27E2FC0F0, &qword_23DB74150);
    v21 = v61;
    v20 = v67;
    v19 = 0;
    return (*(v73 + 56))(v20, v19, 1, v21);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_23DA125F4()
{
  v0 = sub_23DB6F25C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  type metadata accessor for BrailleUIVisualView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v17);

  v7 = v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v17);

  v9 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
    sub_23DA0EA38(v6);
    (*(v1 + 104))(v3, *MEMORY[0x277CDFA10], v0);
    sub_23DA16ED4(&qword_27E2FC160, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v10 = sub_23DB7084C();
    v11 = *(v1 + 8);
    v11(v3, v0);
    result = (v11)(v6, v0);
    if (v10)
    {
      v12 = 2;
    }

    else
    {
      v12 = 6;
    }

    while (v12 >= 1)
    {
      if (__OFSUB__(v9, v7))
      {
        __break(1u);
        goto LABEL_15;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C(&v17);

      v13 = *(v17 + 16);

      if (v9 - v7 >= v13)
      {
        break;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C(&v17);

      v14 = *(v17 + 16);

      v15 = v9 < v14;
      if (v9 < v14)
      {
        ++v9;
      }

      v12 -= v15;
      if (v7 >= 1)
      {
        --v12;
        --v7;
      }
    }

    if (v9 < v7)
    {
      goto LABEL_16;
    }

    return v7;
  }

  return result;
}

uint64_t sub_23DA12930@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a2;
  v35 = a3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC170, &qword_23DB74198);
  MEMORY[0x28223BE20](v33);
  v6 = (&v30 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC178, &qword_23DB741A0);
  MEMORY[0x28223BE20](v7 - 8);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v31 = &v30 - v10;
  v11 = sub_23DB6E9BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC180, &qword_23DB741A8);
  MEMORY[0x28223BE20](v32);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  sub_23DA12E28(*a1, *(a1 + 16), *(a1 + 24), *(a1 + 32), 8429794, 0xA300000000000000, v14);
  v20 = v3;
  sub_23DA137F8(v14, v3, v19);
  v21 = *(v12 + 8);
  v21(v14, v11);
  if (*(a1 + 88))
  {
    v22 = *(a1 + 80);
    *&v36 = 0xD0000000000000F2;
    *(&v36 + 1) = 0x800000023DB86570;
    MEMORY[0x23EEF6D00](v22);

    MEMORY[0x23EEF6D00](0xD000000000000015, 0x800000023DB86670);

    v23 = v36;
    sub_23DB7062C();
    sub_23DB6F10C();
    *v6 = v23;
    v6[1] = xmmword_23DB73BB0;
    v6[2] = xmmword_23DB73BB0;
    v24 = v37;
    v6[3] = v36;
    v6[4] = v24;
    v6[5] = v38;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC188, &qword_23DB741B0);
    sub_23DA17580();
    sub_23DA1760C();
    v25 = v31;
    sub_23DB6F79C();
  }

  else
  {
    sub_23DA12E28(*(a1 + 40), *(a1 + 56), *(a1 + 64), *(a1 + 72), 32, 0xE100000000000000, v14);
    sub_23DA137F8(v14, v20 & 1, v16);
    v21(v14, v11);
    sub_23DA0E2B4(v16, v6, &qword_27E2FC180, &qword_23DB741A8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC188, &qword_23DB741B0);
    sub_23DA17580();
    sub_23DA1760C();
    v25 = v31;
    sub_23DB6F79C();
    sub_23DA17988(v16, &qword_27E2FC180, &qword_23DB741A8);
  }

  sub_23DA0E2B4(v19, v16, &qword_27E2FC180, &qword_23DB741A8);
  v26 = v34;
  sub_23DA0E2B4(v25, v34, &qword_27E2FC178, &qword_23DB741A0);
  v27 = v35;
  sub_23DA0E2B4(v16, v35, &qword_27E2FC180, &qword_23DB741A8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC210, &qword_23DB741F0);
  sub_23DA0E2B4(v26, v27 + *(v28 + 48), &qword_27E2FC178, &qword_23DB741A0);
  sub_23DA17988(v25, &qword_27E2FC178, &qword_23DB741A0);
  sub_23DA17988(v19, &qword_27E2FC180, &qword_23DB741A8);
  sub_23DA17988(v26, &qword_27E2FC178, &qword_23DB741A0);
  return sub_23DA17988(v16, &qword_27E2FC180, &qword_23DB741A8);
}

uint64_t sub_23DA12E28@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(char *, uint64_t)@<X2>, uint64_t (*a4)(char *, uint64_t)@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v73 = a6;
  v74 = a7;
  v84 = a3;
  v85 = a4;
  v87 = a1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC220, &qword_23DB74260);
  MEMORY[0x28223BE20](v77);
  v78 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC228, &qword_23DB74268);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v67 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC230, &qword_23DB74270);
  MEMORY[0x28223BE20](v83);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v82 = &v67 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC238, &qword_23DB74278);
  MEMORY[0x28223BE20](v76);
  v79 = &v67 - v19;
  v20 = sub_23DB6E9BC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v72 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23DB6E99C();
  v86 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v88 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v67 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v67 - v29;
  v31 = sub_23DB6EA1C();
  MEMORY[0x28223BE20](v31 - 8);

  sub_23DB6EA0C();
  result = sub_23DB6E9CC();
  if ((a5 & 1) == 0)
  {
    v68 = v21;
    v70 = v16;
    sub_23DB6E93C();
    sub_23DA16ED4(&qword_27E2FC240, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
    v75 = v30;
    v33 = v84;
    sub_23DB6EA3C();
    v35 = v86 + 8;
    v34 = *(v86 + 8);
    v34(v27, v23);
    sub_23DB6E93C();
    v36 = v85;
    v69 = v20;
    sub_23DB6EA3C();
    v87 = v35;
    v34(v27, v23);
    v71 = a8;
    if (v33 == v36)
    {
      sub_23DB6E9AC();
      v37 = v75;
      v38 = sub_23DB6E98C();
      v34(v27, v23);
      v39 = v34;
      if (v38)
      {

        sub_23DB6EA0C();
        v40 = v72;
        sub_23DB6E9CC();
        sub_23DB6E97C();
        (*(v68 + 8))(v40, v69);
      }

      sub_23DA16ED4(&qword_27E2FC248, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
      result = sub_23DB7085C();
      v41 = v70;
      v42 = v86;
      if (result)
      {
        v43 = *(v86 + 16);
        v44 = v82;
        v43(v82, v37, v23);
        v45 = v83;
        v43((v44 + *(v83 + 48)), v37, v23);
        sub_23DA0E2B4(v44, v41, &qword_27E2FC230, &qword_23DB74270);
        v46 = *(v45 + 48);
        v47 = *(v42 + 32);
        v48 = v79;
        v47(v79, v41, v23);
        v39((v41 + v46), v23);
        sub_23DA17ABC(v44, v41);
        v47((v48 + *(v76 + 36)), v41 + *(v45 + 48), v23);
        v39(v41, v23);
        v49 = v81;
        sub_23DB6FD4C();
        v50 = sub_23DB6FD5C();
        (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
        sub_23DA17B80(&qword_27E2FC260, &qword_27E2FC238, &qword_23DB74278, MEMORY[0x277D83660]);
        v51 = sub_23DB6E9DC();
        v52 = v39;
        v53 = v75;
        v54 = v51;
        sub_23DA0E2B4(v49, v80, &qword_27E2FC228, &qword_23DB74268);
        sub_23DA17BC8();
        sub_23DB6EA2C();
        sub_23DA17988(v49, &qword_27E2FC228, &qword_23DB74268);
        v54(v90, 0);
        sub_23DA17988(v48, &qword_27E2FC238, &qword_23DB74278);
        v55 = v88;
LABEL_9:
        v52(v55, v23);
        return v52(v53, v23);
      }

      __break(1u);
    }

    else
    {
      v85 = v34;
      sub_23DA16ED4(&qword_27E2FC248, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
      v53 = v75;
      v56 = v88;
      result = sub_23DB7085C();
      if (result)
      {
        v57 = v86;
        v58 = *(v86 + 16);
        v59 = v82;
        v58(v82, v53, v23);
        v60 = v83;
        v58((v59 + *(v83 + 48)), v56, v23);
        v61 = v70;
        sub_23DA0E2B4(v59, v70, &qword_27E2FC230, &qword_23DB74270);
        v62 = *(v60 + 48);
        v63 = *(v57 + 32);
        v64 = v78;
        v63(v78, v61, v23);
        v52 = v85;
        v85((v61 + v62), v23);
        sub_23DA17ABC(v59, v61);
        v63((v64 + *(v77 + 36)), v61 + *(v60 + 48), v23);
        v52(v61, v23);
        v65 = sub_23DB701BC();
        sub_23DA17B80(&qword_27E2FC250, &qword_27E2FC220, &qword_23DB74260, MEMORY[0x277D83D30]);
        v66 = sub_23DB6E9DC();
        v89 = v65;
        sub_23DA17B2C();
        sub_23DB6EA2C();
        v66(v90, 0);
        v55 = v88;
        sub_23DA17988(v64, &qword_27E2FC220, &qword_23DB74260);
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23DA137F8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v45 = a2;
  v50 = a3;
  v5 = sub_23DB6E9BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC218, &qword_23DB741F8);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v10 = &v44[-v9];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC1B8, &qword_23DB741C0);
  MEMORY[0x28223BE20](v46);
  v12 = &v44[-v11];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC1A8, &qword_23DB741B8);
  v13 = MEMORY[0x28223BE20](v47);
  v15 = &v44[-v14];
  (*(v6 + 16))(v8, a1, v5, v13);
  v16 = sub_23DB6FD7C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (v3)
  {
    v23 = 3;
  }

  else
  {
    v23 = 1;
  }

  KeyPath = swift_getKeyPath();
  v25 = sub_23DB6FC8C();
  v26 = swift_getKeyPath();
  v54 = v20 & 1;
  v53 = 0;
  *&v55 = v16;
  *(&v55 + 1) = v18;
  LOBYTE(v56) = v20 & 1;
  *(&v56 + 1) = v22;
  *&v57 = KeyPath;
  *(&v57 + 1) = v23;
  LOBYTE(v58) = 0;
  *(&v58 + 1) = v26;
  *&v59 = v25;
  sub_23DB6FBFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC1C0, &qword_23DB741C8);
  sub_23DA17818();
  sub_23DB6FE1C();
  v51[2] = v57;
  v51[3] = v58;
  v52 = v59;
  v51[1] = v56;
  v51[0] = v55;
  sub_23DA17988(v51, &qword_27E2FC1C0, &qword_23DB741C8);
  if (v45)
  {
    v27 = sub_23DB701EC();
  }

  else
  {
    v27 = sub_23DB701AC();
  }

  v28 = v27;
  (*(v48 + 32))(v12, v10, v49);
  *&v12[*(v46 + 36)] = v28;
  sub_23DB7063C();
  sub_23DB6F34C();
  sub_23DA17A54(v12, v15, &qword_27E2FC1B8, &qword_23DB741C0);
  v29 = &v15[*(v47 + 36)];
  v30 = v60;
  v29[4] = v59;
  v29[5] = v30;
  v29[6] = v61;
  v31 = v56;
  *v29 = v55;
  v29[1] = v31;
  v32 = v58;
  v29[2] = v57;
  v29[3] = v32;
  LOBYTE(v28) = sub_23DB6FB2C();
  sub_23DB6EFAC();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v50;
  sub_23DA17A54(v15, v50, &qword_27E2FC1A8, &qword_23DB741B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC180, &qword_23DB741A8);
  v43 = v41 + *(result + 36);
  *v43 = v28;
  *(v43 + 8) = v34;
  *(v43 + 16) = v36;
  *(v43 + 24) = v38;
  *(v43 + 32) = v40;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_23DA13C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF18, &qword_23DB73D80) + 36);
  sub_23DB705AC();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF48, &qword_23DB73D90);
  v6 = (v4 + *(v5 + 52));
  v7 = *(sub_23DB6F32C() + 20);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_23DB6F63C();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #25.0 }

  *v6 = _Q0;
  *(v4 + *(v5 + 56)) = 256;
  return sub_23DA0E2B4(a1, a2, &qword_27E2FBF00, &qword_23DB73D68);
}

uint64_t sub_23DA13E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  sub_23DB70A3C();
  v5[21] = sub_23DB70A2C();
  v7 = sub_23DB70A1C();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x2822009F8](sub_23DA13EBC, v7, v6);
}

uint64_t sub_23DA13EBC()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(MEMORY[0x277CE3828]) init];
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23DA14004;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC078, &qword_23DB74100);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23DA14274;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 takeSnapshotWithConfiguration:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DA14004()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_23DA141FC;
  }

  else
  {
    v5 = sub_23DA14134;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23DA14134()
{
  v1 = v0[24];

  v2 = v0[18];
  v3 = UIImageJPEGRepresentation(v2, 1.0);

  if (v3)
  {
    v4 = v0[20];
    v5 = sub_23DB6EA5C();
    v7 = v6;

    v8 = v4 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent;
    v9 = *(v4 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent + 16);
    v10 = *(v4 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    sub_23DA16D64(v9, v10);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_23DA141FC()
{
  v1 = *(v0 + 192);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23DA14274(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC080, &qword_23DB74108);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_23DA1434C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC070, &qword_23DB740C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23DA0E2B4(a3, v22 - v9, &qword_27E2FC070, &qword_23DB740C0);
  v11 = sub_23DB70A6C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23DA17988(v10, &qword_27E2FC070, &qword_23DB740C0);
  }

  else
  {
    sub_23DB70A5C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23DB70A1C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23DB708EC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23DA17988(a3, &qword_27E2FC070, &qword_23DB740C0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23DA17988(a3, &qword_27E2FC070, &qword_23DB740C0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23DA145F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_23DB70A3C();
  v5[4] = sub_23DB70A2C();
  v7 = sub_23DB70A1C();

  return MEMORY[0x2822009F8](sub_23DA14690, v7, v6);
}

uint64_t sub_23DA14690()
{
  v1 = *(v0 + 24);

  *(swift_allocObject() + 16) = v1;
  v2 = objc_allocWithZone(MEMORY[0x277CE3810]);
  v3 = v1;
  v4 = [v2 init];
  sub_23DB70B6C();

  v5 = *(v0 + 8);

  return v5();
}

void sub_23DA14768(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v4 = sub_23DB70ABC();
    sub_23DA168D8();
    log = sub_23DB70B5C();
    if (os_log_type_enabled(log, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136315138;
      swift_getErrorValue();
      v7 = sub_23DB70DFC();
      v9 = sub_23DB5EC5C(v7, v8, &v14);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_23D9FF000, log, v4, "Error creating PDF... %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x23EEF7D90](v6, -1, -1);
      MEMORY[0x23EEF7D90](v5, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v10 = a4 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent;
    v11 = *(a4 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent + 32);
    v12 = *(a4 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent + 40);
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    sub_23DA16098(a1, a2);

    sub_23DA16D64(v11, v12);
  }
}

uint64_t sub_23DA148FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC070, &qword_23DB740C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23DA0E2B4(a3, v25 - v10, &qword_27E2FC070, &qword_23DB740C0);
  v12 = sub_23DB70A6C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23DA17988(v11, &qword_27E2FC070, &qword_23DB740C0);
  }

  else
  {
    sub_23DB70A5C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23DB70A1C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23DB708EC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23DA17988(a3, &qword_27E2FC070, &qword_23DB740C0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23DA17988(a3, &qword_27E2FC070, &qword_23DB740C0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_23DA14D2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NemethView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23DA14DE8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC058, &qword_23DB740B8);
  sub_23DB6FA0C();
  [a1 setNavigationDelegate_];

  v2 = sub_23DB7087C();
}

void *sub_23DA14EA4@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = type metadata accessor for NemethView.Coordinator();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator__htmlString];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v10[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent];
  *v12 = v4;
  *(v12 + 1) = v3;
  *(v12 + 2) = v5;
  *(v12 + 3) = v6;
  *(v12 + 4) = v8;
  *(v12 + 5) = v7;

  sub_23DA16098(v5, v6);
  sub_23DA16098(v8, v7);
  v14.receiver = v10;
  v14.super_class = v9;
  result = objc_msgSendSuper2(&v14, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_23DA14FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DA16884();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23DA15018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DA16884();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23DA1507C(uint64_t a1)
{
  sub_23DA16884();
  sub_23DB6F75C();
  __break(1u);
}

uint64_t sub_23DA150EC(uint64_t a1)
{
  v2 = sub_23DB6F25C();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23DB6F3FC();
}

unint64_t sub_23DA151B8()
{
  result = qword_27E2FBF20;
  if (!qword_27E2FBF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBF00, &qword_23DB73D68);
    sub_23DA17B80(&qword_27E2FBF28, &qword_27E2FBF30, &qword_23DB73D88, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBF20);
  }

  return result;
}

unint64_t sub_23DA15270()
{
  result = qword_27E2FBF38;
  if (!qword_27E2FBF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBF18, &qword_23DB73D80);
    sub_23DA151B8();
    sub_23DA17B80(&qword_27E2FBF40, &qword_27E2FBF48, &qword_23DB73D90, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBF38);
  }

  return result;
}

uint64_t sub_23DA15414@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for BrailleUIVisualView(0) + 20) + 8);
}

uint64_t sub_23DA15478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FBF58, &unk_23DB73E30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23DA15558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FBF58, &unk_23DB73E30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23DA15620(uint64_t a1)
{
  sub_23DA156A4(319);
  if (v1 <= 0x3F)
  {
    sub_23DA156FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DA156A4(uint64_t a1)
{
  if (!qword_27E2FBF78)
  {
    sub_23DB6F25C();
    v1 = sub_23DB6F05C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2FBF78);
    }
  }
}

void sub_23DA156FC(uint64_t a1)
{
  if (!qword_27E2FBF80)
  {
    type metadata accessor for BrailleUIVisualView.VisualData(255);
    sub_23DA16ED4(&qword_27E2FBEF0, type metadata accessor for BrailleUIVisualView.VisualData, &protocol conformance descriptor for BrailleUIVisualView.VisualData);
    v1 = sub_23DB6F21C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2FBF80);
    }
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_23DA157AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DA157F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23DA15864(uint64_t a1)
{
  sub_23DA15D30(319);
  if (v1 <= 0x3F)
  {
    sub_23DA15D94(319, &qword_27E2FBFA8, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      sub_23DA15D94(319, &qword_27E2FBFB0, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23DA15D30(uint64_t a1)
{
  if (!qword_27E2FBF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBFA0, &qword_23DB73EA8);
    v1 = sub_23DB6EF2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2FBF98);
    }
  }
}

void sub_23DA15D94(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23DB6EF2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23DA15E48()
{
  result = qword_27E2FC040;
  if (!qword_27E2FC040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBF08, &qword_23DB73D70);
    sub_23DA15ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC040);
  }

  return result;
}

unint64_t sub_23DA15ED4()
{
  result = qword_27E2FC048;
  if (!qword_27E2FC048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBF50, &qword_23DB73D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBF00, &qword_23DB73D68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBF18, &qword_23DB73D80);
    sub_23DA151B8();
    sub_23DA15270();
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FBF40, &qword_27E2FBF48, &qword_23DB73D90, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC048);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t sub_23DA16044()
{
  result = qword_27E2FC050;
  if (!qword_27E2FC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC050);
  }

  return result;
}

uint64_t sub_23DA16098(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23DA160EC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23DA161E4;

  return v6(a1);
}

uint64_t sub_23DA161E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23DA162DC@<X0>(uint64_t a1@<X8>)
{
  result = sub_23DB6F50C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23DA16340(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC070, &qword_23DB740C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = &v1[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator__htmlString];
  result = *&v1[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator__htmlString];
  v8 = &v1[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent];
  if (result != *&v1[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent] || *&v1[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator__htmlString + 8] != *&v1[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent + 8])
  {
    result = sub_23DB70DBC();
    if ((result & 1) == 0)
    {
      v10 = sub_23DB70A6C();
      v11 = *(*(v10 - 8) + 56);
      v11(v5, 1, 1, v10);
      sub_23DB70A3C();
      v12 = a1;
      v13 = v1;
      v14 = sub_23DB70A2C();
      v15 = swift_allocObject();
      v16 = MEMORY[0x277D85700];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = v12;
      v15[5] = v13;
      sub_23DA1434C(0, 0, v5, &unk_23DB740D0, v15);

      v11(v5, 1, 1, v10);
      v17 = v12;
      v18 = v13;
      v19 = sub_23DB70A2C();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = MEMORY[0x277D85700];
      v20[4] = v17;
      v20[5] = v18;
      sub_23DA148FC(0, 0, v5, &unk_23DB740E0, v20);

      v21 = *(v8 + 1);
      *v6 = *v8;
      *(v6 + 1) = v21;
    }
  }

  return result;
}

void sub_23DA16568(uint64_t a1, const char *a2, ...)
{
  v3 = sub_23DB70ABC();
  sub_23DA168D8();
  log = sub_23DB70B5C();
  if (os_log_type_enabled(log, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_23DB70DFC();
    v8 = sub_23DB5EC5C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_23D9FF000, log, v3, a2, v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EEF7D90](v5, -1, -1);
    MEMORY[0x23EEF7D90](v4, -1, -1);
  }

  else
  {
  }
}

id sub_23DA166B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE3858]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277CE3830]) init];
  v2 = objc_allocWithZone(MEMORY[0x277CE3838]);
  v3 = sub_23DB7087C();
  v4 = [v2 initWithSource:v3 injectionTime:1 forMainFrameOnly:1];

  [v1 addUserScript_];
  [v0 setUserContentController_];
  v5 = [objc_allocWithZone(MEMORY[0x277CE3850]) initWithFrame:v0 configuration:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  [v7 setOpaque_];
  v9 = [v7 scrollView];
  v10 = [v6 clearColor];
  [v9 setBackgroundColor_];

  return v7;
}

unint64_t sub_23DA16884()
{
  result = qword_27E2FC060;
  if (!qword_27E2FC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC060);
  }

  return result;
}

unint64_t sub_23DA168D8()
{
  result = qword_27E2FC068;
  if (!qword_27E2FC068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2FC068);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_23DA16974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23DA16A34;

  return sub_23DA13E24(a1, v4, v5, v7, v6);
}

uint64_t sub_23DA16A34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23DA16B70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23DA16A34;

  return sub_23DA145F8(a1, v4, v5, v7, v6);
}

uint64_t sub_23DA16C30()
{

  return swift_deallocObject();
}

uint64_t sub_23DA16C68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DA17C24;

  return sub_23DA160EC(a1, v4);
}

uint64_t sub_23DA16D20()
{

  return swift_deallocObject();
}

uint64_t sub_23DA16D64(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23DA16DC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23DA16E70()
{
  result = qword_27E2FC0C0;
  if (!qword_27E2FC0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC0C0);
  }

  return result;
}

uint64_t sub_23DA16EC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23DA16ED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DA16F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrailleUIVisualView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA16F80()
{
  v1 = *(type metadata accessor for BrailleUIVisualView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_23DB6F25C();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23DA170A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrailleUIVisualView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA17108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BrailleUIVisualView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23DA11FD0(a1, v6, a2);
}

uint64_t sub_23DA17188(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DA17204()
{
  result = qword_27E2FC0E8;
  if (!qword_27E2FC0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC0F0, &qword_23DB74150);
    sub_23DA17290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC0E8);
  }

  return result;
}

unint64_t sub_23DA17290()
{
  result = qword_27E2FC0F8;
  if (!qword_27E2FC0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC100, &qword_23DB74158);
    sub_23DA1731C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC0F8);
  }

  return result;
}

unint64_t sub_23DA1731C()
{
  result = qword_27E2FC108;
  if (!qword_27E2FC108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC110, &qword_23DB74160);
    sub_23DA173D4();
    sub_23DA17B80(&qword_27E2FC148, &qword_27E2FC150, &qword_23DB74180, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC108);
  }

  return result;
}

unint64_t sub_23DA173D4()
{
  result = qword_27E2FC118;
  if (!qword_27E2FC118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC120, &qword_23DB74168);
    sub_23DA17460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC118);
  }

  return result;
}

unint64_t sub_23DA17460()
{
  result = qword_27E2FC128;
  if (!qword_27E2FC128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC130, &qword_23DB74170);
    sub_23DA17B80(&qword_27E2FC138, &qword_27E2FC140, &qword_23DB74178, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC128);
  }

  return result;
}

unint64_t sub_23DA17580()
{
  result = qword_27E2FC190;
  if (!qword_27E2FC190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC188, &qword_23DB741B0);
    sub_23DA16044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC190);
  }

  return result;
}

unint64_t sub_23DA1760C()
{
  result = qword_27E2FC198;
  if (!qword_27E2FC198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC180, &qword_23DB741A8);
    sub_23DA17698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC198);
  }

  return result;
}

unint64_t sub_23DA17698()
{
  result = qword_27E2FC1A0;
  if (!qword_27E2FC1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC1A8, &qword_23DB741B8);
    sub_23DA17724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC1A0);
  }

  return result;
}

unint64_t sub_23DA17724()
{
  result = qword_27E2FC1B0;
  if (!qword_27E2FC1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC1B8, &qword_23DB741C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC1C0, &qword_23DB741C8);
    sub_23DA17818();
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FC200, &qword_27E2FC208, &qword_23DB7CCC0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC1B0);
  }

  return result;
}

unint64_t sub_23DA17818()
{
  result = qword_27E2FC1C8;
  if (!qword_27E2FC1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC1C0, &qword_23DB741C8);
    sub_23DA178D0();
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC1C8);
  }

  return result;
}

unint64_t sub_23DA178D0()
{
  result = qword_27E2FC1D0;
  if (!qword_27E2FC1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC1D8, &qword_23DB741D0);
    sub_23DA17B80(&qword_27E2FC1E0, &qword_27E2FC1E8, &qword_23DB741D8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC1D0);
  }

  return result;
}

uint64_t sub_23DA17988(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23DA179E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_23DB6F50C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23DA17A54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23DA17ABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC230, &qword_23DB74270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DA17B2C()
{
  result = qword_27E2FC258;
  if (!qword_27E2FC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC258);
  }

  return result;
}

uint64_t sub_23DA17B80(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DA17BC8()
{
  result = qword_27E2FC268;
  if (!qword_27E2FC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC268);
  }

  return result;
}

uint64_t AXOnboardingButton.init(_:contentLabel:role:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  v12 = type metadata accessor for AXOnboardingButton(0);
  result = sub_23DA17CE8(a5, a8 + *(v12 + 24));
  v14 = (a8 + *(v12 + 28));
  *v14 = a6;
  v14[1] = a7;
  return result;
}

uint64_t type metadata accessor for AXOnboardingButton(uint64_t a1)
{
  result = qword_27E2FC288;
  if (!qword_27E2FC288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DA17CE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC280, &qword_23DB74290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AXOnboardingButton.body.getter()
{
  v1 = type metadata accessor for AXOnboardingButton(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC280, &qword_23DB74290);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = v0[1];
  v11[0] = *v0;
  v11[1] = v6;
  sub_23DA17EF0(v0 + *(v2 + 32), v11 - v7);
  sub_23DA17F60(v0, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_23DA17FC8(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_23DA16E70();

  return sub_23DB703DC();
}

uint64_t sub_23DA17EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC280, &qword_23DB74290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA17F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXOnboardingButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA17FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXOnboardingButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA1804C(uint64_t a1)
{
  v2 = v1;
  v3 = a1 - 8;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC280, &qword_23DB74290);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = v2[1];
  v12[0] = *v2;
  v12[1] = v7;
  sub_23DA17EF0(v2 + *(v3 + 32), v12 - v8);
  sub_23DA17F60(v2, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_23DA17FC8(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_23DA16E70();

  return sub_23DB703DC();
}

uint64_t sub_23DA181F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC280, &qword_23DB74290);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23DA182C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC280, &qword_23DB74290);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23DA18374(uint64_t a1)
{
  sub_23DA18420();
  if (v1 <= 0x3F)
  {
    sub_23DA18470(319);
    if (v2 <= 0x3F)
    {
      sub_23DA184C8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23DA18420()
{
  if (!qword_27E2FC298)
  {
    v0 = sub_23DB70B7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FC298);
    }
  }
}

void sub_23DA18470(uint64_t a1)
{
  if (!qword_27E2FC2A0)
  {
    sub_23DB6EF9C();
    v1 = sub_23DB70B7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2FC2A0);
    }
  }
}

unint64_t sub_23DA184C8()
{
  result = qword_27E2FC2A8;
  if (!qword_27E2FC2A8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E2FC2A8);
  }

  return result;
}

unint64_t sub_23DA1851C()
{
  result = qword_27E2FC2B0;
  if (!qword_27E2FC2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC2B8, &qword_23DB74308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC2B0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for AXOnboardingButton(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  v4 = sub_23DB6EF9C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_23DA18740@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v5 = sub_23DB6EA8C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_23DA187CC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23DB6EA8C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_23DA188E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v4 = sub_23DB6EA8C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_23DA1896C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23DA40770;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23DA18B30(v4, v5);
}

uint64_t sub_23DA18A0C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23DA40738;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_23DA18B30(v3, v4);
  return sub_23DA18BA0(v8, v9);
}

uint64_t sub_23DA18AD4()
{
  v1 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v2 = *v1;
  sub_23DA18B30(*v1, v1[1]);
  return v2;
}

uint64_t sub_23DA18B30(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23DA18B40(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_23DA18BA0(v6, v7);
}

uint64_t sub_23DA18BA0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23DA18C10(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_23DA18C7C()
{
  v1 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t (*sub_23DA18DAC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA18E50(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA18FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA19128(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__superTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t (*sub_23DA192F0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA19394(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA19534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1966C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__subTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA19820(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA1989C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA19940(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2E8, &qword_23DB74420);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA19AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2E8, &qword_23DB74420);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA19C18(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2E8, &qword_23DB74420);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__text;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA19D88@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(a2);
}

uint64_t sub_23DA19E04(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2F8, &qword_23DB74470);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_23DA0E2B4(a1, &v10 - v7, &qword_27E2FC2F8, &qword_23DB74470);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DA0E2B4(v8, v5, &qword_27E2FC2F8, &qword_23DB74470);

  sub_23DB6EF1C();
  return sub_23DA17988(v8, &qword_27E2FC2F8, &qword_23DB74470);
}

uint64_t sub_23DA19F34@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(a1);
}

uint64_t sub_23DA19FB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2F8, &qword_23DB74470);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DA0E2B4(a1, v4, &qword_27E2FC2F8, &qword_23DB74470);

  sub_23DB6EF1C();
  return sub_23DA17988(a1, &qword_27E2FC2F8, &qword_23DB74470);
}

uint64_t (*sub_23DA1A0A4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1A148(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC308, &qword_23DB74480);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC300, &qword_23DB74478);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA1A2E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC308, &qword_23DB74480);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC300, &qword_23DB74478);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1A420(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC308, &qword_23DB74480);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__attributedText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC300, &qword_23DB74478);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t (*sub_23DA1A5E8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA0F5C4;
}

uint64_t sub_23DA1A68C(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA1A82C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1A964(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__footerText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA0FA10;
}

uint64_t (*sub_23DA1AAFC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1ABA0(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA1AD40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1AE78(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__shouldDisplay;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t (*sub_23DA1B040(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1B0E4(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA1B284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1B3BC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__tocTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t (*sub_23DA1B584(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1B628(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA1B7C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1B900(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__isPrimaryTOC;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

double sub_23DA1BA84@<D0>(_OWORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v6);

  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_23DA1BB14(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA1BBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA1BC3C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1BCE0(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA1BE80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1BFB8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__iconName;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA1C128@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_23DA1C1A8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA1C224()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  return v1;
}

uint64_t sub_23DA1C2A0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA1C310(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1C3B4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC348, &qword_23DB74640);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC340, &qword_23DB74638);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA1C554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC348, &qword_23DB74640);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC340, &qword_23DB74638);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1C68C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC348, &qword_23DB74640);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__subPages;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC340, &qword_23DB74638);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t (*sub_23DA1C868(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1C90C(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA1CAAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1CBE4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__isBeingDisplayed;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA1CE30@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v7 = (*a1 + *a2);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *a5 = a4;
  a5[1] = v10;
}

uint64_t sub_23DA1CEB4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = (*a2 + *a6);
  swift_beginAccess();
  *v13 = a7;
  v13[1] = v12;
}

uint64_t sub_23DA1CF54(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_23DA1CFC8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

uint64_t Page.init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = a7;
  v87 = a8;
  v84 = a5;
  v85 = a6;
  v82 = a3;
  v83 = a4;
  v80 = a1;
  v81 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC340, &qword_23DB74638);
  v10 = *(v9 - 8);
  v89 = v9;
  v90 = v10;
  MEMORY[0x28223BE20](v9);
  v73 = v66 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v88 = v66 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC300, &qword_23DB74478);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v14 = v66 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2F8, &qword_23DB74470);
  MEMORY[0x28223BE20](v68);
  v16 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v66 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v78 = *(v20 - 8);
  v21 = v78;
  MEMORY[0x28223BE20](v20);
  v23 = v66 - v22;
  sub_23DB6EA7C();
  v24 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_defaults;
  *(v8 + v24) = [objc_opt_self() standardUserDefaults];
  v25 = (v8 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  *v25 = nullsub_1;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__superTitle;
  v95 = 0;
  v96 = 0;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v27 = *(v21 + 32);
  v27(v8 + v26, v23, v20);
  v91 = v27;
  v28 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__subTitle;
  v95 = 0;
  v96 = 0;
  sub_23DB6EECC();
  v27(v8 + v28, v23, v20);
  v29 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__attributedText;
  v76 = sub_23DB6E9BC();
  v30 = *(v76 - 8);
  v75 = *(v30 + 56);
  v77 = v30 + 56;
  v75(v19, 1, 1, v76);
  v74 = v19;
  v79 = v16;
  sub_23DA0E2B4(v19, v16, &qword_27E2FC2F8, &qword_23DB74470);
  sub_23DB6EECC();
  sub_23DA17988(v19, &qword_27E2FC2F8, &qword_23DB74470);
  (*(v69 + 32))(v8 + v29, v14, v70);
  v31 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__footerText;
  v95 = 0;
  v96 = 0;
  sub_23DB6EECC();
  v32 = v91;
  v91(v8 + v31, v23, v20);
  v33 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__tipHeaderText;
  v95 = 0;
  v96 = 0;
  sub_23DB6EECC();
  v32(v8 + v33, v23, v20);
  v66[1] = v21 + 32;
  v34 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__tipBodyText;
  v95 = 0;
  v96 = 0;
  sub_23DB6EECC();
  v32(v8 + v34, v23, v20);
  v35 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__shouldDisplay;
  LOBYTE(v95) = 1;
  v36 = v88;
  sub_23DB6EECC();
  v69 = *(v71 + 32);
  v37 = v72;
  (v69)(v8 + v35, v36, v72);
  v38 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__tocTitle;
  v95 = 0;
  v96 = 0;
  sub_23DB6EECC();
  v67 = v20;
  v39 = v91;
  v91(v8 + v38, v23, v20);
  v40 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__isPrimaryTOC;
  LOBYTE(v95) = 0;
  sub_23DB6EECC();
  v41 = v36;
  v42 = v69;
  (v69)(v8 + v40, v41, v37);
  v43 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__iconName;
  v71 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__iconName;
  v95 = 0;
  v96 = 0;
  sub_23DB6EECC();
  v39(v8 + v43, v23, v20);
  v44 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__subPages;
  v95 = 0;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC370, &qword_23DB74698);
  v45 = v73;
  sub_23DB6EECC();
  (*(v90 + 32))(v8 + v44, v45, v89);
  v46 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__read;
  LOBYTE(v95) = 0;
  v47 = v88;
  sub_23DB6EECC();
  v42(v8 + v46, v47, v37);
  v48 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__isBeingDisplayed;
  LOBYTE(v95) = 0;
  sub_23DB6EECC();
  v42(v8 + v48, v47, v37);
  v49 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__shouldAutoAdvance;
  LOBYTE(v95) = 0;
  sub_23DB6EECC();
  v42(v8 + v49, v47, v37);
  v50 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__timerAnnouncement;
  v95 = 0;
  v96 = 0;
  sub_23DB6EECC();
  v51 = v23;
  v52 = v67;
  v91(v8 + v50, v51, v67);
  v53 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__focusHeader;
  LOBYTE(v95) = 0;
  sub_23DB6EECC();
  v42(v8 + v53, v47, v37);
  v54 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__shouldDisableKeyboard;
  LOBYTE(v95) = 0;
  sub_23DB6EECC();
  v42(v8 + v54, v47, v37);
  v55 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v56 = sub_23DB6EA8C();
  v57 = *(v56 - 8);
  v58 = v80;
  (*(v57 + 24))(v8 + v55, v80, v56);
  swift_endAccess();
  v59 = (v8 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  v60 = v82;
  *v59 = v81;
  v59[1] = v60;
  swift_beginAccess();
  v93 = v83;
  v94 = v84;
  sub_23DB6EECC();
  swift_endAccess();
  swift_beginAccess();
  (*(v90 + 8))(v8 + v44, v89);
  v93 = v85;
  sub_23DB6EECC();
  swift_endAccess();
  v61 = v71;
  swift_beginAccess();
  (*(v78 + 8))(v8 + v61, v52);
  v93 = v86;
  v94 = v87;
  sub_23DB6EECC();
  swift_endAccess();
  v62 = (v8 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  *v62 = nullsub_1;
  v62[1] = 0;
  v63 = (v8 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  *v63 = nullsub_1;
  v63[1] = 0;
  v64 = v74;
  v75(v74, 1, 1, v76);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DA0E2B4(v64, v79, &qword_27E2FC2F8, &qword_23DB74470);

  sub_23DB6EF1C();
  (*(v57 + 8))(v58, v56);
  sub_23DA17988(v64, &qword_27E2FC2F8, &qword_23DB74470);
  return v8;
}

uint64_t static Page.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23DB6EA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, a1 + v11, v4);
  v13 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v12(v7, a2 + v13, v4);
  LOBYTE(a2) = sub_23DB6EA6C();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  return a2 & 1;
}

NSObject *sub_23DA1DD00()
{
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v16[0]) = 0;

  sub_23DB6EF1C();
  v1 = sub_23DB70AAC();
  result = AXLogCommon();
  if (result)
  {
    v3 = result;
    if (os_log_type_enabled(result, v1))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v16[0] = v5;
      *v4 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_23DB73BA0;
      v7 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
      swift_beginAccess();
      v9 = *v7;
      v8 = v7[1];
      *(v6 + 56) = MEMORY[0x277D837D0];
      *(v6 + 64) = sub_23DA40598();
      *(v6 + 32) = v9;
      *(v6 + 40) = v8;

      v10 = sub_23DB708CC();
      v12 = sub_23DB5EC5C(v10, v11, v16);

      *(v4 + 4) = v12;
      _os_log_impl(&dword_23D9FF000, v3, v1, "Did end page %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x23EEF7D90](v5, -1, -1);
      MEMORY[0x23EEF7D90](v4, -1, -1);
    }

    v13 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
    swift_beginAccess();
    v14 = *v13;

    v14(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSObject *sub_23DA1DF04()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v24);

  if (LOBYTE(v24[0]) == 1)
  {
    v2 = [objc_opt_self() sharedInstance];
    [v2 disableSoftwareKeyboard];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v24[0]) = 1;

  sub_23DB6EF1C();
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v3 = *(qword_27E30A6A8 + 16);
  swift_beginAccess();
  *(v3 + 40) = 27;

  sub_23DABC32C();

  v4 = v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);

    v5(v7);
    sub_23DA18BA0(v5, v6);
  }

  v8 = sub_23DB70AAC();
  result = AXLogCommon();
  if (result)
  {
    v10 = result;
    if (os_log_type_enabled(result, v8))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23[0] = v12;
      *v11 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_23DB73BA0;
      v14 = (v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
      swift_beginAccess();
      v16 = *v14;
      v15 = v14[1];
      *(v13 + 56) = MEMORY[0x277D837D0];
      *(v13 + 64) = sub_23DA40598();
      *(v13 + 32) = v16;
      *(v13 + 40) = v15;

      v17 = sub_23DB708CC();
      v19 = sub_23DB5EC5C(v17, v18, v23);

      *(v11 + 4) = v19;
      _os_log_impl(&dword_23D9FF000, v10, v8, "Did Start page %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x23EEF7D90](v12, -1, -1);
      MEMORY[0x23EEF7D90](v11, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v23[0]) = 1;

    sub_23DB6EF1C();
    v20 = (v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    v21 = *v20;

    v21(v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DA1E28C(uint64_t a1)
{
  v2 = sub_23DB6EA8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23DB7083C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23DA1E3D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23DB6EA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-v9];
  v11 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  v13 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v12(v7, a1 + v13, v4);
  LOBYTE(v13) = sub_23DB6EA6C();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  if ((v13 & 1) == 0)
  {
    sub_23DB6EF0C(&v25);

    if (v25)
    {
      v16 = v25;
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    if (v16 >> 62)
    {
LABEL_22:
      v17 = sub_23DB70C3C();
      if (v17)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_9:
        v18 = 0;
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            MEMORY[0x23EEF70C0](v18, v16);
            v19 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
LABEL_18:
              __break(1u);
              goto LABEL_19;
            }
          }

          else
          {
            if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_22;
            }

            v19 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              goto LABEL_18;
            }
          }

          v20 = sub_23DA1E3D8(a1);
          if (v20)
          {
            v22 = v20;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_23DB74310;
            *(inited + 32) = v2;
            v25 = v22;

            sub_23DB3C864(inited);

            return v25;
          }

          ++v18;
        }

        while (v19 != v17);
      }
    }

    return 0;
  }

  sub_23DB6EF0C(&v25);

  if (v25)
  {

    return MEMORY[0x277D84F90];
  }

  else
  {
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_23DB74310;
    *(v21 + 32) = v2;

    return v21;
  }
}

uint64_t Page.deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  v2 = sub_23DB6EA8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_23DA18BA0(*(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState), *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState + 8));

  v3 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__superTitle;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__subTitle, v4);
  v6 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__text;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__attributedText;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC300, &qword_23DB74478);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v5(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__footerText, v4);
  v5(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__tipHeaderText, v4);
  v5(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__tipBodyText, v4);
  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__shouldDisplay;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v5(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__tocTitle, v4);
  v12(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__isPrimaryTOC, v11);
  v5(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__iconName, v4);
  v13 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__subPages;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC340, &qword_23DB74638);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v12(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__read, v11);
  v12(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__isBeingDisplayed, v11);
  v12(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__shouldAutoAdvance, v11);
  v5(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__timerAnnouncement, v4);
  v12(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__focusHeader, v11);

  v12(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__shouldDisableKeyboard, v11);

  return v0;
}

uint64_t sub_23DA1EB10()
{
  v1 = sub_23DB6EA8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23DB70E0C();
  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23DB7083C();
  (*(v2 + 8))(v4, v1);
  return sub_23DB70E4C();
}

uint64_t sub_23DA1ECB8(uint64_t a1)
{
  v2 = sub_23DB6EA8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23DB7083C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23DA1EE08(uint64_t a1)
{
  v2 = sub_23DB6EA8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23DB70E0C();
  v6 = *v1;
  v7 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23DB7083C();
  (*(v3 + 8))(v5, v2);
  return sub_23DB70E4C();
}

uint64_t sub_23DA1EF6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v5 = sub_23DB6EA8C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_23DA1EFF8(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_23DB6EA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  v11 = *a1;
  v12 = *a2;
  v13 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v10, v11 + v13, v4);
  v15 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v14(v7, v12 + v15, v4);
  LOBYTE(v12) = sub_23DB6EA6C();
  v16 = *(v5 + 8);
  v16(v7, v4);
  v16(v10, v4);
  return v12 & 1;
}

uint64_t sub_23DA1F190@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Page(0);
  result = sub_23DB6EE6C();
  *a2 = result;
  return result;
}

uint64_t sub_23DA1F1D0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_23DA1F23C()
{
  v1 = (v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_23DA1F294(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t Page.PrimaryTOC.__allocating_init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a7;
  v22 = a8;
  v14 = sub_23DB6EA8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  *v19 = 0;
  v19[1] = 0;
  (*(v15 + 16))(v17, a1, v14);
  Page.init(id:title:text:subPages:iconName:)(v17, a2, a3, a4, a5, a6, v21, v22);
  (*(v15 + 8))(a1, v14);
  return v18;
}

uint64_t Page.PrimaryTOC.init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a7;
  v23 = a8;
  v15 = sub_23DB6EA8C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  *v20 = 0;
  v20[1] = 0;
  (*(v16 + 16))(v19, a1, v15, v17);
  Page.init(id:title:text:subPages:iconName:)(v19, a2, a3, a4, a5, a6, v22, v23);
  (*(v16 + 8))(a1, v15);
  return v8;
}

uint64_t Page.PrimaryTOC.deinit()
{
  Page.deinit();

  return v0;
}

uint64_t Page.PrimaryTOC.__deallocating_deinit()
{
  Page.deinit();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Page.SecondaryTOC.init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a7;
  v22 = a8;
  v15 = sub_23DB6EA8C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15, v17);
  Page.init(id:title:text:subPages:iconName:)(v19, a2, a3, a4, a5, a6, v21, v22);
  (*(v16 + 8))(a1, v15);
  return v8;
}

uint64_t sub_23DA1F84C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1496))();
  *a2 = result;
  return result;
}

uint64_t sub_23DA1F8A0(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 1504);

  return v2(v3);
}

uint64_t (*sub_23DA1F924(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1F9C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B8, &qword_23DB746F0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 1528))(v7);
}

uint64_t sub_23DA1FAEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B8, &qword_23DB746F0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1FC24(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B8, &qword_23DB746F0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA1FD94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for Page.Practice(0);
  sub_23DA3AE40(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);

  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_23DA1FEA4(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Page.Practice(0);
  sub_23DA3AE40(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t (*sub_23DA1FF60(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_23DA1FFFC;
}

void sub_23DA1FFFC(void **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  type metadata accessor for Page.Practice(0);
  sub_23DA3AE40(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
  v5 = v3[4];
  v6 = v3[5];
  if (a2)
  {

    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v5 + v6) = v4;
  }

  else
  {
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    *(v5 + v6) = v4;
  }

  free(v3);
}

uint64_t sub_23DA20108@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_23DA20188(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA201FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  return v1;
}

uint64_t sub_23DA20270(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA202E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA20384(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC8, &qword_23DB73C88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA20524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC8, &qword_23DB73C88);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA2065C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC8, &qword_23DB73C88);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t (*sub_23DA2081C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA208C0(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA20A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA20B98(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t (*sub_23DA20D6C())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  *(swift_allocObject() + 16) = v1;
  return sub_23DA40738;
}

uint64_t Page.Practice.__allocating_init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a7;
  v70 = a8;
  v68 = a6;
  v65 = a4;
  v66 = a5;
  v64 = a3;
  v62 = a2;
  v71 = a1;
  v67 = sub_23DB6EA8C();
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v61 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x28223BE20](v11);
  v53 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x28223BE20](v13);
  v50 = &v49 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v52 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  *&v51 = &v49 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v49 - v22;
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v72) = 0;
  sub_23DB6EECC();
  v26 = *(v21 + 32);
  v26(v24 + v25, v23, v20);
  v27 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v28 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v28 = MEMORY[0x277D84FA0];
  }

  *(v24 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v28;
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v72 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v17 + 32))(v24 + v29, v19, v16);
  *(v24 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v27;
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v72 = 0;
  v31 = v51;
  sub_23DB6EECC();
  (*(v52 + 32))(v24 + v30, v31, v49);
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v72) = 0;
  sub_23DB6EECC();
  v52 = v20;
  v26(v24 + v32, v23, v20);
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v51 = xmmword_23DB74320;
  v72 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v34 = v50;
  sub_23DB6EECC();
  v35 = v55;
  v36 = *(v54 + 32);
  v36(v24 + v33, v34, v55);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v72 = v51;
  sub_23DB6EECC();
  v36(v24 + v37, v34, v35);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v72) = 0;
  sub_23DB6EECC();
  v26(v24 + v38, v23, v52);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v72 = 0;
  *(&v72 + 1) = 0xE000000000000000;
  v40 = v53;
  sub_23DB6EECC();
  (*(v56 + 32))(v24 + v39, v40, v57);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v72 = 0uLL;
  sub_23DB6EECC();
  v36(v24 + v41, v34, v35);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v72 = nullsub_1;
  *(&v72 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v43 = v58;
  sub_23DB6EECC();
  (*(v59 + 32))(v24 + v42, v43, v60);
  v44 = v63;
  v45 = v61;
  v46 = v71;
  v47 = v67;
  (*(v63 + 16))(v61, v71, v67);
  Page.init(id:title:text:subPages:iconName:)(v45, v62, v64, v65, v66, v68, v69, v70);
  (*(v44 + 8))(v46, v47);
  return v24;
}

uint64_t Page.Practice.init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a7;
  v70 = a8;
  v68 = a6;
  v65 = a4;
  v66 = a5;
  v64 = a3;
  v62 = a2;
  v71 = a1;
  v67 = sub_23DB6EA8C();
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v61 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x28223BE20](v10);
  v58 = &v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x28223BE20](v12);
  v53 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v18 = &v49 - v17;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v19 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v21 = &v49 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v49 - v24;
  v26 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v72) = 0;
  sub_23DB6EECC();
  v50 = *(v23 + 32);
  v50(v8 + v26, v25, v22);
  v27 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v28 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v28 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v28;
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v72 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v19 + 32))(v8 + v29, v21, v49);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v27;
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v72 = 0;
  sub_23DB6EECC();
  (*(v51 + 32))(v8 + v30, v18, v52);
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v72) = 0;
  sub_23DB6EECC();
  v32 = v22;
  v52 = v22;
  v33 = v50;
  v50(v8 + v31, v25, v32);
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v51 = xmmword_23DB74320;
  v72 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v35 = v55;
  v36 = *(v54 + 32);
  v36(v8 + v34, v16, v55);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v72 = v51;
  sub_23DB6EECC();
  v36(v8 + v37, v16, v35);
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v72) = 0;
  sub_23DB6EECC();
  v33(v8 + v38, v25, v52);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v72 = 0;
  *(&v72 + 1) = 0xE000000000000000;
  v40 = v53;
  sub_23DB6EECC();
  (*(v56 + 32))(v8 + v39, v40, v57);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v72 = 0uLL;
  sub_23DB6EECC();
  v36(v8 + v41, v16, v35);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v72 = nullsub_1;
  *(&v72 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v43 = v58;
  sub_23DB6EECC();
  (*(v59 + 32))(v8 + v42, v43, v60);
  v44 = v63;
  v45 = v61;
  v46 = v71;
  v47 = v67;
  (*(v63 + 16))(v61, v71, v67);
  Page.init(id:title:text:subPages:iconName:)(v45, v62, v64, v65, v66, v68, v69, v70);
  (*(v44 + 8))(v46, v47);
  return v8;
}

uint64_t sub_23DA21D24()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered, v2);
  v8 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody, v9);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning, v2);
  v11 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v10(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText, v9);
  v13 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v15 = *(*(v14 - 8) + 8);

  return v15(v0 + v13, v14);
}

uint64_t Page.Practice.deinit()
{
  Page.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered, v2);
  v8 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody, v9);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning, v2);
  v11 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v10(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText, v9);
  v13 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  return v0;
}

AccessibilitySharedUISupport::Page::WhatsNew::WhatsNewItem __swiftcall Page.WhatsNew.WhatsNewItem.init(title:description:)(Swift::String title, Swift::String description)
{
  *v2 = title;
  v2[1] = description;
  result.description = description;
  result.title = title;
  return result;
}

uint64_t static Page.WhatsNew.WhatsNewItem.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23DB70DBC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_23DB70DBC();
    }
  }

  return result;
}

uint64_t Page.WhatsNew.WhatsNewItem.hashValue.getter()
{
  sub_23DB70E0C();
  sub_23DB7091C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA22364()
{
  sub_23DB70E0C();
  sub_23DB7091C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA223B8(uint64_t a1)
{
  sub_23DB70E0C();
  sub_23DB7091C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA22400(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23DB70DBC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_23DB70DBC();
    }
  }

  return result;
}

uint64_t sub_23DA224F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA22560(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA22604(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC440, &unk_23DB747F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC438, &qword_23DB747E8);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DA227A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC440, &unk_23DB747F0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC438, &qword_23DB747E8);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA228DC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC440, &unk_23DB747F0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8WhatsNew__items;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC438, &qword_23DB747E8);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA22AF8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v89 = a7;
  v90 = a8;
  v87 = a5;
  v88 = a6;
  v85 = a3;
  v86 = a4;
  v84 = a2;
  v93 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x28223BE20](v8);
  v81 = &v61 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v75 = *(v76 - 1);
  MEMORY[0x28223BE20](v76);
  v73 = &v61 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v61 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v12 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v62 = &v61 - v13;
  v14 = sub_23DB6EA8C();
  v92 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v78 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v94 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v61 - v24;
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeSingleButton__buttonText;
  *&v95 = 0;
  *(&v95 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v28 = *(v23 + 32);
  v67 = v25;
  v29 = v25;
  v30 = v62;
  v71 = v22;
  v31 = v22;
  v32 = v94;
  v69 = v23 + 32;
  v65 = v28;
  v28(v26 + v27, v29, v31);
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeSingleButton__popoverText;
  v95 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v34 = *(v32 + 32);
  v74 = v19;
  v63 = v34;
  v94 = v32 + 32;
  v34(v26 + v33, v21, v19);
  v35 = *(v92 + 16);
  v79 = v18;
  v80 = v14;
  v66 = v35;
  v64 = v92 + 16;
  v35(v18, v93, v14);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v95) = 0;
  sub_23DB6EECC();
  v37 = *(v12 + 32);
  v77 = v12 + 32;
  v37(v26 + v36, v30, v91);
  v38 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v39 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v39 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v39;
  v40 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v95 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v41 = v68;
  sub_23DB6EECC();
  (*(v70 + 32))(v26 + v40, v41, v72);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v38;
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v95 = 0;
  v43 = v73;
  sub_23DB6EECC();
  (*(v75 + 32))(v26 + v42, v43, v76);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v95) = 0;
  sub_23DB6EECC();
  v45 = v91;
  v37(v26 + v44, v30, v91);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v75 = xmmword_23DB74320;
  v95 = xmmword_23DB74320;
  sub_23DB6EECC();
  v47 = v74;
  v76 = v37;
  v48 = v63;
  v63(v26 + v46, v21, v74);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v95 = v75;
  sub_23DB6EECC();
  v48(v26 + v49, v21, v47);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v95) = 0;
  sub_23DB6EECC();
  v76(v26 + v50, v30, v45);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v95 = 0;
  *(&v95 + 1) = 0xE000000000000000;
  v52 = v67;
  sub_23DB6EECC();
  v65(v26 + v51, v52, v71);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v95 = 0uLL;
  sub_23DB6EECC();
  v48(v26 + v53, v21, v47);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v95 = nullsub_1;
  *(&v95 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v55 = v81;
  sub_23DB6EECC();
  (*(v82 + 32))(v26 + v54, v55, v83);
  v56 = v78;
  v57 = v79;
  v58 = v80;
  v66(v78, v79, v80);
  Page.init(id:title:text:subPages:iconName:)(v56, v84, v85, v86, v87, v88, v89, v90);
  v59 = *(v92 + 8);
  v59(v93, v58);
  v59(v57, v58);
  return v26;
}

uint64_t sub_23DA234C8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v85 = a7;
  v86 = a8;
  v83 = a5;
  v84 = a6;
  v81 = a3;
  v82 = a4;
  v80 = a2;
  v89 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x28223BE20](v9);
  v77 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x28223BE20](v11);
  v74 = &v60 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v70 = *(v71 - 1);
  MEMORY[0x28223BE20](v71);
  v69 = &v60 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v61 = &v60 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v90 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v16 = &v60 - v15;
  v17 = sub_23DB6EA8C();
  v87 = *(v17 - 8);
  v88 = v17;
  MEMORY[0x28223BE20](v17);
  v72 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v60 - v24;
  v26 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page14PracticeScroll__scrollText;
  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v27 = *(v23 + 32);
  v27(v8 + v26, v25, v22);
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page14PracticeScroll__scrollOnChange;
  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v27(v8 + v28, v25, v22);
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page14PracticeScroll__scrollDown;
  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v27(v8 + v29, v25, v22);
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page14PracticeScroll__scrollUp;
  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v68 = v22;
  v67 = v23 + 32;
  v65 = v27;
  v27(v8 + v30, v25, v22);
  v31 = *(v87 + 16);
  v73 = v21;
  v63 = v87 + 16;
  v62 = v31;
  v31(v21, v89, v88);
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v91) = 0;
  sub_23DB6EECC();
  v33 = *(v90 + 32);
  v34 = v16;
  v35 = v60;
  v36 = v90 + 32;
  v33(v8 + v32, v16);
  v37 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v38 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v38 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v38;
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v91 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v40 = v61;
  sub_23DB6EECC();
  (*(v64 + 32))(v8 + v39, v40, v66);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v37;
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v91 = 0;
  v42 = v69;
  sub_23DB6EECC();
  (*(v70 + 32))(v8 + v41, v42, v71);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v91) = 0;
  sub_23DB6EECC();
  v44 = v35;
  v90 = v36;
  (v33)(v8 + v43, v34, v35);
  v71 = v33;
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v70 = xmmword_23DB74320;
  v91 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v46 = v74;
  sub_23DB6EECC();
  v47 = v76;
  v48 = *(v75 + 32);
  v48(v8 + v45, v46, v76);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v91 = v70;
  sub_23DB6EECC();
  v48(v8 + v49, v46, v47);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v91) = 0;
  sub_23DB6EECC();
  v71(v8 + v50, v34, v44);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v65(v8 + v51, v25, v68);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v91 = 0uLL;
  sub_23DB6EECC();
  v48(v8 + v52, v46, v47);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v91 = nullsub_1;
  *(&v91 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v54 = v77;
  sub_23DB6EECC();
  (*(v78 + 32))(v8 + v53, v54, v79);
  v55 = v72;
  v56 = v73;
  v57 = v88;
  v62(v72, v73, v88);
  Page.init(id:title:text:subPages:iconName:)(v55, v80, v81, v82, v83, v84, v85, v86);
  v58 = *(v87 + 8);
  v58(v89, v57);
  v58(v56, v57);
  return v8;
}

uint64_t sub_23DA23EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v90 = a7;
  v91 = a8;
  v88 = a5;
  v89 = a6;
  v86 = a3;
  v87 = a4;
  v85 = a2;
  v94 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x28223BE20](v9);
  v82 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v80 = *(v11 - 8);
  v81 = v11;
  MEMORY[0x28223BE20](v11);
  v78 = &v62 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v74 = *(v75 - 1);
  MEMORY[0x28223BE20](v75);
  v73 = &v62 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v62 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v95 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v62 - v15;
  v16 = sub_23DB6EA8C();
  v93 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v76 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v92 = &v62 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v62 - v25;
  v27 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeLongText__correctPhrase;
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v28 = *(v24 + 32);
  v28(v8 + v27, v26, v23);
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeLongText__currentPhrase;
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v28(v8 + v29, v26, v23);
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeLongText__backingPhrase;
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v28(v8 + v30, v26, v23);
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeLongText__spokenPhrase;
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v72 = v23;
  v71 = v24 + 32;
  v68 = v28;
  v28(v8 + v31, v26, v23);
  v32 = v93 + 16;
  v33 = *(v93 + 16);
  v33(v22, v94, v16);
  v77 = v22;
  v79 = v16;
  v66 = v32;
  v65 = v33;
  v33(v92, v22, v16);
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v96) = 0;
  v35 = v63;
  sub_23DB6EECC();
  v36 = *(v95 + 32);
  v37 = v35;
  v38 = v64;
  v39 = v95 + 32;
  v36(v8 + v34, v35);
  v40 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v41 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v41 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v41;
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v96 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v43 = v67;
  sub_23DB6EECC();
  (*(v69 + 32))(v8 + v42, v43, v70);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v40;
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v96 = 0;
  v45 = v73;
  sub_23DB6EECC();
  (*(v74 + 32))(v8 + v44, v45, v75);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v96) = 0;
  sub_23DB6EECC();
  v95 = v39;
  (v36)(v8 + v46, v35, v38);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v74 = xmmword_23DB74320;
  v96 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v75 = v36;
  v48 = v78;
  sub_23DB6EECC();
  v49 = v81;
  v50 = *(v80 + 32);
  v50(v8 + v47, v48, v81);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v96 = v74;
  sub_23DB6EECC();
  v50(v8 + v51, v48, v49);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v96) = 0;
  sub_23DB6EECC();
  v75(v8 + v52, v37, v38);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v68(v8 + v53, v26, v72);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v96 = 0uLL;
  sub_23DB6EECC();
  v50(v8 + v54, v48, v49);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v96 = nullsub_1;
  *(&v96 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v56 = v82;
  sub_23DB6EECC();
  (*(v83 + 32))(v8 + v55, v56, v84);
  v57 = v76;
  v58 = v92;
  v59 = v79;
  v65(v76, v92, v79);
  Page.init(id:title:text:subPages:iconName:)(v57, v85, v86, v87, v88, v89, v90, v91);
  v60 = *(v93 + 8);
  v60(v94, v59);
  v60(v58, v59);
  v60(v77, v59);
  return v8;
}

uint64_t sub_23DA24870(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v8 = *a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v12 = *(*(v9 - 8) + 8);
  (v12)((v9 - 8), v4 + v8, v9);
  v12(v4 + *a2, v9);
  v12(v4 + *a3, v9);
  v10 = v4 + *a4;

  return (v12)(v10, v9);
}

uint64_t sub_23DA24988(uint64_t *a1, void *a2, void *a3, void *a4)
{
  Page.Practice.deinit();
  v9 = *a1;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v11 = *(*(v10 - 8) + 8);
  v11(v4 + v9, v10);
  v11(v4 + *a2, v10);
  v11(v4 + *a3, v10);
  v11(v4 + *a4, v10);

  v12 = *(*v4 + 48);
  v13 = *(*v4 + 52);

  return MEMORY[0x2821FE8D8](v4, v12, v13);
}

uint64_t sub_23DA24AF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  return v1;
}

uint64_t sub_23DA24B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v95 = a7;
  v96 = a8;
  v93 = a5;
  v94 = a6;
  v91 = a3;
  v92 = a4;
  v90 = a2;
  v100 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v88 = *(v9 - 8);
  v89 = v9;
  MEMORY[0x28223BE20](v9);
  v87 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x28223BE20](v11);
  v84 = &v66 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v80 = *(v81 - 1);
  MEMORY[0x28223BE20](v81);
  v79 = &v66 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v66 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v66 - v15;
  v16 = sub_23DB6EA8C();
  v98 = *(v16 - 8);
  v99 = v16;
  MEMORY[0x28223BE20](v16);
  v82 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v97 = &v66 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - v21;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAC8, &qword_23DB75318);
  v71 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v24 = &v66 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v66 - v27;
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__correctPhrase;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v30 = *(v26 + 32);
  v30(v8 + v29, v28, v25);
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__startingPhrase;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v30(v8 + v31, v28, v25);
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__currentPhrase;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v73 = v28;
  v77 = v25;
  v75 = v26 + 32;
  v72 = v30;
  v30(v8 + v32, v28, v25);
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__practiceCompleted;
  LOBYTE(v101) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC638, &qword_23DB779A0);
  sub_23DB6EECC();
  (*(v71 + 32))(v8 + v33, v24, v83);
  v34 = v99;
  v35 = v98 + 16;
  v36 = *(v98 + 16);
  v36(v22, v100, v99);
  v83 = v22;
  v71 = v35;
  v70 = v36;
  v36(v97, v22, v34);
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v101) = 0;
  v38 = v67;
  sub_23DB6EECC();
  v39 = *(v68 + 32);
  v40 = v38;
  v41 = v38;
  v42 = v69;
  v39(v8 + v37, v41);
  v43 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v44 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v44 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v44;
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v101 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v46 = v74;
  sub_23DB6EECC();
  (*(v76 + 32))(v8 + v45, v46, v78);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v43;
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v101 = 0;
  v48 = v79;
  sub_23DB6EECC();
  (*(v80 + 32))(v8 + v47, v48, v81);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  (v39)(v8 + v49, v40, v42);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v80 = xmmword_23DB74320;
  v101 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v51 = v84;
  sub_23DB6EECC();
  v81 = v39;
  v52 = v86;
  v53 = *(v85 + 32);
  v53(v8 + v50, v51, v86);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v101 = v80;
  sub_23DB6EECC();
  v53(v8 + v54, v51, v52);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v81(v8 + v55, v40, v42);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  v57 = v73;
  sub_23DB6EECC();
  v72(v8 + v56, v57, v77);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v101 = 0uLL;
  sub_23DB6EECC();
  v53(v8 + v58, v51, v52);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v101 = nullsub_1;
  *(&v101 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v60 = v87;
  sub_23DB6EECC();
  (*(v88 + 32))(v8 + v59, v60, v89);
  v61 = v82;
  v62 = v97;
  v63 = v99;
  v70(v82, v97, v99);
  Page.init(id:title:text:subPages:iconName:)(v61, v90, v91, v92, v93, v94, v95, v96);
  v64 = *(v98 + 8);
  v64(v100, v63);
  v64(v62, v63);
  v64(v83, v63);
  return v8;
}

uint64_t sub_23DA255E0()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__correctPhrase;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__startingPhrase, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__currentPhrase, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__practiceCompleted;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAC8, &qword_23DB75318);
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

uint64_t sub_23DA256EC()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__correctPhrase;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__startingPhrase, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__currentPhrase, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__practiceCompleted;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAC8, &qword_23DB75318);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_23DA25878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = a7;
  v23 = a8;
  v21 = a6;
  v14 = sub_23DB6EA8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a1, v14);
  a9(v17, a2, a3, a4, a5, v21, v22, v23);
  (*(v15 + 8))(a1, v14);
  return v18;
}

uint64_t sub_23DA259D0()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__correctPhrase;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__startingPhrase, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__currentPhrase, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__practiceCompleted;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAC8, &qword_23DB75318);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_23DA25B50(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v3);

  return v3;
}

uint64_t sub_23DA25BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a7;
  v42 = a8;
  v39 = a5;
  v40 = a6;
  v37 = a3;
  v38 = a4;
  v35 = a1;
  v36 = a2;
  v34 = sub_23DB6EA8C();
  v8 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB28, &qword_23DB76220);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedCorrectPhrase;
  v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v17 = sub_23DB7087C();
  v18 = [v16 initWithString_];

  v43 = v18;
  sub_23DA3DB58();
  sub_23DB6EECC();
  v19 = *(v11 + 32);
  v19(v14 + v15, v13, v10);
  v20 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedCurrentPhrase;
  v21 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v22 = sub_23DB7087C();
  v23 = [v21 initWithString_];

  v43 = v23;
  sub_23DB6EECC();
  v19(v14 + v20, v13, v10);
  v24 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedStartingPhrase;
  v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v26 = sub_23DB7087C();
  v27 = [v25 initWithString_];

  v43 = v27;
  sub_23DB6EECC();
  v19(v14 + v24, v13, v10);
  v29 = v33;
  v28 = v34;
  v30 = v35;
  (*(v8 + 16))(v33, v35, v34);
  sub_23DA24B98(v29, v36, v37, v38, v39, v40, v41, v42);
  (*(v8 + 8))(v30, v28);
  return v14;
}

uint64_t sub_23DA25EDC()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedCorrectPhrase;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB28, &qword_23DB76220);
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v5(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedCurrentPhrase, v2);
  v3 = v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedStartingPhrase;

  return (v5)(v3, v2);
}

uint64_t sub_23DA25FAC()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__correctPhrase;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__startingPhrase, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__currentPhrase, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__practiceCompleted;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAC8, &qword_23DB75318);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedCorrectPhrase;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB28, &qword_23DB76220);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedCurrentPhrase, v7);
  v8(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedStartingPhrase, v7);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v9, v10);
}

uint64_t sub_23DA2619C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v92 = a7;
  v93 = a8;
  v90 = a5;
  v91 = a6;
  v88 = a3;
  v89 = a4;
  v87 = a2;
  v94 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v85 = *(v8 - 8);
  v86 = v8;
  MEMORY[0x28223BE20](v8);
  v84 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v82 = *(v10 - 8);
  v83 = v10;
  MEMORY[0x28223BE20](v10);
  v81 = &v62 - v11;
  *&v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v62 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v65 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v63 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v62 - v15;
  v17 = sub_23DB6EA8C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v77 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v62 - v25;
  v27 = swift_allocObject();
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeCommandsCheckmark__currentIcon;
  v95 = 0uLL;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v29 = *(v24 + 32);
  v64 = v26;
  v69 = v23;
  v67 = v29;
  v66 = v24 + 32;
  v29(v27 + v28, v26, v23);
  v78 = v22;
  v79 = v18;
  v30 = *(v18 + 16);
  v31 = v22;
  v32 = v14;
  v33 = v63;
  v80 = v17;
  v73 = v18 + 16;
  v72 = v30;
  v30(v31, v94, v17);
  v34 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v95) = 0;
  sub_23DB6EECC();
  v35 = v32;
  v36 = v32;
  v37 = *(v33 + 32);
  v37(v27 + v34, v16, v36);
  v38 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v39 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v39 = MEMORY[0x277D84FA0];
  }

  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v39;
  v40 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v95 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v41 = v65;
  sub_23DB6EECC();
  (*(v68 + 32))(v27 + v40, v41, v71);
  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v38;
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v95 = 0;
  v43 = v74;
  sub_23DB6EECC();
  (*(v75 + 32))(v27 + v42, v43, v76);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v95) = 0;
  sub_23DB6EECC();
  v62 = v35;
  v45 = v37;
  v37(v27 + v44, v16, v35);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v76 = xmmword_23DB74320;
  v95 = xmmword_23DB74320;
  v47 = v64;
  sub_23DB6EECC();
  v48 = v69;
  v49 = v67;
  v67(v27 + v46, v47, v69);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v95 = v76;
  sub_23DB6EECC();
  v49(v27 + v50, v47, v48);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v95) = 0;
  sub_23DB6EECC();
  v45(v27 + v51, v16, v62);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v95 = 0;
  *(&v95 + 1) = 0xE000000000000000;
  v53 = v81;
  sub_23DB6EECC();
  (*(v82 + 32))(v27 + v52, v53, v83);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v95 = 0uLL;
  sub_23DB6EECC();
  v49(v27 + v54, v47, v48);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v95 = nullsub_1;
  *(&v95 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v56 = v84;
  sub_23DB6EECC();
  (*(v85 + 32))(v27 + v55, v56, v86);
  v57 = v77;
  v58 = v78;
  v59 = v80;
  v72(v77, v78, v80);
  Page.init(id:title:text:subPages:iconName:)(v57, v87, v88, v89, v90, v91, v92, v93);
  v60 = *(v79 + 8);
  v60(v94, v59);
  v60(v58, v59);
  return v27;
}

uint64_t sub_23DA26A74(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v88 = a7;
  v89 = a8;
  v86 = a5;
  v87 = a6;
  v84 = a3;
  v85 = a4;
  v83 = a2;
  v90 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x28223BE20](v8);
  v80 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x28223BE20](v10);
  v73 = &v59 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v72 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  *&v71 = &v59 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v59 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v14 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v16 = &v59 - v15;
  v17 = sub_23DB6EA8C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v74 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v59 - v25;
  v27 = swift_allocObject();
  v28 = (v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands__hiddenText;
  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v30 = *(v24 + 32);
  v65 = v26;
  v70 = v23;
  v68 = v24 + 32;
  v61 = v30;
  v30(v27 + v29, v26, v23);
  v75 = v22;
  v76 = v18;
  v31 = *(v18 + 16);
  v77 = v17;
  v67 = v18 + 16;
  v66 = v31;
  v31(v22, v90, v17);
  v32 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v91) = 0;
  sub_23DB6EECC();
  v33 = *(v14 + 32);
  v34 = v60;
  v33(v27 + v32, v16);
  v35 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v36 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v36 = MEMORY[0x277D84FA0];
  }

  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v36;
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v91 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v38 = v62;
  sub_23DB6EECC();
  (*(v63 + 32))(v27 + v37, v38, v64);
  *(v27 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v35;
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v91 = 0;
  v40 = v71;
  sub_23DB6EECC();
  (*(v72 + 4))(v27 + v39, v40, v69);
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v91) = 0;
  sub_23DB6EECC();
  v42 = v34;
  (v33)(v27 + v41, v16, v34);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v71 = xmmword_23DB74320;
  v91 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v72 = v33;
  v44 = v73;
  sub_23DB6EECC();
  v45 = v79;
  v46 = *(v78 + 32);
  v46(v27 + v43, v44, v79);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v91 = v71;
  sub_23DB6EECC();
  v46(v27 + v47, v44, v45);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v91) = 0;
  sub_23DB6EECC();
  v72(v27 + v48, v16, v42);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  v50 = v65;
  sub_23DB6EECC();
  v61(v27 + v49, v50, v70);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v91 = 0uLL;
  sub_23DB6EECC();
  v46(v27 + v51, v44, v45);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v91 = nullsub_1;
  *(&v91 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v53 = v80;
  sub_23DB6EECC();
  (*(v81 + 32))(v27 + v52, v53, v82);
  v54 = v74;
  v55 = v75;
  v56 = v77;
  v66(v74, v75, v77);
  Page.init(id:title:text:subPages:iconName:)(v54, v83, v84, v85, v86, v87, v88, v89);
  v57 = *(v76 + 8);
  v57(v90, v56);
  v57(v55, v56);
  return v27;
}

uint64_t sub_23DA2731C()
{

  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands__hiddenText;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_23DA273A4()
{
  Page.Practice.deinit();

  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands__hiddenText;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23DA2748C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v84 = a7;
  v85 = a8;
  v82 = a5;
  v83 = a6;
  v80 = a3;
  v81 = a4;
  v79 = a2;
  v86 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x28223BE20](v8);
  v76 = &v56 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v70 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v69 = &v56 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v68 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v67 = &v56 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v56 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v13 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v15 = &v56 - v14;
  v16 = sub_23DB6EA8C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v71 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v56 - v24;
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeUneditableText__exampleText;
  *&v87 = 0;
  *(&v87 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v28 = *(v23 + 32);
  v61 = v25;
  v66 = v22;
  v62 = v23 + 32;
  v58 = v28;
  v28(v26 + v27, v25, v22);
  v72 = v21;
  v73 = v17;
  v29 = *(v17 + 16);
  v74 = v16;
  v64 = v17 + 16;
  v63 = v29;
  v29(v21, v86, v16);
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v87) = 0;
  sub_23DB6EECC();
  v31 = *(v13 + 32);
  v32 = v56;
  v31(v26 + v30, v15);
  v33 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v34 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v34 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v34;
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v87 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v36 = v57;
  sub_23DB6EECC();
  (*(v59 + 32))(v26 + v35, v36, v60);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v33;
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v87 = 0;
  v38 = v67;
  sub_23DB6EECC();
  (*(v68 + 32))(v26 + v37, v38, v65);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v87) = 0;
  sub_23DB6EECC();
  (v31)(v26 + v39, v15, v32);
  v40 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v68 = xmmword_23DB74320;
  v87 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v41 = v69;
  sub_23DB6EECC();
  v42 = *(v70 + 4);
  v70 = v31;
  v43 = v75;
  v42(v26 + v40, v41, v75);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v87 = v68;
  sub_23DB6EECC();
  v42(v26 + v44, v41, v43);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v87) = 0;
  sub_23DB6EECC();
  v70(v26 + v45, v15, v32);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v87 = 0;
  *(&v87 + 1) = 0xE000000000000000;
  v47 = v61;
  sub_23DB6EECC();
  v58(v26 + v46, v47, v66);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v87 = 0uLL;
  sub_23DB6EECC();
  v42(v26 + v48, v41, v43);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v87 = nullsub_1;
  *(&v87 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v50 = v76;
  sub_23DB6EECC();
  (*(v77 + 32))(v26 + v49, v50, v78);
  v51 = v71;
  v52 = v72;
  v53 = v74;
  v63(v71, v72, v74);
  Page.init(id:title:text:subPages:iconName:)(v51, v79, v80, v81, v82, v83, v84, v85);
  v54 = *(v73 + 8);
  v54(v86, v53);
  v54(v52, v53);
  return v26;
}

uint64_t (*sub_23DA27D58())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  *(swift_allocObject() + 16) = v1;
  return sub_23DA40738;
}

uint64_t sub_23DA27E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v84 = a7;
  v85 = a8;
  v82 = a5;
  v83 = a6;
  v80 = a3;
  v81 = a4;
  v79 = a2;
  v87 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x28223BE20](v8);
  v75 = v58 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v73 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v68 = v58 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v65 = *(v66 - 1);
  MEMORY[0x28223BE20](v66);
  v64 = v58 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = v58 - v12;
  v13 = sub_23DB6EA8C();
  v86 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v71 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v58 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v58 - v24;
  v26 = swift_allocObject();
  v27 = (v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid_cardSymbols);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v27[2] = 0;
  v27[3] = 0xE000000000000000;
  v28 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid__gridNumberDidChange;
  *&v88 = nullsub_1;
  *(&v88 + 1) = 0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  sub_23DB6EECC();
  v29 = *(v23 + 32);
  v67 = v25;
  v70 = v22;
  v69 = v23 + 32;
  v62 = v29;
  v29(v26 + v28, v25, v22);
  v30 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid__clickedButton;
  LOBYTE(v88) = 0;
  sub_23DB6EECC();
  v31 = *(v19 + 32);
  v31(v26 + v30, v21, v18);
  v32 = *(v86 + 16);
  v72 = v17;
  v74 = v13;
  v58[1] = v86 + 16;
  v58[0] = v32;
  v32(v17, v87, v13);
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v88) = 0;
  sub_23DB6EECC();
  v31(v26 + v33, v21, v18);
  v34 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v35 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v35 = MEMORY[0x277D84FA0];
  }

  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v35;
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v88 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v37 = v59;
  sub_23DB6EECC();
  (*(v60 + 32))(v26 + v36, v37, v61);
  *(v26 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v34;
  v38 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v88 = 0;
  v39 = v64;
  sub_23DB6EECC();
  (*(v65 + 32))(v26 + v38, v39, v66);
  v40 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v88) = 0;
  sub_23DB6EECC();
  v41 = v18;
  v31(v26 + v40, v21, v18);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v65 = xmmword_23DB74320;
  v88 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v66 = v31;
  v43 = v68;
  sub_23DB6EECC();
  v44 = *(v73 + 32);
  v45 = v76;
  v44(v26 + v42, v43, v76);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v88 = v65;
  sub_23DB6EECC();
  v44(v26 + v46, v43, v45);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v88) = 0;
  sub_23DB6EECC();
  v66(v26 + v47, v21, v41);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v88 = 0;
  *(&v88 + 1) = 0xE000000000000000;
  v49 = v75;
  sub_23DB6EECC();
  (*(v77 + 32))(v26 + v48, v49, v78);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v88 = 0uLL;
  sub_23DB6EECC();
  v44(v26 + v50, v43, v45);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v88 = nullsub_1;
  *(&v88 + 1) = 0;
  v52 = v67;
  sub_23DB6EECC();
  v62(v26 + v51, v52, v70);
  v53 = v71;
  v54 = v72;
  v55 = v74;
  (v58[0])(v71, v72, v74);
  Page.init(id:title:text:subPages:iconName:)(v53, v79, v80, v81, v82, v83, v84, v85);
  v56 = *(v86 + 8);
  v56(v87, v55);
  v56(v54, v55);
  return v26;
}

uint64_t sub_23DA28708()
{

  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid__gridNumberDidChange;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid__clickedButton;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_23DA287E8()
{
  Page.Practice.deinit();

  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid__gridNumberDidChange;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid__clickedButton;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23DA2891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = a7;
  v97 = a8;
  v94 = a5;
  v95 = a6;
  v92 = a3;
  v93 = a4;
  v91 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v89 = *(v9 - 8);
  v90 = v9;
  MEMORY[0x28223BE20](v9);
  v88 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v86 = *(v11 - 8);
  v87 = v11;
  MEMORY[0x28223BE20](v11);
  v85 = &v65 - v12;
  *&v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v73 = &v65 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v65 - v14;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v99 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - v18;
  v20 = sub_23DB6EA8C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v80 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v65 - v27;
  v29 = swift_allocObject();
  v84 = v21;
  v30 = *(v21 + 16);
  v98 = a1;
  v30(v28, a1, v20);
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeCommandsCheckmark__currentIcon;
  v100 = 0uLL;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v32 = *(v17 + 32);
  v67 = v19;
  v81 = v16;
  v33 = v16;
  v34 = v66;
  v79 = v17 + 32;
  v68 = v32;
  v32(v29 + v31, v19, v33);
  v82 = v28;
  v83 = v25;
  v78 = v20;
  v35 = v65;
  v75 = v21 + 16;
  v74 = v30;
  v30(v25, v28, v20);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v37 = v35;
  v38 = v35;
  v39 = v34;
  v40 = v99 + 32;
  v41 = *(v99 + 32);
  v41(v29 + v36, v38, v34);
  v42 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v43 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v43 = MEMORY[0x277D84FA0];
  }

  *(v29 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v43;
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v100 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v45 = v70;
  sub_23DB6EECC();
  (*(v71 + 32))(v29 + v44, v45, v72);
  *(v29 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v42;
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v100 = 0;
  v47 = v73;
  sub_23DB6EECC();
  (*(v76 + 32))(v29 + v46, v47, v77);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v99 = v40;
  v41(v29 + v48, v37, v34);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v77 = xmmword_23DB74320;
  v100 = xmmword_23DB74320;
  v50 = v67;
  sub_23DB6EECC();
  v51 = v81;
  v52 = v68;
  v68(v29 + v49, v50, v81);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v100 = v77;
  sub_23DB6EECC();
  v52(v29 + v53, v50, v51);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v41(v29 + v54, v37, v39);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  v56 = v85;
  sub_23DB6EECC();
  (*(v86 + 32))(v29 + v55, v56, v87);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v100 = 0uLL;
  sub_23DB6EECC();
  v52(v29 + v57, v50, v51);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v100 = nullsub_1;
  *(&v100 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v59 = v88;
  sub_23DB6EECC();
  (*(v89 + 32))(v29 + v58, v59, v90);
  v60 = v80;
  v61 = v83;
  v62 = v78;
  v74(v80, v83, v78);
  Page.init(id:title:text:subPages:iconName:)(v60, v91, v92, v93, v94, v95, v96, v97);
  v63 = *(v84 + 8);
  v63(v98, v62);
  v63(v61, v62);
  v63(v82, v62);
  return v29;
}

uint64_t sub_23DA29254(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v80 = a7;
  v81 = a8;
  v78 = a5;
  v79 = a6;
  v76 = a3;
  v77 = a4;
  v75 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x28223BE20](v9);
  v72 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x28223BE20](v11);
  v67 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v68 = *(v13 - 8);
  v69 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v59 = *(v60 - 1);
  MEMORY[0x28223BE20](v60);
  v58 = &v55 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v55 - v21;
  v23 = sub_23DB6EA8C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v63 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  v29 = swift_allocObject();
  v65 = v24;
  v30 = *(v24 + 16);
  v64 = v28;
  v82 = a1;
  v66 = v23;
  v62 = v24 + 16;
  v61 = v30;
  v30(v28, a1, v23);
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v83) = 0;
  sub_23DB6EECC();
  v32 = *(v20 + 32);
  v33 = v19;
  v32(v29 + v31, v22, v19);
  v34 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v35 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v35 = MEMORY[0x277D84FA0];
  }

  *(v29 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v35;
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v83 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v56 + 32))(v29 + v36, v18, v57);
  *(v29 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v34;
  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v83 = 0;
  v38 = v58;
  sub_23DB6EECC();
  (*(v59 + 32))(v29 + v37, v38, v60);
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v83) = 0;
  sub_23DB6EECC();
  v32(v29 + v39, v22, v19);
  v40 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v59 = xmmword_23DB74320;
  v83 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v60 = v32;
  v41 = v69;
  v42 = *(v68 + 32);
  v42(v29 + v40, v15, v69);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v83 = v59;
  sub_23DB6EECC();
  v42(v29 + v43, v15, v41);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v83) = 0;
  sub_23DB6EECC();
  v60(v29 + v44, v22, v33);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v83 = 0;
  *(&v83 + 1) = 0xE000000000000000;
  v46 = v67;
  sub_23DB6EECC();
  (*(v70 + 32))(v29 + v45, v46, v71);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v83 = 0uLL;
  sub_23DB6EECC();
  v42(v29 + v47, v15, v41);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v83 = nullsub_1;
  *(&v83 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v49 = v72;
  sub_23DB6EECC();
  (*(v73 + 32))(v29 + v48, v49, v74);
  v50 = v63;
  v51 = v64;
  v52 = v66;
  v61(v63, v64, v66);
  Page.init(id:title:text:subPages:iconName:)(v50, v75, v76, v77, v78, v79, v80, v81);
  v53 = *(v65 + 8);
  v53(v82, v52);
  v53(v51, v52);
  return v29;
}

uint64_t sub_23DA29A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v81 = a7;
  v82 = a8;
  v79 = a5;
  v80 = a6;
  v77 = a3;
  v78 = a4;
  v76 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v74 = *(v10 - 8);
  v75 = v10;
  MEMORY[0x28223BE20](v10);
  v73 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v61 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  *&v60 = &v58 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v18 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v20 = &v58 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v58 - v23;
  v25 = sub_23DB6EA8C();
  MEMORY[0x28223BE20](v25);
  v64 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v66 = v29;
  v30 = *(v29 + 16);
  v65 = &v58 - v31;
  v83 = a1;
  v67 = v32;
  v63 = v29 + 16;
  v62 = v30;
  v30(v28);
  v33 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v84) = 0;
  sub_23DB6EECC();
  v35 = *(v22 + 32);
  v34 = v22 + 32;
  v36 = v35;
  v35(v8 + v33, v24, v21);
  v37 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v38 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v38 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v38;
  v39 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v84 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v18 + 32))(v8 + v39, v20, v59);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v37;
  v40 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v84 = 0;
  v41 = v60;
  sub_23DB6EECC();
  (*(v61 + 32))(v8 + v40, v41, v58);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v84) = 0;
  sub_23DB6EECC();
  v36(v8 + v42, v24, v21);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v60 = xmmword_23DB74320;
  v84 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v61 = v34;
  v44 = v70;
  v45 = *(v69 + 32);
  v45(v8 + v43, v16, v70);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v84 = v60;
  sub_23DB6EECC();
  v45(v8 + v46, v16, v44);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v84) = 0;
  sub_23DB6EECC();
  v36(v8 + v47, v24, v21);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v84 = 0;
  *(&v84 + 1) = 0xE000000000000000;
  v49 = v68;
  sub_23DB6EECC();
  (*(v71 + 32))(v8 + v48, v49, v72);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v84 = 0uLL;
  sub_23DB6EECC();
  v45(v8 + v50, v16, v44);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v84 = nullsub_1;
  *(&v84 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v52 = v73;
  sub_23DB6EECC();
  (*(v74 + 32))(v8 + v51, v52, v75);
  v53 = v64;
  v54 = v65;
  v55 = v67;
  (v62)(v64, v65, v67);
  Page.init(id:title:text:subPages:iconName:)(v53, v76, v77, v78, v79, v80, v81, v82);
  v56 = *(v66 + 8);
  v56(v83, v55);
  v56(v54, v55);
  return v8;
}

uint64_t sub_23DA2A298()
{
  sub_23DB70E0C();
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23DB7083C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA2A338(uint64_t a1)
{
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_23DB7083C();
}

uint64_t sub_23DA2A3BC(uint64_t a1)
{
  sub_23DB70E0C();
  sub_23DB6EA8C();
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23DB7083C();
  return sub_23DB70E4C();
}

uint64_t Page.PracticeVOKeyboardCommand.__allocating_init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v90 = a7;
  v91 = a8;
  v88 = a5;
  v89 = a6;
  v86 = a3;
  v87 = a4;
  v85 = a2;
  v93 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v83 = *(v8 - 8);
  v84 = v8;
  MEMORY[0x28223BE20](v8);
  v82 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v78 = &v62 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v62 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v70 = *(v71 - 1);
  MEMORY[0x28223BE20](v71);
  v69 = &v62 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v62 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v15 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v17 = &v62 - v16;
  v18 = sub_23DB6EA8C();
  v92 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v72 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v62 - v28;
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  *&v94 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC458, &qword_23DB74800);
  sub_23DB6EECC();
  (*(v27 + 32))(v30 + v31, v29, v26);
  v32 = v92 + 16;
  v33 = *(v92 + 16);
  v33(v25, v93, v18);
  v74 = v22;
  v73 = v25;
  v34 = v63;
  v76 = v18;
  v68 = v32;
  v67 = v33;
  v33(v22, v25, v18);
  v35 = MEMORY[0x277D84F90];
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  v37 = *(v15 + 32);
  v38 = v17;
  v39 = v34;
  v37(v30 + v36, v17, v34);
  if (v35 >> 62 && sub_23DB70C3C())
  {
    v40 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v40 = MEMORY[0x277D84FA0];
  }

  *(v30 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v40;
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v94 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v42 = v64;
  sub_23DB6EECC();
  (*(v65 + 32))(v30 + v41, v42, v66);
  *(v30 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v35;
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v94 = 0;
  v44 = v69;
  sub_23DB6EECC();
  (*(v70 + 32))(v30 + v43, v44, v71);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  v37(v30 + v45, v38, v34);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v70 = xmmword_23DB74320;
  v94 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v71 = v37;
  v47 = v75;
  sub_23DB6EECC();
  v48 = *(v77 + 32);
  v49 = v79;
  v48(v30 + v46, v47, v79);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v94 = v70;
  sub_23DB6EECC();
  v48(v30 + v50, v47, v49);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v94) = 0;
  sub_23DB6EECC();
  v71(v30 + v51, v38, v39);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;
  v53 = v78;
  sub_23DB6EECC();
  (*(v80 + 32))(v30 + v52, v53, v81);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v94 = 0uLL;
  sub_23DB6EECC();
  v48(v30 + v54, v47, v49);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v94 = nullsub_1;
  *(&v94 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v56 = v82;
  sub_23DB6EECC();
  (*(v83 + 32))(v30 + v55, v56, v84);
  v57 = v72;
  v58 = v74;
  v59 = v76;
  v67(v72, v74, v76);
  Page.init(id:title:text:subPages:iconName:)(v57, v85, v86, v87, v88, v89, v90, v91);
  v60 = *(v92 + 8);
  v60(v93, v59);
  v60(v58, v59);
  v60(v73, v59);
  return v30;
}

uint64_t Page.PracticeVOKeyboardCommand.init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v89 = a7;
  v90 = a8;
  v87 = a5;
  v88 = a6;
  v85 = a3;
  v86 = a4;
  v84 = a2;
  v92 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x28223BE20](v9);
  v81 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x28223BE20](v11);
  v77 = &v61 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v75 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v72 = &v61 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v69 = *(v70 - 1);
  MEMORY[0x28223BE20](v70);
  v66 = &v61 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v61 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v16 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v18 = &v61 - v17;
  v19 = sub_23DB6EA8C();
  v91 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v71 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v61 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC448, &unk_23DB7A5D0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v61 - v29;
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeVOKeyboardCommand__modifierKeys;
  *&v93 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC458, &qword_23DB74800);
  sub_23DB6EECC();
  (*(v28 + 32))(v8 + v31, v30, v27);
  v32 = v91 + 16;
  v33 = *(v91 + 16);
  v33(v26, v92, v19);
  v74 = v23;
  v73 = v26;
  v76 = v19;
  v68 = v32;
  v67 = v33;
  v33(v23, v26, v19);
  v34 = MEMORY[0x277D84F90];
  v35 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v93) = 0;
  sub_23DB6EECC();
  v36 = *(v16 + 32);
  v37 = v18;
  v38 = v62;
  v36(v8 + v35, v18);
  if (v34 >> 62 && sub_23DB70C3C())
  {
    v39 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v39 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v39;
  v40 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v93 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v41 = v63;
  sub_23DB6EECC();
  (*(v64 + 32))(v8 + v40, v41, v65);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v34;
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v93 = 0;
  v43 = v66;
  sub_23DB6EECC();
  (*(v69 + 32))(v8 + v42, v43, v70);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v93) = 0;
  sub_23DB6EECC();
  (v36)(v8 + v44, v18, v38);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v69 = xmmword_23DB74320;
  v93 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v46 = v72;
  sub_23DB6EECC();
  v70 = v36;
  v47 = *(v75 + 32);
  v48 = v78;
  v47(v8 + v45, v46, v78);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v93 = v69;
  sub_23DB6EECC();
  v47(v8 + v49, v46, v48);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v93) = 0;
  sub_23DB6EECC();
  v70(v8 + v50, v37, v38);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v93 = 0;
  *(&v93 + 1) = 0xE000000000000000;
  v52 = v77;
  sub_23DB6EECC();
  (*(v79 + 32))(v8 + v51, v52, v80);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v93 = 0uLL;
  sub_23DB6EECC();
  v47(v8 + v53, v46, v48);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v93 = nullsub_1;
  *(&v93 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v55 = v81;
  sub_23DB6EECC();
  (*(v82 + 32))(v8 + v54, v55, v83);
  v56 = v71;
  v57 = v74;
  v58 = v76;
  v67(v71, v74, v76);
  Page.init(id:title:text:subPages:iconName:)(v56, v84, v85, v86, v87, v88, v89, v90);
  v59 = *(v91 + 8);
  v59(v92, v58);
  v59(v57, v58);
  v59(v73, v58);
  return v8;
}