id sub_1D461074C(uint64_t a1)
{
  if (qword_1ED82C570 != -1)
  {
    sub_1D4610790();
  }

  v2 = qword_1ED82C578;

  return v2;
}

uint64_t sub_1D46107F0()
{
  v0 = os_log_create("com.apple.inputAnalytics.client", "IATextInputActions");
  v1 = qword_1ED82C578;
  qword_1ED82C578 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_1D4610D40()
{
  v0 = os_log_create("com.apple.inputAnalytics.client", "IAXPCClient");
  v1 = qword_1ED82C558;
  qword_1ED82C558 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_1D4610F0C()
{
  if (qword_1ED82C550 != -1)
  {
    sub_1D4610844();
  }

  v1 = qword_1ED82C558;

  return v1;
}

id sub_1D461102C()
{
  if (qword_1ED82C560 != -1)
  {
    sub_1D4611018();
  }

  v1 = qword_1ED82C568;

  return v1;
}

uint64_t sub_1D4611070()
{
  v0 = os_log_create("com.apple.inputAnalytics.client", "IASignalAnalytics");
  v1 = qword_1ED82C568;
  qword_1ED82C568 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_1D4611170()
{
  if (qword_1ED82C580 != -1)
  {
    sub_1D461115C();
  }

  v1 = qword_1ED82C588;

  return v1;
}

uint64_t sub_1D46111B4()
{
  v0 = os_log_create("com.apple.inputAnalytics", "IAServerStats");
  v1 = qword_1ED82C588;
  qword_1ED82C588 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_1D4611D90()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4612204(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], a2, @"^[a-z]{2,3}([_-][A-Z][a-z]{3})?$", 0, 0);
  v3 = qword_1ED82C590;
  qword_1ED82C590 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t sub_1D461238C()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1ED82C5A0;
  qword_1ED82C5A0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_1D461247C(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], a2, @"^(([A-Z]{2})|([0-9]{3})|([A-Z][a-z]{3}))$", 0, 0);
  v3 = qword_1ED82C5B0;
  qword_1ED82C5B0 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t sub_1D4612604()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1ED82C5C0;
  qword_1ED82C5C0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1D4612860(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_q_flushRecentActions(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_analyzer(*(a1 + 32), v4, v5);
  objc_msgSend_enumerateAnalytics(v6, v7, v8);

  v11 = objc_msgSend_analyzer(*(a1 + 32), v9, v10);
  objc_msgSend_reset(v11, v12, v13);

  v16 = objc_msgSend_serverDelegate(*(a1 + 32), v14, v15);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v22 = objc_msgSend_serverDelegate(*(a1 + 32), v18, v19);
    objc_msgSend_didEndEnumeratingAnalytics(v22, v20, v21);
  }
}

void sub_1D4612A0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v5 = objc_msgSend_analyzer(*(a1 + 32), a2, a3);
  objc_msgSend_setKeyboardTrialParameters_(v5, v4, v3);
}

uint64_t sub_1D4616220(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  if (v3 == 1)
  {
    objc_msgSend_setDictationBeganCount_(v4, a2, 1);
    if (*(a1 + 49) == 1)
    {
      objc_msgSend_setMultiModalDictationBeganCount_(*(a1 + 32), v5, 1);
    }
  }

  else
  {
    objc_msgSend_setModelessUsedAtLeastOnceCount_(v4, a2, 1);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v6, sel_mergeOrConsumeAction_, v7);
}

void sub_1D4616AF4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1D4616B14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_1D4616B58(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1D4616B90(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1D4616BF4()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("com.apple.inputAnalytics.signalAnalyticsClient", v2);
  v1 = qword_1ED82C5E8;
  qword_1ED82C5E8 = v0;
}

void sub_1D461724C(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = [IASignalAnalyticsObject alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = objc_msgSend_UUIDString(*(a1 + 48), v5, v6);
  v9 = objc_msgSend_initWithChannel_signal_sessionIdString_creationTimestamp_payload_(v2, v8, v3, v4, v7, *(a1 + 56), *(a1 + 64));

  v10 = sub_1D461102C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = objc_msgSend_description(*(a1 + 48), v11, v12);
    objc_msgSend_timeIntervalSinceReferenceDate(*(a1 + 56), v16, v17);
    v19 = v18;
    v22 = objc_msgSend_timestamp(v9, v20, v21);
    objc_msgSend_timeIntervalSinceReferenceDate(v22, v23, v24);
    v26 = v25;
    v29 = objc_msgSend_description(*(a1 + 64), v27, v28);
    v44 = 138479107;
    v45 = v13;
    v46 = 2113;
    v47 = v14;
    v48 = 2113;
    v49 = v15;
    v50 = 2049;
    v51 = v19;
    v52 = 2049;
    v53 = v26;
    v54 = 2117;
    v55 = v29;
    _os_log_impl(&dword_1D460F000, v10, OS_LOG_TYPE_DEFAULT, "channel:%{private}@ signal:%{private}@ sessionID:%{private}@ creationTimestamp:%{private}f timestamp:%{private}f payload:%{sensitive}@", &v44, 0x3Eu);
  }

  if (objc_msgSend_xpcEnabled(IAUtility, v30, v31))
  {
    v34 = objc_msgSend_xpcClient(*(a1 + 72), v32, v33);
    v37 = objc_msgSend_server(v34, v35, v36);

    v39 = objc_opt_respondsToSelector();
    if (v39)
    {
      objc_msgSend_didAction_(v37, v38, v9);
    }

    else
    {
      v41 = sub_1D461102C();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
      {
        sub_1D462D4B0(v41, v42, v43);
      }
    }

    objc_msgSend_reportConnectionStatusSuccessful_(IAServerStats, v40, v39 & 1);
  }
}

void sub_1D46177F4(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = [IASignalAnalyticsObject alloc];
  v4 = objc_msgSend_initWithChannel_signal_sessionIdString_creationTimestamp_payload_(v2, v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  v5 = sub_1D461102C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    objc_msgSend_timeIntervalSinceReferenceDate(*(a1 + 56), v6, v7);
    v12 = v11;
    v15 = objc_msgSend_timestamp(v4, v13, v14);
    objc_msgSend_timeIntervalSinceReferenceDate(v15, v16, v17);
    v19 = v18;
    v22 = objc_msgSend_description(*(a1 + 64), v20, v21);
    v37 = 138479107;
    v38 = v8;
    v39 = 2113;
    v40 = v9;
    v41 = 2113;
    v42 = v10;
    v43 = 2049;
    v44 = v12;
    v45 = 2049;
    v46 = v19;
    v47 = 2117;
    v48 = v22;
    _os_log_impl(&dword_1D460F000, v5, OS_LOG_TYPE_DEFAULT, "channel:%{private}@ signal:%{private}@ uniqueStringId:%{private}@ creationTimestamp:%{private}f timestamp:%{private}f payload:%{sensitive}@", &v37, 0x3Eu);
  }

  if (objc_msgSend_xpcEnabled(IAUtility, v23, v24))
  {
    v27 = objc_msgSend_xpcClient(*(a1 + 72), v25, v26);
    v30 = objc_msgSend_server(v27, v28, v29);

    v32 = objc_opt_respondsToSelector();
    if (v32)
    {
      objc_msgSend_didAction_(v30, v31, v4);
    }

    else
    {
      v34 = sub_1D461102C();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        sub_1D462D5E0(v34, v35, v36);
      }
    }

    objc_msgSend_reportConnectionStatusSuccessful_(IAServerStats, v33, v32 & 1);
  }
}

void sub_1D46179FC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_1D4617A60(uint64_t a1, const char *a2)
{
  v5[59] = *MEMORY[0x1E69E9840];
  v4[0] = @"EmojiKeyPlaneSwitched";
  v4[1] = @"GenmojiButtonPressed";
  v5[0] = &unk_1F4FE6188;
  v5[1] = &unk_1F4FE61A0;
  v4[2] = @"EmojiSearchInvoked";
  v4[3] = @"ExistingGenmojiLongPressedThenNewEmojiSelected";
  v5[2] = &unk_1F4FE61B8;
  v5[3] = &unk_1F4FE61D0;
  v4[4] = @"CreateNewEmojiButtonShown";
  v4[5] = @"EmojiSearchDismissed";
  v5[4] = &unk_1F4FE61E8;
  v5[5] = &unk_1F4FE6200;
  v4[6] = @"CreateNewEmojiDismissed";
  v4[7] = @"CreateNewEmojiSelected";
  v5[6] = &unk_1F4FE6218;
  v5[7] = &unk_1F4FE6230;
  v4[8] = @"PersonIdentificationStarted";
  v4[9] = @"CancelButtonPressed";
  v5[8] = &unk_1F4FE6248;
  v5[9] = &unk_1F4FE6260;
  v4[10] = @"AmbiguousPersonFound";
  v4[11] = @"GenericPersonFound";
  v5[10] = &unk_1F4FE6278;
  v5[11] = &unk_1F4FE6290;
  v4[12] = @"TaggedPersonFound";
  v4[13] = @"PersonNotFound";
  v5[12] = &unk_1F4FE62A8;
  v5[13] = &unk_1F4FE62C0;
  v4[14] = @"PromptIsEmpty";
  v4[15] = @"ImageGenerated";
  v5[14] = &unk_1F4FE62D8;
  v5[15] = &unk_1F4FE62F0;
  v4[16] = @"ImageNotGenerated";
  v4[17] = @"PillSelected";
  v5[16] = &unk_1F4FE6308;
  v5[17] = &unk_1F4FE6320;
  v4[18] = @"ImageInserted";
  v4[19] = @"MenuButtonPressed";
  v5[18] = &unk_1F4FE6338;
  v5[19] = &unk_1F4FE6350;
  v4[20] = @"PlusCharacterButtonPressed";
  v4[21] = @"CharacterChosen";
  v5[20] = &unk_1F4FE6368;
  v5[21] = &unk_1F4FE6380;
  v4[22] = @"PreviouslySelectedCharacterChosen";
  v4[23] = @"PhotoChosen";
  v5[22] = &unk_1F4FE6398;
  v5[23] = &unk_1F4FE63B0;
  v4[24] = @"PhotoChosenFirstTime";
  v4[25] = @"PreviouslySelectedPhotoChosen";
  v5[24] = &unk_1F4FE63C8;
  v5[25] = &unk_1F4FE63E0;
  v4[26] = @"DoneButtonPressed";
  v4[27] = @"AppearanceSelected";
  v5[26] = &unk_1F4FE63F8;
  v5[27] = &unk_1F4FE6410;
  v4[28] = @"SkinToneSelected";
  v4[29] = @"AddButtonPressed";
  v5[28] = &unk_1F4FE6428;
  v5[29] = &unk_1F4FE6440;
  v4[30] = @"CharacterDeleted";
  v4[31] = @"PhotoPicked";
  v5[30] = &unk_1F4FE6458;
  v5[31] = &unk_1F4FE6470;
  v4[32] = @"AllPhotosTabSelected";
  v4[33] = @"SuggestedPhotosTabSelected";
  v5[32] = &unk_1F4FE6488;
  v5[33] = &unk_1F4FE64A0;
  v4[34] = @"CopySelected";
  v4[35] = @"ShareSheetSelected";
  v5[34] = &unk_1F4FE64B8;
  v5[35] = &unk_1F4FE64D0;
  v4[36] = @"SaveToStickersSelected";
  v4[37] = @"AddCaptionSelected";
  v5[36] = &unk_1F4FE64E8;
  v5[37] = &unk_1F4FE6500;
  v4[38] = @"ImageGenerationStarted";
  v4[39] = @"RetryRequested";
  v5[38] = &unk_1F4FE6518;
  v5[39] = &unk_1F4FE6530;
  v4[40] = @"UISuspended";
  v4[41] = @"UIResumed";
  v5[40] = &unk_1F4FE6548;
  v5[41] = &unk_1F4FE6560;
  v4[42] = @"BlobIndexChanged";
  v4[43] = @"DidPersonalizeStatus";
  v5[42] = &unk_1F4FE6578;
  v5[43] = &unk_1F4FE6590;
  v4[44] = @"PeoplePickerAppeared";
  v4[45] = @"PeoplePickerDisappeared";
  v5[44] = &unk_1F4FE65A8;
  v5[45] = &unk_1F4FE65C0;
  v4[46] = @"PeoplePickerGridAppeared";
  v4[47] = @"PeoplePickerGridUpdated";
  v5[46] = &unk_1F4FE65D8;
  v5[47] = &unk_1F4FE65F0;
  v4[48] = @"PeoplePickerItemSelected";
  v4[49] = @"PeoplePickerPickerRequested";
  v5[48] = &unk_1F4FE6608;
  v5[49] = &unk_1F4FE6620;
  v4[50] = @"FacePickerCarouselUpdatingFaces";
  v4[51] = @"FacePickerCarouselFacesUpdated";
  v5[50] = &unk_1F4FE6638;
  v5[51] = &unk_1F4FE6650;
  v4[52] = @"FacePickerCarouselPreviewLoaded";
  v4[53] = @"FacePickerCarouselDismissed";
  v5[52] = &unk_1F4FE6668;
  v5[53] = &unk_1F4FE6680;
  v4[54] = @"EditButtonPressed";
  v4[55] = @"BeginGeneration";
  v5[54] = &unk_1F4FE6698;
  v5[55] = &unk_1F4FE66B0;
  v4[56] = @"MessagesSendMenuButtonPressed";
  v4[57] = @"FinalImageGenerated";
  v5[56] = &unk_1F4FE66C8;
  v5[57] = &unk_1F4FE66E0;
  v4[58] = @"UIAppeared";
  v5[58] = &unk_1F4FE66F8;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, v4, 59);
  v3 = qword_1EC7D6620;
  qword_1EC7D6620 = v2;
}

void sub_1D461802C(uint64_t a1, const char *a2)
{
  v5[29] = *MEMORY[0x1E69E9840];
  v4[0] = @"InputSafety";
  v4[1] = @"InputCopyright";
  v5[0] = &unk_1F4FE6188;
  v5[1] = &unk_1F4FE61A0;
  v4[2] = @"FictionalCharacter";
  v4[3] = @"InputMultipleFaces";
  v5[2] = &unk_1F4FE61B8;
  v5[3] = &unk_1F4FE61D0;
  v4[4] = @"OutputImageHasMultipleFaces";
  v4[5] = @"OutputImageHasFace";
  v5[4] = &unk_1F4FE61E8;
  v5[5] = &unk_1F4FE6200;
  v4[6] = @"OutputCaptionDescribesMultipleFaces";
  v4[7] = @"OutputCaptionDescribesPerson";
  v5[6] = &unk_1F4FE6218;
  v5[7] = &unk_1F4FE6230;
  v4[8] = @"OutputSafety";
  v4[9] = @"InputLanguage";
  v5[8] = &unk_1F4FE6248;
  v5[9] = &unk_1F4FE6260;
  v4[10] = @"InputLexicon";
  v4[11] = @"InputScript";
  v5[10] = &unk_1F4FE6278;
  v5[11] = &unk_1F4FE6290;
  v4[12] = @"RequiresRewrite";
  v4[13] = @"PromptErrorOther";
  v5[12] = &unk_1F4FE62A8;
  v5[13] = &unk_1F4FE62C0;
  v4[14] = @"PolicyViolationOther";
  v4[15] = @"PolicyViolationInputImagePersonalizationPolicy";
  v5[14] = &unk_1F4FE62D8;
  v5[15] = &unk_1F4FE62F0;
  v4[16] = @"PolicyViolationDetectedFacesPolicy";
  v4[17] = @"PolicyViolationNonPersonalizedGeneratedImageCaptionPolicy";
  v5[16] = &unk_1F4FE6308;
  v5[17] = &unk_1F4FE6320;
  v4[18] = @"Other";
  v4[19] = @"Timeout";
  v5[18] = &unk_1F4FE6338;
  v5[19] = &unk_1F4FE6350;
  v4[20] = @"Cancel";
  v4[21] = @"NoFaceDetectedInConditioningImage";
  v5[20] = &unk_1F4FE6368;
  v5[21] = &unk_1F4FE6380;
  v4[22] = @"PublicFigure";
  v4[23] = @"PromptErrorUnresolvedAmbiguities";
  v5[22] = &unk_1F4FE6398;
  v5[23] = &unk_1F4FE63B0;
  v4[24] = @"PromptErrorPersonalizationUnavailable";
  v4[25] = @"PromptErrorPersonalizationUnavailableForEntities";
  v5[24] = &unk_1F4FE63C8;
  v5[25] = &unk_1F4FE63E0;
  v4[26] = @"OtherDisallowedConcepts";
  v4[27] = @"OtherDisallowedConceptsGenericEntity";
  v5[26] = &unk_1F4FE63F8;
  v5[27] = &unk_1F4FE6410;
  v4[28] = @"UserCancelled";
  v5[28] = &unk_1F4FE6428;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, v4, 29);
  v3 = qword_1EC7D6630;
  qword_1EC7D6630 = v2;
}

void sub_1D4618334(uint64_t a1, const char *a2)
{
  v5[21] = *MEMORY[0x1E69E9840];
  v4[0] = @"AlphabeticKeyboard";
  v4[1] = @"EmojiKeyboard";
  v5[0] = &unk_1F4FE6188;
  v5[1] = &unk_1F4FE61A0;
  v4[2] = @"EmojiSearchKeyboardCreateNewEmojiDisplayed";
  v4[3] = @"CreationSheet";
  v5[2] = &unk_1F4FE61B8;
  v5[3] = &unk_1F4FE61D0;
  v4[4] = @"CreationSheetPersonIdentification";
  v4[5] = @"CreationSheetGenerating";
  v5[4] = &unk_1F4FE61E8;
  v5[5] = &unk_1F4FE6200;
  v4[6] = @"CreationSheetGeneratingPill";
  v4[7] = @"CreationSheetResults";
  v5[6] = &unk_1F4FE6218;
  v5[7] = &unk_1F4FE6230;
  v4[8] = @"CreationSheetResultsPill";
  v4[9] = @"CreationSheetNoResults";
  v5[8] = &unk_1F4FE6248;
  v5[9] = &unk_1F4FE6260;
  v4[10] = @"PeopleChooserSheet";
  v4[11] = @"CreateNewCharacterSheet";
  v5[10] = &unk_1F4FE6278;
  v5[11] = &unk_1F4FE6290;
  v4[12] = @"CreateCharacterSheet";
  v4[13] = @"PhotoChooserSheet";
  v5[12] = &unk_1F4FE62A8;
  v5[13] = &unk_1F4FE62C0;
  v4[14] = @"CreationSheetMenu";
  v4[15] = @"EditPhotoMenu";
  v5[14] = &unk_1F4FE62D8;
  v5[15] = &unk_1F4FE62F0;
  v4[16] = @"AddCaptionMenu";
  v4[17] = @"Genmoji";
  v5[16] = &unk_1F4FE6308;
  v5[17] = &unk_1F4FE6320;
  v4[18] = @"ImagePlayground";
  v4[19] = @"ImageWand";
  v5[18] = &unk_1F4FE6338;
  v5[19] = &unk_1F4FE6350;
  v4[20] = @"ThirdParty";
  v5[20] = &unk_1F4FE6368;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, v4, 21);
  v3 = qword_1EC7D6610;
  qword_1EC7D6610 = v2;
}

void sub_1D461859C(uint64_t a1, const char *a2)
{
  v5[34] = *MEMORY[0x1E69E9840];
  v4[0] = @"CreationStarted";
  v4[1] = @"PreviewGenerated";
  v5[0] = &unk_1F4FE6710;
  v5[1] = &unk_1F4FE6728;
  v4[2] = @"RetryRequested";
  v4[3] = @"PreviewNotGenerated";
  v5[2] = &unk_1F4FE6740;
  v5[3] = &unk_1F4FE6758;
  v4[4] = @"FinalImageGenerated";
  v4[5] = @"ImageIndexChanged";
  v5[4] = &unk_1F4FE6770;
  v5[5] = &unk_1F4FE6788;
  v4[6] = @"CancelButtonPressed";
  v4[7] = @"ShareButtonPressed";
  v5[6] = &unk_1F4FE67A0;
  v5[7] = &unk_1F4FE67B8;
  v4[8] = @"CopyButtonPressed";
  v4[9] = @"SaveButtonPressed";
  v5[8] = &unk_1F4FE67D0;
  v5[9] = &unk_1F4FE67E8;
  v4[10] = @"UIAppeared";
  v4[11] = @"UIResumed";
  v5[10] = &unk_1F4FE6800;
  v5[11] = &unk_1F4FE6818;
  v4[12] = @"UISuspended";
  v4[13] = @"PreviewGenerationStarted";
  v5[12] = &unk_1F4FE6830;
  v5[13] = &unk_1F4FE6848;
  v4[14] = @"ImageInserted";
  v4[15] = @"StartGenerationPreviewStream";
  v5[14] = &unk_1F4FE6860;
  v5[15] = &unk_1F4FE6878;
  v4[16] = @"RewriteStarted";
  v4[17] = @"RewriteEnded";
  v5[16] = &unk_1F4FE6890;
  v5[17] = &unk_1F4FE68A8;
  v4[18] = @"RewriteFailed";
  v4[19] = @"ImagePlaygroundGridViewInsert";
  v5[18] = &unk_1F4FE68C0;
  v5[19] = &unk_1F4FE68D8;
  v4[20] = @"ImagePlaygroundGridViewCopy";
  v4[21] = @"ImagePlaygroundGridViewDuplicate";
  v5[20] = &unk_1F4FE68F0;
  v5[21] = &unk_1F4FE6908;
  v4[22] = @"ImagePlaygroundGridViewAddCaption";
  v4[23] = @"ImagePlaygroundGridViewShare";
  v5[22] = &unk_1F4FE6920;
  v5[23] = &unk_1F4FE6938;
  v4[24] = @"ImagePlaygroundGridViewEdit";
  v4[25] = @"ImagePlaygroundGridViewDelete";
  v5[24] = &unk_1F4FE6950;
  v5[25] = &unk_1F4FE6968;
  v4[26] = @"ImagePlaygroundDetailsViewCopy";
  v4[27] = @"ImagePlaygroundDetailsViewDuplicate";
  v5[26] = &unk_1F4FE6980;
  v5[27] = &unk_1F4FE6998;
  v4[28] = @"ImagePlaygroundDetailsViewAddCaption";
  v4[29] = @"ImagePlaygroundDetailsViewShare";
  v5[28] = &unk_1F4FE69B0;
  v5[29] = &unk_1F4FE69C8;
  v4[30] = @"ImagePlaygroundDetailsViewEdit";
  v4[31] = @"ImagePlaygroundDetailsViewDelete";
  v5[30] = &unk_1F4FE69E0;
  v5[31] = &unk_1F4FE69F8;
  v4[32] = @"MontaraHandoffAccepted";
  v4[33] = @"MontaraHandoffCanceled";
  v5[32] = &unk_1F4FE6A10;
  v5[33] = &unk_1F4FE6A28;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, v4, 34);
  v3 = qword_1EC7D65F0;
  qword_1EC7D65F0 = v2;
}

void sub_1D461890C(uint64_t a1, const char *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"Genmoji";
  v4[1] = @"ImagePlayground";
  v5[0] = &unk_1F4FE6710;
  v5[1] = &unk_1F4FE6728;
  v4[2] = @"ImageWand";
  v4[3] = @"ThirdParty";
  v5[2] = &unk_1F4FE6740;
  v5[3] = &unk_1F4FE6758;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, v4, 4);
  v3 = qword_1EC7D6600;
  qword_1EC7D6600 = v2;
}

void sub_1D4618A14(uint64_t a1, const char *a2)
{
  v5[35] = *MEMORY[0x1E69E9840];
  v4[0] = @"ComposeFieldInFocus";
  v4[1] = @"ComposeFieldOutOfFocus";
  v5[0] = &unk_1F4FE6A40;
  v5[1] = &unk_1F4FE6A58;
  v4[2] = @"ComposeTextModified";
  v4[3] = @"IntentRequested";
  v5[2] = &unk_1F4FE6A70;
  v5[3] = &unk_1F4FE6A88;
  v4[4] = @"IntentGenerated";
  v4[5] = @"IntentNotShown";
  v5[4] = &unk_1F4FE6AA0;
  v5[5] = &unk_1F4FE6AB8;
  v4[6] = @"IntentShown";
  v4[7] = @"IntentEngaged";
  v5[6] = &unk_1F4FE6AD0;
  v5[7] = &unk_1F4FE6AE8;
  v4[8] = @"IntentDismissed";
  v4[9] = @"InitialResponseRequested";
  v5[8] = &unk_1F4FE6B00;
  v5[9] = &unk_1F4FE6B18;
  v4[10] = @"InitialResponseFailed";
  v4[11] = @"InitialResponseCompleted";
  v5[10] = &unk_1F4FE6B30;
  v5[11] = &unk_1F4FE6B48;
  v4[12] = @"QuestionnaireRequested";
  v4[13] = @"QuestionnaireNotShown";
  v5[12] = &unk_1F4FE6B60;
  v5[13] = &unk_1F4FE6B78;
  v4[14] = @"QuestionnaireShown";
  v4[15] = @"QuestionnaireDismissed";
  v5[14] = &unk_1F4FE6B90;
  v5[15] = &unk_1F4FE6BA8;
  v4[16] = @"QuestionnaireAnswerModified";
  v4[17] = @"RewriteRequested";
  v5[16] = &unk_1F4FE6BC0;
  v5[17] = &unk_1F4FE6BD8;
  v4[18] = @"RewriteFailed";
  v4[19] = @"RewriteCompleted";
  v5[18] = &unk_1F4FE6BF0;
  v5[19] = &unk_1F4FE6C08;
  v4[20] = @"ResultsAccepted";
  v4[21] = @"ResultsRejected";
  v5[20] = &unk_1F4FE6C20;
  v5[21] = &unk_1F4FE6C38;
  v4[22] = @"AppSuspended";
  v4[23] = @"AppResumed";
  v5[22] = &unk_1F4FE6C50;
  v5[23] = &unk_1F4FE6C68;
  v4[24] = @"AppKilled";
  v4[25] = @"UISuspended";
  v5[24] = &unk_1F4FE6C80;
  v5[25] = &unk_1F4FE6C98;
  v4[26] = @"UIResumed";
  v4[27] = @"UITerminated";
  v5[26] = &unk_1F4FE6CB0;
  v5[27] = &unk_1F4FE6CC8;
  v4[28] = @"ActionsRequested";
  v4[29] = @"ActionsGenerated";
  v5[28] = &unk_1F4FE6CE0;
  v5[29] = &unk_1F4FE6CF8;
  v4[30] = @"PollActionRequested";
  v4[31] = @"PollActionGenerated";
  v5[30] = &unk_1F4FE6D10;
  v5[31] = &unk_1F4FE6D28;
  v4[32] = @"PollActionNotShown";
  v4[33] = @"PollActionShown";
  v5[32] = &unk_1F4FE6D40;
  v5[33] = &unk_1F4FE6D58;
  v4[34] = @"PollActionEngaged";
  v5[34] = &unk_1F4FE6D70;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, v4, 35);
  v3 = qword_1EC7D65E0;
  qword_1EC7D65E0 = v2;
}

uint64_t sub_1D4618DFC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1EC7D6650;
  qword_1EC7D6650 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void sub_1D461A8F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = objc_msgSend_sessionErrors(v2, v4, v5);
  objc_msgSend_logErrorCodeIfNotNil_(v7, v6, v3);
}

void sub_1D461ACCC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7);
  isEqual = objc_msgSend_isEqual_(v5, v9, v8);

  if ((isEqual & 1) == 0)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = objc_msgSend_sessionActionsEnumFromSource_(IATextInputActionsUtils, v11, a3);
    if (v23[3] == 1)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1D461AE24;
      v17[3] = &unk_1E848A540;
      v14 = *(a1 + 40);
      v13 = *(a1 + 48);
      v20 = a3;
      v21 = v13;
      v15 = *(a1 + 32);
      v19 = &v22;
      v17[4] = v15;
      v18 = v14;
      objc_msgSend_enumerateObjectsUsingBlock_(v5, v16, v17);
    }

    else
    {
      objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 40), v12, MEMORY[0x1E695E118]);
    }

    _Block_object_dispose(&v22, 8);
  }
}

void sub_1D461AE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D461AE24(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695DFB0];
  v6 = a2;
  v9 = objc_msgSend_null(v5, v7, v8);
  isEqual = objc_msgSend_isEqual_(v6, v10, v9);

  if ((isEqual & 1) == 0)
  {
    v13 = objc_msgSend_sessionActionsEnumFromSource_type_(IATextInputActionsUtils, v12, a1[7], a3);
    v14 = (a1 + 6);
    *(*(a1[6] + 8) + 24) = v13;
    if (*(*(a1[6] + 8) + 24) == 1)
    {
      sub_1D462DB64();
    }

    v15 = a1[5];
    v16 = MEMORY[0x1E695E118];

    objc_msgSend_setObject_atIndexedSubscript_(v15, v14, v16);
  }
}

uint64_t sub_1D461AF1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (a3)
  {
    v16 = v5;
    v5 = objc_msgSend_BOOLValue(v5, v5, v6);
    v7 = v16;
    if (v5)
    {
      v9 = objc_msgSend_sessionActionsString(*(a1 + 32), v16, v8);
      v11 = objc_msgSend_stringForSessionActionsEnum_(IATextInputActionsUtils, v10, a3);
      v13 = objc_msgSend_stringByAppendingString_(v9, v12, v11);
      objc_msgSend_setSessionActionsString_(*(a1 + 32), v14, v13);

      v7 = v16;
    }
  }

  return MEMORY[0x1EEE66BB8](v5, v7);
}

void sub_1D461B21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1D461B248(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D461B260(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v9 = objc_msgSend_computeSessionActionsStringOnSession_(v6, v8, v7);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1D461B36C;
  v17[3] = &unk_1E848A630;
  v10 = *(a1 + 32);
  v18 = v5;
  v19 = v10;
  v11 = *(a1 + 56);
  v20 = v9;
  v22 = v11;
  v16 = *(a1 + 40);
  v12 = v16;
  v21 = v16;
  v13 = v9;
  v14 = v5;
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v15, v17);
}

void sub_1D461B36C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7);
  isEqual = objc_msgSend_isEqual_(v5, v9, v8);

  if ((isEqual & 1) == 0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1D461B484;
    v19[3] = &unk_1E848A608;
    v11 = *(a1 + 32);
    v25 = a3;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v20 = v11;
    v21 = v12;
    v14 = v13;
    v15 = *(a1 + 72);
    v22 = v14;
    v24 = v15;
    v18 = *(a1 + 56);
    v16 = v18;
    v23 = v18;
    objc_msgSend_enumerateObjectsUsingBlock_(v5, v17, v19);
  }
}

void sub_1D461B484(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7);
  isEqual = objc_msgSend_isEqual_(v5, v9, v8);

  if ((isEqual & 1) == 0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1D461B5A0;
    v19[3] = &unk_1E848A5E0;
    v11 = *(a1 + 32);
    v25 = *(a1 + 80);
    v26 = a3;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v20 = v11;
    v21 = v12;
    v14 = v13;
    v15 = *(a1 + 72);
    v22 = v14;
    v24 = v15;
    v18 = *(a1 + 56);
    v16 = v18;
    v23 = v18;
    objc_msgSend_enumerateObjectsUsingBlock_(v5, v17, v19);
  }
}

void sub_1D461B5A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7);
  isEqual = objc_msgSend_isEqual_(v5, v9, v8);

  if ((isEqual & 1) == 0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1D461B6C0;
    v19[3] = &unk_1E848A5B8;
    v11 = *(a1 + 32);
    v25 = a3;
    v26 = *(a1 + 80);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v20 = v11;
    v21 = v12;
    v14 = v13;
    v15 = *(a1 + 72);
    v22 = v14;
    v24 = v15;
    v18 = *(a1 + 56);
    v16 = v18;
    v23 = v18;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v17, v19);
  }
}

void sub_1D461B6C0(uint64_t a1, void *a2, void *a3)
{
  v127[27] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ((objc_msgSend_isAllZeroes(v6, v7, v8) & 1) == 0)
  {
    v122 = v5;
    v10 = objc_msgSend_componentsSeparatedByString_(v5, v9, @"≡");
    v123 = objc_msgSend_lookupAppBundle_(IAUtility, v11, *(a1 + 32));
    isEmojiSearchSetInFlagOptions = objc_msgSend_isEmojiSearchSetInFlagOptions_(IATextInputActionsUtils, v12, *(a1 + 80));
    isMarkedTextSetInFlagOptions = objc_msgSend_isMarkedTextSetInFlagOptions_(IATextInputActionsUtils, v14, *(a1 + 80));
    v114 = objc_alloc(MEMORY[0x1E695DF90]);
    v126[0] = 0x1F4FDE458;
    v119 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v16, *(a1 + 88));
    v127[0] = v119;
    v126[1] = 0x1F4FDE478;
    v118 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v17, *(a1 + 96));
    v127[1] = v118;
    v126[2] = 0x1F4FDE498;
    v18 = MEMORY[0x1E696AD98];
    v21 = objc_msgSend_netCharacters(v6, v19, v20);
    v117 = objc_msgSend_numberWithLong_(v18, v22, v21);
    v127[2] = v117;
    v126[3] = 0x1F4FDE4B8;
    v23 = MEMORY[0x1E696AD98];
    v26 = objc_msgSend_userRemovedCharacters(v6, v24, v25);
    v116 = objc_msgSend_numberWithLong_(v23, v27, v26);
    v127[3] = v116;
    v126[4] = 0x1F4FDE4D8;
    v28 = MEMORY[0x1E696AD98];
    v31 = objc_msgSend_netEmojiCharacters(v6, v29, v30);
    v115 = objc_msgSend_numberWithLong_(v28, v32, v31);
    v127[4] = v115;
    v126[5] = 0x1F4FDE4F8;
    v33 = MEMORY[0x1E696AD98];
    v36 = objc_msgSend_userRemovedEmojiCharacters(v6, v34, v35);
    v113 = objc_msgSend_numberWithLong_(v33, v37, v36);
    v127[5] = v113;
    v126[6] = 0x1F4FDE518;
    v112 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v38, isEmojiSearchSetInFlagOptions);
    v127[6] = v112;
    v126[7] = 0x1F4FDE538;
    v111 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v39, isMarkedTextSetInFlagOptions);
    v127[7] = v111;
    v126[8] = 0x1F4FDE558;
    v40 = MEMORY[0x1E696AD98];
    v121 = v6;
    v43 = objc_msgSend_inputActions(v6, v41, v42);
    v110 = objc_msgSend_numberWithLong_(v40, v44, v43);
    v127[8] = v110;
    v126[9] = 0x1F4FDE6D8;
    v45 = MEMORY[0x1E696AD98];
    v47 = objc_msgSend_log10WholeNumberForUnsignedInt_(IATextInputActionsUtils, v46, *(*(a1 + 40) + 88));
    v109 = objc_msgSend_numberWithUnsignedLong_(v45, v48, v47);
    v127[9] = v109;
    v126[10] = 0x1F4FDE6F8;
    v49 = MEMORY[0x1E696AD98];
    v51 = objc_msgSend_log10WholeNumberForUnsignedInt_(IATextInputActionsUtils, v50, *(*(a1 + 40) + 96));
    v108 = objc_msgSend_numberWithUnsignedLong_(v49, v52, v51);
    v127[10] = v108;
    v126[11] = 0x1F4FDE718;
    v53 = MEMORY[0x1E696AD98];
    v55 = objc_msgSend_log10IntegerForInt_(IATextInputActionsUtils, v54, *(*(a1 + 40) + 104));
    v107 = objc_msgSend_numberWithUnsignedLong_(v53, v56, v55);
    v127[11] = v107;
    v126[12] = 0x1F4FDE738;
    v58 = *(a1 + 40);
    v59 = *(v58 + 120);
    if (v59 + *(v58 + 128))
    {
      v60 = MEMORY[0x1E695E118];
    }

    else
    {
      v60 = MEMORY[0x1E695E110];
    }

    v127[12] = v60;
    v126[13] = 0x1F4FDE758;
    v106 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v57, v59);
    v127[13] = v106;
    v126[14] = 0x1F4FDE778;
    v105 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v61, *(*(a1 + 40) + 128));
    v127[14] = v105;
    v126[15] = 0x1F4FDE578;
    v104 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v62, *(*(a1 + 40) + 80));
    v127[15] = v104;
    v126[16] = 0x1F4FDE598;
    v103 = objc_msgSend_sessionActionsString(*(a1 + 48), v63, v64);
    v127[16] = v103;
    v126[17] = 0x1F4FDE5B8;
    v65 = MEMORY[0x1E696AD98];
    HasOnlyPrimaryInput = objc_msgSend_sessionHasOnlyPrimaryInput(*(a1 + 48), v66, v67);
    v102 = objc_msgSend_numberWithBool_(v65, v69, HasOnlyPrimaryInput);
    v127[17] = v102;
    v126[18] = 0x1F4FDE5D8;
    v70 = MEMORY[0x1E696AD98];
    HasDictation = objc_msgSend_sessionHasDictation(*(a1 + 48), v71, v72);
    v75 = objc_msgSend_numberWithBool_(v70, v74, HasDictation);
    v127[18] = v75;
    v126[19] = 0x1F4FDDF18;
    v77 = objc_msgSend_objectAtIndexedSubscript_(v10, v76, 0);
    v127[19] = v77;
    v126[20] = 0x1F4FDDF38;
    v79 = objc_msgSend_objectAtIndexedSubscript_(v10, v78, 1);
    v127[20] = v79;
    v126[21] = 0x1F4FDE5F8;
    v81 = objc_msgSend_objectAtIndexedSubscript_(v10, v80, 2);
    v127[21] = v81;
    v126[22] = 0x1F4FDE618;
    v83 = objc_msgSend_objectAtIndexedSubscript_(v10, v82, 3);
    v127[22] = v83;
    v126[23] = 0x1F4FDE638;
    v85 = objc_msgSend_objectAtIndexedSubscript_(v10, v84, 4);
    v127[23] = v85;
    v126[24] = 0x1F4FDE658;
    v120 = v10;
    v87 = objc_msgSend_objectAtIndexedSubscript_(v10, v86, 5);
    v127[24] = v87;
    v127[25] = v123;
    v126[25] = 0x1F4FDE678;
    v126[26] = 0x1F4FDE698;
    v127[26] = *(*(*(a1 + 64) + 8) + 40);
    v89 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v88, v127, v126, 27);
    v91 = objc_msgSend_initWithDictionary_(v114, v90, v89);

    v94 = objc_msgSend_keyboardTrialParameters(*(a1 + 40), v92, v93);

    if (v94)
    {
      v97 = objc_msgSend_keyboardTrialParameters(*(a1 + 40), v95, v96);
      objc_msgSend_addEntriesFromDictionary_(v91, v98, v97);
    }

    v99 = *(*(*(a1 + 72) + 8) + 40);
    if (v99)
    {
      v124 = 0x1F4FDE6B8;
      v125 = v99;
      v100 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v95, &v125, &v124, 1);
      objc_msgSend_addEntriesFromDictionary_(v91, v101, v100);
    }

    (*(*(a1 + 56) + 16))();

    v6 = v121;
    v5 = v122;
  }
}

void *sub_1D461CBBC(void *result, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return objc_msgSend_setObject_forKey_(result, a2, a3);
  }

  return result;
}

void sub_1D461D3F0(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = sub_1D4611170();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 32))
    {
      v3 = @"success";
    }

    else
    {
      v3 = @"failure";
    }

    *buf = 138477827;
    v14 = v3;
    _os_log_impl(&dword_1D460F000, v2, OS_LOG_TYPE_INFO, "Logging %{private}@", buf, 0xCu);
  }

  v5 = &unk_1F4FE6D88;
  v6 = *(a1 + 32) == 0;
  v10 = @"xpcFailureCount";
  v11 = @"xpcSuccessCount";
  if (v6)
  {
    v7 = &unk_1F4FE6D88;
  }

  else
  {
    v7 = &unk_1F4FE6DA0;
  }

  if (v6)
  {
    v5 = &unk_1F4FE6DA0;
  }

  v12[0] = v7;
  v12[1] = v5;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v12, &v10, 2);
  objc_msgSend_dispatchEvent_payload_(IAEventDispatcher, v9, @"com.apple.inputAnalytics.serverStats", v8, v10, v11);
}

uint64_t sub_1D461D7D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], a2, a3);
  v4 = qword_1ED82C520;
  qword_1ED82C520 = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void sub_1D461D90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D461E318(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

void sub_1D4620318(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_1D4620338(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

void sub_1D4620350(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_1D4620370(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

id sub_1D4620388(uint64_t a1)
{
  if (qword_1EC7D6668 != -1)
  {
    sub_1D462E3C4();
  }

  v2 = qword_1EC7D6660;

  return v2;
}

uint64_t sub_1D46203CC()
{
  v0 = os_log_create("com.apple.inputAnalytics.server", "IASAnalyzerErrors");
  v1 = qword_1EC7D6660;
  qword_1EC7D6660 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_1D4620410(uint64_t a1)
{
  if (qword_1ED82C538 != -1)
  {
    sub_1D462E3D8();
  }

  v2 = qword_1ED82C530;

  return v2;
}

uint64_t sub_1D4620454()
{
  v0 = os_log_create("com.apple.inputAnalytics.server", "IATextInputActions");
  v1 = qword_1ED82C530;
  qword_1ED82C530 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1D4620700()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6[0] = @"IADataStoreBoolean";
  v6[1] = @"IADataStoreCounter";
  v6[2] = @"IADataStoreDaterange";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v1, v6, 3);
  v4 = objc_msgSend_initWithArray_(v0, v3, v2);
  v5 = qword_1EC7D6670;
  qword_1EC7D6670 = v4;
}

void sub_1D4620EDC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

id sub_1D4620EF8(uint64_t a1)
{
  if (qword_1ED82C518 != -1)
  {
    sub_1D462E7A8();
  }

  v2 = qword_1EC7D6638;

  return v2;
}

uint64_t sub_1D4620F3C()
{
  v0 = os_log_create("com.apple.inputAnalytics.client", "GlomojiAnalytics");
  v1 = qword_1EC7D6638;
  qword_1EC7D6638 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_1D4620F80(uint64_t a1)
{
  if (qword_1EC7D6688 != -1)
  {
    sub_1D462E7BC();
  }

  v2 = qword_1EC7D6680;

  return v2;
}

uint64_t sub_1D4620FC4()
{
  v0 = os_log_create("com.apple.inputAnalytics.client", "IATextInputUserPreferenceAnalytics");
  v1 = qword_1EC7D6680;
  qword_1EC7D6680 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_1D4621008(uint64_t a1)
{
  if (qword_1EC7D6640 != -1)
  {
    sub_1D462E7D0();
  }

  v2 = qword_1EC7D6648;

  return v2;
}

uint64_t sub_1D462104C()
{
  v0 = os_log_create("com.apple.inputAnalytics.client", "IADefaultsDataStore");
  v1 = qword_1EC7D6648;
  qword_1EC7D6648 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_1D4621090(uint64_t a1)
{
  if (qword_1EC7D6698 != -1)
  {
    sub_1D462E7E4();
  }

  v2 = qword_1EC7D6690;

  return v2;
}

uint64_t sub_1D46210D4()
{
  v0 = os_log_create("com.apple.inputAnalytics.client", "IAEventDispatcher");
  v1 = qword_1EC7D6690;
  qword_1EC7D6690 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1D4621C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4621C64(uint64_t a1)
{
  v1 = sub_1D4610F0C();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1D462E7F8();
  }
}

void sub_1D4621CB0(uint64_t a1)
{
  v1 = sub_1D4610F0C();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1D462E86C();
  }
}

void sub_1D4621CFC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_1D4610F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1D462E8E0(v2, v3, v4);
  }
}

void sub_1D4621D50(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_1D4610F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1D462E8E0(v2, v3, v4);
  }
}

void sub_1D4621FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4621FC8(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = sub_1D4610F0C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(*(a1 + 32) + 8) + 24);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1D460F000, v2, OS_LOG_TYPE_INFO, "invalidateConnection successfully invalidated 0x%lx", &v4, 0xCu);
  }
}

void *sub_1D462217C(void *result, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return objc_msgSend_setObject_forKey_(result, a2, a3);
  }

  return result;
}

void sub_1D4623B10(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%@=%@", a2, a3);
  objc_msgSend_addObject_(v3, v4, v5);
}

uint64_t sub_1D4627C68(uint64_t a1, uint64_t a2)
{

  return objc_opt_class();
}

void sub_1D4627E38()
{
  v0 = qword_1ED82C5D8;
  qword_1ED82C5D8 = &unk_1F4FE6DB8;
}

uint64_t sub_1D46284AC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, const char **a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v63 = a7;
  v64 = a6;
  v62 = a5;
  v65 = a8;
  v66 = a3;
  v11 = sub_1D462AD20(&qword_1EC7D65B0, &qword_1D4631F10);
  v12 = *(*(v11 - 8) + 64);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11 - 8);
  v67 = &v56 - v13;
  v14 = sub_1D462EF34();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = (v15 + 56);
  v18 = (v16)(&v56 - v13, 1, 1, v14);
  v19 = HIBYTE(a2) & 0xF;
  v20 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v21 = MEMORY[0x1E699C5C8];
  if (v19)
  {
    v60 = &v56;
    MEMORY[0x1EEE9AC00](v18);
    v61 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = &v56 - v13;
    v23 = sub_1D462EF44();
    v59 = &v56;
    MEMORY[0x1EEE9AC00](v23);
    v25 = (&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v58 = v20;
    *v25 = v20;
    v25[1] = a2;
    (*(v26 + 104))(v25, *v21);
    v56 = "T@NSString,N,C";
    v27 = sub_1D462AD20(&qword_1EC7D65B8, &qword_1D4631F18);
    v57 = &v56;
    MEMORY[0x1EEE9AC00](v27 - 8);
    v29 = &v56 - v28;
    v30 = sub_1D462EF24();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    swift_bridgeObjectRetain_n();
    v21 = MEMORY[0x1E699C5C8];
    v31 = v67;
    sub_1D462EF14();
    sub_1D462BF60(v31, &qword_1EC7D65B0, &qword_1D4631F10);
    (v16)(v22, 0, 1, v14);
    v32 = v22;
    v13 = v61;
    v18 = sub_1D462BFC0(v32, v31);
  }

  v61 = &v56;
  MEMORY[0x1EEE9AC00](v18);
  v33 = &v56 - v13;
  v34 = (v16)(&v56 - v13, 1, 1, v14);
  v35 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v35 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v60 = &v56;
    MEMORY[0x1EEE9AC00](v34);
    v59 = v17;
    v36 = sub_1D462EF44();
    v58 = &v56;
    MEMORY[0x1EEE9AC00](v36);
    v38 = (&v56 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    *v38 = v66;
    v38[1] = a4;
    (*(v39 + 104))(v38, *v21);
    v57 = v16;
    v40 = sub_1D462AD20(&qword_1EC7D65B8, &qword_1D4631F18);
    MEMORY[0x1EEE9AC00](v40 - 8);
    v42 = &v56 - v41;
    v43 = sub_1D462EF24();
    (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    swift_bridgeObjectRetain_n();
    sub_1D462EF14();
    sub_1D462BF60(v33, &qword_1EC7D65B0, &qword_1D4631F10);
    (v57)(&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v14);
    sub_1D462BFC0(&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v33);
  }

  v44 = sub_1D462EEF4();
  v66 = &v56;
  MEMORY[0x1EEE9AC00](v44);
  v47 = (*(v46 + 16))(&v56 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v62);
  MEMORY[0x1EEE9AC00](v47);
  v48 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v49 = v67;
  v50 = sub_1D462C030(v67, &v56 - v48, &qword_1EC7D65B0, &qword_1D4631F10);
  MEMORY[0x1EEE9AC00](v50);
  sub_1D462C030(v33, &v56 - v48, &qword_1EC7D65B0, &qword_1D4631F10);
  objc_allocWithZone(sub_1D462EF54());

  v51 = sub_1D462EF04();
  sub_1D462BF60(v33, &qword_1EC7D65B0, &qword_1D4631F10);
  sub_1D462BF60(v49, &qword_1EC7D65B0, &qword_1D4631F10);
  v52 = v65;
  *v65 = v51;
  v53 = *MEMORY[0x1E699C210];
  v54 = sub_1D462EEE4();
  return (*(*(v54 - 8) + 104))(v52, v53, v54);
}

uint64_t sub_1D4628C9C()
{
  v0 = sub_1D462EF84();
  sub_1D462C0F8(v0, qword_1EC7D66A8);
  sub_1D462B8C0(v0, qword_1EC7D66A8);
  return sub_1D462EF74();
}

id sub_1D4628D80(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1D462EF94();

  return v3;
}

uint64_t sub_1D4628DE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1D462EFA4();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

id sub_1D4628F08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &v8[OBJC_IVAR___IAFeedbackServiceSwiftBridge_modelInfo];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v8[OBJC_IVAR___IAFeedbackServiceSwiftBridge_featureDomain] = a1;
  *&v8[OBJC_IVAR___IAFeedbackServiceSwiftBridge_action] = a2;
  v10 = 1701736270;
  if (a4)
  {
    v11 = a3;
  }

  else
  {
    v11 = 1701736270;
  }

  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = &v8[OBJC_IVAR___IAFeedbackServiceSwiftBridge_originalContent];
  *v13 = v11;
  v13[1] = v12;
  if (a6)
  {
    v10 = a5;
    v14 = a6;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = &v8[OBJC_IVAR___IAFeedbackServiceSwiftBridge_generatedContent];
  *v15 = v10;
  v15[1] = v14;
  *v9 = a7;
  *(v9 + 1) = a8;

  v17.receiver = v8;
  v17.super_class = IAFeedbackServiceSwiftBridge;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_1D4629098()
{
  v61 = v0;
  if (qword_1EC7D66A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1D462EF84();
  *(v0 + 40) = sub_1D462B8C0(v2, qword_1EC7D66A8);
  v3 = v1;
  v4 = sub_1D462EF64();
  v5 = sub_1D462F014();

  v6 = &dword_1E848B000;
  v7 = &dword_1E848B000;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v60 = v10;
    *v9 = 136315651;
    *(v0 + 24) = [v8 featureDomain];
    type metadata accessor for IAFBKSInteractionFeatureDomain(0);
    v11 = sub_1D462EFB4();
    v13 = sub_1D462B8F8(v11, v12, &v60);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2085;
    v14 = [v8 originalContent];
    v15 = sub_1D462EFA4();
    v17 = v16;

    v18 = sub_1D462B8F8(v15, v17, &v60);

    *(v9 + 14) = v18;
    *(v9 + 22) = 2085;
    v19 = [v8 generatedContent];
    v20 = sub_1D462EFA4();
    v22 = v21;

    v23 = sub_1D462B8F8(v20, v22, &v60);
    v7 = &dword_1E848B000;

    *(v9 + 24) = v23;
    v6 = &dword_1E848B000;
    _os_log_impl(&dword_1D460F000, v4, v5, "reportPresented with domain '%s', input '%{sensitive}s', output '%{sensitive}s'", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6DC650](v10, -1, -1);
    MEMORY[0x1DA6DC650](v9, -1, -1);
  }

  v24 = *(v0 + 32);
  v25 = sub_1D462EEF4();
  *(v0 + 48) = v25;
  v26 = *(v25 - 8);
  v27 = swift_task_alloc();
  *(v0 + 56) = v27;
  v28 = [v24 *(v6 + 7)];
  if (!v28)
  {
    v29 = MEMORY[0x1E699C2A0];
    goto LABEL_9;
  }

  if (v28 == 1)
  {
    v29 = MEMORY[0x1E699C288];
LABEL_9:
    v30 = *(v0 + 32);
    (*(v26 + 104))(v27, *v29, v25);
    v31 = sub_1D462EEE4();
    *(v0 + 64) = v31;
    *(v0 + 72) = *(v31 - 8);
    v59 = swift_task_alloc();
    *(v0 + 80) = v59;
    v32 = [v30 originalContent];
    v58 = sub_1D462EFA4();
    v34 = v33;

    v35 = [v30 *(v7 + 10)];
    v36 = sub_1D462EFA4();
    v38 = v37;

    v39 = swift_task_alloc();
    (*(v26 + 16))(v39, v27, v25);
    v40 = [v30 modelInfo];
    if (v40)
    {
      v41 = v40;
      v42 = sub_1D462EFA4();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    sub_1D46284AC(v58, v34, v36, v38, v39, v42, v44, v59);

    v56 = *(v26 + 8);
    *(v0 + 88) = v56;
    *(v0 + 96) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56(v39, v25);

    v57 = swift_task_alloc();
    *(v0 + 104) = v57;
    *v57 = v0;
    v57[1] = sub_1D46296D0;

    return MEMORY[0x1EEE03F18]();
  }

  v45 = *(v0 + 32);
  v46 = sub_1D462EF64();
  v47 = sub_1D462F024();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = *(v0 + 32);
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v60 = v50;
    *v49 = 136315138;
    *(v0 + 16) = [v48 *(v6 + 7)];
    type metadata accessor for IAFBKSInteractionFeatureDomain(0);
    v51 = sub_1D462EFB4();
    v53 = sub_1D462B8F8(v51, v52, &v60);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_1D460F000, v46, v47, "Unexpected feature domain: %s.", v49, 0xCu);
    sub_1D462BEB4(v50);
    MEMORY[0x1DA6DC650](v50, -1, -1);
    MEMORY[0x1DA6DC650](v49, -1, -1);
  }

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_1D46296D0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D462988C;
  }

  else
  {
    v2 = sub_1D46297E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D46297E4()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D462988C()
{
  v1 = v0[14];
  v2 = v1;
  v3 = sub_1D462EF64();
  v4 = sub_1D462F024();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D460F000, v3, v4, "Unexpected error: %@.", v7, 0xCu);
    sub_1D462BF60(v8, &qword_1EC7D65A8, &qword_1D4631F08);
    MEMORY[0x1DA6DC650](v8, -1, -1);
    MEMORY[0x1DA6DC650](v7, -1, -1);
  }

  v11 = v0[11];
  v12 = v0[7];
  v13 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v11(v12, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D4629B90(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D462C358;

  return sub_1D4629078();
}

uint64_t sub_1D4629C58()
{
  v80 = v0;
  if (qword_1EC7D66A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_1D462EF84();
  *(v0 + 56) = sub_1D462B8C0(v2, qword_1EC7D66A8);
  v3 = v1;
  v4 = sub_1D462EF64();
  v5 = sub_1D462F014();

  v6 = &dword_1E848B000;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v79 = v9;
    *v8 = 136315907;
    *(v0 + 32) = [v7 featureDomain];
    type metadata accessor for IAFBKSInteractionFeatureDomain(0);
    v10 = sub_1D462EFB4();
    v12 = sub_1D462B8F8(v10, v11, &v79);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v0 + 40) = [v7 action];
    type metadata accessor for IAFBKSEvaluationAction(0);
    v13 = sub_1D462EFB4();
    v15 = sub_1D462B8F8(v13, v14, &v79);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2085;
    v16 = [v7 originalContent];
    v17 = sub_1D462EFA4();
    v19 = v18;

    v20 = sub_1D462B8F8(v17, v19, &v79);

    *(v8 + 24) = v20;
    *(v8 + 32) = 2085;
    v21 = [v7 generatedContent];
    v22 = sub_1D462EFA4();
    v24 = v23;

    v25 = sub_1D462B8F8(v22, v24, &v79);

    *(v8 + 34) = v25;
    _os_log_impl(&dword_1D460F000, v4, v5, "launchFeedback with domain '%s', action '%s', input '%{sensitive}s', output '%{sensitive}s'", v8, 0x2Au);
    swift_arrayDestroy();
    v26 = v9;
    v6 = &dword_1E848B000;
    MEMORY[0x1DA6DC650](v26, -1, -1);
    MEMORY[0x1DA6DC650](v8, -1, -1);
  }

  v27 = *(v0 + 48);
  v28 = sub_1D462EEF4();
  *(v0 + 64) = v28;
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = swift_task_alloc();
  *(v0 + 72) = v31;
  v32 = sub_1D462EEB4();
  *(v0 + 80) = v32;
  v33 = *(v32 - 8);
  *(v0 + 88) = v33;
  v77 = swift_task_alloc();
  *(v0 + 96) = v77;
  v34 = [v27 featureDomain];
  if (v34)
  {
    if (v34 != 1)
    {
      v63 = *(v0 + 48);
      v64 = sub_1D462EF64();
      v65 = sub_1D462F024();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = *(v0 + 48);
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v79 = v68;
        *v67 = 136315138;
        *(v0 + 16) = [v66 &selRef_count];
        type metadata accessor for IAFBKSInteractionFeatureDomain(0);
        v69 = sub_1D462EFB4();
        v71 = sub_1D462B8F8(v69, v70, &v79);

        *(v67 + 4) = v71;
        _os_log_impl(&dword_1D460F000, v64, v65, "Unexpected feature domain: %s.", v67, 0xCu);
        sub_1D462BEB4(v68);
        MEMORY[0x1DA6DC650](v68, -1, -1);
        MEMORY[0x1DA6DC650](v67, -1, -1);
      }

      goto LABEL_18;
    }

    v35 = MEMORY[0x1E699C288];
  }

  else
  {
    v35 = MEMORY[0x1E699C2A0];
  }

  v36 = *(v0 + 48);
  (*(v30 + 104))(v31, *v35, v29);
  v37 = [v36 *(v6 + 8)];
  if ((v37 - 1) < 3)
  {
    v38 = *(v0 + 48);
    (*(v33 + 104))(v77, **(&unk_1E848AE00 + (v37 - 1)), v32);
    v39 = sub_1D462EEE4();
    *(v0 + 104) = v39;
    *(v0 + 112) = *(v39 - 8);
    v40 = swift_task_alloc();
    *(v0 + 120) = v40;
    v41 = [v38 originalContent];
    v78 = sub_1D462EFA4();
    v43 = v42;

    v44 = [v38 generatedContent];
    v76 = sub_1D462EFA4();
    v46 = v45;

    v47 = swift_task_alloc();
    (*(v30 + 16))(v47, v31, v29);
    v48 = [v38 modelInfo];
    if (v48)
    {
      v49 = v48;
      v50 = sub_1D462EFA4();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    sub_1D46284AC(v78, v43, v76, v46, v47, v50, v52, v40);

    v74 = *(v30 + 8);
    *(v0 + 128) = v74;
    *(v0 + 136) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74(v47, v29);

    v75 = swift_task_alloc();
    *(v0 + 144) = v75;
    *v75 = v0;
    v75[1] = sub_1D462A4C4;

    return MEMORY[0x1EEE03F00](v77, 1);
  }

  v53 = v6;
  v54 = *(v0 + 48);
  v55 = sub_1D462EF64();
  v56 = sub_1D462F024();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = *(v0 + 48);
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v79 = v59;
    *v58 = 136315138;
    *(v0 + 24) = [v57 v53 + 2296];
    type metadata accessor for IAFBKSEvaluationAction(0);
    v60 = sub_1D462EFB4();
    v62 = sub_1D462B8F8(v60, v61, &v79);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_1D460F000, v55, v56, "Unexpected action: %s.", v58, 0xCu);
    sub_1D462BEB4(v59);
    MEMORY[0x1DA6DC650](v59, -1, -1);
    MEMORY[0x1DA6DC650](v58, -1, -1);
  }

  (*(v30 + 8))(v31, v29);
LABEL_18:

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_1D462A4C4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1D462A6B0;
  }

  else
  {
    v2 = sub_1D462A5D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D462A5D8()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v4 + 8))(v2, v3);
  v1(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D462A6B0()
{
  v1 = v0[19];
  v2 = v1;
  v3 = sub_1D462EF64();
  v4 = sub_1D462F024();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D460F000, v3, v4, "Unexpected error: %@.", v7, 0xCu);
    sub_1D462BF60(v8, &qword_1EC7D65A8, &qword_1D4631F08);
    MEMORY[0x1DA6DC650](v8, -1, -1);
    MEMORY[0x1DA6DC650](v7, -1, -1);
  }

  v11 = v0[16];
  v12 = v0[12];
  v13 = v0[10];
  v14 = v0[11];
  v16 = v0[8];
  v15 = v0[9];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v14 + 8))(v12, v13);
  v11(v15, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D462A9E4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D462AA8C;

  return sub_1D4629C38();
}

uint64_t sub_1D462AA8C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 24);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

id IAFeedbackServiceSwiftBridge.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IAFeedbackServiceSwiftBridge()
{
  result = qword_1EC7D66C0;
  if (!qword_1EC7D66C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7D66C0);
  }

  return result;
}

uint64_t sub_1D462AD20(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D462AD68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D462C354;

  return sub_1D462A9E4(v2, v3);
}

uint64_t sub_1D462AE14(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D462C354;

  return v6();
}

uint64_t sub_1D462AEFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D462C354;

  return sub_1D462AE14(v2, v3, v4);
}

uint64_t sub_1D462AFBC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D462B0A4;

  return v7();
}

uint64_t sub_1D462B0A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D462B198(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D462C354;

  return sub_1D462AFBC(a1, v4, v5, v6);
}

uint64_t sub_1D462B264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D462AD20(&qword_1EC7D65A0, &qword_1D4631EB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1D462C030(a3, v23 - v10, &qword_1EC7D65A0, &qword_1D4631EB0);
  v12 = sub_1D462F004();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D462BF60(v11, &qword_1EC7D65A0, &qword_1D4631EB0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D462EFF4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1D462EFE4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1D462EFC4() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1D462BF60(a3, &qword_1EC7D65A0, &qword_1D4631EB0);

    return v21;
  }

LABEL_8:
  sub_1D462BF60(a3, &qword_1EC7D65A0, &qword_1D4631EB0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1D462B560(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D462B658;

  return v6(a1);
}

uint64_t sub_1D462B658()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D462B750(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D462C354;

  return sub_1D462B560(a1, v4);
}

uint64_t sub_1D462B808(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D462B0A4;

  return sub_1D462B560(a1, v4);
}

uint64_t sub_1D462B8C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1D462B8F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D462B9C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D462C098(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1D462BEB4(v11);
  return v7;
}

unint64_t sub_1D462B9C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D462BAD0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D462F044();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1D462BAD0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D462BB1C(a1, a2);
  sub_1D462BC4C(&unk_1F4FDA690);
  return v3;
}

void *sub_1D462BB1C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D462BD38(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D462F044();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D462EFD4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D462BD38(v10, 0);
        result = sub_1D462F034();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D462BC4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D462BDAC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D462BD38(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D462AD20(&qword_1EC7D65C0, &qword_1D4631F20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D462BDAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D462AD20(&qword_1EC7D65C0, &qword_1D4631F20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1D462BEB4(void *a1)
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

void sub_1D462BF14(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1D462BF60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1D462AD20(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D462BFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D462AD20(&qword_1EC7D65B0, &qword_1D4631F10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D462C030(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1D462AD20(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D462C098(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_1D462C0F8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1D462C15C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D462C19C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D462C354;

  return sub_1D4629B90(v2, v3);
}

uint64_t sub_1D462C248()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D462C288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D462B0A4;

  return sub_1D462AFBC(a1, v4, v5, v6);
}

void sub_1D462C3AC()
{
  sub_1D4616B40();
  sub_1D4616B78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1D462C3E8(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_flagOptions(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4616B90(&dword_1D460F000, v3, v4, "[IATextInputActionsAnalytics] mergeOrConsumeAction: Unacceptable flagOptions value of %lu set for new action:%{private}@", v5, v6, v7, v8);
}

void sub_1D462C50C()
{
  sub_1D4616B84();
  v2 = objc_msgSend_description(v0, v0, v1);
  sub_1D4616ADC();
  sub_1D4616B90(&dword_1D460F000, v3, v4, "[IATextInputActionsAnalytics] didInsertText: selectedTextBefore:%{sensitive}@ withInputMode:%{private}@ called with nil text", v5, v6, v7, v8);
}

void sub_1D462C59C()
{
  sub_1D4616B40();
  sub_1D4616B78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1D462C5D8()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1D4616B4C();
  _os_log_debug_impl(&dword_1D460F000, v0, OS_LOG_TYPE_DEBUG, "[IATextInputActionsAnalytics] didDeleteBackwardText:%{sensitive}@", v1, 0xCu);
}

void sub_1D462C64C()
{
  sub_1D4616B84();
  v1 = objc_msgSend_stringForType_(IATextInputActionsUtils, v0, v0);
  sub_1D4616ADC();
  sub_1D4616B30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1D462C6EC(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringForType_(IATextInputActionsUtils, a2, a1);
  sub_1D4616ADC();
  sub_1D4616B30();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1D462C97C()
{
  sub_1D4616B4C();
  sub_1D4616B78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1D462CD04(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringForReplaceWithCandidateType_(IATextInputActionsUtils, a2, a1);
  sub_1D4616B4C();
  sub_1D4616B30();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1D462CFA4()
{
  sub_1D4616B84();
  v2 = objc_msgSend_analyticsDelegate(v0, v0, v1);
  objc_msgSend_source(v2, v3, v4);
  sub_1D4616B30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1D462D050()
{
  sub_1D4616B40();
  sub_1D4616B78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1D462D1F8()
{
  sub_1D4616B84();
  v1 = objc_msgSend_stringForType_(IATextInputActionsUtils, v0, v0);
  sub_1D4616ADC();
  sub_1D4616B30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1D462D2CC()
{
  sub_1D4616B84();
  v1 = objc_msgSend_stringForType_(IATextInputActionsUtils, v0, v0);
  sub_1D4616ADC();
  sub_1D4616B30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1D462D380(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_server(qword_1ED82C5F0, a2, a3);
  sub_1D46179E4();
  sub_1D46179FC(&dword_1D460F000, v4, v5, "sendSignal:toChannel:withPayload: server does not respond to didAction. xpc client 0x%lx with server 0x%lx", v6, v7, v8, v9);
}

void sub_1D462D418(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_server(qword_1ED82C5F0, a2, a3);
  sub_1D46179E4();
  sub_1D46179FC(&dword_1D460F000, v4, v5, "sendSignal:toChannel:withNullableSessionID:withPayload: server does not respond to didAction. xpc client 0x%lx with server 0x%lx", v6, v7, v8, v9);
}

void sub_1D462D4B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_server(qword_1ED82C5F0, a2, a3);
  sub_1D46179E4();
  sub_1D46179FC(&dword_1D460F000, v4, v5, "asyncSendSignal:toChannel:withNullableSessionID:withPayload: server does not respond to didAction. xpc client 0x%lx with server 0x%lx", v6, v7, v8, v9);
}

void sub_1D462D548(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_server(qword_1ED82C5F0, a2, a3);
  sub_1D46179E4();
  sub_1D46179FC(&dword_1D460F000, v4, v5, "sendSignal:toChannel:withNullableUniqueStringID:withPayload: server does not respond to didAction. xpc client 0x%lx with server 0x%lx", v6, v7, v8, v9);
}

void sub_1D462D5E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_server(qword_1ED82C5F0, a2, a3);
  sub_1D46179E4();
  sub_1D46179FC(&dword_1D460F000, v4, v5, "asyncSendSignal:toChannel:withNullableUniqueStringID:withPayload: server does not respond to didAction. xpc client 0x%lx with server 0x%lx", v6, v7, v8, v9);
}

void sub_1D462D78C()
{
  sub_1D461BF1C();
  *v10 = 134218240;
  *&v10[4] = v0;
  *&v10[12] = 2048;
  *&v10[14] = objc_msgSend_count(v1, v2, v3);
  sub_1D4616B90(&dword_1D460F000, v4, v5, "Attempt to access index %lu, which is out of bounds for array with capacity %lu", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

void sub_1D462D814()
{
  sub_1D461BF1C();
  v3 = v2;
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, v3, v1, @"IASTextInputActionsAnalyzer.m", 255, @"Attempt to access index %lu, which is much larger than expected", v0);
}

void sub_1D462D994(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"IASTextInputActionsAnalyzer.m", 355, @"nil raw action passed to [IASTextInputActionsAnalyzer consumeAction:]");
}

void sub_1D462DA08()
{
  sub_1D461BF1C();
  v4 = objc_msgSend_analyzerSessionId(v1, v2, v3);
  v7 = objc_msgSend_description(v4, v5, v6);
  v10 = objc_msgSend_description(v0, v8, v9);
  *v17 = 138478083;
  *&v17[4] = v7;
  *&v17[12] = 2113;
  *&v17[14] = v10;
  sub_1D4616B90(&dword_1D460F000, v11, v12, "[%{private}@]nil inputMode passed to [IASTextInputActionsAnalyzer consumeAction:] in action '%{private}@'", v13, v14, v15, v16, *v17, *&v17[8], *&v17[16]);
}

void sub_1D462DB64()
{
  sub_1D461BF1C();
  v3 = v2;
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, *(v3 + 64), *(v3 + 32), @"IASTextInputActionsAnalyzer.m", 524, @"Received sessionActions of NotYetKnown despite providing action type");

  *v0 = *(*(*v1 + 8) + 24);
}

void sub_1D462DC4C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1D460F000, a2, OS_LOG_TYPE_ERROR, "Invalid error code '%{private}@'", &v2, 0xCu);
}

void sub_1D462DE10()
{
  sub_1D462037C();
  sub_1D4620370(v1, v2, 5.7779e-34);
  sub_1D4620338(&dword_1D460F000, v3, v3, "Unable to initlialize object with name %@", v4);
}

void sub_1D462DE58(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Unable to get strong reference to datastoreHandle for object with name %@", v6, v7, v8, v9);
}

void sub_1D462DEDC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Object with name %@ is destroyed/stale", v6, v7, v8, v9);
}

void sub_1D462DFA4(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Unable to persist base properties for object with name %@", v6, v7, v8, v9);
}

void sub_1D462E028(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Unable to destroy base properties for object with name %@", v6, v7, v8, v9);
}

void sub_1D462E0AC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Counter with name %@ attempted to be set below 0", v6, v7, v8, v9);
}

void sub_1D462E130(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620350(&dword_1D460F000, v4, v5, "usageFrequency [%{private}@] month failed", v6, v7, v8, v9);
}

void sub_1D462E1B4(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620350(&dword_1D460F000, v4, v5, "usageFrequency [%{private}@] week failed", v6, v7, v8, v9);
}

void sub_1D462E238(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620350(&dword_1D460F000, v4, v5, "usageFrequency [%{private}@] daily failed", v6, v7, v8, v9);
}

void sub_1D462E2BC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Unable to update start date for daterange with name %@", v6, v7, v8, v9);
}

void sub_1D462E340(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Negative time interval found when cycling daterange with name %@", v6, v7, v8, v9);
}

void sub_1D462E3EC(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138478083;
  v3 = @"com.apple.";
  v4 = 2113;
  v5 = a1;
  _os_log_fault_impl(&dword_1D460F000, a2, OS_LOG_TYPE_FAULT, "IADefaultsDataStore datastoreName should start with '%{private}@', got '%{private}@'", &v2, 0x16u);
}

void sub_1D462E62C(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Object with name %@ cannot be deleted because it does not exist", v6, v7, v8, v9);
}

void sub_1D462E6B0(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Object with name %@ cannot be deleted because it could not be destroyed", v6, v7, v8, v9);
}

void sub_1D462E734()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1D4616B4C();
  _os_log_debug_impl(&dword_1D460F000, v0, OS_LOG_TYPE_DEBUG, "Object with name %@ cannot be acquired because it does not exist, creating it instead", v1, 0xCu);
}

void sub_1D462E7F8()
{
  sub_1D462211C(*MEMORY[0x1E69E9840]);
  sub_1D4622144();
  _os_log_error_impl(&dword_1D460F000, v0, OS_LOG_TYPE_ERROR, "Interrupted 0x%lx _connection 0x%lx _server 0x%lx", v1, 0x20u);
}

void sub_1D462E86C()
{
  sub_1D462211C(*MEMORY[0x1E69E9840]);
  sub_1D4622144();
  _os_log_error_impl(&dword_1D460F000, v0, OS_LOG_TYPE_ERROR, "Invalidated 0x%lx _connection 0x%lx _server 0x%lx", v1, 0x20u);
}

void sub_1D462E8E0(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_localizedDescription(a1, a2, a3);
  v7 = objc_msgSend_localizedFailureReason(a1, v5, v6);
  sub_1D4622164();
  sub_1D4616B90(&dword_1D460F000, v8, v9, "Error on remote object proxy: %{private}@ %{private}@", v10, v11, v12, v13);
}

void sub_1D462E984()
{
  sub_1D4627C50();
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  v5 = sub_1D4627C68(v3, v4);
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v12 = sub_1D4627C40(v6, v7, v8, v9, @"IATextInputActionsSessionAction.m", v10, @"Attempted to set insertedTextLength on an action of class %@, which does not support changing content", v11, v15, v16);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, v14);
}

void sub_1D462EA08()
{
  sub_1D4627C50();
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  v5 = sub_1D4627C68(v3, v4);
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v12 = sub_1D4627C40(v6, v7, v8, v9, @"IATextInputActionsSessionAction.m", v10, @"Attempted to set removedTextLength on an action of class %@, which does not support changing content", v11, v15, v16);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, v14);
}

void sub_1D462EA8C()
{
  sub_1D4627C50();
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  v5 = sub_1D4627C68(v3, v4);
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v12 = sub_1D4627C40(v6, v7, v8, v9, @"IATextInputActionsSessionAction.m", v10, @"Attempted to set insertedTextLength on an action of class %@, which does not support changing content", v11, v15, v16);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, v14);
}

void sub_1D462EB10()
{
  sub_1D4627C50();
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  v5 = sub_1D4627C68(v3, v4);
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v12 = sub_1D4627C40(v6, v7, v8, v9, @"IATextInputActionsSessionAction.m", v10, @"Attempted to set removedTextLength on an action of class %@, which does not support changing content", v11, v15, v16);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, v14);
}

void sub_1D462EB94()
{
  sub_1D4627C50();
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  v5 = sub_1D4627C68(v3, v4);
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v12 = sub_1D4627C40(v6, v7, v8, v9, @"IATextInputActionsSessionAction.m", v10, @"Attempted to set insertedEmojiCount on an action of class %@, which does not support changing content", v11, v15, v16);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, v14);
}

void sub_1D462EC18()
{
  sub_1D4627C50();
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  v5 = sub_1D4627C68(v3, v4);
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v12 = sub_1D4627C40(v6, v7, v8, v9, @"IATextInputActionsSessionAction.m", v10, @"Attempted to set removedEmojiCount on an action of class %@, which does not support changing content", v11, v15, v16);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, v14);
}

void sub_1D462EC9C()
{
  sub_1D4627C50();
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  v5 = sub_1D4627C68(v3, v4);
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v12 = sub_1D4627C40(v6, v7, v8, v9, @"IATextInputActionsSessionAction.m", v10, @"Attempted to set insertedPunctuationCount on an action of class %@, which does not support changing content", v11, v15, v16);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, v14);
}

void sub_1D462ED20()
{
  sub_1D4627C50();
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  v5 = sub_1D4627C68(v3, v4);
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v12 = sub_1D4627C40(v6, v7, v8, v9, @"IATextInputActionsSessionAction.m", v10, @"Attempted to set removedPunctuationCount on an action of class %@, which does not support changing content", v11, v15, v16);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, v14);
}

void sub_1D462EE40(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"IASAnalyzer.m", 66, @"To use createTimerWithDelay, queue must be set on the analyzer");
}