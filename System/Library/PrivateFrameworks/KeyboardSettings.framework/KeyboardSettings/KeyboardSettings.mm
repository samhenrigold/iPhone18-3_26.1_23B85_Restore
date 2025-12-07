void *LocStringKeyBasedOnLanguageCount(void *result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    result = [result stringByAppendingString:@"S"];
  }

  if (a3)
  {

    return [result stringByAppendingString:a3];
  }

  return result;
}

void sub_255829D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t DictationIsEnabled()
{
  if ([objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")])
  {
    return 1;
  }

  else
  {
    return [objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")] ^ 1;
  }
}

void sub_25582AD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25582BC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getMCProfileConnectionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy_;
  v0 = getMCProfileConnectionClass_softClass;
  v7 = __Block_byref_object_dispose_;
  v8 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getMCProfileConnectionClass_block_invoke;
    v2[3] = &unk_2797F9DF8;
    v2[4] = &v3;
    __getMCProfileConnectionClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_25582D5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMCKeyboardSettingsChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCKeyboardSettingsChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ManagedConfigurationLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2797F9E18;
    v5 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ManagedConfigurationLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
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

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t KeyboardSettingsFeedbackLibraryCore()
{
  if (!KeyboardSettingsFeedbackLibraryCore_frameworkLibrary)
  {
    KeyboardSettingsFeedbackLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return KeyboardSettingsFeedbackLibraryCore_frameworkLibrary;
}

uint64_t __KeyboardSettingsFeedbackLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  KeyboardSettingsFeedbackLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getTUIFeedbackControllerClass_block_invoke(uint64_t a1)
{
  KeyboardSettingsFeedbackLibraryCore();
  result = objc_getClass("TUIFeedbackController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  getTUIFeedbackControllerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  ManagedConfigurationLibrary();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getMCProfileConnectionClass_block_invoke_cold_1();
    return __TIGetToggleFourOrFiveRowKeyboardValue_block_invoke();
  }

  return result;
}

uint64_t __TIGetToggleFourOrFiveRowKeyboardValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v1 = MEMORY[0x277CBEC28];

  return [v0 _configureKey:@"ToggleFourOrFiveRowKeyboard" domain:@"com.apple.keyboard" defaultValue:v1];
}

void sub_25583318C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id location)
{
  objc_destroyWeak((v54 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t IsTrialAssetDeliveryEnabled()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.internal.ck"];
  v1 = [v0 objectForKey:@"disableTrialAssetDelivery"];
  v2 = [v1 BOOLValue];

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = [v0 objectForKey:@"enableTrialAssetDelivery"];
    if ([v4 BOOLValue])
    {
      v3 = 1;
    }

    else
    {
      v3 = _os_feature_enabled_impl();
    }
  }

  return v3;
}

__CFString *TUIKeyboardDisplayNameFromIdentifierForContext(void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D75680] keyboardInputModeWithIdentifier:a1];
  if ([v4 isExtensionInputMode])
  {

    return [v4 safe__extendedDisplayName];
  }

  if ([a1 hasPrefix:*MEMORY[0x277D76BD0]])
  {
    return @"QWERTY";
  }

  TIInputModeGetNormalizedIdentifier();
  LanguageWithRegion = TIInputModeGetLanguageWithRegion();
  v6 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", LanguageWithRegion, &stru_28679E3A8, @"KeyboardTitles"}];
  if (([v6 isEqualToString:LanguageWithRegion] & 1) == 0 && v6)
  {
    return v6;
  }

  v8 = [MEMORY[0x277CBEAF8] localeForBundleLanguage:{objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle")}];
  if (_ReducedLanguageIdentifierForKeyboardLanguage___onceToken != -1)
  {
    TUIKeyboardDisplayNameFromIdentifierForContext_cold_1();
  }

  if ([_ReducedLanguageIdentifierForKeyboardLanguage___languageCounts countForObject:{objc_msgSend(MEMORY[0x277CBEAF8], "baseLanguageFromLanguage:", LanguageWithRegion)}] <= 1)
  {
    LanguageWithRegion = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:LanguageWithRegion];
  }

  return [v8 localizedStringForLanguage:LanguageWithRegion context:a2];
}

void sub_255839F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t getSFSpeechAssetManagerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__0;
  v0 = getSFSpeechAssetManagerClass_softClass;
  v7 = __Block_byref_object_dispose__0;
  v8 = getSFSpeechAssetManagerClass_softClass;
  if (!getSFSpeechAssetManagerClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getSFSpeechAssetManagerClass_block_invoke;
    v2[3] = &unk_2797F9DF8;
    v2[4] = &v3;
    __getSFSpeechAssetManagerClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_25583C198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFSpeechAssetManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SpeechLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SpeechLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2797FA110;
    v6 = 0;
    SpeechLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SpeechLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SFSpeechAssetManager");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSFSpeechAssetManagerClass_block_invoke_cold_1();
  }

  getSFSpeechAssetManagerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __SpeechLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpeechLibraryCore_frameworkLibrary = result;
  return result;
}

id attributedTitleForKey(void *a1, __IOHIDServiceClient *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a3;
  if ([(__CFString *)v7 isEqualToString:@"Function"]&& showGlobeKeyInsteadOfFunctionKey(a2))
  {

    v7 = @"Globe";
  }

  v9 = [_keyToTitle objectForKeyedSubscript:v7];
  if (![(__CFString *)v7 isEqualToString:@"CapsLock"]|| !a2)
  {
    goto LABEL_10;
  }

  v10 = IOHIDServiceClientCopyProperty(a2, @"CapsLockLanguageSwitch");
  v11 = IOHIDServiceClientCopyProperty(a2, @"KeyboardLanguage");
  if ([v11 length] && ((objc_msgSend(v10, "BOOLValue") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"Simplified Chinese Keyboard")))
  {
    v12 = +[KSHardwareKeyboardController IOHIDKeyboardLanguageToCapsLockKeyLabel];
    v13 = [v12 objectForKey:v11];
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
LABEL_10:
    if (a4)
    {
      v14 = [_keyToSymbol objectForKeyedSubscript:v7];
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v15 = v13;

  v14 = 0;
  v9 = v15;
  if (v8)
  {
LABEL_14:
    v16 = [v9 stringByAppendingString:v8];

    v9 = v16;
  }

LABEL_15:
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:v9 value:&stru_28679E3A8 table:@"Keyboard"];

  v19 = [KSKeyboardListController attributedTitleForSymbolName:v14 cellTitle:v18];

  return v19;
}

void sub_255841740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id location)
{
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t showGlobeKeyInsteadOfFunctionKey(__IOHIDServiceClient *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = IOHIDServiceClientCopyProperty(a1, @"SupportsGlobeKey");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __initializeDictionaries_block_invoke()
{
  v36 = *MEMORY[0x277D85DE8];
  v33[0] = @"CapsLock";
  v33[1] = @"Control";
  v34[0] = &unk_2867A4BD8;
  v34[1] = &unk_2867A4BF0;
  v33[2] = @"Option";
  v33[3] = @"Command";
  v34[2] = &unk_2867A4C08;
  v34[3] = &unk_2867A4C20;
  v33[4] = @"Escape";
  v33[5] = @"Function";
  v34[4] = &unk_2867A4C38;
  v34[5] = &unk_2867A4C50;
  v33[6] = @"Globe";
  v33[7] = @"NoAction";
  v34[6] = &unk_2867A4C68;
  v34[7] = &unk_2867A4C80;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:8];
  v1 = _keyToKeyCode;
  _keyToKeyCode = v0;

  v31[0] = @"CapsLock";
  v31[1] = @"Control";
  v32[0] = @"Caps Lock";
  v32[1] = @"Control";
  v31[2] = @"Option";
  v31[3] = @"Command";
  v32[2] = @"Option";
  v32[3] = @"Command";
  v31[4] = @"Escape";
  v31[5] = @"Function";
  v32[4] = @"Escape";
  v32[5] = @"Function";
  v31[6] = @"Globe";
  v31[7] = @"NoAction";
  v32[6] = @"Globe";
  v32[7] = @"No Action";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:8];
  v3 = _keyToTitle;
  _keyToTitle = v2;

  v29[0] = @"CapsLock";
  v29[1] = @"Control";
  v30[0] = @"capslock";
  v30[1] = @"control";
  v29[2] = @"Option";
  v29[3] = @"Command";
  v30[2] = @"option";
  v30[3] = @"command";
  v29[4] = @"Escape";
  v29[5] = @"Function";
  v30[4] = @"escape";
  v30[5] = @"fn";
  v29[6] = @"Globe";
  v30[6] = @"globe";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:7];
  v5 = _keyToSymbol;
  _keyToSymbol = v4;

  v28[0] = @"CapsLock";
  v28[1] = @"Control";
  v28[2] = @"Option";
  v28[3] = @"Command";
  v28[4] = @"Globe";
  v28[5] = @"Function";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:6];
  v7 = _srcKeys;
  _srcKeys = v6;

  v27[0] = @"CapsLock";
  v27[1] = @"Control";
  v27[2] = @"Option";
  v27[3] = @"Command";
  v27[4] = @"Escape";
  v27[5] = @"Globe";
  v27[6] = @"Function";
  v27[7] = @"NoAction";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:8];
  v9 = _dstKeys;
  _dstKeys = v8;

  v10 = _keyToKeyCode;
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = [v12 objectForKeyedSubscript:{v17, v23}];
        if ([v18 count])
        {
          v19 = 0;
          do
          {
            v20 = [v18 objectAtIndexedSubscript:v19];
            [v11 setObject:v17 forKeyedSubscript:v20];

            ++v19;
          }

          while (v19 < [v18 count]);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v14);
  }

  v21 = [v11 copy];
  v22 = _keyCodeToKey;
  _keyCodeToKey = v21;
}

void *KSInputModeIsChineseWubi(uint64_t a1)
{
  result = [TIInputModeGetBaseLanguage() isEqualToString:@"zh"];
  if (result)
  {
    Variant = TIInputModeGetVariant();

    return [Variant isEqualToString:@"Wubixing"];
  }

  return result;
}

uint64_t KSGetCurrentWubiStandardName()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v1 = [objc_msgSend(v0 valueForPreferenceKey:{*MEMORY[0x277D6FD18]), "integerValue"}];

  return KSGetWubiStandardName(v1);
}

uint64_t KSGetWubiStandardName(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  v2 = off_2797FA130[a1];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v3 localizedStringForKey:v2 value:&stru_28679E3A8 table:@"Preferences_wubi"];
}

void ShortcutsDidChange(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __ShortcutsDidChange_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_255846DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id TIUIGetMultilingualIDFromInputMode(uint64_t a1)
{
  v1 = TIInputModeGetComponentsFromIdentifier();
  v2 = [v1 objectForKey:@"ml"];

  return v2;
}

id TIUIInputModeGetMultilingualSetFromInputModes(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TIUIGetMultilingualIDFromInputMode(a1);
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CBEB18] array];
    if (v3)
    {
      v6 = v3;
    }

    else
    {
      v7 = [MEMORY[0x277D75688] sharedInputModeController];
      v6 = [v7 enabledInputModeIdentifiers];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = TIUIGetMultilingualIDFromInputMode(v13);
          if ([v4 isEqualToString:{v14, v16}])
          {
            [v5 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

uint64_t TIUIGetMultlingualSetsAreEqual(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = TIUIGetLanguagesForMultilingualSet(v3);
  v6 = TIUIGetLanguagesForMultilingualSet(v4);
  if (![v5 isEqualToSet:v6])
  {
    goto LABEL_14;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if ([*(*(&v22 + 1) + 8 * v11) isEqualToString:{@"vi_VN", v22}])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v12 = TIUIGetOrderedLanguagesForMultilingualSet(v3);
    v13 = TIUIGetOrderedLanguagesForMultilingualSet(v4);
    v14 = [v12 isEqualToArray:v13];

    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_10:
  }

  v15 = [v3 firstObject];
  v16 = TIInputModeGetSWLayout();

  v17 = [v4 firstObject];
  v18 = TIInputModeGetSWLayout();

  if (v16 == v18)
  {

    goto LABEL_16;
  }

  v19 = [v16 isEqualToString:v18];

  if (v19)
  {
LABEL_16:
    v20 = 1;
    goto LABEL_17;
  }

LABEL_14:
  v20 = 0;
LABEL_17:

  return v20;
}

id TIUIGetLanguagesForMultilingualSet(void *a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = TIUIGetOrderedLanguagesForMultilingualSet(a1);
  v3 = [v1 setWithArray:v2];

  return v3;
}

id TIUIGetOrderedLanguagesForMultilingualSet(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = TIInputModeGetLanguageWithRegion();
        [v2 addObject:{v8, v10}];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id TIUIKeyboardInputModeGetIdentifierFromComponents(void *a1)
{
  v1 = a1;
  v2 = TIInputModeGetNormalizedIdentifierFromComponents();
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [v1 objectForKey:@"sw"];
  if ([v4 length])
  {
    v5 = [@"sw=" stringByAppendingString:v4];
    [v3 addObject:v5];
  }

  v6 = [v1 objectForKey:@"hw"];
  if ([v6 length])
  {
    v7 = [@"hw=" stringByAppendingString:v6];
    [v3 addObject:v7];
  }

  v8 = [v1 objectForKey:@"ml"];
  if ([v8 length])
  {
    v9 = [@"ml=" stringByAppendingString:v8];
    [v3 addObject:v9];
  }

  if ([v3 count])
  {
    v10 = [v3 componentsJoinedByString:@""];;
    v11 = [v2 stringByAppendingFormat:@"@%@", v10];

    v2 = v11;
  }

  return v2;
}

void *TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts(uint64_t a1, uint64_t a2)
{
  v2 = TIGetInputModeProperties();
  v3 = [v2 objectForKey:@"SWLayouts-Multiscript"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

id TIUIGetPairedInputModesForInputMode(void *a1)
{
  v1 = TIUIGetPairedInputModesForInputMode___onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    TIUIGetPairedInputModesForInputMode_cold_1();
  }

  v3 = [TIUIGetPairedInputModesForInputMode___pairedInputModes objectForKeyedSubscript:v2];

  return v3;
}

void __TIUIGetPairedInputModesForInputMode_block_invoke()
{
  v0 = TIUIGetPairedInputModesForInputMode___pairedInputModes;
  TIUIGetPairedInputModesForInputMode___pairedInputModes = &unk_2867A50D8;
}

uint64_t TIUICanAddInputModeToMultilingualSet(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = GetDependentMultilingualInputModes(v4);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = TIInputModeGetNormalizedIdentifier();
        if ([v5 containsObject:{v11, v15}] && (!v3 || objc_msgSend(v5, "containsObject:", v3) && ((objc_msgSend(&unk_2867A4D70, "containsObject:", v3) & 1) != 0 || isH13ANEPresentOnIOS())) && objc_msgSend(v6, "count") < 5)
        {

          IsMultiscriptInput = 1;
          v13 = v6;
          goto LABEL_17;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if ([v6 count] <= 1)
  {
    if (v3)
    {
      v13 = [v6 arrayByAddingObject:v3];
      if (TIUIMultilingualSetIsMonoscriptInput(v13))
      {
        IsMultiscriptInput = 1;
      }

      else
      {
        IsMultiscriptInput = TIUIMultilingualSetIsMultiscriptInput(v13, 0);
      }

LABEL_17:
    }

    else
    {
      IsMultiscriptInput = 1;
    }
  }

  else
  {
    IsMultiscriptInput = 0;
  }

  return IsMultiscriptInput;
}

id GetDependentMultilingualInputModes(uint64_t a1)
{
  if (GetDependentMultilingualInputModes___onceToken != -1)
  {
    GetDependentMultilingualInputModes_cold_1();
  }

  v2 = GetDependentMultilingualInputModes___dependentInputModes;

  return v2;
}

uint64_t TIUIMultilingualSetIsMonoscriptInput(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v16;
    v6 = *MEMORY[0x277D6F760];
    v7 = *MEMORY[0x277D6F750];
    do
    {
      v8 = 0;
      v9 = v4;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v10 = TIInputModeGetNormalizedIdentifier();
        v4 = TIGetInputModeProperties();

        v11 = [v4 objectForKey:{v6, v15}];
        if ([v11 BOOLValue])
        {
          v12 = [v4 objectForKey:v7];

          if (v12)
          {
            v13 = 0;
            goto LABEL_13;
          }
        }

        else
        {
        }

        ++v8;
        v9 = v4;
      }

      while (v3 != v8);
      v3 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
    v13 = 1;
LABEL_13:
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t TIUIMultilingualSetIsMultiscriptInput(void *a1, _BYTE *a2)
{
  v3 = a1;
  if ([v3 count] == 2)
  {
    if (_TIUIMultilingualSetIsMultiscriptInputInOrder(v3))
    {
      v4 = 1;
    }

    else
    {
      v5 = [v3 reverseObjectEnumerator];
      v6 = [v5 allObjects];

      IsMultiscriptInputInOrder = _TIUIMultilingualSetIsMultiscriptInputInOrder(v6);
      v4 = IsMultiscriptInputInOrder;
      if (a2 && IsMultiscriptInputInOrder)
      {
        *a2 = 1;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id TIUIGetAddableInputModesForMultilingualSet(void *a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (TIUICanAddInputModeToMultilingualSet(0, v1))
  {
    v2 = v1;
    v3 = [v2 mutableCopy];
    if ([v3 count])
    {
      v4 = 0;
      do
      {
        v5 = [v2 objectAtIndexedSubscript:v4];
        v6 = TIInputModeGetNormalizedIdentifier();
        [v3 replaceObjectAtIndex:v4 withObject:v6];

        ++v4;
      }

      while (v4 < [v3 count]);
    }

    v49 = GetMultilingualInputModes(v7);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v66 objects:v73 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v67;
      v13 = MEMORY[0x277CBEBF8];
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v67 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v66 + 1) + 8 * i);
          v16 = [v49 containsObject:v15];
          if (!v16)
          {
            v21 = v8;
            v20 = v13;
            goto LABEL_50;
          }

          GetDependentMultilingualInputModes(v16);
          v18 = v17 = v11;
          v19 = [v18 containsObject:v15];

          v11 = v19 | v17;
        }

        v10 = [v8 countByEnumeratingWithState:&v66 objects:v73 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }

    v46 = v11;
    v47 = v2;
    v48 = v1;

    v50 = [MEMORY[0x277CBEB18] array];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v22 = GetDependentMultilingualInputModes(v50);
    v23 = [v22 countByEnumeratingWithState:&v62 objects:v72 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v63;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v63 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v62 + 1) + 8 * j);
          if (([v8 containsObject:v27] & 1) == 0)
          {
            v28 = GetRequiredInputModesForDependentInputMode(v27);
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v29 = v28;
            v30 = [v29 countByEnumeratingWithState:&v58 objects:v71 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v59;
              while (2)
              {
                for (k = 0; k != v31; ++k)
                {
                  if (*v59 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  if ([v8 containsObject:*(*(&v58 + 1) + 8 * k)])
                  {

                    if (([&unk_2867A4D70 containsObject:v27] & 1) != 0 || isH13ANEPresentOnIOS())
                    {
                      [v50 addObject:v27];
                    }

                    goto LABEL_35;
                  }
                }

                v31 = [v29 countByEnumeratingWithState:&v58 objects:v71 count:16];
                if (v31)
                {
                  continue;
                }

                break;
              }
            }

LABEL_35:
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v62 objects:v72 count:16];
      }

      while (v24);
    }

    v1 = v48;
    v20 = v50;
    if ((v46 & 1) == 0)
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v35 = GetBilingualInputModes(v34);
      v36 = [v35 countByEnumeratingWithState:&v54 objects:v70 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v55;
        do
        {
          for (m = 0; m != v37; ++m)
          {
            if (*v55 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v54 + 1) + 8 * m);
            if (([v8 containsObject:v40] & 1) == 0)
            {
              [v50 addObject:v40];
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v54 objects:v70 count:16];
        }

        while (v37);
      }
    }

    v41 = [MEMORY[0x277D75688] sharedInputModeController];
    v42 = [v41 enabledInputModeIdentifiers];

    v43 = MEMORY[0x277CCAC30];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __TIUIGetAddableInputModesForMultilingualSet_block_invoke;
    v51[3] = &unk_2797FA2A8;
    v52 = v42;
    v53 = v47;
    v21 = v42;
    v44 = [v43 predicateWithBlock:v51];
    [v50 filterUsingPredicate:v44];

LABEL_50:
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  return v20;
}

id GetMultilingualInputModes(uint64_t a1)
{
  v1 = GetBilingualInputModes(a1);
  v2 = GetDependentMultilingualInputModes(v1);
  v3 = [v1 arrayByAddingObjectsFromArray:v2];

  return v3;
}

id GetRequiredInputModesForDependentInputMode(void *a1)
{
  v1 = a1;
  if (GetRequiredInputModesForDependentInputMode_onceToken != -1)
  {
    GetRequiredInputModesForDependentInputMode_cold_1();
  }

  if ([GetRequiredInputModesForDependentInputMode___transliterationInputModes containsObject:v1])
  {
    v2 = GetRequiredInputModesForDependentInputMode___englishInputModes;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id GetBilingualInputModes(uint64_t a1)
{
  if (GetBilingualInputModes___onceToken != -1)
  {
    GetBilingualInputModes_cold_1();
  }

  v2 = GetBilingualInputModes___bilingualInputModes;

  return v2;
}

uint64_t __TIUIGetAddableInputModesForMultilingualSet_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = TIUIGetProposedMultilingualSetsForAddingInputMode(a2, *(a1 + 32));
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) objectForKeyedSubscript:{@"current", v12}];
        v9 = [v8 isEqualToArray:*(a1 + 40)];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

id TIUIGetProposedMultilingualSetsForAddingInputMode(void *a1, void *a2)
{
  v156 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v115 = GetMultilingualInputModes(v4);
  if ([v115 containsObject:v3])
  {
    v110 = v3;
    v5 = [MEMORY[0x277CBEB40] orderedSet];
    v117 = [MEMORY[0x277CBEB38] dictionary];
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v100 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v128 objects:v154 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v129;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v129 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v128 + 1) + 8 * i);
          v11 = TIInputModeGetNormalizedIdentifier();
          if ([v115 containsObject:v11])
          {
            v12 = TIUIGetMultilingualIDFromInputMode(v10);
            v13 = v12;
            if (v12)
            {
              v14 = v12;
            }

            else
            {
              v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"_", v10];
            }

            v15 = v14;

            v16 = [v117 objectForKeyedSubscript:v15];
            if (!v16)
            {
              v16 = [MEMORY[0x277CBEB18] array];
              [v117 setObject:v16 forKeyedSubscript:v15];
            }

            [v16 addObject:v10];
            [v5 addObject:v15];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v128 objects:v154 count:16];
      }

      while (v7);
    }

    v105 = [MEMORY[0x277CBEB18] array];
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v109 = v5;
    v3 = v110;
    v112 = [v109 countByEnumeratingWithState:&v124 objects:v153 count:16];
    if (v112)
    {
      v111 = *v125;
      v17 = 0x277CCA000;
      do
      {
        for (j = 0; j != v112; ++j)
        {
          if (*v125 != v111)
          {
            objc_enumerationMutation(v109);
          }

          v19 = *(*(&v124 + 1) + 8 * j);
          v20 = [v117 objectForKeyedSubscript:v19];
          if (![v19 hasPrefix:@"_"])
          {
            if (!TIUICanAddInputModeToMultilingualSet(v3, v20))
            {
              goto LABEL_97;
            }

            v37 = [v20 firstObject];
            v36 = GetInputModeIdentifierByMatchingLayoutsAndAddingMultilingualID(v3, v37, v19);

            if (([obj containsObject:v36] & 1) == 0)
            {
              v38 = TIUIGetProposedMultilingualSetByAddingInputMode(v3, v20);
              if (v38)
              {
                [v105 addObject:v38];
              }

              goto LABEL_95;
            }

            goto LABEL_96;
          }

          v21 = v3;
          v22 = v20;
          v23 = GetDependentMultilingualInputModes(v22);
          v24 = [v23 containsObject:v21];

          v113 = v20;
          v114 = j;
          if (v24)
          {
            if (([&unk_2867A4D70 containsObject:v21] & 1) == 0 && !isH13ANEPresentOnIOS())
            {
LABEL_57:
              v36 = 0;
              goto LABEL_65;
            }

            v26 = GetRequiredInputModesForDependentInputMode(v21);
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v27 = v22;
            v28 = [v27 countByEnumeratingWithState:&v132 objects:v155 count:16];
            if (v28)
            {
              v29 = v28;
              v106 = v22;
              v30 = v21;
              v31 = *v133;
              while (2)
              {
                for (k = 0; k != v29; ++k)
                {
                  if (*v133 != v31)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v33 = *(*(&v132 + 1) + 8 * k);
                  v34 = TIInputModeGetNormalizedIdentifier();
                  v35 = [v26 containsObject:v34];

                  if (v35)
                  {
                    v21 = v30;
                    goto LABEL_61;
                  }
                }

                v29 = [v27 countByEnumeratingWithState:&v132 objects:v155 count:16];
                if (v29)
                {
                  continue;
                }

                break;
              }

              v36 = 0;
              v21 = v30;
LABEL_62:
              v22 = v106;
            }

            else
            {
              v36 = 0;
            }

            v20 = v113;
            j = v114;
          }

          else
          {
            v39 = GetBilingualInputModes(v25);
            v40 = [v39 containsObject:v21];

            if (!v40)
            {
              goto LABEL_57;
            }

            v134 = 0u;
            v135 = 0u;
            v132 = 0u;
            v133 = 0u;
            v26 = v22;
            v118 = [v26 countByEnumeratingWithState:&v132 objects:v155 count:16];
            if (v118)
            {
              v106 = v22;
              v41 = *v133;
              while (2)
              {
                for (m = 0; m != v118; ++m)
                {
                  if (*v133 != v41)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v33 = *(*(&v132 + 1) + 8 * m);
                  v27 = TIInputModeGetNormalizedIdentifier();
                  v43 = GetBilingualInputModes(v27);
                  if ([v43 containsObject:v27])
                  {
                    [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v21];
                    v44 = v41;
                    v45 = v26;
                    v47 = v46 = v21;
                    v48 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v27];
                    v49 = [v47 isEqualToString:v48];

                    v21 = v46;
                    v26 = v45;
                    v41 = v44;

                    if (!v49)
                    {
                      v17 = 0x277CCA000uLL;
LABEL_61:
                      v36 = v33;
                      goto LABEL_62;
                    }
                  }

                  else
                  {
                  }

                  v51 = GetDependentMultilingualInputModes(v50);
                  if ([v51 containsObject:v27])
                  {
                    v52 = GetRequiredInputModesForDependentInputMode(v27);
                    v53 = [v52 containsObject:v21];

                    v17 = 0x277CCA000;
                    if (v53 && (([&unk_2867A4D70 containsObject:v27] & 1) != 0 || (isH13ANEPresentOnIOS() & 1) != 0))
                    {
                      goto LABEL_61;
                    }
                  }

                  else
                  {

                    v17 = 0x277CCA000;
                  }
                }

                v118 = [v26 countByEnumeratingWithState:&v132 objects:v155 count:16];
                if (v118)
                {
                  continue;
                }

                break;
              }

              v36 = 0;
              v20 = v113;
              j = v114;
              v22 = v106;
            }

            else
            {
              v36 = 0;
            }
          }

          v3 = v110;
LABEL_65:

          if (v36)
          {
            v54 = obj;
            v55 = [MEMORY[0x277CBEB18] array];
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v56 = v54;
            v57 = [v56 countByEnumeratingWithState:&v132 objects:v155 count:16];
            if (v57)
            {
              v58 = v57;
              v59 = *v133;
              do
              {
                for (n = 0; n != v58; ++n)
                {
                  if (*v133 != v59)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v61 = TIUIGetMultilingualIDFromInputMode(*(*(&v132 + 1) + 8 * n));
                  if ([v61 length])
                  {
                    v62 = [*(v17 + 2992) numberWithInteger:{objc_msgSend(v61, "integerValue")}];
                    [v55 addObject:v62];
                  }
                }

                v58 = [v56 countByEnumeratingWithState:&v132 objects:v155 count:16];
              }

              while (v58);
            }

            [v55 sortUsingSelector:sel_compare_];
            v63 = [v55 lastObject];
            v64 = [v63 integerValue];

            v65 = [*(v17 + 2992) numberWithUnsignedInteger:v64 + 1];
            if ([v55 containsObject:v65])
            {
              TIUIGetProposedMultilingualSetsForAddingInputMode_cold_3();
            }

            v66 = [*(v17 + 2992) numberWithUnsignedInteger:v64 + 1];
            v38 = [v66 stringValue];

            v67 = GetInputModeIdentifierByMatchingLayoutsAndAddingMultilingualID(v36, 0, v38);
            v68 = GetInputModeIdentifierByMatchingLayoutsAndAddingMultilingualID(v21, v67, v38);
            v69 = TIUIGetPairedInputModesForInputMode(v21);
            if (![v69 count])
            {
              v70 = TIInputModeGetNormalizedIdentifier();
              v71 = TIUIGetPairedInputModesForInputMode(v70);

              v69 = v71;
            }

            if ([v69 count])
            {
              v107 = v68;
              v72 = [MEMORY[0x277CBEB18] arrayWithObject:v68];
              v120 = 0u;
              v121 = 0u;
              v122 = 0u;
              v123 = 0u;
              v119 = v69;
              v73 = v69;
              v74 = [v73 countByEnumeratingWithState:&v120 objects:v152 count:16];
              if (v74)
              {
                v75 = v74;
                v76 = *v121;
                do
                {
                  for (ii = 0; ii != v75; ++ii)
                  {
                    if (*v121 != v76)
                    {
                      objc_enumerationMutation(v73);
                    }

                    v78 = GetInputModeIdentifierByMatchingLayoutsAndAddingMultilingualID(*(*(&v120 + 1) + 8 * ii), v67, v38);
                    [v72 addObject:v78];
                  }

                  v75 = [v73 countByEnumeratingWithState:&v120 objects:v152 count:16];
                }

                while (v75);
              }

              v150[0] = @"current";
              v149 = v36;
              v79 = [MEMORY[0x277CBEA60] arrayWithObjects:&v149 count:1];
              v151[0] = v79;
              v150[1] = @"updated";
              v148 = v67;
              v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v148 count:1];
              v150[2] = @"added";
              v151[1] = v80;
              v151[2] = v72;
              v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v151 forKeys:v150 count:3];
              [v105 addObject:v81];

              v68 = v107;
              goto LABEL_87;
            }

            v147[0] = v67;
            v147[1] = v68;
            v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];
            IsMonoscriptInput = TIUIMultilingualSetIsMonoscriptInput(v82);

            if (IsMonoscriptInput)
            {
              v145[0] = @"current";
              v144 = v36;
              v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v144 count:1];
              v146[0] = v72;
              v145[1] = @"updated";
              v143 = v67;
              v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v143 count:1];
              v146[1] = v84;
              v145[2] = @"added";
              v142 = v68;
              v85 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
              v146[2] = v85;
              [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:3];
              v87 = v86 = v68;
              [v105 addObject:v87];

              v68 = v86;
            }

            else
            {
              v141[0] = v67;
              v141[1] = v68;
              v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:2];
              v155[0] = 0;
              if (TIUIMultilingualSetIsMultiscriptInput(v72, v155))
              {
                if ([v72 count] != 2)
                {
                  TIUIGetProposedMultilingualSetsForAddingInputMode_cold_1();
                }

                v119 = v69;
                v88 = [v72 objectAtIndexedSubscript:v155[0]];
                v89 = [v72 objectAtIndexedSubscript:v155[0] ^ 1];
                v90 = TIInputModeGetNormalizedIdentifier();
                v92 = TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts(v90, v91);

                if (![v92 count])
                {
                  TIUIGetProposedMultilingualSetsForAddingInputMode_cold_2();
                }

                v108 = [v92 firstObject];
                v104 = UIKeyboardInputModeWithNewSWLayout();
                v138 = v36;
                v139[0] = @"current";
                v102 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:1];
                v140[0] = v102;
                v139[1] = @"updated";
                v137 = v104;
                v93 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
                v140[1] = v93;
                v139[2] = @"added";
                v103 = v89;
                v136 = v89;
                [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
                v101 = v88;
                v95 = v94 = v68;
                v140[2] = v95;
                v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:v139 count:3];
                [v105 addObject:v96];

                v68 = v94;
LABEL_87:
                v69 = v119;
              }
            }

            v3 = v110;
            v20 = v113;
            j = v114;
LABEL_95:
          }

LABEL_96:

LABEL_97:
        }

        v112 = [v109 countByEnumeratingWithState:&v124 objects:v153 count:16];
      }

      while (v112);
    }

    v97 = v105;
    v98 = [v105 indexesOfObjectsPassingTest:&__block_literal_global_119_0];
    if ([v98 count])
    {
      [v105 removeObjectsAtIndexes:v98];
    }

    v4 = v100;
  }

  else
  {
    v97 = MEMORY[0x277CBEBF8];
  }

  return v97;
}

id GetInputModeIdentifierByMatchingLayoutsAndAddingMultilingualID(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = TIInputModeGetComponentsFromIdentifier();
  v9 = [v8 mutableCopy];

  if (v6)
  {
    v10 = TIInputModeGetComponentsFromIdentifier();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 objectForKey:@"sw"];
  if (![v11 length])
  {
    v12 = [KSKeyboardListController softwareLayoutsForBaseInputMode:v5];
    v13 = [v10 objectForKeyedSubscript:@"sw"];
    if ([v13 length] && objc_msgSend(v12, "containsObject:", v13))
    {
      v14 = v13;
    }

    else
    {
      v14 = [v12 firstObject];
    }

    v15 = v14;

    [v9 setObject:v15 forKeyedSubscript:@"sw"];
    v11 = v15;
  }

  v16 = [v9 objectForKey:@"hw"];
  if (![v16 length])
  {
    v17 = UIKeyboardGetSupportedHardwareKeyboardsForInputMode();
    v18 = [v10 objectForKeyedSubscript:@"hw"];
    if ([v18 length] && objc_msgSend(v17, "containsObject:", v18))
    {
      v19 = v18;
    }

    else
    {
      v19 = UIKeyboardGetDefaultHardwareKeyboardForInputMode();
    }

    v20 = v19;

    [v9 setObject:v20 forKeyedSubscript:@"hw"];
    v16 = v20;
  }

  [v9 setObject:v7 forKeyedSubscript:@"ml"];
  v21 = TIUIKeyboardInputModeGetIdentifierFromComponents(v9);

  return v21;
}

id TIUIGetProposedMultilingualSetByAddingInputMode(void *a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 firstObject];
  v6 = TIUIGetMultilingualIDFromInputMode(v5);

  v7 = [v4 firstObject];
  v8 = GetInputModeIdentifierByMatchingLayoutsAndAddingMultilingualID(v3, v7, v6);

  v9 = TIUIGetPairedInputModesForInputMode(v3);
  if ([v9 count])
  {
    v34 = v8;
    v36 = v3;
    v10 = [MEMORY[0x277CBEB18] arrayWithObject:v8];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v40;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v39 + 1) + 8 * i);
          v17 = [v4 firstObject];
          v18 = GetInputModeIdentifierByMatchingLayoutsAndAddingMultilingualID(v16, v17, v6);

          [v10 addObject:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v39 objects:v53 count:16];
      }

      while (v13);
    }

    v51[0] = @"current";
    v51[1] = @"added";
    v52[0] = v4;
    v52[1] = v10;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
    v8 = v34;
    v3 = v36;
  }

  else
  {
    v50 = v8;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    v21 = [v20 arrayByAddingObjectsFromArray:v4];
    IsMonoscriptInput = TIUIMultilingualSetIsMonoscriptInput(v21);

    if (IsMonoscriptInput)
    {
      v48[1] = @"added";
      v49[0] = v4;
      v47 = v8;
      v48[0] = @"current";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      v49[1] = v10;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
    }

    else
    {
      v10 = [v4 arrayByAddingObject:v8];
      v38 = 0;
      if (TIUIMultilingualSetIsMultiscriptInput(v10, &v38))
      {
        if ([v10 count] != 2)
        {
          TIUIGetProposedMultilingualSetByAddingInputMode_cold_1();
        }

        v23 = [v10 objectAtIndexedSubscript:v38];
        v37 = [v10 objectAtIndexedSubscript:v38 ^ 1];
        v24 = TIInputModeGetNormalizedIdentifier();
        v26 = TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts(v24, v25);

        if (![v26 count])
        {
          TIUIGetProposedMultilingualSetByAddingInputMode_cold_2();
        }

        v35 = v26;
        v33 = [v26 firstObject];
        v31 = UIKeyboardInputModeWithNewSWLayout();
        v46[0] = v4;
        v45[0] = @"current";
        v45[1] = @"updated";
        v44 = v31;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
        v27 = v32 = v23;
        v46[1] = v27;
        v45[2] = @"added";
        v43 = v37;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
        v46[2] = v28;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
      }

      else
      {
        v19 = 0;
      }
    }
  }

  if (TIUIGetProposedInputModeIsValid(v19))
  {
    v29 = v19;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

uint64_t TIUIGetProposedInputModeIsValid(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = TIUIProposedInputModeGetMultilingualSet(a1);
  v2 = [v1 firstObject];
  v3 = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages();

  v4 = [MEMORY[0x277D75688] sharedInputModeController];
  v5 = [v4 enabledInputModeIdentifiers];

  [MEMORY[0x277D75680] multilingualSetsFromInputModeIdentifiers:v5];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) identifier];
        v12 = TIInputModeGetMultilingualSetFromInputModes();

        LOBYTE(v11) = TIUIGetMultlingualSetsAreEqual(v12, v3);
        if (v11)
        {
          v13 = 0;
          goto LABEL_11;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

id TIUIProposedInputModeGetMultilingualSet(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"current"];
  v3 = TIUIGetInputModesByAddingProposedInputMode(v1, v2);

  v4 = [v3 firstObject];
  v5 = TIUIInputModeGetMultilingualSetFromInputModes(v4, v3);

  return v5;
}

id TIUIGetInputModesByAddingProposedInputMode(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 mutableCopy];
  v6 = [v3 objectForKeyedSubscript:@"current"];
  v7 = [v3 objectForKeyedSubscript:@"updated"];
  v8 = [v3 objectForKeyedSubscript:@"added"];
  if ([v7 count])
  {
    v9 = [v6 count];
    if (v9 != [v7 count])
    {
      TIUIGetInputModesByAddingProposedInputMode_cold_1();
    }

    if ([v5 count])
    {
      v10 = 0;
      do
      {
        v11 = [v5 objectAtIndexedSubscript:v10];
        v12 = [v6 indexOfObject:v11];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = v12;
          if (v12 >= [v7 count])
          {
            TIUIGetInputModesByAddingProposedInputMode_cold_2();
          }

          if (v13 < [v7 count])
          {
            v14 = [v7 objectAtIndexedSubscript:v13];
            [v5 replaceObjectAtIndex:v10 withObject:v14];
          }
        }

        ++v10;
      }

      while (v10 < [v5 count]);
    }
  }

  if ([v8 count])
  {
    v15 = [v7 lastObject];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [v6 lastObject];
    }

    v18 = v17;

    v19 = [v5 indexOfObject:v18];
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      TIUIGetInputModesByAddingProposedInputMode_cold_3();
    }

    v20 = v19;
    v27 = v8;
    v28 = v4;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = v8;
    v22 = [v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v5 insertObject:*(*(&v29 + 1) + 8 * i) atIndex:{++v20, v27, v28, v29}];
        }

        v23 = [v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v23);
    }

    v8 = v27;
    v4 = v28;
  }

  return v5;
}

uint64_t _TIUIMultilingualSetIsMultiscriptInputInOrder(void *a1)
{
  v1 = a1;
  if ([v1 count] == 2 && (objc_msgSend(MEMORY[0x277D6F470], "sharedPreferencesController"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "valueForPreferenceKey:", @"KeyboardMultiscriptEnabled"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLValue"), v3, v2, v4))
  {
    v5 = [v1 firstObject];
    v6 = TIInputModeGetNormalizedIdentifier();

    v7 = TIGetInputModeProperties();
    v8 = *MEMORY[0x277D6F760];
    v9 = [v7 objectForKey:*MEMORY[0x277D6F760]];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      v11 = [v1 objectAtIndexedSubscript:1];
      v12 = TIInputModeGetNormalizedIdentifier();

      v13 = TIGetInputModeProperties();
      v14 = [v13 objectForKey:v8];
      v15 = [v14 BOOLValue];

      if (v15)
      {
        v16 = [v7 objectForKey:*MEMORY[0x277D6F750]];
        v17 = [v16 allKeys];

        v18 = [v17 containsObject:v12];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t TIUIGetCountOfUserVisibleInputModes()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75688] sharedInputModeController];
  v1 = [v0 enabledInputModeIdentifiers];
  v2 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = TIUIGetMultilingualIDFromInputMode(*(*(&v11 + 1) + 8 * i));
        if ([v9 length])
        {
          if ([v2 containsObject:v9])
          {
            goto LABEL_10;
          }

          [v2 addObject:v9];
        }

        ++v6;
LABEL_10:
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (!v5)
      {
        goto LABEL_14;
      }
    }
  }

  v6 = 0;
LABEL_14:

  return v6;
}

id TIUIGetLocalizedConcatenatedLanguageNamesForInputModesWithStyle(void *a1, int a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = [KSKeyboardListController keyboardDisplayNameForIdentifier:v4];
  }

  else
  {
    v36 = a2;
    v37 = v3;
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = [MEMORY[0x277D75688] sharedInputModeController];
    v8 = [v7 enabledInputModeIdentifiers];

    v9 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = TIInputModeGetLanguage();
          v14 = TIInputModeGetNormalizedIdentifier();
          v15 = [v6 objectForKeyedSubscript:v13];
          if (!v15)
          {
            v15 = [MEMORY[0x277CBEB58] set];
            [v6 setObject:v15 forKeyedSubscript:v13];
          }

          [v15 addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v10);
    }

    v16 = [v37 firstObject];
    v17 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v18 = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages();

    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v18, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v39;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(v20);
          }

          if ((TIInputModeIsMultilingualOnly() & 1) == 0)
          {
            v25 = TIInputModeGetLanguage();
            v26 = [v6 objectForKeyedSubscript:v25];
            v27 = [v26 count];

            if (v27 >= 2)
            {
              v28 = TIInputModeGetNormalizedIdentifier();

              v25 = v28;
            }

            v29 = [KSKeyboardListController keyboardDisplayNameForIdentifier:v25];
            [v19 addObject:v29];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v22);
    }

    if (v36)
    {
      v30 = [v19 count];
      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = v31;
      if (v30 == 2)
      {
        v33 = @"LIST_SEPARATOR_2";
      }

      else
      {
        v33 = @"LIST_SEPARATOR";
      }

      v34 = [v31 localizedStringForKey:v33 value:&stru_28679E3A8 table:@"Keyboard"];

      v5 = [v19 componentsJoinedByString:v34];
    }

    else
    {
      v5 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v19];
    }

    v3 = v37;
  }

  return v5;
}

uint64_t TIUIMultilingualSetGetLanguageCount(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v4 += TIInputModeIsMultilingualOnly() ^ 1;
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t TIUIMultilingualSetContainsTransliterationInputModes(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = TIInputModeGetNormalizedIdentifier();
        IsTransliteration = TIInputModeIsTransliteration();

        if (IsTransliteration)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

void __GetDependentMultilingualInputModes_block_invoke()
{
  v0 = GetDependentMultilingualInputModes___dependentInputModes;
  GetDependentMultilingualInputModes___dependentInputModes = &unk_2867A4D58;
}

void __GetRequiredInputModesForDependentInputMode_block_invoke()
{
  v0 = GetRequiredInputModesForDependentInputMode___transliterationInputModes;
  GetRequiredInputModesForDependentInputMode___transliterationInputModes = &unk_2867A4D88;

  v1 = GetRequiredInputModesForDependentInputMode___englishInputModes;
  GetRequiredInputModesForDependentInputMode___englishInputModes = &unk_2867A4DA0;
}

void __GetBilingualInputModes_block_invoke()
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v0 = [MEMORY[0x277D6F380] sharedInputModeController];
  v1 = [v0 supportedInputModeIdentifiers];

  v2 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    v5 = *MEMORY[0x277D6F760];
    v6 = *MEMORY[0x277D6F708];
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = TIGetInputModeProperties();
        v10 = [v9 objectForKeyedSubscript:v5];
        v11 = [v10 BOOLValue];

        if (v11)
        {
          v12 = [v9 objectForKeyedSubscript:v6];
          v13 = [v12 BOOLValue];

          if ((v13 & 1) == 0)
          {
            [v15 addObject:v8];
          }
        }

        ++v7;
      }

      while (v3 != v7);
      v3 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v14 = GetBilingualInputModes___bilingualInputModes;
  GetBilingualInputModes___bilingualInputModes = v15;
}

void *TIDownloadButton()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D755D0];
  v4[0] = [MEMORY[0x277D75348] tintColor];
  v1 = [v0 configurationWithPaletteColors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v4, 1)}];
  v2 = [MEMORY[0x277D75220] buttonWithType:0];
  [v2 setPreferredSymbolConfiguration:v1 forImageInState:0];
  [v2 setImage:objc_msgSend(MEMORY[0x277D755B8] forState:{"systemImageNamed:", @"icloud.and.arrow.down", 0}];
  [v2 sizeToFit];
  return v2;
}

void *KSInputModeIsChineseShuangpin(uint64_t a1)
{
  result = [TIInputModeGetBaseLanguage() isEqualToString:@"zh"];
  if (result)
  {
    Variant = TIInputModeGetVariant();

    return [Variant isEqualToString:@"Shuangpin"];
  }

  return result;
}

BOOL KSCurrentShuangpinTypeUsesSemicolon()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v1 = [objc_msgSend(v0 valueForPreferenceKey:{*MEMORY[0x277D6FA70]), "integerValue"}];
  return v1 == 7 || v1 == 2;
}

uint64_t KSGetCurrentShuangpinName()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v1 = [objc_msgSend(v0 valueForPreferenceKey:{*MEMORY[0x277D6FA70]), "integerValue"}];

  return KSGetShuangpinNameFromType(v1);
}

uint64_t KSGetShuangpinNameFromType(int a1)
{
  v2 = a1 - 2;
  if ((a1 - 2) > 5 || ((0x3Du >> v2) & 1) == 0)
  {
    return 0;
  }

  v3 = off_2797FA340[v2];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v4 localizedStringForKey:v3 value:&stru_28679E3A8 table:@"Preferences_pinyin"];
}

void *KSFilteredLayoutsByCurrentShuangpinType(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = [objc_msgSend(v3 valueForPreferenceKey:{*MEMORY[0x277D6FA70]), "integerValue"}];
  if (v4 == 7 || v4 == 2)
  {
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v6 = [a1 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(a1);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          if (([v10 hasPrefix:@"Pinyin-"] & 1) == 0)
          {
            [v2 addObject:v10];
          }
        }

        v7 = [a1 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v11 = [a1 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(a1);
          }

          v15 = *(*(&v17 + 1) + 8 * j);
          if (([v15 hasPrefix:@"Shuangpin-with-Semicolon-"] & 1) == 0)
          {
            [v2 addObject:v15];
          }
        }

        v12 = [a1 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v12);
    }
  }

  return v2;
}

id KSUpdateShuangpinSWLayout()
{
  result = [objc_msgSend(objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
    v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
    v4 = [objc_msgSend(v3 valueForPreferenceKey:{*MEMORY[0x277D6FA70]), "integerValue"}];
    v5 = v4 == 7 || v4 == 2;
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __KSUpdateShuangpinSWLayout_block_invoke_2;
    v10 = &unk_2797FA320;
    v6 = v5;
    v11 = v1;
    v12 = v6;
    [v2 enumerateIndexesUsingBlock:&v7];
    return [KSKeyboardListController setInputModes:v1, v7, v8, v9, v10];
  }

  return result;
}

void *__KSUpdateShuangpinSWLayout_block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) objectAtIndexedSubscript:a2];
  SWLayout = TIInputModeGetSWLayout();
  v5 = SWLayout;
  if (*(a1 + 40) == 1)
  {
    result = [SWLayout hasPrefix:@"Pinyin-"];
    if (!result)
    {
      return result;
    }

    v7 = @"Pinyin-";
    v8 = [@"Pinyin-" length];
    v9 = @"Shuangpin-with-Semicolon-";
  }

  else
  {
    result = [SWLayout hasPrefix:@"Shuangpin-with-Semicolon-"];
    if (!result)
    {
      return result;
    }

    v7 = @"Shuangpin-with-Semicolon-";
    v8 = [@"Shuangpin-with-Semicolon-" length];
    v9 = @"Pinyin-";
  }

  result = [v5 stringByReplacingOccurrencesOfString:v7 withString:v9 options:0 range:{0, v8}];
  if (result)
  {
    v10 = UIKeyboardInputModeWithNewSWLayout();
    v11 = *(a1 + 32);

    return [v11 replaceObjectAtIndex:a2 withObject:v10];
  }

  return result;
}

void sub_255850588(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2558509E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2558514D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}