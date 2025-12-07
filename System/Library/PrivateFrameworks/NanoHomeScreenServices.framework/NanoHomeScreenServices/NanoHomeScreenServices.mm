id NHSSLogDefault(uint64_t a1)
{
  if (NHSSLogDefault_onceToken != -1)
  {
    NHSSLogDefault_cold_1();
  }

  v2 = NHSSLogDefault___logObj;

  return v2;
}

uint64_t __NHSSLogDefault_block_invoke()
{
  NHSSLogDefault___logObj = os_log_create("com.apple.NanoHomeScreenServices", "Default");

  return MEMORY[0x2821F96F8]();
}

void *_NHSSPrivacyDefaultsMicrophonePermissionFromNumber(void *a1)
{
  result = [a1 integerValue];
  v2 = 1970168948;
  if (result == 1735552628)
  {
    v2 = 1735552628;
  }

  if (result != 1684369017)
  {
    return v2;
  }

  return result;
}

void sub_25B175414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B175E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t sub_25B176178()
{
  v0 = sub_25B1771B8();
  __swift_allocate_value_buffer(v0, qword_27FA3E928);
  __swift_project_value_buffer(v0, qword_27FA3E928);
  return sub_25B1771A8();
}

uint64_t NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B1771C8();
  v4 = sub_25B1771C8();
  v5 = sub_25B1771C8();
  v6 = [v1 widgetSuggestionsUnmuteDateForContainerBundleIdentifier:v3 extensionBundleIdentifier:v4 kind:v5];

  if (v6)
  {
    sub_25B177168();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_25B177188();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_25B176320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E940, &qword_25B177BC8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_25B17659C(a1, &v6 - v3);
  return NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.setter(v4);
}

uint64_t NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E940, &qword_25B177BC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_25B17659C(a1, &v14 - v5);
  v7 = sub_25B177188();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v9 = sub_25B177148();
    (*(v8 + 8))(v6, v7);
  }

  v10 = sub_25B1771C8();
  v11 = sub_25B1771C8();
  v12 = sub_25B1771C8();
  [v2 setWidgetSuggestionsUnmuteDate:v9 forContainerBundleIdentifier:v10 extensionBundleIdentifier:v11 kind:v12];

  return sub_25B17660C(a1);
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

uint64_t sub_25B17659C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E940, &qword_25B177BC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B17660C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E940, &qword_25B177BC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E940, &qword_25B177BC8) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.getter(v4);
  return sub_25B176730;
}

void sub_25B176730(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_25B17659C(v3, v2);
    NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.setter(v2);
    sub_25B17660C(v3);
  }

  else
  {
    NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.setter(v3);
  }

  free(v3);

  free(v2);
}

Swift::Void __swiftcall NHSSSmartStackSuggestionDefaults.muteSoundDetectionPermissionPrompt()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E940, &qword_25B177BC8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = sub_25B177188();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  if ([v1 soundDetectionButtonDismissedOnce])
  {
    sub_25B177128();
    (*(v9 + 56))(v5, 0, 1, v8);
    NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.setter(v5);
  }

  else
  {
    v31 = v17;
    NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.getter(v7);
    v18 = *(v9 + 48);
    if (v18(v7, 1, v8) == 1)
    {
      sub_25B177118();
      if (v18(v7, 1, v8) != 1)
      {
        sub_25B17660C(v7);
      }
    }

    else
    {
      (*(v9 + 32))(v31, v7, v8);
    }

    [v1 defaultMuteForTodayDuration];
    sub_25B177178();
    sub_25B177138();
    v19 = *(v9 + 8);
    v19(v12, v8);
    if (sub_25B177158())
    {
      v30 = v19;
      v20 = [v1 soundDetectionButtonDismissedOnce];
      if (qword_27FA3E920 != -1)
      {
        swift_once();
      }

      v21 = sub_25B1771B8();
      __swift_project_value_buffer(v21, qword_27FA3E928);
      v22 = sub_25B177198();
      v23 = sub_25B1771E8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 67240192;
        *(v24 + 4) = v20;
        _os_log_impl(&dword_25B171000, v22, v23, "User is muting permission prompt. Has already dismissed once? %{BOOL,public}d.", v24, 8u);
        MEMORY[0x25F863190](v24, -1, -1);
      }

      if ((v20 & 1) == 0)
      {
        [v1 setSoundDetectionButtonDismissedOnce_];
      }

      (*(v9 + 16))(v5, v15, v8);
      (*(v9 + 56))(v5, 0, 1, v8);
      NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.setter(v5);
      v25 = v30;
      v30(v15, v8);
      v25(v31, v8);
    }

    else
    {
      if (qword_27FA3E920 != -1)
      {
        swift_once();
      }

      v26 = sub_25B1771B8();
      __swift_project_value_buffer(v26, qword_27FA3E928);
      v27 = sub_25B177198();
      v28 = sub_25B1771D8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_25B171000, v27, v28, "Existing unmute date is after proposed unmute date; keep existing unmute date.", v29, 2u);
        MEMORY[0x25F863190](v29, -1, -1);
      }

      v19(v15, v8);
      v19(v31, v8);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}