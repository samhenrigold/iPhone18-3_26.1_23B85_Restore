uint64_t OUTLINED_FUNCTION_56_0()
{
  v3 = *(v1 - 136);

  return sub_1B1E03C48(v3, v0);
}

uint64_t OUTLINED_FUNCTION_57_0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1B1F1A900();
}

void OUTLINED_FUNCTION_58_0()
{

  JUMPOUT(0x1B273E060);
}

void sub_1B1E7D17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1E7D398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B1E7F9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  objc_destroyWeak((v27 - 128));
  _Unwind_Resume(a1);
}

id WFNameForGlyphSection(unint64_t a1)
{
  if (a1 <= 2)
  {
    a1 = WFLocalizedString(off_1E7AFFB30[a1]);
  }

  return a1;
}

id WFSystemGlyphCharactersInSection(uint64_t a1)
{
  v1 = &unk_1F2931500;
  if (a1 == 1)
  {
    v1 = &unk_1F2931518;
  }

  if (a1 == 2)
  {
    v1 = &unk_1F2931530;
  }

  v2 = v1;
  v3 = [v2 if_objectsPassingTest:&__block_literal_global_553];

  return v3;
}

BOOL __WFSystemGlyphCharactersInSection_block_invoke(uint64_t a1, void *a2)
{
  v2 = WFSystemImageNameForGlyphCharacter([a2 intValue]);
  v3 = v2 != 0;

  return v3;
}

id WFSystemOutlineGlyphCharactersInSection(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = WFSystemGlyphCharactersInSection(a1);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __WFSystemOutlineGlyphCharactersInSection_block_invoke;
  aBlock[3] = &unk_1E7AFFAC0;
  v5 = v2;
  v30 = v5;
  v6 = v3;
  v31 = v6;
  v7 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __WFSystemOutlineGlyphCharactersInSection_block_invoke_2;
  v26[3] = &unk_1E7AFFAE8;
  v20 = v5;
  v27 = v20;
  v18 = v6;
  v28 = v18;
  v19 = _Block_copy(v26);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = WFSystemImageNameForGlyphCharacter([v12 intValue]);
        v14 = WFSystemImageNameForOutlineGlyphCharacter([v12 intValue]);
        if ([v13 hasSuffix:@".fill"])
        {
          v7[2](v7, v12, v14);
        }

        else
        {
          v15 = [v20 objectForKey:v14];
          if (v15)
          {
            v19[2](v19, v12, v14, v15);
          }

          else
          {
            v7[2](v7, v12, v14);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v9);
  }

  v16 = v18;
  return v18;
}

void __WFSystemOutlineGlyphCharactersInSection_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a3;
  v10 = a2;
  v9 = [v5 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
  [v6 setObject:v9 forKey:v8];

  [*(a1 + 40) addObject:v10];
}

void __WFSystemOutlineGlyphCharactersInSection_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v10 = a2;
  [v7 setObject:v8 forKey:a3];
  v9 = *(a1 + 40);
  LODWORD(a2) = [v8 intValue];

  [v9 replaceObjectAtIndex:a2 withObject:v10];
}

id WFWorkflowGlyphCharactersInSection(uint64_t a1)
{
  v1 = &unk_1F2931500;
  if (a1 == 1)
  {
    v1 = &unk_1F2931518;
  }

  if (a1 == 2)
  {
    v1 = &unk_1F2931530;
  }

  v2 = v1;
  v3 = [v2 if_objectsPassingTest:&__block_literal_global_73];

  return v3;
}

BOOL __WFWorkflowGlyphCharactersInSection_block_invoke(uint64_t a1, void *a2)
{
  v2 = WFSystemImageNameForGlyphCharacter([a2 intValue]);
  v3 = v2 == 0;

  return v3;
}

id WFRepresentativeGlyphNameForSection(void *a1)
{
  if (a1 <= 2)
  {
    a1 = WFSystemImageNameForOutlineGlyphCharacter((0xF000E999E959uLL >> (16 * a1)));
  }

  return a1;
}

uint64_t WFSectionForGlyph(__int16 a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = [&unk_1F2931488 firstObject];
  v3 = [v2 unsignedIntegerValue];

  v11 = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __WFSectionForGlyph_block_invoke;
  v6[3] = &unk_1E7AFFB10;
  v7 = a1;
  v6[4] = &v8;
  [&unk_1F2931488 enumerateObjectsUsingBlock:v6];
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_1B1E853C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __WFSectionForGlyph_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 unsignedIntegerValue];
  v7 = v6;
  v8 = &unk_1F2931500;
  if (v6 == 1)
  {
    v8 = &unk_1F2931518;
  }

  if (v6 == 2)
  {
    v8 = &unk_1F2931530;
  }

  v11 = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(a1 + 40)];
  v10 = [v11 containsObject:v9];

  if (v10)
  {
    *(*(*(a1 + 32) + 8) + 24) = v7;
    *a4 = 1;
  }
}

id WFHumanReadableNameForWorkflowType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"ActionExtension"])
  {
    v2 = @"Share Sheet";
LABEL_13:
    v3 = WFLocalizedString(v2);
    goto LABEL_14;
  }

  if ([v1 isEqualToString:@"Watch"])
  {
    v2 = @"Apple Watch";
    goto LABEL_13;
  }

  if ([v1 isEqualToString:@"Sleep"])
  {
    v2 = @"Sleep Focus";
    goto LABEL_13;
  }

  if ([v1 isEqualToString:@"QuickActions"])
  {
    v2 = @"Quick Actions";
    goto LABEL_13;
  }

  if ([v1 isEqualToString:@"MenuBar"])
  {
    v2 = @"Menu Bar";
    goto LABEL_13;
  }

  if ([v1 isEqualToString:@"ReceivesOnScreenContent"])
  {
    v2 = @"Receives What’s On Screen";
    goto LABEL_13;
  }

  v3 = 0;
LABEL_14:

  return v3;
}

id WFAppIntentArchiverErrorWithLocalizedErrorDescription(void *a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E695DF90];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 dictionaryWithDictionary:v6];

  if (v4)
  {
    [v7 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AppIntentsArchivingError" code:1000 userInfo:v7];

  return v8;
}

void sub_1B1E888F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVSystemControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MediaExperienceLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7AFFD88;
    v8 = 0;
    MediaExperienceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFAVSystemController.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVSystemController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSystemControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFAVSystemController.m" lineNumber:17 description:{@"Unable to find class %s", "AVSystemController"}];

LABEL_10:
    __break(1u);
  }

  getAVSystemControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaExperienceLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaExperienceLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __Block_byref_object_copy__1140(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __VCUserActivityFromEvent_block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if ([v12 count])
  {
    v3 = [v12 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      v5 = [v4 firstObject];
      if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
        v7 = *(*(a1 + 40) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;
      }

      else if ([v4 count] < 2)
      {
        v8 = 0;
      }

      else
      {
        v8 = [v4 objectAtIndex:1];
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
            v10 = *(*(a1 + 40) + 8);
            v11 = *(v10 + 40);
            *(v10 + 40) = v9;
          }
        }
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

__CFString *WFRunSourceForExecutionContext(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7AFFFD8[a1];
  }
}

uint64_t WFRunSourceIsSpotlight(void *a1)
{
  v1 = WFRunSourceIsSpotlight_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&WFRunSourceIsSpotlight_onceToken, &__block_literal_global_1737);
  }

  v3 = [WFRunSourceIsSpotlight_s_spotlightRunSources containsObject:v2];

  return v3;
}

void __WFRunSourceIsSpotlight_block_invoke()
{
  v2[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"spotlight-search";
  v2[1] = @"spotlight-search-detail-page";
  v2[2] = @"spotlight_prediction";
  v2[3] = @"contextual-action-spotlight-unknown";
  v2[4] = @"contextual-action-spotlight-search";
  v2[5] = @"contextual-action-spotlight-prediction";
  v2[6] = @"contextual-action-spotlight-top-hit";
  v2[7] = @"spotlight-tool";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:8];
  v1 = WFRunSourceIsSpotlight_s_spotlightRunSources;
  WFRunSourceIsSpotlight_s_spotlightRunSources = v0;
}

uint64_t WFRunSourceIsToolKit(void *a1)
{
  v1 = WFRunSourceIsToolKit_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&WFRunSourceIsToolKit_onceToken, &__block_literal_global_198);
  }

  v3 = [WFRunSourceIsToolKit_toolKitRunSources containsObject:v2];

  return v3;
}

void __WFRunSourceIsToolKit_block_invoke()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"spotlight-tool";
  v2[1] = @"toolKit";
  v2[2] = @"siri-planner";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];
  v1 = WFRunSourceIsToolKit_toolKitRunSources;
  WFRunSourceIsToolKit_toolKitRunSources = v0;
}

uint64_t WFRunSourceIsSuggestion(void *a1)
{
  v1 = WFRunSourceIsSuggestion_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&WFRunSourceIsSuggestion_onceToken, &__block_literal_global_200);
  }

  v3 = [WFRunSourceIsSuggestion_s_suggestionRunSources containsObject:v2];

  return v3;
}

void __WFRunSourceIsSuggestion_block_invoke()
{
  v2[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"siri";
  v2[1] = @"lock_screen_prediction";
  v2[2] = @"WFWorkflowRunSourceSuggestionsWidgetPrediction";
  v2[3] = @"spotlight_prediction";
  v2[4] = @"spotlight-search";
  v2[5] = @"watch-face";
  v2[6] = @"siri_cloud_relay";
  v2[7] = @"carplay";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:8];
  v1 = WFRunSourceIsSuggestion_s_suggestionRunSources;
  WFRunSourceIsSuggestion_s_suggestionRunSources = v0;
}

uint64_t WFRunSourceIsExemptFromOutputApproval(void *a1)
{
  v1 = WFRunSourceIsExemptFromOutputApproval_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&WFRunSourceIsExemptFromOutputApproval_onceToken, &__block_literal_global_202);
  }

  v3 = [WFRunSourceIsExemptFromOutputApproval_s_outputApprovalExemptRunSources containsObject:v2];

  return v3;
}

void __WFRunSourceIsExemptFromOutputApproval_block_invoke()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"button";
  v2[1] = @"keyboard";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];
  v1 = WFRunSourceIsExemptFromOutputApproval_s_outputApprovalExemptRunSources;
  WFRunSourceIsExemptFromOutputApproval_s_outputApprovalExemptRunSources = v0;
}

void sub_1B1E8CB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1764(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1E8CE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B1E8D0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B1E8D558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B1E8D854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

id getWFActionsLogObject()
{
  if (getWFActionsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFActionsLogObject_onceToken, &__block_literal_global_8);
  }

  v1 = getWFActionsLogObject_log;

  return v1;
}

uint64_t __getWFActionsLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "Actions");
  v1 = getWFActionsLogObject_log;
  getWFActionsLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFContentGraphLogObject()
{
  if (getWFContentGraphLogObject_onceToken != -1)
  {
    dispatch_once(&getWFContentGraphLogObject_onceToken, &__block_literal_global_11);
  }

  v1 = getWFContentGraphLogObject_log;

  return v1;
}

uint64_t __getWFContentGraphLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "ContentGraph");
  v1 = getWFContentGraphLogObject_log;
  getWFContentGraphLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFContentItemLogObject()
{
  if (getWFContentItemLogObject_onceToken != -1)
  {
    dispatch_once(&getWFContentItemLogObject_onceToken, &__block_literal_global_14);
  }

  v1 = getWFContentItemLogObject_log;

  return v1;
}

uint64_t __getWFContentItemLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "ContentItem");
  v1 = getWFContentItemLogObject_log;
  getWFContentItemLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFInterchangeLogObject()
{
  if (getWFInterchangeLogObject_onceToken != -1)
  {
    dispatch_once(&getWFInterchangeLogObject_onceToken, &__block_literal_global_17);
  }

  v1 = getWFInterchangeLogObject_log;

  return v1;
}

uint64_t __getWFInterchangeLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "Interchange");
  v1 = getWFInterchangeLogObject_log;
  getWFInterchangeLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFEditorLogObject()
{
  if (getWFEditorLogObject_onceToken != -1)
  {
    dispatch_once(&getWFEditorLogObject_onceToken, &__block_literal_global_23);
  }

  v1 = getWFEditorLogObject_log;

  return v1;
}

uint64_t __getWFEditorLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "Editor");
  v1 = getWFEditorLogObject_log;
  getWFEditorLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFFoldersLogObject()
{
  if (getWFFoldersLogObject_onceToken != -1)
  {
    dispatch_once(&getWFFoldersLogObject_onceToken, &__block_literal_global_26);
  }

  v1 = getWFFoldersLogObject_log;

  return v1;
}

uint64_t __getWFFoldersLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "Folders");
  v1 = getWFFoldersLogObject_log;
  getWFFoldersLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFIntentExecutionLogObject()
{
  if (getWFIntentExecutionLogObject_onceToken != -1)
  {
    dispatch_once(&getWFIntentExecutionLogObject_onceToken, &__block_literal_global_35);
  }

  v1 = getWFIntentExecutionLogObject_log;

  return v1;
}

uint64_t __getWFIntentExecutionLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "IntentExecution");
  v1 = getWFIntentExecutionLogObject_log;
  getWFIntentExecutionLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __getWFCloudKitSyncLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "CloudKitSync");
  v1 = getWFCloudKitSyncLogObject_log;
  getWFCloudKitSyncLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFWatchSyncLogObject()
{
  if (getWFWatchSyncLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWatchSyncLogObject_onceToken, &__block_literal_global_41);
  }

  v1 = getWFWatchSyncLogObject_log;

  return v1;
}

uint64_t __getWFWatchSyncLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "WatchSync");
  v1 = getWFWatchSyncLogObject_log;
  getWFWatchSyncLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFTriggersLogObject()
{
  if (getWFTriggersLogObject_onceToken != -1)
  {
    dispatch_once(&getWFTriggersLogObject_onceToken, &__block_literal_global_44);
  }

  v1 = getWFTriggersLogObject_log;

  return v1;
}

uint64_t __getWFTriggersLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "Triggers");
  v1 = getWFTriggersLogObject_log;
  getWFTriggersLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFTriggerNotificationsLogObject()
{
  if (getWFTriggerNotificationsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFTriggerNotificationsLogObject_onceToken, &__block_literal_global_47);
  }

  v1 = getWFTriggerNotificationsLogObject_log;

  return v1;
}

uint64_t __getWFTriggerNotificationsLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "TriggerNotifications");
  v1 = getWFTriggerNotificationsLogObject_log;
  getWFTriggerNotificationsLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFPeaceMigrationLogObject()
{
  if (getWFPeaceMigrationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFPeaceMigrationLogObject_onceToken, &__block_literal_global_53);
  }

  v1 = getWFPeaceMigrationLogObject_log;

  return v1;
}

uint64_t __getWFPeaceMigrationLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "PeaceMigration");
  v1 = getWFPeaceMigrationLogObject_log;
  getWFPeaceMigrationLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFWorkflowMigrationLogObject()
{
  if (getWFWorkflowMigrationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWorkflowMigrationLogObject_onceToken, &__block_literal_global_56_1966);
  }

  v1 = getWFWorkflowMigrationLogObject_log;

  return v1;
}

uint64_t __getWFWorkflowMigrationLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "WorkflowMigration");
  v1 = getWFWorkflowMigrationLogObject_log;
  getWFWorkflowMigrationLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFAutomatorMigrationLogObject()
{
  if (getWFAutomatorMigrationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFAutomatorMigrationLogObject_onceToken, &__block_literal_global_59_1968);
  }

  v1 = getWFAutomatorMigrationLogObject_log;

  return v1;
}

uint64_t __getWFAutomatorMigrationLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "AutomatorMigration");
  v1 = getWFAutomatorMigrationLogObject_log;
  getWFAutomatorMigrationLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFSpotlightSyncLogObject()
{
  if (getWFSpotlightSyncLogObject_onceToken != -1)
  {
    dispatch_once(&getWFSpotlightSyncLogObject_onceToken, &__block_literal_global_62);
  }

  v1 = getWFSpotlightSyncLogObject_log;

  return v1;
}

uint64_t __getWFSpotlightSyncLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "SpotlightSync");
  v1 = getWFSpotlightSyncLogObject_log;
  getWFSpotlightSyncLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFHomeLogObject()
{
  if (getWFHomeLogObject_onceToken != -1)
  {
    dispatch_once(&getWFHomeLogObject_onceToken, &__block_literal_global_71);
  }

  v1 = getWFHomeLogObject_log;

  return v1;
}

uint64_t __getWFHomeLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "Home");
  v1 = getWFHomeLogObject_log;
  getWFHomeLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFRemoteExecutionLogObject()
{
  if (getWFRemoteExecutionLogObject_onceToken != -1)
  {
    dispatch_once(&getWFRemoteExecutionLogObject_onceToken, &__block_literal_global_74);
  }

  v1 = getWFRemoteExecutionLogObject_log;

  return v1;
}

uint64_t __getWFRemoteExecutionLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "RemoteExecution");
  v1 = getWFRemoteExecutionLogObject_log;
  getWFRemoteExecutionLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFBundledIntentsLogObject()
{
  if (getWFBundledIntentsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFBundledIntentsLogObject_onceToken, &__block_literal_global_77);
  }

  v1 = getWFBundledIntentsLogObject_log;

  return v1;
}

uint64_t __getWFBundledIntentsLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "BundledIntents");
  v1 = getWFBundledIntentsLogObject_log;
  getWFBundledIntentsLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFDialogLogObject()
{
  if (getWFDialogLogObject_onceToken != -1)
  {
    dispatch_once(&getWFDialogLogObject_onceToken, &__block_literal_global_80);
  }

  v1 = getWFDialogLogObject_log;

  return v1;
}

uint64_t __getWFDialogLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "Dialog");
  v1 = getWFDialogLogObject_log;
  getWFDialogLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFRuntimeUILogObject()
{
  if (getWFRuntimeUILogObject_onceToken != -1)
  {
    dispatch_once(&getWFRuntimeUILogObject_onceToken, &__block_literal_global_83);
  }

  v1 = getWFRuntimeUILogObject_log;

  return v1;
}

uint64_t __getWFRuntimeUILogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "RuntimeUI");
  v1 = getWFRuntimeUILogObject_log;
  getWFRuntimeUILogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFWidgetLogObject()
{
  if (getWFWidgetLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWidgetLogObject_onceToken, &__block_literal_global_86);
  }

  v1 = getWFWidgetLogObject_log;

  return v1;
}

uint64_t __getWFWidgetLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "Widget");
  v1 = getWFWidgetLogObject_log;
  getWFWidgetLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFSleepLogObject()
{
  if (getWFSleepLogObject_onceToken != -1)
  {
    dispatch_once(&getWFSleepLogObject_onceToken, &__block_literal_global_89);
  }

  v1 = getWFSleepLogObject_log;

  return v1;
}

uint64_t __getWFSleepLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "Sleep");
  v1 = getWFSleepLogObject_log;
  getWFSleepLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFContextualActionsLogObject()
{
  if (getWFContextualActionsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFContextualActionsLogObject_onceToken, &__block_literal_global_104);
  }

  v1 = getWFContextualActionsLogObject_log;

  return v1;
}

uint64_t __getWFContextualActionsLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "ContextualActions");
  v1 = getWFContextualActionsLogObject_log;
  getWFContextualActionsLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFSandboxLogObject()
{
  if (getWFSandboxLogObject_onceToken != -1)
  {
    dispatch_once(&getWFSandboxLogObject_onceToken, &__block_literal_global_107);
  }

  v1 = getWFSandboxLogObject_log;

  return v1;
}

uint64_t __getWFSandboxLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "Sandbox");
  v1 = getWFSandboxLogObject_log;
  getWFSandboxLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFAppIntentsLogObject()
{
  if (getWFAppIntentsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFAppIntentsLogObject_onceToken, &__block_literal_global_110);
  }

  v1 = getWFAppIntentsLogObject_log;

  return v1;
}

uint64_t __getWFAppIntentsLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "AppIntents");
  v1 = getWFAppIntentsLogObject_log;
  getWFAppIntentsLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFRunningStateLogObject()
{
  if (getWFRunningStateLogObject_onceToken != -1)
  {
    dispatch_once(&getWFRunningStateLogObject_onceToken, &__block_literal_global_113);
  }

  v1 = getWFRunningStateLogObject_log;

  return v1;
}

uint64_t __getWFRunningStateLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "RunningState");
  v1 = getWFRunningStateLogObject_log;
  getWFRunningStateLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFStateMachineLogObject()
{
  if (getWFStateMachineLogObject_onceToken != -1)
  {
    dispatch_once(&getWFStateMachineLogObject_onceToken, &__block_literal_global_116);
  }

  v1 = getWFStateMachineLogObject_log;

  return v1;
}

id getWFSessionKitLogObject()
{
  if (getWFSessionKitLogObject_onceToken != -1)
  {
    dispatch_once(&getWFSessionKitLogObject_onceToken, &__block_literal_global_119);
  }

  v1 = getWFSessionKitLogObject_log;

  return v1;
}

uint64_t __getWFSessionKitLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "SessionKit");
  v1 = getWFSessionKitLogObject_log;
  getWFSessionKitLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFTestHarnessLogObject()
{
  if (getWFTestHarnessLogObject_onceToken != -1)
  {
    dispatch_once(&getWFTestHarnessLogObject_onceToken, &__block_literal_global_122);
  }

  v1 = getWFTestHarnessLogObject_log;

  return v1;
}

uint64_t __getWFTestHarnessLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "TestHarness");
  v1 = getWFTestHarnessLogObject_log;
  getWFTestHarnessLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFBiomeWritingLogObject()
{
  if (getWFBiomeWritingLogObject_onceToken != -1)
  {
    dispatch_once(&getWFBiomeWritingLogObject_onceToken, &__block_literal_global_125);
  }

  v1 = getWFBiomeWritingLogObject_log;

  return v1;
}

uint64_t __getWFBiomeWritingLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "BiomeWriting");
  v1 = getWFBiomeWritingLogObject_log;
  getWFBiomeWritingLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFDropletLogObject()
{
  if (getWFDropletLogObject_onceToken != -1)
  {
    dispatch_once(&getWFDropletLogObject_onceToken, &__block_literal_global_131);
  }

  v1 = getWFDropletLogObject_log;

  return v1;
}

uint64_t __getWFDropletLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "Droplet");
  v1 = getWFDropletLogObject_log;
  getWFDropletLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFWidgetConfigurationLogObject()
{
  if (getWFWidgetConfigurationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWidgetConfigurationLogObject_onceToken, &__block_literal_global_134);
  }

  v1 = getWFWidgetConfigurationLogObject_log;

  return v1;
}

uint64_t __getWFWidgetConfigurationLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "WidgetConfiguration");
  v1 = getWFWidgetConfigurationLogObject_log;
  getWFWidgetConfigurationLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFSmartShortcutPickerLogObject()
{
  if (getWFSmartShortcutPickerLogObject_onceToken != -1)
  {
    dispatch_once(&getWFSmartShortcutPickerLogObject_onceToken, &__block_literal_global_137);
  }

  v1 = getWFSmartShortcutPickerLogObject_log;

  return v1;
}

uint64_t __getWFSmartShortcutPickerLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "SmartShortcutPicker");
  v1 = getWFSmartShortcutPickerLogObject_log;
  getWFSmartShortcutPickerLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFTopHitsLogObject()
{
  if (getWFTopHitsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFTopHitsLogObject_onceToken, &__block_literal_global_140);
  }

  v1 = getWFTopHitsLogObject_log;

  return v1;
}

uint64_t __getWFTopHitsLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "TopHits");
  v1 = getWFTopHitsLogObject_log;
  getWFTopHitsLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFTestingLifecycleLogObject()
{
  if (getWFTestingLifecycleLogObject_onceToken != -1)
  {
    dispatch_once(&getWFTestingLifecycleLogObject_onceToken, &__block_literal_global_143);
  }

  v1 = getWFTestingLifecycleLogObject_log;

  return v1;
}

uint64_t __getWFTestingLifecycleLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "TestingLifecycle");
  v1 = getWFTestingLifecycleLogObject_log;
  getWFTestingLifecycleLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFToolKitLogObject()
{
  if (getWFToolKitLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitLogObject_onceToken, &__block_literal_global_146);
  }

  v1 = getWFToolKitLogObject_log;

  return v1;
}

uint64_t __getWFToolKitLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "ToolKit");
  v1 = getWFToolKitLogObject_log;
  getWFToolKitLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFToolKitSyncLogObject()
{
  if (getWFToolKitSyncLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitSyncLogObject_onceToken, &__block_literal_global_149);
  }

  v1 = getWFToolKitSyncLogObject_log;

  return v1;
}

uint64_t __getWFToolKitSyncLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "ToolKitSync");
  v1 = getWFToolKitSyncLogObject_log;
  getWFToolKitSyncLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFToolKitDatabaseLogObject()
{
  if (getWFToolKitDatabaseLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitDatabaseLogObject_onceToken, &__block_literal_global_152);
  }

  v1 = getWFToolKitDatabaseLogObject_log;

  return v1;
}

uint64_t __getWFToolKitDatabaseLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "ToolKitDatabase");
  v1 = getWFToolKitDatabaseLogObject_log;
  getWFToolKitDatabaseLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFToolKitIndexingLogObject()
{
  if (getWFToolKitIndexingLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitIndexingLogObject_onceToken, &__block_literal_global_155);
  }

  v1 = getWFToolKitIndexingLogObject_log;

  return v1;
}

uint64_t __getWFToolKitIndexingLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "ToolKitIndexing");
  v1 = getWFToolKitIndexingLogObject_log;
  getWFToolKitIndexingLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFToolKitRepresentationLogObject()
{
  if (getWFToolKitRepresentationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitRepresentationLogObject_onceToken, &__block_literal_global_158);
  }

  v1 = getWFToolKitRepresentationLogObject_log;

  return v1;
}

uint64_t __getWFToolKitRepresentationLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "ToolKitRepresentation");
  v1 = getWFToolKitRepresentationLogObject_log;
  getWFToolKitRepresentationLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFToolKitSchedulerLogObject()
{
  if (getWFToolKitSchedulerLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitSchedulerLogObject_onceToken, &__block_literal_global_161);
  }

  v1 = getWFToolKitSchedulerLogObject_log;

  return v1;
}

uint64_t __getWFToolKitSchedulerLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "ToolKitScheduler");
  v1 = getWFToolKitSchedulerLogObject_log;
  getWFToolKitSchedulerLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFToolKitExecutionPoolLogObject()
{
  if (getWFToolKitExecutionPoolLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitExecutionPoolLogObject_onceToken, &__block_literal_global_167);
  }

  v1 = getWFToolKitExecutionPoolLogObject_log;

  return v1;
}

uint64_t __getWFToolKitExecutionPoolLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "ToolKitExecutionPool");
  v1 = getWFToolKitExecutionPoolLogObject_log;
  getWFToolKitExecutionPoolLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFToolKitSQLLogObject()
{
  if (getWFToolKitSQLLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitSQLLogObject_onceToken, &__block_literal_global_170);
  }

  v1 = getWFToolKitSQLLogObject_log;

  return v1;
}

uint64_t __getWFToolKitSQLLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "ToolKitSQL");
  v1 = getWFToolKitSQLLogObject_log;
  getWFToolKitSQLLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFAppShortcutInterpolationLogObject()
{
  if (getWFAppShortcutInterpolationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFAppShortcutInterpolationLogObject_onceToken, &__block_literal_global_173);
  }

  v1 = getWFAppShortcutInterpolationLogObject_log;

  return v1;
}

uint64_t __getWFAppShortcutInterpolationLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "AppShortcutInterpolation");
  v1 = getWFAppShortcutInterpolationLogObject_log;
  getWFAppShortcutInterpolationLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFActionConfirmationAlertLogObject()
{
  if (getWFActionConfirmationAlertLogObject_onceToken != -1)
  {
    dispatch_once(&getWFActionConfirmationAlertLogObject_onceToken, &__block_literal_global_176);
  }

  v1 = getWFActionConfirmationAlertLogObject_log;

  return v1;
}

uint64_t __getWFActionConfirmationAlertLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "ActionConfirmationAlert");
  v1 = getWFActionConfirmationAlertLogObject_log;
  getWFActionConfirmationAlertLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFPersonaLogObject()
{
  if (getWFPersonaLogObject_onceToken != -1)
  {
    dispatch_once(&getWFPersonaLogObject_onceToken, &__block_literal_global_179);
  }

  v1 = getWFPersonaLogObject_log;

  return v1;
}

uint64_t __getWFPersonaLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "Persona");
  v1 = getWFPersonaLogObject_log;
  getWFPersonaLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFAppIntentsMetadataLogObject()
{
  if (getWFAppIntentsMetadataLogObject_onceToken != -1)
  {
    dispatch_once(&getWFAppIntentsMetadataLogObject_onceToken, &__block_literal_global_182);
  }

  v1 = getWFAppIntentsMetadataLogObject_log;

  return v1;
}

uint64_t __getWFAppIntentsMetadataLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "AppIntentsMetadata");
  v1 = getWFAppIntentsMetadataLogObject_log;
  getWFAppIntentsMetadataLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFFilesystemEventsLogObject()
{
  if (getWFFilesystemEventsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFFilesystemEventsLogObject_onceToken, &__block_literal_global_185);
  }

  v1 = getWFFilesystemEventsLogObject_log;

  return v1;
}

uint64_t __getWFFilesystemEventsLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "FilesystemEvents");
  v1 = getWFFilesystemEventsLogObject_log;
  getWFFilesystemEventsLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFLanguageLogObject()
{
  if (getWFLanguageLogObject_onceToken != -1)
  {
    dispatch_once(&getWFLanguageLogObject_onceToken, &__block_literal_global_188);
  }

  v1 = getWFLanguageLogObject_log;

  return v1;
}

uint64_t __getWFLanguageLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "Language");
  v1 = getWFLanguageLogObject_log;
  getWFLanguageLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFUserStringsLogObject()
{
  if (getWFUserStringsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFUserStringsLogObject_onceToken, &__block_literal_global_191);
  }

  v1 = getWFUserStringsLogObject_log;

  return v1;
}

uint64_t __getWFUserStringsLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "UserStrings");
  v1 = getWFUserStringsLogObject_log;
  getWFUserStringsLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFParameterSummaryLogObject()
{
  if (getWFParameterSummaryLogObject_onceToken != -1)
  {
    dispatch_once(&getWFParameterSummaryLogObject_onceToken, &__block_literal_global_194);
  }

  v1 = getWFParameterSummaryLogObject_log;

  return v1;
}

uint64_t __getWFParameterSummaryLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "ParameterSummary");
  v1 = getWFParameterSummaryLogObject_log;
  getWFParameterSummaryLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id getWFControlMigrationLogObject()
{
  if (getWFControlMigrationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFControlMigrationLogObject_onceToken, &__block_literal_global_197);
  }

  v1 = getWFControlMigrationLogObject_log;

  return v1;
}

uint64_t __getWFControlMigrationLogObject_block_invoke()
{
  v0 = os_log_create(WFLogSubsystem, "ControlMigration");
  v1 = getWFControlMigrationLogObject_log;
  getWFControlMigrationLogObject_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1B1E9143C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBiomeLibrarySymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __BiomeLibraryLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B00310;
    v7 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = BiomeLibraryLibraryCore_frameworkLibrary;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeLibraryLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFToggleFocusModeContextualAction.m" lineNumber:19 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BiomeLibrary");
  *(*(a1[4] + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

id VCAppBundleIdentifierForBundleRecord(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleIdentifier];
  v3 = [&unk_1F29315D8 objectForKey:v2];

  if (v3)
  {
    v4 = [v1 bundleIdentifier];
    v5 = [&unk_1F29315D8 objectForKey:v4];
  }

  else
  {
    v6 = v1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v4 = v7;

    v8 = [v4 containingBundleRecord];
    v9 = v8;
    if (v8)
    {
      v5 = VCAppBundleIdentifierForBundleRecord(v8);
    }

    else
    {
      v10 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      if (v12 || !v4)
      {
        v13 = v12;
      }

      else
      {
        v13 = v4;
      }

      v5 = [v13 bundleIdentifier];
    }
  }

  return v5;
}

void sub_1B1E96FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2791(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFAppOrExtensionRecordFromBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v1 allowPlaceholder:0 error:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v1 error:0];
    v4 = v5;
    if (v5)
    {
      v6 = v5;
    }
  }

  return v4;
}

void WFBiomeLibrary()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getBiomeLibrarySymbolLoc_ptr_3423;
  v9 = getBiomeLibrarySymbolLoc_ptr_3423;
  if (!getBiomeLibrarySymbolLoc_ptr_3423)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getBiomeLibrarySymbolLoc_block_invoke_3424;
    v5[3] = &unk_1E7B02C60;
    v5[4] = &v6;
    __getBiomeLibrarySymbolLoc_block_invoke_3424(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v1 = v0();

    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<BMRootLibrary> WFBiomeLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFToggleSettingContextualAction.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1E9B7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBiomeLibrarySymbolLoc_block_invoke_3424(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_3428)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __BiomeLibraryLibraryCore_block_invoke_3429;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B004A8;
    v7 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary_3428 = _sl_dlopen();
  }

  v2 = BiomeLibraryLibraryCore_frameworkLibrary_3428;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_3428)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeLibraryLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFToggleSettingContextualAction.m" lineNumber:20 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BiomeLibrary");
  *(*(a1[4] + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr_3423 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke_3429(uint64_t a1)
{
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary_3428 = result;
  return result;
}

id WFToggleSettingContextualActions()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [&unk_1F29314B8 mutableCopy];
  v1 = +[WFDevice currentDevice];
  [v0 addObjectsFromArray:&unk_1F29314D0];
  [v0 addObjectsFromArray:&unk_1F29314E8];
  if ([v1 hasCapability:@"CellularData"])
  {
    v2 = +[WFCellularSettings defaultSettings];
    v14 = 0;
    v3 = [v2 isCellularDataCapableWithError:&v14];
    v4 = v14;
    v5 = getWFSpotlightSyncLogObject();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "WFToggleSettingContextualActions";
        v17 = 2112;
        v18 = v4;
        v7 = "%s Unable to get cellular data capability: %@";
        v8 = v6;
        v9 = OS_LOG_TYPE_ERROR;
        v10 = 22;
LABEL_11:
        _os_log_impl(&dword_1B1DE3000, v8, v9, v7, buf, v10);
      }
    }

    else
    {
      v11 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
      if (v3)
      {
        if (v11)
        {
          *buf = 136315138;
          v16 = "WFToggleSettingContextualActions";
          _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_INFO, "%s Device is cellular data capable, indexing toggle", buf, 0xCu);
        }

        [v0 addObject:&unk_1F292CCA0];
        goto LABEL_13;
      }

      if (v11)
      {
        *buf = 136315138;
        v16 = "WFToggleSettingContextualActions";
        v7 = "%s Device is not cellular data capable, not indexing toggle";
        v8 = v6;
        v9 = OS_LOG_TYPE_INFO;
        v10 = 12;
        goto LABEL_11;
      }
    }

LABEL_13:
  }

  if ([v1 hasCapability:@"AlwaysOnDisplay"])
  {
    [v0 addObject:&unk_1F292CCB8];
  }

  if ([v1 hasCapability:@"TrueTone"])
  {
    [v0 addObject:&unk_1F292CCD0];
  }

  if ([v1 hasCapability:@"NightShift"])
  {
    [v0 addObject:&unk_1F292CCE8];
  }

  if (([v1 hasCapability:@"HardwareRingerSwitch"] & 1) == 0)
  {
    [v0 addObject:&unk_1F292CD00];
  }

  v12 = [v0 if_compactMap:&__block_literal_global_3593];

  return v12;
}

WFToggleSettingContextualAction *__WFToggleSettingContextualActions_block_invoke(uint64_t a1, void *a2)
{
  v2 = -[WFToggleSettingContextualAction initWithSetting:operation:]([WFToggleSettingContextualAction alloc], "initWithSetting:operation:", [a2 unsignedIntegerValue], 2);

  return v2;
}

id WFPrimaryPhrasesForAutoShortcut(void *a1)
{
  v4 = 0;
  v1 = WFLocalizedPhrasesGroupedByParameterIdentifier(a1, 0, &v4);
  v2 = v4;

  return v2;
}

id WFParameterlessPhrasesForAutoShortcut(void *a1)
{
  v4 = 0;
  v1 = WFLocalizedPhrasesGroupedByParameterIdentifier(a1, &v4, 0);
  v2 = v4;

  return v2;
}

void *__getCGImageSourceCreateImageAtIndexSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceCreateImageAtIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCreateImageAtIndexSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ImageIOLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ImageIOLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ImageIOLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B00580;
    v6 = 0;
    ImageIOLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ImageIOLibraryCore_frameworkLibrary;
  if (!ImageIOLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ImageIOLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFImage.m" lineNumber:37 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __ImageIOLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ImageIOLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCGImageSourceCreateWithURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceCreateWithURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCreateWithURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceCreateWithDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceCreateWithData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCreateWithDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void soft_CGImageSourceCopyProperties(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getCGImageSourceCopyPropertiesSymbolLoc_ptr;
  v9 = getCGImageSourceCopyPropertiesSymbolLoc_ptr;
  if (!getCGImageSourceCopyPropertiesSymbolLoc_ptr)
  {
    v3 = ImageIOLibrary();
    v7[3] = dlsym(v3, "CGImageSourceCopyProperties");
    getCGImageSourceCopyPropertiesSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1, 0);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFDictionaryRef  _Nullable soft_CGImageSourceCopyProperties(CGImageSourceRef _Nonnull, CFDictionaryRef _Nullable)"}];
    [v4 handleFailureInFunction:v5 file:@"WFImage.m" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EA11C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getkCGImagePropertyOrientation()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkCGImagePropertyOrientationSymbolLoc_ptr;
  v7 = getkCGImagePropertyOrientationSymbolLoc_ptr;
  if (!getkCGImagePropertyOrientationSymbolLoc_ptr)
  {
    v1 = ImageIOLibrary();
    v5[3] = dlsym(v1, "kCGImagePropertyOrientation");
    getkCGImagePropertyOrientationSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyOrientation(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFImage.m" lineNumber:45 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EA1314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCGImageSourceGetCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceGetCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceGetCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceCopyPropertiesAtIndexSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceCopyPropertiesAtIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyOrientationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "kCGImagePropertyOrientation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyOrientationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceCopyPropertiesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceCopyProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCopyPropertiesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyPixelWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "kCGImagePropertyPixelWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyPixelWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyPixelHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "kCGImagePropertyPixelHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyPixelHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *WFGlyphCharactersInSection(uint64_t a1)
{
  v1 = &unk_1F2931500;
  if (a1 == 1)
  {
    v1 = &unk_1F2931518;
  }

  if (a1 == 2)
  {
    return &unk_1F2931530;
  }

  else
  {
    return v1;
  }
}

id WFNameForGlyphCharacter(int a1)
{
  v1 = 0;
  switch(a1)
  {
    case 61440:
      v2 = @"Shortcuts Icon";
      goto LABEL_689;
    case 61441:
    case 61443:
    case 61445:
    case 61451:
    case 61462:
    case 61463:
    case 61469:
    case 61479:
    case 61485:
    case 61492:
    case 61493:
    case 61513:
    case 61516:
    case 61517:
    case 61526:
    case 61527:
    case 61530:
    case 61531:
    case 61570:
    case 61573:
    case 61576:
    case 61580:
    case 61581:
    case 61582:
    case 61583:
    case 61585:
    case 61589:
    case 61594:
    case 61595:
    case 61596:
    case 61597:
    case 61598:
    case 61599:
    case 61600:
    case 61601:
    case 61602:
    case 61603:
    case 61604:
    case 61605:
    case 61606:
    case 61607:
    case 61608:
    case 61609:
    case 61610:
    case 61611:
    case 61612:
    case 61613:
    case 61614:
    case 61615:
    case 61616:
    case 61617:
    case 61618:
    case 61619:
    case 61620:
    case 61621:
    case 61622:
    case 61623:
    case 61624:
    case 61625:
    case 61626:
    case 61627:
    case 61628:
    case 61629:
    case 61630:
    case 61631:
    case 61632:
    case 61633:
    case 61634:
    case 61635:
    case 61636:
    case 61637:
    case 61638:
    case 61639:
    case 61640:
    case 61641:
    case 61642:
    case 61643:
    case 61644:
    case 61645:
    case 61646:
    case 61647:
    case 61648:
    case 61649:
    case 61650:
    case 61651:
    case 61652:
    case 61653:
    case 61654:
    case 61655:
    case 61656:
    case 61657:
    case 61658:
    case 61659:
    case 61660:
    case 61661:
    case 61662:
    case 61663:
    case 61664:
    case 61665:
    case 61666:
    case 61667:
    case 61668:
    case 61669:
    case 61670:
    case 61671:
    case 61672:
    case 61673:
    case 61674:
    case 61675:
    case 61676:
    case 61677:
    case 61678:
    case 61679:
    case 61680:
    case 61681:
    case 61682:
    case 61683:
    case 61684:
    case 61685:
    case 61686:
    case 61687:
    case 61688:
    case 61689:
    case 61690:
    case 61691:
    case 61692:
    case 61693:
    case 61694:
    case 61695:
    case 61706:
    case 61707:
    case 61708:
    case 61709:
    case 61710:
    case 61711:
    case 61722:
    case 61723:
    case 61724:
    case 61725:
    case 61726:
    case 61727:
    case 61738:
    case 61739:
    case 61740:
    case 61741:
    case 61742:
    case 61743:
    case 61754:
    case 61755:
    case 61756:
    case 61757:
    case 61758:
    case 61759:
    case 61770:
    case 61771:
    case 61772:
    case 61773:
    case 61774:
    case 61775:
    case 61786:
    case 61787:
    case 61788:
    case 61789:
    case 61790:
    case 61791:
    case 61802:
    case 61803:
    case 61804:
    case 61805:
    case 61806:
    case 61807:
    case 61818:
    case 61819:
    case 61820:
    case 61821:
    case 61822:
    case 61823:
    case 61834:
    case 61835:
    case 61836:
    case 61837:
    case 61838:
    case 61839:
    case 61850:
    case 61851:
    case 61852:
    case 61853:
    case 61854:
    case 61855:
    case 61856:
    case 61857:
    case 61858:
    case 61859:
    case 61860:
    case 61861:
    case 61862:
    case 61863:
    case 61864:
    case 61865:
    case 61866:
    case 61867:
    case 61868:
    case 61869:
    case 61870:
    case 61871:
    case 61872:
    case 61873:
    case 61874:
    case 61875:
    case 61876:
    case 61877:
    case 61878:
    case 61879:
    case 61880:
    case 61881:
    case 61882:
    case 61883:
    case 61884:
    case 61885:
    case 61886:
    case 61887:
    case 61888:
    case 61889:
    case 61890:
    case 61891:
    case 61892:
    case 61893:
    case 61894:
    case 61895:
    case 61896:
    case 61897:
    case 61898:
    case 61899:
    case 61900:
    case 61901:
    case 61902:
    case 61903:
    case 61904:
    case 61905:
    case 61906:
    case 61907:
    case 61908:
    case 61909:
    case 61910:
    case 61911:
    case 61912:
    case 61913:
    case 61914:
    case 61915:
    case 61916:
    case 61917:
    case 61918:
    case 61919:
    case 61920:
    case 61921:
    case 61922:
    case 61923:
    case 61924:
    case 61925:
    case 61926:
    case 61927:
    case 61928:
    case 61929:
    case 61930:
    case 61931:
    case 61932:
    case 61933:
    case 61934:
    case 61935:
    case 61936:
    case 61937:
    case 61938:
    case 61939:
    case 61940:
    case 61941:
    case 61942:
    case 61943:
    case 61944:
    case 61945:
    case 61946:
    case 61947:
    case 61948:
    case 61949:
    case 61950:
    case 61951:
    case 61962:
    case 61963:
    case 61964:
    case 61965:
    case 61966:
    case 61967:
    case 61978:
    case 61979:
    case 61980:
    case 61981:
    case 61982:
    case 61983:
    case 61994:
    case 61995:
    case 61996:
    case 61997:
    case 61998:
    case 61999:
    case 62010:
    case 62011:
    case 62012:
    case 62013:
    case 62014:
    case 62015:
    case 62026:
    case 62027:
    case 62028:
    case 62029:
    case 62030:
    case 62031:
    case 62032:
    case 62042:
    case 62043:
    case 62044:
    case 62045:
    case 62046:
    case 62047:
    case 62058:
    case 62059:
    case 62060:
    case 62061:
    case 62062:
    case 62063:
    case 62074:
    case 62075:
    case 62076:
    case 62077:
    case 62078:
    case 62079:
    case 62090:
    case 62091:
    case 62092:
    case 62093:
    case 62094:
    case 62095:
    case 62106:
    case 62107:
    case 62108:
    case 62109:
    case 62110:
    case 62111:
    case 62112:
    case 62113:
    case 62114:
    case 62115:
    case 62116:
    case 62117:
    case 62118:
    case 62119:
    case 62120:
    case 62121:
    case 62122:
    case 62123:
    case 62124:
    case 62125:
    case 62126:
    case 62127:
    case 62128:
    case 62129:
    case 62130:
    case 62131:
    case 62132:
    case 62133:
    case 62134:
    case 62135:
    case 62136:
    case 62137:
    case 62138:
    case 62139:
    case 62140:
    case 62141:
    case 62142:
    case 62143:
    case 62144:
    case 62145:
    case 62146:
    case 62147:
    case 62148:
    case 62149:
    case 62150:
    case 62151:
    case 62152:
    case 62153:
    case 62154:
    case 62155:
    case 62156:
    case 62157:
    case 62158:
    case 62159:
    case 62160:
    case 62161:
    case 62162:
    case 62163:
    case 62164:
    case 62165:
    case 62166:
    case 62167:
    case 62168:
    case 62169:
    case 62170:
    case 62171:
    case 62172:
    case 62173:
    case 62174:
    case 62175:
    case 62176:
    case 62177:
    case 62178:
    case 62179:
    case 62180:
    case 62181:
    case 62182:
    case 62183:
    case 62184:
    case 62185:
    case 62186:
    case 62187:
    case 62188:
    case 62189:
    case 62190:
    case 62191:
    case 62192:
    case 62193:
    case 62194:
    case 62195:
    case 62196:
    case 62197:
    case 62198:
    case 62199:
    case 62200:
    case 62201:
    case 62202:
    case 62203:
    case 62204:
    case 62205:
    case 62206:
    case 62207:
    case 62218:
    case 62219:
    case 62220:
    case 62221:
    case 62222:
    case 62223:
    case 62234:
    case 62235:
    case 62236:
    case 62237:
    case 62238:
    case 62239:
    case 62250:
    case 62251:
    case 62252:
    case 62253:
    case 62254:
    case 62255:
    case 62266:
    case 62267:
    case 62268:
    case 62269:
    case 62270:
    case 62271:
    case 62282:
    case 62283:
    case 62284:
    case 62285:
    case 62286:
    case 62287:
    case 62298:
    case 62299:
    case 62300:
    case 62301:
    case 62302:
    case 62303:
    case 62314:
    case 62315:
    case 62316:
    case 62317:
    case 62318:
    case 62319:
    case 62330:
    case 62331:
    case 62332:
    case 62333:
    case 62334:
    case 62335:
    case 62346:
    case 62347:
    case 62348:
    case 62349:
    case 62350:
    case 62351:
    case 62361:
    case 62362:
    case 62363:
    case 62364:
    case 62365:
    case 62366:
    case 62367:
    case 62368:
    case 62369:
    case 62370:
    case 62371:
    case 62372:
    case 62373:
    case 62374:
    case 62375:
    case 62376:
    case 62377:
    case 62378:
    case 62379:
    case 62380:
    case 62381:
    case 62382:
    case 62383:
    case 62384:
    case 62385:
    case 62386:
    case 62387:
    case 62388:
    case 62389:
    case 62390:
    case 62391:
    case 62392:
    case 62393:
    case 62394:
    case 62395:
    case 62396:
    case 62397:
    case 62398:
    case 62399:
    case 62400:
    case 62401:
    case 62402:
    case 62403:
    case 62404:
    case 62405:
    case 62406:
    case 62407:
    case 62408:
    case 62409:
    case 62410:
    case 62411:
    case 62412:
    case 62413:
    case 62414:
    case 62415:
    case 62416:
    case 62417:
    case 62418:
    case 62419:
    case 62420:
    case 62421:
    case 62422:
    case 62423:
    case 62424:
    case 62425:
    case 62426:
    case 62427:
    case 62428:
    case 62429:
    case 62430:
    case 62431:
    case 62432:
    case 62433:
    case 62434:
    case 62435:
    case 62436:
    case 62437:
    case 62438:
    case 62439:
    case 62440:
    case 62441:
    case 62442:
    case 62443:
    case 62444:
    case 62445:
    case 62446:
    case 62447:
    case 62448:
    case 62449:
    case 62450:
    case 62451:
    case 62452:
    case 62453:
    case 62454:
    case 62455:
    case 62456:
    case 62457:
    case 62458:
    case 62459:
    case 62460:
    case 62461:
    case 62462:
    case 62463:
    case 62474:
    case 62475:
    case 62476:
    case 62477:
    case 62478:
    case 62479:
    case 62490:
    case 62491:
    case 62492:
    case 62493:
    case 62494:
    case 62495:
      break;
    case 61442:
      v2 = @"Book Closed";
      goto LABEL_689;
    case 61444:
      v2 = @"Map";
      goto LABEL_689;
    case 61446:
      v2 = @"Car Multiple";
      goto LABEL_689;
    case 61447:
      v2 = @"Bolt Car";
      goto LABEL_689;
    case 61448:
      v2 = @"Bus Double Decker";
      goto LABEL_689;
    case 61449:
      v2 = @"Tram";
      goto LABEL_689;
    case 61450:
      v2 = @"Tram Tunnel";
      goto LABEL_689;
    case 61452:
      v2 = @"Gauge";
      goto LABEL_689;
    case 61453:
      v2 = @"Speedometer";
      goto LABEL_689;
    case 61454:
      v2 = @"Barometer";
      goto LABEL_689;
    case 61455:
      v2 = @"Network";
      goto LABEL_689;
    case 61456:
      v2 = @"Rectangle Stack";
      goto LABEL_689;
    case 61457:
      v2 = @"Square Stack";
      goto LABEL_689;
    case 61458:
      v2 = @"Three D Square Stack";
      goto LABEL_689;
    case 61459:
      v2 = @"Photo Stack";
      goto LABEL_689;
    case 61460:
      v2 = @"Photo Stack Angled";
      goto LABEL_689;
    case 61461:
      v2 = @"Camera Aperture";
      goto LABEL_689;
    case 61464:
      v2 = @"Note Icon";
      goto LABEL_689;
    case 61465:
      v2 = @"Note Text";
      goto LABEL_689;
    case 61466:
      v2 = @"Note Text Badge Plus";
      goto LABEL_689;
    case 61467:
      v2 = @"Send Message";
      goto LABEL_689;
    case 61468:
      v2 = @"Add Message";
      goto LABEL_689;
    case 61470:
      v2 = @"Speaker Wave2";
      goto LABEL_689;
    case 61471:
      v2 = @"Speaker Wave3";
      goto LABEL_689;
    case 61472:
      v2 = @"Speaker Slash";
      goto LABEL_689;
    case 61473:
      v2 = @"Speaker";
      goto LABEL_689;
    case 61474:
      v2 = @"TV And Hi-Fi Speaker";
      goto LABEL_689;
    case 61475:
      v2 = @"EarPods";
      goto LABEL_689;
    case 61476:
      v2 = @"AirPods";
      goto LABEL_689;
    case 61477:
      v2 = @"AirPods Pro";
      goto LABEL_689;
    case 61478:
      v2 = @"Hi-Fi Speaker";
      goto LABEL_689;
    case 61480:
      v2 = @"Radio";
      goto LABEL_689;
    case 61481:
      v2 = @"Hearing Aid";
      goto LABEL_689;
    case 61482:
      v2 = @"Apple TV";
      goto LABEL_689;
    case 61483:
      v2 = @"HomePod";
      goto LABEL_689;
    case 61484:
      v2 = @"Apple Watch Waves";
      goto LABEL_689;
    case 61486:
      v2 = @"iPhone Icon";
      goto LABEL_689;
    case 61487:
      v2 = @"iPhone Radio Waves";
      goto LABEL_689;
    case 61488:
      v2 = @"iPhone Apps";
      goto LABEL_689;
    case 61489:
      v2 = @"iPad Icon";
      goto LABEL_689;
    case 61490:
      v2 = @"iPad Landscape";
      goto LABEL_689;
    case 61491:
      v2 = @"iPod";
      goto LABEL_689;
    case 61494:
      v2 = @"Person Run Motion";
      goto LABEL_689;
    case 61495:
      v2 = @"Noise Cancellation";
      goto LABEL_689;
    case 61496:
      v2 = @"Transparency";
      goto LABEL_689;
    case 61497:
      v2 = @"Directions Arrow Diamond";
      goto LABEL_689;
    case 61498:
      v2 = @"Directions Arrow";
      goto LABEL_689;
    case 61499:
      v2 = @"AirPlay Audio";
      goto LABEL_689;
    case 61500:
      v2 = @"AirPlay Video";
      goto LABEL_689;
    case 61501:
      v2 = @"AirDrop";
      goto LABEL_689;
    case 61502:
      v2 = @"Music Note List";
      goto LABEL_689;
    case 61503:
      v2 = @"Music Note";
      goto LABEL_689;
    case 61504:
      v2 = @"Music Square Stack";
      goto LABEL_689;
    case 61505:
      v2 = @"Music Waveform Path";
      goto LABEL_689;
    case 61506:
      v2 = @"Music Live Photo Play";
      goto LABEL_689;
    case 61507:
      v2 = @"Music Live Photo";
      goto LABEL_689;
    case 61508:
      v2 = @"Slowmo";
      goto LABEL_689;
    case 61509:
      v2 = @"Timelapse";
      goto LABEL_689;
    case 61510:
      v2 = @"Calendar Badge Plus";
      goto LABEL_689;
    case 61511:
      v2 = @"Calendar Badge Exclamation";
      goto LABEL_689;
    case 61512:
      v2 = @"Timer";
      goto LABEL_689;
    case 61514:
      v2 = @"Compose";
      goto LABEL_689;
    case 61515:
      v2 = @"Duplicate";
      goto LABEL_689;
    case 61518:
      v2 = @"Night Shift";
      goto LABEL_689;
    case 61519:
      v2 = @"True Tone";
      goto LABEL_689;
    case 61520:
      v2 = @"Dial Min";
      goto LABEL_689;
    case 61521:
      v2 = @"Dial Max";
      goto LABEL_689;
    case 61522:
      v2 = @"QR Code Viewfinder";
      goto LABEL_689;
    case 61523:
      v2 = @"Camera Viewfinder";
      goto LABEL_689;
    case 61524:
      v2 = @"Wallet Pass";
      goto LABEL_689;
    case 61525:
      v2 = @"Appearance";
      goto LABEL_689;
    case 61528:
      v2 = @"No Sign";
      goto LABEL_689;
    case 61529:
      v2 = @"Command";
      goto LABEL_689;
    case 61532:
      v2 = @"Brain Head Profile";
      goto LABEL_689;
    case 61533:
      v2 = @"Brain";
      goto LABEL_689;
    case 61534:
      v2 = @"Grinning Face";
      goto LABEL_689;
    case 61535:
      v2 = @"Face Smiling With Smiling Eyes";
      goto LABEL_689;
    case 61536:
      v2 = @"Face Grinning With Squinting Eyes";
      goto LABEL_689;
    case 61537:
      v2 = @"Face With Tears Of Joy";
      goto LABEL_689;
    case 61538:
      v2 = @"Face Rolling On The Floor Laughing";
      goto LABEL_689;
    case 61539:
      v2 = @"Face Winking With Stuck Out Tongue";
      goto LABEL_689;
    case 61540:
      v2 = @"Face Grimacing";
      goto LABEL_689;
    case 61541:
      v2 = @"Face Smiling With Heart Eyes";
      goto LABEL_689;
    case 61542:
      v2 = @"Face Blowing A Kiss";
      goto LABEL_689;
    case 61543:
      v2 = @"Face Smiling With Hearts";
      goto LABEL_689;
    case 61544:
      v2 = @"Face Smiling With Sunglasses";
      goto LABEL_689;
    case 61545:
      v2 = @"Face With Starry Eyes";
      goto LABEL_689;
    case 61546:
      v2 = @"Memoji";
      goto LABEL_689;
    case 61547:
      v2 = @"Thumbs Up Emoji";
      goto LABEL_689;
    case 61548:
      v2 = @"Peace Hand Sign";
      goto LABEL_689;
    case 61549:
      v2 = @"Love You Gesture";
      goto LABEL_689;
    case 61550:
      v2 = @"Closed Fist";
      goto LABEL_689;
    case 61551:
      v2 = @"Face Mask";
      goto LABEL_689;
    case 61552:
      v2 = @"One Prong Puzzle Piece";
      goto LABEL_689;
    case 61553:
      v2 = @"Take Out Bag And Cup";
      goto LABEL_689;
    case 61554:
      v2 = @"Bear";
      goto LABEL_689;
    case 61555:
      v2 = @"Tiger";
      goto LABEL_689;
    case 61556:
      v2 = @"Monkey";
      goto LABEL_689;
    case 61557:
      v2 = @"Ram";
      goto LABEL_689;
    case 61558:
      v2 = @"Rabbit";
      goto LABEL_689;
    case 61559:
      v2 = @"Snake";
      goto LABEL_689;
    case 61560:
      v2 = @"Chicken";
      goto LABEL_689;
    case 61561:
      v2 = @"Pig";
      goto LABEL_689;
    case 61562:
      v2 = @"Mouse";
      goto LABEL_689;
    case 61563:
      v2 = @"Cow";
      goto LABEL_689;
    case 61564:
      v2 = @"Dragon";
      goto LABEL_689;
    case 61565:
      v2 = @"Alien Monster";
      goto LABEL_689;
    case 61566:
      v2 = @"Robot";
      goto LABEL_689;
    case 61567:
      v2 = @"Ghost";
      goto LABEL_689;
    case 61568:
      v2 = @"Pile Of Poop";
      goto LABEL_689;
    case 61569:
      v2 = @"Skull";
      goto LABEL_689;
    case 61571:
      v2 = @"Folder With Gear";
      goto LABEL_689;
    case 61572:
      v2 = @"2×2 Rectangle Grid";
      goto LABEL_689;
    case 61574:
      v2 = @"Rectangle Split In Two";
      goto LABEL_689;
    case 61575:
      v2 = @"Rectangle Split In Three";
      goto LABEL_689;
    case 61577:
      v2 = @"Cartoon Heart";
      goto LABEL_689;
    case 61578:
      v2 = @"Two Cartoon Hearts";
      goto LABEL_689;
    case 61579:
      v2 = @"Star Half Filled";
      goto LABEL_689;
    case 61584:
      v2 = @"Hand Raised With Slash";
      goto LABEL_689;
    case 61586:
      v2 = @"Waveform";
      goto LABEL_689;
    case 61587:
      v2 = @"Checklist";
      goto LABEL_689;
    case 61588:
      v2 = @"Text Box";
      goto LABEL_689;
    case 61590:
      v2 = @"Eraser";
      goto LABEL_689;
    case 61591:
      v2 = @"Scribble Variable";
      goto LABEL_689;
    case 61592:
      v2 = @"Pencil And Scribble";
      goto LABEL_689;
    case 61593:
      v2 = @"Clipboard Alternate";
      goto LABEL_689;
    case 61696:
      v2 = @"List Bullet Clipboard";
      goto LABEL_689;
    case 61697:
      v2 = @"Rich Text Page News Article";
      goto LABEL_689;
    case 61698:
      v2 = @"Text Page";
      goto LABEL_689;
    case 61699:
      v2 = @"Append Page";
      goto LABEL_689;
    case 61700:
      v2 = @"Apple Terminal";
      goto LABEL_689;
    case 61701:
      v2 = @"Calendar Badge Clock";
      goto LABEL_689;
    case 61702:
      v2 = @"Calendar Badge Minus";
      goto LABEL_689;
    case 61703:
      v2 = @"Calendar Badge Checkmark";
      goto LABEL_689;
    case 61704:
      v2 = @"Quicknote";
      goto LABEL_689;
    case 61705:
      v2 = @"Menucard";
      goto LABEL_689;
    case 61712:
      v2 = @"Magazine";
      goto LABEL_689;
    case 61713:
      v2 = @"Photo Art Frame";
      goto LABEL_689;
    case 61714:
      v2 = @"Figure Wave";
      goto LABEL_689;
    case 61715:
      v2 = @"Dumbbell";
      goto LABEL_689;
    case 61716:
      v2 = @"Sports Court";
      goto LABEL_689;
    case 61717:
      v2 = @"Tennis Racket";
      goto LABEL_689;
    case 61718:
      v2 = @"Skateboard";
      goto LABEL_689;
    case 61719:
      v2 = @"Duffle Bag";
      goto LABEL_689;
    case 61720:
      v2 = @"Apple Classical";
      goto LABEL_689;
    case 61721:
      v2 = @"Bluetooth";
      goto LABEL_689;
    case 61728:
      v2 = @"Flag2 Crossed";
      goto LABEL_689;
    case 61729:
      v2 = @"Flag Checkered2 Crossed";
      goto LABEL_689;
    case 61730:
      v2 = @"X Square Root";
      goto LABEL_689;
    case 61731:
      v2 = @"Flashlight On";
      goto LABEL_689;
    case 61732:
      v2 = @"Flashlight Slash";
      goto LABEL_689;
    case 61733:
      v2 = @"Paint Palette";
      goto LABEL_689;
    case 61734:
      v2 = @"Mail Stack";
      goto LABEL_689;
    case 61735:
      v2 = @"Mail";
      goto LABEL_689;
    case 61736:
      v2 = @"Gear Shape";
      goto LABEL_689;
    case 61737:
      v2 = @"Gearshape2";
      goto LABEL_689;
    case 61744:
      v2 = @"Signature";
      goto LABEL_689;
    case 61745:
      v2 = @"Wallet";
      goto LABEL_689;
    case 61746:
      v2 = @"Metronome  ";
      goto LABEL_689;
    case 61747:
      v2 = @"Numbers";
      goto LABEL_689;
    case 61748:
      v2 = @"Piano Keys Inverse";
      goto LABEL_689;
    case 61749:
      v2 = @"Paintbrush Pointed  ";
      goto LABEL_689;
    case 61750:
      v2 = @"Applescript  ";
      goto LABEL_689;
    case 61751:
      v2 = @"Scroll";
      goto LABEL_689;
    case 61752:
      v2 = @"Scanner";
      goto LABEL_689;
    case 61753:
      v2 = @"Handbag Alternate";
      goto LABEL_689;
    case 61760:
      v2 = @"Suitcase Rolling";
      goto LABEL_689;
    case 61761:
      v2 = @"Homekit";
      goto LABEL_689;
    case 61762:
      v2 = @"Building Columns";
      goto LABEL_689;
    case 61763:
      v2 = @"Lamp Desk";
      goto LABEL_689;
    case 61764:
      v2 = @"Lamp Ceiling";
      goto LABEL_689;
    case 61765:
      v2 = @"Fan Floor";
      goto LABEL_689;
    case 61766:
      v2 = @"Fan";
      goto LABEL_689;
    case 61767:
      v2 = @"Fan Ceiling";
      goto LABEL_689;
    case 61768:
      v2 = @"Lamp Floor";
      goto LABEL_689;
    case 61769:
      v2 = @"Power Plug";
      goto LABEL_689;
    case 61776:
      v2 = @"Balloon";
      goto LABEL_689;
    case 61777:
      v2 = @"Regatta Sailboat";
      goto LABEL_689;
    case 61778:
      v2 = @"Fireworks";
      goto LABEL_689;
    case 61779:
      v2 = @"Party Popper";
      goto LABEL_689;
    case 61780:
      v2 = @"Popcorn";
      goto LABEL_689;
    case 61781:
      v2 = @"Frying Pan";
      goto LABEL_689;
    case 61782:
      v2 = @"Sofa";
      goto LABEL_689;
    case 61783:
      v2 = @"Torus";
      goto LABEL_689;
    case 61784:
      v2 = @"Macintosh Classic";
      goto LABEL_689;
    case 61785:
      v2 = @"Finder";
      goto LABEL_689;
    case 61792:
      v2 = @"Watch Analog";
      goto LABEL_689;
    case 61793:
      v2 = @"Apple Watch Side Right";
      goto LABEL_689;
    case 61794:
      v2 = @"Media Stick";
      goto LABEL_689;
    case 61795:
      v2 = @"Tv";
      goto LABEL_689;
    case 61796:
      v2 = @"Shazam Logo";
      goto LABEL_689;
    case 61797:
      v2 = @"Guitars";
      goto LABEL_689;
    case 61798:
      v2 = @"Moped";
      goto LABEL_689;
    case 61799:
      v2 = @"Scooter";
      goto LABEL_689;
    case 61800:
      v2 = @"Stroller";
      goto LABEL_689;
    case 61801:
      v2 = @"Comb";
      goto LABEL_689;
    case 61808:
      v2 = @"Horn";
      goto LABEL_689;
    case 61809:
      v2 = @"Tortoise";
      goto LABEL_689;
    case 61810:
      v2 = @"Hare";
      goto LABEL_689;
    case 61811:
      v2 = @"Dog Alternate";
      goto LABEL_689;
    case 61812:
      v2 = @"Cat Alternate";
      goto LABEL_689;
    case 61813:
      v2 = @"Lizard";
      goto LABEL_689;
    case 61814:
      v2 = @"Bird";
      goto LABEL_689;
    case 61815:
      v2 = @"Ant";
      goto LABEL_689;
    case 61816:
      v2 = @"Ladybug";
      goto LABEL_689;
    case 61817:
      v2 = @"Function";
      goto LABEL_689;
    case 61824:
      v2 = @"Percent";
      goto LABEL_689;
    case 61825:
      v2 = @"Teddybear";
      goto LABEL_689;
    case 61826:
      v2 = @"Leaf";
      goto LABEL_689;
    case 61827:
      v2 = @"Text Format Characters";
      goto LABEL_689;
    case 61828:
      v2 = @"Crown";
      goto LABEL_689;
    case 61829:
      v2 = @"Movie Clapper";
      goto LABEL_689;
    case 61830:
      v2 = @"Text Format";
      goto LABEL_689;
    case 61831:
      v2 = @"Film Stack";
      goto LABEL_689;
    case 61832:
      v2 = @"Text Format Size";
      goto LABEL_689;
    case 61833:
      v2 = @"Text Format Superscript";
      goto LABEL_689;
    case 61840:
      v2 = @"Text Format Subscript";
      goto LABEL_689;
    case 61841:
      v2 = @"Sum";
      goto LABEL_689;
    case 61842:
      v2 = @"Compass Drawing";
      goto LABEL_689;
    case 61843:
      v2 = @"Angle";
      goto LABEL_689;
    case 61844:
      v2 = @"Bold Italic Underline";
      goto LABEL_689;
    case 61845:
      v2 = @"Characters Lowercase";
      goto LABEL_689;
    case 61846:
      v2 = @"Characters Uppercase";
      goto LABEL_689;
    case 61847:
      v2 = @"Vision Pro Spatial Computer";
      goto LABEL_689;
    case 61848:
      v2 = @"Low Battery";
      goto LABEL_689;
    case 61849:
      v2 = @"Charging Charge Battery";
      goto LABEL_689;
    case 61952:
      v2 = @"X";
      goto LABEL_689;
    case 61953:
      v2 = @"Left Arrow";
      goto LABEL_689;
    case 61954:
      v2 = @"Right Arrow";
      goto LABEL_689;
    case 61955:
      v2 = @"Up Arrow";
      goto LABEL_689;
    case 61956:
      v2 = @"Down Arrow";
      goto LABEL_689;
    case 61957:
      v2 = @"Medical Thermometer Temperature";
      goto LABEL_689;
    case 61958:
      v2 = @"Calendar Person";
      goto LABEL_689;
    case 61959:
      v2 = @"Calendar Chart";
      goto LABEL_689;
    case 61960:
      v2 = @"Person Contact Magnifying Glass";
      goto LABEL_689;
    case 61961:
      v2 = @"Journal";
      goto LABEL_689;
    case 61968:
      v2 = @"Figure Run Treadmill";
      goto LABEL_689;
    case 61969:
      v2 = @"Figure Walk Treadmill";
      goto LABEL_689;
    case 61970:
      v2 = @"Figure Ice Skating";
      goto LABEL_689;
    case 61971:
      v2 = @"Degrees Celsius Temperature";
      goto LABEL_689;
    case 61972:
      v2 = @"Degrees Farenheit Temperature";
      goto LABEL_689;
    case 61973:
      v2 = @"Fire Extinguisher";
      goto LABEL_689;
    case 61974:
      v2 = @"Wallet Bifold";
      goto LABEL_689;
    case 61975:
      v3 = +[WFDevice currentDevice];
      if ([v3 hasCapability:@"WAPI"])
      {
        v4 = @"House WLAN (Glyph)";
        v5 = @"House WLAN";
      }

      else
      {
        v4 = @"House WiFi (Glyph)";
        v5 = @"House WiFi";
      }

LABEL_695:
      v1 = WFLocalizedStringWithKey(v4, v5);

      break;
    case 61976:
      v2 = @"Keys Ring";
      goto LABEL_689;
    case 61977:
      v2 = @"Wheelchair";
      goto LABEL_689;
    case 61984:
      v2 = @"Helmet";
      goto LABEL_689;
    case 61985:
      v2 = @"Coat";
      goto LABEL_689;
    case 61986:
      v2 = @"Jacket";
      goto LABEL_689;
    case 61987:
      v2 = @"Heart Clipboard Doctor";
      goto LABEL_689;
    case 61988:
      v2 = @"Humidity";
      goto LABEL_689;
    case 61989:
      v2 = @"Sparkles Stars";
      goto LABEL_689;
    case 61990:
      v2 = @"Moon Haze";
      goto LABEL_689;
    case 61991:
      v2 = @"Moon Stars";
      goto LABEL_689;
    case 61992:
      v2 = @"Cloud Hail";
      goto LABEL_689;
    case 61993:
      v2 = @"Cloud Sleet";
      goto LABEL_689;
    case 62000:
      v2 = @"Cloud Bolt";
      goto LABEL_689;
    case 62001:
      v2 = @"Cloud Bolt Rain";
      goto LABEL_689;
    case 62002:
      v2 = @"Cloud Sun";
      goto LABEL_689;
    case 62003:
      v2 = @"Cloud Sun Rain";
      goto LABEL_689;
    case 62004:
      v2 = @"Cloud Sun Bolt";
      goto LABEL_689;
    case 62005:
      v2 = @"Cloud Moon";
      goto LABEL_689;
    case 62006:
      v2 = @"Cloud Moon Rain";
      goto LABEL_689;
    case 62007:
      v2 = @"Cloud Moon Bolt";
      goto LABEL_689;
    case 62008:
      v2 = @"Wind";
      goto LABEL_689;
    case 62009:
      v2 = @"Wind Snow";
      goto LABEL_689;
    case 62016:
      v2 = @"Tornado Twister";
      goto LABEL_689;
    case 62017:
      v2 = @"Thermometer Sun";
      goto LABEL_689;
    case 62018:
      v2 = @"Thermometer Snowflake";
      goto LABEL_689;
    case 62019:
      v2 = @"Sunset";
      goto LABEL_689;
    case 62020:
      v2 = @"Sunrise";
      goto LABEL_689;
    case 62021:
      v2 = @"Airplane Departure";
      goto LABEL_689;
    case 62022:
      v2 = @"Airplane Arrival";
      goto LABEL_689;
    case 62023:
      v2 = @"Cablecar";
      goto LABEL_689;
    case 62024:
      v2 = @"Light Rail";
      goto LABEL_689;
    case 62025:
      v2 = @"Ferry Boat";
      goto LABEL_689;
    case 62033:
      v2 = @"Box Truck";
      goto LABEL_689;
    case 62034:
      v2 = @"Ev Charger";
      goto LABEL_689;
    case 62035:
      v2 = @"Road Lanes";
      goto LABEL_689;
    case 62036:
      v2 = @"Checkered Flag";
      goto LABEL_689;
    case 62037:
      v2 = @"Arcade Stick Console";
      goto LABEL_689;
    case 62038:
      v2 = @"Gearshift Manual Six Speed Transmission";
      goto LABEL_689;
    case 62039:
      v2 = @"Phone Game Controller";
      goto LABEL_689;
    case 62040:
      v2 = @"Arcade Joystick Controller";
      goto LABEL_689;
    case 62041:
      v2 = @"Personal Hotspot";
      goto LABEL_689;
    case 62048:
      v2 = @"Bolt";
      goto LABEL_689;
    case 62049:
      v2 = @"Satellite";
      goto LABEL_689;
    case 62050:
      v2 = @"Usb";
      goto LABEL_689;
    case 62051:
      v2 = @"Bonjour Networking";
      goto LABEL_689;
    case 62052:
      v2 = @"Hdmi Port";
      goto LABEL_689;
    case 62053:
      v2 = @"Thunderbolt Port";
      goto LABEL_689;
    case 62054:
      v2 = @"Usb C Port";
      goto LABEL_689;
    case 62055:
      v2 = @"Usb A Port";
      goto LABEL_689;
    case 62056:
      v2 = @"Usb B Port";
      goto LABEL_689;
    case 62057:
      v2 = @"Ethernet Port";
      goto LABEL_689;
    case 62064:
      v2 = @"Vga Port";
      goto LABEL_689;
    case 62065:
      v2 = @"Thunderbolt";
      goto LABEL_689;
    case 62066:
      v2 = @"Firewire";
      goto LABEL_689;
    case 62067:
      v2 = @"Ethernet";
      goto LABEL_689;
    case 62068:
      v2 = @"Antenna Radiowaves";
      goto LABEL_689;
    case 62069:
      v2 = @"Oven";
      goto LABEL_689;
    case 62070:
      v2 = @"Microwave";
      goto LABEL_689;
    case 62071:
      v2 = @"Refrigerator";
      goto LABEL_689;
    case 62072:
      v2 = @"Toilet";
      goto LABEL_689;
    case 62073:
      v2 = @"Light Bulb Led";
      goto LABEL_689;
    case 62080:
      v2 = @"Light Bulb Led Alternate";
      goto LABEL_689;
    case 62081:
      v2 = @"Person Archery";
      goto LABEL_689;
    case 62082:
      v2 = @"Person Basketball";
      goto LABEL_689;
    case 62083:
      v2 = @"Person Climbing";
      goto LABEL_689;
    case 62084:
      v2 = @"Person Stretch Cooldown";
      goto LABEL_689;
    case 62085:
      v2 = @"Person Core Training";
      goto LABEL_689;
    case 62086:
      v2 = @"Person Curling";
      goto LABEL_689;
    case 62087:
      v2 = @"Person Elliptical";
      goto LABEL_689;
    case 62088:
      v2 = @"Person Fencing";
      goto LABEL_689;
    case 62089:
      v2 = @"Person Gymnastics";
      goto LABEL_689;
    case 62096:
      v2 = @"Person Interval Training";
      goto LABEL_689;
    case 62097:
      v2 = @"Person Hockey";
      goto LABEL_689;
    case 62098:
      v2 = @"Person Ice Hockey";
      goto LABEL_689;
    case 62099:
      v2 = @"Person Indoor Cycle";
      goto LABEL_689;
    case 62100:
      v2 = @"Person Cycle Bike";
      goto LABEL_689;
    case 62101:
      v2 = @"Person Rowing";
      goto LABEL_689;
    case 62102:
      v2 = @"Person Skateboarding";
      goto LABEL_689;
    case 62103:
      v2 = @"Person Ice Skating";
      goto LABEL_689;
    case 62104:
      v2 = @"Person Stair Stepper";
      goto LABEL_689;
    case 62105:
      v2 = @"Medal";
      goto LABEL_689;
    case 62208:
      v2 = @"Fossil Shell";
      goto LABEL_689;
    case 62209:
      v2 = @"Three D Move";
      goto LABEL_689;
    case 62210:
      v2 = @"Hat Cap";
      goto LABEL_689;
    case 62211:
      v2 = @"Book Wrench";
      goto LABEL_689;
    case 62212:
      v2 = @"Key Radiowaves";
      goto LABEL_689;
    case 62213:
      v2 = @"Apple Intelligence";
      goto LABEL_689;
    case 62214:
      v2 = @"Hand Point Up Left";
      goto LABEL_689;
    case 62215:
      v2 = @"Hand Tap";
      goto LABEL_689;
    case 62216:
      v2 = @"Hand Draw";
      goto LABEL_689;
    case 62217:
      v2 = @"Shipping Box";
      goto LABEL_689;
    case 62224:
      v2 = @"Engine Combustion";
      goto LABEL_689;
    case 62225:
      v2 = @"Pc";
      goto LABEL_689;
    case 62226:
      v2 = @"Bell Badge";
      goto LABEL_689;
    case 62227:
      v2 = @"Bell Badge Waveform";
      goto LABEL_689;
    case 62228:
      v2 = @"Bell Slash";
      goto LABEL_689;
    case 62229:
      v2 = @"Bell And Waves";
      goto LABEL_689;
    case 62230:
      v2 = @"Swatch Palette";
      goto LABEL_689;
    case 62231:
      v2 = @"Mug Alternate";
      goto LABEL_689;
    case 62232:
      v2 = @"Oil Can";
      goto LABEL_689;
    case 62233:
      v2 = @"Newspaper";
      goto LABEL_689;
    case 62240:
      v2 = @"Accessibility";
      goto LABEL_689;
    case 62241:
      v2 = @"Megaphone";
      goto LABEL_689;
    case 62242:
      v2 = @"Firewall";
      goto LABEL_689;
    case 62243:
      v2 = @"Basket";
      goto LABEL_689;
    case 62244:
      v2 = @"Level";
      goto LABEL_689;
    case 62245:
      v2 = @"File Vault";
      goto LABEL_689;
    case 62246:
      v2 = @"Fireplace";
      goto LABEL_689;
    case 62247:
      v2 = @"Cabinet";
      goto LABEL_689;
    case 62248:
      v2 = @"Dryer";
      goto LABEL_689;
    case 62249:
      v2 = @"Sink";
      goto LABEL_689;
    case 62256:
      v2 = @"Pin";
      goto LABEL_689;
    case 62257:
      v2 = @"Shoe";
      goto LABEL_689;
    case 62258:
      v2 = @"Building Block";
      goto LABEL_689;
    case 62259:
      v2 = @"D Pad";
      goto LABEL_689;
    case 62260:
      v2 = @"Water Bottle";
      goto LABEL_689;
    case 62261:
      v2 = @"Sd Card";
      goto LABEL_689;
    case 62262:
      v2 = @"Sim Card";
      goto LABEL_689;
    case 62263:
      v2 = @"esim";
      goto LABEL_689;
    case 62264:
      v2 = @"Scale Mass";
      goto LABEL_689;
    case 62265:
      v2 = @"Banknote";
      goto LABEL_689;
    case 62272:
      v2 = @"Hockey Puck";
      goto LABEL_689;
    case 62273:
      v2 = @"Australian Football";
      goto LABEL_689;
    case 62274:
      v2 = @"American Football";
      goto LABEL_689;
    case 62275:
      v2 = @"Beach Umbrella";
      goto LABEL_689;
    case 62276:
      v2 = @"Suit Spade";
      goto LABEL_689;
    case 62277:
      v2 = @"Suit Diamond";
      goto LABEL_689;
    case 62278:
      v2 = @"Suit Club";
      goto LABEL_689;
    case 62279:
      v2 = @"Shower Handheld";
      goto LABEL_689;
    case 62280:
      v2 = @"Signpost Right";
      goto LABEL_689;
    case 62281:
      v2 = @"Mac Pro Gen3";
      goto LABEL_689;
    case 62288:
      v2 = @"Mac Pro Gen2";
      goto LABEL_689;
    case 62289:
      v2 = @"Mac Pro Gen1";
      goto LABEL_689;
    case 62290:
      v2 = @"HomePod Mini";
      goto LABEL_689;
    case 62291:
      v2 = @"HomePod2";
      goto LABEL_689;
    case 62292:
      v2 = @"Suv Side";
      goto LABEL_689;
    case 62293:
      v2 = @"Car Side";
      goto LABEL_689;
    case 62294:
      v2 = @"Convertible Side";
      goto LABEL_689;
    case 62295:
      v2 = @"Horn Blast";
      goto LABEL_689;
    case 62296:
      v2 = @"Vaccination Card";
      goto LABEL_689;
    case 62297:
      v2 = @"Iv Fluid Bag";
      goto LABEL_689;
    case 62304:
      v2 = @"Hat Wide Brim";
      goto LABEL_689;
    case 62305:
      v2 = @"Globe Desk";
      goto LABEL_689;
    case 62306:
      v2 = @"Cup And Heat Waves";
      goto LABEL_689;
    case 62307:
      v2 = @"Network Connected To Line Below";
      goto LABEL_689;
    case 62308:
      v2 = @"App Connected To App Below";
      goto LABEL_689;
    case 62309:
      v2 = @"Wrench Adjustable";
      goto LABEL_689;
    case 62310:
      v2 = @"Mustache";
      goto LABEL_689;
    case 62311:
      v2 = @"Flip Phone";
      goto LABEL_689;
    case 62312:
      v2 = @"Siri";
      goto LABEL_689;
    case 62313:
      v2 = @"App Store";
      goto LABEL_689;
    case 62320:
      v2 = @"Car Play";
      goto LABEL_689;
    case 62321:
      v2 = @"Text Append";
      goto LABEL_689;
    case 62322:
      v2 = @"Apple Cash";
      goto LABEL_689;
    case 62323:
      v2 = @"Apple Math Notes";
      goto LABEL_689;
    case 62324:
      v2 = @"Apple Mindfulness";
      goto LABEL_689;
    case 62325:
      v2 = @"Apple Breathe";
      goto LABEL_689;
    case 62326:
      v2 = @"Apple Reflect";
      goto LABEL_689;
    case 62327:
      v2 = @"Apple Meditate";
      goto LABEL_689;
    case 62328:
      v2 = @"Apple State Of Mind";
      goto LABEL_689;
    case 62329:
      v2 = @"Apple Cycle Tracking";
      goto LABEL_689;
    case 62336:
      v2 = @"Apple News";
      goto LABEL_689;
    case 62337:
      v2 = @"Apple Health Trends";
      goto LABEL_689;
    case 62338:
      v2 = @"Apple Pages";
      goto LABEL_689;
    case 62339:
      v2 = @"Apple Keynote";
      goto LABEL_689;
    case 62340:
      v2 = @"Apple Numbers";
      goto LABEL_689;
    case 62341:
      v2 = @"Bezier Curve";
      goto LABEL_689;
    case 62342:
      v2 = @"Road Lanes Curved Left";
      goto LABEL_689;
    case 62343:
      v2 = @"Road Lanes Curved Right";
      goto LABEL_689;
    case 62344:
      v2 = @"Point Top Left Down To Point Bottom Right Curve Path";
      goto LABEL_689;
    case 62345:
      v2 = @"Point Bottom Left Forward To Point Top Right S Curve Path";
      goto LABEL_689;
    case 62352:
      v2 = @"Sparkle";
      goto LABEL_689;
    case 62353:
      v2 = @"Arrow Up Right";
      goto LABEL_689;
    case 62354:
      v2 = @"Arrow Up Left";
      goto LABEL_689;
    case 62355:
      v2 = @"Text Insert";
      goto LABEL_689;
    case 62356:
      v2 = @"Text Quote";
      goto LABEL_689;
    case 62357:
      v2 = @"Text Align Left";
      goto LABEL_689;
    case 62358:
      v2 = @"Text Align Center";
      goto LABEL_689;
    case 62359:
      v2 = @"Text Align Right";
      goto LABEL_689;
    case 62360:
      v2 = @"Text Justify";
      goto LABEL_689;
    case 62464:
      v2 = @"Suitcase Rolling And Suitcase";
      goto LABEL_689;
    case 62465:
      v2 = @"Pet Carrier";
      goto LABEL_689;
    case 62466:
      v2 = @"Airplane Landed";
      goto LABEL_689;
    case 62467:
      v2 = @"Airplane Cloud";
      goto LABEL_689;
    case 62468:
      v2 = @"Airplane Ticket";
      goto LABEL_689;
    case 62469:
      v2 = @"Airplane Seat";
      goto LABEL_689;
    case 62470:
      v2 = @"Person Walking Suitcase";
      goto LABEL_689;
    case 62471:
      v2 = @"Apple Classical Pages";
      goto LABEL_689;
    case 62472:
      v2 = @"Text Square Filled";
      goto LABEL_689;
    case 62473:
      v2 = @"Character Text Justify";
      goto LABEL_689;
    case 62480:
      v2 = @"Graph2 D";
      goto LABEL_689;
    case 62481:
      v2 = @"Math Operators A R";
      goto LABEL_689;
    case 62482:
      v2 = @"Circle Fill";
      goto LABEL_689;
    case 62483:
      v2 = @"Capsule Portrait Fill";
      goto LABEL_689;
    case 62484:
      v2 = @"Rectangle Fill";
      goto LABEL_689;
    case 62485:
      v2 = @"Rectangle Portrait Fill";
      goto LABEL_689;
    case 62486:
      v2 = @"Oval Fill";
      goto LABEL_689;
    case 62487:
      v2 = @"Oval Portrait Fill";
      goto LABEL_689;
    case 62488:
      v2 = @"Triangle Fill";
      goto LABEL_689;
    case 62489:
      v2 = @"Diamond Fill";
      goto LABEL_689;
    case 62496:
      v2 = @"Octagon Fill";
      goto LABEL_689;
    case 62497:
      v2 = @"Hexagon Fill";
      goto LABEL_689;
    case 62498:
      v2 = @"Pentagon Fill";
      goto LABEL_689;
    case 62499:
      v2 = @"Seal Fill";
      goto LABEL_689;
    case 62500:
      v2 = @"Rhombus Fill";
      goto LABEL_689;
    case 62501:
      v2 = @"Shield Fill";
LABEL_689:
      v1 = WFLocalizedString(v2);
      break;
    default:
      switch(a1)
      {
        case 59392:
          v2 = @"Ellipsis";
          goto LABEL_689;
        case 59395:
          v2 = @"Dollar Sign With Line";
          goto LABEL_689;
        case 59402:
          v2 = @"Movie Camera";
          goto LABEL_689;
        case 59403:
          v2 = @"Message Bubbles";
          goto LABEL_689;
        case 59405:
          v2 = @"Twelve Squares";
          goto LABEL_689;
        case 59412:
          v2 = @"Globe";
          goto LABEL_689;
        case 59414:
          v2 = @"Chat Bubble";
          goto LABEL_689;
        case 59436:
          v2 = @"Laptop";
          goto LABEL_689;
        case 59437:
          v2 = @"Person";
          goto LABEL_689;
        case 59445:
          v2 = @"List";
          goto LABEL_689;
        case 59446:
          v2 = @"Keyboard";
          goto LABEL_689;
        case 59448:
          v2 = @"Pound Sign";
          goto LABEL_689;
        case 59452:
          v2 = @"Car";
          goto LABEL_689;
        case 59454:
          v2 = @"Target";
          goto LABEL_689;
        case 59456:
          v2 = @"Football";
          goto LABEL_689;
        case 59459:
          v2 = @"Cloud Service";
          goto LABEL_689;
        case 59465:
          v2 = @"Open Book";
          goto LABEL_689;
        case 59468:
          v2 = @"Flower";
          goto LABEL_689;
        case 59489:
          v2 = @"Battery";
          goto LABEL_689;
        case 59497:
          v2 = @"Feed";
          goto LABEL_689;
        case 59508:
          v2 = @"Play";
          goto LABEL_689;
        case 59511:
          v2 = @"Magic Wand With Stars";
          goto LABEL_689;
        case 59512:
          v2 = @"Euro Sign";
          goto LABEL_689;
        case 59514:
          v2 = @"Yen Sign";
          goto LABEL_689;
        case 59515:
          v2 = @"Bitcoin Symbol";
          goto LABEL_689;
        case 59516:
          v2 = @"Loading Indicator";
          goto LABEL_689;
        case 59519:
          v2 = @"Database Cylinder Stack";
          goto LABEL_689;
        case 59648:
          v2 = @"Airplane";
          goto LABEL_689;
        case 59649:
          v2 = @"Alarm Clock";
          goto LABEL_689;
        case 59650:
          v2 = @"Alert Triangle";
          goto LABEL_689;
        case 59651:
          v2 = @"Alien";
          goto LABEL_689;
        case 59652:
          v2 = @"Ambulance";
          goto LABEL_689;
        case 59653:
          v2 = @"Archive";
          goto LABEL_689;
        case 59654:
          v2 = @"Arrow Curved Left";
          goto LABEL_689;
        case 59655:
          v2 = @"Arrow Curved Right";
          goto LABEL_689;
        case 59656:
          v2 = @"Asterisk";
          goto LABEL_689;
        case 59657:
          v2 = @"Atom";
          goto LABEL_689;
        case 59658:
          v2 = @"Baby";
          goto LABEL_689;
        case 59659:
          v2 = @"Baby 2";
          goto LABEL_689;
        case 59660:
          v2 = @"Bandage";
          goto LABEL_689;
        case 59661:
          v2 = @"Barcode";
          goto LABEL_689;
        case 59662:
          v2 = @"Bar Graph";
          goto LABEL_689;
        case 59663:
          v2 = @"Baseball";
          goto LABEL_689;
        case 59664:
          v2 = @"Basketball";
          goto LABEL_689;
        case 59665:
          v2 = @"Bathtub";
          goto LABEL_689;
        case 59666:
          v2 = @"Bed";
          goto LABEL_689;
        case 59667:
          v2 = @"Bell";
          goto LABEL_689;
        case 59668:
          v2 = @"Bicycle";
          goto LABEL_689;
        case 59669:
          v2 = @"Binoculars";
          goto LABEL_689;
        case 59670:
          v2 = @"Bookmark";
          goto LABEL_689;
        case 59671:
          v2 = @"Bookshelf";
          goto LABEL_689;
        case 59672:
          v2 = @"Book With Sash";
          goto LABEL_689;
        case 59673:
          v2 = @"Box Filled";
          goto LABEL_689;
        case 59675:
          v2 = @"Braille";
          goto LABEL_689;
        case 59676:
          v2 = @"Briefcase";
          goto LABEL_689;
        case 59677:
          v2 = @"Buildings";
          goto LABEL_689;
        case 59678:
          v2 = @"Bus";
          goto LABEL_689;
        case 59679:
          v2 = @"Cake";
          goto LABEL_689;
        case 59680:
          v2 = @"Calculator";
          goto LABEL_689;
        case 59681:
          v2 = @"Calendar";
          goto LABEL_689;
        case 59682:
          v2 = @"Camera";
          goto LABEL_689;
        case 59683:
          v2 = @"Carrot";
          goto LABEL_689;
        case 59684:
          v2 = @"Cat";
          goto LABEL_689;
        case 59685:
          v2 = @"Chain Link";
          goto LABEL_689;
        case 59686:
          v2 = @"Chemical";
          goto LABEL_689;
        case 59687:
          v2 = @"Child";
          goto LABEL_689;
        case 59688:
          v2 = @"Church";
          goto LABEL_689;
        case 59690:
          v2 = @"Checkmark";
          goto LABEL_689;
        case 59692:
          v2 = @"Down Chevron Arrow";
          goto LABEL_689;
        case 59693:
          v2 = @"Download Arrow";
          goto LABEL_689;
        case 59695:
          v2 = @"Fast Forward";
          goto LABEL_689;
        case 59696:
          v2 = @"Left Chevron Arrow";
          goto LABEL_689;
        case 59697:
          v2 = @"Info";
          goto LABEL_689;
        case 59698:
          v2 = @"Circled Pi Symbol";
          goto LABEL_689;
        case 59700:
          v2 = @"Plus";
          goto LABEL_689;
        case 59702:
          v2 = @"Power";
          goto LABEL_689;
        case 59703:
          v2 = @"Question Mark";
          goto LABEL_689;
        case 59704:
          v2 = @"Rewind";
          goto LABEL_689;
        case 59705:
          v2 = @"Right Chevron Arrow";
          goto LABEL_689;
        case 59706:
          v2 = @"Stop";
          goto LABEL_689;
        case 59707:
          v2 = @"Up Chevron Arrow";
          goto LABEL_689;
        case 59708:
          v2 = @"Upload Arrow";
          goto LABEL_689;
        case 59711:
          v2 = @"Clipboard glyph";
          goto LABEL_689;
        case 59712:
          v2 = @"Clock";
          goto LABEL_689;
        case 59713:
          v2 = @"Clothes Hanger";
          goto LABEL_689;
        case 59714:
          v2 = @"Cloud";
          goto LABEL_689;
        case 59715:
          v2 = @"Cloud Raining";
          goto LABEL_689;
        case 59716:
          v2 = @"Color Dropper";
          goto LABEL_689;
        case 59717:
          v2 = @"Web Compass";
          goto LABEL_689;
        case 59718:
          v2 = @"Connected Share Dots";
          goto LABEL_689;
        case 59719:
          v2 = @"Credit Card";
          goto LABEL_689;
        case 59720:
          v2 = @"Crop";
          goto LABEL_689;
        case 59721:
          v2 = @"Cube";
          goto LABEL_689;
        case 59722:
          v2 = @"Server";
          goto LABEL_689;
        case 59723:
          v2 = @"Dice";
          goto LABEL_689;
        case 59724:
          v2 = @"Directions Signs";
          goto LABEL_689;
        case 59725:
          v2 = @"Document";
          goto LABEL_689;
        case 59726:
          v2 = @"Document Filled";
          goto LABEL_689;
        case 59728:
          v2 = @"Dog";
          goto LABEL_689;
        case 59729:
          v2 = @"Quote Bubble";
          goto LABEL_689;
        case 59730:
          v2 = @"Drama Masks";
          goto LABEL_689;
        case 59731:
          v2 = @"Evergreen Tree";
          goto LABEL_689;
        case 59732:
          v2 = @"Feed";
          goto LABEL_689;
        case 59733:
          v2 = @"Filmstrip";
          goto LABEL_689;
        case 59734:
          v2 = @"Fire";
          goto LABEL_689;
        case 59735:
          v2 = @"Fish";
          goto LABEL_689;
        case 59736:
          v2 = @"Flag";
          goto LABEL_689;
        case 59737:
          v2 = @"Folder";
          goto LABEL_689;
        case 59738:
          v2 = @"Footprints";
          goto LABEL_689;
        case 59739:
          v2 = @"Four Squares";
          goto LABEL_689;
        case 59740:
          v2 = @"Fruit";
          goto LABEL_689;
        case 59741:
          v2 = @"Fuel Station";
          goto LABEL_689;
        case 59742:
          v2 = @"Game Controller";
          goto LABEL_689;
        case 59743:
          v2 = @"Gears";
          goto LABEL_689;
        case 59744:
          v2 = @"Gift";
          goto LABEL_689;
        case 59745:
          v2 = @"Glasses";
          goto LABEL_689;
        case 59746:
          v2 = @"Graduate Cap";
          goto LABEL_689;
        case 59747:
          v2 = @"Grocery Store";
          goto LABEL_689;
        case 59748:
          v2 = @"Hammer";
          goto LABEL_689;
        case 59749:
          v2 = @"Hammer And Wrench";
          goto LABEL_689;
        case 59750:
          v2 = @"Handbag";
          goto LABEL_689;
        case 59751:
          v2 = @"Hand With Spread Fingers";
          goto LABEL_689;
        case 59752:
          v2 = @"Hard Drive";
          goto LABEL_689;
        case 59753:
          v2 = @"Headphones";
          goto LABEL_689;
        case 59754:
          v2 = @"Heart";
          goto LABEL_689;
        case 59755:
          v2 = @"Home";
          goto LABEL_689;
        case 59756:
          v2 = @"Horse";
          goto LABEL_689;
        case 59757:
          v2 = @"Hourglass";
          goto LABEL_689;
        case 59758:
          v2 = @"Infinity";
          goto LABEL_689;
        case 59759:
          v2 = @"Inhaler";
          goto LABEL_689;
        case 59760:
          v2 = @"Key";
          goto LABEL_689;
        case 59761:
          v2 = @"Laundry Machine";
          goto LABEL_689;
        case 59762:
          v2 = @"Life Preserver";
          goto LABEL_689;
        case 59763:
          v2 = @"Light Bulb";
          goto LABEL_689;
        case 59764:
          v2 = @"Lightning Bolt";
          goto LABEL_689;
        case 59767:
          v2 = @"Loading Indicator";
          goto LABEL_689;
        case 59768:
          v2 = @"Location Arrow";
          goto LABEL_689;
        case 59769:
          v2 = @"Location Pin";
          goto LABEL_689;
        case 59770:
          v2 = @"Lock";
          goto LABEL_689;
        case 59771:
          v2 = @"Magic Wand";
          goto LABEL_689;
        case 59772:
          v2 = @"Magnifying Glass";
          goto LABEL_689;
        case 59773:
          v2 = @"Mail Envelope";
          goto LABEL_689;
        case 59774:
          v2 = @"Mail Envelope Open";
          goto LABEL_689;
        case 59775:
          v2 = @"Man";
          goto LABEL_689;
        case 59776:
          v2 = @"Martini Glass";
          goto LABEL_689;
        case 59777:
          v2 = @"Masquerade Mask";
          goto LABEL_689;
        case 59778:
          v2 = @"Medicine Bottle";
          goto LABEL_689;
        case 59779:
          v2 = @"Message Bubble";
          goto LABEL_689;
        case 59780:
          v2 = @"Microphone";
          goto LABEL_689;
        case 59781:
          v2 = @"Microscope";
          goto LABEL_689;
        case 59782:
          v2 = @"Moon";
          goto LABEL_689;
        case 59783:
          v2 = @"Motorcycle";
          goto LABEL_689;
        case 59784:
          v2 = @"Mountain Picture";
          goto LABEL_689;
        case 59785:
          v2 = @"Mountains";
          goto LABEL_689;
        case 59786:
          v2 = @"Move Arrows";
          goto LABEL_689;
        case 59788:
          v2 = @"Movie Ticket";
          goto LABEL_689;
        case 59789:
          v2 = @"Mug";
          goto LABEL_689;
        case 59790:
          v2 = @"Music Beamed Eighth Notes";
          goto LABEL_689;
        case 59792:
          v2 = @"Stove";
          goto LABEL_689;
        case 59793:
          v2 = @"Paintbrush";
          goto LABEL_689;
        case 59794:
          v2 = @"Paper Clip";
          goto LABEL_689;
        case 59795:
          v2 = @"Parking Symbol";
          goto LABEL_689;
        case 59796:
          v2 = @"Pawprint";
          goto LABEL_689;
        case 59797:
          v2 = @"Peace Sign";
          goto LABEL_689;
        case 59798:
          v2 = @"Pencil";
          goto LABEL_689;
        case 59799:
          v2 = @"People Three Overlapping";
          goto LABEL_689;
        case 59800:
          v2 = @"People Two Overlapping";
          goto LABEL_689;
        case 59801:
          v2 = @"Person";
          goto LABEL_689;
        case 59802:
          v2 = @"Person At Podium";
          goto LABEL_689;
        case 59803:
          v2 = @"Person Dancing";
          goto LABEL_689;
        case 59804:
          v2 = @"Person Giving Speech";
          goto LABEL_689;
        case 59805:
          v2 = @"Person Hiking";
          goto LABEL_689;
        case 59806:
          v2 = @"Person In Wheelchair";
          goto LABEL_689;
        case 59807:
          v2 = @"Person Lifting Weight";
          goto LABEL_689;
        case 59808:
          v2 = @"Person Running";
          goto LABEL_689;
        case 59809:
          v2 = @"Person Skiing";
          goto LABEL_689;
        case 59810:
          v2 = @"Person Snowboarding";
          goto LABEL_689;
        case 59811:
          v2 = @"Person Swimming";
          goto LABEL_689;
        case 59812:
          v2 = @"Person Walking";
          goto LABEL_689;
        case 59813:
          v2 = @"Person Walking With Cane";
          goto LABEL_689;
        case 59814:
          v2 = @"Phone";
          goto LABEL_689;
        case 59815:
          v2 = @"Pills";
          goto LABEL_689;
        case 59816:
          v2 = @"Podcasts";
          goto LABEL_689;
        case 59817:
          v2 = @"Printer";
          goto LABEL_689;
        case 59818:
          v2 = @"Two Prong Puzzle Piece";
          goto LABEL_689;
        case 59819:
          v2 = @"QR Code";
          goto LABEL_689;
        case 59820:
          v2 = @"Recycle";
          goto LABEL_689;
        case 59821:
          v2 = @"Repost Arrows";
          goto LABEL_689;
        case 59822:
          v2 = @"Rocket";
          goto LABEL_689;
        case 59823:
          v2 = @"Sailboat";
          goto LABEL_689;
        case 59824:
          v2 = @"Scissors";
          goto LABEL_689;
        case 59825:
          v2 = @"Screwdriver";
          goto LABEL_689;
        case 59826:
          v2 = @"Network Storage";
          goto LABEL_689;
        case 59827:
          v2 = @"Shirt";
          goto LABEL_689;
        case 59828:
          v2 = @"Shopping Cart";
          goto LABEL_689;
        case 59829:
          v2 = @"Shower";
          goto LABEL_689;
        case 59830:
          v2 = @"Shrink Arrows";
          goto LABEL_689;
        case 59832:
          v2 = @"Shuffle Arrows";
          goto LABEL_689;
        case 59833:
          v2 = @"Sliders";
          goto LABEL_689;
        case 59834:
          v2 = @"Smiley Face";
          goto LABEL_689;
        case 59835:
          v2 = @"Snowflake";
          goto LABEL_689;
        case 59836:
          v2 = @"Soaring Paper Airplane";
          goto LABEL_689;
        case 59837:
          v2 = @"Soccer Ball";
          goto LABEL_689;
        case 59838:
          v2 = @"Sparkling Bell";
          goto LABEL_689;
        case 59839:
          v2 = @"Speaker Wave1";
          goto LABEL_689;
        case 59840:
          v2 = @"Staircase";
          goto LABEL_689;
        case 59841:
          v2 = @"Star";
          goto LABEL_689;
        case 59842:
          v2 = @"Steaming Bowl";
          goto LABEL_689;
        case 59843:
          v2 = @"Stethoscope";
          goto LABEL_689;
        case 59844:
          v2 = @"Stopwatch";
          goto LABEL_689;
        case 59845:
          v2 = @"Sun";
          goto LABEL_689;
        case 59846:
          v2 = @"Sync Arrows";
          goto LABEL_689;
        case 59847:
          v2 = @"Syringe";
          goto LABEL_689;
        case 59848:
          v2 = @"Tag";
          goto LABEL_689;
        case 59849:
          v2 = @"Target";
          goto LABEL_689;
        case 59850:
          v2 = @"Telescope";
          goto LABEL_689;
        case 59851:
          v2 = @"Television";
          goto LABEL_689;
        case 59852:
          v2 = @"Tennis Ball";
          goto LABEL_689;
        case 59853:
          v2 = @"Text Symbol";
          goto LABEL_689;
        case 59854:
          v2 = @"Thermometer";
          goto LABEL_689;
        case 59856:
          v2 = @"Three Overlapping Circles";
          goto LABEL_689;
        case 59857:
          v2 = @"Thumbs Up";
          goto LABEL_689;
        case 59859:
          v2 = @"Trash";
          goto LABEL_689;
        case 59860:
          v2 = @"Trophy";
          goto LABEL_689;
        case 59861:
          v2 = @"Umbrella";
          goto LABEL_689;
        case 59862:
          v2 = @"Unlock";
          goto LABEL_689;
        case 59863:
          v2 = @"Utensils";
          goto LABEL_689;
        case 59864:
          v2 = @"Video Symbol";
          goto LABEL_689;
        case 59865:
          v2 = @"Watch";
          goto LABEL_689;
        case 59866:
          v2 = @"Water Drop";
          goto LABEL_689;
        case 59867:
          v3 = +[WFDevice currentDevice];
          if ([v3 hasCapability:@"WAPI"])
          {
            v4 = @"WLAN (Glyph)";
            v5 = @"WLAN";
          }

          else
          {
            v4 = @"Wi-Fi (Glyph)";
            v5 = @"Wi-Fi";
          }

          goto LABEL_695;
        case 59868:
          v2 = @"Wine Bottle";
          goto LABEL_689;
        case 59870:
          v2 = @"Wrench";
          goto LABEL_689;
        default:
          goto LABEL_690;
      }
  }

LABEL_690:

  return v1;
}

void sub_1B1EA5210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFFileRepresentationClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFFileRepresentation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFFileRepresentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFFileRepresentationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContextualActionRunRequest.m" lineNumber:39 description:{@"Unable to find class %s", "WFFileRepresentation"}];

    __break(1u);
  }
}

void __getWFContentCollectionClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContentCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContentCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFContentCollectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContextualActionRunRequest.m" lineNumber:50 description:{@"Unable to find class %s", "WFContentCollection"}];

    __break(1u);
  }
}

void __getWFContentLocationClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContentLocation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContentLocationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFContentLocationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContextualActionRunRequest.m" lineNumber:44 description:{@"Unable to find class %s", "WFContentLocation"}];

    __break(1u);
  }
}

void ContentKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContentKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContentKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B00658;
    v5 = 0;
    ContentKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContentKitLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContentKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFContextualActionRunRequest.m" lineNumber:16 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ContentKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ContentKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B1EA6304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __LinkServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  LinkServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B1EA923C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPDCPreflightManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PrivacyDisclosureCoreLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PrivacyDisclosureCoreLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B007D8;
    v8 = 0;
    PrivacyDisclosureCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PrivacyDisclosureCoreLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PrivacyDisclosureCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSystemActionRunnerClient.m" lineNumber:42 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PDCPreflightManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPDCPreflightManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSystemActionRunnerClient.m" lineNumber:43 description:{@"Unable to find class %s", "PDCPreflightManager"}];

LABEL_10:
    __break(1u);
  }

  getPDCPreflightManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getFBSOpenApplicationServiceClass_block_invoke(uint64_t a1)
{
  FrontBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FBSOpenApplicationService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFBSOpenApplicationServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFBSOpenApplicationServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSystemActionRunnerClient.m" lineNumber:27 description:{@"Unable to find class %s", "FBSOpenApplicationService"}];

    __break(1u);
  }
}

void *__getSBSOpenApplicationLaunchOriginActionButtonSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B00808;
    v7 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFSystemActionRunnerClient.m" lineNumber:31 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "SBSOpenApplicationLaunchOriginActionButton");
  *(*(a1[4] + 8) + 24) = result;
  getSBSOpenApplicationLaunchOriginActionButtonSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

void *__getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyLaunchOrigin");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *FrontBoardServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B007F0;
    v6 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FrontBoardServicesLibraryCore_frameworkLibrary;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FrontBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFSystemActionRunnerClient.m" lineNumber:26 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void __getFBSOpenApplicationOptionsClass_block_invoke(uint64_t a1)
{
  FrontBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FBSOpenApplicationOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFBSOpenApplicationOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFBSOpenApplicationOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSystemActionRunnerClient.m" lineNumber:28 description:{@"Unable to find class %s", "FBSOpenApplicationOptions"}];

    __break(1u);
  }
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __PrivacyDisclosureCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PrivacyDisclosureCoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class initUIImageSymbolConfiguration()
{
  if (UIKitLibrary_sOnce_4891 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_4891, &__block_literal_global_76);
  }

  result = objc_getClass("UIImageSymbolConfiguration");
  classUIImageSymbolConfiguration = result;
  getUIImageSymbolConfigurationClass = UIImageSymbolConfigurationFunction;
  return result;
}

void *__UIKitLibrary_block_invoke_4894()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_4896 = result;
  return result;
}

uint64_t WFWorkflowPaletteColorForLNShortcutTileColor(uint64_t result)
{
  if ((result - 1) >= 0xE)
  {
    return 0;
  }

  return result;
}

void sub_1B1EAB978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFContentCollectionClass_block_invoke_5220(uint64_t a1)
{
  ContentKitLibrary_5221();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContentCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContentCollectionClass_softClass_5219 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFContentCollectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFConfiguratorRunRequest.m" lineNumber:27 description:{@"Unable to find class %s", "WFContentCollection"}];

    __break(1u);
  }
}

void ContentKitLibrary_5221()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContentKitLibraryCore_frameworkLibrary_5231)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContentKitLibraryCore_block_invoke_5232;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B008B8;
    v5 = 0;
    ContentKitLibraryCore_frameworkLibrary_5231 = _sl_dlopen();
  }

  if (!ContentKitLibraryCore_frameworkLibrary_5231)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void * _Nonnull ContentKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFConfiguratorRunRequest.m" lineNumber:26 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ContentKitLibraryCore_block_invoke_5232(uint64_t a1)
{
  result = _sl_dlopen();
  ContentKitLibraryCore_frameworkLibrary_5231 = result;
  return result;
}

void sub_1B1EABD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFContentItemClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary_5221();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFConfiguratorRunRequest.m" lineNumber:28 description:{@"Unable to find class %s", "WFContentItem"}];

    __break(1u);
  }
}

void sub_1B1EAF300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5472(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__getCGImageDestinationCreateWithDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "CGImageDestinationCreateWithData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageDestinationCreateWithDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ImageIOLibrary_5544()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ImageIOLibraryCore_frameworkLibrary_5562)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ImageIOLibraryCore_block_invoke_5563;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B00AA8;
    v6 = 0;
    ImageIOLibraryCore_frameworkLibrary_5562 = _sl_dlopen();
  }

  v0 = ImageIOLibraryCore_frameworkLibrary_5562;
  if (!ImageIOLibraryCore_frameworkLibrary_5562)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ImageIOLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFImage+Representations.m" lineNumber:18 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getkCGImagePropertyPNGCompressionFilterSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "kCGImagePropertyPNGCompressionFilter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyPNGCompressionFilterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyPNGDictionarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "kCGImagePropertyPNGDictionary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyPNGDictionarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyPNGBandCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "kCGImagePropertyPNGBandCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyPNGBandCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyDPIWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "kCGImagePropertyDPIWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyDPIWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyDPIHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "kCGImagePropertyDPIHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyDPIHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageDestinationAddImageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "CGImageDestinationAddImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageDestinationAddImageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageDestinationFinalizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "CGImageDestinationFinalize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageDestinationFinalizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ImageIOLibraryCore_block_invoke_5563(uint64_t a1)
{
  result = _sl_dlopen();
  ImageIOLibraryCore_frameworkLibrary_5562 = result;
  return result;
}

void sub_1B1EB087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5659(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1EB0C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1EB1AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initATXClient()
{
  if (AppPredictionClientLibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionClientLibrary_sOnce, &__block_literal_global_171);
  }

  result = objc_getClass("ATXClient");
  classATXClient = result;
  getATXClientClass = ATXClientFunction;
  return result;
}

void *__AppPredictionClientLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppPredictionClient.framework/AppPredictionClient", 2);
  AppPredictionClientLibrary_sLib = result;
  return result;
}

void sub_1B1EB4024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getISImageClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISImage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISImageClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFImage+Icons.m" lineNumber:25 description:{@"Unable to find class %s", "ISImage"}];

    __break(1u);
  }
}

id getISIconClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getISIconClass_softClass;
  v7 = getISIconClass_softClass;
  if (!getISIconClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getISIconClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getISIconClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1EB41D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFImageForIconAndFormat(void *a1, uint64_t a2)
{
  v3 = a1;
  v5 = WFISImageDescriptorNameFromWFImageApplicationIconFormat(a2, v4);
  v6 = [getISImageDescriptorClass() imageDescriptorNamed:v5];
  [v6 setAppearance:0];
  v7 = WFImageForIconAndDescriptor(v3, v6);

  return v7;
}

void WFISImageDescriptorNameFromWFImageApplicationIconFormat(uint64_t a1, id a2)
{
  switch(a1)
  {
    case 2:
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v2 = getkISImageDescriptorHomeScreenSymbolLoc_ptr;
      v16 = getkISImageDescriptorHomeScreenSymbolLoc_ptr;
      if (!getkISImageDescriptorHomeScreenSymbolLoc_ptr)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __getkISImageDescriptorHomeScreenSymbolLoc_block_invoke;
        v12 = &unk_1E7B02C60;
        v7 = IconServicesLibrary();
        v14[3] = dlsym(v7, "kISImageDescriptorHomeScreen");
        getkISImageDescriptorHomeScreenSymbolLoc_ptr = v14[3];
        v2 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (!v2)
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ISImageDescriptorName getkISImageDescriptorHomeScreen(void)"];
        [v4 handleFailureInFunction:v5 file:@"WFImage+Icons.m" lineNumber:29 description:{@"%s", dlerror(), v9, v10, v11, v12}];
        goto LABEL_20;
      }

LABEL_15:
      a2 = *v2;
      break;
    case 1:
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v2 = getkISImageDescriptorNotificationSymbolLoc_ptr;
      v16 = getkISImageDescriptorNotificationSymbolLoc_ptr;
      if (!getkISImageDescriptorNotificationSymbolLoc_ptr)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __getkISImageDescriptorNotificationSymbolLoc_block_invoke;
        v12 = &unk_1E7B02C60;
        v6 = IconServicesLibrary();
        v14[3] = dlsym(v6, "kISImageDescriptorNotification");
        getkISImageDescriptorNotificationSymbolLoc_ptr = v14[3];
        v2 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (!v2)
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ISImageDescriptorName getkISImageDescriptorNotification(void)"];
        [v4 handleFailureInFunction:v5 file:@"WFImage+Icons.m" lineNumber:28 description:{@"%s", dlerror(), v9, v10, v11, v12}];
        goto LABEL_20;
      }

      goto LABEL_15;
    case 0:
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v2 = getkISImageDescriptorTableUINameSymbolLoc_ptr;
      v16 = getkISImageDescriptorTableUINameSymbolLoc_ptr;
      if (!getkISImageDescriptorTableUINameSymbolLoc_ptr)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __getkISImageDescriptorTableUINameSymbolLoc_block_invoke;
        v12 = &unk_1E7B02C60;
        v3 = IconServicesLibrary();
        v14[3] = dlsym(v3, "kISImageDescriptorTableUIName");
        getkISImageDescriptorTableUINameSymbolLoc_ptr = v14[3];
        v2 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (!v2)
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ISImageDescriptorName getkISImageDescriptorTableUIName(void)"];
        [v4 handleFailureInFunction:v5 file:@"WFImage+Icons.m" lineNumber:27 description:{@"%s", dlerror(), v9, v10, v11, v12}];
LABEL_20:

        __break(1u);
        return;
      }

      goto LABEL_15;
  }

  v8 = a2;
}

void sub_1B1EB45F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getISImageDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getISImageDescriptorClass_softClass;
  v7 = getISImageDescriptorClass_softClass;
  if (!getISImageDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getISImageDescriptorClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getISImageDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1EB46E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFImageForIconAndDescriptor(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 arrayWithObjects:&v13 count:1];
  v7 = WFISImagesForIconAndDescriptors(v5, v6);

  v8 = [v7 firstObject];

  v9 = [v8 CGImage];
  [v8 scale];
  v10 = [WFImage imageWithCGImage:v9 scale:1 orientation:?];

  v11 = [v10 imageWithRenderingMode:1];

  return v11;
}

id WFISImagesForIconAndDescriptors(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 prepareImagesForImageDescriptors:v4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __WFISImagesForIconAndDescriptors_block_invoke;
  v8[3] = &unk_1E7B00D40;
  v9 = v3;
  v5 = v3;
  v6 = [v4 if_compactMap:v8];

  return v6;
}

void __getISImageDescriptorClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISImageDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISImageDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISImageDescriptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFImage+Icons.m" lineNumber:26 description:{@"Unable to find class %s", "ISImageDescriptor"}];

    __break(1u);
  }
}

void *IconServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IconServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B00D08;
    v6 = 0;
    IconServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IconServicesLibraryCore_frameworkLibrary;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IconServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFImage+Icons.m" lineNumber:23 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __IconServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  IconServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkISImageDescriptorTableUINameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorTableUIName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorTableUINameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkISImageDescriptorNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkISImageDescriptorHomeScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorHomeScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorHomeScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getISIconClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISIcon");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISIconClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFImage+Icons.m" lineNumber:24 description:{@"Unable to find class %s", "ISIcon"}];

    __break(1u);
  }
}

void sub_1B1EB507C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose((v17 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalendarUIKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CalendarUIKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __Block_byref_object_copy__5938(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1EB583C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkISImageDescriptorCustomDocumentSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorCustomDocumentSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorCustomDocumentSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkISImageDescriptorBadgedDocumentSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorBadgedDocumentSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorBadgedDocumentSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkISImageDescriptorCustomDocumentScalableSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorCustomDocumentScalableSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorCustomDocumentScalableSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkISImageDescriptorBadgedDocumentScalableSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorBadgedDocumentScalableSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorBadgedDocumentScalableSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id WFImageApplicationIconCache()
{
  if (WFImageApplicationIconCache_onceToken != -1)
  {
    dispatch_once(&WFImageApplicationIconCache_onceToken, &__block_literal_global_90);
  }

  v1 = WFImageApplicationIconCache_cache;

  return v1;
}

uint64_t __WFImageApplicationIconCache_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = WFImageApplicationIconCache_cache;
  WFImageApplicationIconCache_cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id WFStaccatoTintColorForSectionIdentifier(void *a1)
{
  v18[12] = *MEMORY[0x1E69E9840];
  v17[0] = @"SilentMode";
  v16 = a1;
  v15 = [[WFColor alloc] initWithSystemColor:5];
  v18[0] = v15;
  v17[1] = @"Focus";
  v14 = [[WFColor alloc] initWithSystemColor:10];
  v18[1] = v14;
  v17[2] = @"Flashlight";
  v13 = [WFColor colorWithRGBAValue:1937084671];
  v18[2] = v13;
  v17[3] = @"Camera";
  v1 = [[WFColor alloc] initWithSystemColor:6];
  v18[3] = v1;
  v17[4] = @"Translate";
  v2 = [[WFColor alloc] initWithSystemColor:816760831];
  v18[4] = v2;
  v17[5] = @"VoiceMemos";
  v3 = [[WFColor alloc] initWithSystemColor:2];
  v18[5] = v3;
  v17[6] = @"Magnifier";
  v4 = [[WFColor alloc] initWithSystemColor:14];
  v18[6] = v4;
  v17[7] = @"MusicRecognition";
  v5 = [[WFColor alloc] initWithSystemColor:4];
  v18[7] = v5;
  v17[8] = @"Shortcuts";
  v6 = [WFColor colorWithRGBAValue:994537727];
  v18[8] = v6;
  v17[9] = @"Accessibility";
  v7 = [[WFColor alloc] initWithSystemColor:4];
  v18[9] = v7;
  v17[10] = @"Nothing";
  v8 = [[WFColor alloc] initWithWhite:0.0 alpha:0.0];
  v18[10] = v8;
  v17[11] = @"Controls";
  v9 = [[WFColor alloc] initWithRed:0.5018 green:0.5292 blue:0.5813 alpha:1.0];
  v18[11] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:12];

  v11 = [v10 objectForKeyedSubscript:v16];

  return v11;
}

id WFEncodableErrorDictionary(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = WFEncodableErrorObject(v8);
        v10 = [v1 objectForKeyedSubscript:v8];
        v11 = WFEncodableErrorObject(v10);

        if (v9)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          [v2 setObject:v11 forKeyedSubscript:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = [v2 copy];

  return v13;
}

id WFEncodableErrorObject(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (WFEncodableErrorObject_onceToken != -1)
  {
    dispatch_once(&WFEncodableErrorObject_onceToken, &__block_literal_global_6102);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = WFEncodableError(v1);
LABEL_5:
    v3 = v2;
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v1;
    v5 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = WFEncodableErrorObject(v11);
          if (v12)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    v3 = [v5 copy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = WFEncodableErrorDictionary(v1);
      goto LABEL_5;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = WFEncodableErrorObject_encodableClasses;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if (objc_opt_isKindOfClass())
          {
            v3 = v1;

            goto LABEL_29;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v3 = 0;
  }

LABEL_29:

  return v3;
}

void __WFEncodableErrorObject_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];
  v8 = WFAllowedClassesForDecodingNSError();
  v9 = [v8 setByAddingObjectsFromSet:v7];

  v10 = WFEncodableErrorObject_encodableClasses;
  WFEncodableErrorObject_encodableClasses = v9;
}

id getLPLinkMetadataClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLPLinkMetadataClass_softClass;
  v7 = getLPLinkMetadataClass_softClass;
  if (!getLPLinkMetadataClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLPLinkMetadataClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getLPLinkMetadataClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1EB8100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1EB832C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLPImageClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPImage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLPImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPImageClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFItemProviderRequestMetadata.m" lineNumber:24 description:{@"Unable to find class %s", "LPImage"}];

    __break(1u);
  }
}

void LinkPresentationLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __LinkPresentationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B00DD0;
    v5 = 0;
    LinkPresentationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkPresentationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFItemProviderRequestMetadata.m" lineNumber:21 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __LinkPresentationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getUIImageClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __UIKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B00DE8;
    v8 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFItemProviderRequestMetadata.m" lineNumber:20 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIImageClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFItemProviderRequestMetadata.m" lineNumber:22 description:{@"Unable to find class %s", "UIImage"}];

LABEL_10:
    __break(1u);
  }

  getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  return result;
}

void __getLPLinkMetadataClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPLinkMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLPLinkMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPLinkMetadataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFItemProviderRequestMetadata.m" lineNumber:23 description:{@"Unable to find class %s", "LPLinkMetadata"}];

    __break(1u);
  }
}

void sub_1B1EBA0A8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    v18 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "[WFWorkflowOutputRunResult getOutputWithCompletionHandler:]";
      WORD6(buf) = 2112;
      *(&buf + 14) = v17;
      _os_log_impl(&dword_1B1DE3000, v18, OS_LOG_TYPE_FAULT, "%s Exception thrown when decoding output: %@", &buf, 0x16u);
    }

    v19 = [v16 unableToDecodeError];
    (*(v15 + 16))(v15, 0, v19);

    objc_end_catch();
    JUMPOUT(0x1B1EBA074);
  }

  _Unwind_Resume(a1);
}

void sub_1B1EBBF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLNFullyQualifiedActionIdentifierClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary_6889();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNFullyQualifiedActionIdentifier");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNFullyQualifiedActionIdentifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNFullyQualifiedActionIdentifierClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowRunDescriptors.m" lineNumber:27 description:{@"Unable to find class %s", "LNFullyQualifiedActionIdentifier"}];

    __break(1u);
  }
}

void __getLNActionClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary_6889();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowRunDescriptors.m" lineNumber:26 description:{@"Unable to find class %s", "LNAction"}];

    __break(1u);
  }
}

void __getLNActionMetadataClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary_6889();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNActionMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNActionMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNActionMetadataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowRunDescriptors.m" lineNumber:28 description:{@"Unable to find class %s", "LNActionMetadata"}];

    __break(1u);
  }
}

void LinkServicesLibrary_6889()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!LinkServicesLibraryCore_frameworkLibrary_6894)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __LinkServicesLibraryCore_block_invoke_6895;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B00E58;
    v5 = 0;
    LinkServicesLibraryCore_frameworkLibrary_6894 = _sl_dlopen();
  }

  if (!LinkServicesLibraryCore_frameworkLibrary_6894)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFWorkflowRunDescriptors.m" lineNumber:25 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __LinkServicesLibraryCore_block_invoke_6895(uint64_t a1)
{
  result = _sl_dlopen();
  LinkServicesLibraryCore_frameworkLibrary_6894 = result;
  return result;
}

void *__getAnalyticsSendEventLazySymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreAnalyticsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B00EC0;
    v7 = 0;
    CoreAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreAnalyticsLibraryCore_frameworkLibrary;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreAnalyticsLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFLinkActionWorkflowRunnerClient.m" lineNumber:21 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(a1[4] + 8) + 24) = result;
  getAnalyticsSendEventLazySymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreAnalyticsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B1EBE2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreLocationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B00F28;
    v8 = 0;
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFGetDirectionsContextualAction.m" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFGetDirectionsContextualAction.m" lineNumber:18 description:{@"Unable to find class %s", "CLLocation"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B1EBF70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1EC10DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(a10 + 16))(a10, a2, a3, a4, a5, a6, a7, a8);
  (*(v11 + 16))(v11);
  (*(v10 + 16))(v10);
  _Unwind_Resume(a1);
}

double WFWorkflowIconDrawerScaledSizeWithTargetSize(double result, double a2, double a3, double a4, double a5)
{
  if (result == 0.0)
  {
    result = a2 * (a3 / a4);
    if (a5 > 0.0)
    {
      return round(result * a5) / a5;
    }
  }

  return result;
}

void WFCTFontCopyCharacterSet(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getCTFontCopyCharacterSetSymbolLoc_ptr;
  v9 = getCTFontCopyCharacterSetSymbolLoc_ptr;
  if (!getCTFontCopyCharacterSetSymbolLoc_ptr)
  {
    v3 = CoreTextLibrary();
    v7[3] = dlsym(v3, "CTFontCopyCharacterSet");
    getCTFontCopyCharacterSetSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFCharacterSetRef WFCTFontCopyCharacterSet(CTFontRef)"];
    [v4 handleFailureInFunction:v5 file:@"WFWorkflowIconDrawer.m" lineNumber:30 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EC1314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getkCTFontAttributeName()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkCTFontAttributeNameSymbolLoc_ptr;
  v7 = getkCTFontAttributeNameSymbolLoc_ptr;
  if (!getkCTFontAttributeNameSymbolLoc_ptr)
  {
    v1 = CoreTextLibrary();
    v5[3] = dlsym(v1, "kCTFontAttributeName");
    getkCTFontAttributeNameSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCTFontAttributeName(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowIconDrawer.m" lineNumber:35 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EC1470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFCTFramesetterCreateWithAttributedString(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getCTFramesetterCreateWithAttributedStringSymbolLoc_ptr;
  v9 = getCTFramesetterCreateWithAttributedStringSymbolLoc_ptr;
  if (!getCTFramesetterCreateWithAttributedStringSymbolLoc_ptr)
  {
    v3 = CoreTextLibrary();
    v7[3] = dlsym(v3, "CTFramesetterCreateWithAttributedString");
    getCTFramesetterCreateWithAttributedStringSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CTFramesetterRef WFCTFramesetterCreateWithAttributedString(CFAttributedStringRef)"];
    [v4 handleFailureInFunction:v5 file:@"WFWorkflowIconDrawer.m" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EC15D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFCTFramesetterSuggestFrameSizeWithConstraints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getCTFramesetterSuggestFrameSizeWithConstraintsSymbolLoc_ptr;
  v13 = getCTFramesetterSuggestFrameSizeWithConstraintsSymbolLoc_ptr;
  if (!getCTFramesetterSuggestFrameSizeWithConstraintsSymbolLoc_ptr)
  {
    v7 = CoreTextLibrary();
    v11[3] = dlsym(v7, "CTFramesetterSuggestFrameSizeWithConstraints");
    getCTFramesetterSuggestFrameSizeWithConstraintsSymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v6)
  {
    (v6)(a1, a2, a3, 0, 0, 1.79769313e308, 1.79769313e308);
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGSize WFCTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef, CFRange, CFDictionaryRef, CGSize, CFRange * _Nullable)"}];
    [v8 handleFailureInFunction:v9 file:@"WFWorkflowIconDrawer.m" lineNumber:34 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EC176C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCTFramesetterSuggestFrameSizeWithConstraintsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFramesetterSuggestFrameSizeWithConstraints");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFramesetterSuggestFrameSizeWithConstraintsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreTextLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreTextLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B00F88;
    v6 = 0;
    CoreTextLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreTextLibraryCore_frameworkLibrary;
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreTextLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFWorkflowIconDrawer.m" lineNumber:28 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreTextLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreTextLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCTFramesetterCreateWithAttributedStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFramesetterCreateWithAttributedString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFramesetterCreateWithAttributedStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCTFontAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTFontAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontCopyCharacterSetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontCopyCharacterSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontCopyCharacterSetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B1EC3018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  (*(a16 + 16))(a16, a2, a3, a4, a5, a6, a7, a8);
  (*(a19 + 16))();
  (*(a27 + 16))();
  (*(a21 + 16))();
  _Unwind_Resume(a1);
}

void WFDrawGlyphForVectorIdentifier(void *a1, void *a2, void *a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v37 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  memset(&v32, 0, sizeof(v32));
  v18 = v15;
  v19 = a1;
  CGContextGetCTM(&v32, [v15 CGContext]);
  v20 = floor(sqrt(v32.c * v32.c + v32.a * v32.a));
  v21 = [v19 coreGlyphsCatalogs];

  v22 = [WFImage glyphNamed:v16 pointSize:6 symbolWeight:v21 scaleFactor:a8 inCatalogs:v20];

  if (v22)
  {
    v23 = [v22 tintedImageWithColor:v17];

    [v23 sizeInPoints];
    v26 = a7 / v24;
    if (a7 / v24 >= a8 / v25)
    {
      v26 = a8 / v25;
    }

    v27 = v24 * v26;
    v28 = v25 * v26;
    v38.origin.x = a5;
    v38.origin.y = a6;
    v38.size.width = a7;
    v38.size.height = a8;
    MidX = CGRectGetMidX(v38);
    v39.origin.x = a5;
    v39.origin.y = a6;
    v39.size.width = a7;
    v39.size.height = a8;
    MidY = CGRectGetMidY(v39);
    v31 = v20;
    [v23 drawInContext:v15 inRect:round((MidX - v27 * 0.5) * v31) / v31, round((MidY - v28 * 0.5) * v31) / v31, round(v27 * v31) / v31, round(v28 * v31) / v31];
  }

  else
  {
    v23 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v34 = "WFDrawGlyphForVectorIdentifier";
      v35 = 2114;
      v36 = v16;
      _os_log_impl(&dword_1B1DE3000, v23, OS_LOG_TYPE_FAULT, "%s vector glyph was unexpectedly nil with identifier: %{public}@", buf, 0x16u);
    }
  }
}

void *__getkCTForegroundColorAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTForegroundColorAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTForegroundColorAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void WFCTFramesetterCreateFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = getCTFramesetterCreateFrameSymbolLoc_ptr;
  v15 = getCTFramesetterCreateFrameSymbolLoc_ptr;
  if (!getCTFramesetterCreateFrameSymbolLoc_ptr)
  {
    v9 = CoreTextLibrary();
    v13[3] = dlsym(v9, "CTFramesetterCreateFrame");
    getCTFramesetterCreateFrameSymbolLoc_ptr = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (v8)
  {
    v8(a1, a2, a3, a4, 0);
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CTFrameRef WFCTFramesetterCreateFrame(CTFramesetterRef, CFRange, CGPathRef, CFDictionaryRef)"}];
    [v10 handleFailureInFunction:v11 file:@"WFWorkflowIconDrawer.m" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EC35F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFCTFrameDraw(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getCTFrameDrawSymbolLoc_ptr;
  v11 = getCTFrameDrawSymbolLoc_ptr;
  if (!getCTFrameDrawSymbolLoc_ptr)
  {
    v5 = CoreTextLibrary();
    v9[3] = dlsym(v5, "CTFrameDraw");
    getCTFrameDrawSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFCTFrameDraw(CTFrameRef, CGContextRef)"}];
    [v6 handleFailureInFunction:v7 file:@"WFWorkflowIconDrawer.m" lineNumber:31 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EC3764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCTFrameDrawSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFrameDraw");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFrameDrawSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFramesetterCreateFrameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFramesetterCreateFrame");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFramesetterCreateFrameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id WFStaticContextualActionDefinitionsForSurface(unint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  if (a1 == 2)
  {
    v4 = 0;
    goto LABEL_34;
  }

  if (a1 != 3)
  {
    v2 = objc_opt_new();
    if (a1 > 1)
    {
      if (a1 != 9)
      {
LABEL_32:
        v3 = [(WFTakeScreenshotContextualAction *)v2 copy];
        goto LABEL_33;
      }

      v45 = [[WFToggleSettingContextualAction alloc] initWithSetting:1 operation:0];
      v46 = [[WFToggleSettingContextualAction alloc] initWithSetting:2 operation:0];
      v44 = objc_opt_new();
      v67 = v45;
      v68 = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:2];
      [(WFContextualAction *)v44 addObjectsFromArray:v47];

      v48 = +[WFDevice currentDevice];
      if ([v48 hasCapability:@"AlwaysOnDisplay"])
      {
        v49 = [[WFToggleSettingContextualAction alloc] initWithSetting:3 operation:0 unconfigured:1];
        [(WFContextualAction *)v44 addObject:v49];
      }

      if (([v48 hasCapability:@"HardwareRingerSwitch"] & 1) == 0)
      {
        v50 = [[WFToggleSettingContextualAction alloc] initWithSetting:9 operation:0];
        [(WFContextualAction *)v44 addObject:v50];
      }

      [(WFTakeScreenshotContextualAction *)v2 addObjectsFromArray:v44];
    }

    else
    {
      v5 = a1 != 1;
      if (a1 == 1)
      {
        v6 = @"is.workflow.actions.image.rotate.right";
      }

      else
      {
        v6 = @"APPEXTENSION-com.apple.finder.RotateQuickAction";
      }

      if (a1 == 1)
      {
        v7 = @"is.workflow.actions.image.rotate.left";
      }

      else
      {
        v7 = @"APPEXTENSION-com.apple.finder.RotateQuickAction";
      }

      v8 = WFRotateImageContextualAction(v7, 1, v5);
      v65[0] = v8;
      v9 = WFRotateImageContextualAction(v6, 0, v5);
      v65[1] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
      [(WFTakeScreenshotContextualAction *)v2 addObjectsFromArray:v10];

      if (a1 == 1)
      {
        v11 = @"pdf.doc";
      }

      else
      {
        v11 = @"doc";
      }

      if (a1 == 1)
      {
        v12 = @"is.workflow.actions.makepdf";
      }

      else
      {
        v12 = @"APPEXTENSION-com.apple.finder.CreatePDFQuickAction";
      }

      v13 = *MEMORY[0x1E6982E30];
      v60 = *MEMORY[0x1E6982F10];
      v14 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6982E30], 0}];
      v15 = MEMORY[0x1E696AE18];
      v16 = [v60 identifier];
      v17 = [v13 identifier];
      v18 = [v15 predicateWithFormat:@"SUBQUERY (SELF, $file, $file.type.identifier UTI-CONFORMS-TO %@).@count > 1 OR SUBQUERY (SELF, $file, $file.type.identifier UTI-CONFORMS-TO %@).@count >= 1", v16, v17];

      v19 = [WFContextualActionFilteringBehavior filteringWithMatchingTypes:v14 predicate:v18];
      v20 = WFLocalizedString(@"Create PDF");
      v21 = [WFContextualAction alloc];
      v22 = [WFContextualActionIcon iconWithSystemName:v11];
      LOBYTE(v57) = 0;
      v23 = [(WFContextualAction *)v21 initWithIdentifier:v12 wfActionIdentifier:@"is.workflow.actions.makepdf" type:0 correspondingSystemActionType:5 associatedAppBundleIdentifier:@"com.apple.DocumentsApp" resultFileOperation:1 alternate:v57 filteringBehavior:v19 parameters:MEMORY[0x1E695E0F0] displayString:v20 title:v20 subtitle:0 icon:v22];

      [(WFTakeScreenshotContextualAction *)v2 addObject:v23];
      v24 = objc_alloc_init(WFFinderConvertImageContextualAction);
      [(WFTakeScreenshotContextualAction *)v2 addObject:v24];

      v25 = _os_feature_enabled_impl();
      v61 = 0;
      v62 = &v61;
      v63 = 0x2050000000;
      v26 = getVKCRemoveBackgroundRequestHandlerClass_softClass;
      v64 = getVKCRemoveBackgroundRequestHandlerClass_softClass;
      if (!getVKCRemoveBackgroundRequestHandlerClass_softClass)
      {
        v67 = MEMORY[0x1E69E9820];
        v68 = 3221225472;
        v69 = __getVKCRemoveBackgroundRequestHandlerClass_block_invoke;
        v70 = &unk_1E7B02C60;
        v71 = &v61;
        __getVKCRemoveBackgroundRequestHandlerClass_block_invoke(&v67);
        v26 = v62[3];
      }

      v27 = v26;
      _Block_object_dispose(&v61, 8);
      if ((v25 & [v26 isSupported]) == 1)
      {
        v28 = WFLocalizedString(@"Remove Background");
        v29 = [WFContextualAction alloc];
        v30 = [MEMORY[0x1E695DFD8] setWithObject:v13];
        v31 = [WFContextualActionFilteringBehavior filteringWithMatchingTypes:v30 predicate:0];
        v32 = [WFContextualActionIcon iconWithSystemName:@"circle.rectangle.filled.pattern.diagonalline"];
        LOBYTE(v58) = 0;
        v33 = [(WFContextualAction *)v29 initWithIdentifier:@"is.workflow.actions.image.removebackground" wfActionIdentifier:@"is.workflow.actions.image.removebackground" type:0 correspondingSystemActionType:9 associatedAppBundleIdentifier:@"com.apple.mobileslideshow" resultFileOperation:1 alternate:v58 filteringBehavior:v31 parameters:0 displayString:v28 title:v28 subtitle:0 icon:v32];

        [(WFTakeScreenshotContextualAction *)v2 addObject:v33];
      }

      if (a1 == 1)
      {
        v51 = [MEMORY[0x1E695DFD8] setWithObject:v60];
        v52 = [WFContextualActionFilteringBehavior filteringWithMatchingTypes:v51 predicate:0];

        v53 = WFLocalizedString(@"Optimize File Size");
        v54 = [WFContextualAction alloc];
        v55 = [WFContextualActionIcon iconWithSystemName:@"doc.richtext"];
        LOBYTE(v58) = 0;
        v44 = [(WFContextualAction *)v54 initWithIdentifier:@"is.workflow.actions.compresspdf" wfActionIdentifier:@"is.workflow.actions.compresspdf" type:0 correspondingSystemActionType:0 associatedAppBundleIdentifier:@"com.apple.DocumentsApp" resultFileOperation:1 alternate:v58 filteringBehavior:v52 parameters:0 displayString:v53 title:v53 subtitle:0 icon:v55];

        [(WFTakeScreenshotContextualAction *)v2 addObject:v44];
      }

      else
      {
        v34 = WFLocalizedString(@"Trim");
        v35 = WFLocalizedString(@"Markup");
        v36 = [WFContextualAction alloc];
        v37 = +[WFContextualActionFilteringBehavior matchAllFiles];
        v38 = [WFContextualActionIcon iconWithSystemName:@"timeline.selection"];
        LOBYTE(v58) = 0;
        v39 = [(WFContextualAction *)v36 initWithIdentifier:@"APPEXTENSION-com.apple.finder.TrimQuickAction" wfActionIdentifier:0 type:0 correspondingSystemActionType:4 associatedAppBundleIdentifier:@"com.apple.finder" resultFileOperation:0 alternate:v58 filteringBehavior:v37 parameters:0 displayString:v34 title:v34 subtitle:0 icon:v38];

        v40 = [WFContextualAction alloc];
        v41 = +[WFContextualActionFilteringBehavior matchAllFiles];
        v42 = [WFContextualActionIcon iconWithSystemName:@"pencil.tip.crop.circle"];
        LOBYTE(v59) = 0;
        v43 = [(WFContextualAction *)v40 initWithIdentifier:@"APPEXTENSION-com.apple.finder.MarkupQuickAction" wfActionIdentifier:0 type:0 correspondingSystemActionType:3 associatedAppBundleIdentifier:@"com.apple.finder" resultFileOperation:0 alternate:v59 filteringBehavior:v41 parameters:0 displayString:v35 title:v35 subtitle:0 icon:v42];

        v67 = v39;
        v68 = v43;
        v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:2];

        [(WFTakeScreenshotContextualAction *)v2 addObjectsFromArray:v44];
      }
    }

    goto LABEL_32;
  }

  v2 = objc_alloc_init(WFTakeScreenshotContextualAction);
  v66 = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
LABEL_33:
  v4 = v3;

LABEL_34:

  return v4;
}

void sub_1B1EC4A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

WFContextualAction *WFRotateImageContextualAction(void *a1, int a2, char a3)
{
  v39[9] = *MEMORY[0x1E69E9840];
  v37 = a1;
  if (!v37)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"WFContextualAction * _Nonnull WFRotateImageContextualAction(NSString * _Nonnull __strong, BOOL, BOOL)"}];
    [v32 handleFailureInFunction:v33 file:@"WFStaticContextualActionDefinitions.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = *MEMORY[0x1E6982E58];
  v39[0] = *MEMORY[0x1E6982F28];
  v39[1] = v6;
  v39[2] = *MEMORY[0x1E6983008];
  v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.adobe.photoshop-image"];
  v8 = *MEMORY[0x1E6982E00];
  v39[3] = v7;
  v39[4] = v8;
  v9 = *MEMORY[0x1E6982EC8];
  v39[5] = *MEMORY[0x1E6982F80];
  v39[6] = v9;
  v10 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.m4v-video"];
  v39[7] = v10;
  v11 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"public.3gpp"];
  v39[8] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:9];
  v13 = [v5 setWithArray:v12];
  v36 = v13;

  if (a2)
  {
    v14 = @"Left";
  }

  else
  {
    v14 = @"Right";
  }

  if (a2)
  {
    v15 = @"Rotate Left";
  }

  else
  {
    v15 = @"Rotate Right";
  }

  if (a2)
  {
    v16 = @"rotate.left";
  }

  else
  {
    v16 = @"rotate.right";
  }

  if (a2)
  {
    v17 = 270;
  }

  else
  {
    v17 = 90;
  }

  v18 = 1;
  if (!a2)
  {
    v18 = 2;
  }

  v35 = v18;
  v19 = WFLocalizedString(v14);
  v20 = WFLocalizedString(v15);
  v21 = a3 & ~a2;
  v22 = [WFContextualActionFilteringBehavior filteringWithMatchingTypes:v13 predicate:0];
  v23 = [WFContextualAction alloc];
  v24 = [WFContextualActionParameter alloc];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
  v26 = [(WFContextualActionParameter *)v24 initWithType:@"WFNumberContentItem" displayString:v19 wfParameterKey:@"WFImageRotateAmount" wfSerializedRepresentation:v25];
  v38 = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v28 = WFLocalizedStringWithKey(@"Rotate Image (Contextual Action)", @"Rotate Image");
  v29 = [WFContextualActionIcon iconWithSystemName:v16];
  LOBYTE(v34) = v21;
  v30 = [(WFContextualAction *)v23 initWithIdentifier:v37 wfActionIdentifier:@"is.workflow.actions.image.rotate" type:0 correspondingSystemActionType:v35 associatedAppBundleIdentifier:@"com.apple.mobileslideshow" resultFileOperation:0 alternate:v34 filteringBehavior:v22 parameters:v27 displayString:v20 title:v28 subtitle:v20 icon:v29];

  return v30;
}

Class __getVKCRemoveBackgroundRequestHandlerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!VisionKitCoreLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __VisionKitCoreLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B00FA0;
    v8 = 0;
    VisionKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VisionKitCoreLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *VisionKitCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFStaticContextualActionDefinitions.m" lineNumber:24 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("VKCRemoveBackgroundRequestHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVKCRemoveBackgroundRequestHandlerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFStaticContextualActionDefinitions.m" lineNumber:25 description:{@"Unable to find class %s", "VKCRemoveBackgroundRequestHandler"}];

LABEL_10:
    __break(1u);
  }

  getVKCRemoveBackgroundRequestHandlerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionKitCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  VisionKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void WFBiomeLibrary_8552()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getBiomeLibrarySymbolLoc_ptr_8553;
  v9 = getBiomeLibrarySymbolLoc_ptr_8553;
  if (!getBiomeLibrarySymbolLoc_ptr_8553)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getBiomeLibrarySymbolLoc_block_invoke_8554;
    v5[3] = &unk_1E7B02C60;
    v5[4] = &v6;
    __getBiomeLibrarySymbolLoc_block_invoke_8554(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v1 = v0();

    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<BMRootLibrary> WFBiomeLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFToggleAccessibilityContextualAction.m" lineNumber:16 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EC8640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBiomeLibrarySymbolLoc_block_invoke_8554(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_8556)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __BiomeLibraryLibraryCore_block_invoke_8557;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B00FE8;
    v7 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary_8556 = _sl_dlopen();
  }

  v2 = BiomeLibraryLibraryCore_frameworkLibrary_8556;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_8556)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeLibraryLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFToggleAccessibilityContextualAction.m" lineNumber:15 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BiomeLibrary");
  *(*(a1[4] + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr_8553 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke_8557(uint64_t a1)
{
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary_8556 = result;
  return result;
}

WFToggleAccessibilityContextualAction *__WFToggleAccessibilityContextualActions_block_invoke(uint64_t a1, void *a2)
{
  v2 = -[WFToggleAccessibilityContextualAction initWithSetting:]([WFToggleAccessibilityContextualAction alloc], "initWithSetting:", [a2 unsignedIntegerValue]);

  return v2;
}

id WFLocalizedStringWithKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = WFCurrentBundle();
  v6 = [v5 localizedStringForKey:v4 value:v3 table:0];

  return v6;
}

void sub_1B1EC9714(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B1ECAB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationClass_block_invoke_9046(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_9047)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreLocationLibraryCore_block_invoke_9048;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B01208;
    v8 = 0;
    CoreLocationLibraryCore_frameworkLibrary_9047 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_9047)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFRequestRideContextualAction.m" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFRequestRideContextualAction.m" lineNumber:18 description:{@"Unable to find class %s", "CLLocation"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationClass_softClass_9045 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_9048(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_9047 = result;
  return result;
}

uint64_t __UIFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UIFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

id getFPSandboxingURLWrapperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFPSandboxingURLWrapperClass_softClass;
  v7 = getFPSandboxingURLWrapperClass_softClass;
  if (!getFPSandboxingURLWrapperClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFPSandboxingURLWrapperClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getFPSandboxingURLWrapperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1ECC928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFPSandboxingURLWrapperClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __FileProviderLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B012A8;
    v8 = 0;
    FileProviderLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FileProviderLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFContextualActionFile.m" lineNumber:19 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("FPSandboxingURLWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFPSandboxingURLWrapperClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFContextualActionFile.m" lineNumber:20 description:{@"Unable to find class %s", "FPSandboxingURLWrapper"}];

LABEL_10:
    __break(1u);
  }

  getFPSandboxingURLWrapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FileProviderLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FileProviderLibraryCore_frameworkLibrary = result;
  return result;
}

id WFUIImageWithAnimatedGIFDataAndOptions(void *a1, double a2)
{
  v3 = a1;
  if (!v3)
  {
    v41 = 0;
    goto LABEL_44;
  }

  v46 = [MEMORY[0x1E695DF90] dictionary];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v4 = getkCGImageSourceShouldCacheSymbolLoc_ptr;
  v50 = getkCGImageSourceShouldCacheSymbolLoc_ptr;
  if (!getkCGImageSourceShouldCacheSymbolLoc_ptr)
  {
    v5 = ImageIOLibrary_9720();
    v48[3] = dlsym(v5, "kCGImageSourceShouldCache");
    getkCGImageSourceShouldCacheSymbolLoc_ptr = v48[3];
    v4 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v4)
  {
    goto LABEL_53;
  }

  [v46 setObject:MEMORY[0x1E695E118] forKey:*v4];
  v6 = [*MEMORY[0x1E6982DE8] identifier];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v7 = getkCGImageSourceTypeIdentifierHintSymbolLoc_ptr;
  v50 = getkCGImageSourceTypeIdentifierHintSymbolLoc_ptr;
  if (!getkCGImageSourceTypeIdentifierHintSymbolLoc_ptr)
  {
    v8 = ImageIOLibrary_9720();
    v48[3] = dlsym(v8, "kCGImageSourceTypeIdentifierHint");
    getkCGImageSourceTypeIdentifierHintSymbolLoc_ptr = v48[3];
    v7 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v7)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImageSourceTypeIdentifierHint(void)"];
    [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:38 description:{@"%s", dlerror()}];
    goto LABEL_52;
  }

  [v46 setObject:v6 forKey:*v7];

  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v9 = getCGImageSourceCreateWithDataSymbolLoc_ptr_9725;
  v50 = getCGImageSourceCreateWithDataSymbolLoc_ptr_9725;
  if (!getCGImageSourceCreateWithDataSymbolLoc_ptr_9725)
  {
    v10 = ImageIOLibrary_9720();
    v48[3] = dlsym(v10, "CGImageSourceCreateWithData");
    getCGImageSourceCreateWithDataSymbolLoc_ptr_9725 = v48[3];
    v9 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v9)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageSourceRef  _Nullable soft_CGImageSourceCreateWithData(CFDataRef _Nonnull, CFDictionaryRef _Nullable)"}];
    [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:27 description:{@"%s", dlerror()}];
    goto LABEL_52;
  }

  v11 = v9(v3, v46);
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v12 = getCGImageSourceGetCountSymbolLoc_ptr_9729;
  v50 = getCGImageSourceGetCountSymbolLoc_ptr_9729;
  if (!getCGImageSourceGetCountSymbolLoc_ptr_9729)
  {
    v13 = ImageIOLibrary_9720();
    v48[3] = dlsym(v13, "CGImageSourceGetCount");
    getCGImageSourceGetCountSymbolLoc_ptr_9729 = v48[3];
    v12 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v12)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t soft_CGImageSourceGetCount(CGImageSourceRef _Nonnull)"];
    [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:31 description:{@"%s", dlerror()}];
    while (1)
    {
LABEL_52:

      __break(1u);
LABEL_53:
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImageSourceShouldCache(void)"];
      [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:37 description:{@"%s", dlerror()}];
    }
  }

  v14 = v12(v11);
  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14];
  if (!v14)
  {
    CFRelease(v11);
    v17 = 0.0;
    goto LABEL_42;
  }

  v45 = v3;
  v16 = 0;
  v17 = 0.0;
  do
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v18 = getCGImageSourceCreateImageAtIndexSymbolLoc_ptr_9733;
    v50 = getCGImageSourceCreateImageAtIndexSymbolLoc_ptr_9733;
    if (!getCGImageSourceCreateImageAtIndexSymbolLoc_ptr_9733)
    {
      v19 = ImageIOLibrary_9720();
      v48[3] = dlsym(v19, "CGImageSourceCreateImageAtIndex");
      getCGImageSourceCreateImageAtIndexSymbolLoc_ptr_9733 = v48[3];
      v18 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v18)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageRef  _Nullable soft_CGImageSourceCreateImageAtIndex(CGImageSourceRef _Nonnull, size_t, CFDictionaryRef _Nullable)"}];
      [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:28 description:{@"%s", dlerror()}];
      goto LABEL_52;
    }

    v20 = v18(v11, v16, v46);
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v21 = getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr_9737;
    v50 = getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr_9737;
    if (!getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr_9737)
    {
      v22 = ImageIOLibrary_9720();
      v48[3] = dlsym(v22, "CGImageSourceCopyPropertiesAtIndex");
      getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr_9737 = v48[3];
      v21 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v21)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFDictionaryRef  _Nullable soft_CGImageSourceCopyPropertiesAtIndex(CGImageSourceRef _Nonnull, size_t, CFDictionaryRef _Nullable)"}];
      [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:30 description:{@"%s", dlerror()}];
      goto LABEL_52;
    }

    v23 = v21(v11, v16, 0);
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v24 = getkCGImagePropertyGIFDictionarySymbolLoc_ptr;
    v50 = getkCGImagePropertyGIFDictionarySymbolLoc_ptr;
    if (!getkCGImagePropertyGIFDictionarySymbolLoc_ptr)
    {
      v25 = ImageIOLibrary_9720();
      v48[3] = dlsym(v25, "kCGImagePropertyGIFDictionary");
      getkCGImagePropertyGIFDictionarySymbolLoc_ptr = v48[3];
      v24 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v24)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyGIFDictionary(void)"];
      [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:36 description:{@"%s", dlerror()}];
      goto LABEL_52;
    }

    v26 = [v23 objectForKey:*v24];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v27 = getkCGImagePropertyGIFDelayTimeSymbolLoc_ptr;
    v50 = getkCGImagePropertyGIFDelayTimeSymbolLoc_ptr;
    if (!getkCGImagePropertyGIFDelayTimeSymbolLoc_ptr)
    {
      v28 = ImageIOLibrary_9720();
      v48[3] = dlsym(v28, "kCGImagePropertyGIFDelayTime");
      getkCGImagePropertyGIFDelayTimeSymbolLoc_ptr = v48[3];
      v27 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v27)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyGIFDelayTime(void)"];
      [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:35 description:{@"%s", dlerror()}];
      goto LABEL_52;
    }

    v29 = [v26 objectForKey:*v27];
    [v29 doubleValue];
    v31 = v30;

    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v32 = getkCGImagePropertyOrientationSymbolLoc_ptr_9743;
    v50 = getkCGImagePropertyOrientationSymbolLoc_ptr_9743;
    if (!getkCGImagePropertyOrientationSymbolLoc_ptr_9743)
    {
      v33 = ImageIOLibrary_9720();
      v48[3] = dlsym(v33, "kCGImagePropertyOrientation");
      getkCGImagePropertyOrientationSymbolLoc_ptr_9743 = v48[3];
      v32 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v32)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyOrientation(void)"];
      [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:32 description:{@"%s", dlerror()}];
      goto LABEL_52;
    }

    v34 = [v23 objectForKeyedSubscript:*v32];
    v35 = v34;
    if (v34)
    {
      v36 = [v34 integerValue] - 2;
    }

    else
    {
      v36 = -1;
    }

    v37 = objc_alloc(getUIImageClass_9747());
    if (v36 > 6)
    {
      v38 = 0;
    }

    else
    {
      v38 = qword_1B1F36948[v36];
    }

    v17 = v17 + v31;
    v39 = [v37 initWithCGImage:v20 scale:v38 orientation:a2];
    [v15 addObject:v39];

    CGImageRelease(v20);
    ++v16;
  }

  while (v14 != v16);
  CFRelease(v11);
  v3 = v45;
  if (v14 == 1)
  {
    v40 = [v15 firstObject];
    goto LABEL_43;
  }

LABEL_42:
  v40 = [(objc_class *)getUIImageClass_9747() animatedImageWithImages:v15 duration:v17];
LABEL_43:
  v41 = v40;

LABEL_44:

  return v41;
}

void sub_1B1ECE394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCGImageSourceShouldCacheSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "kCGImageSourceShouldCache");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImageSourceShouldCacheSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ImageIOLibrary_9720()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ImageIOLibraryCore_frameworkLibrary_9765)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ImageIOLibraryCore_block_invoke_9766;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B012E0;
    v6 = 0;
    ImageIOLibraryCore_frameworkLibrary_9765 = _sl_dlopen();
  }

  v0 = ImageIOLibraryCore_frameworkLibrary_9765;
  if (!ImageIOLibraryCore_frameworkLibrary_9765)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ImageIOLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFImageHelpers.m" lineNumber:24 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getkCGImageSourceTypeIdentifierHintSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "kCGImageSourceTypeIdentifierHint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImageSourceTypeIdentifierHintSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceCreateWithDataSymbolLoc_block_invoke_9726(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "CGImageSourceCreateWithData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCreateWithDataSymbolLoc_ptr_9725 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceGetCountSymbolLoc_block_invoke_9730(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "CGImageSourceGetCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceGetCountSymbolLoc_ptr_9729 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceCreateImageAtIndexSymbolLoc_block_invoke_9734(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "CGImageSourceCreateImageAtIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCreateImageAtIndexSymbolLoc_ptr_9733 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceCopyPropertiesAtIndexSymbolLoc_block_invoke_9738(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "CGImageSourceCopyPropertiesAtIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr_9737 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyGIFDictionarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "kCGImagePropertyGIFDictionary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyGIFDictionarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyGIFDelayTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "kCGImagePropertyGIFDelayTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyGIFDelayTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyOrientationSymbolLoc_block_invoke_9744(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "kCGImagePropertyOrientation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyOrientationSymbolLoc_ptr_9743 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class initUIImage_9749()
{
  if (UIKitLibrary_sOnce_9750 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_9750, &__block_literal_global_9751);
  }

  result = objc_getClass("UIImage");
  classUIImage_9753 = result;
  getUIImageClass_9747 = UIImageFunction_9755;
  return result;
}

void *__UIKitLibrary_block_invoke_9758()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_9760 = result;
  return result;
}

uint64_t __ImageIOLibraryCore_block_invoke_9766(uint64_t a1)
{
  result = _sl_dlopen();
  ImageIOLibraryCore_frameworkLibrary_9765 = result;
  return result;
}

void sub_1B1ECECD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *CoreTelephonyLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreTelephonyLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B01300;
    v6 = 0;
    CoreTelephonyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreTelephonyLibraryCore_frameworkLibrary;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreTelephonyLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFCellularSettings.m" lineNumber:15 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

id WFNSErrorFromCTError(unint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 2)
    {
      v2 = MEMORY[0x1E696ABC0];
      v3 = MEMORY[0x1E696A5A0];
      goto LABEL_6;
    }

    if (a1 == 1)
    {
      v2 = MEMORY[0x1E696ABC0];
      v3 = MEMORY[0x1E696A798];
LABEL_6:
      v4 = [v2 errorWithDomain:*v3 code:a1 >> 32 userInfo:0];
      goto LABEL_9;
    }

    v5 = HIDWORD(a1);
    v6 = MEMORY[0x1E696ABC0];
    v11[0] = @"CTErrorDomain";
    v7 = [MEMORY[0x1E696AD98] numberWithInt:a1];
    v11[1] = @"CTError";
    v12[0] = v7;
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v5];
    v12[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v4 = [v6 errorWithDomain:@"WFCellularSettingsErrorDomain" code:0 userInfo:v9];
  }

  else
  {
    v4 = 0;
  }

LABEL_9:

  return v4;
}

uint64_t __CoreTelephonyLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreTelephonyLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B1ECF1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double CGFloatCeilWithScale(double result, double a2)
{
  if (a2 > 0.0)
  {
    return ceil(result * a2) / a2;
  }

  return result;
}

double CGFloatRoundWithScale(double result, double a2)
{
  if (a2 > 0.0)
  {
    return round(result * a2) / a2;
  }

  return result;
}

double CGFloatFloorWithScale(double result, double a2)
{
  if (a2 > 0.0)
  {
    return floor(result * a2) / a2;
  }

  return result;
}

void sub_1B1ED108C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1ED3D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10583(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *WFContextualActionDescribeSurface(unint64_t a1)
{
  if (a1 > 0x12)
  {
    return 0;
  }

  else
  {
    return off_1E7B01520[a1];
  }
}

BOOL WFCanAccessUserDefaultsDomain(void *a1, int a2)
{
  getpid();
  v6 = [@"com.apple.siri.shortcuts" UTF8String];
  v3 = sandbox_check();
  v4 = v3;
  if (a1 && v3 == -1)
  {
    *a1 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:{0, v6}];
  }

  return v4 == 0;
}

void *__UIKitLibrary_block_invoke_12015()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_12017 = result;
  return result;
}

void sub_1B1EDBCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCTFontCreateWithGraphicsFontSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreTextLibraryCore_frameworkLibrary_12284)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreTextLibraryCore_block_invoke_12285;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B01838;
    v7 = 0;
    CoreTextLibraryCore_frameworkLibrary_12284 = _sl_dlopen();
  }

  v2 = CoreTextLibraryCore_frameworkLibrary_12284;
  if (!CoreTextLibraryCore_frameworkLibrary_12284)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreTextLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFWorkflowIconDrawerContext.m" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CTFontCreateWithGraphicsFont");
  *(*(a1[4] + 8) + 24) = result;
  getCTFontCreateWithGraphicsFontSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __CoreTextLibraryCore_block_invoke_12285(uint64_t a1)
{
  result = _sl_dlopen();
  CoreTextLibraryCore_frameworkLibrary_12284 = result;
  return result;
}

void sub_1B1EE23AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13173(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1EE2570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B1EE2DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFContentItemClass_block_invoke_13326(uint64_t a1)
{
  ContentKitLibrary_13348();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContentItemClass_softClass_13325 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentNode.m" lineNumber:57 description:{@"Unable to find class %s", "WFContentItem"}];

    __break(1u);
  }
}

Class __getLPLinkMetadataClass_block_invoke_13329(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary_13332)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __LinkPresentationLibraryCore_block_invoke_13333;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B01A20;
    v8 = 0;
    LinkPresentationLibraryCore_frameworkLibrary_13332 = _sl_dlopen();
  }

  if (!LinkPresentationLibraryCore_frameworkLibrary_13332)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkPresentationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFOnScreenContentNode.m" lineNumber:21 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("LPLinkMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPLinkMetadataClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFOnScreenContentNode.m" lineNumber:22 description:{@"Unable to find class %s", "LPLinkMetadata"}];

LABEL_10:
    __break(1u);
  }

  getLPLinkMetadataClass_softClass_13328 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LinkPresentationLibraryCore_block_invoke_13333(uint64_t a1)
{
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary_13332 = result;
  return result;
}

void ContentKitLibrary_13348()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContentKitLibraryCore_frameworkLibrary_13351)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContentKitLibraryCore_block_invoke_13352;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B01A08;
    v5 = 0;
    ContentKitLibraryCore_frameworkLibrary_13351 = _sl_dlopen();
  }

  if (!ContentKitLibraryCore_frameworkLibrary_13351)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContentKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFOnScreenContentNode.m" lineNumber:25 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ContentKitLibraryCore_block_invoke_13352(uint64_t a1)
{
  result = _sl_dlopen();
  ContentKitLibraryCore_frameworkLibrary_13351 = result;
  return result;
}

void sub_1B1EE36BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFStringContentItemClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary_13348();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFStringContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFStringContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFStringContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentNode.m" lineNumber:58 description:{@"Unable to find class %s", "WFStringContentItem"}];

    __break(1u);
  }
}

void __getWFURLContentItemClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary_13348();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFURLContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFURLContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFURLContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentNode.m" lineNumber:59 description:{@"Unable to find class %s", "WFURLContentItem"}];

    __break(1u);
  }
}

void __getWFContactContentItemClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary_13348();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContactContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContactContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFContactContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentNode.m" lineNumber:60 description:{@"Unable to find class %s", "WFContactContentItem"}];

    __break(1u);
  }
}

void __getWFCNContactClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary_13348();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFCNContact");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFCNContactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFCNContactClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentNode.m" lineNumber:62 description:{@"Unable to find class %s", "WFCNContact"}];

    __break(1u);
  }
}

void __getWFPhotoMediaContentItemClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary_13348();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFPhotoMediaContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFPhotoMediaContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFPhotoMediaContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentNode.m" lineNumber:61 description:{@"Unable to find class %s", "WFPhotoMediaContentItem"}];

    __break(1u);
  }
}

void sub_1B1EE8330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRBSAssertionClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSAssertion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSAssertionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSAssertionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFDispatchSourceTimer.m" lineNumber:16 description:{@"Unable to find class %s", "RBSAssertion"}];

    __break(1u);
  }
}

void __getRBSTargetClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSTarget");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSTargetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSTargetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFDispatchSourceTimer.m" lineNumber:18 description:{@"Unable to find class %s", "RBSTarget"}];

    __break(1u);
  }
}

void __getRBSDomainAttributeClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSDomainAttribute");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSDomainAttributeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSDomainAttributeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFDispatchSourceTimer.m" lineNumber:17 description:{@"Unable to find class %s", "RBSDomainAttribute"}];

    __break(1u);
  }
}

void RunningBoardServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __RunningBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B01CD8;
    v5 = 0;
    RunningBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFDispatchSourceTimer.m" lineNumber:15 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t WFMatchActionTypesWithFileTypes(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL WFMatchActionTypesWithFileTypes(NSSet<UTType *> * _Nonnull __strong, NSArray<UTType *> * _Nullable __strong)"}];
    [v18 handleFailureInFunction:v19 file:@"WFContextualAction.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"actionTypes"}];
  }

  if ([v3 count] && !objc_msgSend(v4, "count"))
  {
    v16 = 0;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      v20 = v4;
      while (1)
      {
        v9 = 0;
LABEL_8:
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = v3;
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (!v12)
        {
          break;
        }

        v13 = v12;
        v14 = *v22;
LABEL_12:
        v15 = 0;
        while (1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([v10 conformsToType:*(*(&v21 + 1) + 8 * v15)])
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v13)
            {
              goto LABEL_12;
            }

            goto LABEL_22;
          }
        }

        if (++v9 != v7)
        {
          goto LABEL_8;
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
        v16 = 1;
        v4 = v20;
        if (!v7)
        {
          goto LABEL_24;
        }
      }

LABEL_22:

      v16 = 0;
      v4 = v20;
    }

    else
    {
      v16 = 1;
    }

LABEL_24:
  }

  return v16;
}

void sub_1B1EEAD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __NanoRegistryLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B01E08;
    v8 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFDevice.m" lineNumber:26 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFDevice.m" lineNumber:27 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

LABEL_10:
    __break(1u);
  }

  getNRPairedDeviceRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NanoRegistryLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B1EEBA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B01DC0;
    v8 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ManagedConfigurationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFDevice.m" lineNumber:47 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMCProfileConnectionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFDevice.m" lineNumber:48 description:{@"Unable to find class %s", "MCProfileConnection"}];

LABEL_10:
    __break(1u);
  }

  getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getVKCRemoveBackgroundRequestHandlerClass_block_invoke_14750(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!VisionKitCoreLibraryCore_frameworkLibrary_14751)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __VisionKitCoreLibraryCore_block_invoke_14752;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B01DD8;
    v8 = 0;
    VisionKitCoreLibraryCore_frameworkLibrary_14751 = _sl_dlopen();
  }

  if (!VisionKitCoreLibraryCore_frameworkLibrary_14751)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *VisionKitCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFDevice.m" lineNumber:54 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("VKCRemoveBackgroundRequestHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVKCRemoveBackgroundRequestHandlerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFDevice.m" lineNumber:55 description:{@"Unable to find class %s", "VKCRemoveBackgroundRequestHandler"}];

LABEL_10:
    __break(1u);
  }

  getVKCRemoveBackgroundRequestHandlerClass_softClass_14749 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCBClientClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCBClientClass_softClass;
  v7 = getCBClientClass_softClass;
  if (!getCBClientClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCBClientClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getCBClientClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1EEBEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCBClientClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!CoreBrightnessLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreBrightnessLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B01DF0;
    v8 = 0;
    CoreBrightnessLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreBrightnessLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreBrightnessLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFDevice.m" lineNumber:62 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CBClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCBClientClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFDevice.m" lineNumber:63 description:{@"Unable to find class %s", "CBClient"}];

LABEL_10:
    __break(1u);
  }

  getCBClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreBrightnessLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreBrightnessLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __VisionKitCoreLibraryCore_block_invoke_14752(uint64_t a1)
{
  result = _sl_dlopen();
  VisionKitCoreLibraryCore_frameworkLibrary_14751 = result;
  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __Block_byref_object_copy__14950(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFEvaluateMathematicalFunction(void *a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSNumber * _Nonnull WFEvaluateMathematicalFunction(NSString * _Nonnull __strong, NSArray<NSNumber *> * _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"function"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSNumber * _Nonnull WFEvaluateMathematicalFunction(NSString * _Nonnull __strong, NSArray<NSNumber *> * _Nonnull __strong)"}];
  [v14 handleFailureInFunction:v15 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"numbers"}];

LABEL_3:
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v5];
  v16[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v9 = [v6 expressionForFunction:v3 arguments:v8];

  v10 = [v9 expressionValueWithObject:0 context:0];

  return v10;
}

void sub_1B1EEE14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMContextualActionParameterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBMContextualActionParameterClass_softClass;
  v7 = getBMContextualActionParameterClass_softClass;
  if (!getBMContextualActionParameterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getBMContextualActionParameterClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getBMContextualActionParameterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1EEE238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBMContextualActionEventClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BMContextualActionEvent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBMContextualActionEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMContextualActionEventClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:26 description:{@"Unable to find class %s", "BMContextualActionEvent"}];

    __break(1u);
  }
}

void __getBMStreamsClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BMStreams");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBMStreamsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMStreamsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:29 description:{@"Unable to find class %s", "BMStreams"}];

    __break(1u);
  }
}

void BiomeStreamsLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __BiomeStreamsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B01F08;
    v5 = 0;
    BiomeStreamsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeStreamsLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:24 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __BiomeStreamsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary = result;
  return result;
}

void __getBMContextualActionParameterClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BMContextualActionParameter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBMContextualActionParameterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMContextualActionParameterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:28 description:{@"Unable to find class %s", "BMContextualActionParameter"}];

    __break(1u);
  }
}

void sub_1B1EEE780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBMContextualActionContentClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BMContextualActionContent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBMContextualActionContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMContextualActionContentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:27 description:{@"Unable to find class %s", "BMContextualActionContent"}];

    __break(1u);
  }
}

id WFLocallyFilterActions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 files];
  v6 = [v5 if_map:&__block_literal_global_105];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __WFLocallyFilterActions_block_invoke_2;
  v14[3] = &unk_1E7B01EE8;
  v15 = v6;
  v7 = v6;
  v8 = [v4 if_objectsPassingTest:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __WFLocallyFilterActions_block_invoke_3;
  v12[3] = &unk_1E7B01EE8;
  v13 = v3;
  v9 = v3;
  v10 = [v8 if_objectsPassingTest:v12];

  return v10;
}

uint64_t __WFLocallyFilterActions_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 filteringBehavior];
  v4 = [v3 matchingTypes];

  if (v4)
  {
    v5 = [v3 matchingTypes];
    v6 = WFMatchActionTypesWithFileTypes(v5, *(a1 + 32));
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __WFLocallyFilterActions_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 filteringBehavior];
  v4 = [v3 inClientPredicate];

  if (v4)
  {
    [v4 allowEvaluation];
    v5 = [*(a1 + 32) files];
    v6 = [v4 evaluateWithObject:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

id __WFLocallyFilterActions_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v2 fileURL];
    v7 = [v6 pathExtension];

    if (!v7 || ([MEMORY[0x1E6982C40] typeWithFilenameExtension:v7], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v5 = *MEMORY[0x1E6982E48];
    }
  }

  return v5;
}

id WFArrayFromChanges(void *a1)
{
  v1 = [a1 if_map:&__block_literal_global_77_15322];
  v2 = [v1 allObjects];

  return v2;
}

id WFChangesFromArray(void *a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v2 = [a1 if_map:&__block_literal_global_15331];
  v3 = [v1 setWithArray:v2];

  return v3;
}

WFDatabaseObjectDescriptor *__WFChangesFromArray_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFDatabaseObjectDescriptor alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

WFINShortcutRunDescriptor *WFWorkflowRunDescriptorForINShortcut(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"WFWorkflowRunDescriptor * _Nonnull WFWorkflowRunDescriptorForINShortcut(INShortcut * _Nonnull __strong)"];
    [v10 handleFailureInFunction:v11 file:@"WFSpotlightResultWorkflowRunnerClient.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"shortcut"}];
  }

  v2 = [v1 intent];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [WFWorkflowDatabaseRunDescriptor alloc];
    v4 = [v2 workflow];
    v5 = [v4 vocabularyIdentifier];
    v6 = [v2 workflow];
    v7 = [v6 spokenPhrase];
    v8 = [(WFWorkflowDatabaseRunDescriptor *)v3 initWithIdentifier:v5 name:v7];
  }

  else
  {

    v8 = [[WFINShortcutRunDescriptor alloc] initWithShortcut:v1];
  }

  return v8;
}

__CFString *WFRunSourceForSpotlightExecutionContext(unint64_t a1)
{
  if (a1 > 0xA)
  {
    v1 = @"unknown";
  }

  else
  {
    v1 = off_1E7AFFFD8[a1];
  }

  v2 = v1;
  if ([(__CFString *)v2 isEqualToString:@"unknown"])
  {
    v3 = @"contextual-action-spotlight-unknown";
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

id WFSpotlightResultRunnableAttributeKey()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableFromData(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = MEMORY[0x1E696ACD0];
    v2 = MEMORY[0x1E695DFD8];
    v3 = a1;
    v4 = [v2 setWithObjects:{objc_opt_class(), 0}];
    v9 = 0;
    v5 = [v1 unarchivedObjectOfClasses:v4 fromData:v3 error:&v9];

    v6 = v9;
    if (!v5)
    {
      v7 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "WFSpotlightResultRunnableFromData";
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_1B1DE3000, v7, OS_LOG_TYPE_ERROR, "%s Cannot unpack data into runnable: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id WFDataFromSpotlightResultRunnable(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSData * _Nullable WFDataFromSpotlightResultRunnable(id<WFSpotlightResultRunnable>  _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [v6 handleFailureInFunction:v7 file:@"WFSpotlightResultWorkflowRunnerClient.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"runnable"}];
  }

  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:a2];

  return v4;
}

id WFSpotlightResultRunnableDisplayOrderKey()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_display_order" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableAccessorySystemImageNameKey()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_accessory_system_image_name" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableIneligibleForTopHit()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_ineligible_for_top_hit" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableAssociatedSettingsPreferenceKey()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_associated_settings_preference" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableIsAppShortcutTopHit()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_is_app_shortcut_top_hit" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableIsAppTopHitExclusive()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_is_app_top_hit_exclusive" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableTopHitBadge()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_top_hit_badge" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableSubtitle()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_subtitle" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableImageDisplayStyle()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_image_display_style" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnablePrimaryPhrase()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_primary_phrase" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableActionIdentifier()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_action_identifier" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableLNPropertyIdentifier()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_lnproperty_identifier" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableTintColorNameIdentifier()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_tint_color_name" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableSettingBiomeStreamIdentifier()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_setting_biome_stream_identifier" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

void sub_1B1EF3470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 88), 8);
  _Unwind_Resume(a1);
}

uint64_t WFTopHitContextualActionTypeForBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v1 allowPlaceholder:0 error:0];
  if (v2)
  {
    v3 = [v1 isEqualToString:@"com.apple.shortcuts"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id WFDisambiguableContextualActionClassForType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

void sub_1B1EF62AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  (*(v30 + 16))(v30, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16089(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double WFContentItemListThumbnailCornerRadiusForRoundingStyle(uint64_t a1, double a2, double a3)
{
  v3 = 0.0;
  if ((a1 - 1) <= 2)
  {
    v3 = dbl_1B1F36A40[a1 - 1];
  }

  if (a2 >= a3)
  {
    a2 = a3;
  }

  return a2 * v3;
}

void sub_1B1EF872C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getISImageDescriptorClass_block_invoke_16607(uint64_t a1)
{
  IconServicesLibrary_16610();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISImageDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISImageDescriptorClass_softClass_16606 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISImageDescriptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCConfiguredSleepWorkflow.m" lineNumber:18 description:{@"Unable to find class %s", "ISImageDescriptor"}];

    __break(1u);
  }
}

void *__getkISImageDescriptorHomeScreenSymbolLoc_block_invoke_16609(uint64_t a1)
{
  v2 = IconServicesLibrary_16610();
  result = dlsym(v2, "kISImageDescriptorHomeScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorHomeScreenSymbolLoc_ptr_16608 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *IconServicesLibrary_16610()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IconServicesLibraryCore_frameworkLibrary_16619)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IconServicesLibraryCore_block_invoke_16620;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B02138;
    v6 = 0;
    IconServicesLibraryCore_frameworkLibrary_16619 = _sl_dlopen();
  }

  v0 = IconServicesLibraryCore_frameworkLibrary_16619;
  if (!IconServicesLibraryCore_frameworkLibrary_16619)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IconServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"VCConfiguredSleepWorkflow.m" lineNumber:17 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __IconServicesLibraryCore_block_invoke_16620(uint64_t a1)
{
  result = _sl_dlopen();
  IconServicesLibraryCore_frameworkLibrary_16619 = result;
  return result;
}

void std::deque<WFDebouncerPokeReason * {__strong}>::pop_front(uint64_t a1)
{
  v2 = vaddq_s64(*(a1 + 32), xmmword_1B1F367B0);
  *(a1 + 32) = v2;
  if (v2.i64[0] >= 0x400uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }
}

uint64_t std::deque<WFDebouncerPokeReason * {__strong}>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v3 + (((*(a1 + 40) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 40) + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7++;

        if (v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 256;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_17;
    }

    v13 = 512;
  }

  *(a1 + 32) = v13;
LABEL_17:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B1EF9BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<WFDebouncerPokeReason * {__strong}*>::emplace_back<WFDebouncerPokeReason * {__strong}*&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<WFDebouncerPokeReason * {__strong}*>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<WFDebouncerPokeReason * {__strong}*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

id WFShojiSystemActionsContextualActionFromData(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"WFContextualAction * _Nullable WFShojiSystemActionsContextualActionFromData(NSData * _Nonnull __strong)"];
    [v6 handleFailureInFunction:v7 file:@"WFShojiSystemActionsRunnerClient.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v8 = 0;
  v2 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v1 error:&v8];
  v3 = v8;
  if (!v2)
  {
    v4 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "WFShojiSystemActionsContextualActionFromData";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_ERROR, "%s Cannot unpack data into contextual action: %@", buf, 0x16u);
    }
  }

  return v2;
}

id WFShojiSystemActionsDataFromContextualAction(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSData * _Nullable WFShojiSystemActionsDataFromContextualAction(WFContextualAction * _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [v6 handleFailureInFunction:v7 file:@"WFShojiSystemActionsRunnerClient.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:a2];

  return v4;
}

void sub_1B1EFBF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFAbbreviatedNameFromText(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v3 = [v1 componentsSeparatedByCharactersInSet:v2];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      v9 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v10 = [v8 stringByTrimmingCharactersInSet:v9];

      if ([v10 length])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (v10 && [v10 length] >= 0x65)
    {
      [v10 substringToIndex:{objc_msgSend(v10, "rangeOfComposedCharacterSequenceAtIndex:", 100)}];
      v10 = v3 = v10;
      goto LABEL_13;
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
LABEL_13:
  }

  return v10;
}

void sub_1B1EFE9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CoreUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreUILibraryCore_frameworkLibrary = result;
  return result;
}

id WFExclusivelyForTestingGetResidentCoreGlyphsCatalogs()
{
  os_unfair_lock_lock(&WFImageResidentCoreGlyphsCatalogsLock);
  v0 = WFImageLockedResidentCoreGlyphsCatalogs;
  os_unfair_lock_unlock(&WFImageResidentCoreGlyphsCatalogsLock);

  return v0;
}

uint64_t VCPerformOnFirstUnlock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int VCPerformOnFirstUnlock(dispatch_queue_t  _Nonnull __strong, void (^ _Nonnull __strong)(void))"}];
    [v8 handleFailureInFunction:v9 file:@"VCUtilities.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int VCPerformOnFirstUnlock(dispatch_queue_t  _Nonnull __strong, void (^ _Nonnull __strong)(void))"}];
    [v10 handleFailureInFunction:v11 file:@"VCUtilities.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

    goto LABEL_3;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  out_token = -1;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __VCPerformOnFirstUnlock_block_invoke;
  handler[3] = &unk_1E7B02380;
  v13 = v4;
  v5 = v4;
  notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v3, handler);
  v6 = out_token;

  return v6;
}

uint64_t __VCPerformOnFirstUnlock_block_invoke(uint64_t a1, int token)
{
  notify_cancel(token);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

id VCInactiveAppsFromList(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = MEMORY[0x1E6963608];
          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v8 defaultWorkspace];
          v11 = [v10 applicationIsInstalled:v9];

          if ((v11 & 1) == 0)
          {
            [v2 addObject:v9];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WFApertureStatusViewControllerIdentityFromRunningContext(void *a1)
{
  v1 = [a1 identifier];
  v2 = [v1 stringByAppendingString:@".WFApertureStatusViewController"];

  return v2;
}

id getWFStringContentItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWFStringContentItemClass_softClass_18983;
  v7 = getWFStringContentItemClass_softClass_18983;
  if (!getWFStringContentItemClass_softClass_18983)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getWFStringContentItemClass_block_invoke_18984;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getWFStringContentItemClass_block_invoke_18984(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1F0510C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFStringContentItemClass_block_invoke_18984(uint64_t a1)
{
  ContentKitLibrary_18985();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFStringContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFStringContentItemClass_softClass_18983 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFStringContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentExtractor.m" lineNumber:55 description:{@"Unable to find class %s", "WFStringContentItem"}];

    __break(1u);
  }
}

void ContentKitLibrary_18985()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContentKitLibraryCore_frameworkLibrary_18996)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContentKitLibraryCore_block_invoke_18997;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B024F0;
    v5 = 0;
    ContentKitLibraryCore_frameworkLibrary_18996 = _sl_dlopen();
  }

  if (!ContentKitLibraryCore_frameworkLibrary_18996)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContentKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFOnScreenContentExtractor.m" lineNumber:52 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ContentKitLibraryCore_block_invoke_18997(uint64_t a1)
{
  result = _sl_dlopen();
  ContentKitLibraryCore_frameworkLibrary_18996 = result;
  return result;
}

void sub_1B1F05830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19005(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1F05B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFContentItemClass_block_invoke_19009(uint64_t a1)
{
  ContentKitLibrary_18985();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContentItemClass_softClass_19008 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentExtractor.m" lineNumber:53 description:{@"Unable to find class %s", "WFContentItem"}];

    __break(1u);
  }
}

id getWFCoercionRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWFCoercionRequestClass_softClass;
  v7 = getWFCoercionRequestClass_softClass;
  if (!getWFCoercionRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getWFCoercionRequestClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getWFCoercionRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1F05E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1F06360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIActivityItemsConfigurationMetadataKeyLinkPresentationMetadataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIActivityItemsConfigurationMetadataKeyLinkPresentationMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIActivityItemsConfigurationMetadataKeyLinkPresentationMetadataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *UIKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_19021)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke_19022;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B024D8;
    v6 = 0;
    UIKitLibraryCore_frameworkLibrary_19021 = _sl_dlopen();
  }

  v0 = UIKitLibraryCore_frameworkLibrary_19021;
  if (!UIKitLibraryCore_frameworkLibrary_19021)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFOnScreenContentExtractor.m" lineNumber:34 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __UIKitLibraryCore_block_invoke_19022(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_19021 = result;
  return result;
}

void __getWFCoercionRequestClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary_18985();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFCoercionRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFCoercionRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFCoercionRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentExtractor.m" lineNumber:54 description:{@"Unable to find class %s", "WFCoercionRequest"}];

    __break(1u);
  }
}

void sub_1B1F06C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getUIApplicationClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIApplication");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIApplicationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentExtractor.m" lineNumber:35 description:{@"Unable to find class %s", "UIApplication"}];

    __break(1u);
  }
}

void __getUIWindowSceneClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIWindowScene");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIWindowSceneClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIWindowSceneClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentExtractor.m" lineNumber:36 description:{@"Unable to find class %s", "UIWindowScene"}];

    __break(1u);
  }
}

void sub_1B1F09800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsPopContextSymbolLoc_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = UIKitLibrary_19507();
  result = dlsym(v3, "UIGraphicsPopContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsPopContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *UIKitLibrary_19507()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_19517)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke_19518;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B02548;
    v6 = 0;
    UIKitLibraryCore_frameworkLibrary_19517 = _sl_dlopen();
  }

  v0 = UIKitLibraryCore_frameworkLibrary_19517;
  if (!UIKitLibraryCore_frameworkLibrary_19517)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFBitmapContext.m" lineNumber:21 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __UIKitLibraryCore_block_invoke_19518(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_19517 = result;
  return result;
}

void sub_1B1F09B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsPushContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary_19507();
  result = dlsym(v2, "UIGraphicsPushContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsPushContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double WFEffectiveScaleForScale(double result)
{
  if (result <= 0.0)
  {
    v1 = +[WFDevice currentDevice];
    [v1 screenScale];
    v3 = v2;

    return v3;
  }

  return result;
}

uint64_t __WFCreateBitmapContext_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) != 1 || *(a2 + 13) != 1)
  {
    return 1;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a3 + 56) = v3;
  }

  v4 = *(a3 + 44) - 2;
  if (v4 > 2)
  {
    return 1;
  }

  result = 0;
  *(a3 + 44) = dword_1B1F36A28[v4];
  *(a3 + 64) = 0;
  return result;
}

void sub_1B1F0A2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsGetCurrentContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary_19507();
  result = dlsym(v2, "UIGraphicsGetCurrentContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsGetCurrentContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *WFDescriptionForDatabaseObjectType(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7B025D8[a1];
  }
}

__CFString *WFDescribeWorkflowOutputBehavior(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7B02640[a1];
  }
}

void sub_1B1F0E00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBiomeLibrarySymbolLoc_block_invoke_20387(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_20396)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __BiomeLibraryLibraryCore_block_invoke_20397;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B026D0;
    v7 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary_20396 = _sl_dlopen();
  }

  v2 = BiomeLibraryLibraryCore_frameworkLibrary_20396;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_20396)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeLibraryLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFToggleAlarmContextualAction.m" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BiomeLibrary");
  *(*(a1[4] + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr_20386 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke_20397(uint64_t a1)
{
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary_20396 = result;
  return result;
}

void sub_1B1F1047C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    v18 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "[WFAllActionOutputsRunResult getActionOutputsWithCompletionHandler:]";
      WORD6(buf) = 2112;
      *(&buf + 14) = v17;
      _os_log_impl(&dword_1B1DE3000, v18, OS_LOG_TYPE_FAULT, "%s Exception thrown when decoding action outputs: %@", &buf, 0x16u);
    }

    v19 = [v16 unableToDecodeError];
    (*(v15 + 16))(v15, 0, v19);

    objc_end_catch();
    JUMPOUT(0x1B1F10448);
  }

  _Unwind_Resume(a1);
}

void sub_1B1F116DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20936(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1F119A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F11C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F11ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F121C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F124A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F12944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1F12CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1F12F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1F1313C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1F13694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1F13BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F13FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F144AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F15108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFGallerySessionManagerClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFGallerySessionManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFGallerySessionManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFGallerySessionManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient.m" lineNumber:42 description:{@"Unable to find class %s", "WFGallerySessionManager"}];

    __break(1u);
  }
}

void __getWFInterchangeURLRequestClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFInterchangeURLRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFInterchangeURLRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFInterchangeURLRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient.m" lineNumber:41 description:{@"Unable to find class %s", "WFInterchangeURLRequest"}];

    __break(1u);
  }
}

void sub_1B1F15730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFSharedShortcutClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFSharedShortcut");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFSharedShortcutClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFSharedShortcutClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient.m" lineNumber:44 description:{@"Unable to find class %s", "WFSharedShortcut"}];

    __break(1u);
  }
}

void __getWFGalleryWorkflowClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFGalleryWorkflow");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFGalleryWorkflowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFGalleryWorkflowClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient.m" lineNumber:43 description:{@"Unable to find class %s", "WFGalleryWorkflow"}];

    __break(1u);
  }
}

void WorkflowKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!WorkflowKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __WorkflowKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B02C80;
    v5 = 0;
    WorkflowKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WorkflowKitLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WorkflowKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"VCVoiceShortcutClient.m" lineNumber:39 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __WorkflowKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  WorkflowKitLibraryCore_frameworkLibrary = result;
  return result;
}

void VCVoiceShortcutDataDidUpdateNotificationHandler(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a3 isEqualToString:@"com.apple.siri.VoiceShortcuts.DataDidUpdateNotification"];
  v5 = getWFVoiceShortcutClientLogObject();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315394;
      v10 = "VCVoiceShortcutDataDidUpdateNotificationHandler";
      v11 = 2112;
      v12 = @"com.apple.siri.VoiceShortcuts.DataDidUpdateNotification";
      _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_DEBUG, "%s Received notification: (%@)", &v9, 0x16u);
    }

    v7 = MEMORY[0x1E696AD88];
    v8 = a2;
    v6 = [v7 defaultCenter];
    [v6 postNotificationName:@"VCVoiceShortcutClientDataDidUpdateNotification" object:v8];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    v10 = "VCVoiceShortcutDataDidUpdateNotificationHandler";
    v11 = 2112;
    v12 = @"com.apple.siri.VoiceShortcuts.DataDidUpdateNotification";
    _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_ERROR, "%s Cannot handle unrecognized notification: (%@)", &v9, 0x16u);
  }
}

void sub_1B1F17F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

__CFString *WFDescribeFinderImageResizeSize(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Small";
  }

  else
  {
    return off_1E7B02CC0[a1];
  }
}

id WFLocalizedDescribeFinderImageResizeSize(unint64_t a1)
{
  if (a1 <= 3)
  {
    a1 = WFLocalizedString(off_1E7B02CD8[a1]);
  }

  return a1;
}

uint64_t WFFinderImageResizeSizeFromDescription(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Small"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Medium"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Large"])
  {
    v2 = 1;
  }

  else
  {
    [v1 isEqualToString:@"Original"];
    v2 = 0;
  }

  return v2;
}

__CFString *WFDescribeFinderImageResizeFormat(uint64_t a1)
{
  v1 = @"JPEG";
  if (a1 == 1)
  {
    v1 = @"PNG";
  }

  if (a1 == 2)
  {
    return @"HEIF";
  }

  else
  {
    return v1;
  }
}

uint64_t WFFinderImageResizeFormatFromDescription(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"JPEG"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"PNG"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"HEIF"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}