uint64_t sub_26B5BDA10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B5BDA50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26B5BDAA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B5BDAE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26B5E161C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D90, &unk_26B5E3B80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26B5BDC18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26B5E161C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D90, &unk_26B5E3B80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26B5BDD48()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_26B5BDDAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredOutputAudioFormat];
  *a2 = result;
  return result;
}

uint64_t sub_26B5BDE18()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B5BDE54()
{
  v1 = sub_26B5E161C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_26B5BDF30()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B5BDF78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_26B5BDFD0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 omitTranslatedAudio];
  *a2 = result;
  return result;
}

id sub_26B5BE018@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 taskHint];
  *a2 = result;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t _LTOSLogSTMultiprocess(uint64_t a1, uint64_t a2)
{
  if (_LTOSLogSTMultiprocess_onceToken != -1)
  {
    _LTOSLogSTMultiprocess_cold_1();
  }

  return _LTOSLogSTMultiprocess_log;
}

uint64_t _LTOSLogSTInstrumentation(uint64_t a1, uint64_t a2)
{
  if (_LTOSLogSTInstrumentation_onceToken != -1)
  {
    _LTOSLogSTInstrumentation_cold_1();
  }

  return _LTOSLogSTInstrumentation_log;
}

__CFString *STAudioUtilitiesFormatToString(uint64_t *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = *a1;
    v4 = *(a1 + 2);
    if (v4)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%c%c%c%c'", (v4 >> 24), (v4 << 8 >> 24), (v4 >> 8), v4];
    }

    else
    {
      v5 = @"none";
    }

    v6 = [v2 stringWithFormat:@"{ sampleRate: %.2f formatID: %@ formatFlags: %x bytesPerPacket: %u framesPerPacket: %u bytesPerFrame: %u channelsPerFrame: %u bitsPerChannel: %u }", v3, v5, *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 8)];
    if (v4)
    {
    }
  }

  else
  {
    v6 = @"<NULL>";
  }

  return v6;
}

id STServerStart(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85F48];
  if ((*MEMORY[0x277D85F48] - 1) >= 0xFFFFFFFE)
  {
    v8 = _LTOSLogSTMultiprocess(a1, a2);
    v4 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      STServerStart_cold_1(v2, v8);
    }

    goto LABEL_7;
  }

  *&v3 = -1;
  *(&v3 + 1) = -1;
  *task_info_out.val = v3;
  *&task_info_out.val[4] = v3;
  task_info_outCnt = 8;
  v4 = task_info(v2, 0xFu, &task_info_out, &task_info_outCnt);
  if (v4)
  {
    v6 = v4;
    v7 = _LTOSLogSTMultiprocess(v4, v5);
    v4 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      STServerStart_cold_2(v6, v7);
    }

LABEL_7:
    *&v9 = -1;
    *(&v9 + 1) = -1;
    *v34.val = v9;
    *&v34.val[4] = v9;
    goto LABEL_8;
  }

  v34 = task_info_out;
LABEL_8:
  if ((&v34 & *&task_info_out.val[2] & *&task_info_out.val[4] & *&task_info_out.val[6]) == 0xFFFFFFFFFFFFFFFFLL)
  {
    v17 = _LTOSLogSTMultiprocess(v4, v5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      STServerStart_cold_8(v17);
    }

    goto LABEL_16;
  }

  v10 = *MEMORY[0x277CBECE8];
  task_info_out = v34;
  v11 = SecTaskCreateWithAuditToken(v10, &task_info_out);
  *task_info_out.val = 0;
  v12 = SecTaskCopyValueForEntitlement(v11, @"com.apple.private.speechtranslation.serverhost", &task_info_out);
  v14 = v12;
  v15 = *task_info_out.val;
  if (*task_info_out.val)
  {
    v16 = _LTOSLogSTMultiprocess(v12, v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      STServerStart_cold_3(v15, v16);
    }

LABEL_12:

LABEL_13:
LABEL_16:
    v18 = [MEMORY[0x277CCA9B8] st_errorForCode:{9, *v34.val, *&v34.val[4]}];
    goto LABEL_17;
  }

  if (!v12)
  {
    v32 = _LTOSLogSTMultiprocess(0, v13);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      STServerStart_cold_7(v32);
    }

    goto LABEL_12;
  }

  v14 = v12;
  objc_opt_class();
  v20 = objc_opt_isKindOfClass() & 1;
  if (v20)
  {
    v21 = v14;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (!v20)
  {
    v33 = _LTOSLogSTMultiprocess(v23, v24);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      STServerStart_cold_4(v33, v14);
    }

    goto LABEL_13;
  }

  v25 = [v14 BOOLValue];

  if ((v25 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (_STServerSharedXPCServer_onceToken != -1)
  {
    STServerStart_cold_5();
  }

  v26 = _STServerSharedXPCServer_staticError;
  v27 = _STServerSharedXPCServer_staticError;
  v28 = _STServerSharedXPCServer_xpcServer;
  v18 = v26;
  v30 = _LTOSLogSTMultiprocess(v18, v29);
  v31 = v30;
  if (!v28 || v18)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      STServerStart_cold_6(v28, v18, v31);
    }
  }

  else if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    task_info_out.val[0] = 138543362;
    *&task_info_out.val[1] = v28;
    _os_log_impl(&dword_26B5BC000, v31, OS_LOG_TYPE_INFO, "Successfully started XPC server: %{public}@", &task_info_out, 0xCu);
  }

LABEL_17:

  return v18;
}

void sub_26B5C0E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26B5C104C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26B5C18F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B5C20D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_26B5C254C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B5C3F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B5C439C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_26B5C5354(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26B5C5944(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26B5C5FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26B5C6364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26B5C98C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_26B5C9CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26B5C9E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B5CA2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26B5CA62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26B5CAA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_26B5CB334()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26B5CB3AC()
{
  v1 = *v0;
  sub_26B5E1CDC();
  MEMORY[0x26D67B460](v1);
  return sub_26B5E1CFC();
}

uint64_t sub_26B5CB420(uint64_t a1)
{
  v2 = *v1;
  sub_26B5E1CDC();
  MEMORY[0x26D67B460](v2);
  return sub_26B5E1CFC();
}

uint64_t sub_26B5CB474(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CB8380]) initFromFormat:a1 toFormat:a2];
  if (v5)
  {
    v6 = v5;
    [v5 setSampleRateConverterQuality_];
    [v6 setDownmix_];
    [v6 setPrimeMethod_];

    *(v2 + 16) = v6;
  }

  else
  {

    type metadata accessor for PCMConverter();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

id sub_26B5CB538(uint64_t a1, unint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v68 = a1;
  v69 = a2;
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      LODWORD(v6) = BYTE6(a2);
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
LABEL_13:
    LODWORD(v6) = 0;
    goto LABEL_14;
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }

    v6 = HIDWORD(a1) - a1;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (HIDWORD(v6))
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  v9 = *(v2 + 16);
  sub_26B5CBE74(a1, a2);
  v3 = &unk_279CF8000;
  v10 = [v9 inputFormat];
  v11 = [v10 streamDescription];

  v4 = v11[6];
  if (v4)
  {
    v62 = v9;
    if (qword_280407C28 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  swift_once();
LABEL_16:
  v12 = sub_26B5E175C();
  __swift_project_value_buffer(v12, qword_280408538);
  v13 = sub_26B5E173C();
  v14 = sub_26B5E1B9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v6 / v4;
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v15;
    _os_log_impl(&dword_26B5BC000, v13, v14, "Input frame length: %u", v16, 8u);
    MEMORY[0x26D67BBE0](v16, -1, -1);
  }

  v66 = 0;
  v67 = 0;
  v65 = 1;
  sub_26B5CBF00(&v68, &v65);
  v17 = v68;
  v18 = v69;
  v19 = v69 >> 62;
  if ((v69 >> 62) > 1)
  {
    LODWORD(v20) = 0;
    if (v19 != 2)
    {
      goto LABEL_29;
    }

    v22 = *(v68 + 16);
    v21 = *(v68 + 24);
    v23 = __OFSUB__(v21, v22);
    v20 = v21 - v22;
    if (!v23)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v19)
  {
    LODWORD(v20) = BYTE6(v69);
    goto LABEL_29;
  }

  LODWORD(v20) = HIDWORD(v17) - v17;
  if (__OFSUB__(HIDWORD(v17), v17))
  {
    goto LABEL_58;
  }

  v20 = v20;
LABEL_27:
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (HIDWORD(v20))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_29:
  v60 = v18;
  v61 = v17;
  LODWORD(v66) = 1;
  HIDWORD(v66) = v20;
  v24 = [v62 v3[70]];
  v25 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v24 bufferListNoCopy:&v65 deallocator:0];

  if (v25)
  {

    v26 = sub_26B5E173C();
    v27 = sub_26B5E1B9C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134218240;
      v29 = [v62 v3[70]];
      [v29 sampleRate];
      v31 = v30;

      *(v28 + 4) = v31;
      *(v28 + 12) = 2048;
      v32 = [v62 outputFormat];
      [v32 sampleRate];
      v34 = v33;

      *(v28 + 14) = v34;
      _os_log_impl(&dword_26B5BC000, v26, v27, "Input sample rate: %f vs output %f", v28, 0x16u);
      MEMORY[0x26D67BBE0](v28, -1, -1);
    }

    v24 = MEMORY[0x277D84F90];
    v64 = MEMORY[0x277D84F90];
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v36 = v62;
    while (1)
    {
      v37 = [v36 outputFormat];
      v38 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v37 frameCapacity:4096];

      if (!v38)
      {

        sub_26B5CC1C8();
        swift_allocError();
        *v51 = 0;
        swift_willThrow();

        goto LABEL_48;
      }

      v39 = swift_allocObject();
      v39[2] = v35;
      v39[3] = v25;
      aBlock[4] = sub_26B5CC270;
      aBlock[5] = v39;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26B5CBDAC;
      aBlock[3] = &block_descriptor;
      v40 = _Block_copy(aBlock);

      v41 = v25;

      aBlock[0] = 0;
      v42 = [v36 convertToBuffer:v38 error:aBlock withInputFromBlock:v40];
      _Block_release(v40);
      if (v42 == 2)
      {
        goto LABEL_50;
      }

      if (v42 == 3)
      {
        break;
      }

      v43 = aBlock[0];
      v44 = v38;
      v45 = sub_26B5E173C();
      v46 = sub_26B5E1B9C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 67109120;
        *(v47 + 4) = [v44 frameLength];

        _os_log_impl(&dword_26B5BC000, v45, v46, "Have converted PCM data available: %u", v47, 8u);
        v48 = v47;
        v36 = v62;
        MEMORY[0x26D67BBE0](v48, -1, -1);
      }

      else
      {

        v45 = v44;
      }

      v49 = v44;
      MEMORY[0x26D67B190]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26B5E1A3C();
        v36 = v62;
      }

      sub_26B5E1A4C();

      v24 = v64;
      if (v42 == 1)
      {
        v38 = v43;
LABEL_50:

        sub_26B5CC21C(v61, v60);
        return v24;
      }
    }

    v52 = aBlock[0];

    v53 = sub_26B5E173C();
    v54 = sub_26B5E1BAC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      *(v55 + 4) = v52;
      *v56 = v52;
      v57 = v52;
      _os_log_impl(&dword_26B5BC000, v53, v54, "Failed to convert audio: %@", v55, 0xCu);
      sub_26B5CC290(v56);
      MEMORY[0x26D67BBE0](v56, -1, -1);
      MEMORY[0x26D67BBE0](v55, -1, -1);
    }

    sub_26B5CC1C8();
    v24 = swift_allocError();
    *v58 = 2;
    swift_willThrow();
  }

  else
  {
    sub_26B5CC1C8();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();
  }

LABEL_48:
  sub_26B5CC21C(v68, v69);
  return v24;
}

void *sub_26B5CBD24(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  v7 = 1;
  if (*(a3 + 16))
  {
    a4 = 0;
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    v8 = a4;
    v7 = 0;
  }

  *a2 = v7;
  return a4;
}

id sub_26B5CBDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t sub_26B5CBE18()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26B5CBE74(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
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

uint64_t *sub_26B5CBF00(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v23 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      *(a2 + 16) = &v21;
      return result;
    }

    sub_26B5CC21C(v5, v4);
    v21 = v5;
    v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_26B5E38A0;
    sub_26B5CC21C(0, 0xC000000000000000);
    sub_26B5E155C();
    v10 = v21;
    v9 = v22;
    v11 = *(v21 + 16);
    result = sub_26B5E141C();
    if (!result)
    {
      __break(1u);
      goto LABEL_26;
    }

    v12 = result;
    v13 = sub_26B5E143C();
    if (!__OFSUB__(v11, v13))
    {
      v14 = v12 + v11 - v13;
      result = sub_26B5E142C();
      *(a2 + 16) = v14;
      *v3 = v10;
      v3[1] = v9 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v6)
  {
    result = sub_26B5CC21C(v5, v4);
    LOWORD(v22) = v4;
    BYTE2(v22) = BYTE2(v4);
    BYTE3(v22) = BYTE3(v4);
    BYTE4(v22) = BYTE4(v4);
    BYTE5(v22) = BYTE5(v4);
    *(a2 + 16) = &v21;
    v8 = v22 | ((WORD2(v22) | (BYTE6(v4) << 16)) << 32);
LABEL_19:
    *v3 = v5;
    v3[1] = v8;
    return result;
  }

  v15 = v4 & 0x3FFFFFFFFFFFFFFFLL;

  sub_26B5CC21C(v5, v4);
  *v3 = xmmword_26B5E38A0;
  sub_26B5CC21C(0, 0xC000000000000000);
  v16 = v5 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v16 < v5)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (sub_26B5E141C() && __OFSUB__(v5, sub_26B5E143C()))
    {
LABEL_24:
      __break(1u);
    }

    sub_26B5E144C();
    swift_allocObject();
    v17 = sub_26B5E140C();

    v15 = v17;
  }

  if (v16 < v5)
  {
    goto LABEL_21;
  }

  result = sub_26B5E141C();
  if (result)
  {
    v18 = result;
    v19 = sub_26B5E143C();
    if (!__OFSUB__(v5, v19))
    {
      v20 = v18 + v5 - v19;
      sub_26B5E142C();
      *(a2 + 16) = v20;

      v8 = v15 | 0x4000000000000000;
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_26B5CC1C8()
{
  result = qword_280407C40;
  if (!qword_280407C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280407C40);
  }

  return result;
}

uint64_t sub_26B5CC21C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B5CC290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280408040, "$E");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t getEnumTagSinglePayload for PCMConverter.PCMConverterError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PCMConverter.PCMConverterError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26B5CC4B8()
{
  result = qword_280407C48;
  if (!qword_280407C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280407C48);
  }

  return result;
}

uint64_t sub_26B5CC50C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D40, &qword_26B5E3AC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D38, &qword_26B5E3AC0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407CB0, &unk_26B5E3A68);
  v17 = *(v10 - 8);
  v18 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  *(v1 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_readerTask) = 0;
  *(v1 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_speechAnalyzer) = 0;
  *(v1 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_inputAudioFormat) = 0;
  *(v1 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_sourceLocale;
  v14 = sub_26B5E161C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v1 + v13, a1, v14);
  sub_26B5E193C();
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3);
  sub_26B5E1AAC();
  (*(v15 + 8))(a1, v14);
  (*(v4 + 8))(v6, v3);
  (*(v17 + 32))(v1 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_inputStream, v12, v18);
  (*(v19 + 32))(v1 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_inputStreamBuilder, v9, v20);
  return v1;
}

uint64_t sub_26B5CC82C()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E80, &qword_26B5E3C70);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407C90, &qword_26B5E3A40);
  v1[4] = swift_task_alloc();
  sub_26B5E18DC();
  v1[5] = swift_task_alloc();
  sub_26B5E176C();
  v1[6] = swift_task_alloc();
  v2 = sub_26B5E17AC();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_26B5E161C();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B5CCA10, 0, 0);
}

uint64_t sub_26B5CCA10()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[4];
  (*(v0[11] + 16))(v0[12], v0[2] + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_sourceLocale, v0[10]);
  sub_26B5E179C();
  sub_26B5E178C();
  (*(v3 + 8))(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407C98, &qword_26B5E3A48);
  v5 = sub_26B5E177C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26B5E39A0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277CDC978], v5);
  sub_26B5CF47C(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  sub_26B5E180C();
  swift_allocObject();
  v9 = sub_26B5E17EC();
  v0[13] = v9;
  sub_26B5E18BC();
  v10 = sub_26B5E18AC();
  v0[14] = v10;
  sub_26B5E189C();
  sub_26B5E18CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408070, &qword_26B5E3A50);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26B5E39B0;
  v12 = sub_26B5CFBE8(&qword_280407CA0, MEMORY[0x277CDCA78], MEMORY[0x277CDCA70]);
  *(v11 + 32) = v10;
  *(v11 + 40) = v12;
  v13 = sub_26B5CFBE8(&qword_280407CA8, MEMORY[0x277CDC9F0], MEMORY[0x277CDC9E8]);
  *(v11 + 48) = v9;
  *(v11 + 56) = v13;
  v14 = sub_26B5E188C();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);

  v0[15] = sub_26B5E187C();
  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_26B5CCDA0;

  return MEMORY[0x28212BBC0]();
}

uint64_t sub_26B5CCDA0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_26B5CD064;
  }

  else
  {
    v2 = sub_26B5CCEB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B5CCEB4()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[3];
  v4 = v0[2];
  *(v4 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_speechAnalyzer) = v1;

  v5 = sub_26B5E1A9C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v6[5] = v4;
  v6[6] = v1;

  sub_26B5D37D0(0, 0, v3, &unk_26B5E3A60, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26B5CD064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B5CD130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = *a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E80, &qword_26B5E3C70);
  v6[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407CB0, &unk_26B5E3A68);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B5CD260, 0, 0);
}

uint64_t sub_26B5CD260()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408070, &qword_26B5E3A50);
  v2 = swift_allocObject();
  v0[10] = v2;
  *(v2 + 16) = xmmword_26B5E39A0;
  v3 = sub_26B5CFBE8(&qword_280407CA8, MEMORY[0x277CDC9F0], MEMORY[0x277CDC9E8]);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_26B5CD37C;

  return MEMORY[0x28212BBB8](v2);
}

uint64_t sub_26B5CD37C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_26B5CDA0C;
  }

  else
  {

    v4 = sub_26B5CD498;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26B5CD498()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[3];
  v6 = *(v5 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_inputAudioFormat);
  *(v5 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_inputAudioFormat) = v1;
  v7 = v1;

  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_inputStream, v4);
  v8 = swift_task_alloc();
  v0[14] = v8;
  v9 = sub_26B5CFB40(&qword_280407CB8, &qword_280407CB0, &unk_26B5E3A68, MEMORY[0x277D857C0]);
  *v8 = v0;
  v8[1] = sub_26B5CD5D0;
  v10 = v0[9];
  v11 = v0[7];

  return MEMORY[0x28212BBC8](v10, v1, v11, v9);
}

uint64_t sub_26B5CD5D0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_26B5CDBD0;
  }

  else
  {
    v6 = sub_26B5CD760;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26B5CD760()
{
  v1 = v0[12];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_26B5E1A9C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;

  v7 = sub_26B5D37D0(0, 0, v2, &unk_26B5E3A80, v6);

  *(v3 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_readerTask) = v7;

  v8 = v0[1];

  return v8();
}

uint64_t sub_26B5CD89C()
{

  return MEMORY[0x2822009F8](sub_26B5CD998, 0, 0);
}

uint64_t sub_26B5CD998()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B5CDA0C()
{

  v1 = v0[13];
  v0[16] = v1;
  if (qword_280407C20 != -1)
  {
    swift_once();
  }

  v2 = sub_26B5E175C();
  __swift_project_value_buffer(v2, qword_280408520);
  v3 = v1;
  v4 = sub_26B5E173C();
  v5 = sub_26B5E1BAC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = sub_26B5E150C();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_26B5BC000, v4, v5, "Failed to start speech: %@", v6, 0xCu);
    sub_26B5CFB88(v7, &unk_280408040, "$E");
    MEMORY[0x26D67BBE0](v7, -1, -1);
    MEMORY[0x26D67BBE0](v6, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_26B5CD89C;

  return sub_26B5CDD94();
}

uint64_t sub_26B5CDBD0()
{
  v1 = *(v0 + 120);
  *(v0 + 128) = v1;
  if (qword_280407C20 != -1)
  {
    swift_once();
  }

  v2 = sub_26B5E175C();
  __swift_project_value_buffer(v2, qword_280408520);
  v3 = v1;
  v4 = sub_26B5E173C();
  v5 = sub_26B5E1BAC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = sub_26B5E150C();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_26B5BC000, v4, v5, "Failed to start speech: %@", v6, 0xCu);
    sub_26B5CFB88(v7, &unk_280408040, "$E");
    MEMORY[0x26D67BBE0](v7, -1, -1);
    MEMORY[0x26D67BBE0](v6, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_26B5CD89C;

  return sub_26B5CDD94();
}

uint64_t sub_26B5CDDB4()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_speechAnalyzer;
  v0[3] = OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_speechAnalyzer;
  v3 = *(v1 + v2);
  v0[4] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_26B5CDE9C;

    return MEMORY[0x28212BBD8]();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_26B5CDE9C()
{

  return MEMORY[0x2822009F8](sub_26B5CDF98, 0, 0);
}

uint64_t sub_26B5CDF98()
{
  v1 = v0[2];
  *(v1 + v0[3]) = 0;

  v2 = OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_readerTask;
  if (*(v1 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_readerTask))
  {

    sub_26B5E1AEC();
  }

  *(v1 + v2) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B5CE05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407CC0, &qword_26B5E3A88);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = sub_26B5E146C();
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407CC8, &qword_26B5E3A90);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = sub_26B5E14CC();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407CD0, &qword_26B5E3A98);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = sub_26B5E149C();
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v10 = sub_26B5E17DC();
  v5[22] = v10;
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407CD8, &qword_26B5E3AA0);
  v5[25] = swift_task_alloc();
  v5[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407CE0, &qword_26B5E3AA8);
  v5[27] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407CE8, &qword_26B5E3AB0);
  v5[28] = v11;
  v5[29] = *(v11 - 8);
  v5[30] = swift_task_alloc();
  v12 = sub_26B5E14EC();
  v5[31] = v12;
  v5[32] = *(v12 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B5CE468, 0, 0);
}

uint64_t sub_26B5CE468()
{
  sub_26B5E147C();
  sub_26B5E17FC();
  v0[35] = swift_getOpaqueTypeConformance2();
  sub_26B5E1AFC();
  v0[36] = OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_delegate;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_26B5CE5A8;
  v3 = v0[28];
  v4 = v0[25];

  return MEMORY[0x282200310](v4, 0, 0, v0 + 2, v3, AssociatedConformanceWitness);
}

uint64_t sub_26B5CE5A8()
{

  if (v0)
  {
    v1 = sub_26B5CEE88;
  }

  else
  {
    v1 = sub_26B5CE6B8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_26B5CE6B8()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 272);
    v5 = *(v0 + 248);
    v6 = *(v0 + 256);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    (*(v6 + 8))(v4, v5);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 160);
    v10 = *(v0 + 168);
    v47 = *(v0 + 144);
    v48 = *(v0 + 152);
    v49 = *(v0 + 120);
    v50 = *(v0 + 128);
    v51 = *(v0 + 112);
    v52 = *(v0 + 136);
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    (*(v2 + 32))(*(v0 + 192), v1, v3);
    sub_26B5E17BC();
    sub_26B5E14BC();
    sub_26B5E194C();
    sub_26B5CFBE8(&qword_280407CF0, MEMORY[0x277CDCCE0], MEMORY[0x277CDCCD8]);
    sub_26B5E14AC();
    (*(v9 + 8))(v10, v48);
    sub_26B5CFB40(&qword_280407CF8, &qword_280407CD0, &qword_26B5E3A98, MEMORY[0x277CC8BE8]);
    sub_26B5E1B5C();
    sub_26B5E1B7C();
    sub_26B5CFBE8(&qword_280407D00, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
    v13 = sub_26B5E197C();
    v14 = *(v11 + 8);
    v14(v51, v12);
    v14(v49, v12);
    v15 = (*(v52 + 8))(v47, v50);
    if (v13)
    {
      MEMORY[0x26D67AF40](v15);
      v16 = *(v0 + 420);
      *(v0 + 304) = *(v0 + 404);
      *(v0 + 320) = v16;
      *(v0 + 336) = *(v0 + 436);
      *(v0 + 352) = 0;
      v15 = sub_26B5E14FC();
    }

    MEMORY[0x26D67AF40](v15);
    sub_26B5E14DC();
    if (sub_26B5E181C())
    {
      sub_26B5E145C();
      sub_26B5CFBE8(&qword_280407D08, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
      sub_26B5E1A0C();
      v17 = objc_allocWithZone(STTranscriptionResult);
      v18 = sub_26B5E198C();

      v19 = [v17 initWithText_];
    }

    else
    {
      v20 = *(v0 + 80);
      v21 = *(v0 + 40);
      v22 = *(v0 + 48);
      sub_26B5CFA60(*(v0 + 88), v20);
      v23 = (*(v22 + 48))(v20, 1, v21);
      v24 = *(v0 + 264);
      v25 = *(v0 + 272);
      if (v23 == 1)
      {
        v26 = *(v0 + 248);
        v27 = *(v0 + 256);
        v28 = *(v0 + 80);
        (*(v27 + 8))(*(v0 + 272), v26);
        sub_26B5CFB88(v28, &qword_280407CC8, &qword_26B5E3A90);
        (*(v27 + 16))(v25, v24, v26);
      }

      else
      {
        v29 = *(v0 + 56);
        sub_26B5CFAD0(*(v0 + 80), v29);
        sub_26B5CFB40(&qword_280407D10, &qword_280407CC0, &qword_26B5E3A88, MEMORY[0x277D83D30]);
        sub_26B5CFBE8(&qword_280407D18, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
        sub_26B5E148C();
        sub_26B5CFB88(v29, &qword_280407CC0, &qword_26B5E3A88);
      }

      sub_26B5E145C();
      sub_26B5CFBE8(&qword_280407D08, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
      sub_26B5E1A0C();
      v30 = objc_allocWithZone(STTranscriptionResult);
      v18 = sub_26B5E198C();

      v19 = [v30 initWithText:v18 isFinal:0];
    }

    v31 = v19;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = Strong;
      v34 = *(*(v0 + 32) + *(v0 + 288) + 8);
      ObjectType = swift_getObjectType();
      (*(v34 + 8))(v31, ObjectType, v34);
    }

    v37 = *(v0 + 256);
    v36 = *(v0 + 264);
    v38 = *(v0 + 248);
    v40 = *(v0 + 184);
    v39 = *(v0 + 192);
    v41 = *(v0 + 176);
    v42 = *(v0 + 88);

    sub_26B5CFB88(v42, &qword_280407CC8, &qword_26B5E3A90);
    (*(v37 + 8))(v36, v38);
    (*(v40 + 8))(v39, v41);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v44 = swift_task_alloc();
    *(v0 + 296) = v44;
    *v44 = v0;
    v44[1] = sub_26B5CE5A8;
    v45 = *(v0 + 224);
    v46 = *(v0 + 200);

    return MEMORY[0x282200310](v46, 0, 0, v0 + 16, v45, AssociatedConformanceWitness);
  }
}

uint64_t sub_26B5CEE88()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[32];
  (*(v0[29] + 8))(v0[30], v0[28]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[2];
  if (qword_280407C20 != -1)
  {
    swift_once();
  }

  v5 = sub_26B5E175C();
  __swift_project_value_buffer(v5, qword_280408520);
  v6 = v4;
  v7 = sub_26B5E173C();
  v8 = sub_26B5E1BAC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = sub_26B5E150C();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_26B5BC000, v7, v8, "Reading error: %@", v9, 0xCu);
    sub_26B5CFB88(v10, &unk_280408040, "$E");
    MEMORY[0x26D67BBE0](v10, -1, -1);
    MEMORY[0x26D67BBE0](v9, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_26B5CF104()
{
  v1 = OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_inputStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407CB0, &unk_26B5E3A68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_inputStreamBuilder;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D38, &qword_26B5E3AC0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_sourceLocale;
  v6 = sub_26B5E161C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_26B5CFC30(v0 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SpeechAnalyzerImpl(uint64_t a1)
{
  result = qword_280407C70;
  if (!qword_280407C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26B5CF2CC(uint64_t a1)
{
  sub_26B5CF41C(319, &qword_280407C80, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_26B5CF41C(319, &qword_280407C88, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      sub_26B5E161C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26B5CF41C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_26B5E193C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_26B5CF47C(uint64_t a1)
{
  v2 = sub_26B5E177C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D20, &qword_26B5E3AB8);
    v9 = sub_26B5E1BEC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_26B5CFBE8(&qword_280407D28, MEMORY[0x277CDC980], MEMORY[0x277CDC988]);
      v16 = sub_26B5E196C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_26B5CFBE8(&qword_280407D30, MEMORY[0x277CDC980], MEMORY[0x277CDC990]);
          v23 = sub_26B5E197C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_26B5CF79C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26B5CFC58;

  return sub_26B5CD130(a1, v4, v5, v6, v7, v8);
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

uint64_t sub_26B5CF8AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26B5CF96C;

  return sub_26B5CE05C(a1, v4, v5, v7, v6);
}

uint64_t sub_26B5CF96C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26B5CFA60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407CC8, &qword_26B5E3A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B5CFAD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407CC0, &qword_26B5E3A88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B5CFB40(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26B5CFB88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26B5CFBE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B5CFC5C(int a1)
{
  v18 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E28, &unk_26B5E3C30);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E18, &qword_26B5E3C20);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407DD0, &qword_26B5E3BE0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  *(v1 + OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_synthesisTask) = 0;
  v12 = v1 + OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_delegate;
  type metadata accessor for SynthesizeRequest(0);
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  v13 = v16;
  (*(v2 + 104))(v4, *MEMORY[0x277D85778], v16);
  sub_26B5E1AAC();
  (*(v2 + 8))(v4, v13);
  (*(v9 + 32))(v1 + OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_requestStream, v11, v8);
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_requestStreamBuilder, v7, v17);
  *(v1 + OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_streamingResponses) = v18;
  *(v1 + OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_ttsSession) = [objc_allocWithZone(sub_26B5E165C()) init];
  sub_26B5D0208();
  return v1;
}

uint64_t sub_26B5CFF34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SynthesizeRequest(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E18, &qword_26B5E3C20);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E20, &qword_26B5E3C28);
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v23 - v12;
  if (qword_280407C38 != -1)
  {
    swift_once();
  }

  v14 = sub_26B5E175C();
  __swift_project_value_buffer(v14, qword_280408568);
  v15 = sub_26B5E173C();
  v16 = sub_26B5E1B9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v23 = v6;
    v18 = v2;
    v19 = a1;
    v20 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26B5BC000, v15, v16, "Enqueue synthesis request", v17, 2u);
    v21 = v20;
    a1 = v19;
    v2 = v18;
    v6 = v23;
    MEMORY[0x26D67BBE0](v21, -1, -1);
  }

  (*(v8 + 16))(v10, v2 + OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_requestStreamBuilder, v7);
  sub_26B5D2D50(a1, v6);
  sub_26B5E1ABC();
  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v24);
}

uint64_t sub_26B5D0208()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E80, &qword_26B5E3C70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  if (qword_280407C38 != -1)
  {
    swift_once();
  }

  v5 = sub_26B5E175C();
  __swift_project_value_buffer(v5, qword_280408568);
  v6 = sub_26B5E173C();
  v7 = sub_26B5E1B9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26B5BC000, v6, v7, "Start synthesis stream reading", v8, 2u);
    MEMORY[0x26D67BBE0](v8, -1, -1);
  }

  v9 = sub_26B5E1A9C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_26B5D37D0(0, 0, v4, &unk_26B5E3BB8, v10);
}

uint64_t sub_26B5D03D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[65] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407DB0, &qword_26B5E3BC0);
  v4[66] = v5;
  v4[67] = *(v5 - 8);
  v4[68] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407DB8, &qword_26B5E3BC8);
  v4[69] = v6;
  v4[70] = *(v6 - 8);
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407DC0, &qword_26B5E3BD0);
  v4[73] = v7;
  v4[74] = *(v7 - 8);
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v8 = type metadata accessor for SynthesizeRequest(0);
  v4[77] = v8;
  v4[78] = *(v8 - 8);
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407DC8, &qword_26B5E3BD8);
  v4[82] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407DD0, &qword_26B5E3BE0);
  v4[83] = v9;
  v4[84] = *(v9 - 8);
  v4[85] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407DD8, &qword_26B5E3BE8);
  v4[86] = v10;
  v4[87] = *(v10 - 8);
  v4[88] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B5D0700, 0, 0);
}

uint64_t sub_26B5D0700()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 672);
  v3 = *(v0 + 664);
  (*(v2 + 16))(v1, *(v0 + 520) + OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_requestStream, v3);
  sub_26B5E1ACC();
  (*(v2 + 8))(v1, v3);
  *(v0 + 712) = OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_delegate;
  *(v0 + 720) = OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_streamingResponses;
  swift_beginAccess();
  *(v0 + 808) = *MEMORY[0x277D858A0];
  v4 = swift_task_alloc();
  *(v0 + 728) = v4;
  *v4 = v0;
  v4[1] = sub_26B5D0858;
  v5 = *(v0 + 688);
  v6 = *(v0 + 656);

  return MEMORY[0x2822003E8](v6, 0, 0, v5);
}

uint64_t sub_26B5D0858()
{

  return MEMORY[0x2822009F8](sub_26B5D0954, 0, 0);
}

uint64_t sub_26B5D0954()
{
  v61 = v0;
  v1 = *(v0 + 656);
  if ((*(*(v0 + 624) + 48))(v1, 1, *(v0 + 616)) == 1)
  {
    (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_26B5D2CEC(v1, *(v0 + 648));
    if (qword_280407C38 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 648);
    v5 = *(v0 + 640);
    v6 = *(v0 + 632);
    v7 = sub_26B5E175C();
    *(v0 + 736) = __swift_project_value_buffer(v7, qword_280408568);
    sub_26B5D2D50(v4, v5);
    sub_26B5D2D50(v4, v6);
    v8 = sub_26B5E173C();
    v9 = sub_26B5E1B9C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 640);
    v12 = *(v0 + 632);
    if (v10)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v60 = v14;
      *v13 = 136446467;
      v15 = sub_26B5E15EC();
      v17 = v16;
      sub_26B5D2DB4(v11);
      v18 = sub_26B5D2F30(v15, v17, &v60);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2085;
      v19 = *v12;
      v20 = v12[1];

      sub_26B5D2DB4(v12);
      v21 = sub_26B5D2F30(v19, v20, &v60);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_26B5BC000, v8, v9, "Starting new TTS request %{public}s: %{sensitive}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D67BBE0](v14, -1, -1);
      MEMORY[0x26D67BBE0](v13, -1, -1);
    }

    else
    {

      sub_26B5D2DB4(v12);
      sub_26B5D2DB4(v11);
    }

    v22 = *(v0 + 712);
    v23 = *(v0 + 648);
    v24 = *(v0 + 520);
    sub_26B5E15EC();
    v25 = objc_allocWithZone(sub_26B5E167C());
    v26 = sub_26B5E166C();
    *(v0 + 744) = v26;
    v27 = *v23;
    v28 = v23[1];
    objc_allocWithZone(sub_26B5E169C());

    v29 = v26;
    v30 = sub_26B5E168C();
    *(v0 + 752) = v30;
    sub_26B5E16CC();
    sub_26B5E16DC();
    v31 = v30;
    sub_26B5E163C();

    sub_26B5D2E10(v24 + v22, v0 + 56);
    if (*(v0 + 80))
    {
      v32 = *(v0 + 648);
      v33 = *(v0 + 616);
      sub_26B5D2E88(v0 + 56, v0 + 416);
      sub_26B5CFB88(v0 + 56, &qword_280407DE0, &unk_26B5E3BF0);
      v34 = *(v0 + 440);
      v35 = *(v0 + 448);
      __swift_project_boxed_opaque_existential_1((v0 + 416), v34);
      (*(v35 + 8))(v32 + *(v33 + 24), v27, v28, v34, v35);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
    }

    else
    {
      sub_26B5CFB88(v0 + 56, &qword_280407DE0, &unk_26B5E3BF0);
    }

    v36 = *(v0 + 520);
    if (*(v36 + *(v0 + 720)) == 1)
    {
      v58 = *(v0 + 808);
      v37 = *(v0 + 576);
      v38 = *(v0 + 560);
      v39 = *(v0 + 552);
      v40 = *(v0 + 544);
      v41 = *(v0 + 536);
      v42 = *(v0 + 528);
      *(v0 + 496) = MEMORY[0x277D84F90];
      v43 = swift_task_alloc();
      *(v43 + 16) = v31;
      *(v43 + 24) = v36;
      sub_26B5E172C();
      (*(v41 + 104))(v40, v58, v42);
      sub_26B5E1B4C();

      sub_26B5E1ACC();
      (*(v38 + 8))(v37, v39);
      *(v0 + 760) = MEMORY[0x277D84F90];
      *(v0 + 768) = 0;
      v44 = swift_task_alloc();
      *(v0 + 776) = v44;
      *v44 = v0;
      v44[1] = sub_26B5D112C;
      v45 = *(v0 + 584);

      return MEMORY[0x2822005A8](v0 + 504, 0, 0, v45, v0 + 512);
    }

    else
    {
      v46 = *(v0 + 808);
      v59 = *(v0 + 576);
      v47 = *(v0 + 568);
      v48 = *(v0 + 560);
      v57 = *(v0 + 552);
      v49 = *(v0 + 544);
      v50 = *(v0 + 536);
      v51 = *(v0 + 528);
      v52 = swift_task_alloc();
      *(v52 + 16) = v31;
      *(v52 + 24) = v36;
      sub_26B5E172C();
      (*(v50 + 104))(v49, v46, v51);
      sub_26B5E1B4C();

      v53 = MEMORY[0x277D84F90];
      *(v0 + 480) = MEMORY[0x277D84F90];
      (*(v48 + 16))(v59, v47, v57);
      sub_26B5CFB40(&qword_280407DE8, &qword_280407DB8, &qword_26B5E3BC8, MEMORY[0x277D858E0]);
      sub_26B5E1AFC();
      *(v0 + 784) = v53;
      v54 = sub_26B5CFB40(&qword_280407DF0, &qword_280407DC0, &qword_26B5E3BD0, MEMORY[0x277D858D0]);
      v55 = swift_task_alloc();
      *(v0 + 792) = v55;
      *v55 = v0;
      v55[1] = sub_26B5D1770;
      v56 = *(v0 + 584);

      return MEMORY[0x282200308](v0 + 488, v56, v54);
    }
  }
}

uint64_t sub_26B5D112C()
{

  if (v0)
  {
    v1 = sub_26B5D1F00;
  }

  else
  {
    v1 = sub_26B5D123C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_26B5D123C()
{
  v1 = *(v0 + 504);
  if (v1)
  {
    v2 = *(v0 + 768);
    v3 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      sub_26B5E171C();
      if (*(v0 + 24) == 1869641075)
      {
        v4 = v1;
        MEMORY[0x26D67B190]();
        if (*((*(v0 + 496) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 496) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26B5E1A3C();
        }

        sub_26B5E1A4C();

        *(v0 + 760) = *(v0 + 496);
      }

      else
      {
        sub_26B5D2E10(*(v0 + 520) + *(v0 + 712), v0 + 336);
        if (*(v0 + 360))
        {
          sub_26B5D2E88(v0 + 336, v0 + 376);
          sub_26B5CFB88(v0 + 336, &qword_280407DE0, &unk_26B5E3BF0);
          v9 = *(v0 + 400);
          v10 = *(v0 + 408);
          __swift_project_boxed_opaque_existential_1((v0 + 376), v9);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407DF8, &qword_26B5E3C00);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_26B5E3AF0;
          *(v11 + 32) = v1;
          v12 = *(v10 + 16);
          v13 = v1;
          v12(v11, v9, v10);

          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
        }

        else
        {

          sub_26B5CFB88(v0 + 336, &qword_280407DE0, &unk_26B5E3BF0);
        }
      }

      *(v0 + 768) = v3;
      v14 = swift_task_alloc();
      *(v0 + 776) = v14;
      *v14 = v0;
      v14[1] = sub_26B5D112C;
      v15 = *(v0 + 584);

      return MEMORY[0x2822005A8](v0 + 504, 0, 0, v15, v0 + 512);
    }

    __break(1u);
LABEL_19:
    if (!sub_26B5E1C6C())
    {
      goto LABEL_20;
    }

LABEL_9:
    sub_26B5D2E10(*(v0 + 520) + *(v0 + 712), v0 + 256);
    v6 = *(v0 + 760);
    if (*(v0 + 280))
    {
      sub_26B5D2E88(v0 + 256, v0 + 296);
      sub_26B5CFB88(v0 + 256, &qword_280407DE0, &unk_26B5E3BF0);
      v7 = *(v0 + 320);
      v8 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v7);
      (*(v8 + 16))(v6, v7, v8);

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
    }

    else
    {

      sub_26B5CFB88(v0 + 256, &qword_280407DE0, &unk_26B5E3BF0);
    }

    goto LABEL_21;
  }

  v5 = *(v0 + 760);
  (*(*(v0 + 592) + 8))(*(v0 + 608), *(v0 + 584));
  if (v5 >> 62)
  {
    goto LABEL_19;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_20:

LABEL_21:
  v16 = sub_26B5E173C();
  v17 = sub_26B5E1B9C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 768);
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v18;
    _os_log_impl(&dword_26B5BC000, v16, v17, "Generated %ld audio messages", v19, 0xCu);
    MEMORY[0x26D67BBE0](v19, -1, -1);
  }

  sub_26B5D2E10(*(v0 + 520) + *(v0 + 712), v0 + 136);
  v20 = *(v0 + 752);
  v21 = *(v0 + 744);
  v22 = *(v0 + 648);
  if (*(v0 + 160))
  {
    v23 = *(v0 + 616);
    sub_26B5D2E88(v0 + 136, v0 + 176);
    sub_26B5CFB88(v0 + 136, &qword_280407DE0, &unk_26B5E3BF0);
    v24 = *(v0 + 200);
    v25 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v24);
    (*(v25 + 24))(v22 + *(v23 + 24), v24, v25);

    sub_26B5D2DB4(v22);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  }

  else
  {

    sub_26B5D2DB4(v22);
    sub_26B5CFB88(v0 + 136, &qword_280407DE0, &unk_26B5E3BF0);
  }

  v26 = swift_task_alloc();
  *(v0 + 728) = v26;
  *v26 = v0;
  v26[1] = sub_26B5D0858;
  v27 = *(v0 + 688);
  v28 = *(v0 + 656);

  return MEMORY[0x2822003E8](v28, 0, 0, v27);
}

uint64_t sub_26B5D1770()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    (*(v2[74] + 8))(v2[75], v2[73]);

    v3 = sub_26B5D1D18;
  }

  else
  {
    v3 = sub_26B5D18AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26B5D18AC()
{
  v1 = v0[61];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x26D67B190]();
    if (*((v0[60] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[60] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26B5E1A3C();
    }

    sub_26B5E1A4C();

    v0[98] = v0[60];
    v3 = sub_26B5CFB40(&qword_280407DF0, &qword_280407DC0, &qword_26B5E3BD0, MEMORY[0x277D858D0]);
    v4 = swift_task_alloc();
    v0[99] = v4;
    *v4 = v0;
    v4[1] = sub_26B5D1770;
    v5 = v0[73];

    return MEMORY[0x282200308](v0 + 61, v5, v3);
  }

  else
  {
    v6 = v0[89];
    v7 = v0[71];
    v8 = v0[70];
    v9 = v0[69];
    v10 = v0[65];
    (*(v0[74] + 8))(v0[75], v0[73]);
    (*(v8 + 8))(v7, v9);
    sub_26B5D2E10(v10 + v6, (v0 + 12));
    if (v0[15])
    {
      v11 = v0[98];
      sub_26B5D2E88((v0 + 12), (v0 + 27));
      sub_26B5CFB88((v0 + 12), &qword_280407DE0, &unk_26B5E3BF0);
      v12 = v0[30];
      v13 = v0[31];
      __swift_project_boxed_opaque_existential_1(v0 + 27, v12);
      (*(v13 + 16))(v11, v12, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
    }

    else
    {
      sub_26B5CFB88((v0 + 12), &qword_280407DE0, &unk_26B5E3BF0);
    }

    v14 = sub_26B5E173C();
    v15 = sub_26B5E1B9C();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[98];
    if (v16)
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      if (v17 >> 62)
      {
        v19 = sub_26B5E1C6C();
      }

      else
      {
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 4) = v19;

      _os_log_impl(&dword_26B5BC000, v14, v15, "Generated %ld audio messages", v18, 0xCu);
      MEMORY[0x26D67BBE0](v18, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    sub_26B5D2E10(v0[65] + v0[89], (v0 + 17));
    v20 = v0[94];
    v21 = v0[93];
    v22 = v0[81];
    if (v0[20])
    {
      v23 = v0[77];
      sub_26B5D2E88((v0 + 17), (v0 + 22));
      sub_26B5CFB88((v0 + 17), &qword_280407DE0, &unk_26B5E3BF0);
      v24 = v0[25];
      v25 = v0[26];
      __swift_project_boxed_opaque_existential_1(v0 + 22, v24);
      (*(v25 + 24))(v22 + *(v23 + 24), v24, v25);

      sub_26B5D2DB4(v22);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
    }

    else
    {

      sub_26B5D2DB4(v22);
      sub_26B5CFB88((v0 + 17), &qword_280407DE0, &unk_26B5E3BF0);
    }

    v26 = swift_task_alloc();
    v0[91] = v26;
    *v26 = v0;
    v26[1] = sub_26B5D0858;
    v27 = v0[86];
    v28 = v0[82];

    return MEMORY[0x2822003E8](v28, 0, 0, v27);
  }
}

uint64_t sub_26B5D1D18()
{
  (*(v0[70] + 8))(v0[71], v0[69]);
  v1 = v0[100];
  v2 = v1;
  v3 = sub_26B5E173C();
  v4 = sub_26B5E1BAC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[94];
  v7 = v0[93];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = sub_26B5E150C();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_26B5BC000, v3, v4, "Failed to produce TTS audio: %@", v8, 0xCu);
    sub_26B5CFB88(v9, &unk_280408040, "$E");
    MEMORY[0x26D67BBE0](v9, -1, -1);
    MEMORY[0x26D67BBE0](v8, -1, -1);
  }

  else
  {
  }

  sub_26B5D2DB4(v0[81]);
  v11 = swift_task_alloc();
  v0[91] = v11;
  *v11 = v0;
  v11[1] = sub_26B5D0858;
  v12 = v0[86];
  v13 = v0[82];

  return MEMORY[0x2822003E8](v13, 0, 0, v12);
}

uint64_t sub_26B5D1F00()
{
  (*(v0[74] + 8))(v0[76], v0[73]);

  v1 = v0[64];
  v2 = v1;
  v3 = sub_26B5E173C();
  v4 = sub_26B5E1BAC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[94];
  v7 = v0[93];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = sub_26B5E150C();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_26B5BC000, v3, v4, "Failed to produce TTS audio: %@", v8, 0xCu);
    sub_26B5CFB88(v9, &unk_280408040, "$E");
    MEMORY[0x26D67BBE0](v9, -1, -1);
    MEMORY[0x26D67BBE0](v8, -1, -1);
  }

  else
  {
  }

  sub_26B5D2DB4(v0[81]);
  v11 = swift_task_alloc();
  v0[91] = v11;
  *v11 = v0;
  v11[1] = sub_26B5D0858;
  v12 = v0[86];
  v13 = v0[82];

  return MEMORY[0x2822003E8](v13, 0, 0, v12);
}

void sub_26B5D20F4()
{
  v0 = sub_26B5E16AC();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 description];
    v3 = sub_26B5E199C();
    v5 = v4;
  }

  else
  {
    v5 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  if (qword_280407C38 != -1)
  {
    swift_once();
  }

  v6 = sub_26B5E175C();
  __swift_project_value_buffer(v6, qword_280408568);

  oslog = sub_26B5E173C();
  v7 = sub_26B5E1BBC();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    v10 = sub_26B5D2F30(v3, v5, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_26B5BC000, oslog, v7, "TTS voice used: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D67BBE0](v9, -1, -1);
    MEMORY[0x26D67BBE0](v8, -1, -1);
  }

  else
  {
  }
}

void sub_26B5D22B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v16 = a3;
  v14[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E08, &qword_26B5E3C10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = *(v5 + 16);
  v8(v14 - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v14[0] = *(v5 + 32);
  (v14[0])(v10 + v9, v7, v4);
  sub_26B5E169C();
  sub_26B5E16BC();
  v11 = *(v16 + OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_ttsSession);
  v8(v7, v15, v4);
  v12 = swift_allocObject();
  (v14[0])(v12 + v9, v7, v4);
  v13 = v11;
  sub_26B5E164C();
}

uint64_t sub_26B5D24A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E10, &qword_26B5E3C18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - v4;
  v8[1] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E08, &qword_26B5E3C10);
  sub_26B5E1B0C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26B5D25A4(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_280407C38 != -1)
    {
      swift_once();
    }

    v3 = sub_26B5E175C();
    __swift_project_value_buffer(v3, qword_280408568);
    v4 = a1;
    v5 = sub_26B5E173C();
    v6 = sub_26B5E1BAC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = sub_26B5E150C();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_26B5BC000, v5, v6, "Failed to synthesize TTS audio: %@", v7, 0xCu);
      sub_26B5CFB88(v8, &unk_280408040, "$E");
      MEMORY[0x26D67BBE0](v8, -1, -1);
      MEMORY[0x26D67BBE0](v7, -1, -1);
    }
  }

  else
  {
    if (qword_280407C38 != -1)
    {
      swift_once();
    }

    v10 = sub_26B5E175C();
    __swift_project_value_buffer(v10, qword_280408568);
    v5 = sub_26B5E173C();
    v11 = sub_26B5E1B9C();
    if (os_log_type_enabled(v5, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26B5BC000, v5, v11, "Finished synthesize request successfully", v12, 2u);
      MEMORY[0x26D67BBE0](v12, -1, -1);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E08, &qword_26B5E3C10);
  return sub_26B5E1B1C();
}

uint64_t sub_26B5D27E0()
{
  v1 = OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_requestStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407DD0, &qword_26B5E3BE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_requestStreamBuilder;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E18, &qword_26B5E3C20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_26B5CFB88(v0 + OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_delegate, &qword_280407DE0, &unk_26B5E3BF0);

  return swift_deallocClassInstance();
}

void sub_26B5D293C(uint64_t a1)
{
  sub_26B5D2AE8(319, &qword_280407D80, type metadata accessor for SynthesizeRequest, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_26B5D2AE8(319, &qword_280407D88, type metadata accessor for SynthesizeRequest, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_26B5D2AB0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26B5D2AE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26B5D2B74(uint64_t a1)
{
  sub_26B5E161C();
  if (v1 <= 0x3F)
  {
    sub_26B5D2AE8(319, &qword_280407DA8, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B5D2C38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B5CF96C;

  return sub_26B5D03D0(a1, v4, v5, v6);
}

uint64_t sub_26B5D2CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SynthesizeRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B5D2D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SynthesizeRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B5D2DB4(uint64_t a1)
{
  v2 = type metadata accessor for SynthesizeRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B5D2E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407DE0, &unk_26B5E3BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B5D2E88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
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

unint64_t sub_26B5D2F30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26B5D2FFC(v11, 0, 0, 1, a1, a2);
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
    sub_26B5D3154(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_26B5D2FFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26B5D31B0(a5, a6);
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
    result = sub_26B5E1C4C();
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_26B5D3154(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_26B5D31B0(uint64_t a1, unint64_t a2)
{
  v3 = sub_26B5D31FC(a1, a2);
  sub_26B5D332C(&unk_287C19468);
  return v3;
}

void *sub_26B5D31FC(uint64_t a1, unint64_t a2)
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

  v6 = sub_26B5D3418(v5, 0);
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

  result = sub_26B5E1C4C();
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
        v10 = sub_26B5E19DC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26B5D3418(v10, 0);
        result = sub_26B5E1BFC();
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

uint64_t sub_26B5D332C(uint64_t result)
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

  result = sub_26B5D348C(result, v11, 1, v3);
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

void *sub_26B5D3418(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E00, &qword_26B5E3C08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26B5D348C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E00, &qword_26B5E3C08);
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

uint64_t objectdestroy_29Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E08, &qword_26B5E3C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26B5D3648(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E08, &qword_26B5E3C10) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_26B5D36DC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26B5DC0D8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26B5D37D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E80, &qword_26B5E3C70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26B5DD544(a3, v25 - v10, &qword_280407E80, &qword_26B5E3C70);
  v12 = sub_26B5E1A9C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26B5CFB88(v11, &qword_280407E80, &qword_26B5E3C70);
  }

  else
  {
    sub_26B5E1A8C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26B5E1A5C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26B5E19AC() + 32;
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

      sub_26B5CFB88(a3, &qword_280407E80, &qword_26B5E3C70);

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

  sub_26B5CFB88(a3, &qword_280407E80, &qword_26B5E3C70);
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

uint64_t sub_26B5D3B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408058, &qword_26B5E3D58);
  v6[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408060, &qword_26B5E3D60);
  v6[6] = swift_task_alloc();
  v7 = sub_26B5E161C();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B5D3CA4, 0, 0);
}

uint64_t sub_26B5D3CA4()
{
  v1 = v0[6];
  v2 = v0[5];
  (*(v0[8] + 16))();
  v3 = *MEMORY[0x277CDCE30];
  v4 = sub_26B5E195C();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = sub_26B5E18EC();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408068, &unk_26B5E3D68);
  v7 = sub_26B5E18FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26B5E3C40;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x277CDCB08], v7);
  v13(v12 + v9, *MEMORY[0x277CDCB10], v7);
  v13(v12 + 2 * v9, *MEMORY[0x277CDCB28], v7);
  sub_26B5DC1E4(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26B5E191C();
  swift_allocObject();
  v14 = sub_26B5E190C();
  v0[10] = v14;
  sub_26B5E189C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408070, &qword_26B5E3A50);
  v15 = swift_allocObject();
  v0[11] = v15;
  *(v15 + 16) = xmmword_26B5E39A0;
  v16 = sub_26B5DD3F4(&qword_280408078, MEMORY[0x277CDCB98], MEMORY[0x277CDCB88]);
  *(v15 + 32) = v14;
  *(v15 + 40) = v16;

  v17 = swift_task_alloc();
  v0[12] = v17;
  *v17 = v0;
  v17[1] = sub_26B5D403C;

  return MEMORY[0x28212BBB8](v15);
}

uint64_t sub_26B5D403C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_26B5D4224;
  }

  else
  {

    *(v4 + 112) = a1;
    v5 = sub_26B5D416C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26B5D416C()
{
  v1 = v0[14];
  v2 = v0[3];
  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26B5D4224()
{
  v1 = v0[13];
  v2 = v0[3];

  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

void sub_26B5D4568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26B5E150C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void *STSpeechTranslator.preferredOutputAudioFormat.getter()
{
  v1 = OBJC_IVAR___STSpeechTranslator_preferredOutputAudioFormat;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void STSpeechTranslator.preferredOutputAudioFormat.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___STSpeechTranslator_preferredOutputAudioFormat;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id STSpeechTranslator.init(configuration:delegate:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 delegate:a2];

  swift_unknownObjectRelease();
  return v3;
}

char *STSpeechTranslator.init(configuration:delegate:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v41[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408120, &unk_26B5E3C60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v41 - v6;
  v8 = sub_26B5E161C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v41 - v13;
  v15 = OBJC_IVAR___STSpeechTranslator_speechAnalyzer;
  *&v3[OBJC_IVAR___STSpeechTranslator_speechAnalyzer] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___STSpeechTranslator_preferredOutputAudioFormat] = 0;
  *&v3[OBJC_IVAR___STSpeechTranslator_opusDecoder] = 0;
  *&v3[OBJC_IVAR___STSpeechTranslator_pcmConverter] = 0;
  *&v3[OBJC_IVAR___STSpeechTranslator_configuration] = a1;
  v16 = a1;
  v17 = [v16 sourceLocale];
  sub_26B5E160C();

  type metadata accessor for SpeechAnalyzerImpl(0);
  swift_allocObject();
  *&v3[v15] = sub_26B5CC50C(v14);

  v18 = [v16 sourceLocale];
  sub_26B5E160C();

  v19 = [v16 targetLocale];
  sub_26B5E160C();

  v20 = objc_allocWithZone(MEMORY[0x277CE1B38]);
  v21 = sub_26B5E15FC();
  v22 = sub_26B5E15FC();
  v23 = [v20 initWithSourceLocale:v21 targetLocale:v22];

  v24 = *(v9 + 8);
  v24(v12, v8);
  v24(v14, v8);
  v25 = [v16 offlineMTModel];
  if (v25)
  {
    v26 = v25;
    sub_26B5E153C();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = sub_26B5E154C();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v7, v27, 1, v28);
  v30 = [v16 taskHint];
  v31 = 0;
  if ((*(v29 + 48))(v7, 1, v28) != 1)
  {
    v31 = sub_26B5E152C();
    (*(v29 + 8))(v7, v28);
  }

  v32 = [objc_allocWithZone(MEMORY[0x277CE1BD0]) initWithLocalePair:v23 offlineMTModel:v31 taskHint:v30];

  *&v3[OBJC_IVAR___STSpeechTranslator_utteranceTranslator] = v32;
  type metadata accessor for SpeechSynthesizer(0);
  swift_allocObject();
  *&v3[OBJC_IVAR___STSpeechTranslator_ttsSynthesizer] = sub_26B5CFC5C(1);
  v43.receiver = v3;
  v43.super_class = STSpeechTranslator;
  v33 = objc_msgSendSuper2(&v43, sel_init);
  swift_unknownObjectWeakAssign();
  v34 = *&v33[OBJC_IVAR___STSpeechTranslator_speechAnalyzer];
  if (v34)
  {
    *(v34 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_delegate + 8) = &off_287C196D8;
    swift_unknownObjectWeakAssign();
  }

  v35 = *&v33[OBJC_IVAR___STSpeechTranslator_utteranceTranslator];
  v36 = v33;
  v37 = [v35 setDelegate_];
  v38 = *&v36[OBJC_IVAR___STSpeechTranslator_ttsSynthesizer];
  v42[3] = type metadata accessor for STSpeechTranslator(v37);
  v42[4] = &off_287C196E8;

  swift_unknownObjectRelease();
  v42[0] = v36;
  v39 = OBJC_IVAR____TtC17SpeechTranslation17SpeechSynthesizer_delegate;
  swift_beginAccess();
  sub_26B5D4CB4(v42, v38 + v39);
  swift_endAccess();

  return v36;
}

uint64_t sub_26B5D4CB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407DE0, &unk_26B5E3BF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id STSpeechTranslator.init(source:target:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_26B5E15FC();
  v8 = sub_26B5E15FC();
  v9 = [v6 initWithSourceLocale:v7 targetLocale:v8 delegate:a3];
  swift_unknownObjectRelease();

  v10 = sub_26B5E161C();
  v11 = *(*(v10 - 8) + 8);
  v11(a2, v10);
  v11(a1, v10);
  return v9;
}

id STSpeechTranslator.init(source:target:delegate:)(char *a1, char *a2, uint64_t a3)
{
  v3 = sub_26B5DC508(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_26B5D4F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_26B5D4F90, 0, 0);
}

uint64_t sub_26B5D4F90()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___STSpeechTranslator_speechAnalyzer);
  *(v0 + 40) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_26B5D5080;

    return sub_26B5CC82C();
  }

  else
  {
    (*(v0 + 24))(0);
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_26B5D5080()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_26B5D5204;
  }

  else
  {

    v2 = sub_26B5D519C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B5D519C()
{
  (*(v0 + 24))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B5D5204()
{
  v1 = v0[7];
  v2 = v0[3];

  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

void sub_26B5D52D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_26B5E150C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_26B5D5338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_26B5D535C, 0, 0);
}

uint64_t sub_26B5D535C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___STSpeechTranslator_speechAnalyzer);
  *(v0 + 40) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_26B5D5448;

    return sub_26B5CDD94();
  }

  else
  {
    (*(v0 + 24))();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_26B5D5448()
{

  return MEMORY[0x2822009F8](sub_26B5D5560, 0, 0);
}

uint64_t sub_26B5D5560()
{
  (*(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B5D5600(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E80, &qword_26B5E3C70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = sub_26B5E1A9C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a6;
  v17[6] = v15;
  v18 = a1;
  sub_26B5D37D0(0, 0, v13, a7, v17);
}

uint64_t sub_26B5D5740(void *a1)
{
  v3 = sub_26B5E193C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D38, &qword_26B5E3AC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408050, &qword_26B5E3D20);
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = *(v1 + OBJC_IVAR___STSpeechTranslator_speechAnalyzer);
  if (v13)
  {
    (*(v5 + 16))(v7, v13 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_inputStreamBuilder, v4);

    v14 = a1;
    sub_26B5E192C();
    sub_26B5E1ABC();

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_26B5D59E8()
{
  v1 = *(v0[2] + OBJC_IVAR___STSpeechTranslator_speechAnalyzer);
  v0[3] = v1;
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_speechAnalyzer);
    v0[4] = v2;

    if (v2)
    {

      v3 = swift_task_alloc();
      v0[5] = v3;
      *v3 = v0;
      v3[1] = sub_26B5D5AE8;

      return MEMORY[0x28212BBF0]();
    }
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_26B5D5AE8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_26B5D5C64;
  }

  else
  {
    v2 = sub_26B5D5BFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B5D5BFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B5D5C64()
{

  if (qword_280407C30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_26B5E175C();
  __swift_project_value_buffer(v2, qword_280408550);
  v3 = v1;
  v4 = sub_26B5E173C();
  v5 = sub_26B5E1BAC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = sub_26B5E150C();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_26B5BC000, v4, v5, "Failed to finish audio: %@", v8, 0xCu);
    sub_26B5CFB88(v9, &unk_280408040, "$E");
    MEMORY[0x26D67BBE0](v9, -1, -1);
    MEMORY[0x26D67BBE0](v8, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

id sub_26B5D5F5C()
{
  result = [v0 preferredOutputAudioFormat];
  if (!result)
  {
    v2 = *&v0[OBJC_IVAR___STSpeechTranslator_speechAnalyzer];
    if (v2 && (v3 = *(v2 + OBJC_IVAR____TtC17SpeechTranslation18SpeechAnalyzerImpl_inputAudioFormat)) != 0)
    {
      v4 = v3;
      v5 = v3;
      return v4;
    }

    else
    {
      return [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:4 sampleRate:2 channels:0 interleaved:48000.0];
    }
  }

  return result;
}

uint64_t sub_26B5D6108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26B5E15DC();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B5D61C8, 0, 0);
}

uint64_t sub_26B5D61C8()
{
  v44 = v0;
  v1 = [*(v0 + 16) cleanedTextVersion];
  if ([v1 eligibleForTranslation])
  {
    if (qword_280407C30 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 16);
    v3 = sub_26B5E175C();
    __swift_project_value_buffer(v3, qword_280408550);
    v4 = v2;
    v5 = sub_26B5E173C();
    v6 = sub_26B5E1B9C();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 16);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v43 = v10;
      *v9 = 67109379;
      *(v9 + 4) = [v8 isFinal];

      *(v9 + 8) = 2085;
      v11 = [v8 text];
      v12 = sub_26B5E199C();
      v14 = v13;

      v15 = sub_26B5D2F30(v12, v14, &v43);

      *(v9 + 10) = v15;
      _os_log_impl(&dword_26B5BC000, v5, v6, "Transcription with isFinal = %{BOOL}d, cleaned text: %{sensitive}s", v9, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x26D67BBE0](v10, -1, -1);
      MEMORY[0x26D67BBE0](v9, -1, -1);
    }

    else
    {
    }

    v29 = [*(v0 + 24) delegate];
    if (v29)
    {
      v30 = v29;
      if ([v29 respondsToSelector_])
      {
        [v30 translator:*(v0 + 24) producedSpeechResult:v1];
      }

      swift_unknownObjectRelease();
    }

    v31 = [v1 text];
    if (!v31)
    {
      sub_26B5E199C();
      v31 = sub_26B5E198C();
    }

    v33 = *(v0 + 40);
    v32 = *(v0 + 48);
    v35 = *(v0 + 24);
    v34 = *(v0 + 32);
    v36 = *(v0 + 16);
    v37 = [v1 isFinal];
    v38 = [objc_allocWithZone(MEMORY[0x277CE1BC0]) initWithText:v31 isFinal:v37];

    v39 = [v36 identifier];
    sub_26B5E15BC();

    v40 = sub_26B5E15AC();
    (*(v33 + 8))(v32, v34);
    [v38 setSourceIdentifier_];

    [*(v35 + OBJC_IVAR___STSpeechTranslator_utteranceTranslator) addInput_];
  }

  else
  {
    if (qword_280407C30 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 16);
    v17 = sub_26B5E175C();
    __swift_project_value_buffer(v17, qword_280408550);
    v18 = v16;
    v19 = sub_26B5E173C();
    v20 = sub_26B5E1B8C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 16);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43 = v23;
      *v22 = 136642819;
      v24 = [v21 text];
      v25 = sub_26B5E199C();
      v27 = v26;

      v28 = sub_26B5D2F30(v25, v27, &v43);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_26B5BC000, v19, v20, "Skipping empty or punctuation only recognition: %{sensitive}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x26D67BBE0](v23, -1, -1);
      MEMORY[0x26D67BBE0](v22, -1, -1);
    }
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_26B5D6674(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E80, &qword_26B5E3C70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_26B5E1A9C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = v1;
  v8 = a1;
  v9 = v1;
  sub_26B5D37D0(0, 0, v5, &unk_26B5E3D90, v7);
}

uint64_t STSpeechTranslator.translator(_:didProduceTranslatedOutputs:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E80, &qword_26B5E3C70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_26B5E1A9C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  v8[5] = v2;

  v9 = v2;
  sub_26B5D37D0(0, 0, v6, &unk_26B5E3C80, v8);
}

uint64_t sub_26B5D6890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = sub_26B5E161C();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = type metadata accessor for SynthesizeRequest(0);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D90, &unk_26B5E3B80);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = sub_26B5E15DC();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B5D6A20, 0, 0);
}

uint64_t sub_26B5D6A20()
{
  v1 = v0[12];
  if (v1 >> 62)
  {
    result = sub_26B5E1C6C();
    if (!result)
    {
      goto LABEL_32;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_32;
    }
  }

  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = v0[22];
  v45 = v0[17];
  v46 = v0[18];
  v44 = v0[12] + 32;
  v52 = (v4 + 56);
  v48 = (v4 + 48);
  v49 = v1 & 0xC000000000000001;
  v47 = (v4 + 8);
  v43 = (v0[15] + 32);
  v5 = &unk_279CF8000;
  v50 = result;
  do
  {
    v54 = v3;
    if (v49)
    {
      v6 = MEMORY[0x26D67B3B0](v3, v0[12]);
    }

    else
    {
      v6 = *(v44 + 8 * v3);
    }

    v7 = v6;
    v8 = [v6 translatedText];
    if (!v8)
    {
      sub_26B5E199C();
      v8 = sub_26B5E198C();
    }

    v9 = [v7 sourceText];
    if (!v9)
    {
      sub_26B5E199C();
      v9 = sub_26B5E198C();
    }

    v10 = [v7 v5[85]];
    sub_26B5E15CC();
    v11 = [v7 sourceIdentifier];
    v53 = v7;
    if (v11)
    {
      v12 = v11;
      sub_26B5E15BC();

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = v0[20];
    v15 = v0[21];
    v51 = *v52;
    (*v52)(v14, v13, 1, v15);
    v16 = sub_26B5E15AC();
    if ((*v48)(v14, 1, v15) == 1)
    {
      v17 = 0;
      v18 = v47;
    }

    else
    {
      v20 = v0[20];
      v19 = v0[21];
      v17 = sub_26B5E15AC();
      v18 = v47;
      (*v47)(v20, v19);
    }

    v21 = v0[23];
    v22 = v0[21];
    v23 = v0[13];
    v24 = [objc_allocWithZone(STTranslationResult) initWithTranslation:v8 sourceText:v9 isFinal:v10 identifier:v16 sourceIdentifier:v17];

    (*v18)(v21, v22);
    v25 = [v23 delegate];
    v5 = &unk_279CF8000;
    if (v25)
    {
      v26 = v25;
      if ([v25 respondsToSelector_])
      {
        [v26 translator:v0[13] producedTranslationResult:v24];
      }

      swift_unknownObjectRelease();
    }

    if (![v24 isFinal] || (v0[5] = &type metadata for TranslateFeatures, v27 = sub_26B5DD71C(), v0[6] = v27, *(v0 + 16) = 1, v28 = sub_26B5E162C(), __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2), (v28 & 1) != 0) && (v0[10] = &type metadata for TranslateFeatures, v0[11] = v27, *(v0 + 56) = 0, v29 = sub_26B5E162C(), __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7), (v29 & 1) != 0))
    {
    }

    else
    {
      v30 = [v53 translatedText];
      v31 = sub_26B5E199C();
      v33 = v32;

      v34 = [v53 locale];
      sub_26B5E160C();

      v35 = [v53 sourceIdentifier];
      if (v35)
      {
        v36 = v35;
        sub_26B5E15BC();

        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v39 = v0[18];
      v38 = v0[19];
      v40 = v0[16];
      v41 = v0[14];
      v51(v38, v37, 1, v0[21]);
      *v39 = v31;
      *(v46 + 8) = v33;
      (*v43)(v39 + *(v45 + 20), v40, v41);
      sub_26B5DD770(v38, v39 + *(v45 + 24));

      sub_26B5CFF34(v39);

      sub_26B5D2DB4(v39);
    }

    v3 = v54 + 1;
  }

  while (v50 != v54 + 1);
LABEL_32:

  v42 = v0[1];

  return v42();
}

uint64_t STSpeechTranslator.translator(_:didEncounterError:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E80, &qword_26B5E3C70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_26B5E1A9C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  v8[5] = v2;
  v9 = a2;
  v10 = v2;
  sub_26B5D37D0(0, 0, v6, &unk_26B5E3C90, v8);
}

uint64_t sub_26B5D7228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_26B5D7248, 0, 0);
}

uint64_t sub_26B5D7248()
{
  if (qword_280407C30 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_26B5E175C();
  __swift_project_value_buffer(v2, qword_280408550);
  v3 = v1;
  v4 = sub_26B5E173C();
  v5 = sub_26B5E1BAC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = sub_26B5E150C();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_26B5BC000, v4, v5, "Utterance translator encountered an error: %@", v6, 0xCu);
    sub_26B5CFB88(v7, &unk_280408040, "$E");
    MEMORY[0x26D67BBE0](v7, -1, -1);
    MEMORY[0x26D67BBE0](v6, -1, -1);
  }

  v9 = v0[3];

  v10 = [v9 delegate];
  if (v10)
  {
    v11 = v10;
    if ([v10 respondsToSelector_])
    {
      v12 = v0[3];
      v13 = sub_26B5E150C();
      [v11 translator:v12 didFinishWithError:v13];
    }

    swift_unknownObjectRelease();
  }

  v14 = v0[1];

  return v14();
}

uint64_t STSpeechTranslator.translatorDidFinish(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407E80, &qword_26B5E3C70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_26B5E1A9C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_26B5D37D0(0, 0, v3, &unk_26B5E3CA0, v5);
}

uint64_t sub_26B5D7668()
{
  if (qword_280407C30 != -1)
  {
    swift_once();
  }

  v1 = sub_26B5E175C();
  __swift_project_value_buffer(v1, qword_280408550);
  v2 = sub_26B5E173C();
  v3 = sub_26B5E1BBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26B5BC000, v2, v3, "Streaming utterance translator finished", v4, 2u);
    MEMORY[0x26D67BBE0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = [v5 delegate];
  if (v6)
  {
    v7 = v6;
    if ([v6 respondsToSelector_])
    {
      [v7 translator:*(v0 + 16) didFinishWithError:0];
    }

    swift_unknownObjectRelease();
  }

  v8 = *(v0 + 8);

  return v8();
}

void sub_26B5D78DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D90, &unk_26B5E3B80);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = *&v3[OBJC_IVAR___STSpeechTranslator_opusDecoder];
  *&v3[OBJC_IVAR___STSpeechTranslator_opusDecoder] = 0;

  if (qword_280407C30 != -1)
  {
    swift_once();
  }

  v17 = sub_26B5E175C();
  __swift_project_value_buffer(v17, qword_280408550);
  sub_26B5DD544(a1, v15, &qword_280407D90, &unk_26B5E3B80);
  v18 = sub_26B5E173C();
  v19 = sub_26B5E1B8C();
  if (os_log_type_enabled(v18, v19))
  {
    v37 = a1;
    v38 = a3;
    v39 = v3;
    v20 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v20 = 136446210;
    sub_26B5DD544(v15, v13, &qword_280407D90, &unk_26B5E3B80);
    v21 = sub_26B5E15DC();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v13, 1, v21) == 1)
    {
      sub_26B5CFB88(v13, &qword_280407D90, &unk_26B5E3B80);
      v23 = 0xE600000000000000;
      v24 = 0x3E6C6C756E3CLL;
    }

    else
    {
      v24 = sub_26B5E159C();
      v23 = v25;
      (*(v22 + 8))(v13, v21);
    }

    sub_26B5CFB88(v15, &qword_280407D90, &unk_26B5E3B80);
    v26 = sub_26B5D2F30(v24, v23, &v41);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_26B5BC000, v18, v19, "Start producing new audio for: %{public}s", v20, 0xCu);
    v27 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x26D67BBE0](v27, -1, -1);
    MEMORY[0x26D67BBE0](v20, -1, -1);

    v4 = v39;
    a1 = v37;
  }

  else
  {

    sub_26B5CFB88(v15, &qword_280407D90, &unk_26B5E3B80);
  }

  sub_26B5DD544(a1, v10, &qword_280407D90, &unk_26B5E3B80);
  v28 = sub_26B5E15DC();
  v29 = *(v28 - 8);
  v30 = 0;
  if ((*(v29 + 48))(v10, 1, v28) != 1)
  {
    v30 = sub_26B5E15AC();
    (*(v29 + 8))(v10, v28);
  }

  v31 = objc_allocWithZone(STGeneratedAudioMetadata);
  v32 = sub_26B5E198C();
  v33 = [v31 initWithUUID:v30 text:v32];

  v34 = [v4 delegate];
  if (v34)
  {
    v35 = v34;
    if ([v34 respondsToSelector_])
    {
      [v35 translator:v4 willStartTranslatedAudioWithMetadata:v33];
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_26B5D7D54(unint64_t a1)
{
  v162 = *MEMORY[0x277D85DE8];
  if (qword_280407C30 == -1)
  {
    goto LABEL_2;
  }

LABEL_143:
  swift_once();
LABEL_2:
  v2 = sub_26B5E175C();
  __swift_project_value_buffer(v2, qword_280408550);
  v3 = sub_26B5E173C();
  v4 = sub_26B5E1B9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26B5BC000, v3, v4, "Received audio packet", v5, 2u);
    MEMORY[0x26D67BBE0](v5, -1, -1);
  }

  v6 = (a1 >> 62);
  if (a1 >> 62)
  {
    v7 = sub_26B5E1C6C();
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  v150 = (a1 & 0xC000000000000001);
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(a1 + 32);
      goto LABEL_9;
    }

    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  while (1)
  {
    v8 = MEMORY[0x26D67B3B0](0, a1);
LABEL_9:
    v9 = v8;
    sub_26B5E171C();
    v159 = v155;
    v160 = v156;
    v161 = v157;
    v10 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithStreamDescription_];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v146 = v9;
    v12 = v10;
    v13 = sub_26B5E173C();
    v14 = sub_26B5E1B9C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v11;
      v17 = v12;
      _os_log_impl(&dword_26B5BC000, v13, v14, "TTS Audio format: %@", v15, 0xCu);
      sub_26B5CFB88(v16, &unk_280408040, "$E");
      MEMORY[0x26D67BBE0](v16, -1, -1);
      MEMORY[0x26D67BBE0](v15, -1, -1);
    }

    v147 = [v148 currentOutputFormat];
    if (!v147)
    {
      v37 = sub_26B5E173C();
      v38 = sub_26B5E1BAC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_26B5BC000, v37, v38, "Incorrect target format", v39, 2u);
        MEMORY[0x26D67BBE0](v39, -1, -1);
      }

      return;
    }

    v158 = xmmword_26B5E38A0;
    v18 = v12;
    if (*([v18 streamDescription] + 2) != 1869641075)
    {
      v40 = v18;
      v41 = sub_26B5E173C();
      v42 = sub_26B5E1B9C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_26B5BC000, v41, v42, "Audio is already in PCM format", v43, 2u);
        MEMORY[0x26D67BBE0](v43, -1, -1);
      }

      v44 = 0;
      while (1)
      {
        if (v150)
        {
          v45 = MEMORY[0x26D67B3B0](v44, a1);
        }

        else
        {
          if (v44 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_142;
          }

          v45 = *(a1 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        v48 = sub_26B5E16EC();
        v50 = v49;
        sub_26B5E158C();
        sub_26B5CC21C(v48, v50);

        ++v44;
        if (v47 == v7)
        {
          v51 = v40;
          v52 = v40;
          goto LABEL_73;
        }
      }

      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v4 = OBJC_IVAR___STSpeechTranslator_opusDecoder;
    v19 = *&v148[OBJC_IVAR___STSpeechTranslator_opusDecoder];
    if (!v19)
    {
      v58 = [objc_allocWithZone(MEMORY[0x277CE1AC8]) init];
      v59 = *&v148[v4];
      *&v148[v4] = v58;

      v60 = *&v148[v4];
      if (!v60 || (v61 = v60, v62 = [v18 streamDescription], v161 = v62[4], v160 = *(v62 + 1), v159 = *v62, __src = v159, v153 = v160, v154 = v161, objc_msgSend(v61, sel_beginChunkDecoderTo48KhzPCMForStreamDescription_, &__src), v61, (v19 = *&v148[v4]) == 0))
      {
        v63 = sub_26B5E173C();
        v64 = sub_26B5E1BAC();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_26B5BC000, v63, v64, "Opus Audio Decoder setup failed", v65, 2u);
          MEMORY[0x26D67BBE0](v65, -1, -1);
        }

LABEL_155:
        sub_26B5CC21C(v158, *(&v158 + 1));
        return;
      }
    }

    v144 = v6;
    v145 = v18;
    v151 = MEMORY[0x277D84F90];
    if (v7 < 1)
    {
      goto LABEL_149;
    }

    v149 = v19;
    v20 = 0;
    do
    {
      if (v150)
      {
        v21 = MEMORY[0x26D67B3B0](v20, a1);
      }

      else
      {
        v21 = *(a1 + 8 * v20 + 32);
      }

      v22 = v21;
      ++v20;
      v23 = sub_26B5E16EC();
      v25 = v24;
      v26 = sub_26B5E156C();
      sub_26B5CC21C(v23, v25);
      v27 = sub_26B5E16FC();
      v28 = sub_26B5E170C();
      v30 = v29;
      v31 = sub_26B5E156C();
      sub_26B5CC21C(v28, v30);
      v32 = [v149 extractAudioChunksFromOpusWithData:v26 packetCount:v27 packetDescriptions:v31];

      v33 = sub_26B5E1A2C();
      sub_26B5D36DC(v33);
    }

    while (v7 != v20);
    v7 = v151;

    v53 = sub_26B5E173C();
    v54 = sub_26B5E1B9C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134218240;
      if (v144)
      {
        v56 = sub_26B5E1C6C();
      }

      else
      {
        v56 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v55 + 4) = v56;

      *(v55 + 12) = 2048;
      *(v55 + 14) = *(v151 + 16);

      _os_log_impl(&dword_26B5BC000, v53, v54, "Extracted %ld into %ld chunks", v55, 0x16u);
      MEMORY[0x26D67BBE0](v55, -1, -1);

      v57 = *(v151 + 16);
      if (!v57)
      {
LABEL_54:

        [v149 get48khzPCMDescription];
        __src = v159;
        v153 = v160;
        v154 = v161;
        v52 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithStreamDescription_];
        v74 = sub_26B5E173C();
        if (!v52)
        {
          v89 = sub_26B5E1BAC();
          if (os_log_type_enabled(v74, v89))
          {
            v90 = swift_slowAlloc();
            *v90 = 0;
            _os_log_impl(&dword_26B5BC000, v74, v89, "Failed to get output conversion format", v90, 2u);
            MEMORY[0x26D67BBE0](v90, -1, -1);
          }

          goto LABEL_155;
        }

        v75 = sub_26B5E1B9C();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 134217984;
          swift_beginAccess();
          v77 = v158;
          v78 = *(&v158 + 1) >> 62;
          if ((*(&v158 + 1) >> 62) > 1)
          {
            v79 = 0;
            if (v78 == 2)
            {
              v77 = *(v158 + 16);
              v91 = *(v158 + 24);
              v92 = __OFSUB__(v91, v77);
              v79 = v91 - v77;
              if (v92)
              {
                __break(1u);
                goto LABEL_69;
              }
            }
          }

          else
          {
            if (!v78)
            {
              v79 = BYTE14(v158);
              goto LABEL_71;
            }

LABEL_69:
            v92 = __OFSUB__(HIDWORD(v77), v77);
            v93 = HIDWORD(v77) - v77;
            if (v92)
            {
              goto LABEL_160;
            }

            v79 = v93;
          }

LABEL_71:
          *(v76 + 4) = v79;
          _os_log_impl(&dword_26B5BC000, v74, v75, "Converted OPUS into %ld PCM bytes", v76, 0xCu);
          MEMORY[0x26D67BBE0](v76, -1, -1);
        }

        v51 = v145;
LABEL_73:
        sub_26B5DD43C(0, &qword_280408098, 0x277CB83A8);
        v94 = v52;
        v95 = sub_26B5E1BCC();

        v4 = sub_26B5E173C();
        v96 = sub_26B5E1B9C();
        v97 = os_log_type_enabled(v4, v96);
        if (v95)
        {
          if (v97)
          {
            v98 = swift_slowAlloc();
            *v98 = 0;
            _os_log_impl(&dword_26B5BC000, v4, v96, "Hand off PCM buffer to delegate", v98, 2u);
            MEMORY[0x26D67BBE0](v98, -1, -1);
          }

          swift_beginAccess();
          v99 = *(&v158 + 1) >> 62;
          if ((*(&v158 + 1) >> 62) <= 1)
          {
            if (!v99)
            {
              LODWORD(v100) = BYTE14(v158);
              goto LABEL_107;
            }

            if (__OFSUB__(DWORD1(v158), v158))
            {
              __break(1u);
LABEL_157:
              __break(1u);
              goto LABEL_158;
            }

            v100 = DWORD1(v158) - v158;
LABEL_105:
            if ((v100 & 0x8000000000000000) != 0)
            {
LABEL_150:
              __break(1u);
              goto LABEL_151;
            }

            if (HIDWORD(v100))
            {
LABEL_151:
              __break(1u);
              goto LABEL_152;
            }

LABEL_107:
            v117 = *([v94 streamDescription] + 6);
            if (!v117)
            {
LABEL_152:
              __break(1u);
              goto LABEL_153;
            }

            v118 = v100 / v117;
            v119 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v94 frameCapacity:v118];
            if (v119)
            {
              v120 = v119;
              [v119 setFrameLength_];
              v121 = [v120 audioBufferList];
              v122 = *(v121 + 3);
              v123 = v121[2];
              v124 = *(&v158 + 1);
              v125 = v158;
              v126 = *(&v158 + 1) >> 62;
              if ((*(&v158 + 1) >> 62) <= 1)
              {
                v127 = v148;
                if (!v126)
                {
                  LODWORD(__src) = v158;
                  WORD2(__src) = WORD2(v158);
                  *(&__src + 6) = *(&v158 + 6);
                  if (!v123)
                  {
                    goto LABEL_135;
                  }

LABEL_129:
                  memcpy(v123, &__src, v122);
                  goto LABEL_135;
                }

LABEL_121:
                if (v125 > v125 >> 32)
                {
LABEL_158:
                  __break(1u);
                  goto LABEL_159;
                }

                v131 = v51;

                v136 = sub_26B5E141C();
                if (v136)
                {
                  v51 = v136;
                  v137 = sub_26B5E143C();
                  v135 = v125 - v137;
                  if (__OFSUB__(v125, v137))
                  {
LABEL_159:
                    __break(1u);
LABEL_160:
                    __break(1u);
                  }

                  goto LABEL_124;
                }

LABEL_133:
                sub_26B5E142C();
                goto LABEL_134;
              }

              if (v126 != 2)
              {
                *(&__src + 6) = 0;
                *&__src = 0;
                v127 = v148;
                if (!v123)
                {
                  goto LABEL_135;
                }

                goto LABEL_129;
              }

              v131 = v51;
              v132 = *(v158 + 16);

              v133 = sub_26B5E141C();
              if (!v133)
              {
                goto LABEL_133;
              }

              v51 = v133;
              v134 = sub_26B5E143C();
              v135 = v132 - v134;
              if (__OFSUB__(v132, v134))
              {
                __break(1u);
                goto LABEL_121;
              }

LABEL_124:
              v138 = &v51[v135];
              sub_26B5E142C();
              if (!v138)
              {
LABEL_134:
                sub_26B5CC21C(v125, v124);
                v51 = v131;
                v127 = v148;
                goto LABEL_135;
              }

              v127 = v148;
              if (v123)
              {
                memmove(v123, v138, v122);
              }

              sub_26B5CC21C(v125, v124);
              v51 = v131;
LABEL_135:
              v142 = [v127 delegate];
              if (v142)
              {
                v143 = v142;
                if (([v142 respondsToSelector_] & 1) == 0)
                {

                  swift_unknownObjectRelease();
                  goto LABEL_155;
                }

                [v143 translator:v148 didGenerateTranslatedAudio:v120];
                swift_unknownObjectRelease();
              }
            }

            else
            {
              v128 = sub_26B5E173C();
              v129 = sub_26B5E1BAC();
              if (os_log_type_enabled(v128, v129))
              {
                v130 = swift_slowAlloc();
                *v130 = 0;
                _os_log_impl(&dword_26B5BC000, v128, v129, "Failed to create destination audio buffer", v130, 2u);
                MEMORY[0x26D67BBE0](v130, -1, -1);
              }
            }

            goto LABEL_155;
          }

          LODWORD(v100) = 0;
          if (v99 != 2)
          {
            goto LABEL_107;
          }

          v109 = *(v158 + 16);
          v110 = *(v158 + 24);
          v100 = v110 - v109;
          if (!__OFSUB__(v110, v109))
          {
            goto LABEL_105;
          }

          __break(1u);
        }

        else
        {
          v145 = v51;
          if (v97)
          {
            v101 = swift_slowAlloc();
            *v101 = 0;
            _os_log_impl(&dword_26B5BC000, v4, v96, "Start conversion into target format", v101, 2u);
            MEMORY[0x26D67BBE0](v101, -1, -1);
          }

          v102 = OBJC_IVAR___STSpeechTranslator_pcmConverter;
          if (!*&v148[OBJC_IVAR___STSpeechTranslator_pcmConverter])
          {
            type metadata accessor for PCMConverter();
            swift_allocObject();
            v103 = v94;
            v104 = v147;
            *&v148[v102] = sub_26B5CB474(v103, v104);

            if (!*&v148[v102])
            {
              v139 = sub_26B5E173C();
              v140 = sub_26B5E1BAC();
              if (os_log_type_enabled(v139, v140))
              {
                v141 = swift_slowAlloc();
                *v141 = 0;
                _os_log_impl(&dword_26B5BC000, v139, v140, "Failed to create PCM converter", v141, 2u);
                MEMORY[0x26D67BBE0](v141, -1, -1);
              }

              goto LABEL_155;
            }
          }

          v105 = sub_26B5E173C();
          v106 = sub_26B5E1B9C();
          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            *v107 = 0;
            _os_log_impl(&dword_26B5BC000, v105, v106, "Deliver audio in target format", v107, 2u);
            MEMORY[0x26D67BBE0](v107, -1, -1);
          }

          swift_beginAccess();
          v108 = v158;
          sub_26B5CBE74(v158, *(&v158 + 1));
          v4 = sub_26B5CB538(v108, *(&v108 + 1));
          sub_26B5CC21C(v108, *(&v108 + 1));
        }

        v150 = v94;
        if (!(v4 >> 62))
        {
          v111 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v111)
          {
LABEL_154:

            goto LABEL_155;
          }

          goto LABEL_92;
        }

LABEL_153:
        v111 = sub_26B5E1C6C();
        if (!v111)
        {
          goto LABEL_154;
        }

LABEL_92:
        if (v111 >= 1)
        {
          for (i = 0; i != v111; ++i)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v113 = MEMORY[0x26D67B3B0](i, v4);
            }

            else
            {
              v113 = *(v4 + 8 * i + 32);
            }

            v114 = v113;
            v115 = [v148 delegate];
            if (v115)
            {
              v116 = v115;
              if ([v115 respondsToSelector_])
              {
                [v116 translator:v148 didGenerateTranslatedAudio:v114];
              }

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          goto LABEL_154;
        }

        goto LABEL_157;
      }
    }

    else
    {

      v57 = *(v151 + 16);
      if (!v57)
      {
        goto LABEL_54;
      }
    }

    v66 = 0;
    v6 = (v151 + 40);
    while (v66 < v57)
    {
      v67 = *(v6 - 1);
      v68 = *v6;
      sub_26B5CBE74(v67, *v6);
      v69 = sub_26B5E156C();
      *&v159 = 0;
      v70 = [v149 decodeChunk:v69 outError:&v159];

      if (!v70)
      {
        v80 = v159;

        v81 = sub_26B5E151C();

        swift_willThrow();
        sub_26B5CC21C(v67, v68);
        v82 = v81;
        v83 = sub_26B5E173C();
        v84 = sub_26B5E1BAC();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          *v85 = 138412290;
          v87 = v81;
          v88 = _swift_stdlib_bridgeErrorToNSError();
          *(v85 + 4) = v88;
          *v86 = v88;
          _os_log_impl(&dword_26B5BC000, v83, v84, "Failed OPUS into PCM decoding: %@", v85, 0xCu);
          sub_26B5CFB88(v86, &unk_280408040, "$E");
          MEMORY[0x26D67BBE0](v86, -1, -1);
          MEMORY[0x26D67BBE0](v85, -1, -1);
        }

        else
        {
        }

        goto LABEL_155;
      }

      ++v66;
      v71 = v159;
      v72 = sub_26B5E157C();
      a1 = v73;

      sub_26B5E158C();
      sub_26B5CC21C(v72, a1);
      sub_26B5CC21C(v67, v68);
      v57 = *(v151 + 16);
      v6 += 2;
      if (v66 == v57)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
  }

LABEL_22:
  v34 = sub_26B5E173C();
  v35 = sub_26B5E1BAC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_26B5BC000, v34, v35, "Cannot determine output format from TTS audio", v36, 2u);
    MEMORY[0x26D67BBE0](v36, -1, -1);
  }
}

uint64_t sub_26B5D91E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D90, &unk_26B5E3B80);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  if (qword_280407C30 != -1)
  {
    swift_once();
  }

  v10 = sub_26B5E175C();
  __swift_project_value_buffer(v10, qword_280408550);
  sub_26B5DD544(a1, v9, &qword_280407D90, &unk_26B5E3B80);
  v11 = sub_26B5E173C();
  v12 = sub_26B5E1B8C();
  if (os_log_type_enabled(v11, v12))
  {
    v24 = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136446210;
    sub_26B5DD544(v9, v7, &qword_280407D90, &unk_26B5E3B80);
    v15 = sub_26B5E15DC();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v7, 1, v15) == 1)
    {
      sub_26B5CFB88(v7, &qword_280407D90, &unk_26B5E3B80);
      v17 = 0xE600000000000000;
      v18 = 0x3E6C6C756E3CLL;
    }

    else
    {
      v18 = sub_26B5E159C();
      v17 = v19;
      (*(v16 + 8))(v7, v15);
    }

    sub_26B5CFB88(v9, &qword_280407D90, &unk_26B5E3B80);
    v20 = sub_26B5D2F30(v18, v17, &v25);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_26B5BC000, v11, v12, "Finished producing audio for: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26D67BBE0](v14, -1, -1);
    MEMORY[0x26D67BBE0](v13, -1, -1);

    v2 = v24;
  }

  else
  {

    sub_26B5CFB88(v9, &qword_280407D90, &unk_26B5E3B80);
  }

  v21 = [v2 delegate];
  if (v21)
  {
    v22 = v21;
    if ([v21 respondsToSelector_])
    {
      [v22 translatorDidFinishTranslatedAudio_];
    }

    swift_unknownObjectRelease();
  }

  *&v2[OBJC_IVAR___STSpeechTranslator_pcmConverter] = 0;
}

id STTranscriptionResult.init(text:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_26B5E198C();

  v4 = [v2 initWithText_];

  return v4;
}

{
  v3 = sub_26B5E198C();

  v4 = [v2 initWithText:v3 isFinal:1];

  return v4;
}

id STTranscriptionResult.init(text:isFinal:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_26B5E198C();

  v6 = [v4 initWithText:v5 isFinal:a3 & 1];

  return v6;
}

{
  v7 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  *&v3[OBJC_IVAR___STTranscriptionResult__identifier] = v7;
  v8 = &v3[OBJC_IVAR___STTranscriptionResult_text];
  *v8 = a1;
  v8[1] = a2;
  v3[OBJC_IVAR___STTranscriptionResult_isFinal] = a3;
  v10.receiver = v3;
  v10.super_class = STTranscriptionResult;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t STTranscriptionResult.description.getter()
{
  v1 = v0;
  v2 = sub_26B5E15DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_26B5E1C2C();

  v18 = 60;
  v19 = 0xE100000000000000;
  swift_getObjectType();
  v6 = sub_26B5E1D0C();
  MEMORY[0x26D67B140](v6);

  MEMORY[0x26D67B140](0x69746E656469203ALL, 0xEE00203A72656966);
  v7 = [v0 identifier];
  sub_26B5E15BC();

  sub_26B5DD3F4(&unk_280407EA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v8 = sub_26B5E1C8C();
  MEMORY[0x26D67B140](v8);

  (*(v3 + 8))(v5, v2);
  MEMORY[0x26D67B140](0x616E69467369203BLL, 0xEB00000000203A6CLL);
  v9 = [v1 isFinal];
  v10 = v9 == 0;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x26D67B140](v11, v12);

  MEMORY[0x26D67B140](0x203A74786574203BLL, 0xE800000000000000);
  v13 = [v1 text];
  v14 = sub_26B5E199C();
  v16 = v15;

  MEMORY[0x26D67B140](v14, v16);

  MEMORY[0x26D67B140](62, 0xE100000000000000);
  return v18;
}

Swift::Void __swiftcall STTranscriptionResult.encode(with:)(NSCoder with)
{
  v3 = [v1 _identifier];
  v4 = sub_26B5E198C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = [v1 text];
  if (!v5)
  {
    sub_26B5E199C();
    v5 = sub_26B5E198C();
  }

  v6 = sub_26B5E198C();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = [v1 isFinal];
  v8 = sub_26B5E198C();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];
}

id STTranscriptionResult.init(coder:)(void *a1)
{
  v3 = sub_26B5E198C();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_26B5E1BDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    sub_26B5DD43C(0, &unk_280407EB0, 0x277CCAD78);
    if (swift_dynamicCast())
    {
      v5 = v18;
      v6 = OBJC_IVAR___STTranscriptionResult__identifier;
      *&v1[OBJC_IVAR___STTranscriptionResult__identifier] = v18;
      v7 = v5;
      v8 = sub_26B5E198C();
      v9 = [a1 decodeObjectForKey_];

      if (v9)
      {
        sub_26B5E1BDC();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      v22 = v20;
      v23 = v21;
      if (*(&v21 + 1))
      {
        if (swift_dynamicCast())
        {
          v11 = v19;
          v12 = &v1[OBJC_IVAR___STTranscriptionResult_text];
          *v12 = v18;
          v12[1] = v11;
          v13 = sub_26B5E198C();
          v14 = [a1 decodeBoolForKey_];

          v1[OBJC_IVAR___STTranscriptionResult_isFinal] = v14;
          v17.receiver = v1;
          v17.super_class = STTranscriptionResult;
          v15 = objc_msgSendSuper2(&v17, sel_init);

          return v15;
        }
      }

      else
      {

        sub_26B5CFB88(&v22, &qword_280408140, &unk_26B5E3CA8);
      }
    }

    else
    {
    }
  }

  else
  {

    v10 = sub_26B5CFB88(&v22, &qword_280408140, &unk_26B5E3CA8);
  }

  type metadata accessor for STTranscriptionResult(v10);
  swift_deallocPartialClassInstance();
  return 0;
}

BOOL STTranscriptionResult.eligibleForTranslation.getter()
{
  v1 = [v0 text];
  v2 = sub_26B5E199C();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v5 != 0;
}

id STTranscriptionResult.cleanedTextVersion()()
{
  v1 = [v0 text];
  if (!v1)
  {
    sub_26B5E199C();
    v1 = sub_26B5E198C();
  }

  v2 = [objc_opt_self() stripDanglingPunctuationFromRecognitionText_];

  if (!v2)
  {
    sub_26B5E199C();
    v2 = sub_26B5E198C();
  }

  v3 = [objc_allocWithZone(STTranscriptionResult) initWithText:v2 isFinal:{objc_msgSend(v0, sel_isFinal)}];

  v4 = [v0 _identifier];
  [v3 set:v4 identifier:?];

  return v3;
}

id sub_26B5DA474(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_26B5E198C();

  return v3;
}

uint64_t sub_26B5DA4DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26B5E199C();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

id sub_26B5DA54C(void *a1)
{
  v2 = sub_26B5E15DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  v7 = [v6 _identifier];
  sub_26B5E15BC();

  v8 = sub_26B5E15AC();
  (*(v3 + 8))(v5, v2);

  return v8;
}

uint64_t STTranslationResult.sourceIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D90, &unk_26B5E3B80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - v4;
  v6 = [v1 _sourceIdentifier];
  v7 = sub_26B5E15DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  if (v6)
  {
    v10 = *(v7 - 8);
    v14[0] = *(v8 + 56);
    v14[1] = v8 + 56;
    v9(v5, 1, 1, v7);
    sub_26B5DD3F4(&qword_280407EC0, MEMORY[0x277CC95F0], MEMORY[0x277CC9620]);
    sub_26B5E1C7C();

    if ((*(v10 + 48))(v5, 1, v7) == 1)
    {
      v11 = a1;
      v12 = 1;
    }

    else
    {
      (*(v10 + 32))(a1, v5, v7);
      v11 = a1;
      v12 = 0;
    }

    return (v14[0])(v11, v12, 1, v7);
  }

  else
  {

    return (v9)(a1, 1, 1, v7);
  }
}

id STTranslationResult.init(translation:sourceText:isFinal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = sub_26B5E198C();

  if (a4)
  {
    v8 = sub_26B5E198C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTranslation:v7 sourceText:v8 isFinal:a5 & 1];

  return v9;
}

{
  v6 = v5;
  v9 = sub_26B5E15DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26B5E198C();

  if (a4)
  {
    v14 = sub_26B5E198C();
  }

  else
  {
    v14 = 0;
  }

  sub_26B5E15CC();
  v15 = sub_26B5E15AC();
  (*(v10 + 8))(v12, v9);
  v16 = [v6 initWithTranslation:v13 sourceText:v14 isFinal:a5 & 1 identifier:v15 sourceIdentifier:0];

  return v16;
}

id STTranslationResult.init(translation:sourceText:isFinal:identifier:sourceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_26B5E198C();

  if (a4)
  {
    v12 = sub_26B5E198C();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_26B5E15AC();
  v14 = sub_26B5E15DC();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(a7, 1, v14) != 1)
  {
    v16 = sub_26B5E15AC();
    (*(v15 + 8))(a7, v14);
  }

  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTranslation:v11 sourceText:v12 isFinal:a5 & 1 identifier:v13 sourceIdentifier:v16];

  (*(v15 + 8))(a6, v14);
  return v17;
}

id STTranslationResult.init(translation:sourceText:isFinal:identifier:sourceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v37 = a5;
  v36[1] = a3;
  v36[2] = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D90, &unk_26B5E3B80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v36 - v13;
  v15 = OBJC_IVAR___STTranslationResult__sourceIdentifier;
  *&v8[OBJC_IVAR___STTranslationResult__sourceIdentifier] = 0;
  v16 = &v8[OBJC_IVAR___STTranslationResult_sourceText];
  *v16 = 0;
  v16[1] = 0;
  v39 = a6;
  *&v8[OBJC_IVAR___STTranslationResult__identifier] = sub_26B5E15AC();
  v38 = a7;
  sub_26B5DD544(a7, v14, &qword_280407D90, &unk_26B5E3B80);
  v17 = sub_26B5E15DC();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v14, 1, v17) == 1)
  {
    sub_26B5CFB88(v14, &qword_280407D90, &unk_26B5E3B80);
    v19 = 0;
  }

  else
  {
    v19 = sub_26B5E15AC();
    (*(v18 + 8))(v14, v17);
  }

  v20 = *&v8[v15];
  *&v8[v15] = v19;

  v21 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v22 = sub_26B5E198C();

  v23 = [v21 initWithString_];

  v24 = sub_26B5E199C();
  v26 = v25;

  v27 = &v8[OBJC_IVAR___STTranslationResult_translatedText];
  *v27 = v24;
  v27[1] = v26;
  v8[OBJC_IVAR___STTranslationResult_isFinal] = v37 & 1;
  if (a4)
  {
    v28 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v29 = sub_26B5E198C();

    v30 = [v28 initWithString_];

    v31 = sub_26B5E199C();
    v33 = v32;

    *v16 = v31;
    v16[1] = v33;
  }

  else
  {
    *v16 = 0;
    v16[1] = 0;
  }

  v40.receiver = v8;
  v40.super_class = STTranslationResult;
  v34 = objc_msgSendSuper2(&v40, sel_init);
  sub_26B5CFB88(v38, &qword_280407D90, &unk_26B5E3B80);
  (*(v18 + 8))(v39, v17);
  return v34;
}

id sub_26B5DB254(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_26B5E198C();

  return v5;
}

uint64_t STTranslationResult.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D90, &unk_26B5E3B80);
  MEMORY[0x28223BE20](v2);
  v4 = v24 - v3;
  v5 = sub_26B5E15DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_26B5E1C2C();
  MEMORY[0x26D67B140](60, 0xE100000000000000);
  swift_getObjectType();
  v9 = sub_26B5E1D0C();
  MEMORY[0x26D67B140](v9);

  MEMORY[0x26D67B140](0x69746E656469203ALL, 0xEE00203A72656966);
  v10 = [v0 identifier];
  sub_26B5E15BC();

  sub_26B5DD3F4(&unk_280407EA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v11 = sub_26B5E1C8C();
  MEMORY[0x26D67B140](v11);

  (*(v6 + 8))(v8, v5);
  MEMORY[0x26D67B140](0xD000000000000014, 0x800000026B5E4910);
  v12 = [v1 sourceIdentifier];
  if (v12)
  {
    v13 = v12;
    sub_26B5E15BC();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  (*(v6 + 56))(v4, v14, 1, v5);
  sub_26B5E1C5C();
  sub_26B5CFB88(v4, &qword_280407D90, &unk_26B5E3B80);
  MEMORY[0x26D67B140](0x616E69467369203BLL, 0xEB00000000203A6CLL);
  v15 = [v1 isFinal];
  v16 = v15 == 0;
  if (v15)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v16)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  MEMORY[0x26D67B140](v17, v18);

  MEMORY[0x26D67B140](0xD000000000000012, 0x800000026B5E4930);
  v19 = [v1 translatedText];
  v20 = sub_26B5E199C();
  v22 = v21;

  MEMORY[0x26D67B140](v20, v22);

  MEMORY[0x26D67B140](62, 0xE100000000000000);
  return v24[0];
}

Swift::Void __swiftcall STTranslationResult.encode(with:)(NSCoder with)
{
  v3 = [v1 _identifier];
  v4 = sub_26B5E198C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = [v1 _sourceIdentifier];
  v6 = sub_26B5E198C();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = [v1 translatedText];
  if (!v7)
  {
    sub_26B5E199C();
    v7 = sub_26B5E198C();
  }

  v8 = sub_26B5E198C();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = [v1 sourceText];
  v10 = sub_26B5E198C();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = [v1 isFinal];
  v12 = sub_26B5E198C();
  [(objc_class *)with.super.isa encodeBool:v11 forKey:v12];
}

id sub_26B5DB8F8(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id STTranslationResult.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___STTranslationResult__sourceIdentifier;
  *&v1[OBJC_IVAR___STTranslationResult__sourceIdentifier] = 0;
  v4 = &v1[OBJC_IVAR___STTranslationResult_sourceText];
  *v4 = 0;
  v4[1] = 0;
  v5 = sub_26B5E198C();
  v6 = [a1 decodeObjectForKey_];

  if (v6)
  {
    sub_26B5E1BDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (!*(&v31 + 1))
  {

    sub_26B5CFB88(&v32, &qword_280408140, &unk_26B5E3CA8);
LABEL_26:

    type metadata accessor for STTranslationResult(v20);
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_26B5DD43C(0, &unk_280407EB0, 0x277CCAD78);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_26;
  }

  v7 = v28;
  v8 = OBJC_IVAR___STTranslationResult__identifier;
  *&v1[OBJC_IVAR___STTranslationResult__identifier] = v28;
  v26 = v7;
  v9 = sub_26B5E198C();
  v10 = [a1 decodeObjectForKey_];

  if (v10)
  {
    sub_26B5E1BDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (*(&v31 + 1))
  {
    v11 = swift_dynamicCast();
    v12 = v28;
    if (!v11)
    {
      v12 = 0;
    }
  }

  else
  {
    sub_26B5CFB88(&v32, &qword_280408140, &unk_26B5E3CA8);
    v12 = 0;
  }

  v13 = *&v1[v3];
  *&v1[v3] = v12;

  v14 = sub_26B5E198C();
  v15 = [a1 decodeObjectForKey_];

  if (v15)
  {
    sub_26B5E1BDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (!*(&v31 + 1))
  {

    sub_26B5CFB88(&v32, &qword_280408140, &unk_26B5E3CA8);
LABEL_25:

    goto LABEL_26;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_25;
  }

  v16 = v29;
  v17 = &v1[OBJC_IVAR___STTranslationResult_translatedText];
  *v17 = v28;
  v17[1] = v16;
  v18 = sub_26B5E198C();
  v19 = [a1 decodeObjectForKey_];

  if (v19)
  {
    sub_26B5E1BDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (*(&v31 + 1))
  {
    if (swift_dynamicCast())
    {
      v22 = v29;
      *v4 = v28;
      v4[1] = v22;
    }
  }

  else
  {
    sub_26B5CFB88(&v32, &qword_280408140, &unk_26B5E3CA8);
  }

  v23 = sub_26B5E198C();
  v24 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR___STTranslationResult_isFinal] = v24;
  v27.receiver = v1;
  v27.super_class = STTranslationResult;
  v25 = objc_msgSendSuper2(&v27, sel_init);

  return v25;
}

id _sSo18STSpeechTranslatorC17SpeechTranslationEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_26B5DBEE8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26B5DBFE0;

  return v6(a1);
}

uint64_t sub_26B5DBFE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_26B5DC0D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804080A0, &qword_26B5E3D80);
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

uint64_t sub_26B5DC1E4(uint64_t a1)
{
  v2 = sub_26B5E18FC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408080, &qword_26B5E3D78);
    v9 = sub_26B5E1BEC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v33 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v31 = v8;
    v32 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v13 * v10, v2);
      sub_26B5DD3F4(&qword_280408088, MEMORY[0x277CDCB30], MEMORY[0x277CDCB38]);
      v15 = sub_26B5E196C();
      v16 = -1 << *(v9 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = *(v36 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        v21 = ~v16;
        do
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v17 * v13, v2);
          sub_26B5DD3F4(&qword_280408090, MEMORY[0x277CDCB30], MEMORY[0x277CDCB40]);
          v23 = sub_26B5E197C();
          v24 = *v14;
          (*v14)(v6, v2);
          if (v23)
          {
            v24(v37, v2);
            v11 = v22;
            v8 = v31;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = *(v36 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v22;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v31;
      }

      v25 = v37;
      *(v36 + 8 * v18) = v20 | v19;
      result = (*v32)(*(v9 + 48) + v17 * v13, v25, v2);
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v9 + 16) = v29;
LABEL_4:
      v10 = v34 + 1;
      if (v34 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

id sub_26B5DC508(char *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v23 = a3;
  v7 = sub_26B5E161C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = *(v8 + 16);
  v14(&v22 - v12, a1, v7);
  v14(v11, a2, v7);
  v15 = objc_allocWithZone(STSpeechTranslatorConfiguration);
  v16 = sub_26B5E15FC();
  v17 = sub_26B5E15FC();
  v18 = [v15 initWithSourceLocale:v16 targetLocale:v17];

  v19 = *(v8 + 8);
  v19(v11, v7);
  v19(v13, v7);
  v20 = [v4 initWithConfiguration:v18 delegate:v23];

  v19(a2, v7);
  v19(a1, v7);
  return v20;
}

uint64_t sub_26B5DC6F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26B5CFC58;

  return sub_26B5D6890(a1, v4, v5, v7, v6);
}

void sub_26B5DC7B0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SynthesizeRequest(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_26B5E161C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 configuration];
  v12 = [v11 omitTranslatedAudio];

  if (v12)
  {
    if (qword_280407C30 != -1)
    {
      swift_once();
    }

    v13 = sub_26B5E175C();
    __swift_project_value_buffer(v13, qword_280408550);
    v52 = sub_26B5E173C();
    v14 = sub_26B5E1B9C();
    if (os_log_type_enabled(v52, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26B5BC000, v52, v14, "Skip producing audio", v15, 2u);
      MEMORY[0x26D67BBE0](v15, -1, -1);
    }

    v16 = v52;
  }

  else
  {
    v50 = v8;
    v51 = v4;
    if (qword_280407C30 != -1)
    {
      swift_once();
    }

    v17 = sub_26B5E175C();
    v18 = __swift_project_value_buffer(v17, qword_280408550);
    v19 = a1;
    v20 = sub_26B5E173C();
    v21 = sub_26B5E1BBC();

    v22 = os_log_type_enabled(v20, v21);
    v52 = v2;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v49[1] = v18;
      v24 = v23;
      v49[0] = swift_slowAlloc();
      v53 = v49[0];
      *v24 = 136446210;
      v25 = [v19 locale];
      sub_26B5E160C();

      v26 = sub_26B5E15EC();
      v28 = v27;
      (*(v50 + 8))(v10, v7);
      v29 = sub_26B5D2F30(v26, v28, &v53);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_26B5BC000, v20, v21, "Produced output to speak in locale: %{public}s", v24, 0xCu);
      v30 = v49[0];
      __swift_destroy_boxed_opaque_existential_1Tm(v49[0]);
      MEMORY[0x26D67BBE0](v30, -1, -1);
      MEMORY[0x26D67BBE0](v24, -1, -1);
    }

    v31 = v19;
    v32 = sub_26B5E173C();
    v33 = sub_26B5E1B9C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v53 = v35;
      *v34 = 136642819;
      v36 = [v31 translatedText];
      v37 = sub_26B5E199C();
      v39 = v38;

      v40 = sub_26B5D2F30(v37, v39, &v53);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_26B5BC000, v32, v33, "Text to speak: %{sensitive}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x26D67BBE0](v35, -1, -1);
      MEMORY[0x26D67BBE0](v34, -1, -1);
    }

    v41 = v51;
    v42 = [v31 translatedText];
    v43 = sub_26B5E199C();
    v45 = v44;

    v46 = [v31 locale];
    sub_26B5E160C();

    v47 = *(v41 + 24);
    sub_26B5E15CC();
    v48 = sub_26B5E15DC();
    (*(*(v48 - 8) + 56))(v6 + v47, 0, 1, v48);
    *v6 = v43;
    v6[1] = v45;

    sub_26B5CFF34(v6);

    sub_26B5D2DB4(v6);
  }
}

uint64_t sub_26B5DCD18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26B5CFC58;

  return sub_26B5D7228(a1, v4, v5, v7, v6);
}

uint64_t sub_26B5DCDD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B5CFC58;

  return sub_26B5D7648(a1, v4, v5, v6);
}

uint64_t sub_26B5DCEC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26B5CF96C;

  return sub_26B5D7228(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26B5DD018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B5CFC58;

  return sub_26B5D59C8(a1, v4, v5, v6);
}

uint64_t sub_26B5DD0DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26B5CFC58;

  return sub_26B5D5338(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_44Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26B5DD1F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26B5CFC58;

  return sub_26B5D4F6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26B5DD2C4(uint64_t a1)
{
  v4 = *(sub_26B5E161C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_26B5CFC58;

  return sub_26B5D3B70(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_26B5DD3F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B5DD43C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_26B5DD484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26B5CFC58;

  return sub_26B5D6108(a1, v4, v5, v7, v6);
}

uint64_t sub_26B5DD544(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26B5DD5AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B5CFC58;

  return sub_26B5DBEE8(a1, v4);
}

uint64_t sub_26B5DD664(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B5CF96C;

  return sub_26B5DBEE8(a1, v4);
}

unint64_t sub_26B5DD71C()
{
  result = qword_2804080A8;
  if (!qword_2804080A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804080A8);
  }

  return result;
}

uint64_t sub_26B5DD770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D90, &unk_26B5E3B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t STSpeechTranslatorConfiguration.omitTranslatedAudio.getter()
{
  v1 = OBJC_IVAR___STSpeechTranslatorConfiguration_omitTranslatedAudio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t STSpeechTranslatorConfiguration.omitTranslatedAudio.setter(char a1)
{
  v3 = OBJC_IVAR___STSpeechTranslatorConfiguration_omitTranslatedAudio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_26B5DD948(void *a1, uint64_t a2, SEL *a3)
{
  v5 = sub_26B5E161C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  v10 = [v9 *a3];
  sub_26B5E160C();

  v11 = sub_26B5E15FC();
  (*(v6 + 8))(v8, v5);

  return v11;
}

void sub_26B5DDA68(SEL *a1)
{
  v2 = [v1 *a1];
  sub_26B5E160C();
}

uint64_t STSpeechTranslatorConfiguration.offlineMTModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 _offlineMTModel];
  if (v3)
  {
    v4 = v3;
    sub_26B5E153C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_26B5E154C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t STSpeechTranslatorConfiguration.taskHint.getter()
{
  v1 = OBJC_IVAR___STSpeechTranslatorConfiguration_taskHint;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t STSpeechTranslatorConfiguration.taskHint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___STSpeechTranslatorConfiguration_taskHint;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id STSpeechTranslatorConfiguration.init(source:target:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_26B5E15FC();
  v6 = sub_26B5E15FC();
  v7 = [v4 initWithSourceLocale:v5 targetLocale:v6];

  v8 = sub_26B5E161C();
  v9 = *(*(v8 - 8) + 8);
  v9(a2, v8);
  v9(a1, v8);
  return v7;
}

{
  v3 = v2;
  v6 = sub_26B5E15FC();
  v7 = sub_26B5E15FC();
  v8 = [v3 initWithSourceLocale:v6 targetLocale:v7 offlineMTModel:0 taskHint:9];

  v9 = sub_26B5E161C();
  v10 = *(*(v9 - 8) + 8);
  v10(a2, v9);
  v10(a1, v9);
  return v8;
}

id STSpeechTranslatorConfiguration.init(source:target:offlineMTModel:taskHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B5E15FC();
  v9 = sub_26B5E15FC();
  v10 = sub_26B5E154C();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(a3, 1, v10) != 1)
  {
    v12 = sub_26B5E152C();
    (*(v11 + 8))(a3, v10);
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSourceLocale:v8 targetLocale:v9 offlineMTModel:v12 taskHint:a4];

  v14 = sub_26B5E161C();
  v15 = *(*(v14 - 8) + 8);
  v15(a2, v14);
  v15(a1, v14);
  return v13;
}

{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408120, &unk_26B5E3C60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v4[OBJC_IVAR___STSpeechTranslatorConfiguration_omitTranslatedAudio] = 0;
  v13 = OBJC_IVAR___STSpeechTranslatorConfiguration_taskHint;
  *&v4[OBJC_IVAR___STSpeechTranslatorConfiguration_taskHint] = 9;
  *&v4[OBJC_IVAR___STSpeechTranslatorConfiguration__sourceLocale] = sub_26B5E15FC();
  *&v4[OBJC_IVAR___STSpeechTranslatorConfiguration__targetLocale] = sub_26B5E15FC();
  sub_26B5DE580(a3, v12);
  v14 = sub_26B5E154C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_26B5CFB88(v12, &qword_280408120, &unk_26B5E3C60);
    v16 = 0;
  }

  else
  {
    v16 = sub_26B5E152C();
    (*(v15 + 8))(v12, v14);
  }

  *&v5[OBJC_IVAR___STSpeechTranslatorConfiguration__offlineMTModel] = v16;
  swift_beginAccess();
  *&v5[v13] = a4;
  v22.receiver = v5;
  v22.super_class = STSpeechTranslatorConfiguration;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  sub_26B5CFB88(a3, &qword_280408120, &unk_26B5E3C60);
  v18 = sub_26B5E161C();
  v19 = *(*(v18 - 8) + 8);
  v19(a2, v18);
  v19(a1, v18);
  return v17;
}

uint64_t sub_26B5DE580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408120, &unk_26B5E3C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall STSpeechTranslatorConfiguration.encode(with:)(NSCoder with)
{
  v3 = [v1 omitTranslatedAudio];
  v4 = sub_26B5E198C();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = [v1 _sourceLocale];
  v6 = sub_26B5E198C();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = [v1 _targetLocale];
  v8 = sub_26B5E198C();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = [v1 _offlineMTModel];
  v10 = sub_26B5E198C();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = [v1 taskHint];
  v12 = sub_26B5E198C();
  [(objc_class *)with.super.isa encodeInteger:v11 forKey:v12];
}

id STSpeechTranslatorConfiguration.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___STSpeechTranslatorConfiguration_omitTranslatedAudio;
  v1[OBJC_IVAR___STSpeechTranslatorConfiguration_omitTranslatedAudio] = 0;
  v4 = OBJC_IVAR___STSpeechTranslatorConfiguration_taskHint;
  *&v1[OBJC_IVAR___STSpeechTranslatorConfiguration_taskHint] = 9;
  v5 = sub_26B5E198C();
  v6 = [a1 decodeObjectForKey_];

  if (v6)
  {
    sub_26B5E1BDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {

    v11 = sub_26B5CFB88(&v30, &qword_280408140, &unk_26B5E3CA8);
LABEL_18:
    type metadata accessor for STSpeechTranslatorConfiguration(v11);
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_26B5DD43C(0, &qword_280408148, 0x277CBEAF8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_18;
  }

  v7 = v27;
  v8 = OBJC_IVAR___STSpeechTranslatorConfiguration__sourceLocale;
  *&v1[OBJC_IVAR___STSpeechTranslatorConfiguration__sourceLocale] = v27;
  v24 = v7;
  v9 = sub_26B5E198C();
  v10 = [a1 decodeObjectForKey_];

  if (v10)
  {
    sub_26B5E1BDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {

    sub_26B5CFB88(&v30, &qword_280408140, &unk_26B5E3CA8);
LABEL_17:

    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v12 = v27;
  *&v1[OBJC_IVAR___STSpeechTranslatorConfiguration__targetLocale] = v27;
  v13 = v12;
  v14 = sub_26B5E198C();
  v15 = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v1[v3] = v15;
  v16 = sub_26B5E198C();
  v17 = [a1 decodeObjectForKey_];

  if (v17)
  {
    sub_26B5E1BDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (*(&v29 + 1))
  {
    sub_26B5DD43C(0, &unk_280408150, 0x277CBEBC0);
    v19 = swift_dynamicCast();
    v20 = v25;
    if (!v19)
    {
      v20 = 0;
    }
  }

  else
  {
    sub_26B5CFB88(&v30, &qword_280408140, &unk_26B5E3CA8);
    v20 = 0;
  }

  *&v1[OBJC_IVAR___STSpeechTranslatorConfiguration__offlineMTModel] = v20;
  v21 = sub_26B5E198C();
  v22 = [a1 decodeIntegerForKey_];

  swift_beginAccess();
  *&v1[v4] = v22;
  v26.receiver = v1;
  v26.super_class = STSpeechTranslatorConfiguration;
  v23 = objc_msgSendSuper2(&v26, sel_init);

  return v23;
}

void __swiftcall STSpeechTranslatorConfiguration.init()(STSpeechTranslatorConfiguration *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_26B5DEF90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408120, &unk_26B5E3C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26B5DF000(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_26B5DF5D4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_26B5E1C1C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_26B5E1C4C();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t static STTextProcessing.stripDanglingPunctuation(from:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B5E13FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26B5E13DC();
  v12 = a1;
  v13 = a2;
  v11 = v7;
  sub_26B5DF304();
  sub_26B5E1B6C();
  v8 = MEMORY[0x26D67B130](v14, v15, v16, v17);

  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_26B5DF29C(unint64_t *a1)
{
  if ((sub_26B5DF000(*a1, a1[1]) & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return sub_26B5E13EC() & 1;
  }
}

unint64_t sub_26B5DF304()
{
  result = qword_2804081C8;
  if (!qword_2804081C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804081C8);
  }

  return result;
}

STTextProcessing __swiftcall STTextProcessing.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for STTextProcessing()
{
  result = qword_2804081D0;
  if (!qword_2804081D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804081D0);
  }

  return result;
}

unint64_t sub_26B5DF5D4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_26B5DF66C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_26B5DF6E0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_26B5DF66C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_26B5DF7F4(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26B5DF6E0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_26B5E1C4C();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_26B5DF7F4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26B5E19FC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D67B160](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_26B5DF8D0()
{
  v0 = sub_26B5E175C();
  __swift_allocate_value_buffer(v0, qword_280408550);
  __swift_project_value_buffer(v0, qword_280408550);
  return sub_26B5E174C();
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

uint64_t sub_26B5DF9CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_26B5E175C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_26B5E174C();
}

uint64_t getEnumTagSinglePayload for TranslateFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranslateFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26B5DFBA4()
{
  result = qword_2804081D8;
  if (!qword_2804081D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804081D8);
  }

  return result;
}

const char *sub_26B5DFC24()
{
  if (*v0)
  {
    return "asset_services_uaf";
  }

  else
  {
    return "translationSemanticSegmentation";
  }
}

void STServerStart_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_26B5BC000, a2, OS_LOG_TYPE_ERROR, "task: %u is NOT valid", v2, 8u);
}

void STServerStart_cold_2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_26B5BC000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch audit_token_t, result: %d", v2, 8u);
}

void STServerStart_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26B5BC000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch entitlement with error: %@", &v2, 0xCu);
}

void STServerStart_cold_4(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v11 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void STServerStart_cold_6(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_26B5BC000, log, OS_LOG_TYPE_ERROR, "Starting XPC server: %{public}@ yielded error: %@", &v3, 0x16u);
}

void STServerStart_cold_7(void *a1)
{
  v1 = MEMORY[0x277CCAC38];
  v2 = a1;
  v3 = [v1 processInfo];
  v4 = [v3 processName];
  v5 = [MEMORY[0x277CCAC38] processInfo];
  [v5 processIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);
}

void STServerStart_cold_8(void *a1)
{
  v1 = MEMORY[0x277CCAC38];
  v2 = a1;
  v3 = [v1 processInfo];
  v4 = [v3 processName];
  v5 = [MEMORY[0x277CCAC38] processInfo];
  [v5 processIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);
}