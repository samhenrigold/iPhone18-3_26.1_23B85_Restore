uint64_t sub_256023E20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_256023E58()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_256023E94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_256023F40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_256024004@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_25602405C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_2560240C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_2560240F8()
{
  v1 = sub_25605347C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2560241D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_256024210()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_256024248()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_256024284()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_256025368(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = AXLogLiveTranscription();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AXLTSpeechTranscriber setupAudioEngineTap];
    }

    objc_end_catch();
    JUMPOUT(0x256025350);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id AXLCLiveCaptionsSelectedLocaleIdentifier()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getAXSettingsClass_softClass;
  v9 = getAXSettingsClass_softClass;
  if (!getAXSettingsClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getAXSettingsClass_block_invoke;
    v5[3] = &unk_27981CC28;
    v5[4] = &v6;
    __getAXSettingsClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 sharedInstance];
  v3 = [v2 liveCaptionsSelectedLocaleIdentifier];

  return v3;
}

void sub_25602CFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AXLCLocString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.accessibility.LiveTranscription"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:v1 table:@"Localizable"];
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  return v5;
}

uint64_t isInternalInstall(uint64_t a1, uint64_t a2)
{
  if (isInternalInstall__AXIsInternalInstallOnceToken != -1)
  {
    isInternalInstall_cold_1();
  }

  return isInternalInstall__AXIsInternalInstall;
}

uint64_t __isInternalInstall_block_invoke()
{
  result = os_variant_has_internal_ui();
  isInternalInstall__AXIsInternalInstall = result;
  return result;
}

Class __getAXSettingsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27981CC48;
    v6 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSettingsClass_block_invoke_cold_1();
  }

  getAXSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_25602D6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25602E098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void handleInputBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = AXLogLiveTranscription();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    handleInputBuffer_cold_1(a5, v12);
  }

  v13 = +[AXLTAudioOutManager sharedInstance];
  [v13 handleInputBufferWithContext:a1 audioQueue:a2 audioBuffer:a3 timestamp:a4 packetCount:a5 packetDesc:a6];
}

uint64_t sub_256030270()
{
  result = sub_25605380C();
  byte_27F8260B8 = result;
  return result;
}

uint64_t sub_256030290()
{
  result = sub_25605380C();
  byte_27F8260B9 = result;
  return result;
}

id sub_2560302B0(uint64_t a1, uint64_t a2)
{
  result = AXLogLiveTranscription();
  if (result)
  {
    qword_27F8260C0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_256030300@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_256033148(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_256030354()
{
  v1 = *v0;
  sub_2560539CC();
  MEMORY[0x259C57720](v1);
  return sub_256053A0C();
}

uint64_t sub_25603039C(uint64_t a1)
{
  v2 = *v1;
  sub_2560539CC();
  MEMORY[0x259C57720](v2);
  return sub_256053A0C();
}

unint64_t sub_2560303E0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_256033158(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t AXLiveCaptionSourceInfo.appID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID);

  return v1;
}

uint64_t AXLiveCaptionSourceInfo.appName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName);

  return v1;
}

uint64_t sub_256030604@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  v4 = sub_25605347C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2560307A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  v4 = sub_25605347C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_256030830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  v5 = sub_25605347C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_2560308BC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_25605347C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

id AXLiveCaptionSourceInfo.__allocating_init(sourceType:pid:appID:appName:locale:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - v14;
  v16 = sub_25605347C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v32 - v21;
  v35 = v8;
  v23 = objc_allocWithZone(v8);
  *&v23[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType] = a1;
  *&v23[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_pid] = a2;
  v24 = &v23[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID];
  v25 = v32;
  v26 = v33;
  *v24 = a3;
  *(v24 + 1) = v25;
  v27 = &v23[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName];
  v28 = v34;
  *v27 = v26;
  v27[1] = v28;
  sub_2560331D0(a7, v15, &qword_27F8256A8, &qword_2560559A0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_256033238(v15, &qword_27F8256A8, &qword_2560559A0);
    sub_25605343C();
    (*(v17 + 32))(&v23[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale], v20, v16);
  }

  else
  {
    v29 = *(v17 + 32);
    v29(v22, v15, v16);
    v29(&v23[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale], v22, v16);
  }

  v36.receiver = v23;
  v36.super_class = v35;
  v30 = objc_msgSendSuper2(&v36, sel_init, v32, v33, v34);
  sub_256033238(a7, &qword_27F8256A8, &qword_2560559A0);
  return v30;
}

id AXLiveCaptionSourceInfo.init(sourceType:pid:appID:appName:locale:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  v15 = sub_25605347C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  *&v7[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType] = a1;
  *&v7[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_pid] = a2;
  v22 = &v7[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID];
  v23 = v32;
  v24 = v33;
  *v22 = a3;
  *(v22 + 1) = v23;
  v25 = &v7[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName];
  v26 = v34;
  *v25 = v24;
  v25[1] = v26;
  sub_2560331D0(a7, v14, &qword_27F8256A8, &qword_2560559A0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_256033238(v14, &qword_27F8256A8, &qword_2560559A0);
    sub_25605343C();
    (*(v16 + 32))(&v7[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale], v19, v15);
  }

  else
  {
    v27 = *(v16 + 32);
    v27(v21, v14, v15);
    v27(&v7[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale], v21, v15);
  }

  v28 = type metadata accessor for AXLiveCaptionSourceInfo(0);
  v35.receiver = v7;
  v35.super_class = v28;
  v29 = objc_msgSendSuper2(&v35, sel_init);
  sub_256033238(a7, &qword_27F8256A8, &qword_2560559A0);
  return v29;
}

uint64_t sub_2560310D0()
{
  v1 = v0;
  v2 = sub_25605347C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2560538FC();

  strcpy(v18, "source type:");
  BYTE5(v18[1]) = 0;
  HIWORD(v18[1]) = -5120;
  v6 = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6B6E696C6E776F64;
      goto LABEL_10;
    }

    if (v6 == 3)
    {
      v7 = 0xE600000000000000;
      v8 = 0x6B6E696C7075;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v6)
    {
      v7 = 0xE300000000000000;
      v8 = 6515053;
LABEL_10:
      MEMORY[0x259C57450](v8, v7);

      MEMORY[0x259C57450](0x203A64697020, 0xE600000000000000);
      LODWORD(v16) = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_pid);
      v9 = sub_25605397C();
      MEMORY[0x259C57450](v9);

      MEMORY[0x259C57450](0x656D614E70706120, 0xEA0000000000203ALL);
      MEMORY[0x259C57450](*(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8));
      MEMORY[0x259C57450](0x3A656C61636F6C20, 0xE900000000000020);
      v10 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
      swift_beginAccess();
      (*(v3 + 16))(v5, v1 + v10, v2);
      v11 = sub_2560533DC();
      v13 = v12;
      (*(v3 + 8))(v5, v2);
      MEMORY[0x259C57450](v11, v13);

      return v18[0];
    }

    if (v6 == 1)
    {
      v7 = 0xE600000000000000;
      v8 = 0x6D6574737973;
      goto LABEL_10;
    }
  }

  v16 = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType);
  result = sub_25605399C();
  __break(1u);
  return result;
}

uint64_t sub_25603138C(uint64_t a1)
{
  v3 = sub_25605347C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_2560331D0(a1, v19, &qword_27F8256B0, &qword_2560559A8);
  if (!v20)
  {
    sub_256033238(v19, &qword_27F8256B0, &qword_2560559A8);
    goto LABEL_11;
  }

  type metadata accessor for AXLiveCaptionSourceInfo(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  v10 = v18;
  if (*(v1 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType) != *&v18[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType] || *(v1 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_pid) != *&v18[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_pid] || (*(v1 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID) != *&v18[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID] || *(v1 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID + 8) != *&v18[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID + 8]) && (sub_25605398C() & 1) == 0)
  {

    goto LABEL_11;
  }

  v11 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  v12 = *(v4 + 16);
  v12(v9, v1 + v11, v3);
  v13 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  v12(v7, &v10[v13], v3);
  v14 = MEMORY[0x259C57160](v9, v7);

  v15 = *(v4 + 8);
  v15(v7, v3);
  v15(v9, v3);
  return v14 & 1;
}

uint64_t sub_2560316B8()
{
  v1 = v0;
  v2 = sub_25605347C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_256053A1C();
  MEMORY[0x259C57720](*(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType));
  sub_2560539EC();
  sub_2560536EC();
  v6 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  sub_2560332F0(&qword_27F8256B8, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_25605367C();
  (*(v3 + 8))(v5, v2);
  return sub_2560539FC();
}

id AXLiveCaption.init(source:transcriptionResult:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v39 = sub_25605332C();
  MEMORY[0x28223BE20](v39);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_25605335C();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256C0, &qword_2560559B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_25605350C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2;
  sub_2560533AC();
  v42 = a2;
  sub_2560331D0(a2, v10, &qword_27F8256C0, &qword_2560559B0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_256033238(v10, &qword_27F8256C0, &qword_2560559B0);
    *&v15[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_resultType] = 3;
    sub_25605334C();
    (*(v5 + 32))(&v15[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_attributedText], v7, v40);
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_2560534FC();
    sub_25605331C();
    v18 = v40;
    (*(v5 + 8))(v7, v40);
    sub_2560332F0(&qword_27F8256C8, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
    v16 = sub_25605373C();
    v17 = v19;
    sub_2560534FC();
    (*(v5 + 32))(&v15[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_attributedText], v7, v18);
    v20 = sub_25605354C();
    (*(v12 + 8))(v14, v11);
    v21 = 1;
    if (v20)
    {
      v21 = 2;
    }

    *&v15[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_resultType] = v21;
  }

  v22 = &v15[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption];
  *v22 = v16;
  v22[1] = v17;
  v23 = v41;
  if (qword_27F825628 != -1)
  {
    swift_once();
  }

  v24 = byte_27F8260B9;
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v25 = qword_27F8260C0;
  if (os_log_type_enabled(qword_27F8260C0, v24))
  {
    v26 = v15;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v43 = v28;
    *v27 = 136315650;
    v29 = *(v23 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName);
    v30 = *(v23 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8);

    v31 = sub_256032BA0(v29, v30, &v43);

    *(v27 + 4) = v31;
    *(v27 + 12) = 1024;
    *(v27 + 14) = *&v26[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_resultType] == 2;

    *(v27 + 18) = 2080;
    v32 = *v22;
    v33 = v22[1];

    v34 = sub_256032BA0(v32, v33, &v43);

    *(v27 + 20) = v34;
    _os_log_impl(&dword_256022000, v25, v24, "AXLiveCaption: Created for source: %s, final: %{BOOL}d, caption: %s", v27, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v28, -1, -1);
    MEMORY[0x259C57FC0](v27, -1, -1);
  }

  else
  {
  }

  *&v15[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_source] = v23;
  *&v15[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_assetState] = 100;
  v35 = type metadata accessor for AXLiveCaption(0);
  v44.receiver = v15;
  v44.super_class = v35;
  v36 = objc_msgSendSuper2(&v44, sel_init);
  sub_256033238(v42, &qword_27F8256C0, &qword_2560559B0);
  return v36;
}

id sub_256031F70(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_25605335C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2560533AC();
  *&v3[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_resultType] = 4;
  v11 = &v3[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  sub_25605334C();
  result = (*(v8 + 32))(&v3[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_attributedText], v10, v7);
  *&v3[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_source] = a1;
  if (a3)
  {
    if (*&a2 == 0.0)
    {
      v13 = 100;
    }

    else
    {
      v13 = -1;
    }

    *&v3[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_assetState] = v13;
    goto LABEL_10;
  }

  v14 = round(*&a2 * 100.0);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v14 < 9.22337204e18)
  {
    *&v3[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_assetState] = v14;
LABEL_10:
    v15 = type metadata accessor for AXLiveCaption(0);
    v16.receiver = v3;
    v16.super_class = v15;
    return objc_msgSendSuper2(&v16, sel_init);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t AXLiveCaption.timeStamp.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_timeStamp;
  v5 = sub_2560533BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_2560322DC(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_25605369C();

  return v3;
}

uint64_t sub_256032338()
{
  v1 = *(v0 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption);

  return v1;
}

uint64_t sub_25603246C()
{
  v1 = sub_25605335C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_256033338();
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_attributedText, v1);
  return sub_25605383C();
}

id sub_2560325A8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_25605369C();

  return v5;
}

uint64_t sub_256032618()
{
  v1 = sub_25605347C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_resultType);
  if (v5 == 4)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_2560538FC();

    v19 = 0xD000000000000015;
    v20 = 0x80000002560568F0;
    MEMORY[0x259C57450](0x6174537465737361, 0xEA00000000006574);

    MEMORY[0x259C57450](0x207465737361202CLL, 0xEF203A6574617473);
    v21 = *(v0 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_assetState);
    v6 = sub_25605397C();
    MEMORY[0x259C57450](v6);

    return v19;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_2560538FC();
  v21 = v19;
  v22 = v20;
  MEMORY[0x259C57450](0xD000000000000015, 0x80000002560568F0);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v8 = 0xE500000000000000;
      v9 = 0x6C616E6966;
      goto LABEL_12;
    }

    if (v5 == 3)
    {
      v8 = 0xE700000000000000;
      v9 = 0x65636E656C6973;
      goto LABEL_12;
    }

LABEL_14:
    v19 = v5;
    result = sub_25605399C();
    __break(1u);
    return result;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      v8 = 0xE700000000000000;
      v9 = 0x6C616974726170;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v8 = 0xE400000000000000;
  v9 = 1701736302;
LABEL_12:
  MEMORY[0x259C57450](v9, v8);

  MEMORY[0x259C57450](0x6C2074786574202CLL, 0xEF203A6874676E65);
  v19 = sub_2560536FC();
  v10 = sub_25605397C();
  MEMORY[0x259C57450](v10);

  MEMORY[0x259C57450](0x656D614E70706120, 0xEA0000000000203ALL);
  v11 = *(v0 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_source);
  v12 = *(v11 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName);
  v13 = *(v11 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8);

  MEMORY[0x259C57450](v12, v13);

  MEMORY[0x259C57450](0x3A656C61636F6C20, 0xE900000000000020);
  v14 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  (*(v2 + 16))(v4, v11 + v14, v1);
  v15 = sub_2560533DC();
  v17 = v16;
  (*(v2 + 8))(v4, v1);
  MEMORY[0x259C57450](v15, v17);

  return v21;
}

id AXLiveCaption.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_256032A90(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_256032BA0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_256032C6C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2560337B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_256032C6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_256032D78(a5, a6);
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
    result = sub_25605392C();
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

void *sub_256032D78(uint64_t a1, unint64_t a2)
{
  v3 = sub_256032DC4(a1, a2);
  sub_256032EF4(&unk_286816D00);
  return v3;
}

void *sub_256032DC4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_256032FE0(v5, 0);
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

  result = sub_25605392C();
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
        v10 = sub_25605371C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_256032FE0(v10, 0);
        result = sub_2560538EC();
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

uint64_t sub_256032EF4(uint64_t result)
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

  result = sub_256033054(result, v11, 1, v3);
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

void *sub_256032FE0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256F8, &qword_256055BC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_256033054(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256F8, &qword_256055BC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_256033148(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_256033158(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
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

uint64_t sub_2560331D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_256033238(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2560332B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2560332F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_256033338()
{
  result = qword_27F8256D0;
  if (!qword_27F8256D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8256D0);
  }

  return result;
}

unint64_t sub_256033388()
{
  result = qword_27F8256D8;
  if (!qword_27F8256D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8256D8);
  }

  return result;
}

unint64_t sub_2560333E0()
{
  result = qword_27F8256E0;
  if (!qword_27F8256E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8256E0);
  }

  return result;
}

uint64_t sub_25603345C(uint64_t a1)
{
  result = sub_25605347C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2560335E4(uint64_t a1, uint64_t a2)
{
  result = sub_2560533BC();
  if (v3 <= 0x3F)
  {
    result = sub_25605335C();
    if (v4 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
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

uint64_t sub_2560337B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_256033834()
{
  result = [objc_allocWithZone(type metadata accessor for AXLiveCaptions()) init];
  qword_27F825700 = result;
  return result;
}

id AXLiveCaptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AXLiveCaptions.shared.getter()
{
  if (qword_27F825638 != -1)
  {
    swift_once();
  }

  v1 = qword_27F825700;

  return v1;
}

uint64_t static AXLiveCaptions.supportedLocales()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_256037640;

  return sub_25604ED4C();
}

uint64_t sub_256033B5C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_25603763C;

  return sub_25604ED4C();
}

uint64_t static AXLiveCaptions.installedLocales()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_256033CA4;

  return sub_25604F244();
}

uint64_t sub_256033CA4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_256033F0C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_256033FB4;

  return sub_25604F244();
}

uint64_t sub_256033FB4(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v6 = *v1;

  sub_25605347C();
  v3 = sub_25605374C();

  (v2)[2](v2, v3);

  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t static AXLiveCaptions.defaultLocale()(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for AXLCTranscriber(0);
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_2560341F0;

  return sub_25604ED4C();
}

uint64_t sub_2560341F0(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2560342F0, 0, 0);
}

uint64_t sub_2560342F0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[2];
  v4 = sub_25605347C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_25603B53C(v2, v1, v3);

  sub_256033238(v2, &qword_27F8256A8, &qword_2560559A0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_256034540(const void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v1[2] = swift_task_alloc();
  v3 = sub_25605347C();
  v1[3] = v3;
  v1[4] = *(v3 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = _Block_copy(a1);
  v1[7] = type metadata accessor for AXLCTranscriber(0);
  v4 = swift_task_alloc();
  v1[8] = v4;
  *v4 = v1;
  v4[1] = sub_256034690;

  return sub_25604ED4C();
}

uint64_t sub_256034690(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_256034790, 0, 0);
}

uint64_t sub_256034790()
{
  v1 = v0[9];
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  (*(v4 + 56))(v5, 1, 1, v6);
  sub_25603B53C(v5, v1, v3);

  sub_256033238(v5, &qword_27F8256A8, &qword_2560559A0);
  v7 = sub_25605340C();
  (*(v4 + 8))(v3, v6);
  (v2)[2](v2, v7);

  _Block_release(v2);

  v8 = v0[1];

  return v8();
}

id AXLiveCaptions.init()()
{
  *&v0[OBJC_IVAR___AXLiveCaptions_clients] = MEMORY[0x277D84F98];
  v1 = [objc_allocWithZone(AXLTSpeechTranscriber) initWithDelegate_];
  *&v0[OBJC_IVAR___AXLiveCaptions_micTranscriber] = v1;
  v2 = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR___AXLiveCaptions_audioTranscriber] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AXLiveCaptions();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_256034AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_25604C9C0(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_256035AB0(a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_25604D000();
        v13 = v15;
      }

      result = sub_25604C508(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t sub_256034B84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_25604CCC4(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_25605347C();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_256035B1C(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_25604D3D8();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_25605347C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_25604C69C(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_25605347C();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_256034FB0(uint64_t a1)
{
  v44[3] = *MEMORY[0x277D85DE8];
  v3 = sub_25605382C();
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v4 = qword_27F8260C0;
  if (os_log_type_enabled(qword_27F8260C0, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v44[0] = v6;
    *v5 = 136315138;
    v7 = sub_2560536BC();
    v9 = sub_256032BA0(v7, v8, v44);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_256022000, v4, v3, "APIv2 stop sourceType: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x259C57FC0](v6, -1, -1);
    MEMORY[0x259C57FC0](v5, -1, -1);
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v16 = *(v1 + OBJC_IVAR___AXLiveCaptions_audioTranscriber);
      v44[0] = 0;
      v17 = [v16 _stopTranscriptionForPID_error_];
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_25;
      }

      v32 = *(v1 + OBJC_IVAR___AXLiveCaptions_audioTranscriber);
      v44[0] = 0;
      v17 = [v32 _stopTranscriptionForPID_error_];
    }

    v13 = v44[0];
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v18 = *(v1 + OBJC_IVAR___AXLiveCaptions_audioTranscriber);
      v44[0] = 0;
      v19 = [v18 stopTranscription_];
      v13 = v44[0];
      if (!v19)
      {
        goto LABEL_13;
      }

LABEL_19:
      v33 = v13;
      goto LABEL_20;
    }

LABEL_25:
    v44[0] = a1;
    result = sub_25605399C();
    __break(1u);
    return result;
  }

  v10 = OBJC_IVAR___AXLiveCaptions_micTranscriber;
  v11 = *(v1 + OBJC_IVAR___AXLiveCaptions_micTranscriber);
  v44[0] = 0;
  v12 = [v11 stopTranscription_];
  v13 = v44[0];
  if (v12)
  {
    v14 = *(v1 + v10);
    v15 = v44[0];
    [v14 setSuppressUsingIndependentInputRoute_];
LABEL_20:
    if (qword_27F825620 != -1)
    {
      swift_once();
    }

    v34 = byte_27F8260B8;
    if (os_log_type_enabled(v4, byte_27F8260B8))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44[0] = v36;
      *v35 = 136315394;
      v37 = sub_2560536BC();
      v39 = sub_256032BA0(v37, v38, v44);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825730, &qword_256055BF8);
      sub_256036E40();
      v40 = sub_25605365C();
      v42 = v41;

      v43 = sub_256032BA0(v40, v42, v44);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_256022000, v4, v34, "APIv2 removed client for key: %s, clients: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v36, -1, -1);
      MEMORY[0x259C57FC0](v35, -1, -1);
    }

    swift_beginAccess();
    sub_256034AB0(0, 0, a1);
    return swift_endAccess();
  }

LABEL_13:
  v20 = v13;
  v21 = sub_25605337C();

  swift_willThrow();
  v22 = sub_25605381C();
  if (os_log_type_enabled(v4, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44[0] = v25;
    *v23 = 136315394;
    v26 = sub_2560536BC();
    v28 = sub_256032BA0(v26, v27, v44);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2112;
    v29 = v21;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v30;
    *v24 = v30;
    _os_log_impl(&dword_256022000, v4, v22, "APIv2 stop sourceType: %s, error: %@", v23, 0x16u);
    sub_256033238(v24, &qword_27F825728, &qword_256055BF0);
    MEMORY[0x259C57FC0](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x259C57FC0](v25, -1, -1);
    MEMORY[0x259C57FC0](v23, -1, -1);
  }

  return swift_willThrow();
}

id AXLiveCaptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXLiveCaptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AXLiveCaptions.liveCaptionsResult(_:)(uint64_t a1)
{
  if (qword_27F825628 != -1)
  {
LABEL_22:
    swift_once();
  }

  v3 = byte_27F8260B9;
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  log = qword_27F8260C0;
  if (os_log_type_enabled(qword_27F8260C0, v3))
  {
    v4 = a1;
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(*&v4[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_source] + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType);

    _os_log_impl(&dword_256022000, log, v3, "APIv2 liveCaptionsResult sourceType: %ld", v5, 0xCu);
    MEMORY[0x259C57FC0](v5, -1, -1);
  }

  v27 = a1;
  a1 = OBJC_IVAR___AXLiveCaptions_clients;
  swift_beginAccess();
  v25 = a1;
  v26 = v1;
  v6 = *(&v1->isa + a1);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << (*(&v1->isa + a1))[32];
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v1 = log;
  while (v12)
  {
    a1 = v12;
LABEL_15:
    v12 = (a1 - 1) & a1;
    if (os_log_type_enabled(v1, v3))
    {
      a1 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *a1 = 136315138;
      v17 = sub_25605397C();
      v19 = v3;
      v20 = sub_256032BA0(v17, v18, &v29);
      v1 = log;

      *(a1 + 4) = v20;
      v3 = v19;
      _os_log_impl(&dword_256022000, log, v19, "APIv2 liveCaptionsResult client: %s", a1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x259C57FC0](v16, -1, -1);
      MEMORY[0x259C57FC0](a1, -1, -1);
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v15 >= v13)
    {
      break;
    }

    a1 = *(v8 + 8 * v15);
    ++v14;
    if (a1)
    {
      v14 = v15;
      goto LABEL_15;
    }
  }

  v22 = *(&v26->isa + v25);
  if (*(v22 + 16))
  {
    result = sub_256035AB0(*(*(v27 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_source) + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType));
    if (v23)
    {
      v24 = *(*(v22 + 56) + 16 * result);
      v29 = v27;

      v24(&v29);
    }
  }

  return result;
}

unint64_t sub_256035A38(uint64_t a1, uint64_t a2)
{
  sub_2560539CC();
  sub_2560536EC();
  v4 = sub_256053A0C();

  return sub_256035BA0(a1, a2, v4);
}

unint64_t sub_256035AB0(uint64_t a1)
{
  sub_2560539CC();
  MEMORY[0x259C57720](a1);
  v2 = sub_256053A0C();

  return sub_256035C58(a1, v2);
}

unint64_t sub_256035B1C(uint64_t a1)
{
  sub_25605347C();
  sub_256036F84(&qword_27F8256B8, MEMORY[0x277CC9798]);
  v2 = sub_25605366C();

  return sub_256035CC4(a1, v2);
}

unint64_t sub_256035BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25605398C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_256035C58(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_256035CC4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_25605347C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_256036F84(&qword_27F825740, MEMORY[0x277CC97A0]);
      v15 = sub_25605368C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

char *_s17LiveTranscription14AXLiveCaptionsC18formattedLocaleIDs4fromSaySSGSay10Foundation0F0VG_tFZ_0(uint64_t a1)
{
  v39 = sub_25605347C();
  v2 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825758, &unk_256055CB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = (&v30 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825760, &qword_2560561B0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  i = 0;
  v33 = a1;
  v15 = *(a1 + 16);
  v30 = v2 + 16;
  v36 = (v5 + 48);
  v37 = (v5 + 56);
  v35 = (v2 + 32);
  v16 = MEMORY[0x277D84F90];
  v32 = v2;
  v34 = (v2 + 8);
  v17 = v15 == 0;
  if (v15)
  {
    goto LABEL_3;
  }

LABEL_2:
  v18 = 1;
  for (i = v15; ; ++i)
  {
    (*v37)(v10, v18, 1, v4);
    sub_25603757C(v10, v13, &qword_27F825760, &qword_2560561B0);
    if ((*v36)(v13, 1, v4) == 1)
    {
      return v16;
    }

    (*v35)(v38, &v13[*(v4 + 48)], v39);
    v44 = sub_2560533DC();
    v45 = v23;
    v42 = 95;
    v43 = 0xE100000000000000;
    v40 = 45;
    v41 = 0xE100000000000000;
    sub_2560375E4();
    v24 = sub_25605387C();
    v26 = v25;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_25604B9C4(0, *(v16 + 2) + 1, 1, v16);
    }

    v28 = *(v16 + 2);
    v27 = *(v16 + 3);
    if (v28 >= v27 >> 1)
    {
      v16 = sub_25604B9C4((v27 > 1), v28 + 1, 1, v16);
    }

    result = (*v34)(v38, v39);
    *(v16 + 2) = v28 + 1;
    v29 = &v16[16 * v28];
    *(v29 + 4) = v24;
    *(v29 + 5) = v26;
    v17 = i >= v15;
    if (i == v15)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v17)
    {
      break;
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_15;
    }

    v20 = v31;
    v19 = v32;
    v21 = v33 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * i;
    v22 = *(v4 + 48);
    *v31 = i;
    (*(v19 + 16))(v20 + v22, v21, v39);
    sub_25603757C(v20, v10, &qword_27F825758, &unk_256055CB0);
    v18 = 0;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2560362AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v112 = a4;
  v113 = a5;
  v109 = a3;
  v120[3] = *MEMORY[0x277D85DE8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v10 = MEMORY[0x28223BE20](v9);
  v115 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v106 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v110 = &v106 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v111 = &v106 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v106 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v106 - v22;
  v24 = sub_25605382C();
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v25 = qword_27F8260C0;
  sub_2560374E0(a2, v23);
  v26 = os_log_type_enabled(v25, v24);
  v116 = a1;
  v114 = a2;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v108 = v6;
    v28 = v25;
    v29 = v27;
    v30 = swift_slowAlloc();
    v107 = v14;
    v31 = v30;
    v120[0] = v30;
    *v29 = 136315394;
    v119 = a1;
    v32 = sub_2560536BC();
    v34 = sub_256032BA0(v32, v33, v120);
    a1 = v116;

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    sub_2560374E0(v23, v21);
    v35 = sub_2560536BC();
    v37 = v36;
    sub_256033238(v23, &qword_27F8256A8, &qword_2560559A0);
    v38 = sub_256032BA0(v35, v37, v120);

    *(v29 + 14) = v38;
    _os_log_impl(&dword_256022000, v28, v24, "APIv2 start sourceType:%s locale: %s", v29, 0x16u);
    swift_arrayDestroy();
    v39 = v31;
    v14 = v107;
    MEMORY[0x259C57FC0](v39, -1, -1);
    v40 = v29;
    v25 = v28;
    v6 = v108;
    MEMORY[0x259C57FC0](v40, -1, -1);
  }

  else
  {
    sub_256033238(v23, &qword_27F8256A8, &qword_2560559A0);
  }

  v41 = v115;
  v42 = OBJC_IVAR___AXLiveCaptions_micTranscriber;
  [*(v6 + OBJC_IVAR___AXLiveCaptions_micTranscriber) setTranscriberVersion_];
  v43 = OBJC_IVAR___AXLiveCaptions_audioTranscriber;
  [*(v6 + OBJC_IVAR___AXLiveCaptions_audioTranscriber) setTranscriberVersion_];
  [*(v6 + v42) setDelegate_];
  [*(v6 + v43) setDelegate_];
  if (a1 <= 1)
  {
    if (!a1)
    {
      [*(v6 + v42) setSuppressUsingIndependentInputRoute_];
      v44 = *(v6 + v42);
      v45 = v111;
      sub_2560374E0(v114, v111);
      v46 = sub_25605347C();
      v47 = *(v46 - 8);
      v48 = (*(v47 + 48))(v45, 1, v46);
      v49 = v44;
      v50 = 0;
      if (v48 != 1)
      {
        v50 = sub_25605340C();
        (*(v47 + 8))(v45, v46);
      }

      v120[0] = 0;
      v51 = [v49 startTranscriptionWithLocale:v50 error:v120];

      v52 = v120[0];
      if ((v51 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

    if (a1 == 1)
    {
      v74 = *(v6 + v43);
      v75 = v110;
      sub_2560374E0(v114, v110);
      v76 = sub_25605347C();
      v77 = *(v76 - 8);
      v78 = (*(v77 + 48))(v75, 1, v76);
      v79 = v74;
      v80 = 0;
      if (v78 != 1)
      {
        v80 = sub_25605340C();
        (*(v77 + 8))(v75, v76);
      }

      v120[0] = 0;
      v81 = [v79 startTranscriptionWithLocale:v80 error:v120];

      v52 = v120[0];
      if ((v81 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_37:
    v120[0] = a1;
    result = sub_25605399C();
    __break(1u);
    return result;
  }

  if (a1 == 2)
  {
    v66 = *(v6 + v43);
    v67 = @"Call";
    v68 = sub_25605369C();
    v69 = AXLCLocString(v68);

    if (v69)
    {
      sub_2560374E0(v114, v14);
      v70 = sub_25605347C();
      v71 = *(v70 - 8);
      v72 = 0;
      if ((*(v71 + 48))(v14, 1, v70) != 1)
      {
        v72 = sub_25605340C();
        (*(v71 + 8))(v14, v70);
      }

      v120[0] = 0;
      v73 = [v66 _startTranscriptionForPID_appID_appName_locale_error_];

      goto LABEL_29;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a1 != 3)
  {
    goto LABEL_37;
  }

  v82 = *(v6 + v43);
  v83 = @"Call";
  v84 = sub_25605369C();
  v85 = AXLCLocString(v84);

  if (!v85)
  {
    goto LABEL_36;
  }

  sub_2560374E0(v114, v41);
  v86 = sub_25605347C();
  v87 = v41;
  v88 = *(v86 - 8);
  v89 = 0;
  if ((*(v88 + 48))(v87, 1, v86) != 1)
  {
    v89 = sub_25605340C();
    (*(v88 + 8))(v87, v86);
  }

  v120[0] = 0;
  v73 = [v82 _startTranscriptionForPID_appID_appName_locale_error_];

LABEL_29:
  v52 = v120[0];
  if ((v73 & 1) == 0)
  {
LABEL_11:
    v53 = v52;
    v54 = sub_25605337C();

    v117 = v54;
    swift_willThrow();
    v55 = v116;
    v56 = sub_25605381C();
    if (os_log_type_enabled(v25, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v120[0] = v59;
      *v57 = 136315394;
      v119 = v55;
      v60 = sub_2560536BC();
      v62 = sub_256032BA0(v60, v61, v120);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2112;
      v63 = v117;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 14) = v64;
      *v58 = v64;
      _os_log_impl(&dword_256022000, v25, v56, "APIv2 start sourceType: %s, error: %@", v57, 0x16u);
      sub_256033238(v58, &qword_27F825728, &qword_256055BF0);
      MEMORY[0x259C57FC0](v58, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x259C57FC0](v59, -1, -1);
      MEMORY[0x259C57FC0](v57, -1, -1);
    }

    return swift_willThrow();
  }

LABEL_30:
  v90 = v116;
  v91 = v52;
  if (qword_27F825620 != -1)
  {
    swift_once();
  }

  v92 = byte_27F8260B8;
  if (os_log_type_enabled(v25, byte_27F8260B8))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v120[0] = v94;
    *v93 = 136315394;
    v119 = v90;
    v95 = sub_2560536BC();
    v97 = sub_256032BA0(v95, v96, v120);

    *(v93 + 4) = v97;
    *(v93 + 12) = 2080;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825730, &qword_256055BF8);
    sub_256036E40();
    v98 = sub_25605365C();
    v100 = v99;
    v90 = v116;

    v101 = sub_256032BA0(v98, v100, v120);

    *(v93 + 14) = v101;
    _os_log_impl(&dword_256022000, v25, v92, "APIv2 added client for key: %s, clients: %s", v93, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v94, -1, -1);
    MEMORY[0x259C57FC0](v93, -1, -1);
  }

  v102 = swift_allocObject();
  v103 = v113;
  *(v102 + 16) = v112;
  *(v102 + 24) = v103;
  v104 = OBJC_IVAR___AXLiveCaptions_clients;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v118 = *(v6 + v104);
  *(v6 + v104) = 0x8000000000000000;
  sub_25604C9C0(sub_256037550, v102, v90, isUniquelyReferenced_nonNull_native);
  *(v6 + v104) = v118;
  return swift_endAccess();
}

unint64_t sub_256036E40()
{
  result = qword_27F825738;
  if (!qword_27F825738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F825738);
  }

  return result;
}

uint64_t sub_256036F84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25605347C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_256036FD0()
{
  result = qword_27F825748;
  if (!qword_27F825748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F825748);
  }

  return result;
}

uint64_t sub_25603701C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2560370C8;

  return sub_256034540(v2);
}

uint64_t sub_2560370C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2560371BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_256037638;

  return sub_25604B038(v2, v3, v4);
}

uint64_t sub_25603727C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_256037638;

  return sub_25604B120(a1, v4, v5, v6);
}

uint64_t sub_256037348()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_256037638;

  return sub_256033F0C(v2);
}

uint64_t sub_2560373F4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_256037638;

  return sub_256033B5C(v2);
}

uint64_t objectdestroy_19Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2560374E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25603757C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2560375E4()
{
  result = qword_27F825768;
  if (!qword_27F825768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F825768);
  }

  return result;
}

uint64_t AXLTCaption.appID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID);

  return v1;
}

uint64_t AXLTCaption.appName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName);

  return v1;
}

double sub_2560378C8()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_256037994(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2560379EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_256037AB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  v5 = sub_25605335C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_256037B40(uint64_t a1, uint64_t *a2)
{
  v4 = sub_25605335C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_256037C58@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  v4 = sub_25605335C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_256037CE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  v4 = sub_25605335C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_256037EF0()
{
  v1 = sub_25605335C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25603AB14(0, &qword_27F8256D0, 0x277CCA898);
  v5 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  return sub_25605383C();
}

id sub_256038008(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_25605369C();

  return v3;
}

uint64_t sub_25603808C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_2560380EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2560536AC();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_256038164(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_2560381C0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_2560382D0()
{
  v1 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_256038368(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_256038460()
{
  v1 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2560384F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2560385F0()
{
  v1 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_256038688(char a1)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id AXLTCaption.__allocating_init(id:appID:appName:time:text:segments:placeholder:actionType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v42 = a8;
  v40 = a7;
  v38 = a6;
  v37 = a5;
  v36 = a4;
  v35 = a3;
  v34 = a2;
  v45 = a12;
  v46 = a13;
  v44 = a11;
  v41 = a10;
  v39 = a9;
  v15 = sub_25605335C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v13);
  v20 = &v19[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_time];
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = &v19[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  *&v19[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments] = MEMORY[0x277D84F90];
  v23 = &v19[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_placeholder];
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  *&v19[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType] = 0;
  *&v19[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType] = 0;
  v19[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged] = 0;
  *&v19[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_id] = a1;
  v25 = &v19[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID];
  v26 = v35;
  *v25 = v34;
  v25[1] = v26;
  v27 = &v19[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName];
  v28 = v37;
  *v27 = v36;
  v27[1] = v28;
  swift_beginAccess();
  v29 = v40;
  *v20 = v38;
  v20[1] = v29;
  swift_beginAccess();
  v30 = v39;
  *v21 = v42;
  v21[1] = v30;
  swift_beginAccess();
  *&v19[v22] = v41;
  sub_25605334C();
  (*(v16 + 32))(&v19[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText], v18, v15);
  swift_beginAccess();
  v31 = v45;
  *v23 = v44;
  v23[1] = v31;

  swift_beginAccess();
  *&v19[v24] = v46;
  v47.receiver = v19;
  v47.super_class = v43;
  return objc_msgSendSuper2(&v47, sel_init);
}

id AXLTCaption.init(id:appID:appName:time:text:segments:placeholder:actionType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a8;
  v39 = a7;
  v37 = a6;
  v36 = a5;
  v35 = a4;
  v34 = a3;
  v33 = a2;
  v43 = a12;
  v44 = a13;
  v42 = a11;
  v40 = a10;
  v38 = a9;
  v15 = sub_25605335C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_time];
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = &v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text];
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  *&v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments] = MEMORY[0x277D84F90];
  v22 = &v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_placeholder];
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  *&v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType] = 0;
  *&v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType] = 0;
  v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged] = 0;
  *&v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_id] = a1;
  v24 = &v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID];
  v25 = v34;
  *v24 = v33;
  v24[1] = v25;
  v26 = &v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName];
  v27 = v36;
  *v26 = v35;
  v26[1] = v27;
  swift_beginAccess();
  v28 = v39;
  *v19 = v37;
  v19[1] = v28;
  swift_beginAccess();
  v29 = v38;
  *v20 = v41;
  v20[1] = v29;
  swift_beginAccess();
  *&v13[v21] = v40;

  sub_25605334C();
  (*(v16 + 32))(&v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText], v18, v15);
  swift_beginAccess();
  v30 = v43;
  *v22 = v42;
  v22[1] = v30;

  swift_beginAccess();
  *&v13[v23] = v44;
  v31 = type metadata accessor for AXLTCaption(0);
  v45.receiver = v13;
  v45.super_class = v31;
  return objc_msgSendSuper2(&v45, sel_init);
}

id AXLTCaption.__allocating_init(id:liveCaption:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_256039C84(a1, a2);

  return v6;
}

id AXLTCaption.init(id:liveCaption:)(uint64_t a1, void *a2)
{
  v3 = sub_256039C84(a1, a2);

  return v3;
}

id AXLTCaption.__allocating_init(caption:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_256039F04(a1);

  return v4;
}

id AXLTCaption.init(caption:)(void *a1)
{
  v2 = sub_256039F04(a1);

  return v2;
}

id AXLTCaption.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXLTCaption.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXLTCaption(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *mergeCaptions(_:_:)(uint64_t a1, uint64_t a2)
{
  v90 = a2;
  v3 = sub_25605335C();
  v93 = *(v3 - 8);
  v94 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v89 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v88 = &v74 - v7;
  MEMORY[0x28223BE20](v6);
  v92 = &v74 - v8;
  v9 = a1;
  v10 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_id);
  v11 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID + 8);
  v81 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID);
  v82 = v10;
  v80 = v11;
  v12 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName + 8);
  v79 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName);
  v13 = (a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_time);
  v14 = v9;
  swift_beginAccess();
  v15 = *v13;
  v16 = v13[1];
  v78 = v15;
  v17 = (v14 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text);
  swift_beginAccess();
  v84 = v17;
  v18 = *v17;
  v76 = v17[1];
  v77 = v18;
  v19 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  v83 = *(v14 + v19);
  v20 = (v14 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_placeholder);
  v91 = v14;
  swift_beginAccess();
  v21 = v20[1];
  v87 = *v20;
  v75 = v21;
  v22 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  swift_beginAccess();
  v86 = *(v14 + v22);
  v85 = type metadata accessor for AXLTCaption(0);
  v23 = objc_allocWithZone(v85);
  v24 = &v23[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_time];
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = &v23[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text];
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  *&v23[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments] = MEMORY[0x277D84F90];
  v27 = &v23[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_placeholder];
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  *&v23[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType] = 0;
  *&v23[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType] = 0;
  v23[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged] = 0;
  v29 = v81;
  *&v23[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_id] = v82;
  v30 = &v23[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID];
  v31 = v80;
  *v30 = v29;
  v30[1] = v31;
  v32 = &v23[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName];
  *v32 = v79;
  v32[1] = v12;
  swift_beginAccess();
  *v24 = v78;
  v24[1] = v16;
  swift_beginAccess();
  v33 = v76;
  *v25 = v77;
  v25[1] = v33;

  v34 = v83;

  v35 = v75;

  swift_beginAccess();
  *&v23[v26] = v34;

  v36 = v92;
  sub_25605334C();
  (*(v93 + 32))(&v23[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText], v36, v94);
  swift_beginAccess();
  *v27 = v87;
  v27[1] = v35;

  swift_beginAccess();
  v37 = v85;
  *&v23[v28] = v86;
  v98.receiver = v23;
  v98.super_class = v37;
  v38 = objc_msgSendSuper2(&v98, sel_init);
  v40 = *v84;
  v39 = v84[1];
  v41 = v90;
  v42 = (v90 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text);
  swift_beginAccess();
  v43 = *v42;
  v44 = v42[1];
  v96 = v40;
  v97 = v39;
  swift_bridgeObjectRetain_n();

  MEMORY[0x259C57450](10, 0xE100000000000000);

  MEMORY[0x259C57450](v43, v44);

  v45 = v96;
  v46 = v97;
  v47 = &v38[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text];
  swift_beginAccess();
  *v47 = v45;
  *(v47 + 1) = v46;

  v48 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  v95 = *&v38[v48];
  swift_beginAccess();

  sub_256039890(v49);
  *&v38[v48] = v95;
  v87 = v38;

  v50 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  swift_beginAccess();
  v51 = *(v41 + v50);
  v52 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  swift_beginAccess();
  *&v38[v52] = v51;
  v53 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  v54 = v91;
  swift_beginAccess();
  v56 = v93;
  v55 = v94;
  v57 = *(v93 + 16);
  v58 = v88;
  v57(v88, v54 + v53, v94);
  v59 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  v60 = v41 + v59;
  v61 = v89;
  v57(v89, v60, v55);
  v62 = v92;
  sub_25605333C();
  v63 = *(v56 + 8);
  v64 = v87;
  v63(v61, v55);
  v63(v58, v55);
  v65 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  (*(v56 + 40))(&v64[v65], v62, v55);
  swift_endAccess();
  v66 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  v67 = v91;
  swift_beginAccess();
  v68 = *(v67 + v66);
  v69 = 1;
  if ((v68 & 1) == 0)
  {
    v70 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
    v71 = v90;
    swift_beginAccess();
    v69 = *(v71 + v70);
  }

  v72 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  swift_beginAccess();
  v64[v72] = v69;
  return v64;
}

Swift::String __swiftcall mergeStrings(_:_:)(Swift::String_optional a1, Swift::String_optional a2)
{
  if (a1.value._object)
  {
    countAndFlagsBits = a1.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (a1.value._object)
  {
    object = a1.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  if (a2.value._object)
  {
    v4 = a2.value._countAndFlagsBits;
  }

  else
  {
    v4 = 0;
  }

  if (a2.value._object)
  {
    v5 = a2.value._object;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v9 = countAndFlagsBits;

  MEMORY[0x259C57450](10, 0xE100000000000000);

  MEMORY[0x259C57450](v4, v5);

  v6 = v9;
  v7 = object;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_256039890(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_25605393C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_25605393C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_256039980(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_256039AA8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_256039980(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_25605393C();
LABEL_9:
  result = sub_25605391C();
  *v2 = result;
  return result;
}

void (*sub_256039A20(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C57650](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_256039AA0;
  }

  __break(1u);
  return result;
}

uint64_t sub_256039AA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25605393C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_25605393C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25603AB5C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825820, &qword_256055E18);
            v9 = sub_256039A20(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25603AB14(0, &qword_27F825818, 0x277CDCF18);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AXLTCaption(uint64_t a1)
{
  result = qword_27F825808;
  if (!qword_27F825808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_256039C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_time];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = &v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments] = MEMORY[0x277D84F90];
  v7 = &v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_placeholder];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType] = 0;
  v8 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  *&v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType] = 0;
  v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged] = 0;
  *&v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_id] = a1;
  v9 = *(a2 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_source);
  v10 = *(v9 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID + 8);
  v11 = &v3[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID];
  *v11 = *(v9 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID);
  *(v11 + 1) = v10;
  v12 = (v9 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName);
  v13 = *v12;
  v14 = v12[1];
  v15 = &v3[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName];
  *v15 = v13;
  *(v15 + 1) = v14;
  v16 = objc_opt_self();

  v17 = sub_25605339C();
  v18 = [v16 dateToString_];

  v19 = sub_2560536AC();
  v21 = v20;

  swift_beginAccess();
  *v5 = v19;
  v5[1] = v21;

  v23 = *(a2 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption);
  v22 = *(a2 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption + 8);
  swift_beginAccess();
  *v6 = v23;
  *(v6 + 1) = v22;

  v24 = OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_attributedText;
  v25 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  v26 = sub_25605335C();
  (*(*(v26 - 8) + 16))(&v3[v25], a2 + v24, v26);
  v27 = *(a2 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_resultType);
  swift_beginAccess();
  *&v3[v8] = v27;
  v29.receiver = v3;
  v29.super_class = type metadata accessor for AXLTCaption(0);
  return objc_msgSendSuper2(&v29, sel_init);
}

id sub_256039F04(uint64_t a1)
{
  v3 = sub_25605335C();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_time];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = &v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  *&v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments] = MEMORY[0x277D84F90];
  v8 = &v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_placeholder];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v45 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  *&v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType] = 0;
  v47 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  *&v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType] = 0;
  v46 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged] = 0;
  *&v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_id] = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_id);
  v10 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID);
  v41 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID + 8);
  v9 = v41;
  v11 = &v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID];
  *v11 = v10;
  v11[1] = v9;
  v12 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName + 8);
  v13 = &v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName];
  *v13 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName);
  v13[1] = v12;
  v14 = (a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_time);
  swift_beginAccess();
  v16 = *v14;
  v15 = v14[1];
  swift_beginAccess();
  *v5 = v16;
  v5[1] = v15;
  v17 = (a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text);
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  swift_beginAccess();
  *v6 = v18;
  v6[1] = v19;
  v20 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  v21 = *(a1 + v20);
  swift_beginAccess();
  *&v1[v7] = v21;
  v22 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;

  swift_beginAccess();
  v24 = v43;
  v23 = v44;
  v25 = a1 + v22;
  v26 = v42;
  (*(v43 + 16))(v42, v25, v44);
  (*(v24 + 32))(&v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText], v26, v23);
  v27 = (a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_placeholder);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  swift_beginAccess();
  *v8 = v29;
  v8[1] = v28;

  v30 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  swift_beginAccess();
  v31 = *(a1 + v30);
  v32 = v45;
  swift_beginAccess();
  *&v1[v32] = v31;
  v33 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + v33);
  v34 = v46;
  swift_beginAccess();
  v1[v34] = v33;
  v35 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  swift_beginAccess();
  v36 = *(a1 + v35);
  v37 = v47;
  swift_beginAccess();
  *&v1[v37] = v36;
  v38 = type metadata accessor for AXLTCaption(0);
  v48.receiver = v1;
  v48.super_class = v38;
  return objc_msgSendSuper2(&v48, sel_init);
}

unint64_t sub_25603A2E0()
{
  result = qword_27F825800;
  if (!qword_27F825800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F825800);
  }

  return result;
}

double keypath_getTm@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

uint64_t keypath_get_11Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_12Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_25603A450(uint64_t a1)
{
  result = sub_25605335C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25603AB14(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_25603AB5C()
{
  result = qword_27F825828;
  if (!qword_27F825828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F825820, &qword_256055E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F825828);
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

uint64_t static AXLCTranscriber.supportedLocales()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_256037640;

  return sub_25604ED4C();
}

uint64_t static AXLCTranscriber.installedLocales()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_256033CA4;

  return sub_25604F244();
}

uint64_t static AXLCTranscriber.defaultLocale()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v2[4] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_25603AE28;

  return sub_25604ED4C();
}

uint64_t sub_25603AE28(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_25603AF28, 0, 0);
}

uint64_t sub_25603AF28()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_25605347C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_25603B53C(v2, v1, v3);

  sub_256033238(v2, &qword_27F8256A8, &qword_2560559A0);

  v5 = v0[1];

  return v5();
}

id sub_25603B028()
{
  result = [objc_allocWithZone(type metadata accessor for AXLCTranscriber(0)) init];
  qword_27F825830 = result;
  return result;
}

id static AXLCTranscriber.shared.getter()
{
  if (qword_27F825640 != -1)
  {
    swift_once();
  }

  v1 = qword_27F825830;

  return v1;
}

uint64_t sub_25603B280(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_25603763C;

  return sub_25604ED4C();
}

uint64_t sub_25603B494(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_256033FB4;

  return sub_25604F244();
}

uint64_t sub_25603B53C@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v324 = a2;
  v312 = a3;
  v317 = sub_25605345C();
  v315 = *(v317 - 8);
  MEMORY[0x28223BE20](v317);
  v305 = &v289 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8259C8, &qword_2560561C0);
  MEMORY[0x28223BE20](v5 - 8);
  v310 = (&v289 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825758, &unk_256055CB0);
  v8 = *(v7 - 8);
  v331 = v7;
  v332 = v8;
  MEMORY[0x28223BE20](v7);
  v323 = (&v289 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825760, &qword_2560561B0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v321 = &v289 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v320 = &v289 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v289 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v289 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v294 = &v289 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v297 = &v289 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v301 = &v289 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v306 = &v289 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v289 - v29;
  v333 = sub_25605347C();
  v31 = *(v333 - 8);
  v32 = MEMORY[0x28223BE20](v333);
  v290 = &v289 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v291 = &v289 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v292 = &v289 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v296 = &v289 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v293 = &v289 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v295 = &v289 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v298 = &v289 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v300 = &v289 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v322 = &v289 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v316 = &v289 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v311 = &v289 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v299 = &v289 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v302 = &v289 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v303 = &v289 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v307 = &v289 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v304 = (&v289 - v63);
  v64 = MEMORY[0x28223BE20](v62);
  v66 = &v289 - v65;
  v67 = MEMORY[0x28223BE20](v64);
  v69 = &v289 - v68;
  MEMORY[0x28223BE20](v67);
  v71 = &v289 - v70;
  v330 = a1;
  sub_2560331D0(a1, v30, &qword_27F8256A8, &qword_2560559A0);
  v73 = v31 + 48;
  v72 = *(v31 + 48);
  v74 = v30;
  v75 = v30;
  v76 = v333;
  v77 = v72(v75, 1, v333);
  v318 = v71;
  v325 = v31;
  if (v77 == 1)
  {
    sub_25605343C();
    v78 = v72;
    if (v72(v74, 1, v76) != 1)
    {
      sub_256033238(v74, &qword_27F8256A8, &qword_2560559A0);
    }
  }

  else
  {
    (*(v31 + 32))(v71, v74, v76);
    v78 = v72;
  }

  v79 = 0x746E6572727563;
  v80 = v78(v330, 1, v76);
  v81 = v76;
  v309 = v73;
  v308 = v78;
  if (v80 == 1)
  {
    v313 = 0x746E6572727563;
    v314 = 0xE700000000000000;
    v82 = v325;
  }

  else
  {
    v83 = 0xE700000000000000;
    sub_25605343C();
    v84 = MEMORY[0x259C57160](v318, v69);
    v82 = v325;
    (*(v325 + 8))(v69, v81);
    if ((v84 & 1) == 0)
    {
      v79 = 0x64656469766F7270;
    }

    v313 = v79;
    if ((v84 & 1) == 0)
    {
      v83 = 0xE800000000000000;
    }

    v314 = v83;
  }

  i = 0;
  v86 = *(v324 + 16);
  v326 = v82 + 2;
  v87 = v331;
  v328 = v332 + 6;
  v329 = v332 + 7;
  v332 = v82 + 4;
  v88 = MEMORY[0x277D84F90];
  v330 = v82 + 1;
  v327 = v86;
  v89 = v86 == 0;
  if (v86)
  {
    goto LABEL_14;
  }

LABEL_13:
  v90 = 1;
  for (i = v86; ; ++i)
  {
    isa = v329->isa;
    (v329->isa)(v17, v90, 1, v87);
    sub_25603757C(v17, v19, &qword_27F825760, &qword_2560561B0);
    v96 = v328->isa;
    if ((v328->isa)(v19, 1, v87) == 1)
    {
      break;
    }

    (v332->isa)(v66, &v19[*(v87 + 48)], v81);
    v338 = sub_2560533DC();
    v339 = v97;
    v336 = 95;
    v337 = 0xE100000000000000;
    v334 = 45;
    v335 = 0xE100000000000000;
    v287 = sub_2560375E4();
    v288 = v287;
    v286 = v287;
    v285 = MEMORY[0x277D837D0];
    v98 = sub_25605387C();
    v82 = v99;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = sub_25604B9C4(0, *(v88 + 2) + 1, 1, v88);
    }

    v101 = *(v88 + 2);
    v100 = *(v88 + 3);
    if (v101 >= v100 >> 1)
    {
      v88 = sub_25604B9C4((v100 > 1), v101 + 1, 1, v88);
    }

    v81 = v333;
    (v330->isa)(v66, v333);
    *(v88 + 2) = v101 + 1;
    v102 = &v88[16 * v101];
    *(v102 + 4) = v98;
    *(v102 + 5) = v82;
    v87 = v331;
    v86 = v327;
    v89 = i >= v327;
    if (i == v327)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (v89)
    {
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:

      v145 = v332->isa;
      v269 = v296;
      (v332->isa)(v296, i, v81);
      v270 = sub_25605382C();
      v271 = v292;
      (v326->isa)(v292, v269, v81);
      v272 = os_log_type_enabled(v82, v270);
      v273 = v318;
      if (v272)
      {
        v274 = swift_slowAlloc();
        v275 = swift_slowAlloc();
        v338 = v275;
        *v274 = 136315138;
        sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
        v276 = sub_25605397C();
        v277 = v271;
        v279 = v278;
        v280 = v330->isa;
        (v330->isa)(v277, v81);
        v281 = sub_256032BA0(v276, v279, &v338);

        *(v274 + 4) = v281;
        _os_log_impl(&dword_256022000, v310, v270, "TranscriberV2: default is locale with US region: %s", v274, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v275);
        MEMORY[0x259C57FC0](v275, -1, -1);
        MEMORY[0x259C57FC0](v274, -1, -1);
        v280(v273, v81);
      }

      else
      {
        v283 = v330->isa;
        (v330->isa)(v271, v81);
        v283(v273, v81);
      }

      v160 = v312;
      v161 = &v327;
LABEL_47:
      v162 = *(v161 - 32);
      return v145(v160, v162, v81);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_104;
    }

    v91 = v325;
    v92 = v323;
    v93 = v324 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * i;
    v94 = *(v87 + 48);
    *v323 = i;
    (*(v91 + 16))(v92 + v94, v93, v81);
    sub_25603757C(v92, v17, &qword_27F825758, &unk_256055CB0);
    v90 = 0;
  }

  v338 = sub_2560533DC();
  v339 = v103;
  v336 = 95;
  v337 = 0xE100000000000000;
  v334 = 45;
  v335 = 0xE100000000000000;
  v288 = sub_2560375E4();
  v319 = v288;
  v286 = v288;
  v285 = MEMORY[0x277D837D0];
  v104 = sub_25605387C();
  v106 = v105;

  v338 = v104;
  v339 = v106;
  MEMORY[0x28223BE20](v107);
  v287 = &v338;
  j = &unk_27F826000;
  if (sub_25604D64C(sub_25605113C, &v285, v88))
  {

    LOBYTE(v109) = sub_25605382C();
    if (qword_27F825630 != -1)
    {
LABEL_116:
      swift_once();
    }

    v110 = *(j + 192);
    v111 = v304;
    v112 = v318;
    (v326->isa)(v304, v318, v81);
    v113 = os_log_type_enabled(v110, v109);
    v114 = v313;
    if (v113)
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v338 = v116;
      *v115 = 136315394;
      v117 = sub_256032BA0(v114, v314, &v338);

      *(v115 + 4) = v117;
      *(v115 + 12) = 2080;
      sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
      v118 = sub_25605397C();
      v120 = v119;
      (v330->isa)(v111, v81);
      v121 = sub_256032BA0(v118, v120, &v338);

      *(v115 + 14) = v121;
      _os_log_impl(&dword_256022000, v110, v109, "TranscriberV2: default is %s locale: %s", v115, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v116, -1, -1);
      MEMORY[0x259C57FC0](v115, -1, -1);
    }

    else
    {

      (v330->isa)(v111, v81);
    }

    return (v332->isa)(v312, v112, v81);
  }

  else
  {
    v304 = v104;
    v122 = v305;
    sub_25605346C();
    v123 = v310;
    sub_25605344C();
    v124 = v123;
    (*(v315 + 8))(v122, v317);
    v125 = sub_2560533FC();
    v126 = *(v125 - 8);
    if ((*(v126 + 48))(v124, 1, v125) == 1)
    {
      sub_256033238(v124, &qword_27F8259C8, &qword_2560561C0);
      v315 = 0;
      v317 = 0xE000000000000000;
    }

    else
    {
      v315 = sub_2560533EC();
      v317 = v128;
      (*(v126 + 8))(v124, v125);
    }

    v129 = v313;
    v130 = sub_25605382C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v310 = qword_27F8260C0;
    if (os_log_type_enabled(qword_27F8260C0, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v338 = v132;
      *v131 = 136315650;
      *(v131 + 4) = sub_256032BA0(v129, v314, &v338);
      *(v131 + 12) = 2080;
      *(v131 + 14) = sub_256032BA0(v304, v106, &v338);
      *(v131 + 22) = 2080;
      *(v131 + 24) = sub_256032BA0(v315, v317, &v338);
      _os_log_impl(&dword_256022000, v310, v130, "TranscriberV2: Searching default locale for %s locale identifier: %s languageCode: %s", v131, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v132, -1, -1);
      MEMORY[0x259C57FC0](v131, -1, -1);
    }

    v133 = v306;
    sub_256045F14(v304, v106, v129, v314, v324, v88, v306);

    LOBYTE(v109) = v309;
    v134 = v308(v133, 1, v81);
    v135 = v331;
    if (v134 != 1)
    {

      v145 = v332->isa;
      v146 = v307;
      (v332->isa)(v307, v133, v81);
      v147 = sub_25605382C();
      v148 = v303;
      (v326->isa)(v303, v146, v81);
      v149 = v310;
      if (os_log_type_enabled(v310, v147))
      {
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v338 = v151;
        *v150 = 136315394;
        v152 = sub_256032BA0(v313, v314, &v338);

        *(v150 + 4) = v152;
        *(v150 + 12) = 2080;
        sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
        v153 = sub_25605397C();
        v154 = v148;
        v156 = v155;
        v157 = v330->isa;
        (v330->isa)(v154, v81);
        v158 = sub_256032BA0(v153, v156, &v338);

        *(v150 + 14) = v158;
        _os_log_impl(&dword_256022000, v149, v147, "TranscriberV2: default is %s locale from supported locales: %s", v150, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C57FC0](v151, -1, -1);
        MEMORY[0x259C57FC0](v150, -1, -1);
        v157(v318, v81);
      }

      else
      {

        v159 = v330->isa;
        (v330->isa)(v148, v81);
        v159(v318, v81);
      }

      v160 = v312;
      v161 = &v337;
      goto LABEL_47;
    }

    sub_256033238(v133, &qword_27F8256A8, &qword_2560559A0);
    v136 = [objc_opt_self() _deviceLanguage];
    if (v136)
    {
      v137 = v136;
      v138 = sub_2560536AC();
      v109 = v139;

      v140 = sub_25605382C();
      if (os_log_type_enabled(v310, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v338 = v142;
        *v141 = 136315138;
        *(v141 + 4) = sub_256032BA0(v138, v109, &v338);
        _os_log_impl(&dword_256022000, v310, v140, "TranscriberV2: Searching default locale for device language: %s", v141, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v142);
        MEMORY[0x259C57FC0](v142, -1, -1);
        MEMORY[0x259C57FC0](v141, -1, -1);
      }

      v143 = v301;
      sub_256045F14(v138, v109, 0x4C20656369766544, 0xEF65676175676E61, v324, v88, v301);

      v144 = v333;
      LOBYTE(v109) = v309;
      if (v308(v143, 1, v333) != 1)
      {

        v176 = v332->isa;
        v177 = v302;
        (v332->isa)(v302, v143, v144);
        v178 = sub_25605382C();
        v179 = v299;
        (v326->isa)(v299, v177, v144);
        v180 = v310;
        v181 = os_log_type_enabled(v310, v178);
        v182 = v318;
        if (v181)
        {
          v183 = swift_slowAlloc();
          v184 = swift_slowAlloc();
          v338 = v184;
          *v183 = 136315394;
          *(v183 + 4) = sub_256032BA0(0x4C20656369766544, 0xEF65676175676E61, &v338);
          *(v183 + 12) = 2080;
          sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
          v185 = sub_25605397C();
          v186 = v179;
          v187 = v180;
          v189 = v188;
          v190 = v330->isa;
          (v330->isa)(v186, v144);
          v191 = sub_256032BA0(v185, v189, &v338);

          *(v183 + 14) = v191;
          _os_log_impl(&dword_256022000, v187, v178, "TranscriberV2: default is %s locale from supported locales: %s", v183, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C57FC0](v184, -1, -1);
          MEMORY[0x259C57FC0](v183, -1, -1);
          v190(v318, v144);
        }

        else
        {
          v256 = v330->isa;
          (v330->isa)(v179, v144);
          v256(v182, v144);
        }

        return v176(v312, v302, v144);
      }

      sub_256033238(v143, &qword_27F8256A8, &qword_2560559A0);
      v81 = v144;
    }

    else
    {
    }

    v163 = v318;
    v164 = HIBYTE(v317) & 0xF;
    if ((v317 & 0x2000000000000000) == 0)
    {
      v164 = v315 & 0xFFFFFFFFFFFFLL;
    }

    v165 = v311;
    if (v164)
    {
      v166 = v327;
      if (v327)
      {
        v313 = (*(v325 + 80) + 32) & ~*(v325 + 80);
        v109 = v324 + v313;
        v167 = *(v325 + 72);
        v314 = *(v325 + 16);
        v324 = MEMORY[0x277D84F90];
        v307 = v167;
        do
        {
          v168 = v333;
          v314(v165, v109, v333);
          sub_2560533DC();
          v169 = sub_25605372C();

          if (v169)
          {
            v170 = v332->isa;
            (v332->isa)(v316, v165, v168);
            v171 = v324;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v338 = v171;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_25604D6F8(0, *(v171 + 16) + 1, 1);
              v165 = v311;
              v171 = v338;
            }

            v174 = *(v171 + 16);
            v173 = *(v171 + 24);
            if (v174 >= v173 >> 1)
            {
              sub_25604D6F8((v173 > 1), v174 + 1, 1);
              v165 = v311;
              v171 = v338;
            }

            *(v171 + 16) = v174 + 1;
            v324 = v171;
            v175 = v171 + v313;
            v167 = v307;
            v170(v175 + v174 * v307, v316, v333);
            v135 = v331;
          }

          else
          {
            (v330->isa)(v165, v168);
          }

          v109 += v167;
          --v166;
        }

        while (v166);
      }

      else
      {
        v324 = MEMORY[0x277D84F90];
      }

      v192 = sub_25605382C();
      v193 = os_log_type_enabled(v310, v192);
      v194 = v324;
      if (v193)
      {
        v109 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        v338 = v195;
        *v109 = 136315394;
        *(v109 + 4) = sub_256032BA0(v315, v317, &v338);
        *(v109 + 12) = 2080;
        v196 = MEMORY[0x259C574B0](v194, v333);
        v198 = sub_256032BA0(v196, v197, &v338);

        *(v109 + 14) = v198;
        _os_log_impl(&dword_256022000, v310, v192, "TranscriberV2: Searching default locale for languageCode: %s from locales: %s", v109, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C57FC0](v195, -1, -1);
        MEMORY[0x259C57FC0](v109, -1, -1);
      }

      j = 0;
      v199 = MEMORY[0x277D84F90];
      v324 = v194;
      v200 = *(v194 + 16);
      v81 = v333;
      v201 = v321;
      v202 = v200;
      if (v200)
      {
        goto LABEL_71;
      }

LABEL_70:
      v203 = 1;
      for (j = v200; ; ++j)
      {
        isa(v201, v203, 1, v135);
        v208 = v320;
        sub_25603757C(v201, v320, &qword_27F825760, &qword_2560561B0);
        if (v96(v208, 1, v135) == 1)
        {
          break;
        }

        (v332->isa)(v322, v208 + *(v135 + 48), v81);
        v338 = sub_2560533DC();
        v339 = v209;
        v336 = 95;
        v337 = 0xE100000000000000;
        v334 = 45;
        v335 = 0xE100000000000000;
        v287 = v319;
        v288 = v319;
        v286 = v319;
        v285 = MEMORY[0x277D837D0];
        v210 = sub_25605387C();
        v109 = v211;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v199 = sub_25604B9C4(0, *(v199 + 2) + 1, 1, v199);
        }

        v213 = *(v199 + 2);
        v212 = *(v199 + 3);
        if (v213 >= v212 >> 1)
        {
          v199 = sub_25604B9C4((v212 > 1), v213 + 1, 1, v199);
        }

        v81 = v333;
        (v330->isa)(v322, v333);
        *(v199 + 2) = v213 + 1;
        v214 = &v199[16 * v213];
        *(v214 + 4) = v210;
        *(v214 + 5) = v109;
        v135 = v331;
        v201 = v321;
        v200 = v202;
        if (j == v202)
        {
          goto LABEL_70;
        }

LABEL_71:
        if ((j & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

        if (j >= *(v324 + 16))
        {
          goto LABEL_115;
        }

        v204 = v325;
        v205 = v324 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * j;
        v206 = *(v135 + 48);
        v207 = v323;
        *v323 = j;
        (*(v204 + 16))(v207 + v206, v205, v81);
        sub_25603757C(v207, v201, &qword_27F825758, &unk_256055CB0);
        v203 = 0;
      }

      v215 = sub_25605380C();
      v82 = v310;
      v216 = os_log_type_enabled(v310, v215);
      v217 = v317;
      if (v216)
      {
        v218 = swift_slowAlloc();
        v219 = swift_slowAlloc();
        v338 = v219;
        *v218 = 136315138;
        v220 = MEMORY[0x259C574B0](v199, MEMORY[0x277D837D0]);
        v222 = sub_256032BA0(v220, v221, &v338);
        v82 = v310;

        *(v218 + 4) = v222;
        _os_log_impl(&dword_256022000, v82, v215, "TranscriberV2: localeIDsWithLanguageCode: %s", v218, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v219);
        MEMORY[0x259C57FC0](v219, -1, -1);
        MEMORY[0x259C57FC0](v218, -1, -1);
      }

      v223 = *(v324 + 16);
      if (v202 && v223 == 1)
      {

        if (*(v324 + 16))
        {
          v224 = *(v325 + 16);
          v225 = v300;
          v224(v300, v324 + ((*(v325 + 80) + 32) & ~*(v325 + 80)), v81);

          v226 = sub_25605382C();
          v227 = v298;
          v224(v298, v225, v81);
          v228 = os_log_type_enabled(v82, v226);
          v229 = v318;
          if (v228)
          {
            v230 = swift_slowAlloc();
            v231 = v82;
            v232 = swift_slowAlloc();
            v338 = v232;
            *v230 = 136315138;
            sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
            v233 = sub_25605397C();
            v234 = v227;
            v236 = v235;
            v237 = v330->isa;
            (v330->isa)(v234, v81);
            v238 = sub_256032BA0(v233, v236, &v338);

            *(v230 + 4) = v238;
            _os_log_impl(&dword_256022000, v231, v226, "TranscriberV2: default is the only locale with language code: %s", v230, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v232);
            MEMORY[0x259C57FC0](v232, -1, -1);
            MEMORY[0x259C57FC0](v230, -1, -1);
            v237(v229, v81);
          }

          else
          {
            v257 = v330->isa;
            (v330->isa)(v227, v81);
            v257(v229, v81);
          }

          return (v332->isa)(v312, v300, v81);
        }

        __break(1u);
      }

      else
      {
        if (v223 < 2)
        {

          v163 = v318;
          goto LABEL_98;
        }

        v239 = v315;
        v240 = sub_2560536CC();
        v241 = v297;
        sub_256046820(v239, v217, v240, v242, v324, v199, v297);

        v243 = v308;
        if (v308(v241, 1, v81) != 1)
        {

          v145 = v332->isa;
          v258 = v295;
          (v332->isa)(v295, v241, v81);
          v259 = sub_25605382C();
          v260 = v293;
          (v326->isa)(v293, v258, v81);
          if (os_log_type_enabled(v82, v259))
          {
            v261 = swift_slowAlloc();
            v262 = swift_slowAlloc();
            v338 = v262;
            *v261 = 136315138;
            sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
            v263 = sub_25605397C();
            v264 = v260;
            v266 = v265;
            v267 = v330->isa;
            (v330->isa)(v264, v81);
            v268 = sub_256032BA0(v263, v266, &v338);

            *(v261 + 4) = v268;
            _os_log_impl(&dword_256022000, v310, v259, "TranscriberV2: default is locale with language with language region: %s", v261, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v262);
            MEMORY[0x259C57FC0](v262, -1, -1);
            MEMORY[0x259C57FC0](v261, -1, -1);
            v267(v318, v81);
          }

          else
          {
            v282 = v330->isa;
            (v330->isa)(v260, v81);
            v282(v318, v81);
          }

          v160 = v312;
          v162 = v258;
          return v145(v160, v162, v81);
        }

        sub_256033238(v241, &qword_27F8256A8, &qword_2560559A0);
        i = v294;
        sub_256046820(v239, v217, 21333, 0xE200000000000000, v324, v199, v294);

        if (v243(i, 1, v81) != 1)
        {
          goto LABEL_105;
        }

        result = sub_256033238(i, &qword_27F8256A8, &qword_2560559A0);
        v163 = v318;
        if (!v202)
        {

          goto LABEL_98;
        }

        if (*(v324 + 16))
        {
          v244 = *(v325 + 16);
          v245 = v291;
          v244(v291, v324 + ((*(v325 + 80) + 32) & ~*(v325 + 80)), v81);

          v246 = sub_25605382C();
          v247 = v290;
          v244(v290, v245, v81);
          if (os_log_type_enabled(v82, v246))
          {
            v248 = swift_slowAlloc();
            v249 = swift_slowAlloc();
            v338 = v249;
            *v248 = 136315138;
            sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
            v250 = sub_25605397C();
            v251 = v247;
            v253 = v252;
            v254 = v330->isa;
            (v330->isa)(v251, v81);
            v255 = sub_256032BA0(v250, v253, &v338);

            *(v248 + 4) = v255;
            _os_log_impl(&dword_256022000, v310, v246, "TranscriberV2: default is first locale with language code: %s", v248, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v249);
            MEMORY[0x259C57FC0](v249, -1, -1);
            MEMORY[0x259C57FC0](v248, -1, -1);
            v254(v163, v81);
          }

          else
          {
            v284 = v330->isa;
            (v330->isa)(v247, v81);
            v284(v163, v81);
          }

          return (v332->isa)(v312, v245, v81);
        }
      }

      __break(1u);
      return result;
    }

LABEL_98:
    sub_25605382C();
    sub_2560534AC();
    sub_2560533CC();
    return (v330->isa)(v163, v81);
  }
}

uint64_t sub_25603DD28(const void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v2[2] = swift_task_alloc();
  v4 = sub_25605347C();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = _Block_copy(a1);
  v2[7] = swift_getObjCClassMetadata();
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = sub_256034690;

  return sub_25604ED4C();
}

uint64_t sub_25603DEF8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_2560537AC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v14 = v4;
  v15 = a1;
  v16 = a2;

  sub_25603E5A8(0, 0, v11, &unk_256055E90, v13);
}

uint64_t sub_25603E034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_25603E0FC;

  return sub_25603F5EC(a5, a6, a7, a8);
}

uint64_t sub_25603E0FC(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_25603E1FC, 0, 0);
}

uint64_t sub_25603E1FC(uint64_t a1)
{
  v29 = v1;
  if ((*(v1 + 40) & 1) == 0)
  {
    v2 = *(*(v1 + 16) + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source);
    if (v2)
    {
      v3 = (*(v1 + 24) + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID);
      v4 = *&v2[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID] == *v3 && *&v2[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID + 8] == v3[1];
      if (!v4 && (sub_25605398C() & 1) == 0)
      {
        v5 = qword_27F825628;
        v6 = v2;
        if (v5 != -1)
        {
          swift_once();
        }

        v7 = byte_27F8260B9;
        if (qword_27F825630 != -1)
        {
          swift_once();
        }

        v8 = qword_27F8260C0;
        if (os_log_type_enabled(qword_27F8260C0, v7))
        {
          v9 = *(v1 + 24);
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v28 = v11;
          *v10 = 136315650;
          *(v10 + 4) = sub_256032BA0(*(v9 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v9 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v28);
          *(v10 + 12) = 2080;
          v12 = *&v6[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName];
          v13 = *&v6[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8];

          v14 = sub_256032BA0(v12, v13, &v28);

          *(v10 + 14) = v14;
          *(v10 + 22) = 2080;
          v15 = [objc_opt_self() currentThread];
          v16 = [v15 description];
          v17 = sub_2560536AC();
          v19 = v18;

          v20 = sub_256032BA0(v17, v19, &v28);

          *(v10 + 24) = v20;
          _os_log_impl(&dword_256022000, v8, v7, "TranscriberV2: startTranscription Skipped Source: %s Transcribing Source: %s thread: %s", v10, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C57FC0](v11, -1, -1);
          MEMORY[0x259C57FC0](v10, -1, -1);
        }
      }
    }

    else
    {
      v21 = sub_25605381C();
      if (qword_27F825630 != -1)
      {
        swift_once();
      }

      v22 = qword_27F8260C0;
      if (os_log_type_enabled(qword_27F8260C0, v21))
      {
        v23 = *(v1 + 24);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v28 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_256032BA0(*(v23 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v23 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v28);
        _os_log_impl(&dword_256022000, v22, v21, "TranscriberV2: startTranscription Skipped Source: %s Transcribing Source: NULL", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x259C57FC0](v25, -1, -1);
        MEMORY[0x259C57FC0](v24, -1, -1);
      }
    }
  }

  v26 = *(v1 + 8);

  return v26();
}

uint64_t sub_25603E5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2560331D0(a3, v25 - v10, &qword_27F825750, &qword_256055E80);
  v12 = sub_2560537AC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_256033238(v11, &qword_27F825750, &qword_256055E80);
  }

  else
  {
    sub_25605379C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25605377C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2560536DC() + 32;
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

      sub_256033238(a3, &qword_27F825750, &qword_256055E80);

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

  sub_256033238(a3, &qword_27F825750, &qword_256055E80);
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

uint64_t sub_25603EA0C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_2560537AC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;
  v8 = v1;
  v9 = a1;
  sub_25603E5A8(0, 0, v5, &unk_256055EA0, v7);
}

uint64_t sub_25603EB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_25603EBB8;

  return sub_256043700(a5);
}

uint64_t sub_25603EBB8(char a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_25603ECB8, 0, 0);
}

uint64_t sub_25603ECB8()
{
  v15 = v0;
  if ((*(v0 + 32) & 1) == 0)
  {
    if (qword_27F825628 != -1)
    {
      swift_once();
    }

    v1 = byte_27F8260B9;
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v2 = qword_27F8260C0;
    if (os_log_type_enabled(qword_27F8260C0, v1))
    {
      v3 = *(v0 + 16);
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315394;
      *(v4 + 4) = sub_256032BA0(*(v3 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v3 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v14);
      *(v4 + 12) = 2080;
      v6 = [objc_opt_self() currentThread];
      v7 = [v6 description];
      v8 = sub_2560536AC();
      v10 = v9;

      v11 = sub_256032BA0(v8, v10, &v14);

      *(v4 + 14) = v11;
      _os_log_impl(&dword_256022000, v2, v1, "TranscriberV2: stopTranscription Skip Source: %s thread: %s", v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v5, -1, -1);
      MEMORY[0x259C57FC0](v4, -1, -1);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25603EFF0(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_2560537AC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;
  v11 = a1;
  v12 = a2;
  sub_25603E5A8(0, 0, v7, &unk_256055EB0, v9);
}

uint64_t sub_25603F110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25603F134, 0, 0);
}

uint64_t sub_25603F134()
{
  if (qword_27F825660 != -1)
  {
    swift_once();
  }

  v0 = qword_27F826120;

  return MEMORY[0x2822009F8](sub_25603F1C8, v0, 0);
}

uint64_t sub_25603F1C8()
{
  sub_256044E38(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25603F350()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_2560537AC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_25603E5A8(0, 0, v3, &unk_256055EC0, v5);
}

uint64_t sub_25603F454()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2560370C8;

  return sub_256044788();
}

uint64_t sub_25603F5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v5[24] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256C0, &qword_2560559B0);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825968, &qword_2560560A8);
  v5[28] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825970, &qword_2560560B0);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825930, &qword_256056068);
  v5[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825960, &unk_256056098);
  v5[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825978, &qword_2560560B8);
  v5[34] = swift_task_alloc();
  v7 = sub_2560535BC();
  v5[35] = v7;
  v5[36] = *(v7 - 8);
  v5[37] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825980, &qword_2560560C0);
  v5[38] = v8;
  v5[39] = *(v8 - 8);
  v5[40] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258F0, &unk_256055F60);
  v5[41] = v9;
  v5[42] = *(v9 - 8);
  v5[43] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258E0, &qword_256055F58);
  v5[44] = v10;
  v5[45] = *(v10 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v11 = sub_2560534BC();
  v5[48] = v11;
  v5[49] = *(v11 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v12 = sub_2560534EC();
  v5[52] = v12;
  v5[53] = *(v12 - 8);
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v5[56] = swift_task_alloc();
  v13 = sub_25605347C();
  v5[57] = v13;
  v5[58] = *(v13 - 8);
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  if (qword_27F825660 != -1)
  {
    swift_once();
  }

  v14 = qword_27F826120;
  v5[62] = qword_27F826120;

  return MEMORY[0x2822009F8](sub_25603FB48, v14, 0);
}

uint64_t sub_25603FB48(uint64_t a1)
{
  v42 = v1;
  v2 = *(v1 + 184);
  v3 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source;
  *(v1 + 504) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source;
  if (*(v2 + v3))
  {

    v4 = *(v1 + 8);

    return v4(0);
  }

  else
  {
    v6 = sub_25605382C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v7 = qword_27F8260C0;
    *(v1 + 512) = qword_27F8260C0;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = v7;
      v10 = *(v1 + 152);
      v9 = *(v1 + 160);
      v11 = swift_slowAlloc();
      log = swift_slowAlloc();
      p_isa = &log->isa;
      *v11 = 136315394;
      *(v11 + 4) = sub_256032BA0(*(v10 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v10 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &p_isa);
      *(v11 + 12) = 2080;
      v12 = v9;
      v7 = v8;
      v13 = v12;
      v14 = [v12 description];
      v15 = sub_2560536AC();
      v17 = v16;

      v18 = sub_256032BA0(v15, v17, &p_isa);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_256022000, v7, v6, "TranscriberV2: startTranscription for source: %s audioFormat: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](log, -1, -1);
      MEMORY[0x259C57FC0](v11, -1, -1);
    }

    if (qword_27F825628 != -1)
    {
      swift_once();
    }

    v19 = byte_27F8260B9;
    *(v1 + 680) = byte_27F8260B9;
    if (os_log_type_enabled(v7, v19))
    {
      v20 = swift_slowAlloc();
      loga = v7;
      p_isa = swift_slowAlloc();
      v21 = p_isa;
      *v20 = 136315138;
      v22 = [objc_opt_self() currentThread];
      v23 = [v22 description];
      v24 = sub_2560536AC();
      v26 = v25;

      v27 = sub_256032BA0(v24, v26, &p_isa);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_256022000, loga, v19, "thread: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x259C57FC0](v21, -1, -1);
      MEMORY[0x259C57FC0](v20, -1, -1);
    }

    v29 = *(v1 + 176);
    v28 = *(v1 + 184);
    v30 = *(v1 + 168);
    v31 = *(v1 + 152);
    v32 = *(v2 + v3);
    *(v2 + v3) = v31;
    v33 = v31;

    v34 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback;
    *(v1 + 520) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback;
    v35 = (v28 + v34);
    v36 = *v35;
    v37 = v35[1];
    *v35 = v30;
    v35[1] = v29;

    sub_2560502B0(v36, v37);
    v38 = swift_task_alloc();
    *(v1 + 528) = v38;
    *v38 = v1;
    v38[1] = sub_256040034;

    return sub_25604ED4C();
  }
}

uint64_t sub_256040034(uint64_t a1)
{
  *(*v1 + 536) = a1;

  return MEMORY[0x2822009F8](sub_256040134, 0, 0);
}

uint64_t sub_256040134()
{
  v1 = v0[67];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[57];
  v5 = v0[58];
  v6 = v0[56];
  v7 = v0[19];
  v8 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v0[68] = v9;
  v0[69] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v6, v7 + v8, v4);
  (*(v5 + 56))(v6, 0, 1, v4);
  sub_25603B53C(v6, v1, v3);

  sub_256033238(v6, &qword_27F8256A8, &qword_2560559A0);

  return MEMORY[0x2822009F8](sub_25604026C, v2, 0);
}

uint64_t sub_25604026C()
{
  v71 = v0;
  v1 = *(*(v0 + 184) + *(v0 + 504));
  v2 = *(v0 + 152);
  if (v1)
  {
    *(v0 + 560) = type metadata accessor for AXLiveCaptionSourceInfo(0);
    v3 = v1;
    v4 = sub_25605384C();

    if (v4)
    {
      v5 = *(*(v0 + 184) + *(v0 + 504));
      if (v5)
      {
        v6 = *(v0 + 480);
        v7 = *(v0 + 456);
        v8 = *(v0 + 464);
        (*(v0 + 544))(v6, *(v0 + 488), v7);
        v9 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
        swift_beginAccess();
        v10 = *(v8 + 40);
        v11 = v5;
        v10(&v5[v9], v6, v7);
        swift_endAccess();
      }

      v12 = *(v0 + 544);
      v13 = *(v0 + 512);
      v14 = *(v0 + 488);
      v15 = *(v0 + 472);
      v16 = *(v0 + 456);
      v17 = sub_25605382C();
      v12(v15, v14, v16);
      if (os_log_type_enabled(v13, v17))
      {
        log = *(v0 + 512);
        v19 = *(v0 + 464);
        v18 = *(v0 + 472);
        v20 = *(v0 + 456);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v70 = v22;
        *v21 = 136315138;
        sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
        v23 = sub_25605397C();
        v25 = v24;
        v26 = *(v19 + 8);
        v26(v18, v20);
        v27 = sub_256032BA0(v23, v25, &v70);

        *(v21 + 4) = v27;
        _os_log_impl(&dword_256022000, log, v17, "TranscriberV2: Corrected Locale: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x259C57FC0](v22, -1, -1);
        MEMORY[0x259C57FC0](v21, -1, -1);
      }

      else
      {
        v26 = *(*(v0 + 464) + 8);
        v26(*(v0 + 472), *(v0 + 456));
      }

      *(v0 + 568) = v26;
      v67 = *(v0 + 544);
      v62 = *(v0 + 480);
      v63 = *(v0 + 456);
      v64 = *(v0 + 488);
      v37 = *(v0 + 440);
      v38 = *(v0 + 424);
      v65 = *(v0 + 432);
      v66 = *(v0 + 416);
      v39 = *(v0 + 400);
      v40 = *(v0 + 408);
      v42 = *(v0 + 384);
      v41 = *(v0 + 392);
      loga = *(v0 + 184);
      sub_2560534DC();
      (*(v41 + 104))(v39, *MEMORY[0x277CDC9B8], v42);
      v43 = sub_2560534CC();
      sub_25604D8F0(v40, v39);
      (*(v41 + 8))(v40, v42);
      v43(v0 + 16, 0);
      sub_25605353C();
      v67(v62, v64, v63);
      (*(v38 + 16))(v65, v37, v66);
      v44 = sub_25605351C();
      *(v0 + 576) = v44;
      v45 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber;
      *(v0 + 584) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber;
      *(&loga->isa + v45) = v44;

      v46 = swift_task_alloc();
      *(v0 + 592) = v46;
      *v46 = v0;
      v46[1] = sub_256040948;
      v47 = *(v0 + 488);

      return sub_256046DA4(v47);
    }
  }

  else
  {
  }

  if (os_log_type_enabled(*(v0 + 512), *(v0 + 680)))
  {
    v28 = *(v0 + 504);
    v29 = *(v0 + 184);
    v30 = *(v0 + 152);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v70 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_256032BA0(*(v30 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v30 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v70);
    *(v31 + 12) = 2080;
    v33 = *(v29 + v28);
    if (v33)
    {
      v34 = (v33 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName);
      v36 = *v34;
      v35 = v34[1];
    }

    else
    {
      v35 = 0xE300000000000000;
      v36 = 7104878;
    }

    v49 = *(v0 + 680);
    v50 = *(v0 + 512);
    v51 = *(v0 + 488);
    v52 = *(v0 + 456);
    v53 = *(v0 + 464);
    v54 = sub_256032BA0(v36, v35, &v70);

    *(v31 + 14) = v54;
    _os_log_impl(&dword_256022000, v50, v49, "TranscriberV2 startTranscription failed after locale check, for source: %s new source: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v32, -1, -1);
    MEMORY[0x259C57FC0](v31, -1, -1);
    (*(v53 + 8))(v51, v52);
  }

  else
  {
    (*(*(v0 + 464) + 8))(*(v0 + 488), *(v0 + 456));
  }

  v55 = *(v0 + 504);
  v56 = *(v0 + 184);
  v57 = (v56 + *(v0 + 520));
  *(v56 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber) = 0;

  v58 = *(v56 + v55);
  *(v56 + v55) = 0;

  v59 = *v57;
  v60 = v57[1];
  *v57 = 0;
  v57[1] = 0;
  sub_2560502B0(v59, v60);

  v61 = *(v0 + 8);

  return v61(0);
}

uint64_t sub_256040948(char a1)
{
  v2 = *(*v1 + 496);
  *(*v1 + 681) = a1;

  return MEMORY[0x2822009F8](sub_256040A60, v2, 0);
}

uint64_t sub_256040A60(uint64_t a1)
{
  v160 = v1;
  if ((*(v1 + 681) & 1) == 0)
  {
    v26 = *(v1 + 512);
    v27 = sub_25605381C();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v1 + 568);
    if (v28)
    {
      v30 = *(v1 + 512);
      v155 = *(v1 + 488);
      oslog = *(v1 + 456);
      v148 = *(v1 + 440);
      v32 = *(v1 + 416);
      v31 = *(v1 + 424);
      v33 = *(v1 + 152);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v159 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_256032BA0(*(v33 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v33 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v159);
      _os_log_impl(&dword_256022000, v30, v27, "TranscriberV2: startTranscription failed, no assets, for source: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x259C57FC0](v35, -1, -1);
      MEMORY[0x259C57FC0](v34, -1, -1);

      (*(v31 + 8))(v148, v32);
      v36 = oslog;
      v37 = v155;
    }

    else
    {
      v47 = *(v1 + 488);
      v48 = *(v1 + 456);
      v49 = *(v1 + 440);
      v50 = *(v1 + 416);
      v51 = *(v1 + 424);

      (*(v51 + 8))(v49, v50);
      v37 = v47;
      v36 = v48;
    }

    v29(v37, v36);
    goto LABEL_20;
  }

  v2 = *(*(v1 + 184) + *(v1 + 504));
  if (!v2 || (v3 = *(v1 + 152), v4 = v2, v5 = sub_25605384C(), v4, v3, (v5 & 1) == 0))
  {
    if (os_log_type_enabled(*(v1 + 512), *(v1 + 680)))
    {
      v38 = *(v1 + 504);
      v39 = *(v1 + 184);
      v40 = *(v1 + 152);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v159 = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_256032BA0(*(v40 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v40 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v159);
      *(v41 + 12) = 2080;
      v43 = *(v39 + v38);
      if (v43)
      {
        v44 = (v43 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName);
        v46 = *v44;
        v45 = v44[1];
      }

      else
      {
        v45 = 0xE300000000000000;
        v46 = 7104878;
      }

      v156 = *(v1 + 568);
      v58 = *(v1 + 680);
      v59 = *(v1 + 512);
      v150 = *(v1 + 456);
      osloga = *(v1 + 488);
      v60 = *(v1 + 440);
      v61 = *(v1 + 416);
      v62 = *(v1 + 424);
      v63 = sub_256032BA0(v46, v45, &v159);

      *(v41 + 14) = v63;
      _os_log_impl(&dword_256022000, v59, v58, "TranscriberV2: startTranscription failed after assets check, for source: %s, new source: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v42, -1, -1);
      MEMORY[0x259C57FC0](v41, -1, -1);

      (*(v62 + 8))(v60, v61);
      v156(osloga, v150);
    }

    else
    {
      v52 = *(v1 + 568);
      v53 = *(v1 + 488);
      v54 = *(v1 + 456);
      v55 = *(v1 + 440);
      v56 = *(v1 + 416);
      v57 = *(v1 + 424);

      (*(v57 + 8))(v55, v56);
      v52(v53, v54);
    }

LABEL_20:
    v64 = *(v1 + 504);
    v65 = *(v1 + 184);
    v66 = (v65 + *(v1 + 520));
    *(v65 + *(v1 + 584)) = 0;

    v67 = *(v65 + v64);
    *(v65 + v64) = 0;

    v68 = *v66;
    v69 = v66[1];
    *v66 = 0;
    v66[1] = 0;
    sub_2560502B0(v68, v69);

    v70 = *(v1 + 8);

    return v70(0);
  }

  v6 = *(v1 + 184);
  v7 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_bestAudioFormat;
  *(v1 + 600) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_bestAudioFormat;
  if (*(v6 + v7))
  {
    v8 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter;
    v9 = *(v6 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter);
    *(v6 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter) = 0;

    v10 = *(v6 + v7);
    if (v10)
    {
      v11 = *(v1 + 160);
      v12 = v10;
      v13 = [v12 isEqual_];
      v14 = *(v1 + 512);
      if ((v13 & 1) == 0)
      {
        v125 = [objc_allocWithZone(MEMORY[0x277CB8380]) initFromFormat:*(v1 + 160) toFormat:v12];
        v126 = *(v6 + v8);
        *(v6 + v8) = v125;

        v127 = sub_25605382C();
        if (os_log_type_enabled(v14, v127))
        {
          v158 = *(v1 + 512);
          v128 = *(v1 + 160);
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v159 = v130;
          *v129 = 136315394;
          v131 = v128;
          v132 = [v131 description];
          v133 = sub_2560536AC();
          v135 = v134;

          v136 = sub_256032BA0(v133, v135, &v159);

          *(v129 + 4) = v136;
          *(v129 + 12) = 2080;
          v12 = v12;
          v137 = [v12 description];
          v138 = sub_2560536AC();
          v140 = v139;

          v141 = sub_256032BA0(v138, v140, &v159);

          *(v129 + 14) = v141;
          _os_log_impl(&dword_256022000, v158, v127, "TranscriberV2: audio converter from: %s to %s", v129, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C57FC0](v130, -1, -1);
          MEMORY[0x259C57FC0](v129, -1, -1);
        }

        else
        {
        }

        goto LABEL_29;
      }

      v15 = sub_25605382C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v1 + 512);
        v17 = *(v1 + 160);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v159 = v19;
        *v18 = 136315138;
        v20 = v17;
        v21 = [v20 description];
        v22 = sub_2560536AC();
        v24 = v23;

        v25 = sub_256032BA0(v22, v24, &v159);

        *(v18 + 4) = v25;
        _os_log_impl(&dword_256022000, v16, v15, "TranscriberV2: No conversion needed, audioFormat: %s)", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x259C57FC0](v19, -1, -1);
        MEMORY[0x259C57FC0](v18, -1, -1);
      }
    }

    else
    {
      v76 = *(v1 + 512);
      v77 = *(v1 + 160);
      v78 = sub_25605382C();
      if (os_log_type_enabled(v76, v78))
      {
        v79 = *(v1 + 512);
        v80 = *(v1 + 160);
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v159 = v82;
        *v81 = 136315138;
        v83 = v80;
        v84 = [v83 description];
        v85 = sub_2560536AC();
        v87 = v86;

        v88 = sub_256032BA0(v85, v87, &v159);

        *(v81 + 4) = v88;
        _os_log_impl(&dword_256022000, v79, v78, "TranscriberV2: No bestAudioFormat, audioFormat: %s)", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x259C57FC0](v82, -1, -1);
        MEMORY[0x259C57FC0](v81, -1, -1);
      }
    }

    v12 = *(v1 + 160);
LABEL_29:
    *(v1 + 632) = v12;
    v90 = *(v1 + 312);
    v89 = *(v1 + 320);
    v91 = *(v1 + 304);
    sub_2560535DC();
    (*(v90 + 104))(v89, *MEMORY[0x277D85778], v91);
    sub_2560537BC();
    (*(v90 + 8))(v89, v91);
    sub_25605359C();
    if (qword_27F825658 != -1)
    {
      swift_once();
    }

    v143 = *(v1 + 576);
    v157 = *(v1 + 680);
    v92 = *(v1 + 368);
    v93 = *(v1 + 376);
    v95 = *(v1 + 352);
    v94 = *(v1 + 360);
    v96 = *(v1 + 336);
    v151 = *(v1 + 344);
    oslogb = *(v1 + 512);
    v97 = *(v1 + 288);
    v98 = *(v1 + 296);
    v99 = *(v1 + 280);
    v144 = *(v1 + 272);
    v146 = *(v1 + 264);
    v147 = *(v1 + 256);
    v149 = *(v1 + 328);
    v100 = *(v1 + 184);
    v101 = __swift_project_value_buffer(v99, qword_27F825848);
    (*(v97 + 16))(v98, v101, v99);
    v145 = *(v94 + 16);
    v145(v92, v93, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825910, qword_256055FF8);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_256055E40;
    v103 = sub_2560506F4(&qword_27F825918, 255, MEMORY[0x277CDC9F0], MEMORY[0x277CDC9E8]);
    *(v102 + 32) = v143;
    *(v102 + 40) = v103;
    v104 = sub_25605358C();
    (*(*(v104 - 8) + 56))(v144, 1, 1, v104);
    sub_2560535FC();
    swift_allocObject();

    sub_2560535EC();
    v142 = sub_25605062C();
    *(v100 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_speechAnalyzer) = sub_25605357C();

    v145(v146, v93, v95);
    (*(v94 + 56))(v146, 0, 1, v95);
    v105 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStream;
    swift_beginAccess();
    sub_25605058C(v146, v100 + v105, &qword_27F825960, &unk_256056098);
    swift_endAccess();
    (*(v96 + 16))(v147, v151, v149);
    (*(v96 + 56))(v147, 0, 1, v149);
    v106 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStreamBuilder;
    swift_beginAccess();
    sub_25605058C(v147, v100 + v106, &qword_27F825930, &qword_256056068);
    swift_endAccess();
    if (os_log_type_enabled(oslogb, v157))
    {
      v107 = *(v1 + 680);
      v108 = *(v1 + 512);
      v109 = *(v1 + 152);
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v159 = v111;
      *v110 = 136315394;
      *(v110 + 4) = sub_256032BA0(*(v109 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v109 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v159);
      *(v110 + 12) = 2080;
      v112 = [objc_opt_self() currentThread];
      v113 = [v112 description];
      v114 = sub_2560536AC();
      v116 = v115;

      v117 = sub_256032BA0(v114, v116, &v159);

      *(v110 + 14) = v117;
      _os_log_impl(&dword_256022000, v108, v107, "TranscriberV2: startTranscription Started Source: %s thread: %s", v110, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v111, -1, -1);
      MEMORY[0x259C57FC0](v110, -1, -1);
    }

    sub_25605352C();
    *(v1 + 640) = swift_getOpaqueTypeConformance2();
    sub_2560537EC();
    v119 = sub_2560506F4(&qword_27F8258F8, v118, type metadata accessor for AXLCTranscriberActor, &unk_256055FC8);
    *(v1 + 648) = v119;
    *(v1 + 656) = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName;
    *(v1 + 664) = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType;
    v120 = *(v1 + 496);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v122 = swift_task_alloc();
    *(v1 + 672) = v122;
    *v122 = v1;
    v122[1] = sub_2560429B0;
    v123 = *(v1 + 232);
    v124 = *(v1 + 208);

    return MEMORY[0x282200310](v124, v120, v119, v1 + 144, v123, AssociatedConformanceWitness);
  }

  v72 = *(v1 + 576);
  sub_25605359C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825910, qword_256055FF8);
  v73 = swift_allocObject();
  *(v1 + 608) = v73;
  *(v73 + 16) = xmmword_256055E40;
  v74 = sub_2560506F4(&qword_27F825918, 255, MEMORY[0x277CDC9F0], MEMORY[0x277CDC9E8]);
  *(v73 + 32) = v72;
  *(v73 + 40) = v74;

  v75 = swift_task_alloc();
  *(v1 + 616) = v75;
  *v75 = v1;
  v75[1] = sub_256041AA8;

  return MEMORY[0x28212BBE0](v73);
}

uint64_t sub_256041AA8(uint64_t a1)
{
  v2 = *(*v1 + 496);
  *(*v1 + 624) = a1;

  return MEMORY[0x2822009F8](sub_256041BDC, v2, 0);
}

uint64_t sub_256041BDC()
{
  v139 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 504);
  v3 = *(v0 + 184);
  v4 = *(v3 + v1);
  *(v3 + v1) = *(v0 + 624);

  v5 = *(v3 + v2);
  if (v5)
  {
    v6 = *(v0 + 152);
    v7 = v5;
    v8 = sub_25605384C();

    if (v8)
    {
      v9 = *(v0 + 600);
      v10 = *(v0 + 184);
      v11 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter;
      v12 = *(v10 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter);
      *(v10 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter) = 0;

      v13 = *(v10 + v9);
      if (v13)
      {
        v14 = *(v0 + 160);
        v15 = v13;
        v16 = [v15 isEqual_];
        v17 = *(v0 + 512);
        if ((v16 & 1) == 0)
        {
          v107 = [objc_allocWithZone(MEMORY[0x277CB8380]) initFromFormat:*(v0 + 160) toFormat:v15];
          v108 = *(v10 + v11);
          *(v10 + v11) = v107;

          v109 = sub_25605382C();
          if (os_log_type_enabled(v17, v109))
          {
            v137 = *(v0 + 512);
            v110 = *(v0 + 160);
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v138 = v112;
            *v111 = 136315394;
            v113 = v110;
            v114 = [v113 description];
            v115 = sub_2560536AC();
            v117 = v116;

            v118 = sub_256032BA0(v115, v117, &v138);

            *(v111 + 4) = v118;
            *(v111 + 12) = 2080;
            v15 = v15;
            v119 = [v15 description];
            v120 = sub_2560536AC();
            v122 = v121;

            v123 = sub_256032BA0(v120, v122, &v138);

            *(v111 + 14) = v123;
            _os_log_impl(&dword_256022000, v137, v109, "TranscriberV2: audio converter from: %s to %s", v111, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x259C57FC0](v112, -1, -1);
            MEMORY[0x259C57FC0](v111, -1, -1);
          }

          else
          {
          }

          goto LABEL_20;
        }

        v18 = sub_25605382C();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = *(v0 + 512);
          v20 = *(v0 + 160);
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v138 = v22;
          *v21 = 136315138;
          v23 = v20;
          v24 = [v23 description];
          v25 = sub_2560536AC();
          v27 = v26;

          v28 = sub_256032BA0(v25, v27, &v138);

          *(v21 + 4) = v28;
          _os_log_impl(&dword_256022000, v19, v18, "TranscriberV2: No conversion needed, audioFormat: %s)", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x259C57FC0](v22, -1, -1);
          MEMORY[0x259C57FC0](v21, -1, -1);
        }
      }

      else
      {
        v58 = *(v0 + 512);
        v59 = *(v0 + 160);
        v60 = sub_25605382C();
        if (os_log_type_enabled(v58, v60))
        {
          v61 = *(v0 + 512);
          v62 = *(v0 + 160);
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v138 = v64;
          *v63 = 136315138;
          v65 = v62;
          v66 = [v65 description];
          v67 = sub_2560536AC();
          v69 = v68;

          v70 = sub_256032BA0(v67, v69, &v138);

          *(v63 + 4) = v70;
          _os_log_impl(&dword_256022000, v61, v60, "TranscriberV2: No bestAudioFormat, audioFormat: %s)", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v64);
          MEMORY[0x259C57FC0](v64, -1, -1);
          MEMORY[0x259C57FC0](v63, -1, -1);
        }
      }

      v15 = *(v0 + 160);
LABEL_20:
      *(v0 + 632) = v15;
      v72 = *(v0 + 312);
      v71 = *(v0 + 320);
      v73 = *(v0 + 304);
      sub_2560535DC();
      (*(v72 + 104))(v71, *MEMORY[0x277D85778], v73);
      sub_2560537BC();
      (*(v72 + 8))(v71, v73);
      sub_25605359C();
      if (qword_27F825658 != -1)
      {
        swift_once();
      }

      v125 = *(v0 + 576);
      v136 = *(v0 + 680);
      v74 = *(v0 + 368);
      v75 = *(v0 + 376);
      v77 = *(v0 + 352);
      v76 = *(v0 + 360);
      v78 = *(v0 + 336);
      v132 = *(v0 + 344);
      osloga = *(v0 + 512);
      v79 = *(v0 + 288);
      v80 = *(v0 + 296);
      v81 = *(v0 + 280);
      v126 = *(v0 + 272);
      v128 = *(v0 + 264);
      v129 = *(v0 + 256);
      v130 = *(v0 + 328);
      v82 = *(v0 + 184);
      v83 = __swift_project_value_buffer(v81, qword_27F825848);
      (*(v79 + 16))(v80, v83, v81);
      v127 = *(v76 + 16);
      v127(v74, v75, v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825910, qword_256055FF8);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_256055E40;
      v85 = sub_2560506F4(&qword_27F825918, 255, MEMORY[0x277CDC9F0], MEMORY[0x277CDC9E8]);
      *(v84 + 32) = v125;
      *(v84 + 40) = v85;
      v86 = sub_25605358C();
      (*(*(v86 - 8) + 56))(v126, 1, 1, v86);
      sub_2560535FC();
      swift_allocObject();

      sub_2560535EC();
      v124 = sub_25605062C();
      *(v82 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_speechAnalyzer) = sub_25605357C();

      v127(v128, v75, v77);
      (*(v76 + 56))(v128, 0, 1, v77);
      v87 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStream;
      swift_beginAccess();
      sub_25605058C(v128, v82 + v87, &qword_27F825960, &unk_256056098);
      swift_endAccess();
      (*(v78 + 16))(v129, v132, v130);
      (*(v78 + 56))(v129, 0, 1, v130);
      v88 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStreamBuilder;
      swift_beginAccess();
      sub_25605058C(v129, v82 + v88, &qword_27F825930, &qword_256056068);
      swift_endAccess();
      if (os_log_type_enabled(osloga, v136))
      {
        v89 = *(v0 + 680);
        v90 = *(v0 + 512);
        v91 = *(v0 + 152);
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v138 = v93;
        *v92 = 136315394;
        *(v92 + 4) = sub_256032BA0(*(v91 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v91 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v138);
        *(v92 + 12) = 2080;
        v94 = [objc_opt_self() currentThread];
        v95 = [v94 description];
        v96 = sub_2560536AC();
        v98 = v97;

        v99 = sub_256032BA0(v96, v98, &v138);

        *(v92 + 14) = v99;
        _os_log_impl(&dword_256022000, v90, v89, "TranscriberV2: startTranscription Started Source: %s thread: %s", v92, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C57FC0](v93, -1, -1);
        MEMORY[0x259C57FC0](v92, -1, -1);
      }

      sub_25605352C();
      *(v0 + 640) = swift_getOpaqueTypeConformance2();
      sub_2560537EC();
      v101 = sub_2560506F4(&qword_27F8258F8, v100, type metadata accessor for AXLCTranscriberActor, &unk_256055FC8);
      *(v0 + 648) = v101;
      *(v0 + 656) = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName;
      *(v0 + 664) = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType;
      v102 = *(v0 + 496);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v104 = swift_task_alloc();
      *(v0 + 672) = v104;
      *v104 = v0;
      v104[1] = sub_2560429B0;
      v105 = *(v0 + 232);
      v106 = *(v0 + 208);

      return MEMORY[0x282200310](v106, v102, v101, v0 + 144, v105, AssociatedConformanceWitness);
    }
  }

  if (os_log_type_enabled(*(v0 + 512), *(v0 + 680)))
  {
    v29 = *(v0 + 504);
    v30 = *(v0 + 184);
    v31 = *(v0 + 152);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v138 = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_256032BA0(*(v31 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v31 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v138);
    *(v32 + 12) = 2080;
    v34 = *(v30 + v29);
    if (v34)
    {
      v35 = (v34 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName);
      v37 = *v35;
      v36 = v35[1];
    }

    else
    {
      v36 = 0xE300000000000000;
      v37 = 7104878;
    }

    v135 = *(v0 + 568);
    v44 = *(v0 + 680);
    v45 = *(v0 + 512);
    v131 = *(v0 + 456);
    oslog = *(v0 + 488);
    v46 = *(v0 + 440);
    v47 = *(v0 + 416);
    v48 = *(v0 + 424);
    v49 = sub_256032BA0(v37, v36, &v138);

    *(v32 + 14) = v49;
    _os_log_impl(&dword_256022000, v45, v44, "TranscriberV2: startTranscription failed after best audio format check, for source: %s, new source: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v33, -1, -1);
    MEMORY[0x259C57FC0](v32, -1, -1);

    (*(v48 + 8))(v46, v47);
    v135(oslog, v131);
  }

  else
  {
    v38 = *(v0 + 568);
    v39 = *(v0 + 488);
    v40 = *(v0 + 456);
    v41 = *(v0 + 440);
    v42 = *(v0 + 416);
    v43 = *(v0 + 424);

    (*(v43 + 8))(v41, v42);
    v38(v39, v40);
  }

  v50 = *(v0 + 504);
  v51 = *(v0 + 184);
  v52 = (v51 + *(v0 + 520));
  *(v51 + *(v0 + 584)) = 0;

  v53 = *(v51 + v50);
  *(v51 + v50) = 0;

  v54 = *v52;
  v55 = v52[1];
  *v52 = 0;
  v52[1] = 0;
  sub_2560502B0(v54, v55);

  v56 = *(v0 + 8);

  return v56(0);
}

uint64_t sub_2560429B0()
{
  v2 = *v1;

  v3 = *(v2 + 496);
  if (v0)
  {
    v4 = sub_256043204;
  }

  else
  {
    v4 = sub_256042AC4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_256042AC4()
{
  v61 = v0;
  v1 = *(v0 + 208);
  v2 = sub_25605350C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    if (qword_27F825620 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 512);
    v5 = byte_27F8260B8;
    if (os_log_type_enabled(v4, byte_27F8260B8))
    {
      v59 = *(v0 + 632);
      v57 = *(v0 + 488);
      v58 = *(v0 + 568);
      v56 = *(v0 + 456);
      v53 = *(v0 + 424);
      v54 = *(v0 + 416);
      v55 = *(v0 + 440);
      v50 = *(v0 + 360);
      v51 = *(v0 + 352);
      v52 = *(v0 + 376);
      v49 = *(v0 + 344);
      v6 = *(v0 + 152) + *(v0 + 656);
      v7 = *(v0 + 336);
      v48 = *(v0 + 328);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v60 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_256032BA0(*v6, *(v6 + 8), &v60);
      *(v8 + 12) = 2080;
      v10 = [objc_opt_self() currentThread];
      v11 = [v10 description];
      v12 = sub_2560536AC();
      v14 = v13;

      v15 = sub_256032BA0(v12, v14, &v60);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_256022000, v4, v5, "TranscriberV2: startTranscription Finished Source: %s thread: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v9, -1, -1);
      MEMORY[0x259C57FC0](v8, -1, -1);

      (*(v7 + 8))(v49, v48);
      (*(v50 + 8))(v52, v51);
      (*(v53 + 8))(v55, v54);
    }

    else
    {
      v59 = *(v0 + 632);
      v57 = *(v0 + 488);
      v58 = *(v0 + 568);
      v56 = *(v0 + 456);
      v37 = *(v0 + 440);
      v39 = *(v0 + 416);
      v38 = *(v0 + 424);
      v40 = *(v0 + 376);
      v42 = *(v0 + 352);
      v41 = *(v0 + 360);
      v44 = *(v0 + 336);
      v43 = *(v0 + 344);
      v45 = *(v0 + 328);

      (*(v44 + 8))(v43, v45);
      (*(v41 + 8))(v40, v42);
      (*(v38 + 8))(v37, v39);
    }

    v58(v57, v56);

    v46 = *(v0 + 8);

    return v46(1);
  }

  else
  {
    v16 = *(v0 + 200);
    v17 = *(v0 + 152);
    (*(v3 + 32))(v16, v1, v2);
    (*(v3 + 56))(v16, 0, 1, v2);
    v18 = objc_allocWithZone(type metadata accessor for AXLiveCaption(0));
    v19 = AXLiveCaption.init(source:transcriptionResult:)(v17, v16);
    if (qword_27F825620 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 512);
    v21 = byte_27F8260B8;
    if (os_log_type_enabled(v20, byte_27F8260B8))
    {
      v22 = *(v0 + 664);
      v23 = *(v0 + 152);
      v24 = &v23[*(v0 + 656)];
      v25 = v23;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v60 = v27;
      *v26 = 136315650;
      *(v26 + 4) = sub_256032BA0(*v24, *(v24 + 1), &v60);
      *(v26 + 12) = 2048;
      *(v26 + 14) = *&v23[v22];

      *(v26 + 22) = 2080;
      v28 = *&v19[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption];
      v29 = *&v19[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption + 8];

      v30 = sub_256032BA0(v28, v29, &v60);

      *(v26 + 24) = v30;
      _os_log_impl(&dword_256022000, v20, v21, "TranscriberV2: Source: %s, sourceType: %ld transcription: %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v27, -1, -1);
      MEMORY[0x259C57FC0](v26, -1, -1);
    }

    (*(v0 + 168))(v19);

    v31 = *(v0 + 648);
    v32 = *(v0 + 496);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v34 = swift_task_alloc();
    *(v0 + 672) = v34;
    *v34 = v0;
    v34[1] = sub_2560429B0;
    v35 = *(v0 + 232);
    v36 = *(v0 + 208);

    return MEMORY[0x282200310](v36, v32, v31, v0 + 144, v35, AssociatedConformanceWitness);
  }
}

uint64_t sub_256043204()
{
  v45 = v0;
  v1 = v0[64];
  (*(v0[30] + 8))(v0[31], v0[29]);
  v2 = v0[18];
  v3 = sub_25605381C();
  if (os_log_type_enabled(v1, v3))
  {
    v4 = v0[64];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v2;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_256022000, v4, v3, "TranscriberV2: transcriber error: %@", v5, 0xCu);
    sub_256033238(v6, &qword_27F825728, &qword_256055BF0);
    MEMORY[0x259C57FC0](v6, -1, -1);
    MEMORY[0x259C57FC0](v5, -1, -1);
  }

  if (qword_27F825620 != -1)
  {
    swift_once();
  }

  v9 = v0[64];
  v10 = byte_27F8260B8;
  if (os_log_type_enabled(v9, byte_27F8260B8))
  {
    v43 = v0[79];
    v41 = v0[61];
    v42 = v0[71];
    v40 = v0[57];
    v37 = v0[53];
    v38 = v0[52];
    v39 = v0[55];
    v34 = v0[45];
    v35 = v0[44];
    v36 = v0[47];
    v33 = v0[43];
    v11 = v0[19] + v0[82];
    v12 = v0[42];
    v32 = v0[41];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v44 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_256032BA0(*v11, *(v11 + 8), &v44);
    *(v13 + 12) = 2080;
    v15 = [objc_opt_self() currentThread];
    v16 = [v15 description];
    v17 = sub_2560536AC();
    v19 = v18;

    v20 = sub_256032BA0(v17, v19, &v44);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_256022000, v9, v10, "TranscriberV2: startTranscription Finished Source: %s thread: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v14, -1, -1);
    MEMORY[0x259C57FC0](v13, -1, -1);

    (*(v12 + 8))(v33, v32);
    (*(v34 + 8))(v36, v35);
    (*(v37 + 8))(v39, v38);
  }

  else
  {
    v43 = v0[79];
    v41 = v0[61];
    v42 = v0[71];
    v40 = v0[57];
    v21 = v0[55];
    v23 = v0[52];
    v22 = v0[53];
    v24 = v0[47];
    v26 = v0[44];
    v25 = v0[45];
    v28 = v0[42];
    v27 = v0[43];
    v29 = v0[41];

    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
  }

  v42(v41, v40);

  v30 = v0[1];

  return v30(1);
}

uint64_t sub_256043700(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825960, &unk_256056098);
  v2[13] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258F0, &unk_256055F60);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825930, &qword_256056068);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  if (qword_27F825660 != -1)
  {
    swift_once();
  }

  v4 = qword_27F826120;
  v2[19] = qword_27F826120;

  return MEMORY[0x2822009F8](sub_256043880, v4, 0);
}

uint64_t sub_256043880()
{
  v63 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source;
  *(v0 + 160) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source;
  v3 = *(v1 + v2);
  if (v3 && (v4 = *(v0 + 88), type metadata accessor for AXLiveCaptionSourceInfo(0), v5 = v3, v6 = v4, v7 = sub_25605384C(), v6, v5, (v7 & 1) != 0))
  {
    v8 = sub_25605382C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v9 = qword_27F8260C0;
    *(v0 + 168) = qword_27F8260C0;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = *(v0 + 88);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v62 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_256032BA0(*(v10 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v10 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v62);
      _os_log_impl(&dword_256022000, v9, v8, "TranscriberV2: stopTranscription for source: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x259C57FC0](v12, -1, -1);
      MEMORY[0x259C57FC0](v11, -1, -1);
    }

    if (qword_27F825628 != -1)
    {
      swift_once();
    }

    v13 = byte_27F8260B9;
    *(v0 + 216) = byte_27F8260B9;
    if (os_log_type_enabled(v9, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v62 = v15;
      *v14 = 136315138;
      v16 = [objc_opt_self() currentThread];
      v17 = [v16 description];
      v18 = sub_2560536AC();
      v20 = v19;

      v21 = sub_256032BA0(v18, v20, &v62);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_256022000, v9, v13, "stopTranscription thread: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x259C57FC0](v15, -1, -1);
      MEMORY[0x259C57FC0](v14, -1, -1);
    }

    v22 = *(v0 + 144);
    v23 = *(v0 + 112);
    v24 = *(v0 + 120);
    v25 = *(v0 + 96);
    v26 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStreamBuilder;
    *(v0 + 176) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStreamBuilder;
    swift_beginAccess();
    sub_2560331D0(v25 + v26, v22, &qword_27F825930, &qword_256056068);
    v27 = (*(v24 + 48))(v22, 1, v23);
    v28 = *(v0 + 144);
    if (v27)
    {
      sub_256033238(*(v0 + 144), &qword_27F825930, &qword_256056068);
    }

    else
    {
      v33 = *(v0 + 120);
      v32 = *(v0 + 128);
      v34 = *(v0 + 112);
      (*(v33 + 16))(v32, *(v0 + 144), v34);
      sub_256033238(v28, &qword_27F825930, &qword_256056068);
      sub_2560537DC();
      (*(v33 + 8))(v32, v34);
    }

    v35 = *(v0 + 96);
    v36 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_speechAnalyzer;
    *(v0 + 184) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_speechAnalyzer;
    v37 = *(v35 + v36);
    *(v0 + 192) = v37;
    if (v37)
    {

      v38 = swift_task_alloc();
      *(v0 + 200) = v38;
      *v38 = v0;
      v38[1] = sub_256043F9C;

      return MEMORY[0x28212BBF0]();
    }

    v39 = *(v0 + 216);
    v40 = *(v0 + 168);
    if (os_log_type_enabled(v40, *(v0 + 216)))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v62 = v42;
      *v41 = 136315138;
      v43 = [objc_opt_self() currentThread];
      v44 = [v43 description];
      v45 = sub_2560536AC();
      v47 = v46;

      v48 = sub_256032BA0(v45, v47, &v62);

      *(v41 + 4) = v48;
      _os_log_impl(&dword_256022000, v40, v39, "stopTranscription thread: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x259C57FC0](v42, -1, -1);
      MEMORY[0x259C57FC0](v41, -1, -1);
      v36 = *(v0 + 184);
      v35 = *(v0 + 96);
    }

    v49 = *(v0 + 176);
    v50 = *(v0 + 160);
    v51 = *(v0 + 136);
    v52 = *(v0 + 120);
    v61 = *(v0 + 112);
    v53 = *(v0 + 104);
    v54 = *(v35 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter);
    *(v35 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter) = 0;

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258E0, &qword_256055F58);
    v29 = 1;
    (*(*(v55 - 8) + 56))(v53, 1, 1, v55);
    v56 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStream;
    swift_beginAccess();
    sub_25605058C(v53, v35 + v56, &qword_27F825960, &unk_256056098);
    swift_endAccess();
    (*(v52 + 56))(v51, 1, 1, v61);
    swift_beginAccess();
    sub_25605058C(v51, v35 + v49, &qword_27F825930, &qword_256056068);
    swift_endAccess();
    *(v35 + v36) = 0;

    *(v35 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber) = 0;

    v57 = *(v35 + v50);
    *(v35 + v50) = 0;

    v58 = (v35 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback);
    v59 = *(v35 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback);
    v60 = *(v35 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback + 8);
    *v58 = 0;
    v58[1] = 0;
    sub_2560502B0(v59, v60);
  }

  else
  {
    v29 = 0;
  }

  v30 = *(v0 + 8);

  return v30(v29);
}

uint64_t sub_256043F9C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_2560443BC;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_2560440C4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2560440C4()
{
  v29 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v28 = v4;
    *v3 = 136315138;
    v5 = [objc_opt_self() currentThread];
    v6 = [v5 description];
    v7 = sub_2560536AC();
    v9 = v8;

    v10 = sub_256032BA0(v7, v9, &v28);

    *(v3 + 4) = v10;
    _os_log_impl(&dword_256022000, v2, v1, "stopTranscription thread: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x259C57FC0](v4, -1, -1);
    MEMORY[0x259C57FC0](v3, -1, -1);
  }

  v12 = *(v0 + 176);
  v11 = *(v0 + 184);
  v13 = *(v0 + 160);
  v14 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v19 = *(v18 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter);
  *(v18 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter) = 0;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258E0, &qword_256055F58);
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStream;
  swift_beginAccess();
  sub_25605058C(v17, v18 + v21, &qword_27F825960, &unk_256056098);
  swift_endAccess();
  (*(v16 + 56))(v14, 1, 1, v15);
  swift_beginAccess();
  sub_25605058C(v14, v18 + v12, &qword_27F825930, &qword_256056068);
  swift_endAccess();
  *(v18 + v11) = 0;

  *(v18 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber) = 0;

  v22 = *(v18 + v13);
  *(v18 + v13) = 0;

  v23 = (v18 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback);
  v24 = *(v18 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback);
  v25 = *(v18 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback + 8);
  *v23 = 0;
  v23[1] = 0;
  sub_2560502B0(v24, v25);

  v26 = *(v0 + 8);

  return v26(1);
}

uint64_t sub_2560443BC()
{
  v38 = v0;
  v1 = *(v0 + 168);

  v2 = sub_25605381C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 208);
  if (v3)
  {
    v5 = *(v0 + 168);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v4;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_256022000, v5, v2, "TranscriberV2: finalizeAndFinishThroughEndOfInput error: %@", v6, 0xCu);
    sub_256033238(v7, &qword_27F825728, &qword_256055BF0);
    MEMORY[0x259C57FC0](v7, -1, -1);
    MEMORY[0x259C57FC0](v6, -1, -1);
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 168);
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = v13;
    *v12 = 136315138;
    v14 = [objc_opt_self() currentThread];
    v15 = [v14 description];
    v16 = sub_2560536AC();
    v18 = v17;

    v19 = sub_256032BA0(v16, v18, &v37);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_256022000, v11, v10, "stopTranscription thread: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C57FC0](v13, -1, -1);
    MEMORY[0x259C57FC0](v12, -1, -1);
  }

  v21 = *(v0 + 176);
  v20 = *(v0 + 184);
  v22 = *(v0 + 160);
  v23 = *(v0 + 136);
  v24 = *(v0 + 112);
  v25 = *(v0 + 120);
  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  v28 = *(v27 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter);
  *(v27 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter) = 0;

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258E0, &qword_256055F58);
  (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  v30 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStream;
  swift_beginAccess();
  sub_25605058C(v26, v27 + v30, &qword_27F825960, &unk_256056098);
  swift_endAccess();
  (*(v25 + 56))(v23, 1, 1, v24);
  swift_beginAccess();
  sub_25605058C(v23, v27 + v21, &qword_27F825930, &qword_256056068);
  swift_endAccess();
  *(v27 + v20) = 0;

  *(v27 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber) = 0;

  v31 = *(v27 + v22);
  *(v27 + v22) = 0;

  v32 = (v27 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback);
  v33 = *(v27 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback);
  v34 = *(v27 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback + 8);
  *v32 = 0;
  v32[1] = 0;
  sub_2560502B0(v33, v34);

  v35 = *(v0 + 8);

  return v35(1);
}

uint64_t sub_256044788()
{
  v1[8] = v0;
  v2 = sub_25605347C();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825950, &qword_256056088);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  if (qword_27F825660 != -1)
  {
    swift_once();
  }

  v3 = qword_27F826120;

  return MEMORY[0x2822009F8](sub_2560448D8, v3, 0);
}

void sub_2560448D8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadProgresses;
  swift_beginAccess();
  v52 = v3;
  v53 = v2;
  v4 = *(v2 + v3);
  v5 = v4 + 64;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v47 = (63 - v7) >> 6;
  v48 = v4;
  v54 = (v1 + 16);
  v55 = (v1 + 32);
  v50 = (v1 + 8);
  v51 = v1;

  v9 = 0;
  v49 = v5;
  while (1)
  {
    if (!v8)
    {
      if (v47 <= v9 + 1)
      {
        v12 = v9 + 1;
      }

      else
      {
        v12 = v47;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v11 >= v47)
        {
          v43 = v0[14];
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825958, &qword_256056090);
          (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
          v8 = 0;
          v9 = v13;
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v11);
        ++v9;
        if (v8)
        {
          v9 = v11;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    v11 = v9;
LABEL_16:
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[9];
    v17 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v18 = v17 | (v11 << 6);
    (*(v51 + 16))(v15, *(v48 + 48) + *(v51 + 72) * v18, v16);
    v19 = *(*(v48 + 56) + 8 * v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825958, &qword_256056090);
    v21 = *(v20 + 48);
    (*(v51 + 32))(v14, v15, v16);
    *(v14 + v21) = v19;
    (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
LABEL_17:
    v22 = v0[15];
    sub_25603757C(v0[14], v22, &qword_27F825950, &qword_256056088);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825958, &qword_256056090);
    if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
    {
      break;
    }

    v24 = *(v0[15] + *(v23 + 48));
    (*v55)(v0[12]);
    if (v24 == -1.0)
    {
      v25 = v0[11];
      v26 = *v54;
      (*v54)(v25, v0[12], v0[9]);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v53 + v52);
      *(v53 + v52) = 0x8000000000000000;
      v29 = sub_256035B1C(v25);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_38;
      }

      v35 = v30;
      if (v28[3] >= v34)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v45 = v29;
          sub_25604D164();
          v29 = v45;
        }
      }

      else
      {
        v36 = v0[11];
        sub_25604BD60(v34, isUniquelyReferenced_nonNull_native);
        v29 = sub_256035B1C(v36);
        if ((v35 & 1) != (v37 & 1))
        {

          sub_2560539BC();
          return;
        }
      }

      v38 = v0[11];
      v39 = v0[9];
      if (v35)
      {
        *(v28[7] + 8 * v29) = 0;
        v10 = *v50;
        (*v50)(v38, v39);
      }

      else
      {
        v28[(v29 >> 6) + 8] |= 1 << v29;
        v40 = v29;
        v26(v28[6] + *(v51 + 72) * v29, v38, v39);
        *(v28[7] + 8 * v40) = 0;
        v10 = *(v51 + 8);
        v10(v38, v39);
        v41 = v28[2];
        v33 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v33)
        {
          goto LABEL_39;
        }

        v28[2] = v42;
      }

      *(v53 + v52) = v28;

      swift_endAccess();
    }

    else
    {
      v10 = *v50;
    }

    v5 = v49;
    v10(v0[12], v0[9]);
  }

  v46 = v0[1];

  v46();
}

uint64_t sub_256044E38(void *a1, void *a2)
{
  v3 = v2;
  v108 = a1;
  v5 = sub_2560535DC();
  MEMORY[0x28223BE20](v5 - 8);
  v106 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258F0, &unk_256055F60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v105 = &v100 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825930, &qword_256056068);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v103 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v100 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825938, &qword_256056070);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v104 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v107 = &v100 - v18;
  v19 = sub_25605347C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source;
  v24 = *&v3[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source];
  if (!v24)
  {
    v51 = sub_25605382C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v52 = qword_27F8260C0;
    result = os_log_type_enabled(qword_27F8260C0, v51);
    if (result)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v112[0] = v54;
      *v53 = 136315138;
      v55 = a2;
      v56 = [v55 description];
      v57 = sub_2560536AC();
      v59 = v58;

      v60 = sub_256032BA0(v57, v59, v112);

      *(v53 + 4) = v60;
      _os_log_impl(&dword_256022000, v52, v51, "TranscriberV2: addBuffer skip, transcriber hasn't started for source: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x259C57FC0](v54, -1, -1);
      v61 = v53;
      return MEMORY[0x259C57FC0](v61, -1, -1);
    }

    return result;
  }

  v101 = v7;
  v102 = v8;
  type metadata accessor for AXLiveCaptionSourceInfo(0);
  v25 = a2;
  v26 = v24;
  v27 = sub_25605384C();

  if ((v27 & 1) == 0)
  {
    v62 = sub_25605382C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v35 = qword_27F8260C0;
    result = os_log_type_enabled(qword_27F8260C0, v62);
    if (result)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v112[0] = v38;
      *v37 = 136315394;
      v63 = v25;
      v64 = [v63 description];
      v65 = sub_2560536AC();
      v67 = v66;

      v68 = sub_256032BA0(v65, v67, v112);

      *(v37 + 4) = v68;
      *(v37 + 12) = 2080;
      v111 = *&v3[v23];
      v69 = v111;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825940, &qword_256056078);
      v70 = sub_2560536BC();
      v72 = sub_256032BA0(v70, v71, v112);

      *(v37 + 14) = v72;
      v49 = "TranscriberV2: addBuffer skip for source: %s, started for source: %s";
      v50 = v62;
      goto LABEL_21;
    }

    return result;
  }

  v28 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  (*(v20 + 16))(v22, &v25[v28], v19);
  v29 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadProgresses;
  swift_beginAccess();
  v30 = *&v3[v29];
  if (!*(v30 + 16))
  {
    goto LABEL_24;
  }

  v31 = sub_256035B1C(v22);
  if ((v32 & 1) == 0)
  {

LABEL_24:
    (*(v20 + 8))(v22, v19);
    goto LABEL_25;
  }

  v33 = *(*(v30 + 56) + 8 * v31);
  (*(v20 + 8))(v22, v19);

  if (v33 != 1.0)
  {
    v34 = sub_25605382C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v35 = qword_27F8260C0;
    result = os_log_type_enabled(qword_27F8260C0, v34);
    if (result)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v110[0] = v38;
      *v37 = 136315394;
      v39 = v25;
      v40 = [v39 description];
      v41 = sub_2560536AC();
      v43 = v42;

      v44 = sub_256032BA0(v41, v43, v110);

      *(v37 + 4) = v44;
      *(v37 + 12) = 2080;
      v45 = v33 * 100.0;
      if (COERCE__INT64(fabs(v33 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v45 > -9.22337204e18)
      {
        if (v45 < 9.22337204e18)
        {
          v109 = v45;
          v46 = sub_25605397C();
          v48 = sub_256032BA0(v46, v47, v110);

          *(v37 + 14) = v48;
          v49 = "TranscriberV2: addBuffer skip for source: %s, assets are not ready progress: %s";
          v50 = v34;
LABEL_21:
          _os_log_impl(&dword_256022000, v35, v50, v49, v37, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C57FC0](v38, -1, -1);
          v61 = v37;
          return MEMORY[0x259C57FC0](v61, -1, -1);
        }

        goto LABEL_45;
      }

      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    return result;
  }

LABEL_25:
  if (qword_27F825620 != -1)
  {
    swift_once();
  }

  v73 = byte_27F8260B8;
  v74 = v108;
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v75 = qword_27F8260C0;
  if (os_log_type_enabled(qword_27F8260C0, v73))
  {
    v76 = v74;
    v77 = v3;
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v110[0] = v79;
    *v78 = 67109634;
    *(v78 + 4) = [v76 frameLength];

    *(v78 + 8) = 2080;
    *(v78 + 10) = sub_256032BA0(*&v25[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName], *&v25[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8], v110);
    *(v78 + 18) = 1024;
    *(v78 + 20) = *&v77[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter] != 0;

    _os_log_impl(&dword_256022000, v75, v73, "TranscriberV2: addBuffer size: %u source: %s converting: %{BOOL}d", v78, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x259C57FC0](v79, -1, -1);
    MEMORY[0x259C57FC0](v78, -1, -1);
  }

  result = sub_256045A74(v74);
  if (result)
  {
    v80 = result;
    v81 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStreamBuilder;
    swift_beginAccess();
    sub_2560331D0(&v3[v81], v14, &qword_27F825930, &qword_256056068);
    v82 = v101;
    v83 = v102;
    if ((*(v102 + 48))(v14, 1, v101))
    {

      sub_256033238(v14, &qword_27F825930, &qword_256056068);
      v84 = 1;
      v85 = v107;
    }

    else
    {
      v93 = v105;
      (*(v83 + 16))(v105, v14, v82);
      sub_256033238(v14, &qword_27F825930, &qword_256056068);
      v94 = v80;
      sub_2560535CC();
      v85 = v107;
      sub_2560537CC();

      (*(v83 + 8))(v93, v82);
      v84 = 0;
    }

    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825948, &qword_256056080);
    (*(*(v95 - 8) + 56))(v85, v84, 1, v95);
    v96 = v85;
  }

  else
  {
    v86 = v102;
    if (*&v3[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter])
    {
      return result;
    }

    v87 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStreamBuilder;
    swift_beginAccess();
    v88 = &v3[v87];
    v89 = v103;
    sub_2560331D0(v88, v103, &qword_27F825930, &qword_256056068);
    v90 = v101;
    if ((*(v86 + 48))(v89, 1, v101))
    {
      sub_256033238(v89, &qword_27F825930, &qword_256056068);
      v91 = 1;
      v92 = v104;
    }

    else
    {
      v97 = v105;
      (*(v86 + 16))(v105, v89, v90);
      sub_256033238(v89, &qword_27F825930, &qword_256056068);
      v98 = v74;
      sub_2560535CC();
      v92 = v104;
      sub_2560537CC();
      (*(v86 + 8))(v97, v90);
      v91 = 0;
    }

    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825948, &qword_256056080);
    (*(*(v99 - 8) + 56))(v92, v91, 1, v99);
    v96 = v92;
  }

  return sub_256033238(v96, &qword_27F825938, &qword_256056070);
}

id sub_256045A74(id a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter);
  if (!v3)
  {
    return 0;
  }

  v5 = v3;
  v6 = [v5 inputFormat];
  v7 = 0x27981C000uLL;
  [v6 sampleRate];
  v9 = v8;

  v10 = v9;
  v11 = [v5 outputFormat];
  [v11 sampleRate];
  v13 = v12;

  v14 = v13;
  v15 = [a1 frameCapacity] / (v10 / v14);
  if (COERCE_INT(fabs(v15)) > 2139095039)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v15 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v15 >= 4295000000.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15;
  v17 = [v5 outputFormat];
  v11 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v17 frameCapacity:v16];

  if (v11)
  {
    v18 = swift_allocObject();
    v18[2] = a1;
    aBlock[4] = sub_256050548;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_256045E0C;
    aBlock[3] = &block_descriptor;
    v19 = _Block_copy(aBlock);
    v20 = a1;

    aBlock[0] = 0;
    [v5 convertToBuffer:v11 error:aBlock withInputFromBlock:v19];
    _Block_release(v19);
    v2 = aBlock[0];
    if (aBlock[0])
    {
      a1 = aBlock[0];
      LOBYTE(v7) = sub_25605381C();
      if (qword_27F825630 == -1)
      {
LABEL_8:
        v21 = qword_27F8260C0;
        if (os_log_type_enabled(qword_27F8260C0, v7))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 138412290;
          *(v22 + 4) = a1;
          *v23 = v2;
          v24 = a1;
          _os_log_impl(&dword_256022000, v21, v7, "TranscriberV2: Audio converter error: %@", v22, 0xCu);
          sub_256033238(v23, &qword_27F825728, &qword_256055BF0);
          MEMORY[0x259C57FC0](v23, -1, -1);
          MEMORY[0x259C57FC0](v22, -1, -1);
        }

        else
        {
        }

        return 0;
      }

LABEL_19:
      swift_once();
      goto LABEL_8;
    }
  }

  else
  {
  }

  return v11;
}

id sub_256045E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t sub_256045E78()
{
  v0 = sub_25604E73C(&unk_286816D28);
  result = swift_arrayDestroy();
  off_27F825838 = v0;
  return result;
}

uint64_t sub_256045EC4()
{
  v0 = sub_25604F73C(&unk_286816E58);
  result = sub_256033238(&unk_286816E78, &qword_27F8259D8, &qword_2560561D0);
  off_27F825840 = v0;
  return result;
}

uint64_t sub_256045F14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v67 = a4;
  v68 = a5;
  v66 = a3;
  v71 = a7;
  v72 = sub_25605347C();
  v10 = *(v72 - 8);
  v11 = MEMORY[0x28223BE20](v72);
  v69 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v65 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - v18;
  v77 = a1;
  v78 = a2;
  v75 = 95;
  v76 = 0xE100000000000000;
  v73 = 45;
  v74 = 0xE100000000000000;
  sub_2560375E4();
  v20 = sub_25605387C();
  v22 = v21;
  v70 = a6;
  v23 = *(a6 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = (v70 + 40);
    while (1)
    {
      v26 = *(v25 - 1) == v20 && *v25 == v22;
      if (v26 || (sub_25605398C() & 1) != 0)
      {
        break;
      }

      ++v24;
      v25 += 2;
      if (v23 == v24)
      {
        goto LABEL_9;
      }
    }

    if (v24 >= *(v68 + 16))
    {
      __break(1u);
    }

    else
    {
      v23 = *(v10 + 16);
      v20 = v72;
      v23(v19, v68 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, v72);
      LOBYTE(v22) = sub_25605382C();
      if (qword_27F825630 == -1)
      {
LABEL_17:
        v36 = qword_27F8260C0;
        v23(v17, v19, v20);
        if (os_log_type_enabled(v36, v22))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v77 = v38;
          *v37 = 136315394;
          *(v37 + 4) = sub_256032BA0(v66, v67, &v77);
          *(v37 + 12) = 2080;
          sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
          v39 = sub_25605397C();
          v41 = v40;
          (*(v10 + 8))(v17, v20);
          v42 = sub_256032BA0(v39, v41, &v77);

          *(v37 + 14) = v42;
          _os_log_impl(&dword_256022000, v36, v22, "TranscriberV2: found default is %s locale from supported locales: %s", v37, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C57FC0](v38, -1, -1);
          MEMORY[0x259C57FC0](v37, -1, -1);
        }

        else
        {
          (*(v10 + 8))(v17, v20);
        }

        v43 = v71;
        (*(v10 + 32))(v71, v19, v20);
        goto LABEL_22;
      }
    }

    swift_once();
    goto LABEL_17;
  }

LABEL_9:
  v77 = v20;
  v78 = v22;
  v75 = 45;
  v76 = 0xE100000000000000;
  v27 = &v77;
  v28 = sub_25605386C();
  if (v28[2] < 3uLL)
  {
    goto LABEL_23;
  }

  if (v28[2])
  {
    v22 = v28[5];
    v77 = v28[4];
    v78 = v22;
    swift_bridgeObjectRetain_n();
    MEMORY[0x259C57450](45, 0xE100000000000000);

    if (v28[2] >= 2uLL)
    {
      v27 = v77;
      v29 = v78;
      v30 = v28[6];
      v31 = v28[7];

      v77 = v27;
      v78 = v29;

      MEMORY[0x259C57450](v30, v31);

      v20 = v77;
      v22 = v78;

      LOBYTE(v27) = sub_25605382C();
      if (qword_27F825630 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_50;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_50:
  swift_once();
LABEL_13:
  v32 = qword_27F8260C0;
  if (os_log_type_enabled(qword_27F8260C0, v27))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v77 = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_256032BA0(v66, v67, &v77);
    *(v33 + 12) = 2080;
    v35 = sub_256032BA0(v20, v22, &v77);

    *(v33 + 14) = v35;
    _os_log_impl(&dword_256022000, v32, v27, "TranscriberV2: found %s locale identifier with no region: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v34, -1, -1);
    MEMORY[0x259C57FC0](v33, -1, -1);
    goto LABEL_24;
  }

LABEL_23:

LABEL_24:
  v45 = v69;
  if (qword_27F825650 != -1)
  {
    swift_once();
  }

  v46 = off_27F825840;
  if (!*(off_27F825840 + 2))
  {

    goto LABEL_38;
  }

  v47 = sub_256035A38(v20, v22);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
LABEL_38:
    v44 = 1;
    v43 = v71;
    v20 = v72;
    return (*(v10 + 56))(v43, v44, 1, v20);
  }

  v20 = v72;
  if (!v23)
  {
LABEL_36:
    v44 = 1;
    v43 = v71;
    return (*(v10 + 56))(v43, v44, 1, v20);
  }

  v50 = 0;
  v51 = (v46[7] + 16 * v47);
  v52 = *v51;
  v53 = v51[1];
  v54 = (v70 + 40);
  while (1)
  {
    v55 = *(v54 - 1) == v52 && *v54 == v53;
    if (v55 || (sub_25605398C() & 1) != 0)
    {
      break;
    }

    ++v50;
    v54 += 2;
    if (v23 == v50)
    {
      goto LABEL_36;
    }
  }

  if (v50 >= *(v68 + 16))
  {
    __break(1u);
    goto LABEL_52;
  }

  v23 = *(v10 + 16);
  v57 = v68 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v50;
  v50 = v65;
  v23(v65, v57, v20);
  LOBYTE(v52) = sub_25605382C();
  if (qword_27F825630 != -1)
  {
LABEL_52:
    swift_once();
  }

  v58 = qword_27F8260C0;
  v23(v45, v50, v20);
  if (os_log_type_enabled(v58, v52))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v77 = v60;
    *v59 = 136315138;
    sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    v61 = sub_25605397C();
    v63 = v62;
    (*(v10 + 8))(v45, v20);
    v64 = sub_256032BA0(v61, v63, &v77);
    v50 = v65;

    *(v59 + 4) = v64;
    _os_log_impl(&dword_256022000, v58, v52, "TranscriberV2: found default is mapped locale: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x259C57FC0](v60, -1, -1);
    MEMORY[0x259C57FC0](v59, -1, -1);
  }

  else
  {
    (*(v10 + 8))(v45, v20);
  }

  v43 = v71;
  (*(v10 + 32))(v71, v50, v20);
LABEL_22:
  v44 = 0;
  return (*(v10 + 56))(v43, v44, 1, v20);
}

uint64_t sub_256046820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a5;
  v13 = sub_25605347C();
  v50 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v51 = a1;
  v52 = a2;

  MEMORY[0x259C57450](45, 0xE100000000000000);

  MEMORY[0x259C57450](a3, a4);

  v20 = v51;
  v19 = v52;
  if (qword_27F825628 != -1)
  {
    swift_once();
  }

  v21 = byte_27F8260B9;
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v49 = qword_27F8260C0;
  if (os_log_type_enabled(qword_27F8260C0, v21))
  {
    v22 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51 = v46;
    *v22 = 136315394;
    *(v22 + 4) = sub_256032BA0(v20, v19, &v51);
    *(v22 + 12) = 2080;
    v23 = MEMORY[0x259C574B0](v48, v13);
    v47 = v13;
    v25 = a6;
    v26 = v18;
    v27 = a7;
    v28 = sub_256032BA0(v23, v24, &v51);
    v13 = v47;

    *(v22 + 14) = v28;
    a7 = v27;
    v18 = v26;
    a6 = v25;
    _os_log_impl(&dword_256022000, v49, v21, "TranscriberV2: trying identifier: %s locales: %s", v22, 0x16u);
    v29 = v46;
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v29, -1, -1);
    MEMORY[0x259C57FC0](v22, -1, -1);
  }

  v30 = *(a6 + 16);
  v31 = v50;
  if (v30)
  {
    v32 = 0;
    v33 = (a6 + 40);
    while (1)
    {
      result = *(v33 - 1);
      if (result == v20 && *v33 == v19)
      {
        break;
      }

      result = sub_25605398C();
      v31 = v50;
      if (result)
      {
        break;
      }

      ++v32;
      v33 += 2;
      if (v30 == v32)
      {
        goto LABEL_15;
      }
    }

    if (v32 >= *(v48 + 16))
    {
      __break(1u);
    }

    else
    {
      v37 = *(v31 + 16);
      v37(v18, v48 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v32, v13);
      v37(v16, v18, v13);
      if (os_log_type_enabled(v49, v21))
      {
        v38 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v51 = v48;
        *v38 = 136315394;
        sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
        v39 = sub_25605397C();
        v41 = v40;
        (*(v50 + 8))(v16, v13);
        v42 = sub_256032BA0(v39, v41, &v51);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2080;
        v43 = sub_256032BA0(v20, v19, &v51);

        *(v38 + 14) = v43;
        _os_log_impl(&dword_256022000, v49, v21, "TranscriberV2: found locale %s with identifier: %s", v38, 0x16u);
        v44 = v48;
        swift_arrayDestroy();
        MEMORY[0x259C57FC0](v44, -1, -1);
        MEMORY[0x259C57FC0](v38, -1, -1);
      }

      else
      {

        (*(v50 + 8))(v16, v13);
      }

      (*(v50 + 32))(a7, v18, v13);
      return (*(v50 + 56))(a7, 0, 1, v13);
    }
  }

  else
  {
LABEL_15:

    v36 = *(v50 + 56);

    return v36(a7, 1, 1, v13);
  }

  return result;
}

uint64_t sub_256046DA4(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_25605347C();
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v2[33] = *(v4 + 64);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  if (qword_27F825660 != -1)
  {
    swift_once();
  }

  v5 = qword_27F826120;
  v2[40] = qword_27F826120;

  return MEMORY[0x2822009F8](sub_256046EE0, v5, 0);
}

uint64_t sub_256046EE0()
{
  v1 = *(v0[30] + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber);
  v0[41] = v1;
  if (v1)
  {
    v0[42] = sub_25605362C();

    v0[43] = sub_25605360C();
    v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825910, qword_256055FF8);
    v2 = swift_allocObject();
    v0[45] = v2;
    *(v2 + 16) = xmmword_256055E40;
    v3 = sub_2560506F4(&qword_27F825918, 255, MEMORY[0x277CDC9F0], MEMORY[0x277CDC9E8]);
    v0[46] = v3;
    *(v2 + 32) = v1;
    *(v2 + 40) = v3;
    v7 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

    v4 = swift_task_alloc();
    v0[47] = v4;
    *v4 = v0;
    v4[1] = sub_2560470C8;

    return v7(v2);
  }

  else
  {

    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_2560470C8(char a1)
{
  v2 = *(*v1 + 320);
  *(*v1 + 496) = a1;

  return MEMORY[0x2822009F8](sub_256047220, v2, 0);
}

uint64_t sub_256047220(uint64_t a1)
{
  v91 = v1;
  v2 = sub_25605382C();
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 312);
  v4 = *(v1 + 248);
  v5 = *(v1 + 256);
  v6 = *(v1 + 232);
  v7 = qword_27F8260C0;
  *(v1 + 384) = qword_27F8260C0;
  v8 = *(v5 + 16);
  *(v1 + 392) = v8;
  *(v1 + 400) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v6, v4);
  v88 = v8;
  if (os_log_type_enabled(v7, v2))
  {
    v9 = *(v1 + 496);
    v10 = *(v1 + 312);
    v11 = *(v1 + 248);
    v12 = *(v1 + 256);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v90 = v14;
    *v13 = 136315394;
    if (v9)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    if (v9)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    loga = v7;
    v17 = sub_256032BA0(v15, v16, &v90);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    v18 = sub_25605397C();
    v20 = v19;
    v21 = *(v12 + 8);
    v21(v10, v11);
    v8 = v88;
    v22 = sub_256032BA0(v18, v20, &v90);
    v7 = loga;

    *(v13 + 14) = v22;
    _os_log_impl(&dword_256022000, loga, v2, "TranscriberV2: hasAssets: %s for locale: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v14, -1, -1);
    MEMORY[0x259C57FC0](v13, -1, -1);
  }

  else
  {
    v21 = *(*(v1 + 256) + 8);
    v21(*(v1 + 312), *(v1 + 248));
  }

  *(v1 + 408) = v21;
  if (*(v1 + 496) == 1)
  {

    v23 = 1;
LABEL_35:

    v83 = *(v1 + 8);

    return v83(v23);
  }

  v24 = *(v1 + 240);
  v25 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadProgresses;
  *(v1 + 416) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadProgresses;
  swift_beginAccess();
  v26 = *(v24 + v25);
  v27 = 0.0;
  if (*(v26 + 16))
  {
    v28 = *(v1 + 232);

    v29 = sub_256035B1C(v28);
    if (v30)
    {
      v27 = *(*(v26 + 56) + 8 * v29);

      if (v27 == -1.0)
      {
        v31 = *(v1 + 304);
        v32 = *(v1 + 248);
        v33 = *(v1 + 232);
        v34 = sub_25605382C();
        v8(v31, v33, v32);
        v35 = os_log_type_enabled(v7, v34);
        v36 = *(v1 + 304);
        v37 = *(v1 + 248);
        if (v35)
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v90 = v39;
          *v38 = 136315138;
          sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
          logb = v7;
          v40 = sub_25605397C();
          v42 = v41;
          v21(v36, v37);
          v43 = sub_256032BA0(v40, v42, &v90);

          *(v38 + 4) = v43;
          _os_log_impl(&dword_256022000, logb, v34, "TranscriberV2: already tried to download asset and failed for locale: %s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x259C57FC0](v39, -1, -1);
          MEMORY[0x259C57FC0](v38, -1, -1);
        }

        else
        {

          v21(v36, v37);
        }

        v23 = 0;
        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  *(v1 + 424) = v27;
  v44 = *(v1 + 296);
  v45 = *(v1 + 248);
  v46 = *(v1 + 232);
  v47 = sub_25605382C();
  v8(v44, v46, v45);
  v48 = os_log_type_enabled(v7, v47);
  v49 = *(v1 + 296);
  v50 = *(v1 + 248);
  if (v48)
  {
    log = v7;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v90 = v52;
    *v51 = 136315394;
    sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    v53 = sub_25605397C();
    v55 = v54;
    v21(v49, v50);
    v56 = sub_256032BA0(v53, v55, &v90);

    *(v51 + 4) = v56;
    *(v51 + 12) = 2080;
    v58 = v27 * 100.0;
    if (COERCE__INT64(fabs(v27 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v58 > -9.22337204e18)
    {
      if (v58 < 9.22337204e18)
      {
        *(v1 + 224) = v58;
        v59 = sub_25605397C();
        v61 = sub_256032BA0(v59, v60, &v90);

        *(v51 + 14) = v61;
        _os_log_impl(&dword_256022000, log, v47, "TranscriberV2: starting to download asset for locale: %s progress: %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C57FC0](v52, -1, -1);
        MEMORY[0x259C57FC0](v51, -1, -1);
        goto LABEL_26;
      }

LABEL_40:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_40;
  }

  v21(*(v1 + 296), *(v1 + 248));
LABEL_26:
  v62 = *(v1 + 240);
  v63 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloaders;
  *(v1 + 432) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloaders;
  swift_beginAccess();
  v64 = *(v62 + v63);
  if (*(v64 + 16))
  {
    v65 = *(v1 + 232);

    v66 = sub_256035B1C(v65);
    if (v67)
    {
      v68 = *(v1 + 288);
      v69 = *(v1 + 256);
      v70 = *(v1 + 240);
      v71 = *(v1 + 248);
      v72 = *(v1 + 232);
      v84 = *(*(v64 + 56) + 8 * v66);

      sub_256049600(*&v27, 0, v72);
      v73 = sub_25605364C();
      *(v1 + 216) = v73;
      swift_getKeyPath();
      v88(v68, v72, v71);
      v74 = (*(v69 + 80) + 24) & ~*(v69 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = v70;
      (*(v69 + 32))(v75 + v74, v68, v71);
      v76 = v70;
      v77 = sub_25605338C();

      v78 = *&v76[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_progressObserver];
      *&v76[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_progressObserver] = v77;

      v23 = 1;
      goto LABEL_35;
    }
  }

  v79 = *(v1 + 368);
  v80 = *(v1 + 328);
  *(v1 + 440) = sub_25605360C();
  v81 = swift_allocObject();
  *(v1 + 448) = v81;
  *(v81 + 16) = xmmword_256055E40;
  *(v81 + 32) = v80;
  *(v81 + 40) = v79;
  v89 = (*MEMORY[0x277CDCC58] + MEMORY[0x277CDCC58]);

  v82 = swift_task_alloc();
  *(v1 + 456) = v82;
  *v82 = v1;
  v82[1] = sub_256047B98;

  return v89(v81, 0xD000000000000014, 0x8000000256057040);
}

uint64_t sub_256047B98(uint64_t a1)
{
  v2 = *(*v1 + 320);
  *(*v1 + 464) = a1;

  return MEMORY[0x2822009F8](sub_256047CF0, v2, 0);
}

uint64_t sub_256047CF0(uint64_t a1)
{
  v42 = v1;
  v2 = v1[58];
  if (v2)
  {
    v3 = v1[53];
    v4 = v1[52];
    v39 = v1[49];
    v5 = v1[36];
    v6 = v1[32];
    v7 = v1[30];
    v8 = v1[31];
    v9 = v1[29];
    v39(v5, v9, v8);
    swift_beginAccess();
    v2;
    sub_256034B84(v2, v5);
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *&v7[v4];
    *&v7[v4] = 0x8000000000000000;
    sub_25604CB20(v9, isUniquelyReferenced_nonNull_native, *&v3);
    *&v7[v4] = v41;
    swift_endAccess();
    sub_256049600(v3, 0, v9);
    v11 = sub_25605364C();
    v1[26] = v11;
    swift_getKeyPath();
    v39(v5, v9, v8);
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    (*(v6 + 32))(v13 + v12, v5, v8);
    v14 = v7;
    v15 = sub_25605338C();

    v16 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_progressObserver;
    v1[59] = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_progressObserver;
    v17 = *&v14[v16];
    *&v14[v16] = v15;

    v18 = swift_task_alloc();
    v1[60] = v18;
    *v18 = v1;
    v18[1] = sub_256048174;

    return MEMORY[0x28212C1E0]();
  }

  else
  {
    v19 = v1[49];
    v20 = v1[48];
    v21 = v1[35];
    v22 = v1[31];
    v23 = v1[29];
    v24 = sub_25605382C();
    v19(v21, v23, v22);
    v25 = os_log_type_enabled(v20, v24);
    v26 = v1[51];
    if (v25)
    {
      log = v1[48];
      v27 = v1[35];
      v28 = v1[31];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41 = v30;
      *v29 = 136315138;
      sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
      v31 = sub_25605397C();
      v33 = v32;
      v26(v27, v28);
      v34 = sub_256032BA0(v31, v33, &v41);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_256022000, log, v24, "TranscriberV2: Asset present %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x259C57FC0](v30, -1, -1);
      MEMORY[0x259C57FC0](v29, -1, -1);
    }

    else
    {
      v35 = v1[35];
      v36 = v1[31];

      v26(v35, v36);
    }

    v37 = v1[1];

    return v37(1);
  }
}

uint64_t sub_256048174()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    v4 = sub_2560483E4;
  }

  else
  {
    v4 = sub_2560482A0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2560482A0()
{
  v1 = v0[58];
  v2 = v0[59];
  v4 = v0[29];
  v3 = v0[30];
  sub_256049600(0, 1, v4);
  v5 = *(v3 + v2);
  *(v3 + v2) = 0;

  swift_beginAccess();
  v6 = sub_256048738(v4);
  swift_endAccess();

  swift_beginAccess();
  sub_256048800(v4);
  swift_endAccess();

  v7 = v0[1];

  return v7(1);
}

uint64_t sub_2560483E4(uint64_t a1)
{
  v34 = v1;
  v2 = v1[49];
  v3 = v1[48];
  v4 = v1[34];
  v5 = v1[31];
  v6 = v1[29];
  v7 = sub_25605381C();
  v2(v4, v6, v5);
  if (os_log_type_enabled(v3, v7))
  {
    v8 = v1[61];
    v31 = v1[51];
    log = v1[48];
    v9 = v1[34];
    v10 = v1[31];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v11 = 136315394;
    sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    v14 = sub_25605397C();
    v16 = v15;
    v31(v9, v10);
    v17 = sub_256032BA0(v14, v16, &v33);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v19;
    *v12 = v19;
    _os_log_impl(&dword_256022000, log, v7, "TranscriberV2: asset downloading error: %s, %@", v11, 0x16u);
    sub_256033238(v12, &qword_27F825728, &qword_256055BF0);
    MEMORY[0x259C57FC0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C57FC0](v13, -1, -1);
    MEMORY[0x259C57FC0](v11, -1, -1);
  }

  else
  {
    (v1[51])(v1[34], v1[31]);
  }

  v20 = v1[61];
  v21 = v1[58];
  v22 = v1[59];
  v23 = v1[52];
  v25 = v1[29];
  v24 = v1[30];
  sub_256049600(1, 1, v25);
  v26 = *(v24 + v22);
  *(v24 + v22) = 0;

  swift_beginAccess();
  v27 = sub_256048738(v25);
  swift_endAccess();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v24 + v23);
  *(v24 + v23) = 0x8000000000000000;
  sub_25604CB20(v25, isUniquelyReferenced_nonNull_native, -1.0);
  *(v24 + v23) = v33;
  swift_endAccess();

  v29 = v1[1];

  return v29(0);
}

uint64_t sub_256048738(uint64_t a1)
{
  v2 = v1;
  v3 = sub_256035B1C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25604D3D8();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_25605347C();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_25604C69C(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_256048800(uint64_t a1)
{
  v2 = v1;
  v3 = sub_256035B1C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25604D164();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_25605347C();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_25604C69C(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_2560488DC(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_25605347C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = *a1;
  v15 = sub_2560537AC();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  (*(v8 + 16))(v10, a4, v7);
  v16 = qword_27F825660;
  v17 = a3;
  v26 = v14;
  if (v16 != -1)
  {
    swift_once();
  }

  v19 = qword_27F826120;
  v20 = sub_2560506F4(&qword_27F8258F8, v18, type metadata accessor for AXLCTranscriberActor, &unk_256055FC8);
  v21 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v19;
  *(v23 + 3) = v20;
  *(v23 + 4) = v17;
  (*(v8 + 32))(&v23[v21], v10, v7);
  *&v23[v22] = v26;

  sub_25603E5A8(0, 0, v13, &unk_256056060, v23);
}

uint64_t sub_256048B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_25605347C();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825900, &qword_256055FF0);
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  if (qword_27F825660 != -1)
  {
    swift_once();
  }

  v8 = qword_27F826120;

  return MEMORY[0x2822009F8](sub_256048D00, v8, 0);
}

uint64_t sub_256048D00()
{
  v83 = v0;
  v1 = *(v0 + 120);
  v2 = *(*(v0 + 88) + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source);
  if (v2)
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 112);
    v5 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
    swift_beginAccess();
    v6 = *(v1 + 16);
    v6(v3, v2 + v5, v4);
    v7 = *(v1 + 56);
    v7(v3, 0, 1, v4);
    v8 = v6;
  }

  else
  {
    v7 = *(v1 + 56);
    v7(*(v0 + 184), 1, 1, *(v0 + 112));
    v8 = *(v1 + 16);
  }

  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 112);
  v14 = *(v0 + 120);
  v81 = v8;
  v8(v10, *(v0 + 96), v13);
  v7(v10, 0, 1, v13);
  v15 = *(v12 + 48);
  sub_2560331D0(v9, v11, &qword_27F8256A8, &qword_2560559A0);
  sub_2560331D0(v10, v11 + v15, &qword_27F8256A8, &qword_2560559A0);
  v16 = *(v14 + 48);
  if (v16(v11, 1, v13) == 1)
  {
    v17 = *(v0 + 184);
    v18 = *(v0 + 112);
    sub_256033238(*(v0 + 176), &qword_27F8256A8, &qword_2560559A0);
    sub_256033238(v17, &qword_27F8256A8, &qword_2560559A0);
    if (v16(v11 + v15, 1, v18) == 1)
    {
      sub_256033238(*(v0 + 160), &qword_27F8256A8, &qword_2560559A0);
      goto LABEL_11;
    }

LABEL_9:
    sub_256033238(*(v0 + 160), &qword_27F825900, &qword_256055FF0);
    goto LABEL_32;
  }

  v19 = *(v0 + 112);
  sub_2560331D0(*(v0 + 160), *(v0 + 168), &qword_27F8256A8, &qword_2560559A0);
  v20 = v16(v11 + v15, 1, v19);
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v23 = *(v0 + 168);
  if (v20 == 1)
  {
    v24 = *(v0 + 112);
    v25 = *(v0 + 120);
    sub_256033238(*(v0 + 176), &qword_27F8256A8, &qword_2560559A0);
    sub_256033238(v21, &qword_27F8256A8, &qword_2560559A0);
    (*(v25 + 8))(v23, v24);
    goto LABEL_9;
  }

  v80 = *(v0 + 160);
  v26 = *(v0 + 144);
  v28 = *(v0 + 112);
  v27 = *(v0 + 120);
  (*(v27 + 32))(v26, v11 + v15, v28);
  sub_2560506F4(&qword_27F825740, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
  v79 = sub_25605368C();
  v29 = *(v27 + 8);
  v29(v26, v28);
  sub_256033238(v22, &qword_27F8256A8, &qword_2560559A0);
  sub_256033238(v21, &qword_27F8256A8, &qword_2560559A0);
  v29(v23, v28);
  sub_256033238(v80, &qword_27F8256A8, &qword_2560559A0);
  if ((v79 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  v30 = *(v0 + 88);
  v31 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadProgresses;
  swift_beginAccess();
  v32 = *(v30 + v31);
  v33 = 0x27981C000uLL;
  if (!*(v32 + 16))
  {
    goto LABEL_23;
  }

  v34 = *(v0 + 96);

  v35 = sub_256035B1C(v34);
  if ((v36 & 1) == 0)
  {

    goto LABEL_23;
  }

  v37 = *(*(v32 + 56) + 8 * v35);

  if (v37 == -1.0 || v37 == 0.0 || ([*(v0 + 104) fractionCompleted], v38 != 0.0))
  {
LABEL_23:
    v60 = *(v0 + 96);
    [*(v0 + 104) fractionCompleted];
    v62 = v61;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v30 + v31);
    *(v30 + v31) = 0x8000000000000000;
    sub_25604CB20(v60, isUniquelyReferenced_nonNull_native, v62);
    *(v30 + v31) = v82;
    swift_endAccess();
    if (qword_27F825620 != -1)
    {
      swift_once();
    }

    v64 = byte_27F8260B8;
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v65 = qword_27F8260C0;
    v81(*(v0 + 128), *(v0 + 96), *(v0 + 112));
    v66 = os_log_type_enabled(v65, v64);
    v44 = *(v0 + 120);
    v42 = *(v0 + 128);
    v43 = *(v0 + 112);
    if (v66)
    {
      v67 = *(v0 + 104);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v82 = v47;
      *v46 = 136315394;
      [v67 fractionCompleted];
      v68 = sub_2560537FC();
      v70 = sub_256032BA0(v68, v69, &v82);

      *(v46 + 4) = v70;
      *(v46 + 12) = 2080;
      sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
      v71 = sub_25605397C();
      v73 = v72;
      (*(v44 + 8))(v42, v43);
      v74 = sub_256032BA0(v71, v73, &v82);
      v33 = 0x27981C000;

      *(v46 + 14) = v74;
      v55 = "TranscriberV2: Asset downloading updated progress: %s for locale: %s";
      v56 = v65;
      v57 = v64;
      v58 = v46;
      v59 = 22;
      goto LABEL_29;
    }

LABEL_30:
    (*(v44 + 8))(v42, v43);
    goto LABEL_31;
  }

  if (qword_27F825620 != -1)
  {
    swift_once();
  }

  v39 = byte_27F8260B8;
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v40 = qword_27F8260C0;
  v81(*(v0 + 136), *(v0 + 96), *(v0 + 112));
  v41 = os_log_type_enabled(v40, v39);
  v42 = *(v0 + 136);
  v43 = *(v0 + 112);
  v44 = *(v0 + 120);
  if (!v41)
  {
    goto LABEL_30;
  }

  v45 = *(v0 + 104);
  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v82 = v47;
  *v46 = 134218498;
  *(v46 + 4) = v37;
  *(v46 + 12) = 2080;
  [v45 fractionCompleted];
  v48 = sub_2560537FC();
  v50 = sub_256032BA0(v48, v49, &v82);

  *(v46 + 14) = v50;
  *(v46 + 22) = 2080;
  sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
  v51 = sub_25605397C();
  v53 = v52;
  (*(v44 + 8))(v42, v43);
  v54 = sub_256032BA0(v51, v53, &v82);
  v33 = 0x27981C000;

  *(v46 + 24) = v54;
  v55 = "TranscriberV2: Asset downloading saved progress: %f, new progress: %s for locale: %s";
  v56 = v40;
  v57 = v39;
  v58 = v46;
  v59 = 32;
LABEL_29:
  _os_log_impl(&dword_256022000, v56, v57, v55, v58, v59);
  swift_arrayDestroy();
  MEMORY[0x259C57FC0](v47, -1, -1);
  MEMORY[0x259C57FC0](v46, -1, -1);
LABEL_31:
  v75 = *(v0 + 96);
  [*(v0 + 104) *(v33 + 4056)];
  sub_256049600(v76, 0, v75);
LABEL_32:

  v77 = *(v0 + 8);

  return v77();
}

void sub_256049600(uint64_t a1, int a2, void *a3)
{
  v85 = a3;
  v78 = a2;
  v79 = a1;
  v4 = sub_25605347C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v75 = &v73[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v76 = &v73[-v9];
  MEMORY[0x28223BE20](v8);
  v80 = &v73[-v10];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825900, &qword_256055FF0);
  MEMORY[0x28223BE20](v86);
  v12 = &v73[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v84 = &v73[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v73[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v73[-v19];
  v81 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source;
  v82 = v3;
  v21 = *(v3 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source);
  if (v21)
  {
    v22 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
    swift_beginAccess();
    v23 = v5[2];
    v23(v20, v21 + v22, v4);
    v24 = v5[7];
    v24(v20, 0, 1, v4);
  }

  else
  {
    v24 = v5[7];
    v24(&v73[-v19], 1, 1, v4);
    v23 = v5[2];
  }

  v77 = v23;
  v23(v18, v85, v4);
  v24(v18, 0, 1, v4);
  v25 = *(v86 + 48);
  sub_2560331D0(v20, v12, &qword_27F8256A8, &qword_2560559A0);
  sub_2560331D0(v18, &v12[v25], &qword_27F8256A8, &qword_2560559A0);
  v83 = v5;
  v26 = v5[6];
  v27 = v26(v12, 1, v4);
  v86 = v4;
  if (v27 != 1)
  {
    v29 = v84;
    sub_2560331D0(v12, v84, &qword_27F8256A8, &qword_2560559A0);
    if (v26(&v12[v25], 1, v86) != 1)
    {
      v30 = v83;
      v31 = v86;
      v32 = v80;
      (v83[4])(v80, &v12[v25], v86);
      sub_2560506F4(&qword_27F825740, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
      v74 = sub_25605368C();
      v33 = v30[1];
      v33(v32, v31);
      sub_256033238(v18, &qword_27F8256A8, &qword_2560559A0);
      sub_256033238(v20, &qword_27F8256A8, &qword_2560559A0);
      v33(v84, v31);
      sub_256033238(v12, &qword_27F8256A8, &qword_2560559A0);
      v28 = v82;
      if ((v74 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    sub_256033238(v18, &qword_27F8256A8, &qword_2560559A0);
    sub_256033238(v20, &qword_27F8256A8, &qword_2560559A0);
    (v83[1])(v29, v86);
LABEL_9:
    sub_256033238(v12, &qword_27F825900, &qword_256055FF0);
    return;
  }

  sub_256033238(v18, &qword_27F8256A8, &qword_2560559A0);
  sub_256033238(v20, &qword_27F8256A8, &qword_2560559A0);
  if (v26(&v12[v25], 1, v86) != 1)
  {
    goto LABEL_9;
  }

  sub_256033238(v12, &qword_27F8256A8, &qword_2560559A0);
  v28 = v82;
LABEL_11:
  v34 = *(v28 + v81);
  if (v34)
  {
    if (v78)
    {
      if (v79)
      {
        v35 = objc_allocWithZone(type metadata accessor for AXLiveCaption(0));
        v36 = v34;
        v37 = 1;
      }

      else
      {
        v56 = v34;
        v57 = sub_25605382C();
        if (qword_27F825630 != -1)
        {
          swift_once();
        }

        v58 = qword_27F8260C0;
        v59 = v75;
        v77(v75, v85, v86);
        if (os_log_type_enabled(v58, v57))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v87 = v61;
          *v60 = 136315138;
          sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
          v62 = v59;
          v63 = v86;
          v64 = sub_25605397C();
          LODWORD(v85) = v57;
          v66 = v65;
          (v83[1])(v62, v63);
          v67 = sub_256032BA0(v64, v66, &v87);

          *(v60 + 4) = v67;
          _os_log_impl(&dword_256022000, v58, v85, "TranscriberV2: asset is ready for locale: %s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v61);
          MEMORY[0x259C57FC0](v61, -1, -1);
          MEMORY[0x259C57FC0](v60, -1, -1);
        }

        else
        {
          (v83[1])(v59, v86);
        }

        v68 = objc_allocWithZone(type metadata accessor for AXLiveCaption(0));
        v36 = v56;
        v37 = 0;
      }

      v55 = 1;
    }

    else
    {
      v38 = qword_27F825620;
      v39 = v34;
      if (v38 != -1)
      {
        swift_once();
      }

      v40 = byte_27F8260B8;
      v41 = v76;
      if (qword_27F825630 != -1)
      {
        swift_once();
      }

      v42 = qword_27F8260C0;
      v77(v41, v85, v86);
      if (os_log_type_enabled(v42, v40))
      {
        v43 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v87 = v85;
        *v43 = 134218242;
        v44 = v79;
        *(v43 + 4) = v79;
        *(v43 + 12) = 2080;
        sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
        v45 = v39;
        v46 = v86;
        v47 = sub_25605397C();
        LODWORD(v84) = v40;
        v48 = v47;
        v50 = v49;
        v51 = v46;
        v39 = v45;
        (v83[1])(v41, v51);
        v52 = sub_256032BA0(v48, v50, &v87);

        *(v43 + 14) = v52;
        _os_log_impl(&dword_256022000, v42, v84, "TranscriberV2: asset downloading is: %f for locale: %s", v43, 0x16u);
        v53 = v85;
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x259C57FC0](v53, -1, -1);
        MEMORY[0x259C57FC0](v43, -1, -1);
      }

      else
      {
        (v83[1])(v41, v86);
        v44 = v79;
      }

      v54 = objc_allocWithZone(type metadata accessor for AXLiveCaption(0));
      v36 = v39;
      v37 = v44;
      v55 = 0;
    }

    v69 = sub_256031F70(v36, v37, v55);
    v70 = v69;
    v71 = *(v28 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback);
    if (v71)
    {
      v72 = *(v28 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback + 8);

      v71(v70);

      sub_2560502B0(v71, v72);
    }

    else
    {
    }
  }
}

id sub_256049FA8()
{
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source] = 0;
  v1 = &v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber] = 0;
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_speechAnalyzer] = 0;
  v2 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStream;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258E0, &qword_256055F58);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStreamBuilder;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258F0, &unk_256055F60);
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_bestAudioFormat] = 0;
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter] = 0;
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_progressObserver] = 0;
  v6 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloaders;
  v7 = MEMORY[0x277D84F90];
  *&v0[v6] = sub_25605073C(MEMORY[0x277D84F90]);
  v8 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadProgresses;
  *&v0[v8] = sub_256050924(v7);
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadError] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadCompleted] = 0x3FF0000000000000;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for AXLCTranscriber(0);
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_25604A164()
{
  v0 = sub_2560535BC();
  __swift_allocate_value_buffer(v0, qword_27F825848);
  __swift_project_value_buffer(v0, qword_27F825848);
  return sub_2560535AC();
}

id AXLCTranscriber.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXLCTranscriber(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25604A300()
{
  type metadata accessor for AXLCTranscriberActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27F826120 = v0;
  return result;
}

uint64_t sub_25604A33C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25604A378()
{
  if (qword_27F825660 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25604A3D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AXLCTranscriberActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t static AXLCTranscriber.testDefaultLocales()()
{
  *(v1 + 32) = v0;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_25604A4B0;

  return sub_25604ED4C();
}

uint64_t sub_25604A4B0(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;

  return MEMORY[0x2822009F8](sub_25604A5B0, 0, 0);
}

uint64_t sub_25604A5B0(uint64_t a1)
{
  sub_25605382C();
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 24);
  sub_2560534AC();
  sub_25604A90C(0x53555F6E65, 0xE500000000000000, 0x53552D6E65, 0xE500000000000000, v2);
  sub_25604A90C(0x41435F6E65, 0xE500000000000000, 0x41432D6E65, 0xE500000000000000, v2);
  sub_25604A90C(0x45445F6564, 0xE500000000000000, 0x45442D6564, 0xE500000000000000, v2);
  sub_25604A90C(0x55415F6E65, 0xE500000000000000, 0x55412D6E65, 0xE500000000000000, v2);
  sub_25604A90C(0x42475F6E65, 0xE500000000000000, 0x42472D6E65, 0xE500000000000000, v2);
  sub_25604A90C(0x4E495F6E65, 0xE500000000000000, 0x4E492D6E65, 0xE500000000000000, v2);
  sub_25604A90C(0x47535F6E65, 0xE500000000000000, 0x47532D6E65, 0xE500000000000000, v2);
  sub_25604A90C(0x53455F7365, 0xE500000000000000, 0x53452D7365, 0xE500000000000000, v2);
  sub_25604A90C(0x584D5F7365, 0xE500000000000000, 0x584D2D7365, 0xE500000000000000, v2);
  sub_25604A90C(0x53555F7365, 0xE500000000000000, 0x53552D7365, 0xE500000000000000, v2);
  sub_25604A90C(0x41435F7266, 0xE500000000000000, 0x41432D7266, 0xE500000000000000, v2);
  sub_25604A90C(0x52465F7266, 0xE500000000000000, 0x52462D7266, 0xE500000000000000, v2);
  sub_25604A90C(0x53555F7266, 0xE500000000000000, 0x52462D7266, 0xE500000000000000, v2);
  sub_25604A90C(0x504A5F616ALL, 0xE500000000000000, 0x504A2D616ALL, 0xE500000000000000, v2);
  sub_25604A90C(0x524B5F6F6BLL, 0xE500000000000000, 0x524B2D6F6BLL, 0xE500000000000000, v2);
  sub_25604A90C(0x4E435F657579, 0xE600000000000000, 0x4E432D657579, 0xE600000000000000, v2);
  sub_25604A90C(0x4E435F687ALL, 0xE500000000000000, 0x4E432D687ALL, 0xE500000000000000, v2);
  sub_25604A90C(0x4B485F687ALL, 0xE500000000000000, 0x4B482D687ALL, 0xE500000000000000, v2);
  sub_25604A90C(0x2D746E61482D687ALL, 0xEA00000000005355, 0x4B482D687ALL, 0xE500000000000000, v2);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_25604A90C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v63 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v56 - v10);
  v12 = sub_25605347C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v60 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v57 = (&v56 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;

  v58 = a1;
  v59 = a2;
  sub_2560533CC();
  v23 = *(v13 + 16);
  v62 = v22;
  v23(v11, v22, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_25603B53C(v11, a5, v20);
  sub_256033238(v11, &qword_27F8256A8, &qword_2560559A0);
  v68[0] = sub_2560533DC();
  v68[1] = v24;
  v66 = 95;
  v67 = 0xE100000000000000;
  v64 = 45;
  v65 = 0xE100000000000000;
  sub_2560375E4();
  v25 = sub_25605387C();
  v27 = v26;
  v28 = v63;

  v61 = a3;
  if (v25 == a3 && v27 == v28 || (sub_25605398C() & 1) != 0)
  {
    v29 = sub_25605382C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v30 = qword_27F8260C0;
    v31 = v60;
    v23(v60, v20, v12);
    if (os_log_type_enabled(v30, v29))
    {
      v32 = swift_slowAlloc();
      v57 = v20;
      v33 = v32;
      v56 = swift_slowAlloc();
      v68[0] = v56;
      *v33 = 136315906;
      *(v33 + 4) = sub_256032BA0(v58, v59, v68);
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_256032BA0(v61, v63, v68);
      *(v33 + 22) = 2080;
      v34 = sub_256032BA0(v25, v27, v68);

      *(v33 + 24) = v34;
      *(v33 + 32) = 2080;
      sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
      v35 = sub_25605397C();
      v37 = v36;
      v38 = *(v13 + 8);
      v38(v31, v12);
      v39 = sub_256032BA0(v35, v37, v68);

      *(v33 + 34) = v39;
      _os_log_impl(&dword_256022000, v30, v29, "Default locale test success, input: %s, expected: %s, got: %s, %s", v33, 0x2Au);
      v40 = v56;
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v40, -1, -1);
      MEMORY[0x259C57FC0](v33, -1, -1);
      v38(v57, v12);
      return (v38)(v62, v12);
    }

    v42 = *(v13 + 8);
    v42(v31, v12);
  }

  else
  {
    v56 = v25;
    v43 = sub_25605381C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v44 = qword_27F8260C0;
    v45 = v57;
    v23(v57, v20, v12);
    v60 = v44;
    if (os_log_type_enabled(v44, v43))
    {
      v46 = v45;
      v47 = swift_slowAlloc();
      v48 = v20;
      v49 = swift_slowAlloc();
      v68[0] = v49;
      *v47 = 136315906;
      *(v47 + 4) = sub_256032BA0(v58, v59, v68);
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_256032BA0(v61, v28, v68);
      *(v47 + 22) = 2080;
      v50 = sub_256032BA0(v56, v27, v68);

      *(v47 + 24) = v50;
      *(v47 + 32) = 2080;
      sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
      v51 = sub_25605397C();
      v53 = v52;
      v54 = *(v13 + 8);
      v54(v46, v12);
      v55 = sub_256032BA0(v51, v53, v68);

      *(v47 + 34) = v55;
      _os_log_impl(&dword_256022000, v60, v43, "Default locale test error, input: %s, expected: %s, got: %s, %s", v47, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v49, -1, -1);
      MEMORY[0x259C57FC0](v47, -1, -1);
      v54(v48, v12);
      return (v54)(v62, v12);
    }

    v42 = *(v13 + 8);
    v42(v45, v12);
  }

  v42(v20, v12);
  return (v42)(v62, v12);
}

uint64_t sub_25604B038(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_256037638;

  return v6();
}

uint64_t sub_25604B120(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_256037638;

  return v7();
}

uint64_t sub_25604B208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2560331D0(a3, v23 - v10, &qword_27F825750, &qword_256055E80);
  v12 = sub_2560537AC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_256033238(v11, &qword_27F825750, &qword_256055E80);
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

  sub_25605379C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_25605377C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2560536DC() + 32;
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

    sub_256033238(a3, &qword_27F825750, &qword_256055E80);

    return v21;
  }

LABEL_8:
  sub_256033238(a3, &qword_27F825750, &qword_256055E80);
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

uint64_t sub_25604B504(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_256051194;

  return v6(a1);
}

uint64_t sub_25604B5FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25604B6F4;

  return v6(a1);
}

uint64_t sub_25604B6F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_25604B7EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8259D0, &qword_2560561C8);
  v10 = *(sub_25605347C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25605347C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25604B9C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8259C0, &qword_2560561B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25604BAD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8259B8, &unk_2560561A0);
  result = sub_25605395C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_2560539CC();
      MEMORY[0x259C57720](v20);
      result = sub_256053A0C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25604BD60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25605347C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825920, &qword_256056048);
  v39 = v4;
  result = sub_25605395C();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_2560506F4(&qword_27F8256B8, 255, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
      result = sub_25605366C();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}