@interface BYSiriUtilities
+ (BOOL)currentVoiceIsDefaultVoice;
+ (BOOL)deviceSupportsSystemAssistantExperience;
+ (BOOL)isVoiceTriggerEnabled;
+ (uint64_t)deviceSupportsSystemAssistantExperience;
+ (void)requiresAcknowledgementForDataSharing:(id)sharing;
@end

@implementation BYSiriUtilities

+ (void)requiresAcknowledgementForDataSharing:(id)sharing
{
  sharingCopy = sharing;
  sharedPreferences = [getVTPreferencesClass() sharedPreferences];
  voiceTriggerEnabled = [sharedPreferences voiceTriggerEnabled];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v7 = getAFPreferencesClass_softClass;
  v26 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getAFPreferencesClass_block_invoke;
    v20 = &unk_1E7D02730;
    v21 = &v23;
    __getAFPreferencesClass_block_invoke(&v17, v6);
    v7 = *(v24 + 24);
  }

  v8 = v7;
  _Block_object_dispose(&v23, 8);
  sharedPreferences2 = [v7 sharedPreferences];
  assistantIsEnabled = [sharedPreferences2 assistantIsEnabled];

  if ((voiceTriggerEnabled | assistantIsEnabled))
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v11 = getAFSettingsConnectionClass_softClass;
    v31 = getAFSettingsConnectionClass_softClass;
    if (!getAFSettingsConnectionClass_softClass)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getAFSettingsConnectionClass_block_invoke;
      v26 = &unk_1E7D02730;
      v27 = &v28;
      __getAFSettingsConnectionClass_block_invoke(&v23);
      v11 = v29[3];
    }

    v12 = v11;
    _Block_object_dispose(&v28, 8);
    v22 = objc_alloc_init(v11);
    v13 = *(v18 + 40);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__BYSiriUtilities_requiresAcknowledgementForDataSharing___block_invoke;
    v14[3] = &unk_1E7D02708;
    v16 = &v17;
    v15 = sharingCopy;
    [v13 getSiriDataSharingOptInStatusWithCompletion:v14];

    _Block_object_dispose(&v17, 8);
  }

  else if (sharingCopy)
  {
    (*(sharingCopy + 2))(sharingCopy, 0);
  }
}

void __57__BYSiriUtilities_requiresAcknowledgementForDataSharing___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  if (v5)
  {
    v9 = _BYLoggingFacility(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __57__BYSiriUtilities_requiresAcknowledgementForDataSharing___block_invoke_cold_1(v5, v9);
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, a3 == 0);
  }
}

+ (BOOL)isVoiceTriggerEnabled
{
  sharedPreferences = [getVTPreferencesClass() sharedPreferences];
  voiceTriggerEnabled = [sharedPreferences voiceTriggerEnabled];

  return voiceTriggerEnabled;
}

+ (BOOL)deviceSupportsSystemAssistantExperience
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getAFDeviceSupportsSystemAssistantExperienceSymbolLoc_ptr;
  v9 = getAFDeviceSupportsSystemAssistantExperienceSymbolLoc_ptr;
  if (!getAFDeviceSupportsSystemAssistantExperienceSymbolLoc_ptr)
  {
    v3 = AssistantServicesLibrary();
    v7[3] = dlsym(v3, "AFDeviceSupportsSystemAssistantExperience");
    getAFDeviceSupportsSystemAssistantExperienceSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = +[BYSiriUtilities deviceSupportsSystemAssistantExperience];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2();
}

+ (BOOL)currentVoiceIsDefaultVoice
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v2 = get_AFPreferencesOutputVoiceSymbolLoc_ptr;
  v22 = get_AFPreferencesOutputVoiceSymbolLoc_ptr;
  if (!get_AFPreferencesOutputVoiceSymbolLoc_ptr)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __get_AFPreferencesOutputVoiceSymbolLoc_block_invoke;
    v17 = &unk_1E7D02730;
    v18 = &v19;
    v3 = AssistantServicesLibrary();
    v20[3] = dlsym(v3, "_AFPreferencesOutputVoice");
    get_AFPreferencesOutputVoiceSymbolLoc_ptr = *(v18[1] + 24);
    v2 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v2)
  {
    v13 = +[BYSiriUtilities deviceSupportsSystemAssistantExperience];
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v13);
  }

  v4 = v2();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v5 = getAFVoiceInfoClass_softClass;
  v22 = getAFVoiceInfoClass_softClass;
  if (!getAFVoiceInfoClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getAFVoiceInfoClass_block_invoke;
    v17 = &unk_1E7D02730;
    v18 = &v19;
    __getAFVoiceInfoClass_block_invoke(&v14);
    v5 = v20[3];
  }

  v6 = v5;
  _Block_object_dispose(&v19, 8);
  languageCode = [v4 languageCode];
  v8 = [v5 voiceInfoForSessionLanguageCode:languageCode];

  name = [v4 name];
  name2 = [v8 name];
  v11 = [name isEqualToString:name2];

  return v11;
}

void __57__BYSiriUtilities_requiresAcknowledgementForDataSharing___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to get Siri data sharing opt-in status: %{public}@", &v2, 0xCu);
}

+ (uint64_t)deviceSupportsSystemAssistantExperience
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  return __getVTPreferencesClass_block_invoke_cold_1();
}

@end