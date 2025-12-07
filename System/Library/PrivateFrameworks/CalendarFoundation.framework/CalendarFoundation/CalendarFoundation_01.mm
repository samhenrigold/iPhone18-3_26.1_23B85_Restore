uint64_t CalInMemoryBlockList.batchLookup(emails:phoneNumbers:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, void), uint64_t a4)
{
  v5 = v4;
  v42 = a4;
  v43 = a3;
  v8 = sub_1B996FE3C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v50 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - v18;
  v48 = v9;
  v20 = *(v9 + 56);
  v20(&v40 - v18, 1, 1, v8);
  v49 = v8;
  v44 = v20;
  v45 = v9 + 56;
  v20(v17, 1, 1, v8);
  v51 = v5;
  v46 = v19;
  v47 = v17;
  if (a1)
  {
    v41 = a2;
    sub_1B996FE2C();
    v21 = *(a1 + 16);
    v22 = OBJC_IVAR___CalInMemoryBlockList_blockedEmails;
    v23 = swift_beginAccess();
    if (v21)
    {
      v24 = 0;
      v25 = (a1 + 40);
      do
      {
        v26 = *v25;
        v27 = *&v5[v22];
        v52 = *(v25 - 1);
        v53 = v26;
        MEMORY[0x1EEE9AC00](v23);
        *(&v40 - 2) = &v52;

        v28 = sub_1B9968808(sub_1B9968FD0, (&v40 - 4), v27);

        if (v28)
        {
          v23 = sub_1B996FE1C();
        }

        ++v24;
        v25 += 2;
        v5 = v51;
      }

      while (v21 != v24);
    }

    v19 = v46;
    sub_1B99688D0(v46);
    v29 = v49;
    (*(v48 + 32))(v19, v13, v49);
    v44(v19, 0, 1, v29);
    v17 = v47;
    a2 = v41;
  }

  if (a2)
  {
    sub_1B996FE2C();
    v30 = *(a2 + 16);
    if (v30)
    {
      v31 = 0;
      v32 = (a2 + 40);
      do
      {
        v34 = *(v32 - 1);
        v33 = *v32;

        v35 = [v5 blockedPhoneNumbers];
        v36 = sub_1B996FFBC();

        v52 = v34;
        v53 = v33;
        MEMORY[0x1EEE9AC00](v37);
        *(&v40 - 2) = &v52;
        LOBYTE(v35) = sub_1B9968808(sub_1B9968FD0, (&v40 - 4), v36);

        if (v35)
        {
          sub_1B996FE1C();
        }

        ++v31;
        v32 += 2;
        v5 = v51;
      }

      while (v30 != v31);
    }

    v17 = v47;
    sub_1B99688D0(v47);
    v38 = v49;
    (*(v48 + 32))(v17, v50, v49);
    v44(v17, 0, 1, v38);
    v19 = v46;
  }

  v43(v19, v17, 0);
  sub_1B99688D0(v17);
  return sub_1B99688D0(v19);
}

void sub_1B996820C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  sub_1B99689A4(a1, &v19 - v12);
  v14 = sub_1B996FE3C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = 0;
  if (v16(v13, 1, v14) != 1)
  {
    v17 = sub_1B996FDFC();
    (*(v15 + 8))(v13, v14);
  }

  sub_1B99689A4(a2, v11);
  if (v16(v11, 1, v14) == 1)
  {
    v18 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v18 = sub_1B996FDFC();
  (*(v15 + 8))(v11, v14);
  if (a3)
  {
LABEL_7:
    a3 = sub_1B996FDEC();
  }

LABEL_8:
  (*(a4 + 16))(a4, v17, v18, a3);
}

void CalInMemoryBlockList.batchCached(emails:phoneNumbers:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (!a1)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = sub_1B996FFAC();
  if (v7)
  {
LABEL_3:
    v7 = sub_1B996FFAC();
  }

LABEL_4:
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B99684FC;
  v10[3] = &block_descriptor_0;
  v9 = _Block_copy(v10);

  [v4 batchLookupEmails:v8 phoneNumbers:v7 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_1B99684FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = *(a1 + 32);
  if (a2)
  {
    sub_1B996FE0C();
    v15 = sub_1B996FE3C();
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  }

  else
  {
    v16 = sub_1B996FE3C();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  }

  if (a3)
  {
    sub_1B996FE0C();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_1B996FE3C();
  (*(*(v18 - 8) + 56))(v11, v17, 1, v18);

  v19 = a4;
  v14(v13, v11, a4);

  sub_1B99688D0(v11);
  return sub_1B99688D0(v13);
}

uint64_t sub_1B9968808(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B99688D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for CalInMemoryBlockList()
{
  result = qword_1EBBDBF08;
  if (!qword_1EBBDBF08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBDBF08);
  }

  return result;
}

uint64_t sub_1B99689A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9968A14(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v50 = a4;
  v47 = a2;
  v6 = sub_1B996FE3C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v57 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v48 = &v47 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v47 - v20;
  v22 = *(v7 + 56);
  v22(&v47 - v20, 1, 1, v6);
  v51 = v22;
  v52 = v7 + 56;
  v22(v19, 1, 1, v6);
  v58 = a3;
  v55 = v7;
  v56 = v6;
  v53 = v21;
  v54 = v19;
  if (a1)
  {
    sub_1B996FE2C();
    v23 = *(a1 + 16);
    v24 = OBJC_IVAR___CalInMemoryBlockList_blockedEmails;
    v25 = swift_beginAccess();
    if (v23)
    {
      v26 = 0;
      v27 = (a1 + 40);
      do
      {
        v28 = *v27;
        v29 = *&a3[v24];
        v59 = *(v27 - 1);
        v60 = v28;
        MEMORY[0x1EEE9AC00](v25);
        *(&v47 - 2) = &v59;

        v30 = sub_1B9968808(sub_1B9968FD0, (&v47 - 4), v29);

        if (v30)
        {
          v25 = sub_1B996FE1C();
        }

        ++v26;
        v27 += 2;
        a3 = v58;
      }

      while (v23 != v26);
    }

    v21 = v53;
    sub_1B99688D0(v53);
    v7 = v55;
    v6 = v56;
    (*(v55 + 32))(v21, v11, v56);
    v51(v21, 0, 1, v6);
    v19 = v54;
  }

  v31 = v47;
  if (v47)
  {
    sub_1B996FE2C();
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = 0;
      v34 = (v31 + 40);
      do
      {
        v36 = *(v34 - 1);
        v35 = *v34;

        v37 = [a3 blockedPhoneNumbers];
        v38 = sub_1B996FFBC();

        v59 = v36;
        v60 = v35;
        MEMORY[0x1EEE9AC00](v39);
        *(&v47 - 2) = &v59;
        LOBYTE(v37) = sub_1B9968808(sub_1B9968FD0, (&v47 - 4), v38);

        if (v37)
        {
          sub_1B996FE1C();
        }

        ++v33;
        v34 += 2;
        a3 = v58;
      }

      while (v32 != v33);
    }

    v19 = v54;
    sub_1B99688D0(v54);
    v7 = v55;
    v6 = v56;
    (*(v55 + 32))(v19, v57, v56);
    v51(v19, 0, 1, v6);
    v21 = v53;
  }

  v40 = v48;
  sub_1B99689A4(v21, v48);
  v41 = *(v7 + 48);
  if (v41(v40, 1, v6) == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_1B996FDFC();
    (*(v7 + 8))(v40, v6);
  }

  v43 = v49;
  sub_1B99689A4(v19, v49);
  if (v41(v43, 1, v6) == 1)
  {
    v44 = 0;
  }

  else
  {
    v45 = v43;
    v44 = sub_1B996FDFC();
    (*(v7 + 8))(v45, v6);
  }

  (*(v50 + 16))(v50, v42, v44, 0);

  sub_1B99688D0(v19);
  return sub_1B99688D0(v21);
}

uint64_t sub_1B9968F78(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B99700FC() & 1;
  }
}

void __getCHSTimelineControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHSTimelineControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalWidgetUtils.m" lineNumber:19 description:{@"Unable to find class %s", "CHSTimelineController"}];

  __break(1u);
}

void ChronoServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ChronoServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CalWidgetUtils.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void __getCHSWidgetServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHSWidgetServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalWidgetUtils.m" lineNumber:20 description:{@"Unable to find class %s", "CHSWidgetService"}];

  __break(1u);
}

void __getMGGetBoolAnswerSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *libMobileGestaltLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CalContactsProvider.m" lineNumber:38 description:{@"%s", *a1}];

  __break(1u);
}

void CalSetSystemTimeZone_cold_1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void CalSetSystemTimeZone_cold_2(void *a1)
{
  v2 = [__SystemTimeZone name];
  v3 = [a1 name];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void CalSetSystemTimeZone_cold_3(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void _CalCopyDefaultTimeZone_cold_1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void _CalCopyDefaultTimeZone_cold_5()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1B990D000, v0, OS_LOG_TYPE_DEBUG, "_CalCopyDefaultTimeZone: returning %@", v1, 0xCu);
}

void _CalSetTimeZone_cold_1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void _CalSetTimeZone_cold_2(void *a1)
{
  v2 = [__TimeZone name];
  v3 = [a1 name];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void _CalCopySystemTimeZone_cold_1()
{
  v0 = [__SystemTimeZone name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void CalSetDefaultTimeZone_cold_1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void _CalDefaultTimeZoneSettingsChanged_cold_1(void *a1)
{
  v2 = [__TimeZone name];
  v3 = [a1 name];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void _CalTimeZonePrefChanged_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = __TimeZoneNotificationEchoCount;
  _os_log_debug_impl(&dword_1B990D000, log, OS_LOG_TYPE_DEBUG, "_CalTimeZonePrefChanged: echo count %i", v1, 8u);
}

void _CalCopyTimeZone_cold_1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void CalRoundDoubleToNearestMultiple_cold_1(NSObject *a1, double a2, double a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1B990D000, a1, OS_LOG_TYPE_ERROR, "Passed in a 'multiple' value of [%@].  Will not attempt to round value [%@] to the nearest multiple of that number.", &v7, 0x16u);
}

void __HandleForSource_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a1;
  v5 = 2080;
  v6 = dlerror();
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Error loading source %li: %s", &v3, 0x16u);
}

void __CalAddStateCaptureBlock_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "State dump is %lu bytes in UTF-16; truncating", &v2, 0xCu);
}

void __CalAddStateCaptureBlock_block_invoke_cold_2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = [a1 length];
  v5 = 1024;
  v6 = 32522;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "State dump is %lu ascii characters, truncating to %i", &v3, 0x12u);
}

void __CalAddStateCaptureBlock_block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Failed to allocate state capture data (%s)", &v3, 0xCu);
}

void __CalAddStateCaptureBlock_block_invoke_cold_4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = 136315394;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B990D000, log, OS_LOG_TYPE_ERROR, "Failed to serialize state capture payload (%s): %@", &v4, 0x16u);
}

void CalConvertNSIntegerToNSUInteger_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Cannot convert a negative integer [%ld] to an unsigned integer.", &v2, 0xCu);
}

void CalConvertNSUIntegerToNSInteger_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Cannot convert an unsigned integer [%lu], which is greater than [%ld], to an integer.", &v2, 0x16u);
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x1EEDB65A8](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFCalendarGetRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit smallerUnit, CFCalendarUnit biggerUnit, CFAbsoluteTime at)
{
  v4 = MEMORY[0x1EEDB6B88](calendar, smallerUnit, biggerUnit, at);
  result.length = v5;
  result.location = v4;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}