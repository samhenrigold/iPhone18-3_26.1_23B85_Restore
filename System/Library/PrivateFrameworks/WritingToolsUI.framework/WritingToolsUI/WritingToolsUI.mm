unint64_t sub_1D451F108()
{
  result = qword_1ED850860;
  if (!qword_1ED850860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED850860);
  }

  return result;
}

const char *sub_1D451F190(char a1)
{
  result = "Panel_iOS";
  switch(a1)
  {
    case 1:
      result = "Panel_iPadOS";
      break;
    case 2:
      result = "Panel_macOS";
      break;
    case 3:
      result = "OpenEndedAdjustmentV2_FollowUp";
      break;
    case 4:
      result = "Montara";
      break;
    case 5:
      result = "Montara_PersonalInfoSearch";
      break;
    case 6:
      result = "Montara_PromptEntryView";
      break;
    case 7:
      result = "Montara_SlotFill";
      break;
    case 8:
      result = "Montara_PopoverAdjustment";
      break;
    case 9:
      result = "Montara_Streaming";
      break;
    case 10:
      result = "Montara_FullScreen_SceneHosting";
      break;
    case 11:
      result = "CustomQuestionnaireEntry";
      break;
    case 12:
      result = "AlternateQuestionnaire_macOS";
      break;
    case 13:
      result = "AlternateQuestionnaire_iPadOS";
      break;
    case 14:
      result = "FeedbackFCSBehavior";
      break;
    case 15:
      result = "Formatting_v2";
      break;
    case 16:
      result = "Panel_visionOS";
      break;
    case 17:
      result = "NativeRedesign_visionOS";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_1D451F540@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_allowedResultOptions;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D451F8BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D451F8F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id _WTVCLog(uint64_t a1)
{
  if (_WTVCLog_onceToken != -1)
  {
    _WTVCLog_cold_1();
  }

  v2 = _WTVCLog_log;

  return v2;
}

id _WTSizingLog(uint64_t a1)
{
  if (_WTSizingLog_onceToken != -1)
  {
    _WTSizingLog_cold_1();
  }

  v2 = _WTSizingLog_log;

  return v2;
}

void wt_os_log_debug_long_string(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    if (v11)
    {
      if (v13)
      {
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v13 arguments:&a9];
        if ([v14 length])
        {
          v15 = [v14 length];
          if (v15 <= 0x384)
          {
            v16 = v11;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v32 = v12;
              v33 = 2082;
              v34 = [v14 UTF8String];
              _os_log_impl(&dword_1D451D000, v16, OS_LOG_TYPE_DEBUG, "%@%{public}s", buf, 0x16u);
            }

            goto LABEL_28;
          }

          v21 = v15;
          v22 = vcvtpd_u64_f64(v15 / 900.0);
          v30 = v22;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v32 = v12;
            v33 = 2048;
            v34 = v21;
            v35 = 2048;
            v36 = v22;
            _os_log_impl(&dword_1D451D000, v11, OS_LOG_TYPE_DEBUG, "%@Total length = %lu chars, total chunks = %lu", buf, 0x20u);
          }

          v23 = 0;
          v24 = v21;
          do
          {
            v25 = v24 - 900;
            if (v24 >= 0x384)
            {
              v26 = 900;
            }

            else
            {
              v26 = v24;
            }

            v27 = [v14 substringWithRange:{v23, v26}];
            v28 = v11;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v29 = [v27 UTF8String];
              *buf = 138413058;
              v32 = v12;
              v33 = 2048;
              v34 = v23 / 0x384 + 1;
              v35 = 2048;
              v36 = v30;
              v37 = 2082;
              v38 = v29;
              _os_log_impl(&dword_1D451D000, v28, OS_LOG_TYPE_DEBUG, "%@[Chunk %lu/%lu]: %{public}s", buf, 0x2Au);
            }

            v23 += 900;
            v24 = v25;
          }

          while (v23 < v21);
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_28;
          }

          *buf = 138412290;
          v32 = v12;
          v19 = "%@End.";
          v20 = v28;
        }

        else
        {
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
LABEL_28:

            goto LABEL_29;
          }

          *buf = 138412290;
          v32 = v12;
          v19 = "%@Logging an empty or nil message.";
          v20 = v11;
        }

        _os_log_impl(&dword_1D451D000, v20, OS_LOG_TYPE_DEBUG, v19, buf, 0xCu);
        goto LABEL_28;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v12;
        v17 = "%@Error: Format string is nil.";
        v18 = v11;
        goto LABEL_13;
      }
    }

    else if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v32 = v12;
      v17 = "%@Error: log is NULL.";
      v18 = 0;
LABEL_13:
      _os_log_impl(&dword_1D451D000, v18, OS_LOG_TYPE_DEBUG, v17, buf, 0xCu);
    }
  }

LABEL_29:
}

void sub_1D452257C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4522918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D45237D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WTIAWritingToolsLog(uint64_t a1)
{
  if (WTIAWritingToolsLog_onceToken != -1)
  {
    WTIAWritingToolsLog_cold_1();
  }

  v2 = WTIAWritingToolsLog___instance;

  return v2;
}

uint64_t __WTIAWritingToolsLog_block_invoke()
{
  WTIAWritingToolsLog___instance = os_log_create("com.apple.WritingTools", "WritingToolsAnalytics");

  return MEMORY[0x1EEE66BB8]();
}

id WTIATextAssistantLog(uint64_t a1)
{
  if (WTIATextAssistantLog_onceToken != -1)
  {
    WTIATextAssistantLog_cold_1();
  }

  v2 = WTIATextAssistantLog___instance;

  return v2;
}

uint64_t __WTIATextAssistantLog_block_invoke()
{
  WTIATextAssistantLog___instance = os_log_create("com.apple.InputAnalytics", "TextAssistant");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D452474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getIAPayloadKeyWritingToolsFeatureDetails()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getIAPayloadKeyWritingToolsFeatureDetailsSymbolLoc_ptr;
  v9 = getIAPayloadKeyWritingToolsFeatureDetailsSymbolLoc_ptr;
  if (!getIAPayloadKeyWritingToolsFeatureDetailsSymbolLoc_ptr)
  {
    v1 = InputAnalyticsLibrary();
    v7[3] = dlsym(v1, "IAPayloadKeyWritingToolsFeatureDetails");
    getIAPayloadKeyWritingToolsFeatureDetailsSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

id getIAPayloadValueWritingToolsFeatureDetailsMagicRewrite(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadValueWritingToolsFeatureDetailsMagicRewriteSymbolLoc_ptr;
  v11 = getIAPayloadValueWritingToolsFeatureDetailsMagicRewriteSymbolLoc_ptr;
  if (!getIAPayloadValueWritingToolsFeatureDetailsMagicRewriteSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadValueWritingToolsFeatureDetailsMagicRewrite");
    getIAPayloadValueWritingToolsFeatureDetailsMagicRewriteSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIAPayloadValueWritingToolsFeatureDetailsConciseTone(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadValueWritingToolsFeatureDetailsConciseToneSymbolLoc_ptr;
  v11 = getIAPayloadValueWritingToolsFeatureDetailsConciseToneSymbolLoc_ptr;
  if (!getIAPayloadValueWritingToolsFeatureDetailsConciseToneSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadValueWritingToolsFeatureDetailsConciseTone");
    getIAPayloadValueWritingToolsFeatureDetailsConciseToneSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIAPayloadValueWritingToolsFeatureDetailsFriendlyTone(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadValueWritingToolsFeatureDetailsFriendlyToneSymbolLoc_ptr;
  v11 = getIAPayloadValueWritingToolsFeatureDetailsFriendlyToneSymbolLoc_ptr;
  if (!getIAPayloadValueWritingToolsFeatureDetailsFriendlyToneSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadValueWritingToolsFeatureDetailsFriendlyTone");
    getIAPayloadValueWritingToolsFeatureDetailsFriendlyToneSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIAPayloadValueWritingToolsFeatureDetailsProfessionalTone(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadValueWritingToolsFeatureDetailsProfessionalToneSymbolLoc_ptr;
  v11 = getIAPayloadValueWritingToolsFeatureDetailsProfessionalToneSymbolLoc_ptr;
  if (!getIAPayloadValueWritingToolsFeatureDetailsProfessionalToneSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadValueWritingToolsFeatureDetailsProfessionalTone");
    getIAPayloadValueWritingToolsFeatureDetailsProfessionalToneSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIAPayloadValueWritingToolsFeatureDetailsOpenEndedTone(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadValueWritingToolsFeatureDetailsOpenEndedToneSymbolLoc_ptr;
  v11 = getIAPayloadValueWritingToolsFeatureDetailsOpenEndedToneSymbolLoc_ptr;
  if (!getIAPayloadValueWritingToolsFeatureDetailsOpenEndedToneSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadValueWritingToolsFeatureDetailsOpenEndedTone");
    getIAPayloadValueWritingToolsFeatureDetailsOpenEndedToneSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIAPayloadValueWritingToolsFeatureDetailsTakeawaysTransform(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadValueWritingToolsFeatureDetailsTakeawaysTransformSymbolLoc_ptr;
  v11 = getIAPayloadValueWritingToolsFeatureDetailsTakeawaysTransformSymbolLoc_ptr;
  if (!getIAPayloadValueWritingToolsFeatureDetailsTakeawaysTransformSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadValueWritingToolsFeatureDetailsTakeawaysTransform");
    getIAPayloadValueWritingToolsFeatureDetailsTakeawaysTransformSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIAPayloadValueWritingToolsFeatureDetailsBulletsTransform(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadValueWritingToolsFeatureDetailsBulletsTransformSymbolLoc_ptr;
  v11 = getIAPayloadValueWritingToolsFeatureDetailsBulletsTransformSymbolLoc_ptr;
  if (!getIAPayloadValueWritingToolsFeatureDetailsBulletsTransformSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadValueWritingToolsFeatureDetailsBulletsTransform");
    getIAPayloadValueWritingToolsFeatureDetailsBulletsTransformSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIAPayloadValueWritingToolsFeatureDetailsTablesTransform(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadValueWritingToolsFeatureDetailsTablesTransformSymbolLoc_ptr;
  v11 = getIAPayloadValueWritingToolsFeatureDetailsTablesTransformSymbolLoc_ptr;
  if (!getIAPayloadValueWritingToolsFeatureDetailsTablesTransformSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadValueWritingToolsFeatureDetailsTablesTransform");
    getIAPayloadValueWritingToolsFeatureDetailsTablesTransformSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIAPayloadValueWritingToolsFeatureDetailsProofreadingReview(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadValueWritingToolsFeatureDetailsProofreadingReviewSymbolLoc_ptr;
  v11 = getIAPayloadValueWritingToolsFeatureDetailsProofreadingReviewSymbolLoc_ptr;
  if (!getIAPayloadValueWritingToolsFeatureDetailsProofreadingReviewSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadValueWritingToolsFeatureDetailsProofreadingReview");
    getIAPayloadValueWritingToolsFeatureDetailsProofreadingReviewSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIASignalAnalyticsClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getIASignalAnalyticsClass_softClass;
  v6 = getIASignalAnalyticsClass_softClass;
  if (!getIASignalAnalyticsClass_softClass)
  {
    InputAnalyticsLibraryCore(0);
    v4[3] = objc_getClass("IASignalAnalytics");
    getIASignalAnalyticsClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1D4525678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getIAChannelWritingTools(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAChannelWritingToolsSymbolLoc_ptr;
  v11 = getIAChannelWritingToolsSymbolLoc_ptr;
  if (!getIAChannelWritingToolsSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAChannelWritingTools");
    getIAChannelWritingToolsSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

void sub_1D4526184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D45265F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getIAPayloadValueWritingToolsUIRewritingView(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadValueWritingToolsUIRewritingViewSymbolLoc_ptr;
  v11 = getIAPayloadValueWritingToolsUIRewritingViewSymbolLoc_ptr;
  if (!getIAPayloadValueWritingToolsUIRewritingViewSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadValueWritingToolsUIRewritingView");
    getIAPayloadValueWritingToolsUIRewritingViewSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIASignalWritingToolsButtonTapped(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIASignalWritingToolsButtonTappedSymbolLoc_ptr;
  v11 = getIASignalWritingToolsButtonTappedSymbolLoc_ptr;
  if (!getIASignalWritingToolsButtonTappedSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IASignalWritingToolsButtonTapped");
    getIASignalWritingToolsButtonTappedSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIAPayloadKeyWritingToolsInteractionType(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadKeyWritingToolsInteractionTypeSymbolLoc_ptr;
  v11 = getIAPayloadKeyWritingToolsInteractionTypeSymbolLoc_ptr;
  if (!getIAPayloadKeyWritingToolsInteractionTypeSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadKeyWritingToolsInteractionType");
    getIAPayloadKeyWritingToolsInteractionTypeSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIAPayloadValueWritingToolsInteractionTypeUnspecified()
{
  IAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc = getIAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc();
  if (IAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc)
  {
    v1 = *IAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc;

    return v1;
  }

  else
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    return getIASignalWritingToolsResultsAccepted(v3, v4);
  }
}

id getIASignalWritingToolsResultsAccepted(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIASignalWritingToolsResultsAcceptedSymbolLoc_ptr;
  v11 = getIASignalWritingToolsResultsAcceptedSymbolLoc_ptr;
  if (!getIASignalWritingToolsResultsAcceptedSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IASignalWritingToolsResultsAccepted");
    getIASignalWritingToolsResultsAcceptedSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIAPayloadKeyWritingToolsAcceptedAll(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadKeyWritingToolsAcceptedAllSymbolLoc_ptr;
  v11 = getIAPayloadKeyWritingToolsAcceptedAllSymbolLoc_ptr;
  if (!getIAPayloadKeyWritingToolsAcceptedAllSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadKeyWritingToolsAcceptedAll");
    getIAPayloadKeyWritingToolsAcceptedAllSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIAPayloadKeyWritingToolsResultIndices(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadKeyWritingToolsResultIndicesSymbolLoc_ptr;
  v11 = getIAPayloadKeyWritingToolsResultIndicesSymbolLoc_ptr;
  if (!getIAPayloadKeyWritingToolsResultIndicesSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadKeyWritingToolsResultIndices");
    getIAPayloadKeyWritingToolsResultIndicesSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIASignalWritingToolsResultsRejected(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIASignalWritingToolsResultsRejectedSymbolLoc_ptr;
  v11 = getIASignalWritingToolsResultsRejectedSymbolLoc_ptr;
  if (!getIASignalWritingToolsResultsRejectedSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IASignalWritingToolsResultsRejected");
    getIASignalWritingToolsResultsRejectedSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIAPayloadKeyWritingToolsRejectedAll(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadKeyWritingToolsRejectedAllSymbolLoc_ptr;
  v11 = getIAPayloadKeyWritingToolsRejectedAllSymbolLoc_ptr;
  if (!getIAPayloadKeyWritingToolsRejectedAllSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadKeyWritingToolsRejectedAll");
    getIAPayloadKeyWritingToolsRejectedAllSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIASignalWritingToolsResultsOffered(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIASignalWritingToolsResultsOfferedSymbolLoc_ptr;
  v11 = getIASignalWritingToolsResultsOfferedSymbolLoc_ptr;
  if (!getIASignalWritingToolsResultsOfferedSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IASignalWritingToolsResultsOffered");
    getIASignalWritingToolsResultsOfferedSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

id getIAPayloadKeyWritingToolsNumResultsOffered(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadKeyWritingToolsNumResultsOfferedSymbolLoc_ptr;
  v11 = getIAPayloadKeyWritingToolsNumResultsOfferedSymbolLoc_ptr;
  if (!getIAPayloadKeyWritingToolsNumResultsOfferedSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadKeyWritingToolsNumResultsOffered");
    getIAPayloadKeyWritingToolsNumResultsOfferedSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

void sub_1D4527BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIASignalWritingToolsPanelAppearedSymbolLoc_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = InputAnalyticsLibrary();
  result = dlsym(v3, "IASignalWritingToolsPanelAppeared");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalWritingToolsPanelAppearedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t InputAnalyticsLibrary()
{
  v3 = 0;
  v0 = InputAnalyticsLibraryCore(&v3);
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

uint64_t InputAnalyticsLibraryCore(uint64_t a1)
{
  if (!InputAnalyticsLibraryCore_frameworkLibrary)
  {
    InputAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return InputAnalyticsLibraryCore_frameworkLibrary;
}

uint64_t __InputAnalyticsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  InputAnalyticsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getIAPayloadKeyWritingToolsFeatureDetailsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadKeyWritingToolsFeatureDetails");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadKeyWritingToolsFeatureDetailsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadKeyWritingToolsUISymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadKeyWritingToolsUI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadKeyWritingToolsUISymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsFeatureDetailsGenericSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsFeatureDetailsGeneric");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsFeatureDetailsGenericSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsFeatureDetailsMagicRewriteSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsFeatureDetailsMagicRewrite");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsFeatureDetailsMagicRewriteSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsFeatureDetailsConciseToneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsFeatureDetailsConciseTone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsFeatureDetailsConciseToneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsFeatureDetailsFriendlyToneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsFeatureDetailsFriendlyTone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsFeatureDetailsFriendlyToneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsFeatureDetailsProfessionalToneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsFeatureDetailsProfessionalTone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsFeatureDetailsProfessionalToneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsFeatureDetailsOpenEndedToneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsFeatureDetailsOpenEndedTone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsFeatureDetailsOpenEndedToneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsFeatureDetailsTakeawaysTransformSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsFeatureDetailsTakeawaysTransform");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsFeatureDetailsTakeawaysTransformSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsFeatureDetailsBulletsTransformSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsFeatureDetailsBulletsTransform");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsFeatureDetailsBulletsTransformSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsFeatureDetailsTablesTransformSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsFeatureDetailsTablesTransform");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsFeatureDetailsTablesTransformSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsFeatureDetailsProofreadingReviewSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsFeatureDetailsProofreadingReview");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsFeatureDetailsProofreadingReviewSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getIASignalAnalyticsClass_block_invoke(uint64_t a1)
{
  InputAnalyticsLibraryCore(0);
  result = objc_getClass("IASignalAnalytics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalAnalyticsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAChannelWritingToolsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAChannelWritingTools");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAChannelWritingToolsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAChannelSmartRepliesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAChannelSmartReplies");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAChannelSmartRepliesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalWritingToolsUISuspendedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IASignalWritingToolsUISuspended");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalWritingToolsUISuspendedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getIASignalWritingToolsUIResumedSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIASignalWritingToolsUIResumedSymbolLoc_ptr;
  v6 = getIASignalWritingToolsUIResumedSymbolLoc_ptr;
  if (!getIASignalWritingToolsUIResumedSymbolLoc_ptr)
  {
    v1 = InputAnalyticsLibrary();
    v4[3] = dlsym(v1, "IASignalWritingToolsUIResumed");
    getIASignalWritingToolsUIResumedSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1D4528660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIASignalWritingToolsUIResumedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IASignalWritingToolsUIResumed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalWritingToolsUIResumedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalWritingToolsUITerminatedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IASignalWritingToolsUITerminated");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalWritingToolsUITerminatedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalWritingToolsActionSelectedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IASignalWritingToolsActionSelected");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalWritingToolsActionSelectedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadKeyWritingToolsInputTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadKeyWritingToolsInputText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadKeyWritingToolsInputTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsUIRewritingViewSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsUIRewritingView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsUIRewritingViewSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsUIProofreadingViewSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsUIProofreadingView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsUIProofreadingViewSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalWritingToolsButtonTappedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IASignalWritingToolsButtonTapped");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalWritingToolsButtonTappedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadKeyWritingToolsInteractionTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadKeyWritingToolsInteractionType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadKeyWritingToolsInteractionTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsInteractionTypeShowOriginalSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsInteractionTypeShowOriginal");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsInteractionTypeShowOriginalSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsInteractionTypeShowRewrittenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsInteractionTypeShowRewritten");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsInteractionTypeShowRewrittenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getIAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc_ptr;
  v6 = getIAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc_ptr;
  if (!getIAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc_ptr)
  {
    v1 = InputAnalyticsLibrary();
    v4[3] = dlsym(v1, "IAPayloadValueWritingToolsInteractionTypeUnspecified");
    getIAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1D4528A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsInteractionTypeUnspecified");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalWritingToolsResultsAcceptedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IASignalWritingToolsResultsAccepted");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalWritingToolsResultsAcceptedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadKeyWritingToolsAcceptedAllSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadKeyWritingToolsAcceptedAll");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadKeyWritingToolsAcceptedAllSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadKeyWritingToolsResultIndicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadKeyWritingToolsResultIndices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadKeyWritingToolsResultIndicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalWritingToolsResultsRejectedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IASignalWritingToolsResultsRejected");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalWritingToolsResultsRejectedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadKeyWritingToolsRejectedAllSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadKeyWritingToolsRejectedAll");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadKeyWritingToolsRejectedAllSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalWritingToolsResultsOfferedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IASignalWritingToolsResultsOffered");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalWritingToolsResultsOfferedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadKeyWritingToolsNumResultsOfferedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadKeyWritingToolsNumResultsOffered");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadKeyWritingToolsNumResultsOfferedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadKeyWritingToolsResultIndexSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadKeyWritingToolsResultIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadKeyWritingToolsResultIndexSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalWritingToolsPanelDismissedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IASignalWritingToolsPanelDismissed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalWritingToolsPanelDismissedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D4529A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D452BA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D452D758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D452F1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D452F538(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D452FD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  objc_destroyWeak(va);
  objc_destroyWeak((v21 - 112));
  _Unwind_Resume(a1);
}

void sub_1D4532E8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1D45339B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4535250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4535DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4538448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1D453FF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4540700(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D4540B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _performSyncOnMain(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___performSyncOnMain_block_invoke;
  block[3] = &unk_1E8480E98;
  v4 = v1;
  v2 = v1;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
}

uint64_t ___performSyncOnMain_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1D45423CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4545AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4547004(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1D4547374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D45476AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

id WTInputAnalyticsLog(uint64_t a1)
{
  if (WTInputAnalyticsLog_onceToken != -1)
  {
    WTInputAnalyticsLog_cold_1();
  }

  v2 = WTInputAnalyticsLog___instance;

  return v2;
}

uint64_t __WTInputAnalyticsLog_block_invoke()
{
  WTInputAnalyticsLog___instance = os_log_create("com.apple.WritingTools", "IASignalAnalytics");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D4549DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIASignalAnalyticsClass_block_invoke_0(uint64_t a1)
{
  InputAnalyticsLibraryCore_0(0);
  result = objc_getClass("IASignalAnalytics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalAnalyticsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t InputAnalyticsLibraryCore_0(uint64_t a1)
{
  if (!InputAnalyticsLibraryCore_frameworkLibrary_0)
  {
    InputAnalyticsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  return InputAnalyticsLibraryCore_frameworkLibrary_0;
}

uint64_t __InputAnalyticsLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  InputAnalyticsLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getIAChannelWritingToolsSymbolLoc_block_invoke_0(uint64_t a1, uint64_t a2)
{
  v3 = InputAnalyticsLibrary_0();
  result = dlsym(v3, "IAChannelWritingTools");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAChannelWritingToolsSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t InputAnalyticsLibrary_0()
{
  v3 = 0;
  v0 = InputAnalyticsLibraryCore_0(&v3);
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

void *__getIASignalWritingToolsPanelRequestedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary_0();
  result = dlsym(v2, "IASignalWritingToolsPanelRequested");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalWritingToolsPanelRequestedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadKeyWritingToolsUISymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = InputAnalyticsLibrary_0();
  result = dlsym(v2, "IAPayloadKeyWritingToolsUI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadKeyWritingToolsUISymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsUIAffordanceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary_0();
  result = dlsym(v2, "IAPayloadValueWritingToolsUIAffordance");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsUIAffordanceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D454A660(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

BOOL sub_1D454A6F0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1D454A720@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D454A74C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1D454A838@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1D454A9B4(a1);

  *a2 = v3;
  return result;
}

void *sub_1D454A884@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D454A908(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIWritingToolsResultOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D454A9B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id WTAlertHeaderViewController.__allocating_init(image:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC14WritingToolsUI27WTAlertHeaderViewController_imageView] = 0;
  *&v3[OBJC_IVAR____TtC14WritingToolsUI27WTAlertHeaderViewController_image] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id WTAlertHeaderViewController.init(image:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14WritingToolsUI27WTAlertHeaderViewController_imageView] = 0;
  *&v2[OBJC_IVAR____TtC14WritingToolsUI27WTAlertHeaderViewController_image] = a1;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WTAlertHeaderViewController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D454ABA8(uint64_t a1, uint64_t a2)
{
  v38.receiver = v2;
  v38.super_class = type metadata accessor for WTAlertHeaderViewController(a1, a2);
  objc_msgSendSuper2(&v38, sel_viewDidLoad);
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v4 = [v2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = v3;
  [v5 addSubview_];

  v7 = *&v2[OBJC_IVAR____TtC14WritingToolsUI27WTAlertHeaderViewController_imageView];
  *&v2[OBJC_IVAR____TtC14WritingToolsUI27WTAlertHeaderViewController_imageView] = v6;
  v8 = v6;

  v9 = [objc_opt_self() secondaryLabelColor];
  [v8 setTintColor_];

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setContentMode_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D2228, &qword_1D455A620);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D455A610;
  v11 = [v2 view];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v11 heightAnchor];

  v14 = [v13 constraintEqualToConstant_];
  *(v10 + 32) = v14;
  v15 = [v8 topAnchor];

  v16 = [v2 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v15 constraintEqualToAnchor:v18 constant:24.0];
  *(v10 + 40) = v19;
  v20 = [v8 bottomAnchor];

  v21 = [v2 view];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = v21;
  v23 = [v21 bottomAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(v10 + 48) = v24;
  v25 = [v8 leadingAnchor];

  v26 = [v2 view];
  if (!v26)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v10 + 56) = v29;
  v30 = [v8 trailingAnchor];

  v31 = [v2 view];
  if (v31)
  {
    v32 = v31;
    v33 = objc_opt_self();
    v34 = [v32 trailingAnchor];

    v35 = [v30 constraintEqualToAnchor_];
    *(v10 + 64) = v35;
    sub_1D454B048(0, v36);
    v37 = sub_1D45556BC();

    [v33 activateConstraints_];

    return;
  }

LABEL_13:
  __break(1u);
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

unint64_t sub_1D454B048(uint64_t a1, uint64_t a2)
{
  result = qword_1EC7D2230;
  if (!qword_1EC7D2230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7D2230);
  }

  return result;
}

id WTAlertHeaderViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D455568C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WTAlertHeaderViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WTAlertHeaderViewController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for WritingTools(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WritingTools(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D454B3D4()
{
  result = qword_1EC7D2238;
  if (!qword_1EC7D2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D2238);
  }

  return result;
}

uint64_t sub_1D454B43C()
{
  v1 = *v0;
  sub_1D45557DC();
  MEMORY[0x1DA6D8AB0](v1);
  return sub_1D45557FC();
}

uint64_t sub_1D454B4B0(uint64_t a1)
{
  v2 = *v1;
  sub_1D45557DC();
  MEMORY[0x1DA6D8AB0](v2);
  return sub_1D45557FC();
}

void sub_1D454B528()
{
  v0 = sub_1D455568C();
  v1 = MGGetBoolAnswer();

  byte_1EC7D2240 = v1;
}

uint64_t sub_1D454B580()
{
  if (qword_1EC7D21A8 != -1)
  {
    swift_once();
  }

  if (byte_1EC7D2240 == 1)
  {
    v2[3] = &type metadata for WritingTools;
    v2[4] = sub_1D451F108();
    LOBYTE(v2[0]) = 14;
    v0 = sub_1D455561C();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

id FeedbackConfigurationHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedbackConfigurationHelper.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FeedbackConfigurationHelper(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id FeedbackConfigurationHelper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FeedbackConfigurationHelper(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1D454B834()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestedTool;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454B8CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestedTool;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454B9C4()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_handoffOriginatorTool;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454BA5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_handoffOriginatorTool;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454BBE4()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_editable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454BC7C(char a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_editable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454BD74()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsInlineEditing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454BE0C(char a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsInlineEditing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454BF04()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_allowedResultOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454BF9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_allowedResultOptions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1D454C09C()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_smartReplyConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D454C0F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_smartReplyConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D454C1F4()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForInputDashboard;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454C28C(char a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForInputDashboard;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454C384()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForAssistant;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454C41C(char a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForAssistant;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454C514()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsFormSheetPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454C5AC(char a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsFormSheetPresentation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454C6A4()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_formSheetUIType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454C73C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_formSheetUIType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1D454C838()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_shareSheetPayload;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D454C890(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_1D454C8EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_shareSheetPayload;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1D454C944(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

uint64_t sub_1D454CBF8()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isQuestionnairePopover;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454CC90(char a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isQuestionnairePopover;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454CD88()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceResponderHorizontalSizeClass;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454CE20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceResponderHorizontalSizeClass;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454CF18()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWindowingModeEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454CFB0(char a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWindowingModeEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1D454D06C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D22A8, &qword_1D455A760);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a3;
  swift_beginAccess();
  sub_1D4551990(a1 + v8, v7);
  v9 = sub_1D455560C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1D45555EC();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_1D454D1B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1D4551990(v2 + v4, a2);
}

void sub_1D454D214(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D22A8, &qword_1D455A760);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (a3)
  {
    sub_1D45555FC();
    v10 = sub_1D455560C();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1D455560C();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = *a4;
  swift_beginAccess();
  v13 = a1;
  sub_1D4551A00(v9, &a1[v12]);
  swift_endAccess();
}

uint64_t sub_1D454D360(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1D4551A00(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_1D454D3BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D22A8, &qword_1D455A760);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1D4551990(a1, &v14 - v9);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  sub_1D4551A00(v10, v11 + v12);
  return swift_endAccess();
}

id sub_1D454D578(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_1D455568C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1D454D60C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1D454D66C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1D455569C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1D454D6F4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1D454D750(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_1D454D860()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestPromptEntry;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454D8F8(char a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestPromptEntry;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454D9F0()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceUserInterfaceIdiom;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454DA88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceUserInterfaceIdiom;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454DB80()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isResumingFromModelEnrollment;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454DC18(char a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isResumingFromModelEnrollment;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454DD10()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_hostingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454DDA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_hostingMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454DEA0()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWebKitView;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454DF38(char a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWebKitView;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454E030()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isFromHandoff;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454E0C8(char a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isFromHandoff;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454E1C0()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_includesTextListMarkers;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454E258(char a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_includesTextListMarkers;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454E350()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForCopy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454E3E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForCopy;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454E4E0()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForPaste;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454E578(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForPaste;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454E670()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrag;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454E708(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrag;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D454E800()
{
  v1 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrop;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D454E898(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrop;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_1D454E948(char a1)
{
  result = 0x6574736575716572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x74706D6F7270;
      break;
    case 3:
      result = 0x656C626174696465;
      break;
    case 4:
    case 21:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
    case 27:
    case 29:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x737341726F467369;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0x656568536D726F66;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x556E6F6973736573;
      break;
    case 13:
      result = 0x6974736567677573;
      break;
    case 14:
      result = 0x55747865746E6F63;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD000000000000022;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0x636974796C616E61;
      break;
    case 19:
      result = 0x4449656C646E7562;
      break;
    case 20:
      result = 0x4449656E656373;
      break;
    case 22:
      result = 0xD000000000000018;
      break;
    case 23:
      result = 0xD00000000000001DLL;
      break;
    case 24:
      result = 0x74694B6265577369;
      break;
    case 25:
      result = 0x4D676E6974736F68;
      break;
    case 26:
      result = 0x61486D6F72467369;
      break;
    case 28:
      result = 0xD000000000000016;
      break;
    case 30:
      result = 0xD000000000000016;
      break;
    case 31:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D454ECE4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D454E948(*a1);
  v5 = v4;
  if (v3 == sub_1D454E948(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D45557BC();
  }

  return v8 & 1;
}

uint64_t sub_1D454ED6C()
{
  v1 = *v0;
  sub_1D45557DC();
  sub_1D454E948(v1);
  sub_1D45556AC();

  return sub_1D45557FC();
}

uint64_t sub_1D454EDD0(uint64_t a1)
{
  sub_1D454E948(*v1);
  sub_1D45556AC();
}

uint64_t sub_1D454EE24(uint64_t a1)
{
  v2 = *v1;
  sub_1D45557DC();
  sub_1D454E948(v2);
  sub_1D45556AC();

  return sub_1D45557FC();
}

unint64_t sub_1D454EE84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D4554260(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D454EEB4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D454E948(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D454EEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4554260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D454EF28(uint64_t a1)
{
  v2 = sub_1D4551AB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D454EF64(uint64_t a1)
{
  v2 = sub_1D4551AB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D454EFA0(void *a1)
{
  v104 = *MEMORY[0x1E69E9840];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D22A8, &qword_1D455A760);
  v2 = MEMORY[0x1EEE9AC00](v67);
  v64 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v65 = &v55 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v66 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v55 - v8;
  v9 = sub_1D455557C();
  v69 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D22B0, &qword_1D455A768);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4551AB4();
  v16 = v12;
  v17 = v71;
  sub_1D455581C();
  swift_beginAccess();
  v103 = 0;
  v18 = v70;
  sub_1D455577C();
  if (v18)
  {
    return (*(v13 + 8))(v15, v16);
  }

  v62 = v11;
  v63 = v9;
  v20 = v69;
  v70 = v13;
  swift_beginAccess();
  v102 = 1;
  sub_1D455577C();
  v21 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_prompt;
  swift_beginAccess();
  v101 = *(v17 + v21);
  v100 = 2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D22B8, &qword_1D455A770);
  v23 = sub_1D4551B08();
  sub_1D455579C();
  v60 = v23;
  v61 = v22;
  swift_beginAccess();
  v100 = 3;
  sub_1D455576C();
  swift_beginAccess();
  v99 = 4;
  sub_1D455576C();
  swift_beginAccess();
  v98 = 5;
  sub_1D455578C();
  v58 = 0;
  v59 = v16;
  v24 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_smartReplyConfiguration;
  swift_beginAccess();
  v25 = *(v17 + v24);
  if (!v25)
  {
    v35 = v70;
LABEL_13:
    swift_beginAccess();
    v96 = 7;
    v37 = v58;
    v38 = v59;
    sub_1D455576C();
    if (v37)
    {
      return (*(v35 + 8))(v15, v38);
    }

    swift_beginAccess();
    v95 = 8;
    sub_1D455576C();
    swift_beginAccess();
    v94 = 9;
    sub_1D455576C();
    swift_beginAccess();
    v93 = 10;
    sub_1D455577C();
    v39 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_shareSheetPayload;
    v40 = v71;
    swift_beginAccess();
    v41 = *(v40 + v39);
    if (v41)
    {
      v42 = v41;
      sub_1D455558C();
      v92 = 11;
      sub_1D45523B0(&qword_1EC7D22C0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
      sub_1D455579C();
      (*(v20 + 8))(v62, v63);
    }

    else
    {
      v92 = 11;
      sub_1D45557AC();
    }

    v43 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sessionUUID;
    v44 = v71;
    swift_beginAccess();
    sub_1D4551990(v44 + v43, v68);
    v91 = 12;
    sub_1D4551BCC();
    sub_1D455579C();
    sub_1D45521BC(v68, &qword_1EC7D22A8, &qword_1D455A760);
    v45 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_suggestionUUID;
    v46 = v71;
    swift_beginAccess();
    sub_1D4551990(v46 + v45, v66);
    v90 = 13;
    sub_1D455579C();
    sub_1D45521BC(v66, &qword_1EC7D22A8, &qword_1D455A760);
    v47 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_contextUUID;
    v48 = v71;
    swift_beginAccess();
    sub_1D4551990(v48 + v47, v65);
    v89 = 14;
    sub_1D455579C();
    sub_1D45521BC(v65, &qword_1EC7D22A8, &qword_1D455A760);
    swift_beginAccess();
    v88 = 15;
    sub_1D455576C();
    swift_beginAccess();
    v87 = 16;
    sub_1D455577C();
    swift_beginAccess();
    v86 = 17;
    sub_1D455576C();
    v49 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_analyticsUUID;
    v50 = v71;
    swift_beginAccess();
    sub_1D4551990(v50 + v49, v64);
    v85 = 18;
    sub_1D455579C();
    sub_1D45521BC(v64, &qword_1EC7D22A8, &qword_1D455A760);
    v51 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_bundleID;
    v52 = v71;
    swift_beginAccess();
    v84 = *(v52 + v51);
    LOBYTE(v83) = 19;
    sub_1D455579C();
    v53 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sceneID;
    v54 = v71;
    swift_beginAccess();
    v83 = *(v54 + v53);
    v82 = 20;
    sub_1D455579C();
    swift_beginAccess();
    v82 = 21;
    sub_1D455576C();
    swift_beginAccess();
    v81 = 22;
    sub_1D455577C();
    swift_beginAccess();
    v80 = 23;
    sub_1D455576C();
    swift_beginAccess();
    v79 = 25;
    sub_1D455577C();
    swift_beginAccess();
    v78 = 24;
    sub_1D455576C();
    swift_beginAccess();
    v77 = 26;
    sub_1D455576C();
    swift_beginAccess();
    v76 = 27;
    sub_1D455576C();
    swift_beginAccess();
    v75 = 28;
    sub_1D455577C();
    swift_beginAccess();
    v74 = 29;
    sub_1D455577C();
    swift_beginAccess();
    v73 = 30;
    sub_1D455577C();
    swift_beginAccess();
    v72 = 31;
    sub_1D455577C();
    return (*(v70 + 8))(v15, v59);
  }

  v26 = objc_opt_self();
  v97[0] = 0;
  v27 = v25;
  v28 = [v26 archivedDataWithRootObject:v27 requiringSecureCoding:1 error:v97];
  v29 = v97[0];
  if (v28)
  {
    v30 = sub_1D45555DC();
    v32 = v31;

    v56 = v30;
    v57 = v32;
    v97[0] = v30;
    v97[1] = v32;
    v96 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D22C8, &qword_1D455A778);
    sub_1D4551C80();
    v33 = v58;
    v34 = v59;
    sub_1D455579C();
    v35 = v70;
    if (v33)
    {
      (*(v70 + 8))(v15, v34);

      return sub_1D4551D58(v56, v57);
    }

    v58 = 0;

    sub_1D4551D58(v56, v57);
    goto LABEL_13;
  }

  v36 = v29;
  sub_1D45555AC();

  swift_willThrow();
  return (*(v70 + 8))(v15, v59);
}

id WTStartupOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WTStartupOptions.init()()
{
  *&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestedTool] = 0;
  *&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_handoffOriginatorTool] = 0;
  v1 = &v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_prompt];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_editable] = 0;
  v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsInlineEditing] = 0;
  *&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_allowedResultOptions] = 0;
  *&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_smartReplyConfiguration] = 0;
  v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForInputDashboard] = 0;
  v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForAssistant] = 0;
  v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsFormSheetPresentation] = 0;
  *&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_formSheetUIType] = 0;
  *&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_shareSheetPayload] = 0;
  v2 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sessionUUID;
  v3 = sub_1D455560C();
  v4 = *(*(v3 - 8) + 56);
  v4(&v0[v2], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_suggestionUUID], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_contextUUID], 1, 1, v3);
  v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isQuestionnairePopover] = 0;
  *&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceResponderHorizontalSizeClass] = 0;
  v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWindowingModeEnabled] = 0;
  v4(&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_analyticsUUID], 1, 1, v3);
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = sub_1D455569C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = &v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_bundleID];
  *v10 = v7;
  v10[1] = v9;
  v11 = &v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sceneID];
  *v11 = 0;
  v11[1] = 0;
  v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestPromptEntry] = 0;
  *&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceUserInterfaceIdiom] = -1;
  v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isResumingFromModelEnrollment] = 0;
  *&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_hostingMode] = 0;
  v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWebKitView] = 0;
  v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isFromHandoff] = 0;
  v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_includesTextListMarkers] = 0;
  *&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForCopy] = 0;
  *&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForPaste] = 0;
  *&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrag] = 0;
  *&v0[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrop] = 0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for WTStartupOptions(0);
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t *WTStartupOptions.init(from:)(void *a1)
{
  v201 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D22A8, &qword_1D455A760);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v139 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v140 = &v126 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v141 = &v126 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v142 = &v126 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D22E0, &qword_1D455A780);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v148 = &v126 - v11;
  v147 = sub_1D455557C();
  v143 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v145 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D22E8, &qword_1D455A788);
  v157 = *(v13 - 8);
  v158 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v170 = &v126 - v14;
  v156 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestedTool;
  *&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestedTool] = 0;
  v155 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_handoffOriginatorTool;
  *&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_handoffOriginatorTool] = 0;
  v15 = &v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_prompt];
  *v15 = 0;
  v15[1] = 0;
  v167 = v15;
  v154 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_editable;
  v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_editable] = 0;
  v153 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsInlineEditing;
  v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsInlineEditing] = 0;
  v152 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_allowedResultOptions;
  *&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_allowedResultOptions] = 0;
  v168 = &v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_smartReplyConfiguration];
  *&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_smartReplyConfiguration] = 0;
  v151 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForInputDashboard;
  v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForInputDashboard] = 0;
  v150 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForAssistant;
  v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForAssistant] = 0;
  v149 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsFormSheetPresentation;
  v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsFormSheetPresentation] = 0;
  v146 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_formSheetUIType;
  *&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_formSheetUIType] = 0;
  v166 = &v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_shareSheetPayload];
  *&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_shareSheetPayload] = 0;
  v16 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sessionUUID;
  v17 = sub_1D455560C();
  v18 = *(*(v17 - 8) + 56);
  v165 = v16;
  v18(&v1[v16], 1, 1, v17);
  v164 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_suggestionUUID;
  v18(&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_suggestionUUID], 1, 1, v17);
  v163 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_contextUUID;
  v18(&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_contextUUID], 1, 1, v17);
  v129 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isQuestionnairePopover;
  v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isQuestionnairePopover] = 0;
  v130 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceResponderHorizontalSizeClass;
  *&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceResponderHorizontalSizeClass] = 0;
  v131 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWindowingModeEnabled;
  v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWindowingModeEnabled] = 0;
  v162 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_analyticsUUID;
  v144 = v17;
  v18(&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_analyticsUUID], 1, 1, v17);
  v19 = [objc_opt_self() mainBundle];
  v20 = [v19 bundleIdentifier];

  if (v20)
  {
    v21 = sub_1D455569C();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = &v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_bundleID];
  *v24 = v21;
  v24[1] = v23;
  v161 = v24;
  v25 = &v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sceneID];
  *v25 = 0;
  v25[1] = 0;
  v160 = v25;
  v132 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestPromptEntry;
  v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestPromptEntry] = 0;
  v26 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceUserInterfaceIdiom;
  *&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceUserInterfaceIdiom] = -1;
  v133 = v26;
  v134 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isResumingFromModelEnrollment;
  v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isResumingFromModelEnrollment] = 0;
  v135 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_hostingMode;
  *&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_hostingMode] = 0;
  v136 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWebKitView;
  v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWebKitView] = 0;
  v137 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isFromHandoff;
  v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isFromHandoff] = 0;
  v138 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_includesTextListMarkers;
  v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_includesTextListMarkers] = 0;
  v27 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForCopy;
  *&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForCopy] = 0;
  v28 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForPaste;
  *&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForPaste] = 0;
  v29 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrag;
  *&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrag] = 0;
  v30 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrop;
  v169 = v1;
  *&v1[OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrop] = 0;
  __swift_project_boxed_opaque_existential_1(v201, v201[3]);
  sub_1D4551AB4();
  v31 = v159;
  sub_1D455580C();
  if (v31)
  {
    v32 = v169;
    __swift_destroy_boxed_opaque_existential_1(v201);

    v33 = &qword_1EC7D22A8;
    sub_1D45521BC(&v32[v165], &qword_1EC7D22A8, &qword_1D455A760);
    sub_1D45521BC(&v32[v164], &qword_1EC7D22A8, &qword_1D455A760);
    sub_1D45521BC(&v32[v163], &qword_1EC7D22A8, &qword_1D455A760);
    sub_1D45521BC(&v32[v162], &qword_1EC7D22A8, &qword_1D455A760);

    type metadata accessor for WTStartupOptions(0);
    swift_deallocPartialClassInstance();
    return v33;
  }

  v126 = v27;
  v127 = v28;
  v128 = v29;
  v159 = v30;
  v200 = 0;
  v35 = sub_1D455574C();
  v36 = v169;
  v37 = v156;
  swift_beginAccess();
  *&v36[v37] = v35;
  v199 = 1;
  v38 = sub_1D455574C();
  v39 = v155;
  swift_beginAccess();
  *&v36[v39] = v38;
  v198 = 2;
  v40 = sub_1D455571C();
  v41 = v167;
  v42 = v40;
  v44 = v43;
  swift_beginAccess();
  *v41 = v42;
  v41[1] = v44;

  v197 = 3;
  LOBYTE(v42) = sub_1D455573C();
  v45 = v169;
  v46 = v154;
  swift_beginAccess();
  v45[v46] = v42 & 1;
  v196 = 4;
  LOBYTE(v42) = sub_1D455573C();
  v47 = v153;
  swift_beginAccess();
  v45[v47] = v42 & 1;
  v195 = 5;
  v48 = sub_1D455575C();
  v49 = v152;
  swift_beginAccess();
  *&v45[v49] = v48;
  v192 = 6;
  sub_1D4552154();
  sub_1D455572C();
  v50 = v193;
  v51 = v194;
  if (v194 >> 60 != 15)
  {
    v53 = v194 >> 62;
    if ((v194 >> 62) > 1)
    {
      if (v53 != 2)
      {
LABEL_16:
        sub_1D45521A8(v193, v194);
LABEL_19:
        v52 = 0;
        goto LABEL_22;
      }

      v54 = *(v193 + 16);
      v55 = *(v193 + 24);
    }

    else
    {
      if (!v53)
      {
        if ((v194 & 0xFF000000000000) == 0)
        {
          goto LABEL_16;
        }

LABEL_21:
        sub_1D4552284(0, &qword_1EC7D22F0, 0x1E696ACD0);
        sub_1D4552284(0, &qword_1EC7D22F8, 0x1E69E3160);
        v52 = sub_1D45556CC();
        sub_1D45521A8(v50, v51);
        goto LABEL_22;
      }

      v54 = v193;
      v55 = v193 >> 32;
    }

    if (v54 == v55)
    {
      goto LABEL_19;
    }

    sub_1D455221C(v193, v194);
    goto LABEL_21;
  }

  v52 = 0;
LABEL_22:
  v56 = v168;
  swift_beginAccess();
  v57 = *v56;
  *v56 = v52;

  v192 = 7;
  v58 = sub_1D455573C();
  v156 = v50;
  v59 = v169;
  v60 = v151;
  swift_beginAccess();
  v59[v60] = v58 & 1;
  v191 = 8;
  v61 = sub_1D455573C();
  v155 = v51;
  v62 = v169;
  v63 = v150;
  swift_beginAccess();
  v62[v63] = v61 & 1;
  v190 = 9;
  v64 = sub_1D455573C();
  v65 = v169;
  v66 = v149;
  swift_beginAccess();
  v65[v66] = v64 & 1;
  v189 = 10;
  v67 = sub_1D455574C();
  v68 = v169;
  v69 = v146;
  swift_beginAccess();
  *&v68[v69] = v67;
  v188 = 11;
  sub_1D45523B0(&qword_1EC7D16F0, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
  sub_1D455572C();
  v70 = *(v143 + 48);
  if (v70(v148, 1, v147) == 1)
  {
    sub_1D455556C();
    if (v70(v148, 1, v147) != 1)
    {
      sub_1D45521BC(v148, &qword_1EC7D22E0, &qword_1D455A780);
    }
  }

  else
  {
    (*(v143 + 32))(v145, v148, v147);
  }

  sub_1D4552284(0, &qword_1EC7D16A8, 0x1E696AAB0);
  v71 = sub_1D45556DC();
  v72 = v166;
  swift_beginAccess();
  v73 = *v72;
  *v72 = v71;

  v187 = 12;
  sub_1D45523B0(&qword_1EC7D16D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D455572C();
  v74 = v165;
  v75 = v169;
  swift_beginAccess();
  sub_1D4551A00(v142, &v75[v74]);
  swift_endAccess();
  v187 = 13;
  sub_1D455572C();
  v76 = v164;
  v77 = v169;
  swift_beginAccess();
  sub_1D4551A00(v141, &v77[v76]);
  swift_endAccess();
  v187 = 14;
  sub_1D455572C();
  v78 = v163;
  v79 = v169;
  swift_beginAccess();
  sub_1D4551A00(v140, &v79[v78]);
  swift_endAccess();
  v187 = 15;
  LOBYTE(v78) = sub_1D455573C();
  v80 = v169;
  v81 = v129;
  swift_beginAccess();
  v80[v81] = v78 & 1;
  v186 = 16;
  v82 = sub_1D455574C();
  v83 = v169;
  v84 = v130;
  swift_beginAccess();
  *&v83[v84] = v82;
  v185 = 17;
  LOBYTE(v82) = sub_1D455573C();
  v85 = v169;
  v86 = v131;
  swift_beginAccess();
  v85[v86] = v82 & 1;
  v184 = 18;
  sub_1D455572C();
  v87 = v162;
  v88 = v169;
  swift_beginAccess();
  sub_1D4551A00(v139, &v88[v87]);
  swift_endAccess();
  v184 = 19;
  v89 = sub_1D455571C();
  v91 = v90;
  v92 = v161;
  swift_beginAccess();
  *v92 = v89;
  v92[1] = v91;

  v183 = 20;
  v93 = sub_1D455571C();
  v95 = v94;
  v96 = v160;
  swift_beginAccess();
  *v96 = v93;
  v96[1] = v95;

  v182 = 21;
  LOBYTE(v93) = sub_1D455573C();
  v97 = v169;
  v98 = v132;
  swift_beginAccess();
  v97[v98] = v93 & 1;
  v181 = 22;
  v99 = sub_1D455574C();
  v100 = v169;
  v101 = v133;
  swift_beginAccess();
  *&v100[v101] = v99;
  v180 = 23;
  LOBYTE(v99) = sub_1D455573C();
  v102 = v169;
  v103 = v134;
  swift_beginAccess();
  v102[v103] = v99 & 1;
  v179 = 25;
  v104 = sub_1D455574C();
  v105 = v169;
  v106 = v135;
  swift_beginAccess();
  *&v105[v106] = v104;
  v178 = 24;
  LOBYTE(v104) = sub_1D455573C();
  v107 = v169;
  v108 = v136;
  swift_beginAccess();
  v107[v108] = v104 & 1;
  v177 = 26;
  LOBYTE(v104) = sub_1D455573C();
  v109 = v169;
  v110 = v137;
  swift_beginAccess();
  v109[v110] = v104 & 1;
  v176 = 27;
  LOBYTE(v104) = sub_1D455573C();
  v111 = v169;
  v112 = v138;
  swift_beginAccess();
  v111[v112] = v104 & 1;
  v175 = 28;
  v113 = sub_1D455574C();
  v114 = v126;
  v115 = v169;
  swift_beginAccess();
  *&v115[v114] = v113;
  v174 = 29;
  v116 = sub_1D455574C();
  v117 = v127;
  v118 = v169;
  swift_beginAccess();
  *&v118[v117] = v116;
  v173 = 30;
  v119 = sub_1D455574C();
  v120 = v128;
  v121 = v169;
  swift_beginAccess();
  *&v121[v120] = v119;
  v172 = 31;
  v122 = sub_1D455574C();
  (*(v157 + 8))(v170, v158);
  sub_1D45521A8(v156, v155);
  v123 = v159;
  v124 = v169;
  swift_beginAccess();
  *&v124[v123] = v122;
  v125 = type metadata accessor for WTStartupOptions(0);
  v171.receiver = v124;
  v171.super_class = v125;
  v33 = objc_msgSendSuper2(&v171, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v201);
  return v33;
}

id WTStartupOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WTStartupOptions(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *sub_1D45518AC@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for WTStartupOptions(0));
  result = WTStartupOptions.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t (*sub_1D4551928(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  sub_1D455442C(a1, v3);
  v1 = swift_allocObject();
  sub_1D4554490(v3, v1 + 16);
  return sub_1D45544A8;
}

uint64_t sub_1D4551990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D22A8, &qword_1D455A760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4551A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D22A8, &qword_1D455A760);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D4551AB4()
{
  result = qword_1EC7D1718;
  if (!qword_1EC7D1718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D1718);
  }

  return result;
}

unint64_t sub_1D4551B08()
{
  result = qword_1EC7D16B0;
  if (!qword_1EC7D16B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D22B8, &qword_1D455A770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D16B0);
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

unint64_t sub_1D4551BCC()
{
  result = qword_1EC7D16D0;
  if (!qword_1EC7D16D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D22A8, &qword_1D455A760);
    sub_1D45523B0(&qword_1EC7D16E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D16D0);
  }

  return result;
}

unint64_t sub_1D4551C80()
{
  result = qword_1EC7D22D0;
  if (!qword_1EC7D22D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D22C8, &qword_1D455A778);
    sub_1D4551D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D22D0);
  }

  return result;
}

unint64_t sub_1D4551D04()
{
  result = qword_1EC7D22D8;
  if (!qword_1EC7D22D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D22D8);
  }

  return result;
}

uint64_t sub_1D4551D58(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t (*static WTSceneConnectionOptionsDefinition.sceneDelegateMethod.getter())()
{
  swift_beginAccess();
  v0 = off_1EEC66E38;

  return v0;
}

uint64_t static WTSceneConnectionOptionsDefinition.sceneDelegateMethod.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  off_1EEC66E38 = a1;
  qword_1EEC66E40 = a2;
}

uint64_t sub_1D4551EB4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = off_1EEC66E38;
  v2 = qword_1EEC66E40;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = sub_1D4554358;
  a1[1] = v4;
}

uint64_t sub_1D4551F38(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  off_1EEC66E38 = sub_1D45542B4;
  qword_1EEC66E40 = v3;
}

uint64_t (*sub_1D4551FC8())()
{
  swift_beginAccess();
  v1 = off_1EEC66E38;
  v0 = qword_1EEC66E40;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return sub_1D4554518;
}

uint64_t sub_1D4552054(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_1D455567C();
}

uint64_t type metadata accessor for WTStartupOptions(uint64_t a1)
{
  result = qword_1EC7D16F8;
  if (!qword_1EC7D16F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D4552154()
{
  result = qword_1EC7D16E8;
  if (!qword_1EC7D16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D16E8);
  }

  return result;
}

uint64_t sub_1D45521A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D4551D58(result, a2);
  }

  return result;
}

uint64_t sub_1D45521BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D455221C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D4552230(a1, a2);
  }

  return a1;
}

uint64_t sub_1D4552230(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D4552284(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D45522CC()
{
  result = qword_1EC7D16B8;
  if (!qword_1EC7D16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D16B8);
  }

  return result;
}

uint64_t sub_1D45523B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id keypath_get_31Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t keypath_get_43Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_1D4551990(v4 + v5, a3);
}

uint64_t keypath_get_23Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t keypath_get_25Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_26Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_1D4552658(uint64_t a1)
{
  sub_1D4553EB4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D4553EB4(uint64_t a1)
{
  if (!qword_1EC7D1720)
  {
    sub_1D455560C();
    v1 = sub_1D45556EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7D1720);
    }
  }
}

uint64_t getEnumTagSinglePayload for WTSceneConnectionOptionsDefinition(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WTSceneConnectionOptionsDefinition(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WTStartupOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WTStartupOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D455415C()
{
  result = qword_1EC7D2300;
  if (!qword_1EC7D2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D2300);
  }

  return result;
}

unint64_t sub_1D45541B4()
{
  result = qword_1EC7D1708;
  if (!qword_1EC7D1708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D1708);
  }

  return result;
}

unint64_t sub_1D455420C()
{
  result = qword_1EC7D1710;
  if (!qword_1EC7D1710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D1710);
  }

  return result;
}

unint64_t sub_1D4554260(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D45557CC();

  if (v2 >= 0x20)
  {
    return 32;
  }

  else
  {
    return v2;
  }
}

uint64_t (*sub_1D45542B4())(uint64_t a1, uint64_t a2)
{
  (*(v0 + 16))(&v2);
  *(swift_allocObject() + 16) = v2;
  return sub_1D455431C;
}

uint64_t sub_1D455431C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_1D455438C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1D45543C4@<X0>(void *a1@<X8>)
{
  v3 = (*(v1 + 16))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a1 = sub_1D455435C;
  a1[1] = result;
  return result;
}

uint64_t sub_1D455442C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D4554490(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D45544A8(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t sub_1D45546BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D455563C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x1E69A07D8], v2);
  sub_1D455562C();
  return (*(v3 + 8))(v5, v2);
}

id SettingsDestination.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SettingsDestination.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SettingsDestination(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id SettingsDestination.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SettingsDestination(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC58](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}