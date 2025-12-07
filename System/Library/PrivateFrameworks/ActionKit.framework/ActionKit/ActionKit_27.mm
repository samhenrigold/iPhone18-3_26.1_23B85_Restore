uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

id getAVSpeechSynthesisVoiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVSpeechSynthesisVoiceClass_softClass;
  v7 = getAVSpeechSynthesisVoiceClass_softClass;
  if (!getAVSpeechSynthesisVoiceClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAVSpeechSynthesisVoiceClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getAVSpeechSynthesisVoiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E06CA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVSpeechSynthesisVoiceClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __AVFoundationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C19DA0;
    v8 = 0;
    AVFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSpeechSynthesisVoice.m" lineNumber:37 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVSpeechSynthesisVoice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVSpeechSynthesisVoiceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSpeechSynthesisVoice.m" lineNumber:38 description:{@"Unable to find class %s", "AVSpeechSynthesisVoice"}];

LABEL_10:
    __break(1u);
  }

  getAVSpeechSynthesisVoiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AVFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

id getAXAlternativeVoicesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXAlternativeVoicesClass_softClass;
  v7 = getAXAlternativeVoicesClass_softClass;
  if (!getAXAlternativeVoicesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAXAlternativeVoicesClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getAXAlternativeVoicesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E06CE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAXAlternativeVoicesClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AXAlternativeVoices");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXAlternativeVoicesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAXAlternativeVoicesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesisVoice.m" lineNumber:25 description:{@"Unable to find class %s", "AXAlternativeVoices"}];

    __break(1u);
  }
}

void sub_23E06D708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAXSettingsClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AXSettings");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAXSettingsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesisVoice.m" lineNumber:41 description:{@"Unable to find class %s", "AXSettings"}];

    __break(1u);
  }
}

void *__getAXSpeechSourceKeySpeechFeaturesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXSpeechSourceKeySpeechFeatures");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSpeechSourceKeySpeechFeaturesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _WFCallUtilitiesContactsProcessingQueue()
{
  if (_WFCallUtilitiesContactsProcessingQueue_onceToken != -1)
  {
    dispatch_once(&_WFCallUtilitiesContactsProcessingQueue_onceToken, &__block_literal_global_225);
  }

  v1 = _WFCallUtilitiesContactsProcessingQueue_queue;

  return v1;
}

void sub_23E06EA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6542(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

_BYTE *NewBase64Decode(char *__s, size_t a2, void *a3)
{
  v4 = a2;
  if (a2 == -1)
  {
    v4 = strlen(__s);
  }

  result = malloc_type_malloc(3 * ((v4 + 3) >> 2), 0x100004077774924uLL);
  v7 = 0;
  if (v4)
  {
    v8 = 0;
    do
    {
      v9 = 0;
      do
      {
        v10 = base64DecodeLookup[__s[v8]];
        if (v10 != 65)
        {
          *(&v15 + v9++) = v10;
          if (v9 == 4)
          {
            ++v8;
            goto LABEL_12;
          }
        }

        ++v8;
      }

      while (v8 < v4);
      if (v9 <= 1)
      {
        goto LABEL_16;
      }

LABEL_12:
      v11 = v16;
      result[v7] = (v16 >> 4) | (4 * v15);
      if (v9 < 3)
      {
        v9 = 2;
      }

      else
      {
        v12 = v17;
        result[v7 + 1] = (v17 >> 2) | (16 * v11);
        if (v9 != 3)
        {
          result[v7 + 2] = v18 | (v12 << 6);
        }
      }

LABEL_16:
      v13 = v9 != 0;
      v14 = v9 - 1;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }

    while (v8 < v4);
  }

  if (a3)
  {
    *a3 = v7;
  }

  return result;
}

_BYTE *NewBase64Encode(uint64_t a1, unint64_t a2, int a3, void *a4)
{
  v8 = a2 / 3;
  if (a2 % 3)
  {
    ++v8;
  }

  v9 = (v8 >> 3) & 0x7FFFFFFFFFFFFFFLL;
  if (!a3)
  {
    v9 = 0;
  }

  result = malloc_type_malloc((v9 + 4 * v8) | 1, 0x100004077774924uLL);
  if (result)
  {
    v11 = 0;
    v12 = 0;
    if (a3)
    {
      v13 = 48;
    }

    else
    {
      v13 = a2;
    }

    v14 = v13;
    while (1)
    {
      v15 = v14 >= a2 ? a2 : v14;
      if (v11 + 2 >= v15)
      {
        v17 = v11;
      }

      else
      {
        do
        {
          v16 = &result[v12];
          *v16 = base64EncodeLookup[*(a1 + v11) >> 2];
          v16[1] = base64EncodeLookup[(*(a1 + v11 + 1) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*(a1 + v11) & 3))];
          v16[2] = base64EncodeLookup[(*(a1 + v11 + 2) >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (*(a1 + v11 + 1) & 0xF))];
          v17 = v11 + 3;
          v12 += 4;
          v16[3] = base64EncodeLookup[*(a1 + v11 + 2) & 0x3F];
          v18 = v11 + 5;
          v11 += 3;
        }

        while (v18 < v15);
      }

      if (v14 >= a2)
      {
        break;
      }

      *&result[v12] = 2573;
      v12 += 2;
      v14 = v15 + v13;
      v11 = v17;
    }

    v19 = v17 + 1;
    if (v17 + 1 >= a2)
    {
      if (v17 >= a2)
      {
        goto LABEL_24;
      }

      v22 = &result[v12];
      *v22 = base64EncodeLookup[*(a1 + v17) >> 2];
      v22[1] = base64EncodeLookup[16 * (*(a1 + v17) & 3)];
      v21 = 61;
    }

    else
    {
      v20 = &result[v12];
      *v20 = base64EncodeLookup[*(a1 + v17) >> 2];
      v20[1] = base64EncodeLookup[(*(a1 + v19) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*(a1 + v17) & 3))];
      v21 = base64EncodeLookup[4 * (*(a1 + v19) & 0xF)];
    }

    v23 = &result[v12];
    v23[2] = v21;
    v12 += 4;
    v23[3] = 61;
LABEL_24:
    result[v12] = 0;
    if (a4)
    {
      *a4 = v12;
    }
  }

  return result;
}

void sub_23E071D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getANAnnouncementContentClass_block_invoke(uint64_t a1)
{
  AnnounceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ANAnnouncementContent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANAnnouncementContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getANAnnouncementContentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAnnounceWrapper.m" lineNumber:25 description:{@"Unable to find class %s", "ANAnnouncementContent"}];

    __break(1u);
  }
}

id getANAnnouncementDestinationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getANAnnouncementDestinationClass_softClass;
  v7 = getANAnnouncementDestinationClass_softClass;
  if (!getANAnnouncementDestinationClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getANAnnouncementDestinationClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getANAnnouncementDestinationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E071F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getANAnnouncementRequestClass_block_invoke(uint64_t a1)
{
  AnnounceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ANAnnouncementRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANAnnouncementRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getANAnnouncementRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAnnounceWrapper.m" lineNumber:23 description:{@"Unable to find class %s", "ANAnnouncementRequest"}];

    __break(1u);
  }
}

void AnnounceLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AnnounceLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AnnounceLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278C19EF0;
    v5 = 0;
    AnnounceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AnnounceLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AnnounceLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFAnnounceWrapper.m" lineNumber:21 description:{@"%s", v3[0]}];

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

uint64_t __AnnounceLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AnnounceLibraryCore_frameworkLibrary = result;
  return result;
}

void __getANAnnouncementDestinationClass_block_invoke(uint64_t a1)
{
  AnnounceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ANAnnouncementDestination");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANAnnouncementDestinationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getANAnnouncementDestinationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAnnounceWrapper.m" lineNumber:26 description:{@"Unable to find class %s", "ANAnnouncementDestination"}];

    __break(1u);
  }
}

void __getANAnnounceClass_block_invoke(uint64_t a1)
{
  AnnounceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ANAnnounce");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANAnnounceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getANAnnounceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAnnounceWrapper.m" lineNumber:22 description:{@"Unable to find class %s", "ANAnnounce"}];

    __break(1u);
  }
}

id getAFPreferencesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFPreferencesClass_softClass;
  v7 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAFPreferencesClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getAFPreferencesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E072630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __AssistantServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C19F20;
    v8 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFAnnounceWrapper.m" lineNumber:27 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAFPreferencesClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFAnnounceWrapper.m" lineNumber:28 description:{@"Unable to find class %s", "AFPreferences"}];

LABEL_10:
    __break(1u);
  }

  getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E0729E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHFUtilitiesClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!HomeLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __HomeLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C19F08;
    v8 = 0;
    HomeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HomeLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HomeLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFAnnounceWrapper.m" lineNumber:19 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("HFUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHFUtilitiesClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFAnnounceWrapper.m" lineNumber:20 description:{@"Unable to find class %s", "HFUtilities"}];

LABEL_10:
    __break(1u);
  }

  getHFUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HomeLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HomeLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E073BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNMutableContactClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNMutableContact");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNMutableContactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNMutableContactClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAddNewContactAction.m" lineNumber:20 description:{@"Unable to find class %s", "CNMutableContact"}];

    __break(1u);
  }
}

id getCNLabeledValueClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNLabeledValueClass_softClass;
  v7 = getCNLabeledValueClass_softClass;
  if (!getCNLabeledValueClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNLabeledValueClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCNLabeledValueClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E073F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNLabeledValueClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNLabeledValue");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNLabeledValueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNLabeledValueClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAddNewContactAction.m" lineNumber:22 description:{@"Unable to find class %s", "CNLabeledValue"}];

    __break(1u);
  }
}

void ContactsLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_7210)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ContactsLibraryCore_block_invoke_7211;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278C19FF0;
    v5 = 0;
    ContactsLibraryCore_frameworkLibrary_7210 = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary_7210)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFAddNewContactAction.m" lineNumber:18 description:{@"%s", v3[0]}];

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

uint64_t __ContactsLibraryCore_block_invoke_7211(uint64_t a1)
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_7210 = result;
  return result;
}

void sub_23E074348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNPhoneNumberClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNPhoneNumber");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNPhoneNumberClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNPhoneNumberClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAddNewContactAction.m" lineNumber:23 description:{@"Unable to find class %s", "CNPhoneNumber"}];

    __break(1u);
  }
}

id getAFPreferencesClass_7598()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFPreferencesClass_softClass_7599;
  v7 = getAFPreferencesClass_softClass_7599;
  if (!getAFPreferencesClass_softClass_7599)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAFPreferencesClass_block_invoke_7600;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getAFPreferencesClass_block_invoke_7600(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E076168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAFPreferencesClass_block_invoke_7600(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_7601)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __AssistantServicesLibraryCore_block_invoke_7602;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1A030;
    v8 = 0;
    AssistantServicesLibraryCore_frameworkLibrary_7601 = _sl_dlopen();
  }

  if (!AssistantServicesLibraryCore_frameworkLibrary_7601)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSpeechRecognitionAccessResource.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAFPreferencesClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSpeechRecognitionAccessResource.m" lineNumber:19 description:{@"Unable to find class %s", "AFPreferences"}];

LABEL_10:
    __break(1u);
  }

  getAFPreferencesClass_softClass_7599 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke_7602(uint64_t a1)
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary_7601 = result;
  return result;
}

void sub_23E0790C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFDiskCacheKeyArgs(void *a1, id *a2)
{
  v3 = a1;
  v12 = a2;
  v4 = objc_opt_new();
  v5 = v3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    do
    {
      [v4 addObject:v7];
      v8 = v12++;
      v9 = *v8;

      v7 = v9;
    }

    while (v9);
  }

  v10 = [v4 componentsJoinedByString:@"_"];

  return v10;
}

uint64_t __Block_byref_object_copy__8055(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFDiskCacheKey(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  if (a1)
  {
    a1 = WFDiskCacheKeyArgs(a1, &a9);
    v9 = vars8;
  }

  return a1;
}

void sub_23E07EF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 + 40));
  _Unwind_Resume(a1);
}

void sub_23E084EAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23E0856D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPHAssetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHAssetClass_softClass;
  v7 = getPHAssetClass_softClass;
  if (!getPHAssetClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPHAssetClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getPHAssetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E08ACBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E08AED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10669(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getPHAssetCollectionChangeRequestClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAssetCollectionChangeRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetCollectionChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHAssetCollectionChangeRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFRemovePhotoFromAlbumAction.m" lineNumber:20 description:{@"Unable to find class %s", "PHAssetCollectionChangeRequest"}];

    __break(1u);
  }
}

void PhotosLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __PhotosLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278C1A408;
    v5 = 0;
    PhotosLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PhotosLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFRemovePhotoFromAlbumAction.m" lineNumber:17 description:{@"%s", v3[0]}];

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

uint64_t __PhotosLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary = result;
  return result;
}

void __getPHAssetClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHAssetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFRemovePhotoFromAlbumAction.m" lineNumber:18 description:{@"Unable to find class %s", "PHAsset"}];

    __break(1u);
  }
}

__CFString *MIMETypeForExtension(CFStringRef inTag)
{
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], inTag, 0);
  if (PreferredIdentifierForTag && (v2 = PreferredIdentifierForTag, v3 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, *MEMORY[0x277CC1F60]), CFRelease(v2), v3))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithString:v3];
    CFRelease(v3);
  }

  else
  {
    v4 = @"application/octet-stream";
  }

  return v4;
}

id getMPCAssistantMutableRemoteControlDestinationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCAssistantMutableRemoteControlDestinationClass_softClass;
  v7 = getMPCAssistantMutableRemoteControlDestinationClass_softClass;
  if (!getMPCAssistantMutableRemoteControlDestinationClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPCAssistantMutableRemoteControlDestinationClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPCAssistantMutableRemoteControlDestinationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E08D650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCAssistantMutableRemoteControlDestinationClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_10879)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MediaPlaybackCoreLibraryCore_block_invoke_10880;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1A448;
    v8 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_10879 = _sl_dlopen();
  }

  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_10879)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlaybackCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFMediaPlaybackController+MPCAssistant.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPCAssistantMutableRemoteControlDestination");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPCAssistantMutableRemoteControlDestinationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFMediaPlaybackController+MPCAssistant.m" lineNumber:17 description:{@"Unable to find class %s", "MPCAssistantMutableRemoteControlDestination"}];

LABEL_10:
    __break(1u);
  }

  getMPCAssistantMutableRemoteControlDestinationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_10880(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_10879 = result;
  return result;
}

void sub_23E08F184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIVideoEditorControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_11151)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __UIKitLibraryCore_block_invoke_11152;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1A4F8;
    v8 = 0;
    UIKitLibraryCore_frameworkLibrary_11151 = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary_11151)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFTrimVideoAction.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("UIVideoEditorController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIVideoEditorControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFTrimVideoAction.m" lineNumber:17 description:{@"Unable to find class %s", "UIVideoEditorController"}];

LABEL_10:
    __break(1u);
  }

  getUIVideoEditorControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_11152(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_11151 = result;
  return result;
}

void sub_23E08F7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void TranslationLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!TranslationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __TranslationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278C1A588;
    v5 = 0;
    TranslationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TranslationLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *TranslationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFTranslateTextAction.m" lineNumber:18 description:{@"%s", v3[0]}];

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

uint64_t __TranslationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  TranslationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E08FED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_LTTranslatorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_LTTranslatorClass_softClass;
  v7 = get_LTTranslatorClass_softClass;
  if (!get_LTTranslatorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_LTTranslatorClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __get_LTTranslatorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E08FFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11266(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getRTRoutineManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTRoutineManagerClass_softClass_11675;
  v7 = getRTRoutineManagerClass_softClass_11675;
  if (!getRTRoutineManagerClass_softClass_11675)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRTRoutineManagerClass_block_invoke_11676;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getRTRoutineManagerClass_block_invoke_11676(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E09354C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRTRoutineManagerClass_block_invoke_11676(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreRoutineLibraryCore_frameworkLibrary_11677)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreRoutineLibraryCore_block_invoke_11678;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1A7D8;
    v8 = 0;
    CoreRoutineLibraryCore_frameworkLibrary_11677 = _sl_dlopen();
  }

  if (!CoreRoutineLibraryCore_frameworkLibrary_11677)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreRoutineLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSetParkedCarAction.m" lineNumber:26 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("RTRoutineManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getRTRoutineManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSetParkedCarAction.m" lineNumber:31 description:{@"Unable to find class %s", "RTRoutineManager"}];

LABEL_10:
    __break(1u);
  }

  getRTRoutineManagerClass_softClass_11675 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreRoutineLibraryCore_block_invoke_11678(uint64_t a1)
{
  result = _sl_dlopen();
  CoreRoutineLibraryCore_frameworkLibrary_11677 = result;
  return result;
}

void sub_23E093EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationClass_block_invoke_11714(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_11715)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreLocationLibraryCore_block_invoke_11716;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1A7F0;
    v8 = 0;
    CoreLocationLibraryCore_frameworkLibrary_11715 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_11715)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSetParkedCarAction.m" lineNumber:27 description:{@"%s", v6[0]}];

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
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSetParkedCarAction.m" lineNumber:34 description:{@"Unable to find class %s", "CLLocation"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationClass_softClass_11713 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_11716(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_11715 = result;
  return result;
}

Class initUIDidTakeScreenshotAction()
{
  if (UIKitLibrary_sOnce_11837 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_11837, &__block_literal_global_292);
  }

  result = objc_getClass("UIDidTakeScreenshotAction");
  classUIDidTakeScreenshotAction = result;
  getUIDidTakeScreenshotActionClass = UIDidTakeScreenshotActionFunction;
  return result;
}

void *__UIKitLibrary_block_invoke_11840()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_11842 = result;
  return result;
}

void sub_23E096614(_Unwind_Exception *a1)
{
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

void release_surface_data(__IOSurface *a1)
{
  if (a1)
  {
    IOSurfaceUnlock(a1, 1u, 0);

    CFRelease(a1);
  }
}

uint64_t (*initSBFlashColor(uint64_t a1, float a2, float a3, float a4))(float, float, float)
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_11858);
  }

  result = dlsym(SpringBoardServicesLibrary_sLib, "SBFlashColor");
  softLinkSBFlashColor = result;
  if (result)
  {
    v9.n128_f32[0] = a2;
    v10.n128_f32[0] = a3;
    v11.n128_f32[0] = a4;

    return (result)(a1, v9, v10, v11);
  }

  return result;
}

void *__SpringBoardServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 2);
  SpringBoardServicesLibrary_sLib = result;
  return result;
}

__n128 (*initSBSSpringBoardServerPort())(void)
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_11858);
  }

  result = dlsym(SpringBoardServicesLibrary_sLib, "SBSSpringBoardServerPort");
  softLinkSBSSpringBoardServerPort = result;
  if (result)
  {

    return (result)();
  }

  return result;
}

void sub_23E098570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKDisplayTypeControllerClass_block_invoke_12114(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!HealthUILibraryCore_frameworkLibrary_12116)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __HealthUILibraryCore_block_invoke_12117;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1AA30;
    v8 = 0;
    HealthUILibraryCore_frameworkLibrary_12116 = _sl_dlopen();
  }

  if (!HealthUILibraryCore_frameworkLibrary_12116)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HealthUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFHKSampleContentItem.m" lineNumber:20 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("HKDisplayTypeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHKDisplayTypeControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFHKSampleContentItem.m" lineNumber:21 description:{@"Unable to find class %s", "HKDisplayTypeController"}];

LABEL_10:
    __break(1u);
  }

  getHKDisplayTypeControllerClass_softClass_12113 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HealthUILibraryCore_block_invoke_12117(uint64_t a1)
{
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary_12116 = result;
  return result;
}

void sub_23E099D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12146(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getMPMediaQueryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaQueryClass_softClass_12331;
  v7 = getMPMediaQueryClass_softClass_12331;
  if (!getMPMediaQueryClass_softClass_12331)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaQueryClass_block_invoke_12332;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPMediaQueryClass_block_invoke_12332(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E09B5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaQueryClass_block_invoke_12332(uint64_t a1)
{
  MediaPlayerLibrary_12333();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass_12331 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:33 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void *MediaPlayerLibrary_12333()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_12342)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_12343;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1ABA0;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_12342 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_12342;
  if (!MediaPlayerLibraryCore_frameworkLibrary_12342)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:29 description:{@"%s", v4[0]}];

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

uint64_t __MediaPlayerLibraryCore_block_invoke_12343(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_12342 = result;
  return result;
}

void __getMPMusicPlayerControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_12333();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMusicPlayerController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMusicPlayerControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMusicPlayerControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:30 description:{@"Unable to find class %s", "MPMusicPlayerController"}];

    __break(1u);
  }
}

id getMPCAssistantCommandClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCAssistantCommandClass_softClass;
  v7 = getMPCAssistantCommandClass_softClass;
  if (!getMPCAssistantCommandClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPCAssistantCommandClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPCAssistantCommandClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E09C180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPCAssistantCommandClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary_12353();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCAssistantCommand");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCAssistantCommandClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPCAssistantCommandClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:41 description:{@"Unable to find class %s", "MPCAssistantCommand"}];

    __break(1u);
  }
}

void MediaPlaybackCoreLibrary_12353()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_12355)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __MediaPlaybackCoreLibraryCore_block_invoke_12356;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278C1ABB8;
    v5 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary_12355 = _sl_dlopen();
  }

  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary_12355)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlaybackCoreLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFPlayMusicAction.m" lineNumber:40 description:{@"%s", v3[0]}];

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

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke_12356(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary_12355 = result;
  return result;
}

void sub_23E09C7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPCAssistantStoreTracklistPlaybackQueueClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary_12353();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCAssistantStoreTracklistPlaybackQueue");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCAssistantStoreTracklistPlaybackQueueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPCAssistantStoreTracklistPlaybackQueueClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:42 description:{@"Unable to find class %s", "MPCAssistantStoreTracklistPlaybackQueue"}];

    __break(1u);
  }
}

void __getMPCAssistantQueryPlaybackQueueClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary_12353();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCAssistantQueryPlaybackQueue");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCAssistantQueryPlaybackQueueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPCAssistantQueryPlaybackQueueClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:43 description:{@"Unable to find class %s", "MPCAssistantQueryPlaybackQueue"}];

    __break(1u);
  }
}

void sub_23E09D058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaPropertyPredicateClass_block_invoke_12368(uint64_t a1)
{
  MediaPlayerLibrary_12333();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPropertyPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass_12367 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaPropertyPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:35 description:{@"Unable to find class %s", "MPMediaPropertyPredicate"}];

    __break(1u);
  }
}

void *__getMPMediaItemPropertyIsPlayableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_12333();
  result = dlsym(v2, "MPMediaItemPropertyIsPlayable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyIsPlayableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E09D498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPPlaybackArchiveClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_12333();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPPlaybackArchive");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPPlaybackArchiveClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPPlaybackArchiveClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:32 description:{@"Unable to find class %s", "MPPlaybackArchive"}];

    __break(1u);
  }
}

void sub_23E09D8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaItemCollectionClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_12333();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaItemCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaItemCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaItemCollectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlayMusicAction.m" lineNumber:31 description:{@"Unable to find class %s", "MPMediaItemCollection"}];

    __break(1u);
  }
}

void sub_23E09E3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVSystemControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MediaExperienceLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1AC48;
    v8 = 0;
    MediaExperienceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFDevice+SystemSettings.m" lineNumber:23 description:{@"%s", v6[0]}];

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
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVSystemControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFDevice+SystemSettings.m" lineNumber:24 description:{@"Unable to find class %s", "AVSystemController"}];

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

id WFPinboardGetSecretForUsername(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = WFKeychainWithIdentifier(a2);
  v5 = [v4 dataForKey:v3];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

WFKeychain *WFKeychainWithIdentifier(uint64_t a1)
{
  v1 = [@"is.workflow.my.app.pinboard.%@" stringByAppendingString:a1];
  v2 = [WFKeychain alloc];
  v3 = [(WFKeychain *)v2 initWithService:v1 accessGroup:*MEMORY[0x277CFC730]];

  return v3;
}

uint64_t WFPinboardStoreSecretForUsername(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = WFKeychainWithIdentifier(a3);
  v8 = [v5 dataUsingEncoding:4];

  v9 = [v7 setData:v8 forKey:v6];
  return v9;
}

id WFRemoveNull(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __WFRemoveNull_block_invoke;
    v13[3] = &unk_278C1DE20;
    v14 = v2;
    v3 = v2;
    [v1 enumerateKeysAndObjectsUsingBlock:v13];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];
    v5 = v14;
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithArray:v1];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __WFRemoveNull_block_invoke_2;
    v11 = &unk_278C1AD20;
    v12 = v6;
    v3 = v6;
    [v1 enumerateObjectsUsingBlock:&v8];
    v4 = [MEMORY[0x277CBEA60] arrayWithArray:{v3, v8, v9, v10, v11}];
    v5 = v12;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v4 = v1;
  }

LABEL_6:

  return v4;
}

void __WFRemoveNull_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = WFRemoveNull(a3);
  v7 = *(a1 + 32);
  v8 = v6;
  if (v6)
  {
    [v7 setObject:v6 forKey:v5];
  }

  else
  {
    [v7 removeObjectForKey:v5];
  }
}

void __WFRemoveNull_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WFRemoveNull(v3);
  v5 = *(a1 + 32);
  v7 = v4;
  if (v4)
  {
    v6 = [v5 indexOfObject:v3];

    [v5 replaceObjectAtIndex:v6 withObject:v7];
  }

  else
  {
    [v5 removeObjectIdenticalTo:v3];
  }
}

void WFConfigureRequestBodyWithFile(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v8 = [v3 inputStream];
    v5 = [v3 fileSize];
    v6 = [v3 wfType];

    v7 = [v6 MIMEType];
    WFConfigureRequestBody(v4, v8, v5, v7, 0);
  }
}

void WFConfigureRequestBody(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v13 = a1;
  v9 = a4;
  [v13 setHTTPBodyStream:a2];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", a3];
  if (a5)
  {
    [v13 setValue:v10 forHTTPHeaderField:@"Content-Length"];
    [v13 setValue:v9 forHTTPHeaderField:@"Content-Type"];
  }

  else
  {
    v11 = [v13 valueForHTTPHeaderField:@"Content-Length"];

    if (!v11)
    {
      [v13 addValue:v10 forHTTPHeaderField:@"Content-Length"];
    }

    v12 = [v13 valueForHTTPHeaderField:@"Content-Type"];

    if (!v12)
    {
      [v13 addValue:v9 forHTTPHeaderField:@"Content-Type"];
    }
  }
}

void __WFConfigureRequestBodyWithMultipartFormDictionary_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) objectForKey:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __WFConfigureRequestBodyWithMultipartFormDictionary_block_invoke_2;
    v9[3] = &unk_278C211A8;
    v10 = *(a1 + 40);
    v11 = v6;
    v12 = v7;
    [v8 getFileRepresentation:v9 forType:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) addPartWithName:v6 string:v8];
    }

    (*(v7 + 2))(v7, 0);
  }
}

void __WFConfigureRequestBodyWithMultipartFormDictionary_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = a3;
  v6 = [v5 length];
  v7 = MEMORY[0x277CCACA8];
  v8 = [*(a1 + 40) boundary];
  v9 = [v7 stringWithFormat:@"multipart/form-data boundary=%@", v8];;
  WFConfigureRequestBody(v4, v5, v6, v9, 1);

  (*(*(a1 + 48) + 16))();
}

void __WFConfigureRequestBodyWithMultipartFormDictionary_block_invoke_2(void *a1, void *a2, void *a3)
{
  v11 = a3;
  if (a2)
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a2;
    v8 = [v7 filename];
    v9 = [v7 inputStream];
    v10 = [v7 fileSize];

    [v5 addPartWithName:v6 filename:v8 stream:v9 streamLength:v10];
  }

  (*(a1[6] + 16))();
}

id getPDFDocumentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPDFDocumentClass_softClass;
  v7 = getPDFDocumentClass_softClass;
  if (!getPDFDocumentClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPDFDocumentClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getPDFDocumentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0AFF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPDFDocumentClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!PDFKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __PDFKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1AE80;
    v8 = 0;
    PDFKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PDFKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PDFKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSplitPDFAction.m" lineNumber:15 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PDFDocument");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPDFDocumentClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSplitPDFAction.m" lineNumber:16 description:{@"Unable to find class %s", "PDFDocument"}];

LABEL_10:
    __break(1u);
  }

  getPDFDocumentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PDFKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PDFKitLibraryCore_frameworkLibrary = result;
  return result;
}

id WFHealthKitAllAvailableUnits()
{
  if (WFHealthKitAllAvailableUnits_onceToken != -1)
  {
    dispatch_once(&WFHealthKitAllAvailableUnits_onceToken, &__block_literal_global_14071);
  }

  v1 = WFHealthKitAllAvailableUnits_units;

  return v1;
}

void __WFHealthKitAllAvailableUnits_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v0 pathForResource:@"WFHealthKitConstants" ofType:@"plist"];

  v1 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v20];
  v2 = [v1 objectForKeyedSubscript:@"Units"];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"group == 'si'"];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"group == 'non_si'"];
  v6 = [v2 filteredArrayUsingPredicate:v5];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"group == 'compound'"];
  v8 = [v2 filteredArrayUsingPredicate:v7];

  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = [v10 localeIdentifier];
  v12 = [v11 isEqualToString:@"en_US"];

  if (v12)
  {
    v13 = v6;
  }

  else
  {
    v13 = v4;
  }

  if (v12)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  v15 = [v13 sortedArrayUsingComparator:&__block_literal_global_493];
  [v9 addObjectsFromArray:v15];

  v16 = [v14 sortedArrayUsingComparator:&__block_literal_global_493];
  [v9 addObjectsFromArray:v16];

  v17 = [v8 sortedArrayUsingComparator:&__block_literal_global_493];
  [v9 addObjectsFromArray:v17];

  v18 = [v9 if_map:&__block_literal_global_504];
  v19 = WFHealthKitAllAvailableUnits_units;
  WFHealthKitAllAvailableUnits_units = v18;
}

id __WFHealthKitAllAvailableUnits_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"unitString"];
  v3 = [MEMORY[0x277CCDAB0] unitFromString:v2];

  return v3;
}

uint64_t __WFHealthKitAllAvailableUnits_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"important"];
  v6 = [v5 BOOLValue];

  v7 = [v4 objectForKeyedSubscript:@"important"];

  v8 = [v7 BOOLValue];
  v9 = 1;
  if (!(v8 & 1 | ((v6 & 1) == 0)))
  {
    v9 = -1;
  }

  if (v6 != v8)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

id WFHealthKitReadableCharacteristicTypeToCharacteristicTypeIdentifierDictionary()
{
  if (WFHealthKitReadableCharacteristicTypeToCharacteristicTypeIdentifierDictionary_onceToken != -1)
  {
    dispatch_once(&WFHealthKitReadableCharacteristicTypeToCharacteristicTypeIdentifierDictionary_onceToken, &__block_literal_global_510);
  }

  v1 = WFHealthKitReadableCharacteristicTypeToCharacteristicTypeIdentifierDictionary_dictionary;

  return v1;
}

void __WFHealthKitReadableCharacteristicTypeToCharacteristicTypeIdentifierDictionary_block_invoke(uint64_t a1, uint64_t a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedContentPropertyNameMarker(@"Biological Sex");
  v8[0] = v2;
  v9[0] = *MEMORY[0x277CCBB08];
  v3 = WFLocalizedContentPropertyNameMarker(@"Blood Type");
  v8[1] = v3;
  v9[1] = *MEMORY[0x277CCBB10];
  v4 = WFLocalizedContentPropertyNameMarker(@"Date of Birth");
  v8[2] = v4;
  v9[2] = *MEMORY[0x277CCBB18];
  v5 = WFLocalizedContentPropertyNameMarker(@"Wheelchair Use");
  v8[3] = v5;
  v9[3] = *MEMORY[0x277CCBB28];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];
  v7 = WFHealthKitReadableCharacteristicTypeToCharacteristicTypeIdentifierDictionary_dictionary;
  WFHealthKitReadableCharacteristicTypeToCharacteristicTypeIdentifierDictionary_dictionary = v6;
}

id WFHealthKitReadableCharacteristicTypes()
{
  if (WFHealthKitReadableCharacteristicTypes_onceToken != -1)
  {
    dispatch_once(&WFHealthKitReadableCharacteristicTypes_onceToken, &__block_literal_global_512);
  }

  v1 = WFHealthKitReadableCharacteristicTypes_readableTypes;

  return v1;
}

void __WFHealthKitReadableCharacteristicTypes_block_invoke(uint64_t a1, uint64_t a2)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedContentPropertyNameMarker(@"Biological Sex");
  v7[0] = v2;
  v3 = WFLocalizedContentPropertyNameMarker(@"Blood Type");
  v7[1] = v3;
  v4 = WFLocalizedContentPropertyNameMarker(@"Date of Birth");
  v7[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v6 = WFHealthKitReadableCharacteristicTypes_readableTypes;
  WFHealthKitReadableCharacteristicTypes_readableTypes = v5;
}

id WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary()
{
  if (WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary_onceToken != -1)
  {
    dispatch_once(&WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary_onceToken, &__block_literal_global_515);
  }

  v1 = WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary_dictionary;

  return v1;
}

void __WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary_block_invoke()
{
  v67[166] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCCC70];
  v66[0] = @"Steps";
  v66[1] = @"Active Calories";
  v1 = *MEMORY[0x277CCC918];
  v67[0] = v0;
  v67[1] = v1;
  v2 = *MEMORY[0x277CCC920];
  v66[2] = @"Exercise Time";
  v66[3] = @"Move Time";
  v3 = *MEMORY[0x277CCC928];
  v67[2] = v2;
  v67[3] = v3;
  v4 = *MEMORY[0x277CCC940];
  v66[4] = @"Stand Time";
  v66[5] = @"Walking Steadiness";
  v5 = *MEMORY[0x277CCC948];
  v67[4] = v4;
  v67[5] = v5;
  v6 = *MEMORY[0x277CCC960];
  v66[6] = @"Resting Calories";
  v66[7] = @"Cycling Distance";
  v7 = *MEMORY[0x277CCCB10];
  v67[6] = v6;
  v67[7] = v7;
  v8 = *MEMORY[0x277CCCB18];
  v66[8] = @"Snow Sports Distance";
  v66[9] = @"Swimming Distance";
  v9 = *MEMORY[0x277CCCB38];
  v67[8] = v8;
  v67[9] = v9;
  v10 = *MEMORY[0x277CCCB40];
  v66[10] = @"Walking + Running Distance";
  v66[11] = @"Wheelchair Distance";
  v11 = *MEMORY[0x277CCCB48];
  v67[10] = v10;
  v67[11] = v11;
  v12 = *MEMORY[0x277CCCB70];
  v66[12] = @"Flights Climbed";
  v66[13] = @"Nike Fuel";
  v13 = *MEMORY[0x277CCCBD0];
  v67[12] = v12;
  v67[13] = v13;
  v14 = *MEMORY[0x277CCCC10];
  v66[14] = @"Wheelchair Push Count";
  v66[15] = @"Running Ground Contact Time";
  v15 = *MEMORY[0x277CCCC30];
  v67[14] = v14;
  v67[15] = v15;
  v16 = *MEMORY[0x277CCCC38];
  v66[16] = @"Running Power";
  v66[17] = @"Running Speed";
  v17 = *MEMORY[0x277CCCC40];
  v67[16] = v16;
  v67[17] = v17;
  v18 = *MEMORY[0x277CCCC48];
  v66[18] = @"Running Stride Length";
  v66[19] = @"Running Vertical Oscillation";
  v19 = *MEMORY[0x277CCCC50];
  v67[18] = v18;
  v67[19] = v19;
  v20 = *MEMORY[0x277CCCC58];
  v66[20] = @"Six-Minute Walk";
  v66[21] = @"Stair Speed: Up";
  v21 = *MEMORY[0x277CCCC60];
  v67[20] = v20;
  v67[21] = v21;
  v22 = *MEMORY[0x277CCCC68];
  v66[22] = @"Stair Speed: Down";
  v66[23] = @"Swimming Stroke Count";
  v23 = *MEMORY[0x277CCCC78];
  v67[22] = v22;
  v67[23] = v23;
  v24 = *MEMORY[0x277CCCC88];
  v66[24] = @"UV Index";
  v66[25] = @"VO2 Max";
  v25 = *MEMORY[0x277CCCC98];
  v67[24] = v24;
  v67[25] = v25;
  v26 = *MEMORY[0x277CCCCA8];
  v66[26] = @"Walking Asymmetry";
  v66[27] = @"Double Support Time";
  v27 = *MEMORY[0x277CCCCB0];
  v67[26] = v26;
  v67[27] = v27;
  v28 = *MEMORY[0x277CCCCC0];
  v66[28] = @"Walking Speed";
  v66[29] = @"Step Length";
  v29 = *MEMORY[0x277CCCCC8];
  v67[28] = v28;
  v67[29] = v29;
  v30 = *MEMORY[0x277CCC938];
  v66[30] = @"Sleep Wrist Temperature";
  v66[31] = @"Body Fat Percentage";
  v31 = *MEMORY[0x277CCC988];
  v67[30] = v30;
  v67[31] = v31;
  v32 = *MEMORY[0x277CCC990];
  v66[32] = @"Weight";
  v66[33] = @"Body Mass Index";
  v33 = *MEMORY[0x277CCC998];
  v67[32] = v32;
  v67[33] = v33;
  v34 = *MEMORY[0x277CCCBA8];
  v66[34] = @"Height";
  v66[35] = @"Lean Body Mass";
  v35 = *MEMORY[0x277CCCBC8];
  v67[34] = v34;
  v67[35] = v35;
  v36 = *MEMORY[0x277CCCCA0];
  v66[36] = @"Waist Circumference";
  v66[37] = @"Atrial Fibrillation Burden";
  v37 = *MEMORY[0x277CCC950];
  v67[36] = v36;
  v67[37] = v37;
  v38 = *MEMORY[0x277CCC958];
  v66[38] = @"Basal Body Temperature";
  v66[39] = @"Diastolic Blood Pressure";
  v39 = *MEMORY[0x277CCC978];
  v67[38] = v38;
  v67[39] = v39;
  v40 = *MEMORY[0x277CCC980];
  v66[40] = @"Systolic Blood Pressure";
  v66[41] = @"Body Temperature";
  v41 = *MEMORY[0x277CCC9A0];
  v67[40] = v40;
  v67[41] = v41;
  v42 = *MEMORY[0x277CCCB90];
  v66[42] = @"Heart Rate";
  v66[43] = @"Heart Rate Recovery, 1 min";
  v43 = *MEMORY[0x277CCCB98];
  v67[42] = v42;
  v67[43] = v43;
  v44 = *MEMORY[0x277CCCBA0];
  v66[44] = @"Heart Rate Variability";
  v66[45] = @"Respiratory Rate";
  v45 = *MEMORY[0x277CCCC18];
  v67[44] = v44;
  v67[45] = v45;
  v46 = *MEMORY[0x277CCCC20];
  v66[46] = @"Resting Heart Rate";
  v66[47] = @"Walking Heart Rate Average";
  v47 = *MEMORY[0x277CCCCB8];
  v67[46] = v46;
  v67[47] = v47;
  v48 = *MEMORY[0x277CCC968];
  v66[48] = @"Blood Alcohol Content";
  v66[49] = @"Blood Glucose";
  v49 = *MEMORY[0x277CCC970];
  v67[48] = v48;
  v67[49] = v49;
  v50 = *MEMORY[0x277CCCB50];
  v66[50] = @"Electrodermal Activity";
  v66[51] = @"Environmental Audio Exposure";
  v51 = *MEMORY[0x277CCCB58];
  v67[50] = v50;
  v67[51] = v51;
  v52 = *MEMORY[0x277CCCB78];
  v66[52] = @"Forced Expiratory Volume, 1 sec";
  v66[53] = @"Forced Vital Capacity";
  v53 = *MEMORY[0x277CCCB80];
  v67[52] = v52;
  v67[53] = v53;
  v54 = *MEMORY[0x277CCCB88];
  v66[54] = @"Headphone Audio Exposure";
  v66[55] = @"Inhaler Usage";
  v55 = *MEMORY[0x277CCCBB8];
  v67[54] = v54;
  v67[55] = v55;
  v56 = *MEMORY[0x277CCCBC0];
  v66[56] = @"Insulin Delivery";
  v66[57] = @"Number of Alcoholic Beverages";
  v57 = *MEMORY[0x277CCCBD8];
  v67[56] = v56;
  v67[57] = v57;
  v58 = *MEMORY[0x277CCCBE0];
  v66[58] = @"Number of Times Fallen";
  v66[59] = @"Oxygen Saturation";
  v59 = *MEMORY[0x277CCCBE8];
  v67[58] = v58;
  v67[59] = v59;
  v60 = *MEMORY[0x277CCCBF8];
  v66[60] = @"Peak Expiratory Flow Rate";
  v66[61] = @"Peripheral Perfusion Index";
  v61 = *MEMORY[0x277CCCC00];
  v67[60] = v60;
  v67[61] = v61;
  v62 = *MEMORY[0x277CCC9D0];
  v66[62] = @"Biotin";
  v66[63] = @"Caffeine";
  v63 = *MEMORY[0x277CCC9D8];
  v67[62] = v62;
  v67[63] = v63;
  v66[64] = @"Calcium";
  v67[64] = *MEMORY[0x277CCC9E0];
  v66[65] = @"Carbohydrates";
  v67[65] = *MEMORY[0x277CCC9E8];
  v66[66] = @"Chloride";
  v67[66] = *MEMORY[0x277CCC9F0];
  v66[67] = @"Dietary Cholesterol";
  v67[67] = *MEMORY[0x277CCC9F8];
  v66[68] = @"Chromium";
  v67[68] = *MEMORY[0x277CCCA00];
  v66[69] = @"Copper";
  v67[69] = *MEMORY[0x277CCCA08];
  v66[70] = @"Dietary Calories";
  v67[70] = *MEMORY[0x277CCCA10];
  v66[71] = @"Monounsaturated Fat";
  v67[71] = *MEMORY[0x277CCCA18];
  v66[72] = @"Polyunsaturated Fat";
  v67[72] = *MEMORY[0x277CCCA20];
  v66[73] = @"Saturated Fat";
  v67[73] = *MEMORY[0x277CCCA28];
  v66[74] = @"Total Fat";
  v67[74] = *MEMORY[0x277CCCA30];
  v66[75] = @"Fiber";
  v67[75] = *MEMORY[0x277CCCA38];
  v66[76] = @"Folate";
  v67[76] = *MEMORY[0x277CCCA40];
  v66[77] = @"Iodine";
  v67[77] = *MEMORY[0x277CCCA48];
  v66[78] = @"Iron";
  v67[78] = *MEMORY[0x277CCCA50];
  v66[79] = @"Magnesium";
  v67[79] = *MEMORY[0x277CCCA58];
  v66[80] = @"Manganese";
  v67[80] = *MEMORY[0x277CCCA60];
  v66[81] = @"Molybdenum";
  v67[81] = *MEMORY[0x277CCCA68];
  v66[82] = @"Niacin";
  v67[82] = *MEMORY[0x277CCCA70];
  v66[83] = @"Pantothenic Acid";
  v67[83] = *MEMORY[0x277CCCA78];
  v66[84] = @"Phosphorus";
  v67[84] = *MEMORY[0x277CCCA80];
  v66[85] = @"Potassium";
  v67[85] = *MEMORY[0x277CCCA88];
  v66[86] = @"Protein";
  v67[86] = *MEMORY[0x277CCCA90];
  v66[87] = @"Riboflavin";
  v67[87] = *MEMORY[0x277CCCA98];
  v66[88] = @"Selenium";
  v67[88] = *MEMORY[0x277CCCAA0];
  v66[89] = @"Sodium";
  v67[89] = *MEMORY[0x277CCCAA8];
  v66[90] = @"Sugar";
  v67[90] = *MEMORY[0x277CCCAB0];
  v66[91] = @"Thiamin";
  v67[91] = *MEMORY[0x277CCCAB8];
  v66[92] = @"Vitamin A";
  v67[92] = *MEMORY[0x277CCCAC0];
  v66[93] = @"Vitamin B12";
  v67[93] = *MEMORY[0x277CCCAC8];
  v66[94] = @"Vitamin B6";
  v67[94] = *MEMORY[0x277CCCAD0];
  v66[95] = @"Vitamin C";
  v67[95] = *MEMORY[0x277CCCAD8];
  v66[96] = @"Vitamin D";
  v67[96] = *MEMORY[0x277CCCAE0];
  v66[97] = @"Vitamin E";
  v67[97] = *MEMORY[0x277CCCAE8];
  v66[98] = @"Vitamin K";
  v67[98] = *MEMORY[0x277CCCAF0];
  v66[99] = @"Water";
  v67[99] = *MEMORY[0x277CCCAF8];
  v66[100] = @"Zinc";
  v67[100] = *MEMORY[0x277CCCB00];
  v66[101] = @"Underwater Depth";
  v67[101] = *MEMORY[0x277CCCC90];
  v66[102] = @"Water Temperature";
  v67[102] = *MEMORY[0x277CCCCD0];
  v66[103] = @"Abdominal Cramps";
  v67[103] = *MEMORY[0x277CCB8C8];
  v66[104] = @"Acne";
  v67[104] = *MEMORY[0x277CCB8D0];
  v66[105] = @"Appetite Changes";
  v67[105] = *MEMORY[0x277CCB8D8];
  v66[106] = @"Stand Hour";
  v67[106] = *MEMORY[0x277CCB8E0];
  v66[107] = @"Walking Steadiness Event";
  v67[107] = *MEMORY[0x277CCB8E8];
  v66[108] = @"Bladder Incontinence";
  v67[108] = *MEMORY[0x277CCB8F0];
  v66[109] = @"Bloating";
  v67[109] = *MEMORY[0x277CCB908];
  v66[110] = @"Breast Pain";
  v67[110] = *MEMORY[0x277CCB910];
  v66[111] = @"Cervical Mucus Quality";
  v67[111] = *MEMORY[0x277CCB918];
  v66[112] = @"Chest Tightness or Pain";
  v67[112] = *MEMORY[0x277CCB920];
  v66[113] = @"Chills";
  v67[113] = *MEMORY[0x277CCB928];
  v66[114] = @"Constipation";
  v67[114] = *MEMORY[0x277CCB930];
  v66[115] = @"Contraceptive";
  v67[115] = *MEMORY[0x277CCB938];
  v66[116] = @"Coughing";
  v67[116] = *MEMORY[0x277CCB940];
  v66[117] = @"Diarrhea";
  v67[117] = *MEMORY[0x277CCB948];
  v66[118] = @"Dizziness";
  v67[118] = *MEMORY[0x277CCB950];
  v66[119] = @"Dry Skin";
  v67[119] = *MEMORY[0x277CCB958];
  v66[120] = @"Fainting";
  v67[120] = *MEMORY[0x277CCB968];
  v66[121] = @"Fatigue";
  v67[121] = *MEMORY[0x277CCB970];
  v66[122] = @"Fever";
  v67[122] = *MEMORY[0x277CCB978];
  v66[123] = @"Generalized Body Ache";
  v67[123] = *MEMORY[0x277CCB980];
  v66[124] = @"Hair Loss";
  v67[124] = *MEMORY[0x277CCB988];
  v66[125] = @"Handwashing";
  v67[125] = *MEMORY[0x277CCB990];
  v66[126] = @"Headache";
  v67[126] = *MEMORY[0x277CCB998];
  v66[127] = @"Heartburn";
  v67[127] = *MEMORY[0x277CCB9B0];
  v66[128] = @"High Heart Rate";
  v67[128] = *MEMORY[0x277CCB9B8];
  v66[129] = @"Hot Flashes";
  v67[129] = *MEMORY[0x277CCB9C0];
  v66[130] = @"Infrequent Menstrual Cycles";
  v67[130] = *MEMORY[0x277CCB9D0];
  v66[131] = @"Irregular Heart Rhythm";
  v67[131] = *MEMORY[0x277CCB9E0];
  v66[132] = @"Irregular Menstrual Cycles";
  v67[132] = *MEMORY[0x277CCB9E8];
  v66[133] = @"Lactation";
  v67[133] = *MEMORY[0x277CCB9F0];
  v66[134] = @"Loss of Smell";
  v67[134] = *MEMORY[0x277CCB9F8];
  v66[135] = @"Loss of Taste";
  v67[135] = *MEMORY[0x277CCBA00];
  v66[136] = @"Low Cardio Fitness";
  v67[136] = *MEMORY[0x277CCBA08];
  v66[137] = @"Lower Back Pain";
  v67[137] = *MEMORY[0x277CCBA18];
  v66[138] = @"Low Heart Rate";
  v67[138] = *MEMORY[0x277CCBA10];
  v66[139] = @"Memory Lapse";
  v67[139] = *MEMORY[0x277CCBA20];
  v66[140] = @"Menstruation";
  v67[140] = *MEMORY[0x277CCBA28];
  v66[141] = @"Mindful Session";
  v67[141] = *MEMORY[0x277CCBA30];
  v66[142] = @"Mood Changes";
  v67[142] = *MEMORY[0x277CCBA38];
  v66[143] = @"Nausea";
  v67[143] = *MEMORY[0x277CCBA40];
  v66[144] = @"Night Sweats";
  v67[144] = *MEMORY[0x277CCBA48];
  v66[145] = @"Ovulation Test Result";
  v67[145] = *MEMORY[0x277CCBA50];
  v66[146] = @"Pelvic Pain";
  v67[146] = *MEMORY[0x277CCBA58];
  v66[147] = @"Persistent Intermenstrual Bleeding";
  v67[147] = *MEMORY[0x277CCBA60];
  v66[148] = @"Pregnancy";
  v67[148] = *MEMORY[0x277CCBA68];
  v66[149] = @"Pregnancy Test Result";
  v67[149] = *MEMORY[0x277CCBA70];
  v66[150] = @"Progesterone Test Result";
  v67[150] = *MEMORY[0x277CCBA78];
  v66[151] = @"Prolonged Menstrual Periods";
  v67[151] = *MEMORY[0x277CCBA80];
  v66[152] = @"Rapid Pounding or Fluttering Heartbeat";
  v67[152] = *MEMORY[0x277CCBA88];
  v66[153] = @"Runny Nose";
  v67[153] = *MEMORY[0x277CCBA90];
  v66[154] = @"Sexual Activity";
  v67[154] = *MEMORY[0x277CCBA98];
  v66[155] = @"Shortness of Breath";
  v67[155] = *MEMORY[0x277CCBAA0];
  v66[156] = @"Sinus Congestion";
  v67[156] = *MEMORY[0x277CCBAA8];
  v66[157] = @"Skipped Heartbeat";
  v67[157] = *MEMORY[0x277CCBAB0];
  v66[158] = @"Sleep";
  v67[158] = *MEMORY[0x277CCBAB8];
  v66[159] = @"Sleep Changes";
  v67[159] = *MEMORY[0x277CCBAC8];
  v66[160] = @"Sore Throat";
  v67[160] = *MEMORY[0x277CCBAD0];
  v66[161] = @"Toothbrushing";
  v67[161] = *MEMORY[0x277CCBAD8];
  v66[162] = @"Vaginal Dryness";
  v67[162] = *MEMORY[0x277CCBAE8];
  v66[163] = @"Vomiting";
  v67[163] = *MEMORY[0x277CCBAF0];
  v66[164] = @"Wheezing";
  v67[164] = *MEMORY[0x277CCBAF8];
  v66[165] = @"Spotting";
  v67[165] = *MEMORY[0x277CCB9D8];
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:166];
  v65 = WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary_dictionary;
  WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary_dictionary = v64;
}

id WFHealthKitQuantityTypeIdentifiers()
{
  if (WFHealthKitQuantityTypeIdentifiers_onceToken != -1)
  {
    dispatch_once(&WFHealthKitQuantityTypeIdentifiers_onceToken, &__block_literal_global_1015);
  }

  v1 = WFHealthKitQuantityTypeIdentifiers_identifiers;

  return v1;
}

void __WFHealthKitQuantityTypeIdentifiers_block_invoke()
{
  v34[103] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCC918];
  v34[0] = *MEMORY[0x277CCCC70];
  v34[1] = v0;
  v1 = *MEMORY[0x277CCC928];
  v34[2] = *MEMORY[0x277CCC920];
  v34[3] = v1;
  v2 = *MEMORY[0x277CCC948];
  v34[4] = *MEMORY[0x277CCC940];
  v34[5] = v2;
  v3 = *MEMORY[0x277CCCB10];
  v34[6] = *MEMORY[0x277CCC960];
  v34[7] = v3;
  v4 = *MEMORY[0x277CCCB38];
  v34[8] = *MEMORY[0x277CCCB18];
  v34[9] = v4;
  v5 = *MEMORY[0x277CCCB48];
  v34[10] = *MEMORY[0x277CCCB40];
  v34[11] = v5;
  v6 = *MEMORY[0x277CCCBD0];
  v34[12] = *MEMORY[0x277CCCB70];
  v34[13] = v6;
  v7 = *MEMORY[0x277CCCC30];
  v34[14] = *MEMORY[0x277CCCC10];
  v34[15] = v7;
  v8 = *MEMORY[0x277CCCC40];
  v34[16] = *MEMORY[0x277CCCC38];
  v34[17] = v8;
  v9 = *MEMORY[0x277CCCC50];
  v34[18] = *MEMORY[0x277CCCC48];
  v34[19] = v9;
  v10 = *MEMORY[0x277CCCC60];
  v34[20] = *MEMORY[0x277CCCC58];
  v34[21] = v10;
  v11 = *MEMORY[0x277CCCC78];
  v34[22] = *MEMORY[0x277CCCC68];
  v34[23] = v11;
  v12 = *MEMORY[0x277CCCC98];
  v34[24] = *MEMORY[0x277CCCC88];
  v34[25] = v12;
  v13 = *MEMORY[0x277CCCCB0];
  v34[26] = *MEMORY[0x277CCCCA8];
  v34[27] = v13;
  v14 = *MEMORY[0x277CCCCC8];
  v34[28] = *MEMORY[0x277CCCCC0];
  v34[29] = v14;
  v15 = *MEMORY[0x277CCC988];
  v34[30] = *MEMORY[0x277CCC938];
  v34[31] = v15;
  v16 = *MEMORY[0x277CCC998];
  v34[32] = *MEMORY[0x277CCC990];
  v34[33] = v16;
  v17 = *MEMORY[0x277CCCBC8];
  v34[34] = *MEMORY[0x277CCCBA8];
  v34[35] = v17;
  v18 = *MEMORY[0x277CCC950];
  v34[36] = *MEMORY[0x277CCCCA0];
  v34[37] = v18;
  v19 = *MEMORY[0x277CCC978];
  v34[38] = *MEMORY[0x277CCC958];
  v34[39] = v19;
  v20 = *MEMORY[0x277CCC9A0];
  v34[40] = *MEMORY[0x277CCC980];
  v34[41] = v20;
  v21 = *MEMORY[0x277CCCB98];
  v34[42] = *MEMORY[0x277CCCB90];
  v34[43] = v21;
  v22 = *MEMORY[0x277CCCC18];
  v34[44] = *MEMORY[0x277CCCBA0];
  v34[45] = v22;
  v23 = *MEMORY[0x277CCCCB8];
  v34[46] = *MEMORY[0x277CCCC20];
  v34[47] = v23;
  v24 = *MEMORY[0x277CCC970];
  v34[48] = *MEMORY[0x277CCC968];
  v34[49] = v24;
  v25 = *MEMORY[0x277CCCB58];
  v34[50] = *MEMORY[0x277CCCB50];
  v34[51] = v25;
  v26 = *MEMORY[0x277CCCB80];
  v34[52] = *MEMORY[0x277CCCB78];
  v34[53] = v26;
  v27 = *MEMORY[0x277CCCBB8];
  v34[54] = *MEMORY[0x277CCCB88];
  v34[55] = v27;
  v28 = *MEMORY[0x277CCCBD8];
  v34[56] = *MEMORY[0x277CCCBC0];
  v34[57] = v28;
  v29 = *MEMORY[0x277CCCBE8];
  v34[58] = *MEMORY[0x277CCCBE0];
  v34[59] = v29;
  v30 = *MEMORY[0x277CCCC00];
  v34[60] = *MEMORY[0x277CCCBF8];
  v34[61] = v30;
  v31 = *MEMORY[0x277CCC9D8];
  v34[62] = *MEMORY[0x277CCC9D0];
  v34[63] = v31;
  v34[64] = *MEMORY[0x277CCC9E0];
  v34[65] = *MEMORY[0x277CCC9E8];
  v34[66] = *MEMORY[0x277CCC9F0];
  v34[67] = *MEMORY[0x277CCC9F8];
  v34[68] = *MEMORY[0x277CCCA00];
  v34[69] = *MEMORY[0x277CCCA08];
  v34[70] = *MEMORY[0x277CCCA10];
  v34[71] = *MEMORY[0x277CCCA18];
  v34[72] = *MEMORY[0x277CCCA20];
  v34[73] = *MEMORY[0x277CCCA28];
  v34[74] = *MEMORY[0x277CCCA30];
  v34[75] = *MEMORY[0x277CCCA38];
  v34[76] = *MEMORY[0x277CCCA40];
  v34[77] = *MEMORY[0x277CCCA48];
  v34[78] = *MEMORY[0x277CCCA50];
  v34[79] = *MEMORY[0x277CCCA58];
  v34[80] = *MEMORY[0x277CCCA60];
  v34[81] = *MEMORY[0x277CCCA68];
  v34[82] = *MEMORY[0x277CCCA70];
  v34[83] = *MEMORY[0x277CCCA78];
  v34[84] = *MEMORY[0x277CCCA80];
  v34[85] = *MEMORY[0x277CCCA88];
  v34[86] = *MEMORY[0x277CCCA90];
  v34[87] = *MEMORY[0x277CCCA98];
  v34[88] = *MEMORY[0x277CCCAA0];
  v34[89] = *MEMORY[0x277CCCAA8];
  v34[90] = *MEMORY[0x277CCCAB0];
  v34[91] = *MEMORY[0x277CCCAB8];
  v34[92] = *MEMORY[0x277CCCAC0];
  v34[93] = *MEMORY[0x277CCCAC8];
  v34[94] = *MEMORY[0x277CCCAD0];
  v34[95] = *MEMORY[0x277CCCAD8];
  v34[96] = *MEMORY[0x277CCCAE0];
  v34[97] = *MEMORY[0x277CCCAE8];
  v34[98] = *MEMORY[0x277CCCAF0];
  v34[99] = *MEMORY[0x277CCCAF8];
  v34[100] = *MEMORY[0x277CCCB00];
  v34[101] = *MEMORY[0x277CCCC90];
  v34[102] = *MEMORY[0x277CCCCD0];
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:103];
  v33 = WFHealthKitQuantityTypeIdentifiers_identifiers;
  WFHealthKitQuantityTypeIdentifiers_identifiers = v32;
}

id WFHealthKitSymptomsTypeIdentifiers()
{
  v21[39] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCB8D0];
  v21[0] = *MEMORY[0x277CCB8C8];
  v21[1] = v0;
  v1 = *MEMORY[0x277CCB8F0];
  v21[2] = *MEMORY[0x277CCB8D8];
  v21[3] = v1;
  v2 = *MEMORY[0x277CCB910];
  v21[4] = *MEMORY[0x277CCB908];
  v21[5] = v2;
  v3 = *MEMORY[0x277CCB928];
  v21[6] = *MEMORY[0x277CCB920];
  v21[7] = v3;
  v4 = *MEMORY[0x277CCB940];
  v21[8] = *MEMORY[0x277CCB930];
  v21[9] = v4;
  v5 = *MEMORY[0x277CCB950];
  v21[10] = *MEMORY[0x277CCB948];
  v21[11] = v5;
  v6 = *MEMORY[0x277CCB968];
  v21[12] = *MEMORY[0x277CCB958];
  v21[13] = v6;
  v7 = *MEMORY[0x277CCB978];
  v21[14] = *MEMORY[0x277CCB970];
  v21[15] = v7;
  v8 = *MEMORY[0x277CCB988];
  v21[16] = *MEMORY[0x277CCB980];
  v21[17] = v8;
  v9 = *MEMORY[0x277CCB9B0];
  v21[18] = *MEMORY[0x277CCB998];
  v21[19] = v9;
  v10 = *MEMORY[0x277CCB9F8];
  v21[20] = *MEMORY[0x277CCB9C0];
  v21[21] = v10;
  v11 = *MEMORY[0x277CCBA18];
  v21[22] = *MEMORY[0x277CCBA00];
  v21[23] = v11;
  v12 = *MEMORY[0x277CCBA38];
  v21[24] = *MEMORY[0x277CCBA20];
  v21[25] = v12;
  v13 = *MEMORY[0x277CCBA48];
  v21[26] = *MEMORY[0x277CCBA40];
  v21[27] = v13;
  v14 = *MEMORY[0x277CCBA88];
  v21[28] = *MEMORY[0x277CCBA58];
  v21[29] = v14;
  v15 = *MEMORY[0x277CCBAA0];
  v21[30] = *MEMORY[0x277CCBA90];
  v21[31] = v15;
  v16 = *MEMORY[0x277CCBAB0];
  v21[32] = *MEMORY[0x277CCBAA8];
  v21[33] = v16;
  v17 = *MEMORY[0x277CCBAD0];
  v21[34] = *MEMORY[0x277CCBAC8];
  v21[35] = v17;
  v18 = *MEMORY[0x277CCBAF0];
  v21[36] = *MEMORY[0x277CCBAE8];
  v21[37] = v18;
  v21[38] = *MEMORY[0x277CCBAF8];
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:39];

  return v19;
}

id WFHealthKitSampleTypeIdentifiers()
{
  if (WFHealthKitSampleTypeIdentifiers_onceToken != -1)
  {
    dispatch_once(&WFHealthKitSampleTypeIdentifiers_onceToken, &__block_literal_global_1017);
  }

  v1 = WFHealthKitSampleTypeIdentifiers_identifiers;

  return v1;
}

void __WFHealthKitSampleTypeIdentifiers_block_invoke()
{
  v19[3] = *MEMORY[0x277D85DE8];
  v0 = WFHealthKitQuantityTypeIdentifiers();
  v1 = WFHealthKitSampleTypeIdentifiers_identifiers;
  WFHealthKitSampleTypeIdentifiers_identifiers = v0;

  v2 = [WFHealthKitSampleTypeIdentifiers_identifiers mutableCopy];
  v3 = *MEMORY[0x277CCBAB8];
  v4 = *MEMORY[0x277CCCBF8];
  [v2 insertObject:*MEMORY[0x277CCBAB8] atIndex:{objc_msgSend(v2, "indexOfObject:", *MEMORY[0x277CCCBF8]) + 1}];
  v5 = *MEMORY[0x277CCBA98];
  [v2 insertObject:*MEMORY[0x277CCBA98] atIndex:{objc_msgSend(v2, "indexOfObject:", v3) + 1}];
  v6 = *MEMORY[0x277CCB918];
  [v2 insertObject:*MEMORY[0x277CCB918] atIndex:{objc_msgSend(v2, "indexOfObject:", v5) + 1}];
  v7 = *MEMORY[0x277CCBA28];
  [v2 insertObject:*MEMORY[0x277CCBA28] atIndex:{objc_msgSend(v2, "indexOfObject:", v6) + 1}];
  v8 = *MEMORY[0x277CCB9D8];
  [v2 insertObject:*MEMORY[0x277CCB9D8] atIndex:{objc_msgSend(v2, "indexOfObject:", v7) + 1}];
  [v2 insertObject:*MEMORY[0x277CCBA50] atIndex:{objc_msgSend(v2, "indexOfObject:", v8) + 1}];
  [v2 insertObject:*MEMORY[0x277CCBA30] atIndex:{objc_msgSend(v2, "indexOfObject:", v3) + 1}];
  v9 = *MEMORY[0x277CCBA10];
  v19[0] = *MEMORY[0x277CCB9B8];
  v19[1] = v9;
  v19[2] = *MEMORY[0x277CCB9E0];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v11 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{objc_msgSend(v2, "indexOfObject:", *MEMORY[0x277CCCBA0]), objc_msgSend(v10, "count")}];
  [v2 insertObjects:v10 atIndexes:v11];

  v12 = WFHealthKitSymptomsTypeIdentifiers();
  v13 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{objc_msgSend(v2, "indexOfObject:", v4), objc_msgSend(v12, "count")}];
  [v2 insertObjects:v12 atIndexes:v13];

  v14 = *MEMORY[0x277CCB990];
  v18[0] = *MEMORY[0x277CCBAD8];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [v2 addObjectsFromArray:v15];

  v16 = [v2 copy];
  v17 = WFHealthKitSampleTypeIdentifiers_identifiers;
  WFHealthKitSampleTypeIdentifiers_identifiers = v16;
}

id WFHealthKitReadableSampleTypes()
{
  if (WFHealthKitReadableSampleTypes_onceToken != -1)
  {
    dispatch_once(&WFHealthKitReadableSampleTypes_onceToken, &__block_literal_global_1020);
  }

  v1 = WFHealthKitReadableSampleTypes_readableTypes;

  return v1;
}

void __WFHealthKitReadableSampleTypes_block_invoke()
{
  v0 = WFHealthKitSampleTypeIdentifiers();
  v1 = WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __WFHealthKitReadableSampleTypes_block_invoke_2;
  v5[3] = &unk_278C1B0C8;
  v6 = v1;
  v2 = v1;
  v3 = [v0 if_compactMap:v5];
  v4 = WFHealthKitReadableSampleTypes_readableTypes;
  WFHealthKitReadableSampleTypes_readableTypes = v3;
}

id WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary()
{
  if (WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary_onceToken != -1)
  {
    dispatch_once(&WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary_onceToken, &__block_literal_global_1599);
  }

  v1 = WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary_dictionary;

  return v1;
}

void __WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary_block_invoke()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = WFHealthKitReadableSampleTypeToSampleTypeIdentifierDictionary();
  v1 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v2 objectForKey:{v7, v10}];
        [v1 setObject:v7 forKey:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary_dictionary;
  WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary_dictionary = v1;
}

id WFHealthKitLocalizedSampleTypes()
{
  if (WFHealthKitLocalizedSampleTypes_onceToken != -1)
  {
    dispatch_once(&WFHealthKitLocalizedSampleTypes_onceToken, &__block_literal_global_1023);
  }

  v1 = WFHealthKitLocalizedSampleTypes_localizedTypes;

  return v1;
}

void __WFHealthKitLocalizedSampleTypes_block_invoke()
{
  v0 = WFHealthKitSampleTypeIdentifiers();
  v1 = WFHealthKitSampleTypeIdentifierToReadableSampleTypeDictionary();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __WFHealthKitLocalizedSampleTypes_block_invoke_2;
  v6[3] = &unk_278C1AEE0;
  v7 = v1;
  v2 = v1;
  v3 = [v0 if_compactMap:v6];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_1031];
  v5 = WFHealthKitLocalizedSampleTypes_localizedTypes;
  WFHealthKitLocalizedSampleTypes_localizedTypes = v4;
}

id __WFHealthKitLocalizedSampleTypes_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  v5 = [objc_alloc(MEMORY[0x277D79F10]) initWithString:v4];
  v6 = objc_alloc(MEMORY[0x277CCAEB8]);
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 bundleURL];
  v10 = [v6 initWithKey:v4 table:0 locale:v7 bundleURL:v9];
  [v5 setStringResource:v10];

  v11 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v3];
  if (v11)
  {
    if (objc_opt_respondsToSelector())
    {
      [v11 hk_localizedName];
    }

    else
    {
      [WFHealthKitHelper readableSampleTypeIdentifierFromSampleTypeIdentifier:v3];
    }
    v12 = ;
    [v5 setLocalizedValue:v12];
  }

  else
  {
    v12 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:v3];
    if (objc_opt_respondsToSelector())
    {
      [v12 hk_localizedName];
    }

    else
    {
      [WFHealthKitHelper readableSampleTypeIdentifierFromSampleTypeIdentifier:v3];
    }
    v13 = ;
    [v5 setLocalizedValue:v13];
  }

  return v5;
}

uint64_t __WFHealthKitLocalizedSampleTypes_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedValue];
  v6 = [v4 localizedValue];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

id WFHealthKitReadableWorkoutActivityTypeToWorkoutActivityTypeDictionary()
{
  if (WFHealthKitReadableWorkoutActivityTypeToWorkoutActivityTypeDictionary_onceToken != -1)
  {
    dispatch_once(&WFHealthKitReadableWorkoutActivityTypeToWorkoutActivityTypeDictionary_onceToken, &__block_literal_global_1033);
  }

  v1 = WFHealthKitReadableWorkoutActivityTypeToWorkoutActivityTypeDictionary_dictionary;

  return v1;
}

void __WFHealthKitReadableWorkoutActivityTypeToWorkoutActivityTypeDictionary_block_invoke()
{
  v0 = WFHealthKitReadableWorkoutActivityTypeToWorkoutActivityTypeDictionary_dictionary;
  WFHealthKitReadableWorkoutActivityTypeToWorkoutActivityTypeDictionary_dictionary = &unk_28509CF38;
}

id WFHealthKitReadableWorkoutActivityTypes()
{
  if (WFHealthKitReadableWorkoutActivityTypes_onceToken != -1)
  {
    dispatch_once(&WFHealthKitReadableWorkoutActivityTypes_onceToken, &__block_literal_global_1461);
  }

  v1 = WFHealthKitReadableWorkoutActivityTypes_readableTypes;

  return v1;
}

void __WFHealthKitReadableWorkoutActivityTypes_block_invoke()
{
  v0 = WFHealthKitReadableWorkoutActivityTypes_readableTypes;
  WFHealthKitReadableWorkoutActivityTypes_readableTypes = &unk_28509CBD8;

  v1 = [WFHealthKitReadableWorkoutActivityTypes_readableTypes sortedArrayUsingSelector:sel_localizedStandardCompare_];
  v2 = WFHealthKitReadableWorkoutActivityTypes_readableTypes;
  WFHealthKitReadableWorkoutActivityTypes_readableTypes = v1;
}

id WFHealthKitReadableCervicalMucusQualityToEnumDictionary()
{
  v8[5] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Dry");
  v7[0] = v0;
  v8[0] = &unk_28509B8B8;
  v1 = WFLocalizedParameterValueMarker(@"Sticky");
  v7[1] = v1;
  v8[1] = &unk_28509B8D0;
  v2 = WFLocalizedParameterValueMarker(@"Creamy");
  v7[2] = v2;
  v8[2] = &unk_28509B8E8;
  v3 = WFLocalizedParameterValueMarker(@"Watery");
  v7[3] = v3;
  v8[3] = &unk_28509B900;
  v4 = WFLocalizedParameterValueMarker(@"Egg White");
  v7[4] = v4;
  v8[4] = &unk_28509B918;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];

  return v5;
}

id WFHealthKitReadableAppleStandingHourToEnumDictionary()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Stood");
  v4[0] = v0;
  v5[0] = &unk_28509B930;
  v1 = WFLocalizedParameterValueMarker(@"Idle");
  v4[1] = v1;
  v5[1] = &unk_28509B8B8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id WFHealthKitReadableMenstrualFlowToEnumDictionary()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Unspecified");
  v6[0] = v0;
  v7[0] = &unk_28509B8B8;
  v1 = WFLocalizedParameterValueMarker(@"Light");
  v6[1] = v1;
  v7[1] = &unk_28509B8D0;
  v2 = WFLocalizedParameterValueMarker(@"Medium");
  v6[2] = v2;
  v7[2] = &unk_28509B8E8;
  v3 = WFLocalizedParameterValueMarker(@"Heavy");
  v6[3] = v3;
  v7[3] = &unk_28509B900;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];

  return v4;
}

id WFHealthKitReadableMenstrualFlowIsStartOfCycleToBoolDictionary()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Yes");
  v4[0] = v0;
  v5[0] = MEMORY[0x277CBEC38];
  v1 = WFLocalizedParameterValueMarker(@"No");
  v4[1] = v1;
  v5[1] = MEMORY[0x277CBEC28];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id WFHealthKitReadableOvulationTestResultToEnumDictionary()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Negative");
  v6[0] = v0;
  v7[0] = &unk_28509B8B8;
  v1 = WFLocalizedParameterValueMarker(@"Luteinizing Hormone Surge");
  v6[1] = v1;
  v7[1] = &unk_28509B8D0;
  v2 = WFLocalizedParameterValueMarker(@"Estrogen Surge");
  v6[2] = v2;
  v7[2] = &unk_28509B900;
  v3 = WFLocalizedParameterValueMarker(@"Indeterminate");
  v6[3] = v3;
  v7[3] = &unk_28509B8E8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];

  return v4;
}

id WFHealthKitReadableSleepAnalysisToEnumDictionary()
{
  v9[6] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"In Bed");
  v8[0] = v0;
  v9[0] = &unk_28509B930;
  v1 = WFLocalizedParameterValueMarker(@"Asleep");
  v8[1] = v1;
  v9[1] = &unk_28509B8B8;
  v2 = WFLocalizedParameterValueMarker(@"Awake");
  v8[2] = v2;
  v9[2] = &unk_28509B8D0;
  v3 = WFLocalizedParameterValueMarker(@"Core");
  v8[3] = v3;
  v9[3] = &unk_28509B8E8;
  v4 = WFLocalizedParameterValueMarker(@"Deep");
  v8[4] = v4;
  v9[4] = &unk_28509B900;
  v5 = WFLocalizedParameterValueMarker(@"REM");
  v8[5] = v5;
  v9[5] = &unk_28509B918;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:6];

  return v6;
}

id WFHealthKitReadableAppetiteChangesToEnumDictionary()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Increased");
  v6[0] = v0;
  v7[0] = &unk_28509B8E8;
  v1 = WFLocalizedParameterValueMarker(@"Decreased");
  v6[1] = v1;
  v7[1] = &unk_28509B8D0;
  v2 = WFLocalizedParameterValueMarker(@"No Change");
  v6[2] = v2;
  v7[2] = &unk_28509B8B8;
  v3 = WFLocalizedParameterValueMarker(@"Present");
  v6[3] = v3;
  v7[3] = &unk_28509B930;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];

  return v4;
}

id WFHealthKitReadablePresenceToEnumDictionary()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Present");
  v4[0] = v0;
  v5[0] = &unk_28509B930;
  v1 = WFLocalizedParameterValueMarker(@"Not Present");
  v4[1] = v1;
  v5[1] = &unk_28509B8B8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id WFHealthKitReadableSeverityToEnumDictionary()
{
  v8[5] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Severe");
  v7[0] = v0;
  v8[0] = &unk_28509B900;
  v1 = WFLocalizedParameterValueMarker(@"Moderate");
  v7[1] = v1;
  v8[1] = &unk_28509B8E8;
  v2 = WFLocalizedParameterValueMarker(@"Mild");
  v7[2] = v2;
  v8[2] = &unk_28509B8D0;
  v3 = WFLocalizedParameterValueMarker(@"Present");
  v7[3] = v3;
  v8[3] = &unk_28509B930;
  v4 = WFLocalizedParameterValueMarker(@"Not Present");
  v7[4] = v4;
  v8[4] = &unk_28509B8B8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];

  return v5;
}

id WFHealthKitReadableSexualActivityToBoolDictionary()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Protection Used");
  v4[0] = v0;
  v5[0] = MEMORY[0x277CBEC38];
  v1 = WFLocalizedParameterValueMarker(@"Protection Unused");
  v4[1] = v1;
  v5[1] = MEMORY[0x277CBEC28];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id WFHealthKitReadableInsulinDeliveryReasonToEnumDictionary()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Basal");
  v4[0] = v0;
  v5[0] = &unk_28509B8B8;
  v1 = WFLocalizedParameterValueMarker(@"Bolus");
  v4[1] = v1;
  v5[1] = &unk_28509B8D0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id WFHealthKitReadableBloodGlucoseMealTimeToEnumDictionary()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Before Meal");
  v4[0] = v0;
  v5[0] = &unk_28509B8B8;
  v1 = WFLocalizedParameterValueMarker(@"After Meal");
  v4[1] = v1;
  v5[1] = &unk_28509B8D0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id WFHealthKitReadableVO2MaxTestTypeToEnumDictionary()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedParameterValueMarker(@"Max Exercise Test");
  v5[0] = v0;
  v6[0] = &unk_28509B8B8;
  v1 = WFLocalizedParameterValueMarker(@"Sub-Max Exercise Prediction");
  v5[1] = v1;
  v6[1] = &unk_28509B8D0;
  v2 = WFLocalizedParameterValueMarker(@"Non-Exercise Prediction");
  v5[2] = v2;
  v6[2] = &unk_28509B8E8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

void sub_23E0B4474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaQueryClass_block_invoke_14417(uint64_t a1)
{
  MediaPlayerLibrary_14422();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass_14416 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlaylistPickerParameter.m" lineNumber:20 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void sub_23E0B4660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaPlaylistClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_14422();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPlaylist");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPlaylistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaPlaylistClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlaylistPickerParameter.m" lineNumber:21 description:{@"Unable to find class %s", "MPMediaPlaylist"}];

    __break(1u);
  }
}

void *MediaPlayerLibrary_14422()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_14432)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_14433;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1AF40;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_14432 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_14432;
  if (!MediaPlayerLibraryCore_frameworkLibrary_14432)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFPlaylistPickerParameter.m" lineNumber:18 description:{@"%s", v4[0]}];

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

uint64_t __MediaPlayerLibraryCore_block_invoke_14433(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_14432 = result;
  return result;
}

id getMPMediaLibraryClass_14443()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaLibraryClass_softClass_14444;
  v7 = getMPMediaLibraryClass_softClass_14444;
  if (!getMPMediaLibraryClass_softClass_14444)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaLibraryClass_block_invoke_14445;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPMediaLibraryClass_block_invoke_14445(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0B4AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaLibraryClass_block_invoke_14445(uint64_t a1)
{
  MediaPlayerLibrary_14422();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass_14444 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlaylistPickerParameter.m" lineNumber:19 description:{@"Unable to find class %s", "MPMediaLibrary"}];

    __break(1u);
  }
}

void getMPMediaLibraryDidChangeNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr;
  v9 = getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr;
  if (!getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_14422();
    v7[3] = dlsym(v1, "MPMediaLibraryDidChangeNotification");
    getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaLibraryDidChangeNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFPlaylistPickerParameter.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E0B4DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPMediaLibraryDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_14422();
  result = dlsym(v2, "MPMediaLibraryDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E0B744C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPAVRoutingControllerErrorDomainSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_14926)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_14927;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C1B080;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_14926 = _sl_dlopen();
  }

  v2 = MediaPlayerLibraryCore_frameworkLibrary_14926;
  if (!MediaPlayerLibraryCore_frameworkLibrary_14926)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFChangePlaybackDestinationAction.m" lineNumber:17 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MPAVRoutingControllerErrorDomain");
  *(*(a1[4] + 8) + 24) = result;
  getMPAVRoutingControllerErrorDomainSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_14927(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_14926 = result;
  return result;
}

void sub_23E0B88E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E0BBDF0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15780(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15951(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E0BF7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *NetrbLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!NetrbLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __NetrbLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1B530;
    v6 = 0;
    NetrbLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NetrbLibraryCore_frameworkLibrary;
  if (!NetrbLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *NetrbLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFPersonalHotspotSettingsClient.m" lineNumber:19 description:{@"%s", v4[0]}];

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

uint64_t __NetrbLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NetrbLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E0BFC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E0BFDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E0C010C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E0C18BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16466(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void WFConfigureAudioRoutesForUserInterface(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isRunningWithSiriUI] && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v3, "airPlayRouteIDs"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v7 = [v3 airPlayRouteIDs];
    v8 = v4;
    INCRouteAudioToAirplayOutputDevices();
  }

  else
  {
    v4[2](v4);
  }
}

void __WFConfigureAudioRoutesForUserInterface_block_invoke(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFIntentExecutionLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "WFConfigureAudioRoutesForUserInterface_block_invoke";
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_23DE30000, v6, OS_LOG_TYPE_ERROR, "%s Failed to set AirPlay output device: %{public}@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_23E0C6A0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23E0CE094(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id generateBaseString(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = MEMORY[0x277CBEB38];
  v10 = a5;
  v11 = a4;
  v12 = a2;
  v13 = a1;
  v14 = [v9 dictionaryWithDictionary:a3];
  [v14 addEntriesFromDictionary:v11];

  [v14 addEntriesFromDictionary:v10];
  v15 = TMDictionaryToQueryString(v14);
  v16 = MEMORY[0x277CCACA8];
  v17 = TMURLEncode(v13);

  v18 = TMURLEncode(v15);
  v19 = [v16 stringWithFormat:@"%@&%@&%@", v12, v17, v18];

  return v19;
}

id sign(void *a1, uint64_t a2, __CFString *a3)
{
  v4 = MEMORY[0x277CCACA8];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = &stru_2850323E8;
  }

  v6 = a1;
  v7 = [v4 stringWithFormat:@"%@&%@", a2, v5];
  v8 = HMACSHA1(v6, v7);

  if (objc_opt_respondsToSelector())
  {
    [v8 base64EncodedStringWithOptions:0];
  }

  else
  {
    [v8 base64Encoding];
  }
  v9 = ;

  return v9;
}

id HMACSHA1(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 dataUsingEncoding:4];
  v5 = [v3 dataUsingEncoding:4];

  v6 = malloc_type_malloc(0x14uLL, 0x99EEE01AuLL);
  CCHmac(0, [v5 bytes], objc_msgSend(v5, "length"), objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length"), v6);
  v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v6 length:20 freeWhenDone:1];

  return v7;
}

uint64_t UNIXTimestamp(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  [a1 timeIntervalSince1970];
  return [v1 stringWithFormat:@"%f", round(v2)];
}

void sub_23E0CFF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVLinearPCMIsFloatKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVLinearPCMIsFloatKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVLinearPCMIsFloatKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AVFoundationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_18539)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke_18540;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1B9D0;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary_18539 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_18539;
  if (!AVFoundationLibraryCore_frameworkLibrary_18539)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:31 description:{@"%s", v4[0]}];

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

void *__getAVLinearPCMBitDepthKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVLinearPCMBitDepthKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVLinearPCMBitDepthKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AVFoundationLibraryCore_block_invoke_18540(uint64_t a1)
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_18539 = result;
  return result;
}

void sub_23E0D082C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVSpeechUtteranceClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVSpeechUtterance");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVSpeechUtteranceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVSpeechUtteranceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:37 description:{@"Unable to find class %s", "AVSpeechUtterance"}];

    __break(1u);
  }
}

void *__getAVSpeechUtteranceMinimumSpeechRateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVSpeechUtteranceMinimumSpeechRate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSpeechUtteranceMinimumSpeechRateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVSpeechUtteranceMaximumSpeechRateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVSpeechUtteranceMaximumSpeechRate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSpeechUtteranceMaximumSpeechRateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVSpeechUtteranceDefaultSpeechRateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVSpeechUtteranceDefaultSpeechRate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSpeechUtteranceDefaultSpeechRateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E0D0CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSiriTTSSynthesisVoiceClass_block_invoke(uint64_t a1)
{
  SiriTTSServiceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SiriTTSSynthesisVoice");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSiriTTSSynthesisVoiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSiriTTSSynthesisVoiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:56 description:{@"Unable to find class %s", "SiriTTSSynthesisVoice"}];

    __break(1u);
  }
}

void __getSiriTTSSpeechRequestClass_block_invoke(uint64_t a1)
{
  SiriTTSServiceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SiriTTSSpeechRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSiriTTSSpeechRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSiriTTSSpeechRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:55 description:{@"Unable to find class %s", "SiriTTSSpeechRequest"}];

    __break(1u);
  }
}

void SiriTTSServiceLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SiriTTSServiceLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SiriTTSServiceLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278C1B9E8;
    v5 = 0;
    SiriTTSServiceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SiriTTSServiceLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SiriTTSServiceLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFSpeechSynthesizer.m" lineNumber:53 description:{@"%s", v3[0]}];

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

uint64_t __SiriTTSServiceLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SiriTTSServiceLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E0D1144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSiriTTSDaemonSessionClass_block_invoke(uint64_t a1)
{
  SiriTTSServiceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SiriTTSDaemonSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSiriTTSDaemonSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSiriTTSDaemonSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:54 description:{@"Unable to find class %s", "SiriTTSDaemonSession"}];

    __break(1u);
  }
}

void sub_23E0D15EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVSpeechSynthesizerClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVSpeechSynthesizer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVSpeechSynthesizerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVSpeechSynthesizerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:36 description:{@"Unable to find class %s", "AVSpeechSynthesizer"}];

    __break(1u);
  }
}

id getWFTextToSpeechLogObject()
{
  if (getWFTextToSpeechLogObject_onceToken != -1)
  {
    dispatch_once(&getWFTextToSpeechLogObject_onceToken, &__block_literal_global_18579);
  }

  v1 = getWFTextToSpeechLogObject_log;

  return v1;
}

void sub_23E0D1E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVAudioFileTypeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVAudioFileTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAudioFileTypeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVLinearPCMIsNonInterleavedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVLinearPCMIsNonInterleaved");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVLinearPCMIsNonInterleavedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVAudioFileClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioFile");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioFileClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAudioFileClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:32 description:{@"Unable to find class %s", "AVAudioFile"}];

    __break(1u);
  }
}

void sub_23E0D2110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVAudioPCMBufferClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioPCMBuffer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioPCMBufferClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAudioPCMBufferClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeechSynthesizer.m" lineNumber:33 description:{@"Unable to find class %s", "AVAudioPCMBuffer"}];

    __break(1u);
  }
}

void __getWFTextToSpeechLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D7A500], "TextToSpeech");
  v1 = getWFTextToSpeechLogObject_log;
  getWFTextToSpeechLogObject_log = v0;
}

void sub_23E0D2624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23E0D41F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23E0D58A0(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x23E0D5870);
  }

  objc_exception_rethrow();
}

void sub_23E0D8FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v20 + 80));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19561(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E0D9E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  return result;
}

id getFIUIWorkoutActivityTypeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFIUIWorkoutActivityTypeClass_softClass;
  v7 = getFIUIWorkoutActivityTypeClass_softClass;
  if (!getFIUIWorkoutActivityTypeClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getFIUIWorkoutActivityTypeClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getFIUIWorkoutActivityTypeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0DA88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getFIUIWorkoutActivityTypeClass_block_invoke(uint64_t a1)
{
  FitnessUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FIUIWorkoutActivityType");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFIUIWorkoutActivityTypeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFIUIWorkoutActivityTypeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFFitnessUIHelper.m" lineNumber:17 description:{@"Unable to find class %s", "FIUIWorkoutActivityType"}];

    __break(1u);
  }
}

void *FitnessUILibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!FitnessUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __FitnessUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1BC10;
    v6 = 0;
    FitnessUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FitnessUILibraryCore_frameworkLibrary;
  if (!FitnessUILibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FitnessUILibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFFitnessUIHelper.m" lineNumber:16 description:{@"%s", v4[0]}];

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

uint64_t __FitnessUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FitnessUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E0DACAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFIUIDeviceSupportsSwimmingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FitnessUILibrary();
  result = dlsym(v2, "FIUIDeviceSupportsSwimming");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFIUIDeviceSupportsSwimmingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void WFAddContentToPlaylist(void *a1, void *a2, void *a3)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v8 = getMPMediaLibraryClass_softClass_19800;
  v26 = getMPMediaLibraryClass_softClass_19800;
  if (!getMPMediaLibraryClass_softClass_19800)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __getMPMediaLibraryClass_block_invoke_19801;
    v22[3] = &unk_278C222B8;
    v22[4] = &v23;
    __getMPMediaLibraryClass_block_invoke_19801(v22);
    v8 = v24[3];
  }

  v9 = v8;
  _Block_object_dispose(&v23, 8);
  v10 = [v8 defaultMediaLibrary];
  v11 = objc_opt_new();
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __WFAddContentToPlaylist_block_invoke;
  v17[3] = &unk_278C1BE28;
  v18 = v11;
  v19 = v5;
  v20 = v10;
  v21 = v7;
  v13 = v10;
  v14 = v5;
  v15 = v11;
  v16 = v7;
  [v6 generateCollectionByCoercingToItemClasses:v12 completionHandler:v17];
}

void sub_23E0DC004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaLibraryClass_block_invoke_19801(uint64_t a1)
{
  MediaPlayerLibrary_19810();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass_19800 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAddToPlaylistAction.m" lineNumber:21 description:{@"Unable to find class %s", "MPMediaLibrary"}];

    __break(1u);
  }
}

void __WFAddContentToPlaylist_block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a4)
  {
    (*(a1[7] + 2))();
  }

  else
  {
    v7 = objc_opt_new();
    v8 = objc_opt_new();
    v9 = [v6 items];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __WFAddContentToPlaylist_block_invoke_2;
    v18[3] = &unk_278C1BDD8;
    v19 = a1[5];
    v20 = v8;
    v21 = v7;
    v22 = a1[6];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __WFAddContentToPlaylist_block_invoke_16;
    v12[3] = &unk_278C1BE00;
    v13 = v21;
    v14 = a1[4];
    v17 = a1[7];
    v15 = a1[5];
    v16 = v20;
    v10 = v20;
    v11 = v21;
    [v9 if_enumerateAsynchronouslyInSequence:v18 completionHandler:v12];
  }
}

void __WFAddContentToPlaylist_block_invoke_2(id *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __WFAddContentToPlaylist_block_invoke_3;
    v36[3] = &unk_278C1BCE8;
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v39 = v7;
    v11 = a1[7];
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v37 = v13;
    v38 = v12;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v14 = getMPMediaItemClass_softClass_19825;
    v44 = getMPMediaItemClass_softClass_19825;
    if (!getMPMediaItemClass_softClass_19825)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __getMPMediaItemClass_block_invoke_19826;
      v40[3] = &unk_278C222B8;
      v40[4] = &v41;
      __getMPMediaItemClass_block_invoke_19826(v40);
      v14 = v42[3];
    }

    v15 = v7;
    v16 = &v37;
    v17 = &v37 + 1;
    v18 = &v38;
    v19 = &v39;
    v20 = &v38 + 1;
    v21 = v14;
    _Block_object_dispose(&v41, 8);
    [v6 getObjectRepresentations:v36 forClass:v14];
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __WFAddContentToPlaylist_block_invoke_7;
    aBlock[3] = &unk_278C1BD88;
    v31 = v6;
    v17 = &v35;
    v15 = v7;
    v22 = v7;
    v35 = v22;
    v18 = &v32;
    v32 = a1[4];
    v19 = &v33;
    v33 = a1[6];
    v20 = &v34;
    v34 = a1[7];
    v23 = _Block_copy(aBlock);
    if (a1[4] && [a1[5] count])
    {
      v25 = a1[4];
      v24 = a1[5];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __WFAddContentToPlaylist_block_invoke_15;
      v26[3] = &unk_278C1BDB0;
      v27 = v24;
      v28 = v22;
      v29 = v23;
      [v25 appendItems:v27 completion:v26];
    }

    else
    {
      v23[2](v23);
    }

    v16 = &v31;
  }
}

void __WFAddContentToPlaylist_block_invoke_16(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __WFAddContentToPlaylist_block_invoke_17;
  aBlock[3] = &unk_278C1D0C0;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 64);
  v5 = _Block_copy(aBlock);
  if (!v4 && *(a1 + 48) && [*(a1 + 56) count])
  {
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __WFAddContentToPlaylist_block_invoke_18;
    v8[3] = &unk_278C1E388;
    v9 = v6;
    v10 = v5;
    [v7 appendItems:v9 completion:v8];
  }

  else
  {
    (*(v5 + 2))(v5, v4);
  }
}

void __WFAddContentToPlaylist_block_invoke_17(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) addObject:{*(*(&v9 + 1) + 8 * v8++), v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 48) + 16))();
}

void __WFAddContentToPlaylist_block_invoke_18(uint64_t a1, int a2)
{
  [*(a1 + 32) removeAllObjects];
  v4 = *(a1 + 40);
  if (a2)
  {
    v5 = *(v4 + 16);

    v5(v4, 0);
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v8 = getMPErrorDomain();
    v7 = [v6 errorWithDomain:v8 code:0 userInfo:0];
    (*(v4 + 16))(v4, v7);
  }
}

void getMPErrorDomain()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMPErrorDomainSymbolLoc_ptr;
  v9 = getMPErrorDomainSymbolLoc_ptr;
  if (!getMPErrorDomainSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_19810();
    v7[3] = dlsym(v1, "MPErrorDomain");
    getMPErrorDomainSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPErrorDomain(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAddToPlaylistAction.m" lineNumber:26 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E0DCAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_19810();
  result = dlsym(v2, "MPErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MediaPlayerLibrary_19810()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_19819)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_19820;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1BE48;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_19819 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_19819;
  if (!MediaPlayerLibraryCore_frameworkLibrary_19819)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFAddToPlaylistAction.m" lineNumber:20 description:{@"%s", v4[0]}];

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

uint64_t __MediaPlayerLibraryCore_block_invoke_19820(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_19819 = result;
  return result;
}

void __WFAddContentToPlaylist_block_invoke_3(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v4 = *(a1 + 40);
    v5 = a2;
    [v4 addObjectsFromArray:v5];
    [*(a1 + 48) addObjectsFromArray:v5];

    v6 = *(*(a1 + 64) + 16);

    v6();
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __WFAddContentToPlaylist_block_invoke_4;
    v10[3] = &unk_278C1BC98;
    v11 = *(a1 + 56);
    v12 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __WFAddContentToPlaylist_block_invoke_6;
    v8[3] = &unk_278C1BCC0;
    v9 = *(a1 + 64);
    v7 = a2;
    [v7 if_enumerateAsynchronouslyInSequence:v10 completionHandler:v8];
  }
}

void __getMPMediaItemClass_block_invoke_19826(uint64_t a1)
{
  MediaPlayerLibrary_19810();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaItemClass_softClass_19825 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAddToPlaylistAction.m" lineNumber:22 description:{@"Unable to find class %s", "MPMediaItem"}];

    __break(1u);
  }
}

void __WFAddContentToPlaylist_block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __WFAddContentToPlaylist_block_invoke_8;
  v8[3] = &unk_278C1BD60;
  v3 = *(a1 + 64);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = v3;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 getObjectRepresentations:v8 forClass:objc_opt_class()];
}

void __WFAddContentToPlaylist_block_invoke_15(uint64_t a1, char a2)
{
  [*(a1 + 32) removeAllObjects];
  if (a2)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = MEMORY[0x277CCA9B8];
    v8 = getMPErrorDomain();
    v7 = [v6 errorWithDomain:v8 code:0 userInfo:0];
    (*(v5 + 16))(v5, v7);
  }
}

void __WFAddContentToPlaylist_block_invoke_8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __WFAddContentToPlaylist_block_invoke_9;
      v19[3] = &unk_278C1BD38;
      v20 = v10;
      v21 = *(a1 + 40);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __WFAddContentToPlaylist_block_invoke_11;
      v17[3] = &unk_278C1BCC0;
      v18 = *(a1 + 56);
      [v7 if_enumerateAsynchronouslyInSequence:v19 completionHandler:v17];

      v11 = v20;
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __WFAddContentToPlaylist_block_invoke_12;
      v14[3] = &unk_278C1BD38;
      v15 = *(a1 + 48);
      v16 = *(a1 + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __WFAddContentToPlaylist_block_invoke_14;
      v12[3] = &unk_278C1BCC0;
      v13 = *(a1 + 56);
      [v7 if_enumerateAsynchronouslyInSequence:v14 completionHandler:v12];

      v11 = v15;
    }
  }
}

void __WFAddContentToPlaylist_block_invoke_9(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) count];
  objc_initWeak(&location, *(a1 + 32));
  v9 = *(a1 + 32);
  v10 = [v6 identifier];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __WFAddContentToPlaylist_block_invoke_10;
  v12[3] = &unk_278C1BD10;
  objc_copyWeak(v15, &location);
  v15[1] = v8;
  v13 = *(a1 + 40);
  v11 = v7;
  v14 = v11;
  [v9 addItemWithProductID:v10 completionHandler:v12];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void sub_23E0DD458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __WFAddContentToPlaylist_block_invoke_12(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = [a2 identifier];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __WFAddContentToPlaylist_block_invoke_13;
  v10[3] = &unk_278C21AE8;
  v11 = *(a1 + 40);
  v12 = v6;
  v9 = v6;
  [v7 addItemWithProductID:v8 completionHandler:v10];
}

void __WFAddContentToPlaylist_block_invoke_13(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObjectsFromArray:a2];
  (*(*(a1 + 40) + 16))();
}

void __WFAddContentToPlaylist_block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v5 = getMPMediaPropertyPredicateClass_softClass_19832;
  v35 = getMPMediaPropertyPredicateClass_softClass_19832;
  if (!getMPMediaPropertyPredicateClass_softClass_19832)
  {
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __getMPMediaPropertyPredicateClass_block_invoke_19833;
    v30 = &unk_278C222B8;
    v31 = &v32;
    __getMPMediaPropertyPredicateClass_block_invoke_19833(&v27);
    v5 = v33[3];
  }

  v6 = v5;
  _Block_object_dispose(&v32, 8);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(WeakRetained, "persistentID")}];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v8 = getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr_19835;
  v35 = getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr_19835;
  if (!getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr_19835)
  {
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __getMPMediaPlaylistPropertyPersistentIDSymbolLoc_block_invoke_19836;
    v30 = &unk_278C222B8;
    v31 = &v32;
    v9 = MediaPlayerLibrary_19810();
    v10 = dlsym(v9, "MPMediaPlaylistPropertyPersistentID");
    *(v31[1] + 24) = v10;
    getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr_19835 = *(v31[1] + 24);
    v8 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (v8)
  {
    v11 = [v5 predicateWithValue:v7 forProperty:*v8];

    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v12 = getMPMediaQueryClass_softClass_19839;
    v35 = getMPMediaQueryClass_softClass_19839;
    if (!getMPMediaQueryClass_softClass_19839)
    {
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __getMPMediaQueryClass_block_invoke_19840;
      v30 = &unk_278C222B8;
      v31 = &v32;
      __getMPMediaQueryClass_block_invoke_19840(&v27);
      v12 = v33[3];
    }

    v13 = v12;
    _Block_object_dispose(&v32, 8);
    v14 = [v12 alloc];
    v15 = [MEMORY[0x277CBEB98] setWithObject:v11];
    v16 = [v14 initWithFilterPredicates:v15];

    [v16 setGroupingType:6];
    v17 = [v16 collections];
    v18 = [v17 firstObject];

    v19 = *(a1 + 56);
    v20 = [v18 items];
    v21 = [v20 count] - *(a1 + 56);

    v22 = *(a1 + 32);
    v23 = [v18 items];
    v24 = [v23 subarrayWithRange:{v19, v21}];
    [v22 addObjectsFromArray:v24];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaPlaylistPropertyPersistentID(void)"];
    [v25 handleFailureInFunction:v26 file:@"WFAddToPlaylistAction.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E0DD9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaPropertyPredicateClass_block_invoke_19833(uint64_t a1)
{
  MediaPlayerLibrary_19810();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPropertyPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass_19832 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaPropertyPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAddToPlaylistAction.m" lineNumber:24 description:{@"Unable to find class %s", "MPMediaPropertyPredicate"}];

    __break(1u);
  }
}

void *__getMPMediaPlaylistPropertyPersistentIDSymbolLoc_block_invoke_19836(uint64_t a1)
{
  v2 = MediaPlayerLibrary_19810();
  result = dlsym(v2, "MPMediaPlaylistPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr_19835 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getMPMediaQueryClass_block_invoke_19840(uint64_t a1)
{
  MediaPlayerLibrary_19810();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass_19839 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAddToPlaylistAction.m" lineNumber:23 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void __WFAddContentToPlaylist_block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = [a2 playbackStoreID];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __WFAddContentToPlaylist_block_invoke_5;
  v10[3] = &unk_278C21AE8;
  v11 = *(a1 + 40);
  v12 = v6;
  v9 = v6;
  [v7 addItemWithProductID:v8 completionHandler:v10];
}

void __WFAddContentToPlaylist_block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObjectsFromArray:a2];
  (*(*(a1 + 40) + 16))();
}

Class __getMPMediaItemClass_block_invoke_19899(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_19905)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MediaPlayerLibraryCore_block_invoke_19906;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1BEA8;
    v8 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_19905 = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary_19905)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFAddMusicToUpNextAction.m" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPMediaItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaItemClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFAddMusicToUpNextAction.m" lineNumber:18 description:{@"Unable to find class %s", "MPMediaItem"}];

LABEL_10:
    __break(1u);
  }

  getMPMediaItemClass_softClass_19898 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_19906(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_19905 = result;
  return result;
}

id getMPAVRoutingControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPAVRoutingControllerClass_softClass;
  v7 = getMPAVRoutingControllerClass_softClass;
  if (!getMPAVRoutingControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPAVRoutingControllerClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPAVRoutingControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0DEA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPAVRoutingControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_19982();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPAVRoutingController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPAVRoutingControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPAVRoutingControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaRoutePickerParameter.m" lineNumber:21 description:{@"Unable to find class %s", "MPAVRoutingController"}];

    __break(1u);
  }
}

void MediaPlayerLibrary_19982()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_19992)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __MediaPlayerLibraryCore_block_invoke_19993;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278C1BEE8;
    v5 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_19992 = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary_19992)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFMediaRoutePickerParameter.m" lineNumber:20 description:{@"%s", v3[0]}];

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

uint64_t __MediaPlayerLibraryCore_block_invoke_19993(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_19992 = result;
  return result;
}

void sub_23E0DEEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19998(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E0DF088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

WFMediaRouteState *WFGetLocalDeviceMediaRoute()
{
  v0 = [[WFMediaRouteDescriptor alloc] initWithRouteUID:@"Speaker" groupUID:0 routeName:0 isLocalDevice:1];
  v1 = [(WFVariableSubstitutableParameterState *)[WFMediaRouteState alloc] initWithValue:v0];

  return v1;
}

void __getMPAVOutputDeviceRouteClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_19982();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPAVOutputDeviceRoute");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPAVOutputDeviceRouteClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPAVOutputDeviceRouteClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaRoutePickerParameter.m" lineNumber:22 description:{@"Unable to find class %s", "MPAVOutputDeviceRoute"}];

    __break(1u);
  }
}

Class __getMKMapItemClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MapKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1BF78;
    v8 = 0;
    MapKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MapKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MapKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFShowInBlindSquareAction.m" lineNumber:13 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MKMapItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKMapItemClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFShowInBlindSquareAction.m" lineNumber:14 description:{@"Unable to find class %s", "MKMapItem"}];

LABEL_10:
    __break(1u);
  }

  getMKMapItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCLPlacemarkClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLPlacemarkClass_softClass;
  v7 = getCLPlacemarkClass_softClass;
  if (!getCLPlacemarkClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLPlacemarkClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCLPlacemarkClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0E0590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCLLocationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationClass_softClass_20281;
  v7 = getCLLocationClass_softClass_20281;
  if (!getCLLocationClass_softClass_20281)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationClass_block_invoke_20282;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCLLocationClass_block_invoke_20282(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0E086C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCLLocationClass_block_invoke_20282(uint64_t a1)
{
  CoreLocationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLLocation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationClass_softClass_20281 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFShowInBlindSquareAction.m" lineNumber:18 description:{@"Unable to find class %s", "CLLocation"}];

    __break(1u);
  }
}

void CoreLocationLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_20292)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreLocationLibraryCore_block_invoke_20293;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278C1BF90;
    v5 = 0;
    CoreLocationLibraryCore_frameworkLibrary_20292 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_20292)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFShowInBlindSquareAction.m" lineNumber:16 description:{@"%s", v3[0]}];

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

uint64_t __CoreLocationLibraryCore_block_invoke_20293(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_20292 = result;
  return result;
}

void __getCLPlacemarkClass_block_invoke(uint64_t a1)
{
  CoreLocationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLPlacemark");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLPlacemarkClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLPlacemarkClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFShowInBlindSquareAction.m" lineNumber:17 description:{@"Unable to find class %s", "CLPlacemark"}];

    __break(1u);
  }
}

uint64_t __MapKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E0E32B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23E0E3FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20475(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getAVAudioSessionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioSessionClass_softClass;
  v7 = getAVAudioSessionClass_softClass;
  if (!getAVAudioSessionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAVAudioSessionClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getAVAudioSessionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0E5F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVAudioSessionClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_20644();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVAudioSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSpeakTextAction.m" lineNumber:19 description:{@"Unable to find class %s", "AVAudioSession"}];

    __break(1u);
  }
}

void *AVFoundationLibrary_20644()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_20654)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke_20655;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1C290;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary_20654 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_20654;
  if (!AVFoundationLibraryCore_frameworkLibrary_20654)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFSpeakTextAction.m" lineNumber:17 description:{@"%s", v4[0]}];

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

uint64_t __AVFoundationLibraryCore_block_invoke_20655(uint64_t a1)
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_20654 = result;
  return result;
}

void getAVAudioSessionCategoryPlayback()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVAudioSessionCategoryPlaybackSymbolLoc_ptr;
  v9 = getAVAudioSessionCategoryPlaybackSymbolLoc_ptr;
  if (!getAVAudioSessionCategoryPlaybackSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_20644();
    v7[3] = dlsym(v1, "AVAudioSessionCategoryPlayback");
    getAVAudioSessionCategoryPlaybackSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVAudioSessionCategory getAVAudioSessionCategoryPlayback(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSpeakTextAction.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E0E752C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVAudioSessionModeVoicePromptSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_20644();
  result = dlsym(v2, "AVAudioSessionModeVoicePrompt");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAudioSessionModeVoicePromptSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVAudioSessionModeDefaultSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_20644();
  result = dlsym(v2, "AVAudioSessionModeDefault");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAudioSessionModeDefaultSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVAudioSessionCategoryPlaybackSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_20644();
  result = dlsym(v2, "AVAudioSessionCategoryPlayback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVAudioSessionCategoryPlaybackSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCTServiceDescriptorClass_20872()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCTServiceDescriptorClass_softClass_20873;
  v7 = getCTServiceDescriptorClass_softClass_20873;
  if (!getCTServiceDescriptorClass_softClass_20873)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCTServiceDescriptorClass_block_invoke_20874;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCTServiceDescriptorClass_block_invoke_20874(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0E7A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCTServiceDescriptorClass_block_invoke_20874(uint64_t a1)
{
  CoreTelephonyLibrary_20875();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CTServiceDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCTServiceDescriptorClass_softClass_20873 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCTServiceDescriptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCellularManager.m" lineNumber:36 description:{@"Unable to find class %s", "CTServiceDescriptor"}];

    __break(1u);
  }
}

void *CoreTelephonyLibrary_20875()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreTelephonyLibraryCore_frameworkLibrary_20885)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreTelephonyLibraryCore_block_invoke_20886;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1C368;
    v6 = 0;
    CoreTelephonyLibraryCore_frameworkLibrary_20885 = _sl_dlopen();
  }

  v0 = CoreTelephonyLibraryCore_frameworkLibrary_20885;
  if (!CoreTelephonyLibraryCore_frameworkLibrary_20885)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreTelephonyLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFCellularManager.m" lineNumber:34 description:{@"%s", v4[0]}];

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

uint64_t __CoreTelephonyLibraryCore_block_invoke_20886(uint64_t a1)
{
  result = _sl_dlopen();
  CoreTelephonyLibraryCore_frameworkLibrary_20885 = result;
  return result;
}

id getCTCellularPlanManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCTCellularPlanManagerClass_softClass;
  v7 = getCTCellularPlanManagerClass_softClass;
  if (!getCTCellularPlanManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCTCellularPlanManagerClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCTCellularPlanManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0E8DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCTCellularPlanManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CellularPlanManagerLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CellularPlanManagerLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1C380;
    v8 = 0;
    CellularPlanManagerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CellularPlanManagerLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CellularPlanManagerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFCellularManager.m" lineNumber:40 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CTCellularPlanManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCTCellularPlanManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFCellularManager.m" lineNumber:41 description:{@"Unable to find class %s", "CTCellularPlanManager"}];

LABEL_10:
    __break(1u);
  }

  getCTCellularPlanManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CellularPlanManagerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CellularPlanManagerLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E0E9330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E0E9DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCoreTelephonyClientClass_block_invoke_20991(uint64_t a1)
{
  CoreTelephonyLibrary_20875();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CoreTelephonyClient");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCoreTelephonyClientClass_softClass_20990 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCoreTelephonyClientClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCellularManager.m" lineNumber:35 description:{@"Unable to find class %s", "CoreTelephonyClient"}];

    __break(1u);
  }
}

void sub_23E0ECAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPAVOutputDeviceRouteClass_block_invoke_21408(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_21429)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MediaPlayerLibraryCore_block_invoke_21430;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1C3C0;
    v8 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_21429 = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary_21429)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFListeningModePickerParameter.m" lineNumber:24 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPAVOutputDeviceRoute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPAVOutputDeviceRouteClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFListeningModePickerParameter.m" lineNumber:25 description:{@"Unable to find class %s", "MPAVOutputDeviceRoute"}];

LABEL_10:
    __break(1u);
  }

  getMPAVOutputDeviceRouteClass_softClass_21407 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_21430(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_21429 = result;
  return result;
}

uint64_t WFTextPositionIsTopPosition(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Top Left"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Top Center"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"Top Right"];
  }

  return v2;
}

uint64_t WFTextPositionIsBottomPosition(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Bottom Left"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Bottom Center"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"Bottom Right"];
  }

  return v2;
}

void sub_23E0ED9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getUIFontClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIFont");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIFontClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIFontClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOverlayTextAction.m" lineNumber:24 description:{@"Unable to find class %s", "UIFont"}];

    __break(1u);
  }
}

void *UIKitLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_21698)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke_21699;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C1C428;
    v6 = 0;
    UIKitLibraryCore_frameworkLibrary_21698 = _sl_dlopen();
  }

  v0 = UIKitLibraryCore_frameworkLibrary_21698;
  if (!UIKitLibraryCore_frameworkLibrary_21698)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFOverlayTextAction.m" lineNumber:17 description:{@"%s", v4[0]}];

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

uint64_t __UIKitLibraryCore_block_invoke_21699(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_21698 = result;
  return result;
}

void sub_23E0EE034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSStrokeColorAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSStrokeColorAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSStrokeColorAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSStrokeWidthAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSStrokeWidthAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSStrokeWidthAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E0EE568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSForegroundColorAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSForegroundColorAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSForegroundColorAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSFontAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSFontAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSFontAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSParagraphStyleAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSParagraphStyleAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSParagraphStyleAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E0EE7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getNSParagraphStyleClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NSParagraphStyle");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNSParagraphStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getNSParagraphStyleClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOverlayTextAction.m" lineNumber:23 description:{@"Unable to find class %s", "NSParagraphStyle"}];

    __break(1u);
  }
}

void CheckXMLResult(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((a1 & 0x80000000) != 0)
  {
    v5 = v3;
    LastError = xmlGetLastError();
    if (LastError)
    {
      LastError = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:LastError->message encoding:4];
      xmlResetLastError();
    }

    [MEMORY[0x277CBEAD8] raise:@"ENXMLWriterLibXMLError" format:{@"%@ returned result=%i, error=%@", v5, a1, LastError}];

    v3 = v5;
  }
}

uint64_t ENXMLWriter_contentsWriteCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a1;
  v7 = [v5 stringWithUTF8String:a2];
  [v6 appendString:v7];

  return a3;
}

uint64_t ENXMLWriter_delegateCloseCallback(id *a1)
{
  v2 = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 1);
  [WeakRetained xmlWriterDidEndWritingDocument:v2];

  return 0;
}

uint64_t ENXMLWriter_delegateWriteCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CBEA90];
  v6 = a1;
  v7 = [[v5 alloc] initWithBytes:a2 length:a3];
  WeakRetained = objc_loadWeakRetained(v6 + 1);
  [WeakRetained xmlWriter:v6 didGenerateData:v7];

  return a3;
}

void sub_23E0F0698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22016(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getFIUIWorkoutActivityTypeClass_22440()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFIUIWorkoutActivityTypeClass_softClass_22461;
  v7 = getFIUIWorkoutActivityTypeClass_softClass_22461;
  if (!getFIUIWorkoutActivityTypeClass_softClass_22461)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getFIUIWorkoutActivityTypeClass_block_invoke_22462;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getFIUIWorkoutActivityTypeClass_block_invoke_22462(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0F3F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFIUIWorkoutActivityTypeClass_block_invoke_22462(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!FitnessUILibraryCore_frameworkLibrary_22463)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __FitnessUILibraryCore_block_invoke_22464;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1C490;
    v8 = 0;
    FitnessUILibraryCore_frameworkLibrary_22463 = _sl_dlopen();
  }

  if (!FitnessUILibraryCore_frameworkLibrary_22463)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FitnessUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFFIUIWorkoutActivityTypeSubstitutableState.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("FIUIWorkoutActivityType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFIUIWorkoutActivityTypeClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFFIUIWorkoutActivityTypeSubstitutableState.m" lineNumber:17 description:{@"Unable to find class %s", "FIUIWorkoutActivityType"}];

LABEL_10:
    __break(1u);
  }

  getFIUIWorkoutActivityTypeClass_softClass_22461 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FitnessUILibraryCore_block_invoke_22464(uint64_t a1)
{
  result = _sl_dlopen();
  FitnessUILibraryCore_frameworkLibrary_22463 = result;
  return result;
}

void sub_23E0F4684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v18 + 40));
  _Unwind_Resume(a1);
}

void __WFMigrateDropboxToV2_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = objc_opt_class();
  v9 = WFEnforceClass(v7, v8);

  v10 = [v9 objectForKeyedSubscript:@"kMPOAuthCredentialAccessToken"];
  v11 = objc_opt_class();
  v12 = WFEnforceClass(v10, v11);

  v13 = [v9 objectForKeyedSubscript:@"kMPOAuthCredentialAccessTokenSecret"];
  v14 = objc_opt_class();
  v15 = WFEnforceClass(v13, v14);

  v16 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __WFMigrateDropboxToV2_block_invoke_3;
  v18[3] = &unk_278C1C500;
  v19 = v6;
  v17 = v6;
  [v16 authenticateWithLegacyAccessToken:v12 accessTokenSecret:v15 completionHandler:v18];
}

void __WFMigrateDropboxToV2_block_invoke_4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= [(WFAccount *)WFDropboxAccount saveAccount:*(*(&v9 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
    if (v6)
    {
      SecItemDelete(*(a1 + 32));
    }
  }

  [WFMigrateDropboxToV2_lock unlock];
}

void __WFMigrateDropboxToV2_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v5 = a3;
    v7 = [(WFOAuth2Account *)WFDropboxAccount accountWithCredential:a2];
    (*(v3 + 16))(v3);
  }

  else
  {
    v6 = *(v3 + 16);
    v7 = a3;
    v6(v3, 0);
  }
}

void __WFMigrateDropboxToV2_block_invoke()
{
  v0 = objc_opt_new();
  v1 = WFMigrateDropboxToV2_lock;
  WFMigrateDropboxToV2_lock = v0;
}

void kb_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, id *a8)
{
  LODWORD(v10) = a5;
  v16 = *a8;
  if (v10 >= 1)
  {
    v10 = v10;
    v11 = (a7 + 8);
    v12 = (a6 + 8);
    do
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v12 - 1) length:*v12 encoding:4];
      v14 = [v16 keyboardInteractiveRequest:v13];
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = &stru_2850323E8;
      }

      *(v11 - 1) = strdup([(__CFString *)v15 UTF8String]);
      *v11 = strlen([(__CFString *)v15 UTF8String]);
      v11 += 4;

      v12 += 3;
      --v10;
    }

    while (v10);
  }
}

void sub_23E0F7538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void disconnect_callback(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, id *a7)
{
  v21 = *a7;
  v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  if (a3)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:a4 encoding:4];
    [v12 setObject:v13 forKey:*MEMORY[0x277CCA450]];
  }

  if (a5)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a5 length:a6 encoding:4];
    [v12 setObject:v14 forKey:@"language"];
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NMSSH" code:a2 userInfo:v12];
  v16 = [v21 delegate];
  if (v16)
  {
    v17 = v16;
    v18 = [v21 delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [v21 delegate];
      [v20 session:v21 didDisconnectWithError:v15];
    }
  }

  [v21 disconnect];
}

uint64_t IsEvernoteInstalled()
{
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v1 = [MEMORY[0x277CBEBC0] URLWithString:@"en://"];
  v2 = [v0 isApplicationAvailableToOpenURL:v1 error:0];

  return v2;
}

void sub_23E0F8D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMSaveRequestClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __ReminderKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1C590;
    v8 = 0;
    ReminderKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFRemoveCalendarItemsAction.m" lineNumber:19 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("REMSaveRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMSaveRequestClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFRemoveCalendarItemsAction.m" lineNumber:20 description:{@"Unable to find class %s", "REMSaveRequest"}];

LABEL_10:
    __break(1u);
  }

  getREMSaveRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary = result;
  return result;
}

id getCBClientClass_23066()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCBClientClass_softClass_23067;
  v7 = getCBClientClass_softClass_23067;
  if (!getCBClientClass_softClass_23067)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCBClientClass_block_invoke_23068;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCBClientClass_block_invoke_23068(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0F9A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCBClientClass_block_invoke_23068(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreBrightnessLibraryCore_frameworkLibrary_23069)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreBrightnessLibraryCore_block_invoke_23070;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C1C5A8;
    v8 = 0;
    CoreBrightnessLibraryCore_frameworkLibrary_23069 = _sl_dlopen();
  }

  if (!CoreBrightnessLibraryCore_frameworkLibrary_23069)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreBrightnessLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFTrueToneSettingsClient.m" lineNumber:19 description:{@"%s", v6[0]}];

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
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCBClientClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFTrueToneSettingsClient.m" lineNumber:30 description:{@"Unable to find class %s", "CBClient"}];

LABEL_10:
    __break(1u);
  }

  getCBClientClass_softClass_23067 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreBrightnessLibraryCore_block_invoke_23070(uint64_t a1)
{
  result = _sl_dlopen();
  CoreBrightnessLibraryCore_frameworkLibrary_23069 = result;
  return result;
}

id ONOXPathFromCSS(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = a1;
  v3 = [v1 array];
  v4 = [v2 componentsSeparatedByString:{@", "}];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ONOXPathFromCSS_block_invoke;
  v8[3] = &unk_278C1C5F0;
  v9 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v8];

  v6 = [v5 componentsJoinedByString:@" | "];

  return v6;
}

void __ONOXPathFromCSS_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__23319;
    v18 = __Block_byref_object_dispose__23320;
    v19 = [MEMORY[0x277CBEB18] arrayWithObject:@"./"];
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__23319;
    v12[4] = __Block_byref_object_dispose__23320;
    v13 = 0;
    v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];
    v7 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v8 = [v6 componentsSeparatedByCharactersInSet:v7];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __ONOXPathFromCSS_block_invoke_8;
    v11[3] = &unk_278C1C5C8;
    v11[4] = &v14;
    v11[5] = v12;
    [v8 enumerateObjectsUsingBlock:v11];

    v9 = *(a1 + 32);
    v10 = [v15[5] componentsJoinedByString:@"/"];
    [v9 addObject:v10];

    _Block_object_dispose(v12, 8);
    _Block_object_dispose(&v14, 8);
  }
}

void sub_23E0FB5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23319(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __ONOXPathFromCSS_block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 isEqualToString:@"*"];
  if (a3 && v6)
  {